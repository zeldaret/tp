/**
 * @file d_a_npc_shad.cpp
 * 
*/

#include "d/actor/d_a_npc_shad.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__11daNpcShad_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__11daNpcShad_cFv();
extern "C" void Create__11daNpcShad_cFv();
extern "C" void CreateHeap__11daNpcShad_cFv();
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
extern "C" void Delete__11daNpcShad_cFv();
extern "C" void Execute__11daNpcShad_cFv();
extern "C" void Draw__11daNpcShad_cFv();
extern "C" void ctrlJoint__11daNpcShad_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__11daNpcShad_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpcShad_cFP8J3DJointi();
extern "C" void setExpressionAnm__11daNpcShad_cFib();
extern "C" void setExpressionBtp__11daNpcShad_cFi();
extern "C" void setMotionAnm__11daNpcShad_cFif();
extern "C" void reset__11daNpcShad_cFv();
extern "C" void setWaitAction__11daNpcShad_cFv();
extern "C" void getPathPoint__11daNpcShad_cFUciP3Vec();
extern "C" void isSneaking__11daNpcShad_cFv();
extern "C" void wait_type0__11daNpcShad_cFPv();
extern "C" void setMotion__11daNpcShad_cFifi();
extern "C" void setExpression__11daNpcShad_cFif();
extern "C" void wait_type1__11daNpcShad_cFPv();
extern "C" void wait_type2__11daNpcShad_cFPv();
extern "C" void talk__11daNpcShad_cFPv();
extern "C" void demo__11daNpcShad_cFPv();
extern "C" void leave__11daNpcShad_cFPv();
extern "C" void EvCut_Introduction__11daNpcShad_cFi();
extern "C" void EvCut_Meeting__11daNpcShad_cFi();
extern "C" void EvCut_ToChantSpell1__11daNpcShad_cFi();
extern "C" void EvCut_ToChantSpell2__11daNpcShad_cFi();
extern "C" void EvCut_ToChantSpell2Skip__11daNpcShad_cFi();
extern "C" void EvCut_DiscoveryCannon__11daNpcShad_cFi();
extern "C" void EvCut_DiscoveryCannonSkip__11daNpcShad_cFi();
extern "C" void EvCut_Disappear__11daNpcShad_cFi();
extern "C" void EvCut_DisappearSkip__11daNpcShad_cFi();
extern "C" void EvCut_CallBack__11daNpcShad_cFi();
extern "C" void EvCut_WiretapSponsor__11daNpcShad_cFi();
extern "C" void EvCut_WiretapEntrant__11daNpcShad_cFi();
extern "C" static void daNpcShad_Create__FPv();
extern "C" static void daNpcShad_Delete__FPv();
extern "C" static void daNpcShad_Execute__FPv();
extern "C" static void daNpcShad_Draw__FPv();
extern "C" static bool daNpcShad_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void setParam__11daNpcShad_cFv();
extern "C" void main__11daNpcShad_cFv();
extern "C" void playMotion__11daNpcShad_cFv();
extern "C" void playExpression__11daNpcShad_cFv();
extern "C" void ctrlBtk__11daNpcShad_cFv();
extern "C" void setAttnPos__11daNpcShad_cFv();
extern "C" void lookat__11daNpcShad_cFv();
extern "C" bool drawDbgInfo__11daNpcShad_cFv();
extern "C" void func_80AE1544(void* _this, s16);
extern "C" void __sinit_d_a_npc_shad_cpp();
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
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz();
extern "C" void __dt__17daNpcShad_Param_cFv();
extern "C" static void func_80AE1FB8();
extern "C" static void func_80AE1FC0();
extern "C" u8 const m__17daNpcShad_Param_c[112];
extern "C" extern char const* const d_a_npc_shad__stringBase0;
extern "C" u8 mEvtSeqList__11daNpcShad_c[168];

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_SearchByName__FsPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGs_isStageSwitch__Fii();
extern "C" void setItem__17dSv_player_item_cFiUc();
extern "C" void onSwitch__12dSv_memBit_cFi();
extern "C" void isSwitch__12dSv_memBit_cCFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void dEv_noFinishSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void onSkipFade__14dEvt_control_cFv();
extern "C" void convPId__14dEvt_control_cFUi();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMyNowCutName__16dEvent_manager_cFi();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void dPath_GetPnt__FPC5dPathi();
extern "C" void dPath_GetRoomPath__Fii();
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
extern "C" void execute__8daNpcF_cFv();
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
extern "C" void playExpressionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void setLookatMtx__8daNpcF_cFiPif();
extern "C" void ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void changeEvent__8daNpcF_cFPcPcUsUs();
extern "C" void chkActorInSight__8daNpcF_cFP10fopAc_ac_cf();
extern "C" void chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void turn__8daNpcF_cFsfi();
extern "C" void setAngle__8daNpcF_cFs();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void getEvtAreaTagP__8daNpcF_cFii();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void daNpcF_onEvtBit__FUl();
extern "C" void daNpcF_chkTmpBit__FUl();
extern "C" void daNpcF_offTmpBit__FUl();
extern "C" void daNpcF_clearMessageTmpBit__Fv();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void onKillMessageFlag__12dMsgObject_cFv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
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
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void bgmStreamPrepare__8Z2SeqMgrFUl();
extern "C" void bgmStreamPlay__8Z2SeqMgrFv();
extern "C" void bgmStreamStop__8Z2SeqMgrFUl();
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
extern "C" void __ptmf_scall();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
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
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz();
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80AE24C4-80AE24C4 0004E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AE24C4 = "Shad";
SECTION_DEAD static char const* const stringBase_80AE24C9 = "Shad1";
SECTION_DEAD static char const* const stringBase_80AE24CF = "Shad2";
SECTION_DEAD static char const* const stringBase_80AE24D5 = "Shad3";
SECTION_DEAD static char const* const stringBase_80AE24DB = "";
SECTION_DEAD static char const* const stringBase_80AE24DC = "THE_INTRODUCTION";
SECTION_DEAD static char const* const stringBase_80AE24ED = "RESIST_MEETING";
SECTION_DEAD static char const* const stringBase_80AE24FC = "SHAD_TO_CHANT_SPELL1";
SECTION_DEAD static char const* const stringBase_80AE2511 = "SHAD_TO_CHANT_SPELL2";
SECTION_DEAD static char const* const stringBase_80AE2526 = "SHAD_TO_CHANT_SPELL2_SKIP";
SECTION_DEAD static char const* const stringBase_80AE2540 = "SHAD_DISCOVERY_CANNON";
SECTION_DEAD static char const* const stringBase_80AE2556 = "SHAD_DISCOVERY_CANNON_SKIP";
SECTION_DEAD static char const* const stringBase_80AE2571 = "SHAD_DISAPPEAR";
SECTION_DEAD static char const* const stringBase_80AE2580 = "SHAD_DISAPPEAR_SKIP";
SECTION_DEAD static char const* const stringBase_80AE2594 = "SHAD_CALLBACK";
SECTION_DEAD static char const* const stringBase_80AE25A2 = "RESIST_WIRETAP_ASH";
SECTION_DEAD static char const* const stringBase_80AE25B5 = "RESIST_WIRETAP_SHAD";
SECTION_DEAD static char const* const stringBase_80AE25C9 = "RESIST_WIRETAP_RAFREL";
#pragma pop

/* 80AE2620-80AE262C 000000 000C+00 7/7 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AE262C-80AE2640 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80AE2640-80AE27F0 000020 01B0+00 1/2 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[432] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x14,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
};

/* 80AE27F0-80AE2874 0001D0 0084+00 1/1 0/0 0/0 .data            l_btpGetParamList */
SECTION_DATA static u8 l_btpGetParamList[132] = {
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
    0x31, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x02, 0x00,
    0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};

/* 80AE2874-80AE28B0 000254 003C+00 1/2 0/0 0/0 .data            l_btkGetParamList */
SECTION_DATA static u8 l_btkGetParamList[60] = {
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
};

/* 80AE28B0-80AE28BC 000290 000C+00 1/0 0/0 0/0 .data            l_loadRes_SHAD0 */
SECTION_DATA static u8 l_loadRes_SHAD0[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80AE28BC-80AE28C8 00029C 000C+00 1/0 0/0 0/0 .data            l_loadRes_SHAD1 */
SECTION_DATA static u8 l_loadRes_SHAD1[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80AE28C8-80AE28D4 0002A8 000C+00 1/0 0/0 0/0 .data            l_loadRes_SHAD2 */
SECTION_DATA static u8 l_loadRes_SHAD2[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80AE28D4-80AE28E0 -00001 000C+00 2/2 0/0 0/0 .data            l_loadRes_list */
SECTION_DATA static void* l_loadRes_list[3] = {
    (void*)&l_loadRes_SHAD0,
    (void*)&l_loadRes_SHAD1,
    (void*)&l_loadRes_SHAD2,
};

/* 80AE28E0-80AE28F0 -00001 0010+00 6/8 0/0 0/0 .data            l_arcNames */
SECTION_DATA static void* l_arcNames[4] = {
    (void*)&d_a_npc_shad__stringBase0,
    (void*)(((char*)&d_a_npc_shad__stringBase0) + 0x5),
    (void*)(((char*)&d_a_npc_shad__stringBase0) + 0xB),
    (void*)(((char*)&d_a_npc_shad__stringBase0) + 0x11),
};

/* 80AE28F0-80AE2928 -00001 0038+00 3/6 0/0 0/0 .data            l_evtNames */
SECTION_DATA static void* l_evtNames[14] = {
    (void*)(((char*)&d_a_npc_shad__stringBase0) + 0x17),
    (void*)(((char*)&d_a_npc_shad__stringBase0) + 0x18),
    (void*)(((char*)&d_a_npc_shad__stringBase0) + 0x29),
    (void*)(((char*)&d_a_npc_shad__stringBase0) + 0x38),
    (void*)(((char*)&d_a_npc_shad__stringBase0) + 0x4D),
    (void*)(((char*)&d_a_npc_shad__stringBase0) + 0x62),
    (void*)(((char*)&d_a_npc_shad__stringBase0) + 0x7C),
    (void*)(((char*)&d_a_npc_shad__stringBase0) + 0x92),
    (void*)(((char*)&d_a_npc_shad__stringBase0) + 0xAD),
    (void*)(((char*)&d_a_npc_shad__stringBase0) + 0xBC),
    (void*)(((char*)&d_a_npc_shad__stringBase0) + 0xD0),
    (void*)(((char*)&d_a_npc_shad__stringBase0) + 0xDE),
    (void*)(((char*)&d_a_npc_shad__stringBase0) + 0xF1),
    (void*)(((char*)&d_a_npc_shad__stringBase0) + 0x105),
};

/* 80AE2928-80AE2960 000308 0038+00 3/6 0/0 0/0 .data            l_evtArcs */
SECTION_DATA static u8 l_evtArcs[56] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AE2960-80AE2964 -00001 0004+00 0/3 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)&d_a_npc_shad__stringBase0;
#pragma pop

/* 80AE2964-80AE2970 -00001 000C+00 0/1 0/0 0/0 .data            @3932 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3932[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_Introduction__11daNpcShad_cFi,
};
#pragma pop

/* 80AE2970-80AE297C -00001 000C+00 0/1 0/0 0/0 .data            @3933 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3933[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_Meeting__11daNpcShad_cFi,
};
#pragma pop

/* 80AE297C-80AE2988 -00001 000C+00 0/1 0/0 0/0 .data            @3934 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3934[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_ToChantSpell1__11daNpcShad_cFi,
};
#pragma pop

/* 80AE2988-80AE2994 -00001 000C+00 0/1 0/0 0/0 .data            @3935 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3935[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_ToChantSpell2__11daNpcShad_cFi,
};
#pragma pop

/* 80AE2994-80AE29A0 -00001 000C+00 0/1 0/0 0/0 .data            @3936 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3936[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_ToChantSpell2Skip__11daNpcShad_cFi,
};
#pragma pop

/* 80AE29A0-80AE29AC -00001 000C+00 0/1 0/0 0/0 .data            @3937 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3937[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_DiscoveryCannon__11daNpcShad_cFi,
};
#pragma pop

/* 80AE29AC-80AE29B8 -00001 000C+00 0/1 0/0 0/0 .data            @3938 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3938[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_DiscoveryCannonSkip__11daNpcShad_cFi,
};
#pragma pop

/* 80AE29B8-80AE29C4 -00001 000C+00 0/1 0/0 0/0 .data            @3939 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3939[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_Disappear__11daNpcShad_cFi,
};
#pragma pop

/* 80AE29C4-80AE29D0 -00001 000C+00 0/1 0/0 0/0 .data            @3940 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3940[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_DisappearSkip__11daNpcShad_cFi,
};
#pragma pop

/* 80AE29D0-80AE29DC -00001 000C+00 0/1 0/0 0/0 .data            @3941 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3941[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_CallBack__11daNpcShad_cFi,
};
#pragma pop

/* 80AE29DC-80AE29E8 -00001 000C+00 0/1 0/0 0/0 .data            @3942 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3942[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_WiretapEntrant__11daNpcShad_cFi,
};
#pragma pop

/* 80AE29E8-80AE29F4 -00001 000C+00 0/1 0/0 0/0 .data            @3943 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3943[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_WiretapSponsor__11daNpcShad_cFi,
};
#pragma pop

/* 80AE29F4-80AE2A00 -00001 000C+00 0/1 0/0 0/0 .data            @3944 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3944[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_WiretapEntrant__11daNpcShad_cFi,
};
#pragma pop

/* 80AE2A00-80AE2AA8 0003E0 00A8+00 0/2 0/0 0/0 .data            mEvtSeqList__11daNpcShad_c */
#pragma push
#pragma force_active on
SECTION_DATA u8 daNpcShad_c::mEvtSeqList[168] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80AE2AA8-80AE2ADC -00001 0034+00 1/1 0/0 0/0 .data            @4739 */
SECTION_DATA static void* lit_4739[13] = {
    (void*)(((char*)setExpressionAnm__11daNpcShad_cFib) + 0xA0),
    (void*)(((char*)setExpressionAnm__11daNpcShad_cFib) + 0xBC),
    (void*)(((char*)setExpressionAnm__11daNpcShad_cFib) + 0xD8),
    (void*)(((char*)setExpressionAnm__11daNpcShad_cFib) + 0xF4),
    (void*)(((char*)setExpressionAnm__11daNpcShad_cFib) + 0x110),
    (void*)(((char*)setExpressionAnm__11daNpcShad_cFib) + 0x12C),
    (void*)(((char*)setExpressionAnm__11daNpcShad_cFib) + 0x148),
    (void*)(((char*)setExpressionAnm__11daNpcShad_cFib) + 0x164),
    (void*)(((char*)setExpressionAnm__11daNpcShad_cFib) + 0x180),
    (void*)(((char*)setExpressionAnm__11daNpcShad_cFib) + 0x19C),
    (void*)(((char*)setExpressionAnm__11daNpcShad_cFib) + 0x1B8),
    (void*)(((char*)setExpressionAnm__11daNpcShad_cFib) + 0x1D4),
    (void*)(((char*)setExpressionAnm__11daNpcShad_cFib) + 0x1F0),
};

/* 80AE2ADC-80AE2AE8 -00001 000C+00 0/3 0/0 0/0 .data            @4923 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4923[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_type0__11daNpcShad_cFPv,
};
#pragma pop

/* 80AE2AE8-80AE2AF4 -00001 000C+00 0/3 0/0 0/0 .data            @4926 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4926[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_type1__11daNpcShad_cFPv,
};
#pragma pop

/* 80AE2AF4-80AE2B00 -00001 000C+00 0/3 0/0 0/0 .data            @4929 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4929[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_type2__11daNpcShad_cFPv,
};
#pragma pop

/* 80AE2B00-80AE2B0C -00001 000C+00 0/1 0/0 0/0 .data            @5064 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5064[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpcShad_cFPv,
};
#pragma pop

/* 80AE2B0C-80AE2B18 -00001 000C+00 0/1 0/0 0/0 .data            @5069 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5069[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__11daNpcShad_cFPv,
};
#pragma pop

/* 80AE2B18-80AE2B24 -00001 000C+00 0/1 0/0 0/0 .data            @5295 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5295[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpcShad_cFPv,
};
#pragma pop

/* 80AE2B24-80AE2B30 -00001 000C+00 0/1 0/0 0/0 .data            @5300 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5300[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__11daNpcShad_cFPv,
};
#pragma pop

/* 80AE2B30-80AE2B3C -00001 000C+00 1/1 0/0 0/0 .data            @5565 */
SECTION_DATA static void* lit_5565[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)leave__11daNpcShad_cFPv,
};

/* 80AE2B3C-80AE2B5C -00001 0020+00 1/1 0/0 0/0 .data            @6551 */
SECTION_DATA static void* lit_6551[8] = {
    (void*)(((char*)EvCut_DiscoveryCannon__11daNpcShad_cFi) + 0x480),
    (void*)(((char*)EvCut_DiscoveryCannon__11daNpcShad_cFi) + 0x730),
    (void*)(((char*)EvCut_DiscoveryCannon__11daNpcShad_cFi) + 0x480),
    (void*)(((char*)EvCut_DiscoveryCannon__11daNpcShad_cFi) + 0x730),
    (void*)(((char*)EvCut_DiscoveryCannon__11daNpcShad_cFi) + 0x488),
    (void*)(((char*)EvCut_DiscoveryCannon__11daNpcShad_cFi) + 0x730),
    (void*)(((char*)EvCut_DiscoveryCannon__11daNpcShad_cFi) + 0x730),
    (void*)(((char*)EvCut_DiscoveryCannon__11daNpcShad_cFi) + 0x488),
};

/* 80AE2B5C-80AE2B7C -00001 0020+00 1/1 0/0 0/0 .data            @6550 */
SECTION_DATA static void* lit_6550[8] = {
    (void*)(((char*)EvCut_DiscoveryCannon__11daNpcShad_cFi) + 0x7C),
    (void*)(((char*)EvCut_DiscoveryCannon__11daNpcShad_cFi) + 0x280),
    (void*)(((char*)EvCut_DiscoveryCannon__11daNpcShad_cFi) + 0x12C),
    (void*)(((char*)EvCut_DiscoveryCannon__11daNpcShad_cFi) + 0x25C),
    (void*)(((char*)EvCut_DiscoveryCannon__11daNpcShad_cFi) + 0x20C),
    (void*)(((char*)EvCut_DiscoveryCannon__11daNpcShad_cFi) + 0x25C),
    (void*)(((char*)EvCut_DiscoveryCannon__11daNpcShad_cFi) + 0x25C),
    (void*)(((char*)EvCut_DiscoveryCannon__11daNpcShad_cFi) + 0x20C),
};

/* 80AE2B7C-80AE2B9C -00001 0020+00 1/0 0/0 0/0 .data            daNpcShad_MethodTable */
static actor_method_class daNpcShad_MethodTable = {
    (process_method_func)daNpcShad_Create__FPv,
    (process_method_func)daNpcShad_Delete__FPv,
    (process_method_func)daNpcShad_Execute__FPv,
    (process_method_func)daNpcShad_IsDelete__FPv,
    (process_method_func)daNpcShad_Draw__FPv,
};

/* 80AE2B9C-80AE2BCC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SHAD */
extern actor_process_profile_definition g_profile_NPC_SHAD = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_SHAD,          // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daNpcShad_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  413,                    // mPriority
  &daNpcShad_MethodTable, // sub_method
  0x00040100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80AE2BCC-80AE2BD8 0005AC 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80AE2BD8-80AE2C20 0005B8 0048+00 2/2 0/0 0/0 .data            __vt__11daNpcShad_c */
SECTION_DATA extern void* __vt__11daNpcShad_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpcShad_cFv,
    (void*)setParam__11daNpcShad_cFv,
    (void*)main__11daNpcShad_cFv,
    (void*)ctrlBtk__11daNpcShad_cFv,
    (void*)adjustShapeAngle__8daNpcF_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__11daNpcShad_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__11daNpcShad_cFib,
    (void*)setExpressionBtp__11daNpcShad_cFi,
    (void*)setExpression__11daNpcShad_cFif,
    (void*)setMotionAnm__11daNpcShad_cFif,
    (void*)setMotion__11daNpcShad_cFifi,
    (void*)drawDbgInfo__11daNpcShad_cFv,
    (void*)drawOtherMdls__8daNpcF_cFv,
};

/* 80AE2C20-80AE2C2C 000600 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AE2C2C-80AE2C50 00060C 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AE1FC0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AE1FB8,
};

/* 80AE2C50-80AE2C5C 000630 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AE2C5C-80AE2C68 00063C 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AE2C68-80AE2C74 000648 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AE2C74-80AE2C80 000654 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80AE2C80-80AE2C8C 000660 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80AE2C8C-80AE2C98 00066C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AE2C98-80AE2CA4 000678 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 80AD820C-80AD8390 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__11daNpcShad_cFv */
daNpcShad_c::daNpcShad_c() {
    // NONMATCHING
}

/* 80AD8390-80AD83D8 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80AD83D8-80AD8420 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80AD8420-80AD8620 000300 0200+00 1/0 0/0 0/0 .text            __dt__11daNpcShad_cFv */
daNpcShad_c::~daNpcShad_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE1FDC-80AE204C 000000 0070+00 19/19 0/0 0/0 .rodata          m__17daNpcShad_Param_c */
SECTION_RODATA u8 const daNpcShad_Param_c::m[112] = {
    0x42, 0x0C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00, 0xC2, 0x20, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xA0, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x40, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE1FDC, &daNpcShad_Param_c::m);

/* 80AE204C-80AE2050 000070 0004+00 0/1 0/0 0/0 .rodata          @4402 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4402 = 0x4587B5BF;
COMPILER_STRIP_GATE(0x80AE204C, &lit_4402);
#pragma pop

/* 80AE2050-80AE2054 000074 0004+00 0/1 0/0 0/0 .rodata          @4403 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4403 = -1518.5f;
COMPILER_STRIP_GATE(0x80AE2050, &lit_4403);
#pragma pop

/* 80AE2054-80AE2058 000078 0004+00 0/1 0/0 0/0 .rodata          @4404 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4404 = 0xC576652C;
COMPILER_STRIP_GATE(0x80AE2054, &lit_4404);
#pragma pop

/* 80AE2058-80AE205C 00007C 0004+00 0/1 0/0 0/0 .rodata          @4405 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4405 = -100.0f;
COMPILER_STRIP_GATE(0x80AE2058, &lit_4405);
#pragma pop

/* 80AE205C-80AE2060 000080 0004+00 0/1 0/0 0/0 .rodata          @4406 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4406 = -50.0f;
COMPILER_STRIP_GATE(0x80AE205C, &lit_4406);
#pragma pop

/* 80AE2060-80AE2064 000084 0004+00 0/1 0/0 0/0 .rodata          @4407 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4407 = 100.0f;
COMPILER_STRIP_GATE(0x80AE2060, &lit_4407);
#pragma pop

/* 80AE2064-80AE2068 000088 0004+00 0/1 0/0 0/0 .rodata          @4408 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4408 = 220.0f;
COMPILER_STRIP_GATE(0x80AE2064, &lit_4408);
#pragma pop

/* 80AE24C4-80AE24C4 0004E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AE25DF = "R_SP116";
SECTION_DEAD static char const* const stringBase_80AE25E7 = "R_SP209";
SECTION_DEAD static char const* const stringBase_80AE25EF = "D_MN09";
#pragma pop

/* 80AD8620-80AD8B60 000500 0540+00 1/1 0/0 0/0 .text            Create__11daNpcShad_cFv */
void daNpcShad_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE2068-80AE206C 00008C 0004+00 4/6 0/0 0/0 .rodata          @4497 */
SECTION_RODATA static f32 const lit_4497 = 1.0f;
COMPILER_STRIP_GATE(0x80AE2068, &lit_4497);

/* 80AE206C-80AE2070 000090 0004+00 5/15 0/0 0/0 .rodata          @4498 */
SECTION_RODATA static u8 const lit_4498[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE206C, &lit_4498);

/* 80AD8B60-80AD8F24 000A40 03C4+00 1/1 0/0 0/0 .text            CreateHeap__11daNpcShad_cFv */
void daNpcShad_c::CreateHeap() {
    // NONMATCHING
}

/* 80AD8F24-80AD8F60 000E04 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80AD8F60-80AD8F78 000E40 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80AD8F78-80AD8FB4 000E58 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80AD8FB4-80AD8FCC 000E94 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80AD8FCC-80AD9014 000EAC 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80AD9014-80AD9038 000EF4 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80AD9038-80AD9074 000F18 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80AD9074-80AD908C 000F54 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80AD908C-80AD90C8 000F6C 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80AD90C8-80AD90E0 000FA8 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80AD90E0-80AD9114 000FC0 0034+00 1/1 0/0 0/0 .text            Delete__11daNpcShad_cFv */
void daNpcShad_c::Delete() {
    // NONMATCHING
}

/* 80AD9114-80AD9138 000FF4 0024+00 2/2 0/0 0/0 .text            Execute__11daNpcShad_cFv */
void daNpcShad_c::Execute() {
    // NONMATCHING
}

/* 80AD9138-80AD9280 001018 0148+00 1/1 0/0 0/0 .text            Draw__11daNpcShad_cFv */
void daNpcShad_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE2070-80AE207C 000094 000C+00 1/1 0/0 0/0 .rodata          @4591 */
SECTION_RODATA static u8 const lit_4591[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05,
};
COMPILER_STRIP_GATE(0x80AE2070, &lit_4591);

/* 80AD9280-80AD944C 001160 01CC+00 1/1 0/0 0/0 .text
 * ctrlJoint__11daNpcShad_cFP8J3DJointP8J3DModel                */
void daNpcShad_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 80AD944C-80AD946C 00132C 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpcShad_cFP10fopAc_ac_c              */
void daNpcShad_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80AD946C-80AD94B8 00134C 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpcShad_cFP8J3DJointi
 */
void daNpcShad_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80AD94B8-80AD974C 001398 0294+00 2/0 0/0 0/0 .text            setExpressionAnm__11daNpcShad_cFib
 */
void daNpcShad_c::setExpressionAnm(int param_0, bool param_1) {
    // NONMATCHING
}

/* 80AD974C-80AD982C 00162C 00E0+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpcShad_cFi
 */
void daNpcShad_c::setExpressionBtp(int param_0) {
    // NONMATCHING
}

/* 80AD982C-80AD99B4 00170C 0188+00 1/0 0/0 0/0 .text            setMotionAnm__11daNpcShad_cFif */
bool daNpcShad_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80AD99B4-80AD9C0C 001894 0258+00 1/1 0/0 0/0 .text            reset__11daNpcShad_cFv */
void daNpcShad_c::reset() {
    // NONMATCHING
}

/* 80AD9C0C-80AD9E04 001AEC 01F8+00 1/1 0/0 0/0 .text            setWaitAction__11daNpcShad_cFv */
void daNpcShad_c::setWaitAction() {
    // NONMATCHING
}

/* 80AD9E04-80AD9E90 001CE4 008C+00 1/1 0/0 0/0 .text getPathPoint__11daNpcShad_cFUciP3Vec */
void daNpcShad_c::getPathPoint(u8 param_0, int param_1, Vec* param_2) {
    // NONMATCHING
}

/* 80AD9E90-80AD9F00 001D70 0070+00 1/1 0/0 0/0 .text            isSneaking__11daNpcShad_cFv */
void daNpcShad_c::isSneaking() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE207C-80AE2088 0000A0 000C+00 0/1 0/0 0/0 .rodata          @4825 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4825[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE207C, &lit_4825);
#pragma pop

/* 80AE2088-80AE208C 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4826 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4826[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE2088, &lit_4826);
#pragma pop

/* 80AE208C-80AE2098 0000B0 000C+00 0/1 0/0 0/0 .rodata          @4827 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4827[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AE208C, &lit_4827);
#pragma pop

/* 80AE2098-80AE20A4 0000BC 000C+00 0/1 0/0 0/0 .rodata          @4828 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4828[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE2098, &lit_4828);
#pragma pop

/* 80AE20A4-80AE20AC 0000C8 0008+00 0/1 0/0 0/0 .rodata          @4829 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4829[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE20A4, &lit_4829);
#pragma pop

/* 80AE20AC-80AE20B8 0000D0 000C+00 0/1 0/0 0/0 .rodata          @4830 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4830[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AE20AC, &lit_4830);
#pragma pop

/* 80AE20B8-80AE20C4 0000DC 000C+00 0/1 0/0 0/0 .rodata          @4831 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4831[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE20B8, &lit_4831);
#pragma pop

/* 80AE20C4-80AE20CC 0000E8 0008+00 0/1 0/0 0/0 .rodata          @4832 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4832[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE20C4, &lit_4832);
#pragma pop

/* 80AE20CC-80AE20D8 0000F0 000C+00 0/1 0/0 0/0 .rodata          @4833 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4833[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AE20CC, &lit_4833);
#pragma pop

/* 80AE20D8-80AE20E4 0000FC 000C+00 0/1 0/0 0/0 .rodata          @4834 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4834[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE20D8, &lit_4834);
#pragma pop

/* 80AE20E4-80AE20EC 000108 0008+00 0/1 0/0 0/0 .rodata          @4835 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4835[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE20E4, &lit_4835);
#pragma pop

/* 80AE20EC-80AE20F8 000110 000C+00 0/1 0/0 0/0 .rodata          @4836 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4836[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE20EC, &lit_4836);
#pragma pop

/* 80AE20F8-80AE20FC 00011C 0004+00 0/1 0/0 0/0 .rodata          @4837 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4837[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE20F8, &lit_4837);
#pragma pop

/* 80AE20FC-80AE2108 000120 000C+00 0/1 0/0 0/0 .rodata          @4838 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4838[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE20FC, &lit_4838);
#pragma pop

/* 80AE2108-80AE210C 00012C 0004+00 0/1 0/0 0/0 .rodata          @4839 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4839[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE2108, &lit_4839);
#pragma pop

/* 80AE210C-80AE2118 000130 000C+00 0/1 0/0 0/0 .rodata          @4840 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4840[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE210C, &lit_4840);
#pragma pop

/* 80AE2118-80AE211C 00013C 0004+00 0/1 0/0 0/0 .rodata          @4841 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4841[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE2118, &lit_4841);
#pragma pop

/* 80AE211C-80AE2128 000140 000C+00 0/1 0/0 0/0 .rodata          @4842 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4842[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE211C, &lit_4842);
#pragma pop

/* 80AE2128-80AE212C 00014C 0004+00 0/1 0/0 0/0 .rodata          @4843 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4843[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE2128, &lit_4843);
#pragma pop

/* 80AE212C-80AE2138 000150 000C+00 0/1 0/0 0/0 .rodata          @4844 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4844[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE212C, &lit_4844);
#pragma pop

/* 80AE2138-80AE213C 00015C 0004+00 0/1 0/0 0/0 .rodata          @4845 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4845[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE2138, &lit_4845);
#pragma pop

/* 80AE213C-80AE2148 000160 000C+00 0/1 0/0 0/0 .rodata          @4846 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4846[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE213C, &lit_4846);
#pragma pop

/* 80AE2148-80AE214C 00016C 0004+00 0/1 0/0 0/0 .rodata          @4847 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4847[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE2148, &lit_4847);
#pragma pop

/* 80AE214C-80AE2158 000170 000C+00 0/1 0/0 0/0 .rodata          @4848 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4848[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE214C, &lit_4848);
#pragma pop

/* 80AE2158-80AE215C 00017C 0004+00 0/1 0/0 0/0 .rodata          @4849 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4849[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE2158, &lit_4849);
#pragma pop

/* 80AE215C-80AE2168 000180 000C+00 0/1 0/0 0/0 .rodata          @4850 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4850[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE215C, &lit_4850);
#pragma pop

/* 80AE2168-80AE216C 00018C 0004+00 0/1 0/0 0/0 .rodata          @4851 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4851[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE2168, &lit_4851);
#pragma pop

/* 80AE216C-80AE2178 000190 000C+00 0/1 0/0 0/0 .rodata          @4852 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4852[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE216C, &lit_4852);
#pragma pop

/* 80AE2178-80AE217C 00019C 0004+00 0/1 0/0 0/0 .rodata          @4853 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4853[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE2178, &lit_4853);
#pragma pop

/* 80AE217C-80AE21B0 0001A0 0034+00 0/0 0/0 0/0 .rodata          @4854 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4854[52] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE217C, &lit_4854);
#pragma pop

/* 80AE21B0-80AE21BC 0001D4 000C+00 0/1 0/0 0/0 .rodata          @4858 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4858[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE21B0, &lit_4858);
#pragma pop

/* 80AE21BC-80AE21C0 0001E0 0004+00 0/1 0/0 0/0 .rodata          @4859 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4859[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE21BC, &lit_4859);
#pragma pop

/* 80AE21C0-80AE21CC 0001E4 000C+00 0/1 0/0 0/0 .rodata          @4860 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4860[12] = {
    0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AE21C0, &lit_4860);
#pragma pop

/* 80AE21CC-80AE21D8 0001F0 000C+00 0/1 0/0 0/0 .rodata          @4861 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4861[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE21CC, &lit_4861);
#pragma pop

/* 80AE21D8-80AE21E0 0001FC 0008+00 0/1 0/0 0/0 .rodata          @4862 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4862[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE21D8, &lit_4862);
#pragma pop

/* 80AE21E0-80AE21EC 000204 000C+00 0/1 0/0 0/0 .rodata          @4863 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4863[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE21E0, &lit_4863);
#pragma pop

/* 80AE21EC-80AE21F0 000210 0004+00 0/1 0/0 0/0 .rodata          @4864 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4864[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE21EC, &lit_4864);
#pragma pop

/* 80AE21F0-80AE21FC 000214 000C+00 0/1 0/0 0/0 .rodata          @4865 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4865[12] = {
    0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AE21F0, &lit_4865);
#pragma pop

/* 80AE21FC-80AE2208 000220 000C+00 0/1 0/0 0/0 .rodata          @4866 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4866[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE21FC, &lit_4866);
#pragma pop

/* 80AE2208-80AE2210 00022C 0008+00 0/1 0/0 0/0 .rodata          @4867 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4867[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE2208, &lit_4867);
#pragma pop

/* 80AE2210-80AE221C 000234 000C+00 0/1 0/0 0/0 .rodata          @4868 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4868[12] = {
    0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE2210, &lit_4868);
#pragma pop

/* 80AE221C-80AE2220 000240 0004+00 0/1 0/0 0/0 .rodata          @4869 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4869[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE221C, &lit_4869);
#pragma pop

/* 80AE2220-80AE222C 000244 000C+00 0/1 0/0 0/0 .rodata          @4870 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4870[12] = {
    0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AE2220, &lit_4870);
#pragma pop

/* 80AE222C-80AE2238 000250 000C+00 0/1 0/0 0/0 .rodata          @4871 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4871[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE222C, &lit_4871);
#pragma pop

/* 80AE2238-80AE2240 00025C 0008+00 0/1 0/0 0/0 .rodata          @4872 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4872[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE2238, &lit_4872);
#pragma pop

/* 80AE2240-80AE224C 000264 000C+00 0/1 0/0 0/0 .rodata          @4873 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4873[12] = {
    0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AE2240, &lit_4873);
#pragma pop

/* 80AE224C-80AE2258 000270 000C+00 0/1 0/0 0/0 .rodata          @4874 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4874[12] = {
    0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE224C, &lit_4874);
#pragma pop

/* 80AE2258-80AE2260 00027C 0008+00 0/1 0/0 0/0 .rodata          @4875 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4875[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE2258, &lit_4875);
#pragma pop

/* 80AE2260-80AE226C 000284 000C+00 0/1 0/0 0/0 .rodata          @4876 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4876[12] = {
    0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE2260, &lit_4876);
#pragma pop

/* 80AE226C-80AE2270 000290 0004+00 0/1 0/0 0/0 .rodata          @4877 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4877[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE226C, &lit_4877);
#pragma pop

/* 80AE2270-80AE227C 000294 000C+00 0/1 0/0 0/0 .rodata          @4878 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4878[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AE2270, &lit_4878);
#pragma pop

/* 80AE227C-80AE2288 0002A0 000C+00 0/1 0/0 0/0 .rodata          @4879 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4879[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE227C, &lit_4879);
#pragma pop

/* 80AE2288-80AE2290 0002AC 0008+00 0/1 0/0 0/0 .rodata          @4880 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4880[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE2288, &lit_4880);
#pragma pop

/* 80AE2290-80AE229C 0002B4 000C+00 0/1 0/0 0/0 .rodata          @4881 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4881[12] = {
    0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AE2290, &lit_4881);
#pragma pop

/* 80AE229C-80AE22A8 0002C0 000C+00 0/1 0/0 0/0 .rodata          @4882 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4882[12] = {
    0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE229C, &lit_4882);
#pragma pop

/* 80AE22A8-80AE22B0 0002CC 0008+00 0/1 0/0 0/0 .rodata          @4883 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4883[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE22A8, &lit_4883);
#pragma pop

/* 80AE22B0-80AE22BC 0002D4 000C+00 0/1 0/0 0/0 .rodata          @4884 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4884[12] = {
    0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AE22B0, &lit_4884);
#pragma pop

/* 80AE22BC-80AE22C8 0002E0 000C+00 0/1 0/0 0/0 .rodata          @4885 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4885[12] = {
    0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE22BC, &lit_4885);
#pragma pop

/* 80AE22C8-80AE22D0 0002EC 0008+00 0/1 0/0 0/0 .rodata          @4886 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4886[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE22C8, &lit_4886);
#pragma pop

/* 80AE22D0-80AE22DC 0002F4 000C+00 0/1 0/0 0/0 .rodata          @4887 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4887[12] = {
    0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AE22D0, &lit_4887);
#pragma pop

/* 80AE22DC-80AE22E8 000300 000C+00 0/1 0/0 0/0 .rodata          @4888 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4888[12] = {
    0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE22DC, &lit_4888);
#pragma pop

/* 80AE22E8-80AE22F0 00030C 0008+00 0/1 0/0 0/0 .rodata          @4889 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4889[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE22E8, &lit_4889);
#pragma pop

/* 80AE22F0-80AE22FC 000314 000C+00 0/1 0/0 0/0 .rodata          @4890 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4890[12] = {
    0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE22F0, &lit_4890);
#pragma pop

/* 80AE22FC-80AE2300 000320 0004+00 0/1 0/0 0/0 .rodata          @4891 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4891[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE22FC, &lit_4891);
#pragma pop

/* 80AE2300-80AE230C 000324 000C+00 0/1 0/0 0/0 .rodata          @4892 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4892[12] = {
    0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE2300, &lit_4892);
#pragma pop

/* 80AE230C-80AE2310 000330 0004+00 0/1 0/0 0/0 .rodata          @4893 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4893[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE230C, &lit_4893);
#pragma pop

/* 80AE2310-80AE231C 000334 000C+00 0/1 0/0 0/0 .rodata          @4894 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4894[12] = {
    0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AE2310, &lit_4894);
#pragma pop

/* 80AE231C-80AE2328 000340 000C+00 0/1 0/0 0/0 .rodata          @4895 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4895[12] = {
    0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE231C, &lit_4895);
#pragma pop

/* 80AE2328-80AE2330 00034C 0008+00 0/1 0/0 0/0 .rodata          @4896 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4896[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE2328, &lit_4896);
#pragma pop

/* 80AE2330-80AE233C 000354 000C+00 0/1 0/0 0/0 .rodata          @4897 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4897[12] = {
    0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE2330, &lit_4897);
#pragma pop

/* 80AE233C-80AE2340 000360 0004+00 0/1 0/0 0/0 .rodata          @4898 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4898[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE233C, &lit_4898);
#pragma pop

/* 80AE2340-80AE234C 000364 000C+00 0/1 0/0 0/0 .rodata          @4899 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4899[12] = {
    0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE2340, &lit_4899);
#pragma pop

/* 80AE234C-80AE2350 000370 0004+00 0/1 0/0 0/0 .rodata          @4900 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4900[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE234C, &lit_4900);
#pragma pop

/* 80AE2350-80AE235C 000374 000C+00 0/1 0/0 0/0 .rodata          @4901 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4901[12] = {
    0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE2350, &lit_4901);
#pragma pop

/* 80AE235C-80AE2360 000380 0004+00 0/1 0/0 0/0 .rodata          @4902 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4902[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE235C, &lit_4902);
#pragma pop

/* 80AE2360-80AE236C 000384 000C+00 0/1 0/0 0/0 .rodata          @4903 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4903[12] = {
    0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE2360, &lit_4903);
#pragma pop

/* 80AE236C-80AE2370 000390 0004+00 0/1 0/0 0/0 .rodata          @4904 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4904[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE236C, &lit_4904);
#pragma pop

/* 80AE2370-80AE237C 000394 000C+00 0/1 0/0 0/0 .rodata          @4905 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4905[12] = {
    0x00, 0x14, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE2370, &lit_4905);
#pragma pop

/* 80AE237C-80AE2380 0003A0 0004+00 0/1 0/0 0/0 .rodata          @4906 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4906[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE237C, &lit_4906);
#pragma pop

/* 80AE2380-80AE238C 0003A4 000C+00 0/1 0/0 0/0 .rodata          @4907 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4907[12] = {
    0x00, 0x15, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE2380, &lit_4907);
#pragma pop

/* 80AE238C-80AE2390 0003B0 0004+00 0/1 0/0 0/0 .rodata          @4908 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4908[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE238C, &lit_4908);
#pragma pop

/* 80AE2390-80AE239C 0003B4 000C+00 0/1 0/0 0/0 .rodata          @4909 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4909[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE2390, &lit_4909);
#pragma pop

/* 80AE239C-80AE23A0 0003C0 0004+00 0/1 0/0 0/0 .rodata          @4910 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4910[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE239C, &lit_4910);
#pragma pop

/* 80AE23A0-80AE23AC 0003C4 000C+00 0/1 0/0 0/0 .rodata          @4911 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4911[12] = {
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE23A0, &lit_4911);
#pragma pop

/* 80AE23AC-80AE23B0 0003D0 0004+00 0/1 0/0 0/0 .rodata          @4912 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4912[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE23AC, &lit_4912);
#pragma pop

/* 80AE23B0-80AE240C 0003D4 005C+00 0/0 0/0 0/0 .rodata          @4913 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4913[92] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE23B0, &lit_4913);
#pragma pop

/* 80AE240C-80AE2418 000430 000C+00 0/1 0/0 0/0 .rodata          @4955 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4955[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE240C, &lit_4955);
#pragma pop

/* 80AE2418-80AE241C 00043C 0004+00 7/16 0/0 0/0 .rodata          @5210 */
SECTION_RODATA static f32 const lit_5210 = -1.0f;
COMPILER_STRIP_GATE(0x80AE2418, &lit_5210);

/* 80AE241C-80AE2420 000440 0004+00 0/2 0/0 0/0 .rodata          @5211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5211 = 135.0f;
COMPILER_STRIP_GATE(0x80AE241C, &lit_5211);
#pragma pop

/* 80AE2420-80AE2424 000444 0004+00 0/7 0/0 0/0 .rodata          @5212 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5212 = 0x3BB40000;
COMPILER_STRIP_GATE(0x80AE2420, &lit_5212);
#pragma pop

/* 80AE2424-80AE242C 000448 0004+04 0/7 0/0 0/0 .rodata          @5213 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5213[1 + 1 /* padding */] = {
    15.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80AE2424, &lit_5213);
#pragma pop

/* 80AE242C-80AE2434 000450 0008+00 0/7 0/0 0/0 .rodata          @5215 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5215[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE242C, &lit_5215);
#pragma pop

/* 80AD9F00-80ADA630 001DE0 0730+00 1/0 0/0 0/0 .text            wait_type0__11daNpcShad_cFPv */
void daNpcShad_c::wait_type0(void* param_0) {
    // NONMATCHING
}

/* 80ADA630-80ADA674 002510 0044+00 1/0 0/0 0/0 .text            setMotion__11daNpcShad_cFifi */
void daNpcShad_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 80ADA674-80ADA6A0 002554 002C+00 1/0 0/0 0/0 .text            setExpression__11daNpcShad_cFif */
void daNpcShad_c::setExpression(int param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE2434-80AE2438 000458 0004+00 0/1 0/0 0/0 .rodata          @5532 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5532 = 0x43360B61;
COMPILER_STRIP_GATE(0x80AE2434, &lit_5532);
#pragma pop

/* 80AE2438-80AE243C 00045C 0004+00 0/2 0/0 0/0 .rodata          @5533 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5533 = 30.0f;
COMPILER_STRIP_GATE(0x80AE2438, &lit_5533);
#pragma pop

/* 80AE243C-80AE2440 000460 0004+00 0/1 0/0 0/0 .rodata          @5534 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5534 = 3750.0f;
COMPILER_STRIP_GATE(0x80AE243C, &lit_5534);
#pragma pop

/* 80AE2440-80AE2444 000464 0004+00 0/1 0/0 0/0 .rodata          @5535 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5535 = 400.0f;
COMPILER_STRIP_GATE(0x80AE2440, &lit_5535);
#pragma pop

/* 80AE24C4-80AE24C4 0004E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AE25F6 = "NO_RESPONSE";
#pragma pop

/* 80ADA6A0-80ADB428 002580 0D88+00 1/0 0/0 0/0 .text            wait_type1__11daNpcShad_cFPv */
void daNpcShad_c::wait_type1(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE2444-80AE2448 000468 0004+00 0/1 0/0 0/0 .rodata          @5586 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5586 = 0xC58DA0AD;
COMPILER_STRIP_GATE(0x80AE2444, &lit_5586);
#pragma pop

/* 80AE2448-80AE244C 00046C 0004+00 0/1 0/0 0/0 .rodata          @5587 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5587 = 0x4605AD86;
COMPILER_STRIP_GATE(0x80AE2448, &lit_5587);
#pragma pop

/* 80ADB428-80ADB628 003308 0200+00 1/0 0/0 0/0 .text            wait_type2__11daNpcShad_cFPv */
void daNpcShad_c::wait_type2(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE24C4-80AE24C4 0004E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AE2602 = "DEFAULT_GETITEM";
#pragma pop

/* 80ADB628-80ADBEA8 003508 0880+00 2/0 0/0 0/0 .text            talk__11daNpcShad_cFPv */
void daNpcShad_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80ADBEA8-80ADC3DC 003D88 0534+00 2/0 0/0 0/0 .text            demo__11daNpcShad_cFPv */
void daNpcShad_c::demo(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE244C-80AE2450 000470 0004+00 0/1 0/0 0/0 .rodata          @5828 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5828 = 0xC5C36B19;
COMPILER_STRIP_GATE(0x80AE244C, &lit_5828);
#pragma pop

/* 80AE2450-80AE2454 000474 0004+00 0/1 0/0 0/0 .rodata          @5829 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5829 = 0x45C35E15;
COMPILER_STRIP_GATE(0x80AE2450, &lit_5829);
#pragma pop

/* 80AE2454-80AE245C 000478 0008+00 0/2 0/0 0/0 .rodata          @5830 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5830[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE2454, &lit_5830);
#pragma pop

/* 80AE245C-80AE2464 000480 0008+00 0/2 0/0 0/0 .rodata          @5831 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5831[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE245C, &lit_5831);
#pragma pop

/* 80AE2464-80AE246C 000488 0008+00 0/2 0/0 0/0 .rodata          @5832 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5832[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE2464, &lit_5832);
#pragma pop

/* 80ADC3DC-80ADC700 0042BC 0324+00 1/0 0/0 0/0 .text            leave__11daNpcShad_cFPv */
void daNpcShad_c::leave(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE24C4-80AE24C4 0004E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AE2612 = "prm";
#pragma pop

/* 80ADC700-80ADC800 0045E0 0100+00 1/0 0/0 0/0 .text            EvCut_Introduction__11daNpcShad_cFi
 */
void daNpcShad_c::EvCut_Introduction(int param_0) {
    // NONMATCHING
}

/* 80ADC800-80ADCAD8 0046E0 02D8+00 1/0 0/0 0/0 .text            EvCut_Meeting__11daNpcShad_cFi */
void daNpcShad_c::EvCut_Meeting(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE246C-80AE2470 000490 0004+00 0/1 0/0 0/0 .rodata          @6108 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6108 = 0xC3D6C338;
COMPILER_STRIP_GATE(0x80AE246C, &lit_6108);
#pragma pop

/* 80AE2470-80AE2474 000494 0004+00 0/1 0/0 0/0 .rodata          @6109 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6109 = -770.0f;
COMPILER_STRIP_GATE(0x80AE2470, &lit_6109);
#pragma pop

/* 80AE2474-80AE2478 000498 0004+00 0/1 0/0 0/0 .rodata          @6110 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6110 = 0xC5216CD8;
COMPILER_STRIP_GATE(0x80AE2474, &lit_6110);
#pragma pop

/* 80AE2478-80AE247C 00049C 0004+00 0/2 0/0 0/0 .rodata          @6111 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6111 = 60.0f;
COMPILER_STRIP_GATE(0x80AE2478, &lit_6111);
#pragma pop

/* 80AE247C-80AE2484 0004A0 0004+04 0/1 0/0 0/0 .rodata          @6112 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6112[1 + 1 /* padding */] = {
    47.0f / 10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80AE247C, &lit_6112);
#pragma pop

/* 80AE2484-80AE248C 0004A8 0008+00 0/2 0/0 0/0 .rodata          @6115 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6115[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE2484, &lit_6115);
#pragma pop

/* 80ADCAD8-80ADD720 0049B8 0C48+00 1/0 0/0 0/0 .text EvCut_ToChantSpell1__11daNpcShad_cFi */
void daNpcShad_c::EvCut_ToChantSpell1(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE248C-80AE2490 0004B0 0004+00 0/1 0/0 0/0 .rodata          @6365 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6365 = 3.0f;
COMPILER_STRIP_GATE(0x80AE248C, &lit_6365);
#pragma pop

/* 80ADD720-80ADE47C 005600 0D5C+00 1/0 0/0 0/0 .text EvCut_ToChantSpell2__11daNpcShad_cFi */
void daNpcShad_c::EvCut_ToChantSpell2(int param_0) {
    // NONMATCHING
}

/* 80ADE47C-80ADE5F8 00635C 017C+00 1/0 0/0 0/0 .text EvCut_ToChantSpell2Skip__11daNpcShad_cFi */
void daNpcShad_c::EvCut_ToChantSpell2Skip(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE24C4-80AE24C4 0004E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AE2616 = "POS";
SECTION_DEAD static char const* const stringBase_80AE261A = "ANGLE";
#pragma pop

/* 80ADE5F8-80ADED68 0064D8 0770+00 3/0 0/0 0/0 .text EvCut_DiscoveryCannon__11daNpcShad_cFi */
void daNpcShad_c::EvCut_DiscoveryCannon(int param_0) {
    // NONMATCHING
}

/* 80ADED68-80ADEEE4 006C48 017C+00 1/0 0/0 0/0 .text EvCut_DiscoveryCannonSkip__11daNpcShad_cFi
 */
void daNpcShad_c::EvCut_DiscoveryCannonSkip(int param_0) {
    // NONMATCHING
}

/* 80ADEEE4-80ADF810 006DC4 092C+00 1/0 0/0 0/0 .text            EvCut_Disappear__11daNpcShad_cFi */
void daNpcShad_c::EvCut_Disappear(int param_0) {
    // NONMATCHING
}

/* 80ADF810-80ADF8DC 0076F0 00CC+00 1/0 0/0 0/0 .text EvCut_DisappearSkip__11daNpcShad_cFi */
void daNpcShad_c::EvCut_DisappearSkip(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE2490-80AE2494 0004B4 0004+00 0/0 0/0 0/0 .rodata          @6549 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6549 = 5.0f;
COMPILER_STRIP_GATE(0x80AE2490, &lit_6549);
#pragma pop

/* 80AE2494-80AE2498 0004B8 0004+00 0/1 0/0 0/0 .rodata          @6779 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6779 = 4100.0f;
COMPILER_STRIP_GATE(0x80AE2494, &lit_6779);
#pragma pop

/* 80AE2498-80AE249C 0004BC 0004+00 0/1 0/0 0/0 .rodata          @6780 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6780 = -1520.0f;
COMPILER_STRIP_GATE(0x80AE2498, &lit_6780);
#pragma pop

/* 80AE249C-80AE24A0 0004C0 0004+00 0/1 0/0 0/0 .rodata          @6781 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6781 = 0xC570FD00;
COMPILER_STRIP_GATE(0x80AE249C, &lit_6781);
#pragma pop

/* 80ADF8DC-80ADFB70 0077BC 0294+00 1/0 0/0 0/0 .text            EvCut_CallBack__11daNpcShad_cFi */
void daNpcShad_c::EvCut_CallBack(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE24A0-80AE24B0 0004C4 0010+00 1/1 0/0 0/0 .rodata          @6782 */
SECTION_RODATA static u8 const lit_6782[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE24A0, &lit_6782);

/* 80ADFB70-80ADFE74 007A50 0304+00 1/0 0/0 0/0 .text EvCut_WiretapSponsor__11daNpcShad_cFi */
void daNpcShad_c::EvCut_WiretapSponsor(int param_0) {
    // NONMATCHING
}

/* 80ADFE74-80AE0104 007D54 0290+00 2/0 0/0 0/0 .text EvCut_WiretapEntrant__11daNpcShad_cFi */
void daNpcShad_c::EvCut_WiretapEntrant(int param_0) {
    // NONMATCHING
}

/* 80AE0104-80AE0124 007FE4 0020+00 1/0 0/0 0/0 .text            daNpcShad_Create__FPv */
static void daNpcShad_Create(void* param_0) {
    // NONMATCHING
}

/* 80AE0124-80AE0144 008004 0020+00 1/0 0/0 0/0 .text            daNpcShad_Delete__FPv */
static void daNpcShad_Delete(void* param_0) {
    // NONMATCHING
}

/* 80AE0144-80AE0164 008024 0020+00 1/0 0/0 0/0 .text            daNpcShad_Execute__FPv */
static void daNpcShad_Execute(void* param_0) {
    // NONMATCHING
}

/* 80AE0164-80AE0184 008044 0020+00 1/0 0/0 0/0 .text            daNpcShad_Draw__FPv */
static void daNpcShad_Draw(void* param_0) {
    // NONMATCHING
}

/* 80AE0184-80AE018C 008064 0008+00 1/0 0/0 0/0 .text            daNpcShad_IsDelete__FPv */
static bool daNpcShad_IsDelete(void* param_0) {
    return true;
}

/* 80AE018C-80AE01BC 00806C 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80AE01BC-80AE0438 00809C 027C+00 1/0 0/0 0/0 .text            setParam__11daNpcShad_cFv */
void daNpcShad_c::setParam() {
    // NONMATCHING
}

/* 80AE0438-80AE04D8 008318 00A0+00 1/0 0/0 0/0 .text            main__11daNpcShad_cFv */
void daNpcShad_c::main() {
    // NONMATCHING
}

/* 80AE04D8-80AE0B58 0083B8 0680+00 1/1 0/0 0/0 .text            playMotion__11daNpcShad_cFv */
void daNpcShad_c::playMotion() {
    // NONMATCHING
}

/* 80AE0B58-80AE0ED0 008A38 0378+00 1/1 0/0 0/0 .text            playExpression__11daNpcShad_cFv */
void daNpcShad_c::playExpression() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE24B0-80AE24B4 0004D4 0004+00 1/1 0/0 0/0 .rodata          @6995 */
SECTION_RODATA static f32 const lit_6995 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AE24B0, &lit_6995);

/* 80AE0ED0-80AE0FAC 008DB0 00DC+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpcShad_cFv */
void daNpcShad_c::ctrlBtk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE24B4-80AE24B8 0004D8 0004+00 0/1 0/0 0/0 .rodata          @7090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7090 = 10.0f;
COMPILER_STRIP_GATE(0x80AE24B4, &lit_7090);
#pragma pop

/* 80AE24B8-80AE24BC 0004DC 0004+00 0/1 0/0 0/0 .rodata          @7091 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7091 = 45.0f;
COMPILER_STRIP_GATE(0x80AE24B8, &lit_7091);
#pragma pop

/* 80AE0FAC-80AE1320 008E8C 0374+00 1/0 0/0 0/0 .text            setAttnPos__11daNpcShad_cFv */
void daNpcShad_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE24BC-80AE24C0 0004E0 0004+00 0/1 0/0 0/0 .rodata          @7143 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7143 = -30.0f;
COMPILER_STRIP_GATE(0x80AE24BC, &lit_7143);
#pragma pop

/* 80AE1320-80AE153C 009200 021C+00 1/1 0/0 0/0 .text            lookat__11daNpcShad_cFv */
void daNpcShad_c::lookat() {
    // NONMATCHING
}

/* 80AE153C-80AE1544 00941C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpcShad_cFv */
bool daNpcShad_c::drawDbgInfo() {
    return false;
}

/* 80AE1544-80AE1550 009424 000C+00 1/1 0/0 0/0 .text sinShort__Q25JMath18TSinCosTable<13,f>CFs */
extern "C" void func_80AE1544(void* _this, s16 param_0) /* const */ {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE2CA4-80AE2CB0 000684 000C+00 2/2 0/0 0/0 .data            __vt__17daNpcShad_Param_c */
SECTION_DATA extern void* __vt__17daNpcShad_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpcShad_Param_cFv,
};

/* 80AE2CB8-80AE2CC4 000008 000C+00 1/1 0/0 0/0 .bss             @3931 */
static u8 lit_3931[12];

/* 80AE2CC4-80AE2CC8 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80AE1550-80AE1728 009430 01D8+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_shad_cpp */
void __sinit_d_a_npc_shad_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80AE1550, __sinit_d_a_npc_shad_cpp);
#pragma pop

/* 80AE1728-80AE1770 009608 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AE1770-80AE17AC 009650 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AE17AC-80AE187C 00968C 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 80AE187C-80AE18B8 00975C 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80AE18B8-80AE18BC 009798 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80AE18BC-80AE18F8 00979C 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80AE18F8-80AE18FC 0097D8 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80AE18FC-80AE1B48 0097DC 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80AE1B48-80AE1D38 009A28 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80AE1D38-80AE1DA8 009C18 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80AE1DA8-80AE1E04 009C88 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AE1E04-80AE1E74 009CE4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80AE1E74-80AE1EBC 009D54 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80AE1EBC-80AE1EC0 009D9C 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__8daNpcF_cFv */
// void daNpcF_c::adjustShapeAngle() {
extern "C" void adjustShapeAngle__8daNpcF_cFv() {
    /* empty function */
}

/* 80AE1EC0-80AE1EC4 009DA0 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80AE1EC4-80AE1EC8 009DA4 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__8daNpcF_cFv */
// void daNpcF_c::drawOtherMdls() {
extern "C" void drawOtherMdls__8daNpcF_cFv() {
    /* empty function */
}

/* 80AE1EC8-80AE1F10 009DA8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AE1F10-80AE1F70 009DF0 0060+00 1/1 0/0 0/0 .text chkPointInArea__15daTag_EvtArea_cF4cXyz */
// void daTag_EvtArea_c::chkPointInArea(cXyz param_0) {
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz() {
    // NONMATCHING
}

/* 80AE1F70-80AE1FB8 009E50 0048+00 2/1 0/0 0/0 .text            __dt__17daNpcShad_Param_cFv */
daNpcShad_Param_c::~daNpcShad_Param_c() {
    // NONMATCHING
}

/* 80AE1FB8-80AE1FC0 009E98 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80AE1FB8() {
    // NONMATCHING
}

/* 80AE1FC0-80AE1FC8 009EA0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80AE1FC0() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE24C0-80AE24C4 0004E4 0004+00 0/0 0/0 0/0 .rodata          @7144 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7144 = 40.0f;
COMPILER_STRIP_GATE(0x80AE24C0, &lit_7144);
#pragma pop

/* 80AE24C4-80AE24C4 0004E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
