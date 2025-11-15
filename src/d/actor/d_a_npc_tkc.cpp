/**
 * @file d_a_npc_tkc.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_npc_tkc.h"
#include "dol2asm.h"
#include "d/d_camera.h"

//
// Forward References:
//

extern "C" void __ct__10daNpcTkc_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__10daNpcTkc_cFv();
extern "C" void Create__10daNpcTkc_cFv();
extern "C" void CreateHeap__10daNpcTkc_cFv();
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
extern "C" void Delete__10daNpcTkc_cFv();
extern "C" void Execute__10daNpcTkc_cFv();
extern "C" void Draw__10daNpcTkc_cFv();
extern "C" void ctrlJoint__10daNpcTkc_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__10daNpcTkc_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__10daNpcTkc_cFP8J3DJointi();
extern "C" void setActionWait__10daNpcTkc_cFv();
extern "C" void setActionFollow__10daNpcTkc_cFv();
extern "C" void setMtx__10daNpcTkc_cFv();
extern "C" void setExpressionAnm__10daNpcTkc_cFib();
extern "C" void setExpressionBtp__10daNpcTkc_cFi();
extern "C" void reset__10daNpcTkc_cFv();
extern "C" void setMotionAnm__10daNpcTkc_cFif();
extern "C" void setAction__10daNpcTkc_cFM10daNpcTkc_cFPCvPv_v();
extern "C" void wait__10daNpcTkc_cFv();
extern "C" void calcFly__10daNpcTkc_cFv();
extern "C" void searchPlayer__10daNpcTkc_cFv();
extern "C" void follow__10daNpcTkc_cFv();
extern "C" void appear__10daNpcTkc_cFv();
extern "C" void normalTalk__10daNpcTkc_cFv();
extern "C" void setMotion__10daNpcTkc_cFifi();
extern "C" void setExpression__10daNpcTkc_cFif();
extern "C" void warpTalk__10daNpcTkc_cFv();
extern "C" void demo__10daNpcTkc_cFv();
extern "C" void EvCut_TksSecretChild__10daNpcTkc_cFi();
extern "C" void EvCut_TksWarpExit__10daNpcTkc_cFi();
extern "C" void EvCut_TksWarpBack__10daNpcTkc_cFi();
extern "C" static void daNpcTkc_Create__FPv();
extern "C" static void daNpcTkc_Delete__FPv();
extern "C" static void daNpcTkc_Execute__FPv();
extern "C" static void daNpcTkc_Draw__FPv();
extern "C" static bool daNpcTkc_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void setParam__10daNpcTkc_cFv();
extern "C" void main__10daNpcTkc_cFv();
extern "C" void ctrlBtk__10daNpcTkc_cFv();
extern "C" void setAttnPos__10daNpcTkc_cFv();
extern "C" bool drawDbgInfo__10daNpcTkc_cFv();
extern "C" void __dt__18daNpcF_ActorMngr_cFv();
extern "C" void __ct__18daNpcF_ActorMngr_cFv();
extern "C" void __dt__8daNpcF_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __ct__8daNpcF_cFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void adjustShapeAngle__8daNpcF_cFv();
extern "C" void setCollisions__8daNpcF_cFv();
extern "C" void drawOtherMdls__8daNpcF_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80B106B8(void* _this, int*);
extern "C" void func_80B106D4(void* _this, f32, f32);
extern "C" void func_80B10710(void* _this, int, int);
extern "C" void __sinit_d_a_npc_tkc_cpp();
extern "C" void __dt__16daNpcTkc_Param_cFv();
extern "C" static void func_80B10890();
extern "C" static void func_80B10898();
extern "C" u8 const m__16daNpcTkc_Param_c[164];
extern "C" extern char const* const d_a_npc_tkc__stringBase0;
extern "C" u8 mEvtSeqList__10daNpcTkc_c[48];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMove__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void setObjectArchive__16dEvent_manager_cFPc();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetGroundUpY__9dBgS_AcchFf();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void StartEventCamera__9dCamera_cFiie();
extern "C" void EndEventCamera__9dCamera_cFi();
extern "C" void initialize__18daNpcF_ActorMngr_cFv();
extern "C" void entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcF_ActorMngr_cFv();
extern "C" void getActorP__18daNpcF_ActorMngr_cFv();
extern "C" void initialize__15daNpcF_MatAnm_cFv();
extern "C" void execute__8daNpcF_cFv();
extern "C" void draw__8daNpcF_cFiifP11_GXColorS10i();
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
extern "C" void ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci();
extern "C" void chkActorInSight__8daNpcF_cFP10fopAc_ac_cf();
extern "C" void chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void setAngle__8daNpcF_cFs();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void dCam_getBody__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalcPos__FP4cXyzRC4cXyzfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseUC__FPUcUcUc();
extern "C" void cLib_chaseS__FPsss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
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
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDSph__8daNpcF_c[64];
extern "C" extern void* __vt__8daNpcF_c[18];
extern "C" extern void* __vt__15daNpcF_MatAnm_c[4 + 6 /* padding */];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

//
// Declarations:
//

#if DEBUG
daNpcTkc_HIO_c::daNpcTkc_HIO_c() {
    m = daNpcTkc_Param_c::m;
}

void daNpcTkc_HIO_c::genMessage(JORMContext* ctx) {
    ctx->genSlider("ワープ初期位置", &m.warp_initial_pos, 0.0f, 500.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("下移動速度", &m.down_move_spd, 0.0f, 30.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("上移動速度", &m.up_move_spd, 0.0f, 30.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("回転周期", &m.rotation_interval, 0, 0x7FFF, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("楕円幅", &m.ellipse_width, 0.0f, 200.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("Step", &m.step, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("飛行範囲", &m.flight_range, 0.0f, 200.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("目標高さ", &m.target_height, 0.0f, 2000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("振幅", &m.amplitude, -100.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("周期", &m.interval, 0, 0x7FFF, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("Div", &m.div, 0.0f, 1.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("Max", &m.max, 0.0f, 500.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("Min", &m.min, 0.0f, 300.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("会話距離", &m.conversation_dist, 0.0f, 300.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("X 角度", &m.x_angle, -0x8000, 0x7FFF, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("Z 角度", &m.z_angle, -0x8000, 0x7FFF, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    daNpcF_commonGenMessage(ctx, &m.common);
}
#endif

/* ############################################################################################## */
/* 80B10A2C-80B10A2C 000178 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B10A2C = "";
SECTION_DEAD static char const* const stringBase_80B10A2D = "TKS_SECRET";
SECTION_DEAD static char const* const stringBase_80B10A38 = "TKS_WARP";
SECTION_DEAD static char const* const stringBase_80B10A41 = "TKC_WARP";
SECTION_DEAD static char const* const stringBase_80B10A4A = "Tkc";
#pragma pop

/* 80B10A80-80B10A98 000020 0018+00 1/2 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam1 l_bckGetParamList[3] = {
    {-1, 2},
    {6, 0},
    {7, 2},
};

/* 80B10A98-80B10AA0 000038 0008+00 1/1 0/0 0/0 .data            l_btpGetParamList */
static daNpc_GetParam1 l_btpGetParamList[1] = {
    {0x10, 2},
};

/* 80B10AA0-80B10AA8 000040 0008+00 1/2 0/0 0/0 .data            l_btkGetParamList */
static daNpc_GetParam1 l_btkGetParamList[1] = {
    {0xD, 2},
};

/* 80B10AA8-80B10AB8 -00001 0010+00 0/1 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[4] = {
    "",
    "TKS_SECRET",
    "TKS_WARP",
    "TKC_WARP",
};

/* 80B10AB8-80B10ABC -00001 0004+00 8/9 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Tkc";

/* 80B10ABC-80B10AC0 -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
static char* l_myName = "Tkc";

/* 80B10CFC-80B10D00 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static NPC_TKC_HIO_CLASS l_HIO;

/* 80B10AE4-80B10B14 000084 0030+00 0/2 0/0 0/0 .data            mEvtSeqList__10daNpcTkc_c */
daNpcTkc_c::evtFunc daNpcTkc_c::mEvtSeqList[4] = {
    NULL,
    &daNpcTkc_c::EvCut_TksSecretChild,
    &daNpcTkc_c::EvCut_TksWarpExit,
    &daNpcTkc_c::EvCut_TksWarpBack,
};

/* 80B10B14-80B10B20 -00001 000C+00 1/1 0/0 0/0 .data            @4439 */
SECTION_DATA static void* lit_4439[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__10daNpcTkc_cFv,
};

/* 80B10B20-80B10B2C -00001 000C+00 1/1 0/0 0/0 .data            @4447 */
SECTION_DATA static void* lit_4447[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)follow__10daNpcTkc_cFv,
};

/* 80B10B2C-80B10B38 -00001 000C+00 1/1 0/0 0/0 .data            @4458 */
SECTION_DATA static void* lit_4458[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__10daNpcTkc_cFv,
};

/* 80B10B38-80B10B44 -00001 000C+00 1/1 0/0 0/0 .data            @4487 */
SECTION_DATA static void* lit_4487[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)appear__10daNpcTkc_cFv,
};

/* 80B10B44-80B10B50 -00001 000C+00 0/1 0/0 0/0 .data            @4563 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4563[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)appear__10daNpcTkc_cFv,
};
#pragma pop

/* 80B10B50-80B10B5C -00001 000C+00 0/1 0/0 0/0 .data            @4566 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4566[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__10daNpcTkc_cFv,
};
#pragma pop

/* 80B10B5C-80B10B68 -00001 000C+00 0/1 0/0 0/0 .data            @4569 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4569[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)warpTalk__10daNpcTkc_cFv,
};
#pragma pop

/* 80B10B68-80B10B74 -00001 000C+00 0/1 0/0 0/0 .data            @4572 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4572[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)follow__10daNpcTkc_cFv,
};
#pragma pop

/* 80B10B74-80B10B80 -00001 000C+00 0/1 0/0 0/0 .data            @4575 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4575[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__10daNpcTkc_cFv,
};
#pragma pop

/* 80B10B80-80B10B8C -00001 000C+00 0/1 0/0 0/0 .data            @4776 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4776[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)normalTalk__10daNpcTkc_cFv,
};
#pragma pop

/* 80B10B8C-80B10B98 -00001 000C+00 0/1 0/0 0/0 .data            @4781 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4781[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__10daNpcTkc_cFv,
};
#pragma pop

/* 80B10B98-80B10BA4 -00001 000C+00 1/1 0/0 0/0 .data            @5086 */
SECTION_DATA static void* lit_5086[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__10daNpcTkc_cFv,
};

/* 80B10BA4-80B10BB0 -00001 000C+00 1/1 0/0 0/0 .data            @5113 */
SECTION_DATA static void* lit_5113[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__10daNpcTkc_cFv,
};

/* 80B10BB0-80B10BBC -00001 000C+00 1/1 0/0 0/0 .data            @5152 */
SECTION_DATA static void* lit_5152[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__10daNpcTkc_cFv,
};

/* 80B10C0C-80B10C18 0001AC 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80B10C18-80B10C60 0001B8 0048+00 2/2 0/0 0/0 .data            __vt__10daNpcTkc_c */
SECTION_DATA extern void* __vt__10daNpcTkc_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10daNpcTkc_cFv,
    (void*)setParam__10daNpcTkc_cFv,
    (void*)main__10daNpcTkc_cFv,
    (void*)ctrlBtk__10daNpcTkc_cFv,
    (void*)adjustShapeAngle__8daNpcF_cFv,
    (void*)setMtx__10daNpcTkc_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__10daNpcTkc_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__10daNpcTkc_cFib,
    (void*)setExpressionBtp__10daNpcTkc_cFi,
    (void*)setExpression__10daNpcTkc_cFif,
    (void*)setMotionAnm__10daNpcTkc_cFif,
    (void*)setMotion__10daNpcTkc_cFifi,
    (void*)drawDbgInfo__10daNpcTkc_cFv,
    (void*)drawOtherMdls__8daNpcF_cFv,
};

/* 80B10C60-80B10C6C 000200 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B10C6C-80B10C90 00020C 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B10898,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B10890,
};

/* 80B10C90-80B10C9C 000230 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B10C9C-80B10CA8 00023C 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B10CA8-80B10CB4 000248 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B10CB4-80B10CC0 000254 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80B10CC0-80B10CCC 000260 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80B10CCC-80B10CD8 00026C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B0C7CC-80B0C898 0000EC 00CC+00 1/1 0/0 0/0 .text            __ct__10daNpcTkc_cFv */
daNpcTkc_c::daNpcTkc_c() {}

/* 80B0C964-80B0CA9C 000284 0138+00 1/0 0/0 0/0 .text            __dt__10daNpcTkc_cFv */
daNpcTkc_c::~daNpcTkc_c() {
    dComIfG_resDelete(&mPhase, l_arcName);

    if (heap != NULL) {
        mAnm_p->stopZelAnime();
    }

    #if DEBUG
    if (mpHIO != NULL) {
        mpHIO->removeHIO();
    }
    #endif
}

/* 80B108B4-80B10958 000000 00A4+00 13/13 0/0 0/0 .rodata          m__16daNpcTkc_Param_c */
daNpcTkc_HIOParam const daNpcTkc_Param_c::m = {
    10.0f,
    0.0f,
    1.0f,
    40.0f,
    30.0f,
    20.0f,
    0.0f,
    8.5f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.8f,
    12.0f,
    5,
    6,
    7,
    6,
    80.0f,
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
    200.0f,
    8.0f,
    8.0f,
    30.0f,
    0.2f,
    10.0f,
    2.0f,
    100.0f,
    60.0f,
    60.0f,
    0.2f,
    5.0f,
    0x400,
    0x3E80,
    0,
    0,
};

/* 80B0CA9C-80B0CD7C 0003BC 02E0+00 1/1 0/0 0/0 .text            Create__10daNpcTkc_cFv */
cPhs__Step daNpcTkc_c::Create() {
    // NONMATCHING
    fopAcM_ct(this, daNpcTkc_c);

    if (getType() != 2) {
        if (
            // D_MN07 - City in the Sky - Entrance
            strcmp(dComIfGp_getStartStageName(), "D_MN07") == 0 &&
            dComIfGp_getStartStageRoomNo() == 16 &&
            // dSv_event_flag_c::F_0268 - City in the Sky - City in the Sky clear
            !daNpcF_chkEvtBit(268) &&
            dComIfGs_isDungeonItemWarp()
        ) {
            return cPhs_ERROR_e;
        }
    }

    cPhs__Step phase = cPhs_ERROR_e;
    phase = (cPhs__Step)dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x2030)) {
            return cPhs_ERROR_e;
        }

        J3DModelData* mdlData_p = mAnm_p->getModel()->getModelData();
        fopAcM_SetMtx(this, mAnm_p->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -15.0f, -15.0f, -15.0f, 15.0f, 15.0f, 15.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);

        #if DEBUG
        mpHIO = &l_HIO;
        // The Stray Child of the Sky
        mpHIO->entryHIO("はぐれ天空人の子供");
        #endif

        mCcStts.Init(mpHIO->m.common.weight, 0, this);
        mSph.Set(mCcDSph);
        mSph.SetStts(&mCcStts);
        mSph.SetTgType(0);
        mSph.SetTgSPrm(0);
        mSph.SetR(mpHIO->m.common.width);
        mAcchCir.SetWall(mpHIO->m.common.width, mpHIO->m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mAcch.OffClrSpeedY();
        mAcch.SetGroundUpY(-7.0f);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        setEnvTevColor();
        setRoomNo();
        reset();
        mStatus = 1;
        Execute();

        if (getType() == 2) {
            mStatus = 0;
        }
    }

    return phase;
}

/* 80B0CD7C-80B0CFC4 00069C 0248+00 1/1 0/0 0/0 .text            CreateHeap__10daNpcTkc_cFv */
int daNpcTkc_c::CreateHeap() {
    J3DModelData* mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 0xA);
    JUT_ASSERT(330, NULL != mdlData_p);

    u32 uVar1 = 0x11020284;
    mAnm_p = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, J3DMdlFlag_DifferedDLBuffer, uVar1);
    if (mAnm_p != NULL && mAnm_p->getModel() == NULL) {
        mAnm_p->stopZelAnime();
        mAnm_p = NULL;
    }

    if (mAnm_p == NULL) {
        return 0;
    }

    J3DModel* mdl_p = mAnm_p->getModel();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    mdl_p->setUserArea((uintptr_t)this);

    mpMatAnm = new daNpcF_MatAnm_c();
    if (mpMatAnm == NULL) {
        return 0;
    }

    if (!setExpressionAnm(1, false)) {
        return 0;
    }

    return 1;
}

/* 80B0D180-80B0D1B4 000AA0 0034+00 1/1 0/0 0/0 .text            Delete__10daNpcTkc_cFv */
int daNpcTkc_c::Delete() {
    fpc_ProcID id = fopAcM_GetID(this);
    this->~daNpcTkc_c();
    return 1;
}

/* 80B0D1B4-80B0D1EC 000AD4 0038+00 2/2 0/0 0/0 .text            Execute__10daNpcTkc_cFv */
int daNpcTkc_c::Execute() {
    if (mStatus == 0) {
        return 1;
    }

    execute();
    return 1;
}

/* 80B0D1EC-80B0D25C 000B0C 0070+00 1/1 0/0 0/0 .text            Draw__10daNpcTkc_cFv */
int daNpcTkc_c::Draw() {
    if (mStatus == 0) {
        return 1;
    }

    J3DModelData* mdlData_p = mAnm_p->getModel()->getModelData();
    mdlData_p->getMaterialNodePointer(2)->setMaterialAnm(mpMatAnm);
    draw(FALSE, FALSE, mpHIO->m.common.real_shadow_size, NULL, FALSE);
    return 1;
}

/* 80B0D25C-80B0D2CC 000B7C 0070+00 1/1 0/0 0/0 .text            ctrlJoint__10daNpcTkc_cFP8J3DJointP8J3DModel */
int daNpcTkc_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    // NONMATCHING
    int jntNo = i_joint->getJntNo();
    u16 jointNo = jointNo;
    if ((jntNo == 3 || jntNo == 5) && (mAnmFlags & ANM_PLAY_BCK)) {
        J3DAnmTransform* anm = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mAnm_p->getAnm());
        mAnm_p->changeAnm(anm);
    }

    return 1;
}

/* 80B0D2CC-80B0D2EC 000BEC 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__10daNpcTkc_cFP10fopAc_ac_c */
int daNpcTkc_c::createHeapCallBack(fopAc_ac_c* i_this) {
    daNpcTkc_c* actor = (daNpcTkc_c*)i_this;
    return actor->CreateHeap();
}

/* 80B0D2EC-80B0D338 000C0C 004C+00 1/1 0/0 0/0 .text            ctrlJointCallBack__10daNpcTkc_cFP8J3DJointi */
int daNpcTkc_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* mdl_p = j3dSys.getModel();
        daNpcTkc_c* actor = (daNpcTkc_c*)mdl_p->getUserArea();
        if (actor != NULL) {
            actor->ctrlJoint(i_joint, mdl_p);
        }
    }

    return 1;
}

/* 80B0D338-80B0D37C 000C58 0044+00 0/0 0/0 1/1 .text            setActionWait__10daNpcTkc_cFv */
void daNpcTkc_c::setActionWait() {
    setAction(&daNpcTkc_c::wait);
}

/* 80B0D37C-80B0D3C0 000C9C 0044+00 0/0 0/0 2/2 .text            setActionFollow__10daNpcTkc_cFv */
void daNpcTkc_c::setActionFollow() {
    setAction(&daNpcTkc_c::follow);
}

/* 80B0D3C0-80B0D458 000CE0 0098+00 1/0 0/0 0/0 .text            setMtx__10daNpcTkc_cFv */
void daNpcTkc_c::setMtx() {
    J3DModel* mdl_p = mAnm_p->getModel();
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + field_0xd64, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(mCurAngle);
    mDoMtx_stack_c::scaleM(scale);
    mdl_p->setBaseTRMtx(mDoMtx_stack_c::get());

    if (mAnmFlags & ANM_PLAY_BCK) {
        mBckAnm.getBckAnm()->setFrame(mBckAnm.getFrame());
    }

    mAnm_p->modelCalc();
}

/* 80B0D458-80B0D5A4 000D78 014C+00 1/0 0/0 0/0 .text            setExpressionAnm__10daNpcTkc_cFib */
bool daNpcTkc_c::setExpressionAnm(int i_idx, bool i_modify) {
    // NONMATCHING
    mAnmFlags &= ~ANM_EXPRESSION_FLAGS;

    J3DAnmTransform* bckAnm;
    
    bckAnm = l_bckGetParamList[i_idx].fileIdx >= 0 ? getTrnsfrmKeyAnmP(l_arcName, l_bckGetParamList[i_idx].fileIdx) : NULL;

    s32 i_attr = l_bckGetParamList[i_idx].arcIdx;
    bool res = false;

    switch (i_idx) {
        case 0:
            res = setExpressionBtp(0);
            break;

        case 1:
            res = setExpressionBtp(0);
            break;

        default:
            bckAnm = NULL;
            break;
    }

    if (!res) {
        return false;
    }

    if (bckAnm == NULL) {
        return true;
    }

    if (setBckAnm(bckAnm, 1.0f, i_attr, 0, -1, i_modify)) {
        mAnmFlags |= (ANM_PAUSE_BCK | ANM_PLAY_BCK);
        mExpressionLoops = 0;
        return true;
    }

    OS_REPORT("%s: 表情Bckアニメーションの登録に失敗しました！\n", __FILE__);
    return false;

}

/* 80B0D5A4-80B0D678 000EC4 00D4+00 1/0 0/0 0/0 .text            setExpressionBtp__10daNpcTkc_cFi */
bool daNpcTkc_c::setExpressionBtp(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B10968-80B1096C 0000B4 0004+00 0/1 0/0 0/0 .rodata          m_cameraItemNum$4552 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const m_cameraItemNum[4] = {
    0x00,
    0x00,
    0x00,
    0x01,
};
COMPILER_STRIP_GATE(0x80B10968, &m_cameraItemNum);
#pragma pop

/* 80B1096C-80B10970 0000B8 0004+00 1/9 0/0 0/0 .rodata          @4652 */
SECTION_RODATA static u8 const lit_4652[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B1096C, &lit_4652);

/* 80B10970-80B10974 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4653 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4653 = 112.0f;
COMPILER_STRIP_GATE(0x80B10970, &lit_4653);
#pragma pop

/* 80B10974-80B10978 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4654 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B10974, &lit_4654);
#pragma pop

/* 80B10978-80B1097C 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4655 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4655 = 50.0f;
COMPILER_STRIP_GATE(0x80B10978, &lit_4655);
#pragma pop

/* 80B1097C-80B10980 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4656 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4656 = 0.75f;
COMPILER_STRIP_GATE(0x80B1097C, &lit_4656);
#pragma pop

/* 80B10A2C-80B10A2C 000178 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B10A55 = "Type";
#pragma pop

/* 80B0D678-80B0DA94 000F98 041C+00 1/1 0/0 0/0 .text            reset__10daNpcTkc_cFv */
void daNpcTkc_c::reset() {
    // NONMATCHING
}

/* 80B0DA94-80B0DBC8 0013B4 0134+00 1/0 0/0 0/0 .text            setMotionAnm__10daNpcTkc_cFif */
void daNpcTkc_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80B0DBC8-80B0DC68 0014E8 00A0+00 3/3 0/0 0/0 .text
 * setAction__10daNpcTkc_cFM10daNpcTkc_cFPCvPv_v                */
void daNpcTkc_c::setAction(void (daNpcTkc_c::*param_0)()) {
    // NONMATCHING
}

/* 80B0DC68-80B0DEF8 001588 0290+00 4/0 0/0 0/0 .text            wait__10daNpcTkc_cFv */
void daNpcTkc_c::wait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B10980-80B1098C 0000CC 000C+00 0/1 0/0 0/0 .rodata          @4674 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4674[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B10980, &lit_4674);
#pragma pop

/* 80B1098C-80B10990 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4675 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4675[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B1098C, &lit_4675);
#pragma pop

/* 80B10990-80B1099C 0000DC 000C+00 0/1 0/0 0/0 .rodata          @4676 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4676[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B10990, &lit_4676);
#pragma pop

/* 80B1099C-80B109A0 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4677 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4677[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B1099C, &lit_4677);
#pragma pop

/* 80B109A0-80B109A8 0000EC 0008+00 0/1 0/0 0/0 .rodata          @4678 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4678[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B109A0, &lit_4678);
#pragma pop

/* 80B109A8-80B109B4 0000F4 000C+00 0/1 0/0 0/0 .rodata          @4682 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4682[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B109A8, &lit_4682);
#pragma pop

/* 80B109B4-80B109B8 000100 0004+00 0/1 0/0 0/0 .rodata          @4683 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4683[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B109B4, &lit_4683);
#pragma pop

/* 80B109B8-80B109C4 000104 0008+04 0/1 0/0 0/0 .rodata          @4684 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4684[8 + 4 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B109B8, &lit_4684);
#pragma pop

/* 80B109C4-80B109CC 000110 0008+00 0/1 0/0 0/0 .rodata          @4887 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4887[8] = {
    0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B109C4, &lit_4887);
#pragma pop

/* 80B109CC-80B109D0 000118 0004+00 0/2 0/0 0/0 .rodata          @4888 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4888 = 2.0f;
COMPILER_STRIP_GATE(0x80B109CC, &lit_4888);
#pragma pop

/* 80B109D0-80B109D4 00011C 0004+00 0/2 0/0 0/0 .rodata          @4889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4889 = -7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B109D0, &lit_4889);
#pragma pop

/* 80B109D4-80B109D8 000120 0004+00 0/2 0/0 0/0 .rodata          @4890 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4890 = 7.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B109D4, &lit_4890);
#pragma pop

/* 80B109D8-80B109DC 000124 0004+00 4/7 0/0 0/0 .rodata          @4891 */
SECTION_RODATA static f32 const lit_4891 = -1.0f;
COMPILER_STRIP_GATE(0x80B109D8, &lit_4891);

/* 80B109DC-80B109E0 000128 0004+00 1/4 0/0 0/0 .rodata          @4892 */
SECTION_RODATA static f32 const lit_4892 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B109DC, &lit_4892);

/* 80B109E0-80B109E4 00012C 0004+00 0/2 0/0 0/0 .rodata          @4893 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4893 = 8.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B109E0, &lit_4893);
#pragma pop

/* 80B109E4-80B109E8 000130 0004+00 0/2 0/0 0/0 .rodata          @4894 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4894 = -1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B109E4, &lit_4894);
#pragma pop

/* 80B109E8-80B109EC 000134 0004+00 0/2 0/0 0/0 .rodata          @4895 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4895 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B109E8, &lit_4895);
#pragma pop

/* 80B0DEF8-80B0E124 001818 022C+00 4/4 0/0 0/0 .text            calcFly__10daNpcTkc_cFv */
void daNpcTkc_c::calcFly() {
    // NONMATCHING
}

/* 80B0E124-80B0E304 001A44 01E0+00 2/2 0/0 0/0 .text            searchPlayer__10daNpcTkc_cFv */
void daNpcTkc_c::searchPlayer() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B109EC-80B109F4 000138 0008+00 0/1 0/0 0/0 .rodata          @5074 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5074[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B109EC, &lit_5074);
#pragma pop

/* 80B109F4-80B109FC 000140 0008+00 0/1 0/0 0/0 .rodata          @5075 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5075[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B109F4, &lit_5075);
#pragma pop

/* 80B109FC-80B10A04 000148 0008+00 0/1 0/0 0/0 .rodata          @5076 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5076[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B109FC, &lit_5076);
#pragma pop

/* 80B10A04-80B10A08 000150 0004+00 0/2 0/0 0/0 .rodata          @5077 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5077 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B10A04, &lit_5077);
#pragma pop

/* 80B0E304-80B0E784 001C24 0480+00 2/0 0/0 0/0 .text            follow__10daNpcTkc_cFv */
void daNpcTkc_c::follow() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B10A08-80B10A0C 000154 0004+00 0/1 0/0 0/0 .rodata          @5102 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5102 = 5.5f;
COMPILER_STRIP_GATE(0x80B10A08, &lit_5102);
#pragma pop

/* 80B10A0C-80B10A10 000158 0004+00 0/1 0/0 0/0 .rodata          @5103 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5103 = -37.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B10A0C, &lit_5103);
#pragma pop

/* 80B10A10-80B10A14 00015C 0004+00 0/1 0/0 0/0 .rodata          @5104 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5104 = 0.5f;
COMPILER_STRIP_GATE(0x80B10A10, &lit_5104);
#pragma pop

/* 80B0E784-80B0E8EC 0020A4 0168+00 2/0 0/0 0/0 .text            appear__10daNpcTkc_cFv */
void daNpcTkc_c::appear() {
    // NONMATCHING
}

/* 80B0E8EC-80B0EB10 00220C 0224+00 1/0 0/0 0/0 .text            normalTalk__10daNpcTkc_cFv */
void daNpcTkc_c::normalTalk() {
    // NONMATCHING
}

/* 80B0EB10-80B0EB54 002430 0044+00 1/0 0/0 0/0 .text            setMotion__10daNpcTkc_cFifi */
void daNpcTkc_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 80B0EB54-80B0EB80 002474 002C+00 1/0 0/0 0/0 .text            setExpression__10daNpcTkc_cFif */
void daNpcTkc_c::setExpression(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80B0EB80-80B0EEE8 0024A0 0368+00 1/0 0/0 0/0 .text            warpTalk__10daNpcTkc_cFv */
void daNpcTkc_c::warpTalk() {
    // NONMATCHING
}

/* 80B0EEE8-80B0F00C 002808 0124+00 4/0 0/0 0/0 .text            demo__10daNpcTkc_cFv */
void daNpcTkc_c::demo() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B10A2C-80B10A2C 000178 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B10A5A = "prm";
#pragma pop

/* 80B0F00C-80B0F1F8 00292C 01EC+00 1/0 0/0 0/0 .text EvCut_TksSecretChild__10daNpcTkc_cFi */
int daNpcTkc_c::EvCut_TksSecretChild(int param_0) {
    // NONMATCHING
}

/* 80B0F1F8-80B0F5D4 002B18 03DC+00 1/0 0/0 0/0 .text            EvCut_TksWarpExit__10daNpcTkc_cFi
 */
int daNpcTkc_c::EvCut_TksWarpExit(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B10A14-80B10A18 000160 0004+00 0/2 0/0 0/0 .rodata          @5348 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5348 = 40.0f;
COMPILER_STRIP_GATE(0x80B10A14, &lit_5348);
#pragma pop

/* 80B10A18-80B10A1C 000164 0004+00 0/1 0/0 0/0 .rodata          @5349 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5349 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B10A18, &lit_5349);
#pragma pop

/* 80B0F5D4-80B0F9A4 002EF4 03D0+00 1/0 0/0 0/0 .text            EvCut_TksWarpBack__10daNpcTkc_cFi
 */
int daNpcTkc_c::EvCut_TksWarpBack(int param_0) {
    // NONMATCHING
}

/* 80B0F9A4-80B0F9C4 0032C4 0020+00 1/0 0/0 0/0 .text            daNpcTkc_Create__FPv */
static int daNpcTkc_Create(void* i_this) {
    return static_cast<daNpcTkc_c*>(i_this)->Create();
}

/* 80B0F9C4-80B0F9E4 0032E4 0020+00 1/0 0/0 0/0 .text            daNpcTkc_Delete__FPv */
static int daNpcTkc_Delete(void* i_this) {
    return static_cast<daNpcTkc_c*>(i_this)->Delete();
}

/* 80B0F9E4-80B0FA04 003304 0020+00 1/0 0/0 0/0 .text            daNpcTkc_Execute__FPv */
static int daNpcTkc_Execute(void* i_this) {
    return static_cast<daNpcTkc_c*>(i_this)->Execute();
}

/* 80B0FA04-80B0FA24 003324 0020+00 1/0 0/0 0/0 .text            daNpcTkc_Draw__FPv */
static int daNpcTkc_Draw(void* i_this) {
    return static_cast<daNpcTkc_c*>(i_this)->Draw();
}

/* 80B0FA24-80B0FA2C 003344 0008+00 1/0 0/0 0/0 .text            daNpcTkc_IsDelete__FPv */
static int daNpcTkc_IsDelete(void* i_this) {
    return 1;
}

/* 80B0FA5C-80B0FAD0 00337C 0074+00 1/0 0/0 0/0 .text            setParam__10daNpcTkc_cFv */
void daNpcTkc_c::setParam() {
    // NONMATCHING
}

/* 80B0FAD0-80B0FD18 0033F0 0248+00 1/0 0/0 0/0 .text            main__10daNpcTkc_cFv */
BOOL daNpcTkc_c::main() {
    // NONMATCHING
}

/* 80B0FD18-80B0FDE4 003638 00CC+00 1/0 0/0 0/0 .text            ctrlBtk__10daNpcTkc_cFv */
BOOL daNpcTkc_c::ctrlBtk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B10A1C-80B10A24 000168 0004+04 0/1 0/0 0/0 .rodata          @5559 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5559[1 + 1 /* padding */] = {
    10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80B10A1C, &lit_5559);
#pragma pop

/* 80B0FDE4-80B0FFD4 003704 01F0+00 1/0 0/0 0/0 .text            setAttnPos__10daNpcTkc_cFv */
void daNpcTkc_c::setAttnPos() {
    // NONMATCHING
}

/* 80B0FFD4-80B0FFDC 0038F4 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__10daNpcTkc_cFv */
int daNpcTkc_c::drawDbgInfo() {
    return 0;
}

/* 80B10BBC-80B10BDC -00001 0020+00 1/0 0/0 0/0 .data            daNpcTkc_MethodTable */
static actor_method_class daNpcTkc_MethodTable = {
    (process_method_func)daNpcTkc_Create,
    (process_method_func)daNpcTkc_Delete,
    (process_method_func)daNpcTkc_Execute,
    (process_method_func)daNpcTkc_IsDelete,
    (process_method_func)daNpcTkc_Draw,
};

/* 80B10BDC-80B10C0C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_TKC */
extern actor_process_profile_definition g_profile_NPC_TKC = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_TKC,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcTkc_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  375,                    // mPriority
  &daNpcTkc_MethodTable,  // sub_method
  0x08044107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
