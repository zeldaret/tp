/**
 * @file d_a_npc_gwolf.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_gwolf.h"
#include "Z2AudioLib/Z2Instances.h"
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

enum RES_Name {
    /* 0x0 */ GWOLF,
};

enum Event_Cut_Nums {
    /* 0x5 */ NUM_EVT_CUTS_e = 0x5,
};

/* 809F8814-809F881C 000020 0008+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
static daNpc_GetParam1 l_bmdGetParamList[1] = {
    {0x13, GWOLF},
};

/* 809F881C-809F887C 000028 0060+00 0/1 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam1 l_bckGetParamList[12] = {
    {-1, GWOLF},
    {-1, GWOLF},
    {0x10, GWOLF},
    {0x7, GWOLF},
    {0xA, GWOLF},
    {0x8, GWOLF},
    {0x9, GWOLF},
    {0xC, GWOLF},
    {0xD, GWOLF},
    {0xF, GWOLF},
    {0xE, GWOLF},
    {0xB, GWOLF},
};

/* 809F887C-809F8884 000088 0008+00 1/2 0/0 0/0 .data            l_btkGetParamList */
static daNpc_GetParam1 l_btkGetParamList[1] = {
    {0x19, GWOLF},
};

/* 809F8884-809F888C 000090 0008+00 0/0 0/0 0/0 .data            l_brkGetParamList */
static daNpc_GetParam1 l_brkGetParamList[1] = {
    {0x16, GWOLF},
};

/* 809F888C-809F8904 000098 0078+00 0/2 0/0 0/0 .data            l_evtGetParamList */
static daNpc_GetParam1 l_evtGetParamList[15] = {
    {0, GWOLF},
    {1, GWOLF},
    {2, GWOLF},
    {3, GWOLF},
    {4, GWOLF},
    {5, GWOLF},
    {6, GWOLF},
    {7, GWOLF},
    {8, GWOLF},
    {9, GWOLF},
    {0xA, GWOLF},
    {0xB, GWOLF},
    {0xC, GWOLF},
    {0xD, GWOLF},
    {0xE, GWOLF},
};

/* 809F8904-809F8940 -00001 003C+00 0/2 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[15] = {
    NULL,
    "ATTACK_WARP",
    "ATTACK_WARP_HORSE",
    "HOWLING_SESSIONA",
    "HOWLING_SESSIONB",
    "HOWLING_SESSIONC",
    "HOWLING_SESSIOND",
    "HOWLING_SESSIONE",
    "HOWLING_SESSIONF",
    "MEET_GWOLFA",
    "MEET_GWOLFB",
    "MEET_GWOLFC",
    "MEET_GWOLFD",
    "MEET_GWOLFE",
    "MEET_GWOLFF",
};

/* 809F8940-809F894C 00014C 000C+00 1/0 0/0 0/0 .data            l_loadRes_GWOLFa */
static int l_loadRes_GWOLFa[3] = {
    GWOLF, -1, -1,
};

/* 809F894C-809F8958 000158 000C+00 1/0 0/0 0/0 .data            l_loadRes_GWOLF0 */
static int l_loadRes_GWOLF0[3] = {
    GWOLF, -1, -1,
};

/* 809F8958-809F8968 -00001 0010+00 2/2 0/0 0/0 .data            l_loadRes_list */
static int* l_loadRes_list[4] = {
    l_loadRes_GWOLFa,
    l_loadRes_GWOLFa,
    l_loadRes_GWOLFa,
    l_loadRes_GWOLF0,
};

/* 809F8968-809F896C -00001 0004+00 4/7 0/0 0/0 .data            l_resNames */
static char* l_resNames[1] = {"GWolf"};

/* 809F896C-809F8970 -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
static char* l_myName = "GWolf";

/* 809F8970-809F8980 00017C 000E+02 3/3 0/0 0/0 .data            l_appearTmpFlag */
static s16 l_appearTmpFlag[7] = {
    -1, 0x005C, 0x005D, 0x005E, 0x005F, 0x0060, 0x0061,
};

/* 809F8980-809F8990 00018C 000E+02 2/2 0/0 0/0 .data            l_warpAppearFlag */
static s16 l_warpAppearFlag[7] = {
    0xFFFF, 0x01D8, 0x01D9, 0x01DA, 0x01DB, 0x01DC, 0x01DD,
};

/* 809F8990-809F89A4 -00001 0014+00 0/1 0/0 0/0 .data            mEvtCutNameList__13daNpc_GWolf_c */
char* daNpc_GWolf_c::mEvtCutNameList[5] = {
    "",
    "ATTACK_WARP",
    "ATTACK_WARP_HORSE",
    "HOWLING_SESSIONA",
    "MEET_GWOLFA",
};

/* 809F89D4-809F8A10 0001E0 003C+00 0/2 0/0 0/0 .data            mEvtCutList__13daNpc_GWolf_c */
daNpc_GWolf_c::cutFunc daNpc_GWolf_c::mEvtCutList[5] = {
    NULL,
    &daNpc_GWolf_c::ECut_attackWarp,
    &daNpc_GWolf_c::ECut_attackWarpHorse,
    &daNpc_GWolf_c::ECut_howlingSessionA,
    &daNpc_GWolf_c::ECut_meetGWolf,
};

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
// static s16 l_delFlag[7] = {
//     0x0153, 0x01EC, 0x01ED, 0x01EE, 0x01EF, 0x01F0, 0x01F1,
// };

/* 809F8A7C-809F8A8C 000288 000E+02 1/1 0/0 0/0 .data            l_playerNoList$5071 */
// static s16 l_playerNoList[7] = {
//     0xFFFF, 2, 3, 4, 5, 6, 7,
// };

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
// static int l_warpIdList[6] = {
//     0, 8,9,
//     0xA, 0xB, 0xC,
// };

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
daNpc_GWolf_c::daNpc_GWolf_c() {}

/* 809F32C0-809F34C0 000300 0200+00 1/0 0/0 0/0 .text            __dt__13daNpc_GWolf_cFv */
daNpc_GWolf_c::~daNpc_GWolf_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F84F4-809F8580 000000 008C+00 17/17 0/0 0/0 .rodata          m__19daNpc_GWolf_Param_c */
daNpc_GWolf_HIOParam const daNpc_GWolf_Param_c::m = {
    30.0f,
    -4.0f,
    1.0f,
    600.0f,
    255.0f,
    240.0f,
    35.0f,
    60.0f,
    0.0f,
    0.0f,
    10.0f,
    -10.0f,
    30.0f,
    -30.0f,
    45.0f,
    -45.0f,
    0.6f,
    12.0f,
    5,
    6,
    7,
    6,
    180.0f,
    500.0f,
    300.0f,
    -300.0f,
    60,
    8,
    0,
    0,
    0,
    false,
    false,
    21.0f,
    40.5f,
    19.5f,
    38.5f,
    500.0f,
    0.99f,
    0.9f,
    120.0f,
};

/* 809F34C0-809F37C0 000500 0300+00 1/1 0/0 0/0 .text            create__13daNpc_GWolf_cFv */
cPhs__Step daNpc_GWolf_c::create() {
    fopAcM_SetupActor(this, daNpc_GWolf_c);

    mType = getTypeFromParam();
    mParamMode = getModeFromParam();

    field_0xe14 = fopAcM_GetParam(this) >> 24;

    if (home.angle.x != 0xFFFF) {
        field_0xe08 = home.angle.x;
    } else {
        field_0xe08 = -1;
    }

    swBit = getSwBitFromParam();
    mSaveTable = getSaveTableFromParam();

    if (isDelete()) {
        return cPhs_ERROR_e;
    }

    int iVar1 = 0;
    int i;
    for (i = 0; l_loadRes_list[mType][i] >= 0; i++) {
        cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhases[i], l_resNames[l_loadRes_list[mType][i]]);
        if (phase == cPhs_ERROR_e || phase == cPhs_UNK3_e) {
            return cPhs_ERROR_e;
        }

        if (phase == cPhs_COMPLEATE_e) {
            iVar1++;
        }
    }

    if (iVar1 == i) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x3D30)) {
            return cPhs_ERROR_e;
        }

        mpMorf->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);

        mSound.init(&current.pos, &eyePos, 3, 1);

        mAcchCir.SetWall(daNpc_GWolf_Param_c::m.common.width, daNpc_GWolf_Param_c::m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_GWolf_Param_c::m.common.weight, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgHitCallback(tgHitCallBack);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        
        setEnvTevColor();
        setRoomNo();
        reset();
        Execute();

        return cPhs_COMPLEATE_e;
    }

    return cPhs_INIT_e;
}

/* 809F37C0-809F3A1C 000800 025C+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_GWolf_cFv */
int daNpc_GWolf_c::CreateHeap() {
    J3DModelData* mdlData_p = NULL;

    if (l_bmdGetParamList[0].fileIdx >= 0) {
        mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_resNames[l_bmdGetParamList[0].arcIdx], l_bmdGetParamList[0].fileIdx);
    }

    JUT_ASSERT(538, 0 != mdlData_p);

    mpMorf = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11020284);
    if (mpMorf != NULL && mpMorf->getModel() == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }

    if (mpMorf == NULL) {
        return 0;
    }

    J3DModel* model = mpMorf->getModel();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((uintptr_t)this);

    mpMatAnm = new daNpcF_MatAnm_c();
    if (mpMatAnm == NULL) {
        return 0;
    }

    setMotionAnm(2, 0.0f);
    return 1;
}

/* 809F3BD8-809F3C0C 000C18 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_GWolf_cFv */
int daNpc_GWolf_c::Delete() {
    fopAcM_GetID(this);
    this->~daNpc_GWolf_c();
    return 1;
}

/* 809F3C0C-809F3C2C 000C4C 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_GWolf_cFv */
int daNpc_GWolf_c::Execute() {
    return execute();
}

/* 809F3C2C-809F3CBC 000C6C 0090+00 1/1 0/0 0/0 .text            Draw__13daNpc_GWolf_cFv */
int daNpc_GWolf_c::Draw() {
    J3DModelData* mdlData_p = mpMorf->getModel()->getModelData();
    mdlData_p->getMaterialNodePointer(2)->setMaterialAnm(mpMatAnm);

    return draw(
        chkAction(&daNpc_GWolf_c::test), FALSE, daNpc_GWolf_Param_c::m.common.real_shadow_size, NULL, 0
    );
}

/* 809F3CBC-809F3FB8 000CFC 02FC+00 1/1 0/0 0/0 .text draw__13daNpc_GWolf_cFiifP11_GXColorS10i */
int daNpc_GWolf_c::draw(int param_1, int param_2, f32 param_3, _GXColorS10* i_color, int param_5) {
    J3DModel* model = mpMorf->getModel();
    J3DModelData* mdlData_p = model->getModelData();

    field_0x9f3 = 1;
    if (!checkHide()) {
        f32 fVar1;
        if (param_5 == 0 && mDamageTimer != 0 && mTotalDamageTimer != 0) {
            fVar1 = (f32)mDamageTimer / mTotalDamageTimer;
        } else {
            fVar1 = 0.0f;
        }

        if (!(cM3d_IsZero(fVar1) > 0)) {
            tevStr.TevColor.r = fVar1 * 20.0f;
            tevStr.TevColor.g = 0;
        } else if (param_1 != 0) {
            tevStr.TevColor.g = 20;
            tevStr.TevColor.r = 0;
        } else if (i_color != NULL) {
            tevStr.TevColor.r = i_color->r;
            tevStr.TevColor.g = i_color->g;
            tevStr.TevColor.b = i_color->b;
            tevStr.TevColor.a = i_color->a;
        } else {
            tevStr.TevColor.g = 0;
            tevStr.TevColor.r = 0;
        }

        g_env_light.settingTevStruct(5, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(model, &tevStr);

        if (!drawDbgInfo()) {
            if ((mAnmFlags & ANM_PLAY_BTP) != 0) {
                mBtpAnm.entry(mdlData_p);
            }

            if((mAnmFlags & ANM_PLAY_BTK) != 0) {
                mBtkAnm.entry(mdlData_p);
            }

            if ((mAnmFlags & ANM_PLAY_BRK) != 0) {
                mBrkAnm.entry(mdlData_p);
            }

            if (param_2 != 0) {
                fopAcM_setEffectMtx(this, mdlData_p);
            }

            mpMorf->entryDL();

            if ((mAnmFlags & ANM_PLAY_BTP) != 0) {
                mBtpAnm.remove(mdlData_p);
            }

            if ((mAnmFlags & ANM_PLAY_BTK) != 0) {
                mBtkAnm.remove(mdlData_p);
            }

            if ((mAnmFlags & ANM_PLAY_BRK) != 0) {
                mBrkAnm.remove(mdlData_p);
            }

            mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model, &current.pos, param_3, 20.0f, current.pos.y,
                                            mGroundH, mGndChk, &tevStr, 0, 1.0f,
                                            dDlst_shadowControl_c::getSimpleTex());
            drawOtherMdls();
        }
    }

    return 1;
}

/* 809F3FB8-809F41EC 000FF8 0234+00 1/1 0/0 0/0 .text            ctrlJoint__13daNpc_GWolf_cFP8J3DJointP8J3DModel */
int daNpc_GWolf_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jntNo = i_joint->getJntNo();
    int i_jointList[3] = {1, 3, 4};

    if (jntNo == 0) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jntNo));

    switch (jntNo) {
        case 1:
        case 3:
        case 4:
            setLookatMtx(jntNo, i_jointList, daNpc_GWolf_Param_c::m.common.neck_rotation_ratio);
            break;
    }

    if (jntNo == 1) {
        mDoMtx_stack_c::YrotM(-field_0x908[0].z);
        mDoMtx_stack_c::ZrotM(field_0x908[0].x);
    } else if (jntNo == 4) {
        mDoMtx_stack_c::YrotM(-field_0x908[2].z);
        mDoMtx_stack_c::ZrotM(field_0x908[2].x);
    }

    i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    if ((jntNo == 4 || jntNo == 0xE) && (mAnmFlags & ANM_PLAY_BCK) != 0) {
        J3DAnmTransform* anm = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mpMorf->getAnm());
        mpMorf->changeAnm(anm);
    }

    return 1;
}

/* 809F41EC-809F420C 00122C 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__13daNpc_GWolf_cFP10fopAc_ac_c */
int daNpc_GWolf_c::createHeapCallBack(fopAc_ac_c* a_this) {
    return static_cast<daNpc_GWolf_c*>(a_this)->CreateHeap();
}

/* 809F420C-809F4258 00124C 004C+00 1/1 0/0 0/0 .text            ctrlJointCallBack__13daNpc_GWolf_cFP8J3DJointi */
int daNpc_GWolf_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_GWolf_c* i_this = (daNpc_GWolf_c*)model->getUserArea();

        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 809F4258-809F4390 001298 0138+00 1/0 0/0 0/0 .text            setParam__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::setParam() {
    actionFunc action = mNextAction;
    u32 flag = fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e;

    selectAction();

    if (mNextAction != action) {
        for (int i = 2; i < 2; i++) {
            mActorMngrs[i].initialize();
        }
    }

    field_0xdf8 = 0;
    field_0xdfc = 0;

    if (!daPy_py_c::checkNowWolf()) {
        flag = 0;
    }

    attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(5, 6);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(3, 6);
    attention_info.flags = flag;
    
    scale.set(daNpc_GWolf_Param_c::m.common.scale, daNpc_GWolf_Param_c::m.common.scale, daNpc_GWolf_Param_c::m.common.scale);
    mAcchCir.SetWallR(daNpc_GWolf_Param_c::m.common.width);
    mAcchCir.SetWallH(daNpc_GWolf_Param_c::m.common.knee_length);

    if (!dComIfGp_event_runCheck()) {
        gravity = daNpc_GWolf_Param_c::m.common.gravity;
    }
}

/* 809F4390-809F4558 0013D0 01C8+00 1/0 0/0 0/0 .text            main__13daNpc_GWolf_cFv */
BOOL daNpc_GWolf_c::main() {
    if (!doEvent()) {
        doNormalAction(1);
    }

    if (checkHide()) {
        attention_info.flags = 0;
    }

    if (!daNpc_GWolf_Param_c::m.common.debug_mode_ON && (!dComIfGp_event_runCheck() || (mOrderNewEvt && dComIfGp_getEvent().isOrderOK()))) {
        if (mOrderEvtNo != 0) {
            eventInfo.setArchiveName(l_resNames[l_evtGetParamList[mOrderEvtNo].arcIdx]);
        }

        switch (mOrderEvtNo) {
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
                orderEvent(mOrderSpeakEvt, l_evtNames[l_evtGetParamList[mOrderEvtNo].fileIdx], 0xFFFF, 4, 0xFF, 3);
                break;

            default:
                orderEvent(mOrderSpeakEvt, l_evtNames[l_evtGetParamList[mOrderEvtNo].fileIdx], 0xFFFF, 0x28, 0xFF, 1);
                break;
        }
    }

    if (field_0x9ee) {
        mExpressionMorfOverride = 0.0f;
        mMotionMorfOverride = 0.0f;
        field_0x9ee = false;
    }

    playMotion();
    return TRUE;
}

/* 809F4558-809F4638 001598 00E0+00 1/0 0/0 0/0 .text            ctrlBtk__13daNpc_GWolf_cFv */
BOOL daNpc_GWolf_c::ctrlBtk() {
    if (mpMatAnm != NULL) {
        J3DAnmTextureSRTKey* i_btk = NULL;

        if (l_btkGetParamList[0].fileIdx >= 0) {
            i_btk = getTexSRTKeyAnmP(l_resNames[l_btkGetParamList[0].arcIdx], l_btkGetParamList[0].fileIdx);
        }

        if (i_btk == mBtkAnm.getBtkAnm()) {
            mpMatAnm->setNowOffsetX(cM_ssin(mEyeAngle.y) * 0.2f * -1.0f);
            mpMatAnm->setNowOffsetY(cM_ssin(mEyeAngle.x) * 0.2f);
            mpMatAnm->onEyeMoveFlag();
            return TRUE;
        }

        mpMatAnm->offEyeMoveFlag();
    }

    return FALSE;
}

/* 809F4638-809F4698 001678 0060+00 1/0 0/0 0/0 .text            adjustShapeAngle__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::adjustShapeAngle() {
    s16 target = 0;

    if (mAcch.ChkGroundHit()) {
        target = getGroundSlope(mAcch, shape_angle.y);
    }

    cLib_addCalcAngleS2(&shape_angle.x, target, 3, 0x80);
    mCurAngle.x = shape_angle.x;
}

/* 809F8F14-809F8F18 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_GWolf_Param_c l_HIO;

/* 809F4698-809F4BB0 0016D8 0518+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::setAttnPos() {
    static cXyz eyeOffset(35.0f, 0.0f, 0.0f);

    cXyz sp7c, sp88, sp94, spa0;
    f32 attention_offset = daNpc_GWolf_Param_c::m.common.attention_offset;

    mDoMtx_stack_c::YrotS(field_0x990);
    cLib_addCalc2(&field_0x984[0], 0.0f, 0.1f, 125.0f);
    cLib_addCalc2(&field_0x984[2], 0.0f, 0.1f, 125.0f);

    for (int i = 0; i < 3; i++) {
        sp94.set(0.0f, 0.0f, field_0x984[i] * cM_ssin(field_0x992));
        mDoMtx_stack_c::multVec(&sp94, &spa0);
        field_0x908[i].x = -spa0.z;
        field_0x908[i].z = -spa0.x;
    }

    cLib_chaseS(&field_0x992, 0, 0x555);

    if (mLookMode == LOOK_RESET) {
        for (int i = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    setMtx();
    lookat();

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&eyeOffset, &eyePos);
    eyeOffset.y = 0.0f;
    mDoMtx_stack_c::multVec(&eyeOffset, &sp94);

    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &sp94);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &sp94);

    cXyz* attnPos = mLookat.getAttnPos();
    if (attnPos != NULL) {
        sp88 = *attnPos - eyePos;
        mEyeAngle.y = -(mLookatAngle[2].y + mCurAngle.y);
        mEyeAngle.y += cM_atan2s(sp88.x, sp88.z);
        mEyeAngle.x = -cM_atan2s(sp88.y, sp88.absXZ());
        mEyeAngle.x += mHeadAngle.x;
    } else {
        mEyeAngle.y = 0;
        mEyeAngle.x = 0;
    }

    f32 fVar1 = 0.0f;
    f32 fVar2 = 0.0f;

    sp88.set(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(mCurAngle.x, mCurAngle.y, mCurAngle.z);
    mDoMtx_stack_c::multVec(&sp88, &sp7c);

    attention_info.position.set(mHeadPos.x, mHeadPos.y + attention_offset, mHeadPos.z);

    if (!mHide && !mTwilight && mType == 0) {
        if (!mIsDamaged) {
            mCyl.SetTgType(0xD8FBFDFF);
            mCyl.SetTgSPrm(0x1F);
            mCyl.OnTgNoHitMark();
        } else {
            mCyl.SetTgType(0);
            mCyl.SetTgSPrm(0);
        }

        mCyl.SetC(sp7c);
        mCyl.SetH(daNpc_GWolf_Param_c::m.common.height + fVar1);
        mCyl.SetR(daNpc_GWolf_Param_c::m.common.width + fVar2);
        dComIfG_Ccsp()->Set(&mCyl);
    }

    mCyl.ClrTgHit();
}

/* 809F4BB0-809F4BB8 001BF0 0008+00 1/0 0/0 0/0 .text setExpressionAnm__13daNpc_GWolf_cFib */
bool daNpc_GWolf_c::setExpressionAnm(int i_index, bool i_modify) {
    return true;
}

/* 809F4BB8-809F4BBC 001BF8 0004+00 1/0 0/0 0/0 .text            setExpression__13daNpc_GWolf_cFif */
void daNpc_GWolf_c::setExpression(int i_index, f32 i_morf) {
    /* empty function */
}

/* 809F4BBC-809F4DE8 001BFC 022C+00 2/0 0/0 0/0 .text            setMotionAnm__13daNpc_GWolf_cFif */
void daNpc_GWolf_c::setMotionAnm(int i_index, f32 i_morf) {
    J3DAnmTransformKey* i_bck = NULL;
    J3DAnmTextureSRTKey* i_btk = NULL;
    J3DAnmTevRegKey* i_brk = NULL;
    int i_attr = J3DFrameCtrl::EMode_LOOP;
    mAnmFlags &= ~ANM_MOTION_FLAGS;

    if (l_bckGetParamList[i_index].fileIdx >= 0) {
        i_bck = getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[i_index].arcIdx], l_bckGetParamList[i_index].fileIdx);
    }

    field_0xe18 = i_index;

    switch (i_index) {
        case 2:
        case 3:
        case 7:
        case 8:
        case 0xB:
            break;

        case 4:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case 5:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case 6:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case 9:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case 0xA:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        default:
            i_bck = NULL;
            i_btk = NULL;
            break;
    }

    if (l_btkGetParamList[0].fileIdx >= 0) {
        i_btk = getTexSRTKeyAnmP(l_resNames[l_btkGetParamList[0].arcIdx], l_btkGetParamList[0].fileIdx);
    }

    if (i_btk != NULL) {
        if (setBtkAnm(i_btk, mpMorf->getModel()->getModelData(), 1.0f, J3DFrameCtrl::EMode_LOOP)) {
            mAnmFlags |= ANM_PLAY_BTK | ANM_PAUSE_BTK;
        }
    }

    if (l_brkGetParamList[0].fileIdx >= 0) {
        i_brk = getTevRegKeyAnmP(l_resNames[l_brkGetParamList[0].arcIdx], l_brkGetParamList[0].fileIdx);
    }

    if (i_brk != NULL) {
        if (mBrkAnm.getBrkAnm() == i_brk) {
            mAnmFlags |= ANM_PLAY_BRK;
        } else if (setBrkAnm(i_brk, mpMorf->getModel()->getModelData(), 1.0f, J3DFrameCtrl::EMode_LOOP)) {
            mAnmFlags |= ANM_PLAY_BRK | ANM_PAUSE_BRK;
        }
    }

    if (i_bck != NULL && setMcaMorfAnm(i_bck, 1.0f, i_morf, i_attr, 0, -1)) {
        mAnmFlags |= ANM_PLAY_MORF | ANM_PAUSE_MORF;
        mMotionLoops = 0;
    }
}

/* 809F4DE8-809F4E2C 001E28 0044+00 1/0 0/0 0/0 .text            setMotion__13daNpc_GWolf_cFifi */
void daNpc_GWolf_c::setMotion(int i_motion, f32 i_morf, int param_3) {
    s16 motion = i_motion;

    if ((param_3 != 0 || mMotion != motion) && i_motion >= 0 && i_motion < 9) {
        mMotion = motion;
        mMotionMorfOverride = i_morf;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
    }
}

/* 809F4E2C-809F4E34 001E6C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_GWolf_cFv */
BOOL daNpc_GWolf_c::drawDbgInfo() {
    return FALSE;
}

/* 809F4E34-809F4E38 001E74 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::drawOtherMdls() {
    /* empty function */
}

/* 809F4E38-809F4E84 001E78 004C+00 1/1 0/0 0/0 .text            getTypeFromParam__13daNpc_GWolf_cFv */
u8 daNpc_GWolf_c::getTypeFromParam() {
    switch (fopAcM_GetParam(this) & 0xFF) {
        case 0 :
            return 0;

        case 1:
            return 1;
        case 2:
            return 2;

        default:
            return 0;
    }
}

/* 809F4E84-809F4F00 001EC4 007C+00 2/1 0/0 0/0 .text            getModeFromParam__13daNpc_GWolf_cFv */
int daNpc_GWolf_c::getModeFromParam() {
    u8 uVar1 = (fopAcM_GetParam(this) & 0xFF00) >> 8;

    if (mType == 0 || mType == 1) {
        switch (uVar1) {
            case 1:
                return 0;

            case 2:
                return 1;

            case 3:
                return 2;

            case 4:
                return 3;

            case 5:
                return 4;

            case 6:
                return 5;

            case 7:
                return 6;
        }
    }

    return -1;
}

/* 809F4F00-809F4FF4 001F40 00F4+00 1/1 0/0 0/0 .text            isDelete__13daNpc_GWolf_cFv */
BOOL daNpc_GWolf_c::isDelete() {
    static s16 l_playerNoList[7] = {
        0xFFFF, 2, 3, 4, 5, 6, 7,
    };
    static s16 l_delFlag[7] = {
        0x0153, 0x01EC, 0x01ED, 0x01EE, 0x01EF, 0x01F0, 0x01F1,
    };

    if (mType == 3 || mType == 2) {
        return FALSE;
    }

    if (mType == 1) {
        if (mParamMode != -1 && l_playerNoList[mParamMode] == dComIfGs_getStartPoint()) {
            return FALSE;
        }
    } else if (mType == 0) {
        if (mParamMode != -1) {
            if (daNpcT_chkEvtBit(l_delFlag[mParamMode])) {
                if (swBit != 0xFF) {
                    dComIfGs_offSwitch(swBit, fopAcM_GetRoomNo(this));
                }
            } else {
                return FALSE;
            }
        } else {
            return FALSE;
        }
    }

    return TRUE;
}

/* 809F4FF4-809F520C 002034 0218+00 1/1 0/0 0/0 .text            reset__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::reset() {
    initialize();
    mpMatAnm->initialize();
    mLookat.initialize();

    for (int i = 0; i < 2; i++) {
        mActorMngrs[i].initialize();
    }

    mNextAction = NULL;
    mAction = NULL;
    field_0xdf8 = 0;
    field_0xdfc = 0;
    field_0xe00 = 0;
    field_0xe04 = 0;
    mLookMode = -1;
    mMode = 0;
    current.pos = home.pos;
    old.pos = current.pos;
    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;
    speedF = 0.0f;
    speed.setall(0.0f);
    field_0xe1c = 0;
    field_0xe1d = 0;

    if (mType == 0 && ((l_warpAppearFlag[mParamMode] != -1 && !daNpcT_chkEvtBit(l_warpAppearFlag[mParamMode])) ||
        (l_appearTmpFlag[mParamMode] != -1 && daNpcT_chkTmpBit(l_appearTmpFlag[mParamMode])))) {
        if (l_appearTmpFlag[mParamMode] != -1) {
            daNpcT_offTmpBit(l_appearTmpFlag[mParamMode]);
        }

        mHide = true;
    }

    field_0x9ee = true;
}

/* 809F520C-809F55D0 00224C 03C4+00 1/1 0/0 0/0 .text            playMotion__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::playMotion() {
    daNpcF_anmPlayData dat0 = {0x2, daNpc_GWolf_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1 = {0x3, daNpc_GWolf_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};
    daNpcF_anmPlayData dat2a = {0x4, 3.0f, 1};
    daNpcF_anmPlayData dat2b = {0x5, 0.0f, 0};
    daNpcF_anmPlayData* pDat2[2] = {&dat2a, &dat2b};
    daNpcF_anmPlayData dat3a = {0x6, 3.0f, 1};
    daNpcF_anmPlayData dat3b = {0x3, daNpc_GWolf_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat3[2] = {&dat3a, &dat3b};
    daNpcF_anmPlayData dat4 = {0x7, daNpc_GWolf_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4};
    daNpcF_anmPlayData dat5 = {0x8, daNpc_GWolf_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5};
    daNpcF_anmPlayData dat6 = {0x9, 0.0f, 0};
    daNpcF_anmPlayData* pDat6[1] = {&dat6};
    daNpcF_anmPlayData dat7 = {0xA, 0.0f, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};
    daNpcF_anmPlayData dat8 = {0xB, daNpc_GWolf_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat8[1] = {&dat8};

    daNpcF_anmPlayData** ppDat[9] = {
        pDat0,
        pDat1,
        pDat2,
        pDat3,
        pDat4,
        pDat5,
        pDat6,
        pDat7,
        pDat8,
    };

    if (mMotion >= 0 && mMotion < 9) {
        playMotionAnm(ppDat);
    }

    if (mHide != true) {
        switch (field_0xe18) {
            case 2:
                if (mpMorf->getFrame() >= 1.0f && mpMorf->getFrame() < 2.0f) {
                    mSound.startCreatureVoice(Z2SE_G_WLF_BREATH, -1);
                }
                break;

            case 9:
                if (mpMorf->getFrame() >= 1.0f && mpMorf->getFrame() < 2.0f) {
                    mSound.startCreatureVoice(Z2SE_G_WLF_JUMP, -1);
                }
                break;

            case 7:
                if (mpMorf->getFrame() >= 1.0f && mpMorf->getFrame() < 2.0f) {
                    mSound.startCreatureVoice(Z2SE_G_WLF_TRANSFORM, -1);
                }
                break;
        }
    }
}

/* 809F55D0-809F55FC 002610 002C+00 2/2 0/0 0/0 .text            chkAction__13daNpc_GWolf_cFM13daNpc_GWolf_cFPCvPvPv_i */
BOOL daNpc_GWolf_c::chkAction(actionFunc action) {
    return mAction == action;
}

/* 809F55FC-809F56A4 00263C 00A8+00 2/2 0/0 0/0 .text            setAction__13daNpc_GWolf_cFM13daNpc_GWolf_cFPCvPvPv_i */
BOOL daNpc_GWolf_c::setAction(actionFunc action) {
    mMode = 3;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    mMode = 0;
    mAction = action;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    return TRUE;
}

/* 809F56A4-809F5770 0026E4 00CC+00 1/1 0/0 0/0 .text            selectAction__13daNpc_GWolf_cFv */
BOOL daNpc_GWolf_c::selectAction() {
    // NONMATCHING
    mNextAction = NULL;

    if (daNpc_GWolf_Param_c::m.common.debug_mode_ON) {
        mNextAction = &daNpc_GWolf_c::test;
    } else {
        switch (mType) {
            case 2:
                mNextAction = &daNpc_GWolf_c::waitBrave;
                break;
                  
            case 1:
                mNextAction = &daNpc_GWolf_c::waitHowling;
                break;

            default:
                mNextAction = &daNpc_GWolf_c::wait;
                break;
        }
    }

    return TRUE;
}

/* 809F5770-809F5884 0027B0 0114+00 1/1 0/0 0/0 .text            doNormalAction__13daNpc_GWolf_cFi */
void daNpc_GWolf_c::doNormalAction(int param_1) {
    if (param_1 != 0 && hitChk2(&mCyl, TRUE, FALSE)) {
        int damage_time;
        if (mCutType == 8) {
            damage_time = 20;
        } else {
            damage_time = daNpc_GWolf_Param_c::m.common.damage_time;
        }

        setDamage(damage_time, -1, 0);
        setLookMode(LOOK_RESET);
    } else if (mIsDamaged && mDamageTimer == 0) {
        mMode = 0;
        mIsDamaged = false;
    }

    mOrderEvtNo = 0;

    if (mNextAction) {
        if (mAction == mNextAction) {
            (this->*mAction)(NULL);
        } else {
            setAction(mNextAction);
        }
    }
}

/* 809F5884-809F5B60 0028C4 02DC+00 1/1 0/0 0/0 .text            doEvent__13daNpc_GWolf_cFv */
BOOL daNpc_GWolf_c::doEvent() {
    // NONMATCHING
    BOOL rv = FALSE;

    if (dComIfGp_event_runCheck() != FALSE) {
        dEvent_manager_c& eventManager = dComIfGp_getEventManager();

        if (eventInfo.checkCommandTalk() || eventInfo.checkCommandDemoAccrpt()) {
            mOrderNewEvt = false;
        }

        if (eventInfo.checkCommandTalk()) {
            if (chkAction(&daNpc_GWolf_c::talk)) {
                (this->*mAction)(NULL);
            } else if (dComIfGp_event_chkTalkXY() == FALSE || dComIfGp_evmng_ChkPresentEnd()) {
                setAction(&daNpc_GWolf_c::talk);
            }

            rv = TRUE;
        } else {
            int staffId = eventManager.getMyStaffId(l_myName, NULL, 0);
            if (staffId != -1) {
                mStaffID = staffId;

                int evtCutNo = eventManager.getMyActIdx(staffId, mEvtCutNameList, 5, FALSE, FALSE);

                JUT_ASSERT(2087, (0 <= evtCutNo) && (evtCutNo < NUM_EVT_CUTS_e));
                JUT_ASSERT(2088, 0 != mEvtCutList[evtCutNo]);

                if ((this->*mEvtCutList[evtCutNo])(staffId)) {
                    eventManager.cutEnd(staffId);
                }

                rv = TRUE;
            }

            if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && eventManager.endCheck(mEventIdx)) {
                switch (mOrderEvtNo) {
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                        dComIfGp_event_reset();
                        mOrderEvtNo = 0;
                        mEventIdx = -1;
                        field_0xe1d = 1;
                        break;

                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        dComIfGp_event_reset();
                        mOrderEvtNo = 0;
                        mEventIdx = -1;
                        fopAcM_delete(this);
                        break;

                    default:
                        dComIfGp_event_reset();
                        mOrderEvtNo = 0;
                        mEventIdx = -1;
                        break;
                }
            }
        }

        int i_expression, i_motion;
        if (ctrlMsgAnm(i_expression, i_motion, this, FALSE) && !field_0x9eb) {
            setMotion(i_motion, -1.0f, 0);
        }
    } else {
        mMsgTimer = 0;

        if (mStaffID != -1) {
            mAction = NULL;
            mStaffID = -1;
        }
    }

    return rv;
}

/* 809F5B60-809F5B84 002BA0 0024+00 10/10 0/0 0/0 .text            setLookMode__13daNpc_GWolf_cFi */
void daNpc_GWolf_c::setLookMode(int i_lookMode) {
    if (i_lookMode >= 0 && i_lookMode < 5 && i_lookMode != mLookMode) {
        mLookMode = i_lookMode;
    }
}

/* 809F5B84-809F5E0C 002BC4 0288+00 1/1 0/0 0/0 .text            lookat__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::lookat() {
    daPy_py_c* player = NULL;
    J3DModel* model = mpMorf->getModel();
    BOOL i_snap = FALSE;
    f32 body_angleX_min = daNpc_GWolf_Param_c::m.common.body_angleX_min;
    f32 body_angleX_max = daNpc_GWolf_Param_c::m.common.body_angleX_max;
    f32 body_angleY_min = daNpc_GWolf_Param_c::m.common.body_angleY_min;
    f32 body_angleY_max = daNpc_GWolf_Param_c::m.common.body_angleY_max;
    f32 head_angleX_min = daNpc_GWolf_Param_c::m.common.head_angleX_min;
    f32 head_angleX_max = daNpc_GWolf_Param_c::m.common.head_angleX_max;
    f32 head_angleY_min = daNpc_GWolf_Param_c::m.common.head_angleY_min;
    f32 head_angleY_max = daNpc_GWolf_Param_c::m.common.head_angleY_max;
    s16 angle_delta = mCurAngle.y - mOldAngle.y;
    cXyz lookatPos[3] = {mLookatPos[0], mLookatPos[1], mLookatPos[2]};
    csXyz* lookatAngle[3] = {&mLookatAngle[0], &mLookatAngle[1], &mLookatAngle[2]};
    cXyz spe8;

    switch (mLookMode) {
        case LOOK_NONE:
            break;

        case LOOK_RESET:
            i_snap = TRUE;
            break;

        case LOOK_PLAYER:
        case LOOK_PLAYER_TALK:
            player = daPy_getPlayerActorClass();

            if (mLookMode != LOOK_PLAYER_TALK) {
                break;
            }

            head_angleY_min = -80.0f;
            head_angleY_max = 80.0f;
            break;

        case LOOK_ACTOR:
            player = (daPy_py_c*)mActorMngrs[1].getActorP();
            break;
    }

    if (player != NULL) {
        mLookPos = player->attention_info.position;

        if (mLookMode != LOOK_PLAYER && mLookMode != LOOK_PLAYER_TALK && mLookMode != LOOK_ACTOR) {
            mLookPos.y -= 40.0f;
        }

        mLookat.setAttnPos(&mLookPos);
    } else {
        mLookat.setAttnPos(NULL);
    }
    
    mLookat.setParam(body_angleX_min, body_angleX_max, body_angleY_min, body_angleY_max, 0.0f, 0.0f, 0.0f, 0.0f, 
                     head_angleX_min, head_angleX_max, head_angleY_min, head_angleY_max, mCurAngle.y, lookatPos);
    mLookat.calc(this, model->getBaseTRMtx(), lookatAngle, i_snap, angle_delta, FALSE);
}

/* 809F5E0C-809F6548 002E4C 073C+00 3/0 0/0 0/0 .text            ECut_attackWarp__13daNpc_GWolf_cFi */
BOOL daNpc_GWolf_c::ECut_attackWarp(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int iVar1 = 0;
    daPy_py_c* player = daPy_getPlayerActorClass();
    BOOL rv = FALSE;
    int prm = -1;
    int iVar2 = 0;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_staffId, "prm");
    if (piVar1 != NULL) {
        prm = *piVar1;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        switch (prm) {
            case 0: {
                setMotion(0, -1.0f, 0);
                setLookMode(LOOK_NONE);
                speedF = 0.0f;
                cXyz sp50(0.0f, 300.0f, 400.0f);
                mDoMtx_stack_c::transS(current.pos);
                mDoMtx_stack_c::YrotM(mCurAngle.y);
                mDoMtx_stack_c::multVec(&sp50, &sp50);

                if (fopAcM_gc_c::gndCheck(&sp50)) {
                    sp50.y = fopAcM_gc_c::getGroundY();
                }

                player->setPlayerPosAndAngle(&sp50, cLib_targetAngleY(&sp50, &current.pos), 0);
                break;
            }

            case 10:
                setMotion(1, -1.0f, 0);
                mSound.startCreatureVoice(Z2SE_G_WLF_UNARU, -1);
                break;

            case 15:
                mEventTimer = 20;
                dCam_getBody()->StartBlure(5000, this, daNpc_GWolf_Param_c::m.blur_opacity, daNpc_GWolf_Param_c::m.blur_scale);
                break;

            case 20:
                setMotion(2, -1.0f, 0);
                mSound.startCreatureVoice(Z2SE_G_WLF_ATK, -1);
                break;

            case 30: {
                mCyl.OnCoNoCrrBit();
                mCyl.OnCoNoCoHitInfSet();
                speedF = daNpc_GWolf_Param_c::m.attack_spd_horizontal;
                speed.y = daNpc_GWolf_Param_c::m.attack_spd_vertical;
                cXyz sp5c(player->current.pos);
                speed.y += (sp5c.y - current.pos.y) / ((sp5c - current.pos).absXZ() / speedF);
                break;
            }

            case 40:
                f32 fVar3 = 0.5f;
                speedF = daNpc_GWolf_Param_c::m.attack_spd_horizontal * fVar3;
                break;
        }
    }

    switch (prm) {
        case 0: {
            cXyz sp68(0.0f, 300.0f, 400.0f);
            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(mCurAngle.y);
            mDoMtx_stack_c::multVec(&sp68, &sp68);

            if (fopAcM_gc_c::gndCheck(&sp68)) {
                sp68.y = fopAcM_gc_c::getGroundY();
            }

            player->setPlayerPosAndAngle(&sp68, cLib_targetAngleY(&sp68, &current.pos), 0);
            rv = TRUE;
            break;
        }

        case 10:
            cLib_addCalcAngleS2(&mCurAngle.y, fopAcM_searchPlayerAngleY(this), 2, 0x800);
            setAngle(mCurAngle.y);
            rv = TRUE;
            break;

        case 15:
            if (cLib_calcTimer(&mEventTimer) == 0) {
                rv = TRUE;
            }
            break;

        case 20:
            if (mMotion == 2 && mMotionPhase > 0) {
                rv = TRUE;
            }
            break;

        case 30:
            if (mMotion == 2 && mMotionPhase > 0) {
                if (mpMorf->getFrame() >= 3.0f) {
                    if (speed.y > 5.0f) {
                        mpMorf->setPlaySpeed(0.0f);
                    } else {
                        mpMorf->setPlaySpeed(1.0f);
                    }
                }

                f32 fVar1 = (daPy_getPlayerActorClass()->current.pos - current.pos).absXZ();
                f32 fVar2 = daNpc_GWolf_Param_c::m.warp_start_dist;
                if (fVar1 < fVar2) {
                    if (l_appearTmpFlag[mParamMode] != -1) {
                        daNpcT_onTmpBit(l_appearTmpFlag[mParamMode]);
                    }

                    dStage_changeScene(field_0xe14, 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
                    Z2GetAudioMgr()->seStart(Z2SE_SY_WARP_FADE_GW, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                    mpMorf->setPlaySpeed(0.5f);
                    rv = TRUE;
                }
            }
            break;

        case 40:
            if (mAcch.ChkGroundHit()) {
                speedF = 0.0f;
                speed.zero();
                setMotion(3, -1.0f, 0);
            }
            break;

        default:
            rv = TRUE;
            break;
    }

    return rv;
}

/* 809F6548-809F6BFC 003588 06B4+00 3/0 0/0 0/0 .text ECut_attackWarpHorse__13daNpc_GWolf_cFi */
BOOL daNpc_GWolf_c::ECut_attackWarpHorse(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int iVar1 = 0;
    daPy_py_c* player = daPy_getPlayerActorClass();
    BOOL rv = FALSE;
    int prm = -1;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_staffId, "prm");
    if (piVar1 != NULL) {
        prm = *piVar1;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        switch (prm) {
            case 0:
                setMotion(0, -1.0f, 0);
                setLookMode(LOOK_NONE);
                speedF = 0.0f;
                break;

            case 10:
                setMotion(1, -1.0f, 0);
                mSound.startCreatureVoice(Z2SE_G_WLF_UNARU, -1);
                break;

            case 15:
                mEventTimer = 20;
                dCam_getBody()->StartBlure(5000, this, 0.9f, 0.99f);
                break;

            case 20:
                setMotion(2, -1.0f, 0);
                mSound.startCreatureVoice(Z2SE_G_WLF_ATK, -1);
                break;

            case 30: {
                mCyl.OnCoNoCrrBit();
                mCyl.OnCoNoCoHitInfSet();
                speedF = daNpc_GWolf_Param_c::m.attack_spd_horizontal_horse;
                speed.y = daNpc_GWolf_Param_c::m.attack_spd_vertical_horse;
                cXyz sp54(player->current.pos);
                speed.y += (sp54.y - current.pos.y) / ((sp54 - current.pos).absXZ() / speedF);
                break;
            }

            case 40:
                f32 fVar3 = 0.5f;
                speedF = daNpc_GWolf_Param_c::m.attack_spd_horizontal * fVar3;
                break;
        }
    }

    switch (prm) {
        case 0: {
            cXyz sp60(0.0f, 300.0f, 400.0f);
            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(mCurAngle.y);
            mDoMtx_stack_c::multVec(&sp60, &sp60);

            if (fopAcM_gc_c::gndCheck(&sp60)) {
                sp60.y = fopAcM_gc_c::getGroundY();
            }

            s16 sVar1 = cLib_targetAngleY(&sp60, &current.pos) - 0x4000;
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp60, sVar1, 0);
            rv = TRUE;
            break;
        }

        case 10:
            cLib_addCalcAngleS2(&mCurAngle.y, fopAcM_searchPlayerAngleY(this), 2, 0x800);
            setAngle(mCurAngle.y);
            rv = TRUE;
            break;


        case 15:
            if (cLib_calcTimer(&mEventTimer) == 0) {
                rv = TRUE;
            }
            break;


        case 20:
            if (mMotion == 2 && mMotionPhase > 0) {
                rv = TRUE;
            }
            break;


        case 30:
            if (mMotion == 2 && mMotionPhase > 0) {
                if (mpMorf->getFrame() >= 3.0f && speed.y > 5.0f) {
                    if (speed.y > 5.0f) {
                        mpMorf->setPlaySpeed(0.0f);
                    } else {
                        mpMorf->setPlaySpeed(1.0f);
                    }
                }

                f32 fVar1 = (daPy_getPlayerActorClass()->current.pos - current.pos).absXZ();
                f32 fVar2 = daNpc_GWolf_Param_c::m.warp_start_dist;
                if (fVar1 < fVar2) {
                    if (l_appearTmpFlag[mParamMode] != -1) {
                        daNpcT_onTmpBit(l_appearTmpFlag[mParamMode]);
                    }

                    dStage_changeScene(field_0xe14, 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
                    mpMorf->setPlaySpeed(1.0f);
                    Z2GetAudioMgr()->seStart(Z2SE_SY_WARP_FADE_GW, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                    rv = TRUE;
                }
            }
            break;

        case 40:
            if (mAcch.ChkGroundHit()) {
                speedF = 0.0f;
                speed.zero();
                setMotion(3, -1.0f, 0);
            }
            break;

        default:
            rv = TRUE;
            break;
    }

    return rv;
}

/* 809F6BFC-809F7084 003C3C 0488+00 1/0 0/0 0/0 .text            ECut_howlingSessionA__13daNpc_GWolf_cFi */
BOOL daNpc_GWolf_c::ECut_howlingSessionA(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    daPy_getPlayerActorClass();
    BOOL rv = FALSE;
    int prm = -1;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_staffId, "prm");
    if (piVar1 != NULL) {
        prm = *piVar1;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        switch (prm) {
            case 0:
                setMotion(5, -1.0f, 0);
                setLookMode(LOOK_NONE);
                break;

            case 10:
                break;

            case 20:
                break;
            
            case 25:
                initTalk(0xBCB, NULL);
                field_0x9eb = true;
                break;

            case 30:
                setMotion(8, 3.0f, 0);
                setLookMode(LOOK_NONE);
                speedF = 12.0f;
                break;
                
            case 40:
                setMotion(6, -1.0f, 0);
                speed.y = 22.0f;
                gravity = -2.0f;
                break;

            case 50:
                setMotion(7, -1.0f, 0);
                mEventTimer = 60;
                speedF = 20.0f;
                cXyz sp38(0.0f, 25.0f, 35.0f);
                mDoMtx_stack_c::transS(current.pos);
                mDoMtx_stack_c::ZXYrotM(mCurAngle);
                mDoMtx_stack_c::scaleM(scale);
                mDoMtx_stack_c::multVec(&sp38, &sp38);
                old.pos = sp38;
                current.pos = old.pos;
                break;
        }
    }

    switch (prm) {
        case 0:
            if (field_0xe18 == 8) {
                if (mpMorf->getFrame() >= 28.0f) {
                    mpMorf->setLoopFrame(28.0f);
                    mBtpAnm.setLoopFrame(28.0f);
                    rv = TRUE;
                }
            }
            break;
        
        case 10:
            rv = TRUE;
            break;

        case 20:
            if (field_0xe1c == 2) {
                setMotion(0, -1.0f, 0);
                setLookMode(LOOK_PLAYER);
                rv = TRUE;
            }
            break;
        
        case 25:
            if (talkProc(NULL, TRUE, NULL)) {
                rv = TRUE;
            }
            break;

        case 30:
            if (field_0xe18 == 0xB) {
                if (!mAcch.ChkGroundHit()) {
                    speedF = 0.0f;
                    rv = TRUE;
                }
            }
            break;

        case 40:
            if (field_0xe18 == 9) {
                if (mpMorf->isStop()) {
                    speedF = 20.0f;

                    if (speed.y <= 4.0f) {
                        rv = TRUE;
                    }
                }
            }
            break;

        case 50:
            if (cLib_calcTimer(&mEventTimer) == 0) {
                if (mParamMode != -1 && mParamMode != 0) {
                    daNpcT_onEvtBit(l_warpAppearFlag[mParamMode]);
                }

                if (swBit != 0xFF && mSaveTable != 0xFF) {
                    dComIfGs_onStageSwitch(mSaveTable, swBit);
                }

                if (mParamMode == -1 || mParamMode == 0) {
                    dStage_changeScene(0, 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
                    break;
                }

                static u32 l_warpIdList[6] = {
                    0, 8,9,
                    0xA, 0xB, 0xC,
                };

                dStage_changeScene(l_warpIdList[mParamMode - 1], 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
            }
            break;

        default:
            rv = TRUE;
            break;
    }

    return rv;
}

/* 809F7084-809F70A8 0040C4 0024+00 1/1 0/0 0/0 .text            callback_proc__FPvi */
static BOOL callback_proc(void* i_actor, int i_data) {
    static_cast<daNpc_GWolf_c*>(i_actor)->meetGWolfSkip();
    return TRUE;
}

/* 809F70A8-809F70EC 0040E8 0044+00 1/1 0/0 0/0 .text            meetGWolfSkip__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::meetGWolfSkip() {
    mOrderEvtNo = 0;
    mEventIdx = -1;
    field_0xe1d = 1;
    dComIfGp_event_reset();
}

/* 809F70EC-809F71E0 00412C 00F4+00 1/0 0/0 0/0 .text            ECut_meetGWolf__13daNpc_GWolf_cFi */
BOOL daNpc_GWolf_c::ECut_meetGWolf(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    daPy_getPlayerActorClass();
    int prm = -1;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_staffId, "prm");
    if (piVar1 != NULL) {
        prm = *piVar1;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        switch (prm) {
            case 0:
                setMotion(0, -1.0f, 0);
                setLookMode(LOOK_PLAYER);
                dComIfGp_getEvent().setSkipProc(this, callback_proc, 0);
                dComIfGp_getEvent().onSkipFade();
                break;
        }
    }

    switch (prm) {
        case 0:
            return TRUE;
    }

    return TRUE;
}

/* 809F71E0-809F75C0 004220 03E0+00 1/0 0/0 0/0 .text            wait__13daNpc_GWolf_cFPv */
BOOL daNpc_GWolf_c::wait(void* param_1) {
    switch (mMode) {
        case 0:
            setMotion(0, -1.0f, 0);
            setLookMode(LOOK_NONE);
            mTurnMode = 0;
            field_0x9ea = true;
            mMode = 2;
            // fallthrough
        case 2: {
            cXyz sp30(daPy_getPlayerActorClass()->current.pos);
            cXyz sp3c(sp30);
            sp3c.y += 100.0f;

            if (fopAcM_gc_c::gndCheck(&sp3c)) {
                sp30.y = fopAcM_gc_c::getGroundY();
            }

            if (!mHide && !daPy_py_c::checkNowWolf() && fabsf(sp30.y - current.pos.y) < 200.0f) {
                f32 fVar1 = (sp30 - current.pos).absXZ();
                f32 fVar2 = daNpc_GWolf_Param_c::m.demo_start_dist;

                if (fVar1 < fVar2) {
                    if (daPy_getPlayerActorClass()->checkHorseRide()) {
                        mOrderEvtNo = 2;
                        break;
                    }

                    mOrderEvtNo = 1;
                    break;
                }
            }

            if (!mIsDamaged) {
                BOOL bVar1 = mActorMngrs[0].getActorP() != NULL;
                if (chkFindPlayer2(bVar1, shape_angle.y)) {
                    if (!bVar1) {
                        mActorMngrs[0].entry(daPy_getPlayerActorClass());
                        mTurnMode = 0;
                    }
                } else if (bVar1) {
                    mActorMngrs[0].remove();
                    mTurnMode = 0;
                }

                if (mActorMngrs[0].getActorP() != NULL) {
                    setLookMode(LOOK_PLAYER);
                } else {
                    setLookMode(LOOK_NONE);
                    
                    if (home.angle.y != mCurAngle.y && step(home.angle.y, -1, -1, 15)) {
                        mMode = 0;
                    }
                }

                if (home.angle.y == mCurAngle.y) {
                    bVar1 = mActorMngrs[0].getActorP() != NULL;
                    fopAc_ac_c* actor_p = getAttnActorP(bVar1, srchAttnActor1, daNpc_GWolf_Param_c::m.common.search_distance,
                                                        daNpc_GWolf_Param_c::m.common.search_height, daNpc_GWolf_Param_c::m.common.search_depth,
                                                        daNpc_GWolf_Param_c::m.common.fov, shape_angle.y, 0x78, TRUE);
                    if (actor_p != NULL) {
                        mActorMngrs[1].entry(actor_p);
                        setLookMode(LOOK_ACTOR);
                    }
                } else {
                    mAttnChangeTimer = 0;
                }
            }
            break;
        }

        case 3:
            break;
    }

    return TRUE;
}

/* 809F75C0-809F775C 004600 019C+00 1/0 0/0 0/0 .text            waitHowling__13daNpc_GWolf_cFPv */
BOOL daNpc_GWolf_c::waitHowling(void* param_1) {
    switch (mMode) {
        case 0:
            setMotion(0, -1.0f, 0);
            setLookMode(LOOK_PLAYER);
            mTurnMode = 0;
            mMode = 2;
            // fallthrough
        case 2:
            if (field_0xe1d == 0) {
                u16 evtNo[6] = {9, 10, 11, 12, 13, 14};

                if (mParamMode == -1 || mParamMode == 0) {
                    mOrderEvtNo = 9;
                } else {
                    mOrderEvtNo = evtNo[mParamMode - 1];
                }

                mOrderNewEvt = true;
            } else if (field_0xe1c == 1) {
                u16 evtNo[6] = {3, 4, 5, 6, 7, 8};

                if (mParamMode == -1 || mParamMode == 0) {
                    mOrderEvtNo = 3;
                } else {
                    mOrderEvtNo = evtNo[mParamMode - 1];
                }

                changeEvent(l_resNames[l_evtGetParamList[mOrderEvtNo].arcIdx], l_evtNames[l_evtGetParamList[mOrderEvtNo].fileIdx], 2, 0xFFFF);
            }
            break;

        case 3:
            break;
    }

    return TRUE;
}

/* 809F775C-809F77E4 00479C 0088+00 1/0 0/0 0/0 .text            waitBrave__13daNpc_GWolf_cFPv */
BOOL daNpc_GWolf_c::waitBrave(void* param_1) {
    switch (mMode) {
        case 0:
            setMotion(0, -1.0f, 0);
            setLookMode(LOOK_PLAYER);
            mTurnMode = 0;
            mMode = 2;
            // fallthrough
        case 2:
            break;
    }

    return TRUE;
}

/* 809F77E4-809F797C 004824 0198+00 2/0 0/0 0/0 .text            talk__13daNpc_GWolf_cFPv */
BOOL daNpc_GWolf_c::talk(void* param_1) {
    BOOL rv = FALSE;
    BOOL bVar1 = FALSE;

    switch (mMode) {
        case 0: {
            if (mIsDamaged) {
                break;
            }

            int msgNo = field_0xe08;
            mOrderSpeakEvt = false;
            initTalk(msgNo, NULL);
            mTurnMode = 0;
            mMode = 2;
            // fallthrough
        }
        case 2:
            if (field_0x9ea) {
                bVar1 = TRUE;
            } else {
                setLookMode(LOOK_PLAYER_TALK);
                mActorMngrs[0].entry(daPy_getPlayerActorClass());

                if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                    bVar1 = TRUE;
                } else if (step(fopAcM_searchPlayerAngleY(this), -1, -1, 15)) {
                    setMotion(0, -1.0f, 0);
                    mTurnMode = 0;
                }
            }

            if (bVar1 && talkProc(NULL, TRUE, NULL)) {
                rv = TRUE;
            }

            if (rv) {
                mMode = 3;

                if (!field_0x9ec) {
                    dComIfGp_event_reset();
                }

                field_0x9ec = false;
            }
            break;

        case 3:
            break;
    }

    return rv;
}

/* 809F797C-809F7A30 0049BC 00B4+00 2/0 0/0 0/0 .text            test__13daNpc_GWolf_cFPv */
BOOL daNpc_GWolf_c::test(void* param_0) {
    // NONMATCHING
}

/* 809F7A30-809F7AB0 004A70 0080+00 1/1 0/0 0/0 .text            getGroundSlope__13daNpc_GWolf_cFR12dBgS_ObjAcchs */
s16 daNpc_GWolf_c::getGroundSlope(dBgS_ObjAcch& param_0, s16 param_1) {
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

// /* 809F8488-809F84D0 0054C8 0048+00 2/1 0/0 0/0 .text            __dt__19daNpc_GWolf_Param_cFv */
// daNpc_GWolf_Param_c::~daNpc_GWolf_Param_c() {
//     // NONMATCHING
// }

/* 809F84D0-809F84D8 005510 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809F84D0() {
    // NONMATCHING
}

/* 809F84D8-809F84E0 005518 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809F84D8() {
    // NONMATCHING
}

AUDIO_INSTANCES;

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
