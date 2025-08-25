/**
 * @file d_a_npc_gwolf.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_gwolf.h"
#include "dolphin/types.h"
#include "dol2asm.h"
#include "d/d_camera.h"

//
// Forward References:
//

extern "C" void __ct__13daNpc_GWolf_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__13daNpc_GWolf_cFv();
extern "C" void create__13daNpc_GWolf_cFv();
extern "C" void CreateHeap__13daNpc_GWolf_cFv();
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
extern "C" void Delete__13daNpc_GWolf_cFv();
extern "C" void Execute__13daNpc_GWolf_cFv();
extern "C" void Draw__13daNpc_GWolf_cFv();
extern "C" void draw__13daNpc_GWolf_cFiifP11_GXColorS10i();
extern "C" void ctrlJoint__13daNpc_GWolf_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__13daNpc_GWolf_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__13daNpc_GWolf_cFP8J3DJointi();
extern "C" void setParam__13daNpc_GWolf_cFv();
extern "C" void main__13daNpc_GWolf_cFv();
extern "C" void ctrlBtk__13daNpc_GWolf_cFv();
extern "C" void adjustShapeAngle__13daNpc_GWolf_cFv();
extern "C" void setAttnPos__13daNpc_GWolf_cFv();
extern "C" bool setExpressionAnm__13daNpc_GWolf_cFib();
extern "C" void setExpression__13daNpc_GWolf_cFif();
extern "C" void setMotionAnm__13daNpc_GWolf_cFif();
extern "C" void setMotion__13daNpc_GWolf_cFifi();
extern "C" bool drawDbgInfo__13daNpc_GWolf_cFv();
extern "C" void drawOtherMdls__13daNpc_GWolf_cFv();
extern "C" void getTypeFromParam__13daNpc_GWolf_cFv();
extern "C" void getModeFromParam__13daNpc_GWolf_cFv();
extern "C" void isDelete__13daNpc_GWolf_cFv();
extern "C" void reset__13daNpc_GWolf_cFv();
extern "C" void playMotion__13daNpc_GWolf_cFv();
extern "C" void chkAction__13daNpc_GWolf_cFM13daNpc_GWolf_cFPCvPvPv_i();
extern "C" void setAction__13daNpc_GWolf_cFM13daNpc_GWolf_cFPCvPvPv_i();
extern "C" void selectAction__13daNpc_GWolf_cFv();
extern "C" void doNormalAction__13daNpc_GWolf_cFi();
extern "C" void doEvent__13daNpc_GWolf_cFv();
extern "C" void setLookMode__13daNpc_GWolf_cFi();
extern "C" void lookat__13daNpc_GWolf_cFv();
extern "C" void ECut_attackWarp__13daNpc_GWolf_cFi();
extern "C" void ECut_attackWarpHorse__13daNpc_GWolf_cFi();
extern "C" void ECut_howlingSessionA__13daNpc_GWolf_cFi();
extern "C" static void callback_proc__FPvi();
extern "C" void meetGWolfSkip__13daNpc_GWolf_cFv();
extern "C" void ECut_meetGWolf__13daNpc_GWolf_cFi();
extern "C" void wait__13daNpc_GWolf_cFPv();
extern "C" void waitHowling__13daNpc_GWolf_cFPv();
extern "C" void waitBrave__13daNpc_GWolf_cFPv();
extern "C" void talk__13daNpc_GWolf_cFPv();
extern "C" void test__13daNpc_GWolf_cFPv();
extern "C" void getGroundSlope__13daNpc_GWolf_cFR12dBgS_ObjAcchs();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" static void daNpc_GWolf_Create__FPv();
extern "C" static void daNpc_GWolf_Delete__FPv();
extern "C" static void daNpc_GWolf_Execute__FPv();
extern "C" static void daNpc_GWolf_Draw__FPv();
extern "C" static bool daNpc_GWolf_IsDelete__FPv();
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
extern "C" void setCollisions__8daNpcF_cFv();
extern "C" bool setExpressionBtp__8daNpcF_cFi();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_809F8398(void* _this, int*);
extern "C" void __sinit_d_a_npc_gwolf_cpp();
extern "C" void __dt__19daNpc_GWolf_Param_cFv();
extern "C" static void func_809F84D0();
extern "C" static void func_809F84D8();
extern "C" u8 const m__19daNpc_GWolf_Param_c[140];
extern "C" extern char const* const d_a_npc_gwolf__stringBase0;
extern "C" void* mEvtCutNameList__13daNpc_GWolf_c[5];
extern "C" u8 mEvtCutList__13daNpc_GWolf_c[60];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void fopAcM_getPolygonAngle__FPC8cM3dGPlas();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGs_onStageSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void onSkipFade__14dEvt_control_cFv();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
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
extern "C" void daNpcT_onEvtBit__FUl();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_onTmpBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
extern "C" void initialize__18daNpcF_ActorMngr_cFv();
extern "C" void entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcF_ActorMngr_cFv();
extern "C" void getActorP__18daNpcF_ActorMngr_cFv();
extern "C" void initialize__15daNpcF_MatAnm_cFv();
extern "C" void initialize__15daNpcF_Lookat_cFv();
extern "C" void setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz();
extern "C" void calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii();
extern "C" void execute__8daNpcF_cFv();
extern "C" void tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void srchAttnActor1__8daNpcF_cFPvPv();
extern "C" void setMtx__8daNpcF_cFv();
extern "C" void setMtx2__8daNpcF_cFv();
extern "C" void initialize__8daNpcF_cFv();
extern "C" void getTrnsfrmKeyAnmP__8daNpcF_cFPci();
extern "C" void getTexSRTKeyAnmP__8daNpcF_cFPci();
extern "C" void getTevRegKeyAnmP__8daNpcF_cFPci();
extern "C" void setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii();
extern "C" void setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi();
extern "C" void setBrkAnm__8daNpcF_cFP15J3DAnmTevRegKeyP12J3DModelDatafi();
extern "C" void setEnvTevColor__8daNpcF_cFv();
extern "C" void setRoomNo__8daNpcF_cFv();
extern "C" void playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void setLookatMtx__8daNpcF_cFiPif();
extern "C" void hitChk2__8daNpcF_cFP8dCcD_Cylii();
extern "C" void setDamage__8daNpcF_cFiii();
extern "C" void ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void changeEvent__8daNpcF_cFPcPcUsUs();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void step__8daNpcF_cFsiii();
extern "C" void setAngle__8daNpcF_cFs();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii();
extern "C" void chkFindPlayer2__8daNpcF_cFis();
extern "C" void StartBlure__9dCamera_cFiP10fopAc_ac_cff();
extern "C" void dCam_getBody__Fv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
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
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
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
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 809F871C-809F871C 000228 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809F871C = "ATTACK_WARP";
SECTION_DEAD static char const* const stringBase_809F8728 = "ATTACK_WARP_HORSE";
SECTION_DEAD static char const* const stringBase_809F873A = "HOWLING_SESSIONA";
SECTION_DEAD static char const* const stringBase_809F874B = "HOWLING_SESSIONB";
SECTION_DEAD static char const* const stringBase_809F875C = "HOWLING_SESSIONC";
SECTION_DEAD static char const* const stringBase_809F876D = "HOWLING_SESSIOND";
SECTION_DEAD static char const* const stringBase_809F877E = "HOWLING_SESSIONE";
SECTION_DEAD static char const* const stringBase_809F878F = "HOWLING_SESSIONF";
SECTION_DEAD static char const* const stringBase_809F87A0 = "MEET_GWOLFA";
SECTION_DEAD static char const* const stringBase_809F87AC = "MEET_GWOLFB";
SECTION_DEAD static char const* const stringBase_809F87B8 = "MEET_GWOLFC";
SECTION_DEAD static char const* const stringBase_809F87C4 = "MEET_GWOLFD";
SECTION_DEAD static char const* const stringBase_809F87D0 = "MEET_GWOLFE";
SECTION_DEAD static char const* const stringBase_809F87DC = "MEET_GWOLFF";
SECTION_DEAD static char const* const stringBase_809F87E8 = "GWolf";
SECTION_DEAD static char const* const stringBase_809F87EE = "";
#pragma pop

/* 809F8814-809F881C 000020 0008+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
SECTION_DATA static u8 l_bmdGetParamList[8] = {
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00,
};

/* 809F881C-809F887C 000028 0060+00 0/1 0/0 0/0 .data            l_bckGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_bckGetParamList[96] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 809F887C-809F8884 000088 0008+00 1/2 0/0 0/0 .data            l_btkGetParamList */
SECTION_DATA static u8 l_btkGetParamList[8] = {
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00,
};

/* 809F8884-809F888C 000090 0008+00 0/0 0/0 0/0 .data            l_brkGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_brkGetParamList[8] = {
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 809F888C-809F8904 000098 0078+00 0/2 0/0 0/0 .data            l_evtGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_evtGetParamList[120] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 809F8904-809F8940 -00001 003C+00 0/2 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtNames[15] = {
    (void*)NULL,
    (void*)&d_a_npc_gwolf__stringBase0,
    (void*)(((char*)&d_a_npc_gwolf__stringBase0) + 0xC),
    (void*)(((char*)&d_a_npc_gwolf__stringBase0) + 0x1E),
    (void*)(((char*)&d_a_npc_gwolf__stringBase0) + 0x2F),
    (void*)(((char*)&d_a_npc_gwolf__stringBase0) + 0x40),
    (void*)(((char*)&d_a_npc_gwolf__stringBase0) + 0x51),
    (void*)(((char*)&d_a_npc_gwolf__stringBase0) + 0x62),
    (void*)(((char*)&d_a_npc_gwolf__stringBase0) + 0x73),
    (void*)(((char*)&d_a_npc_gwolf__stringBase0) + 0x84),
    (void*)(((char*)&d_a_npc_gwolf__stringBase0) + 0x90),
    (void*)(((char*)&d_a_npc_gwolf__stringBase0) + 0x9C),
    (void*)(((char*)&d_a_npc_gwolf__stringBase0) + 0xA8),
    (void*)(((char*)&d_a_npc_gwolf__stringBase0) + 0xB4),
    (void*)(((char*)&d_a_npc_gwolf__stringBase0) + 0xC0),
};
#pragma pop

/* 809F8940-809F894C 00014C 000C+00 1/0 0/0 0/0 .data            l_loadRes_GWOLFa */
SECTION_DATA static u8 l_loadRes_GWOLFa[12] = {
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809F894C-809F8958 000158 000C+00 1/0 0/0 0/0 .data            l_loadRes_GWOLF0 */
SECTION_DATA static u8 l_loadRes_GWOLF0[12] = {
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809F8958-809F8968 -00001 0010+00 2/2 0/0 0/0 .data            l_loadRes_list */
SECTION_DATA static void* l_loadRes_list[4] = {
    (void*)&l_loadRes_GWOLFa,
    (void*)&l_loadRes_GWOLFa,
    (void*)&l_loadRes_GWOLFa,
    (void*)&l_loadRes_GWOLF0,
};

/* 809F8968-809F896C -00001 0004+00 4/7 0/0 0/0 .data            l_resNames */
SECTION_DATA static void* l_resNames = (void*)(((char*)&d_a_npc_gwolf__stringBase0) + 0xCC);

/* 809F896C-809F8970 -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)(((char*)&d_a_npc_gwolf__stringBase0) + 0xCC);
#pragma pop

/* 809F8970-809F8980 00017C 000E+02 3/3 0/0 0/0 .data            l_appearTmpFlag */
SECTION_DATA static u8 l_appearTmpFlag[14 + 2 /* padding */] = {
    0xFF,
    0xFF,
    0x00,
    0x5C,
    0x00,
    0x5D,
    0x00,
    0x5E,
    0x00,
    0x5F,
    0x00,
    0x60,
    0x00,
    0x61,
    /* padding */
    0x00,
    0x00,
};

/* 809F8980-809F8990 00018C 000E+02 2/2 0/0 0/0 .data            l_warpAppearFlag */
SECTION_DATA static u8 l_warpAppearFlag[14 + 2 /* padding */] = {
    0xFF,
    0xFF,
    0x01,
    0xD8,
    0x01,
    0xD9,
    0x01,
    0xDA,
    0x01,
    0xDB,
    0x01,
    0xDC,
    0x01,
    0xDD,
    /* padding */
    0x00,
    0x00,
};

/* 809F8990-809F89A4 -00001 0014+00 0/1 0/0 0/0 .data            mEvtCutNameList__13daNpc_GWolf_c */
#pragma push
#pragma force_active on
SECTION_DATA void* daNpc_GWolf_c::mEvtCutNameList[5] = {
    (void*)(((char*)&d_a_npc_gwolf__stringBase0) + 0xD2),
    (void*)&d_a_npc_gwolf__stringBase0,
    (void*)(((char*)&d_a_npc_gwolf__stringBase0) + 0xC),
    (void*)(((char*)&d_a_npc_gwolf__stringBase0) + 0x1E),
    (void*)(((char*)&d_a_npc_gwolf__stringBase0) + 0x84),
};
#pragma pop

/* 809F89A4-809F89B0 -00001 000C+00 0/1 0/0 0/0 .data            @4018 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4018[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_attackWarp__13daNpc_GWolf_cFi,
};
#pragma pop

/* 809F89B0-809F89BC -00001 000C+00 0/1 0/0 0/0 .data            @4019 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4019[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_attackWarpHorse__13daNpc_GWolf_cFi,
};
#pragma pop

/* 809F89BC-809F89C8 -00001 000C+00 0/1 0/0 0/0 .data            @4020 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4020[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_howlingSessionA__13daNpc_GWolf_cFi,
};
#pragma pop

/* 809F89C8-809F89D4 -00001 000C+00 0/1 0/0 0/0 .data            @4021 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4021[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_meetGWolf__13daNpc_GWolf_cFi,
};
#pragma pop

/* 809F89D4-809F8A10 0001E0 003C+00 0/2 0/0 0/0 .data            mEvtCutList__13daNpc_GWolf_c */
#pragma push
#pragma force_active on
SECTION_DATA u8 daNpc_GWolf_c::mEvtCutList[60] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 809F8A10-809F8A1C -00001 000C+00 1/1 0/0 0/0 .data            @4488 */
SECTION_DATA static void* lit_4488[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__13daNpc_GWolf_cFPv,
};

/* 809F8A1C-809F8A4C -00001 0030+00 1/1 0/0 0/0 .data            @5014 */
SECTION_DATA static void* lit_5014[12] = {
    (void*)(((char*)setMotionAnm__13daNpc_GWolf_cFif) + 0xC8),
    (void*)(((char*)setMotionAnm__13daNpc_GWolf_cFif) + 0xC8),
    (void*)(((char*)setMotionAnm__13daNpc_GWolf_cFif) + 0xD0),
    (void*)(((char*)setMotionAnm__13daNpc_GWolf_cFif) + 0xD0),
    (void*)(((char*)setMotionAnm__13daNpc_GWolf_cFif) + 0xA0),
    (void*)(((char*)setMotionAnm__13daNpc_GWolf_cFif) + 0xA8),
    (void*)(((char*)setMotionAnm__13daNpc_GWolf_cFif) + 0xB0),
    (void*)(((char*)setMotionAnm__13daNpc_GWolf_cFif) + 0xD0),
    (void*)(((char*)setMotionAnm__13daNpc_GWolf_cFif) + 0xD0),
    (void*)(((char*)setMotionAnm__13daNpc_GWolf_cFif) + 0xB8),
    (void*)(((char*)setMotionAnm__13daNpc_GWolf_cFif) + 0xC0),
    (void*)(((char*)setMotionAnm__13daNpc_GWolf_cFif) + 0xD0),
};

/* 809F8A4C-809F8A6C -00001 0020+00 1/1 0/0 0/0 .data            @5060 */
SECTION_DATA static void* lit_5060[8] = {
    (void*)(((char*)getModeFromParam__13daNpc_GWolf_cFv) + 0x74),
    (void*)(((char*)getModeFromParam__13daNpc_GWolf_cFv) + 0x3C),
    (void*)(((char*)getModeFromParam__13daNpc_GWolf_cFv) + 0x44),
    (void*)(((char*)getModeFromParam__13daNpc_GWolf_cFv) + 0x4C),
    (void*)(((char*)getModeFromParam__13daNpc_GWolf_cFv) + 0x54),
    (void*)(((char*)getModeFromParam__13daNpc_GWolf_cFv) + 0x5C),
    (void*)(((char*)getModeFromParam__13daNpc_GWolf_cFv) + 0x64),
    (void*)(((char*)getModeFromParam__13daNpc_GWolf_cFv) + 0x6C),
};

/* 809F8A6C-809F8A7C 000278 000E+02 1/1 0/0 0/0 .data            l_delFlag$5064 */
SECTION_DATA static u8 l_delFlag[14 + 2 /* padding */] = {
    0x01,
    0x53,
    0x01,
    0xEC,
    0x01,
    0xED,
    0x01,
    0xEE,
    0x01,
    0xEF,
    0x01,
    0xF0,
    0x01,
    0xF1,
    /* padding */
    0x00,
    0x00,
};

/* 809F8A7C-809F8A8C 000288 000E+02 1/1 0/0 0/0 .data            l_playerNoList$5071 */
SECTION_DATA static u8 l_playerNoList[14 + 2 /* padding */] = {
    0xFF,
    0xFF,
    0x00,
    0x02,
    0x00,
    0x03,
    0x00,
    0x04,
    0x00,
    0x05,
    0x00,
    0x06,
    0x00,
    0x07,
    /* padding */
    0x00,
    0x00,
};

/* 809F8A8C-809F8A98 -00001 000C+00 0/1 0/0 0/0 .data            @5251 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5251[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__13daNpc_GWolf_cFPv,
};
#pragma pop

/* 809F8A98-809F8AA4 -00001 000C+00 0/1 0/0 0/0 .data            @5255 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5255[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitBrave__13daNpc_GWolf_cFPv,
};
#pragma pop

/* 809F8AA4-809F8AB0 -00001 000C+00 0/1 0/0 0/0 .data            @5257 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5257[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitHowling__13daNpc_GWolf_cFPv,
};
#pragma pop

/* 809F8AB0-809F8ABC -00001 000C+00 0/1 0/0 0/0 .data            @5259 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5259[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_GWolf_cFPv,
};
#pragma pop

/* 809F8ABC-809F8AC8 -00001 000C+00 0/1 0/0 0/0 .data            @5299 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5299[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_GWolf_cFPv,
};
#pragma pop

/* 809F8AC8-809F8AD4 -00001 000C+00 0/1 0/0 0/0 .data            @5307 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5307[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_GWolf_cFPv,
};
#pragma pop

/* 809F8AD4-809F8B78 -00001 00A4+00 1/1 0/0 0/0 .data            @5642 */
SECTION_DATA static void* lit_5642[41] = {
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3C8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x45C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x490),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x4A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x4C8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x71C),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x6D8),
};

/* 809F8B78-809F8C1C -00001 00A4+00 1/1 0/0 0/0 .data            @5641 */
SECTION_DATA static void* lit_5641[41] = {
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x94),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x154),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x1A0),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x1C8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x214),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x3A8),
    (void*)(((char*)ECut_attackWarp__13daNpc_GWolf_cFi) + 0x394),
};

/* 809F8C1C-809F8CC0 -00001 00A4+00 1/1 0/0 0/0 .data            @5817 */
SECTION_DATA static void* lit_5817[41] = {
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x33C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x3D4),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x408),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x420),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x440),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x694),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x650),
};

/* 809F8CC0-809F8D64 -00001 00A4+00 1/1 0/0 0/0 .data            @5816 */
SECTION_DATA static void* lit_5816[41] = {
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x94),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0xCC),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x118),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x13C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x188),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x31C),
    (void*)(((char*)ECut_attackWarpHorse__13daNpc_GWolf_cFi) + 0x308),
};

/* 809F8D64-809F8D7C 000570 0018+00 1/1 0/0 0/0 .data            l_warpIdList$5862 */
SECTION_DATA static u8 l_warpIdList[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0C,
};

/* 809F8D7C-809F8D9C -00001 0020+00 1/0 0/0 0/0 .data            daNpc_GWolf_MethodTable */
static actor_method_class daNpc_GWolf_MethodTable = {
    (process_method_func)daNpc_GWolf_Create__FPv,
    (process_method_func)daNpc_GWolf_Delete__FPv,
    (process_method_func)daNpc_GWolf_Execute__FPv,
    (process_method_func)daNpc_GWolf_IsDelete__FPv,
    (process_method_func)daNpc_GWolf_Draw__FPv,
};

/* 809F8D9C-809F8DCC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_GWOLF */
extern actor_process_profile_definition g_profile_NPC_GWOLF = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_GWOLF,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_GWolf_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  336,                      // mPriority
  &daNpc_GWolf_MethodTable, // sub_method
  0x08044100,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 809F8DCC-809F8DD8 0005D8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 809F8DD8-809F8DE4 0005E4 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 809F8DE4-809F8E2C 0005F0 0048+00 2/2 0/0 0/0 .data            __vt__13daNpc_GWolf_c */
SECTION_DATA extern void* __vt__13daNpc_GWolf_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpc_GWolf_cFv,
    (void*)setParam__13daNpc_GWolf_cFv,
    (void*)main__13daNpc_GWolf_cFv,
    (void*)ctrlBtk__13daNpc_GWolf_cFv,
    (void*)adjustShapeAngle__13daNpc_GWolf_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__13daNpc_GWolf_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__13daNpc_GWolf_cFib,
    (void*)setExpressionBtp__8daNpcF_cFi,
    (void*)setExpression__13daNpc_GWolf_cFif,
    (void*)setMotionAnm__13daNpc_GWolf_cFif,
    (void*)setMotion__13daNpc_GWolf_cFifi,
    (void*)drawDbgInfo__13daNpc_GWolf_cFv,
    (void*)drawOtherMdls__13daNpc_GWolf_cFv,
};

/* 809F8E2C-809F8E38 000638 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 809F8E38-809F8E5C 000644 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809F84D8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809F84D0,
};

/* 809F8E5C-809F8E68 000668 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 809F8E68-809F8E74 000674 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 809F8E74-809F8E80 000680 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 809F8E80-809F8E8C 00068C 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 809F8E8C-809F8E98 000698 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 809F8E98-809F8EA4 0006A4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 809F8EA4-809F8EB0 0006B0 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 809F30AC-809F3230 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__13daNpc_GWolf_cFv */
daNpc_GWolf_c::daNpc_GWolf_c() {
    // NONMATCHING
}

/* 809F3230-809F3278 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 809F3278-809F32C0 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 809F32C0-809F34C0 000300 0200+00 1/0 0/0 0/0 .text            __dt__13daNpc_GWolf_cFv */
daNpc_GWolf_c::~daNpc_GWolf_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F84F4-809F8580 000000 008C+00 17/17 0/0 0/0 .rodata          m__19daNpc_GWolf_Param_c */
SECTION_RODATA u8 const daNpc_GWolf_Param_c::m[140] = {
    0x41, 0xF0, 0x00, 0x00, 0xC0, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x44, 0x16, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x70, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x05, 0x00, 0x06, 0x00, 0x07, 0x00, 0x06,
    0x43, 0x34, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xA8, 0x00, 0x00,
    0x42, 0x22, 0x00, 0x00, 0x41, 0x9C, 0x00, 0x00, 0x42, 0x1A, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00,
    0x3F, 0x7D, 0x70, 0xA4, 0x3F, 0x66, 0x66, 0x66, 0x42, 0xF0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F84F4, &daNpc_GWolf_Param_c::m);

/* 809F8580-809F8584 00008C 0004+00 0/1 0/0 0/0 .rodata          @4401 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4401 = -300.0f;
COMPILER_STRIP_GATE(0x809F8580, &lit_4401);
#pragma pop

/* 809F8584-809F8588 000090 0004+00 0/1 0/0 0/0 .rodata          @4402 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4402 = -50.0f;
COMPILER_STRIP_GATE(0x809F8584, &lit_4402);
#pragma pop

/* 809F8588-809F858C 000094 0004+00 0/2 0/0 0/0 .rodata          @4403 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4403 = 300.0f;
COMPILER_STRIP_GATE(0x809F8588, &lit_4403);
#pragma pop

/* 809F858C-809F8590 000098 0004+00 0/1 0/0 0/0 .rodata          @4404 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4404 = 450.0f;
COMPILER_STRIP_GATE(0x809F858C, &lit_4404);
#pragma pop

/* 809F34C0-809F37C0 000500 0300+00 1/1 0/0 0/0 .text            create__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F8590-809F8594 00009C 0004+00 2/4 0/0 0/0 .rodata          @4456 */
SECTION_RODATA static f32 const lit_4456 = 1.0f;
COMPILER_STRIP_GATE(0x809F8590, &lit_4456);

/* 809F8594-809F8598 0000A0 0004+00 4/11 0/0 0/0 .rodata          @4457 */
SECTION_RODATA static u8 const lit_4457[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809F8594, &lit_4457);

/* 809F37C0-809F3A1C 000800 025C+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::CreateHeap() {
    // NONMATCHING
}

/* 809F3A1C-809F3A58 000A5C 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 809F3A58-809F3A70 000A98 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 809F3A70-809F3AAC 000AB0 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 809F3AAC-809F3AC4 000AEC 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 809F3AC4-809F3B0C 000B04 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 809F3B0C-809F3B30 000B4C 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 809F3B30-809F3B6C 000B70 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 809F3B6C-809F3B84 000BAC 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 809F3B84-809F3BC0 000BC4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 809F3BC0-809F3BD8 000C00 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 809F3BD8-809F3C0C 000C18 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::Delete() {
    // NONMATCHING
}

/* 809F3C0C-809F3C2C 000C4C 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::Execute() {
    // NONMATCHING
}

/* 809F3C2C-809F3CBC 000C6C 0090+00 1/1 0/0 0/0 .text            Draw__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F8598-809F859C 0000A4 0004+00 0/2 0/0 0/0 .rodata          @4582 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4582 = 20.0f;
COMPILER_STRIP_GATE(0x809F8598, &lit_4582);
#pragma pop

/* 809F859C-809F85A4 0000A8 0008+00 0/1 0/0 0/0 .rodata          @4584 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4584[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F859C, &lit_4584);
#pragma pop

/* 809F3CBC-809F3FB8 000CFC 02FC+00 1/1 0/0 0/0 .text draw__13daNpc_GWolf_cFiifP11_GXColorS10i */
void daNpc_GWolf_c::draw(int param_0, int param_1, f32 param_2, _GXColorS10* param_3,
                             int param_4) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F85A4-809F85B0 0000B0 000C+00 1/1 0/0 0/0 .rodata          @4589 */
SECTION_RODATA static u8 const lit_4589[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x809F85A4, &lit_4589);

/* 809F3FB8-809F41EC 000FF8 0234+00 1/1 0/0 0/0 .text
 * ctrlJoint__13daNpc_GWolf_cFP8J3DJointP8J3DModel              */
void daNpc_GWolf_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 809F41EC-809F420C 00122C 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_GWolf_cFP10fopAc_ac_c            */
void daNpc_GWolf_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809F420C-809F4258 00124C 004C+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_GWolf_cFP8J3DJointi               */
void daNpc_GWolf_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 809F4258-809F4390 001298 0138+00 1/0 0/0 0/0 .text            setParam__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::setParam() {
    // NONMATCHING
}

/* 809F4390-809F4558 0013D0 01C8+00 1/0 0/0 0/0 .text            main__13daNpc_GWolf_cFv */
BOOL daNpc_GWolf_c::main() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F85B0-809F85B4 0000BC 0004+00 5/10 0/0 0/0 .rodata          @4803 */
SECTION_RODATA static f32 const lit_4803 = -1.0f;
COMPILER_STRIP_GATE(0x809F85B0, &lit_4803);

/* 809F85B4-809F85B8 0000C0 0004+00 1/1 0/0 0/0 .rodata          @4804 */
SECTION_RODATA static f32 const lit_4804 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x809F85B4, &lit_4804);

/* 809F4558-809F4638 001598 00E0+00 1/0 0/0 0/0 .text            ctrlBtk__13daNpc_GWolf_cFv */
BOOL daNpc_GWolf_c::ctrlBtk() {
    // NONMATCHING
}

/* 809F4638-809F4698 001678 0060+00 1/0 0/0 0/0 .text            adjustShapeAngle__13daNpc_GWolf_cFv
 */
void daNpc_GWolf_c::adjustShapeAngle() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F85B8-809F85BC 0000C4 0004+00 0/2 0/0 0/0 .rodata          @4944 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4944 = 35.0f;
COMPILER_STRIP_GATE(0x809F85B8, &lit_4944);
#pragma pop

/* 809F85BC-809F85C0 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4945 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4945 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x809F85BC, &lit_4945);
#pragma pop

/* 809F85C0-809F85C4 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4946 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4946 = 125.0f;
COMPILER_STRIP_GATE(0x809F85C0, &lit_4946);
#pragma pop

/* 809F85C4-809F85CC 0000D0 0008+00 0/2 0/0 0/0 .rodata          @4947 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4947[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F85C4, &lit_4947);
#pragma pop

/* 809F85CC-809F85D4 0000D8 0008+00 0/2 0/0 0/0 .rodata          @4948 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4948[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F85CC, &lit_4948);
#pragma pop

/* 809F85D4-809F85DC 0000E0 0008+00 0/2 0/0 0/0 .rodata          @4949 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4949[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F85D4, &lit_4949);
#pragma pop

/* 809F8F08-809F8F14 000048 000C+00 1/1 0/0 0/0 .bss             @4017 */
static u8 lit_4017[12];

/* 809F8F14-809F8F18 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 809F8F18-809F8F28 000058 000C+04 0/1 0/0 0/0 .bss             @4815 */
#pragma push
#pragma force_active on
static u8 lit_4815[12 + 4 /* padding */];
#pragma pop

/* 809F8F28-809F8F34 000068 000C+00 0/1 0/0 0/0 .bss             eyeOffset$4814 */
#pragma push
#pragma force_active on
static u8 eyeOffset[12];
#pragma pop

/* 809F4698-809F4BB0 0016D8 0518+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::setAttnPos() {
    // NONMATCHING
}

/* 809F4BB0-809F4BB8 001BF0 0008+00 1/0 0/0 0/0 .text setExpressionAnm__13daNpc_GWolf_cFib */
bool daNpc_GWolf_c::setExpressionAnm(int param_0, bool param_1) {
    return true;
}

/* 809F4BB8-809F4BBC 001BF8 0004+00 1/0 0/0 0/0 .text            setExpression__13daNpc_GWolf_cFif
 */
void daNpc_GWolf_c::setExpression(int param_0, f32 param_1) {
    /* empty function */
}

/* 809F4BBC-809F4DE8 001BFC 022C+00 2/0 0/0 0/0 .text            setMotionAnm__13daNpc_GWolf_cFif */
bool daNpc_GWolf_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 809F4DE8-809F4E2C 001E28 0044+00 1/0 0/0 0/0 .text            setMotion__13daNpc_GWolf_cFifi */
void daNpc_GWolf_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 809F4E2C-809F4E34 001E6C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_GWolf_cFv */
BOOL daNpc_GWolf_c::drawDbgInfo() {
    return false;
}

/* 809F4E34-809F4E38 001E74 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::drawOtherMdls() {
    /* empty function */
}

/* 809F4E38-809F4E84 001E78 004C+00 1/1 0/0 0/0 .text            getTypeFromParam__13daNpc_GWolf_cFv
 */
void daNpc_GWolf_c::getTypeFromParam() {
    // NONMATCHING
}

/* 809F4E84-809F4F00 001EC4 007C+00 2/1 0/0 0/0 .text            getModeFromParam__13daNpc_GWolf_cFv
 */
void daNpc_GWolf_c::getModeFromParam() {
    // NONMATCHING
}

/* 809F4F00-809F4FF4 001F40 00F4+00 1/1 0/0 0/0 .text            isDelete__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::isDelete() {
    // NONMATCHING
}

/* 809F4FF4-809F520C 002034 0218+00 1/1 0/0 0/0 .text            reset__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::reset() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F85DC-809F85E8 0000E8 000C+00 0/1 0/0 0/0 .rodata          @5156 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5156[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F85DC, &lit_5156);
#pragma pop

/* 809F85E8-809F85EC 0000F4 0004+00 0/1 0/0 0/0 .rodata          @5157 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5157[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809F85E8, &lit_5157);
#pragma pop

/* 809F85EC-809F85F8 0000F8 000C+00 0/1 0/0 0/0 .rodata          @5158 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5158[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F85EC, &lit_5158);
#pragma pop

/* 809F85F8-809F85FC 000104 0004+00 0/1 0/0 0/0 .rodata          @5159 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5159[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809F85F8, &lit_5159);
#pragma pop

/* 809F85FC-809F8608 000108 000C+00 0/1 0/0 0/0 .rodata          @5160 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5160[12] = {
    0x00, 0x04, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809F85FC, &lit_5160);
#pragma pop

/* 809F8608-809F8614 000114 000C+00 0/1 0/0 0/0 .rodata          @5161 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5161[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F8608, &lit_5161);
#pragma pop

/* 809F8614-809F861C 000120 0008+00 0/1 0/0 0/0 .rodata          @5162 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5162[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F8614, &lit_5162);
#pragma pop

/* 809F861C-809F8628 000128 000C+00 0/1 0/0 0/0 .rodata          @5163 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5163[12] = {
    0x00, 0x06, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809F861C, &lit_5163);
#pragma pop

/* 809F8628-809F8634 000134 000C+00 0/1 0/0 0/0 .rodata          @5164 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5164[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F8628, &lit_5164);
#pragma pop

/* 809F8634-809F863C 000140 0008+00 0/1 0/0 0/0 .rodata          @5165 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5165[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F8634, &lit_5165);
#pragma pop

/* 809F863C-809F8648 000148 000C+00 0/1 0/0 0/0 .rodata          @5166 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5166[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F863C, &lit_5166);
#pragma pop

/* 809F8648-809F864C 000154 0004+00 0/1 0/0 0/0 .rodata          @5167 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5167[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809F8648, &lit_5167);
#pragma pop

/* 809F864C-809F8658 000158 000C+00 0/1 0/0 0/0 .rodata          @5168 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5168[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F864C, &lit_5168);
#pragma pop

/* 809F8658-809F865C 000164 0004+00 0/1 0/0 0/0 .rodata          @5169 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5169[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809F8658, &lit_5169);
#pragma pop

/* 809F865C-809F8668 000168 000C+00 0/1 0/0 0/0 .rodata          @5170 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5170[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F865C, &lit_5170);
#pragma pop

/* 809F8668-809F866C 000174 0004+00 0/1 0/0 0/0 .rodata          @5171 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5171[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809F8668, &lit_5171);
#pragma pop

/* 809F866C-809F8678 000178 000C+00 0/1 0/0 0/0 .rodata          @5172 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5172[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F866C, &lit_5172);
#pragma pop

/* 809F8678-809F867C 000184 0004+00 0/1 0/0 0/0 .rodata          @5173 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5173[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809F8678, &lit_5173);
#pragma pop

/* 809F867C-809F8688 000188 000C+00 0/1 0/0 0/0 .rodata          @5174 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5174[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F867C, &lit_5174);
#pragma pop

/* 809F8688-809F868C 000194 0004+00 0/1 0/0 0/0 .rodata          @5175 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5175[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809F8688, &lit_5175);
#pragma pop

/* 809F868C-809F86B0 000198 0024+00 0/0 0/0 0/0 .rodata          @5176 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5176[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F868C, &lit_5176);
#pragma pop

/* 809F86B0-809F86B4 0001BC 0004+00 0/1 0/0 0/0 .rodata          @5231 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5231 = 2.0f;
COMPILER_STRIP_GATE(0x809F86B0, &lit_5231);
#pragma pop

/* 809F520C-809F55D0 00224C 03C4+00 1/1 0/0 0/0 .text            playMotion__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::playMotion() {
    // NONMATCHING
}

/* 809F55D0-809F55FC 002610 002C+00 2/2 0/0 0/0 .text
 * chkAction__13daNpc_GWolf_cFM13daNpc_GWolf_cFPCvPvPv_i        */
void daNpc_GWolf_c::chkAction(int (daNpc_GWolf_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809F55FC-809F56A4 00263C 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpc_GWolf_cFM13daNpc_GWolf_cFPCvPvPv_i        */
void daNpc_GWolf_c::setAction(int (daNpc_GWolf_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809F56A4-809F5770 0026E4 00CC+00 1/1 0/0 0/0 .text            selectAction__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::selectAction() {
    // NONMATCHING
}

/* 809F5770-809F5884 0027B0 0114+00 1/1 0/0 0/0 .text            doNormalAction__13daNpc_GWolf_cFi
 */
void daNpc_GWolf_c::doNormalAction(int param_0) {
    // NONMATCHING
}

/* 809F5884-809F5B60 0028C4 02DC+00 1/1 0/0 0/0 .text            doEvent__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::doEvent() {
    // NONMATCHING
}

/* 809F5B60-809F5B84 002BA0 0024+00 10/10 0/0 0/0 .text            setLookMode__13daNpc_GWolf_cFi */
void daNpc_GWolf_c::setLookMode(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F86B4-809F86C0 0001C0 000C+00 0/1 0/0 0/0 .rodata          @5374 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5374[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F86B4, &lit_5374);
#pragma pop

/* 809F86C0-809F86C4 0001CC 0004+00 0/1 0/0 0/0 .rodata          @5427 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5427 = -80.0f;
COMPILER_STRIP_GATE(0x809F86C0, &lit_5427);
#pragma pop

/* 809F86C4-809F86C8 0001D0 0004+00 0/1 0/0 0/0 .rodata          @5428 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5428 = 80.0f;
COMPILER_STRIP_GATE(0x809F86C4, &lit_5428);
#pragma pop

/* 809F86C8-809F86CC 0001D4 0004+00 0/1 0/0 0/0 .rodata          @5429 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5429 = 40.0f;
COMPILER_STRIP_GATE(0x809F86C8, &lit_5429);
#pragma pop

/* 809F5B84-809F5E0C 002BC4 0288+00 1/1 0/0 0/0 .text            lookat__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::lookat() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F86CC-809F86D0 0001D8 0004+00 0/1 0/0 0/0 .rodata          @5637 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5637 = 400.0f;
COMPILER_STRIP_GATE(0x809F86CC, &lit_5637);
#pragma pop

/* 809F871C-809F871C 000228 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809F87EF = "prm";
#pragma pop

/* 809F5E0C-809F6548 002E4C 073C+00 3/0 0/0 0/0 .text            ECut_attackWarp__13daNpc_GWolf_cFi
 */
void daNpc_GWolf_c::ECut_attackWarp(int param_0) {
    // NONMATCHING
}

/* 809F6548-809F6BFC 003588 06B4+00 3/0 0/0 0/0 .text ECut_attackWarpHorse__13daNpc_GWolf_cFi */
void daNpc_GWolf_c::ECut_attackWarpHorse(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F86D0-809F86D4 0001DC 0004+00 0/0 0/0 0/0 .rodata          @5638 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5638 = 0.5f;
COMPILER_STRIP_GATE(0x809F86D0, &lit_5638);
#pragma pop

/* 809F86D4-809F86D8 0001E0 0004+00 0/1 0/0 0/0 .rodata          @5639 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5639 = 3.0f;
COMPILER_STRIP_GATE(0x809F86D4, &lit_5639);
#pragma pop

/* 809F86D8-809F86DC 0001E4 0004+00 0/0 0/0 0/0 .rodata          @5640 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5640 = 5.0f;
COMPILER_STRIP_GATE(0x809F86D8, &lit_5640);
#pragma pop

/* 809F86DC-809F86E0 0001E8 0004+00 0/0 0/0 0/0 .rodata          @5814 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5814 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x809F86DC, &lit_5814);
#pragma pop

/* 809F86E0-809F86E4 0001EC 0004+00 0/0 0/0 0/0 .rodata          @5815 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5815 = 99.0f / 100.0f;
COMPILER_STRIP_GATE(0x809F86E0, &lit_5815);
#pragma pop

/* 809F86E4-809F86E8 0001F0 0004+00 0/1 0/0 0/0 .rodata          @5913 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5913 = 12.0f;
COMPILER_STRIP_GATE(0x809F86E4, &lit_5913);
#pragma pop

/* 809F86E8-809F86EC 0001F4 0004+00 0/1 0/0 0/0 .rodata          @5914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5914 = 22.0f;
COMPILER_STRIP_GATE(0x809F86E8, &lit_5914);
#pragma pop

/* 809F86EC-809F86F0 0001F8 0004+00 0/1 0/0 0/0 .rodata          @5915 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5915 = -2.0f;
COMPILER_STRIP_GATE(0x809F86EC, &lit_5915);
#pragma pop

/* 809F86F0-809F86F4 0001FC 0004+00 0/1 0/0 0/0 .rodata          @5916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5916 = 25.0f;
COMPILER_STRIP_GATE(0x809F86F0, &lit_5916);
#pragma pop

/* 809F86F4-809F86F8 000200 0004+00 0/1 0/0 0/0 .rodata          @5917 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5917 = 28.0f;
COMPILER_STRIP_GATE(0x809F86F4, &lit_5917);
#pragma pop

/* 809F86F8-809F86FC 000204 0004+00 0/1 0/0 0/0 .rodata          @5918 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5918 = 4.0f;
COMPILER_STRIP_GATE(0x809F86F8, &lit_5918);
#pragma pop

/* 809F6BFC-809F7084 003C3C 0488+00 1/0 0/0 0/0 .text ECut_howlingSessionA__13daNpc_GWolf_cFi */
void daNpc_GWolf_c::ECut_howlingSessionA(int param_0) {
    // NONMATCHING
}

/* 809F7084-809F70A8 0040C4 0024+00 1/1 0/0 0/0 .text            callback_proc__FPvi */
static void callback_proc(void* param_0, int param_1) {
    // NONMATCHING
}

/* 809F70A8-809F70EC 0040E8 0044+00 1/1 0/0 0/0 .text            meetGWolfSkip__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::meetGWolfSkip() {
    // NONMATCHING
}

/* 809F70EC-809F71E0 00412C 00F4+00 1/0 0/0 0/0 .text            ECut_meetGWolf__13daNpc_GWolf_cFi
 */
void daNpc_GWolf_c::ECut_meetGWolf(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F86FC-809F8700 000208 0004+00 0/1 0/0 0/0 .rodata          @6060 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6060 = 100.0f;
COMPILER_STRIP_GATE(0x809F86FC, &lit_6060);
#pragma pop

/* 809F8700-809F8704 00020C 0004+00 0/1 0/0 0/0 .rodata          @6061 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6061 = 200.0f;
COMPILER_STRIP_GATE(0x809F8700, &lit_6061);
#pragma pop

/* 809F71E0-809F75C0 004220 03E0+00 1/0 0/0 0/0 .text            wait__13daNpc_GWolf_cFPv */
void daNpc_GWolf_c::wait(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F8704-809F8710 000210 000C+00 0/1 0/0 0/0 .rodata          @6071 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6071[12] = {
    0x00, 0x09, 0x00, 0x0A, 0x00, 0x0B, 0x00, 0x0C, 0x00, 0x0D, 0x00, 0x0E,
};
COMPILER_STRIP_GATE(0x809F8704, &lit_6071);
#pragma pop

/* 809F8710-809F871C 00021C 000C+00 0/1 0/0 0/0 .rodata          @6078 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6078[12] = {
    0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x06, 0x00, 0x07, 0x00, 0x08,
};
COMPILER_STRIP_GATE(0x809F8710, &lit_6078);
#pragma pop

/* 809F75C0-809F775C 004600 019C+00 1/0 0/0 0/0 .text            waitHowling__13daNpc_GWolf_cFPv */
void daNpc_GWolf_c::waitHowling(void* param_0) {
    // NONMATCHING
}

/* 809F775C-809F77E4 00479C 0088+00 1/0 0/0 0/0 .text            waitBrave__13daNpc_GWolf_cFPv */
void daNpc_GWolf_c::waitBrave(void* param_0) {
    // NONMATCHING
}

/* 809F77E4-809F797C 004824 0198+00 2/0 0/0 0/0 .text            talk__13daNpc_GWolf_cFPv */
void daNpc_GWolf_c::talk(void* param_0) {
    // NONMATCHING
}

/* 809F797C-809F7A30 0049BC 00B4+00 2/0 0/0 0/0 .text            test__13daNpc_GWolf_cFPv */
void daNpc_GWolf_c::test(void* param_0) {
    // NONMATCHING
}

/* 809F7A30-809F7AB0 004A70 0080+00 1/1 0/0 0/0 .text
 * getGroundSlope__13daNpc_GWolf_cFR12dBgS_ObjAcchs             */
void daNpc_GWolf_c::getGroundSlope(dBgS_ObjAcch& param_0, s16 param_1) {
    // NONMATCHING
}

/* 809F7AB0-809F7AF8 004AF0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 809F7AF8-809F7B18 004B38 0020+00 1/0 0/0 0/0 .text            daNpc_GWolf_Create__FPv */
static void daNpc_GWolf_Create(void* param_0) {
    // NONMATCHING
}

/* 809F7B18-809F7B38 004B58 0020+00 1/0 0/0 0/0 .text            daNpc_GWolf_Delete__FPv */
static void daNpc_GWolf_Delete(void* param_0) {
    // NONMATCHING
}

/* 809F7B38-809F7B58 004B78 0020+00 1/0 0/0 0/0 .text            daNpc_GWolf_Execute__FPv */
static void daNpc_GWolf_Execute(void* param_0) {
    // NONMATCHING
}

/* 809F7B58-809F7B78 004B98 0020+00 1/0 0/0 0/0 .text            daNpc_GWolf_Draw__FPv */
static void daNpc_GWolf_Draw(void* param_0) {
    // NONMATCHING
}

/* 809F7B78-809F7B80 004BB8 0008+00 1/0 0/0 0/0 .text            daNpc_GWolf_IsDelete__FPv */
static bool daNpc_GWolf_IsDelete(void* param_0) {
    return true;
}

/* 809F7B80-809F7BB0 004BC0 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 809F7BB0-809F7BF8 004BF0 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809F7BF8-809F7C34 004C38 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809F7C34-809F7D04 004C74 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 809F7D04-809F7D40 004D44 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 809F7D40-809F7D44 004D80 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 809F7D44-809F7D80 004D84 003C+00 6/6 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 809F7D80-809F7D84 004DC0 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 809F7D84-809F7FD0 004DC4 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809F7FD0-809F81C0 005010 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809F81C0-809F8230 005200 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809F8230-809F828C 005270 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 809F828C-809F82FC 0052CC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809F82FC-809F8344 00533C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 809F8344-809F8348 005384 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 809F8348-809F8350 005388 0008+00 1/0 0/0 0/0 .text            setExpressionBtp__8daNpcF_cFi */
// bool daNpcF_c::setExpressionBtp(int param_0) {
extern "C" bool setExpressionBtp__8daNpcF_cFi() {
    return true;
}

/* 809F8350-809F8398 005390 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 809F8398-809F83B4 0053D8 001C+00 3/3 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_809F8398(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F8EB0-809F8EBC 0006BC 000C+00 2/2 0/0 0/0 .data            __vt__19daNpc_GWolf_Param_c */
SECTION_DATA extern void* __vt__19daNpc_GWolf_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpc_GWolf_Param_cFv,
};

/* 809F83B4-809F8488 0053F4 00D4+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_gwolf_cpp */
void __sinit_d_a_npc_gwolf_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x809F83B4, __sinit_d_a_npc_gwolf_cpp);
#pragma pop

/* 809F8488-809F84D0 0054C8 0048+00 2/1 0/0 0/0 .text            __dt__19daNpc_GWolf_Param_cFv */
daNpc_GWolf_Param_c::~daNpc_GWolf_Param_c() {
    // NONMATCHING
}

/* 809F84D0-809F84D8 005510 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809F84D0() {
    // NONMATCHING
}

/* 809F84D8-809F84E0 005518 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809F84D8() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F8F34-809F8F38 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_809F8F34[4];
#pragma pop

/* 809F8F38-809F8F3C 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_809F8F38[4];
#pragma pop

/* 809F8F3C-809F8F40 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_809F8F3C[4];
#pragma pop

/* 809F8F40-809F8F44 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_809F8F40[4];
#pragma pop

/* 809F8F44-809F8F48 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809F8F44[4];
#pragma pop

/* 809F8F48-809F8F4C 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809F8F48[4];
#pragma pop

/* 809F8F4C-809F8F50 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_809F8F4C[4];
#pragma pop

/* 809F8F50-809F8F54 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_809F8F50[4];
#pragma pop

/* 809F8F54-809F8F58 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_809F8F54[4];
#pragma pop

/* 809F8F58-809F8F5C 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_809F8F58[4];
#pragma pop

/* 809F8F5C-809F8F60 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_809F8F5C[4];
#pragma pop

/* 809F8F60-809F8F64 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_809F8F60[4];
#pragma pop

/* 809F8F64-809F8F68 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_809F8F64[4];
#pragma pop

/* 809F8F68-809F8F6C 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809F8F68[4];
#pragma pop

/* 809F8F6C-809F8F70 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_809F8F6C[4];
#pragma pop

/* 809F8F70-809F8F74 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_809F8F70[4];
#pragma pop

/* 809F8F74-809F8F78 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_809F8F74[4];
#pragma pop

/* 809F8F78-809F8F7C 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_809F8F78[4];
#pragma pop

/* 809F8F7C-809F8F80 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_809F8F7C[4];
#pragma pop

/* 809F8F80-809F8F84 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_809F8F80[4];
#pragma pop

/* 809F8F84-809F8F88 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_809F8F84[4];
#pragma pop

/* 809F8F88-809F8F8C 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809F8F88[4];
#pragma pop

/* 809F8F8C-809F8F90 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809F8F8C[4];
#pragma pop

/* 809F8F90-809F8F94 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809F8F90[4];
#pragma pop

/* 809F8F94-809F8F98 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_809F8F94[4];
#pragma pop

/* 809F871C-809F871C 000228 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
