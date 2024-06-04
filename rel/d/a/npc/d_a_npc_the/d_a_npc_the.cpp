/**
 * d_a_npc_the.cpp
 * NPC - Telma
 */

#include "rel/d/a/npc/d_a_npc_the/d_a_npc_the.h"
#include "SSystem/SComponent/c_math.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "rel/d/a/tag/d_a_tag_evtarea/d_a_tag_evtarea.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__10daNpcThe_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10daNpcThe_cFv();
extern "C" void ctrlJoint__10daNpcThe_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__10daNpcThe_cFP10fopAc_ac_c();
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
extern "C" void ctrlJointCallBack__10daNpcThe_cFP8J3DJointi();
extern "C" void setExpressionAnm__10daNpcThe_cFib();
extern "C" void setExpressionBtp__10daNpcThe_cFi();
extern "C" void setMotionAnm__10daNpcThe_cFif();
extern "C" void wait__10daNpcThe_cFPv();
extern "C" void setMotion__10daNpcThe_cFifi();
extern "C" void setExpression__10daNpcThe_cFif();
extern "C" void waitTW__10daNpcThe_cFPv();
extern "C" void talk__10daNpcThe_cFPv();
extern "C" void test__10daNpcThe_cFPv();
extern "C" bool EvCut_TwResistance__10daNpcThe_cFi();
extern "C" void EvCut_Introduction__10daNpcThe_cFi();
extern "C" static void daNpcThe_Create__FPv();
extern "C" void create__10daNpcThe_cFv();
extern "C" void reset__10daNpcThe_cFv();
extern "C" static void daNpcThe_Delete__FPv();
extern "C" static void daNpcThe_Execute__FPv();
extern "C" static void daNpcThe_Draw__FPv();
extern "C" static bool daNpcThe_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void setParam__10daNpcThe_cFv();
extern "C" void main__10daNpcThe_cFv();
extern "C" void playMotion__10daNpcThe_cFv();
extern "C" void playExpression__10daNpcThe_cFv();
extern "C" void doEvent__10daNpcThe_cFv();
extern "C" void ctrlBtk__10daNpcThe_cFv();
extern "C" void setAttnPos__10daNpcThe_cFv();
extern "C" void lookat__10daNpcThe_cFv();
extern "C" bool drawDbgInfo__10daNpcThe_cFv();
extern "C" void func_80AFB490(void* _this, s16);
extern "C" void __sinit_d_a_npc_the_cpp();
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
extern "C" void drawOtherMdls__8daNpcF_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz();
extern "C" void adjustShapeAngle__10daNpcThe_cFv();
extern "C" void __dt__16daNpcThe_Param_cFv();
extern "C" static void func_80AFBDE8();
extern "C" static void func_80AFBDF0();
extern "C" u8 const m__16daNpcThe_Param_c[108];
extern "C" extern char const* const d_a_npc_the__stringBase0;
extern "C" void* mEvtCutNameList__10daNpcThe_c[4];
extern "C" u8 mEvtCutList__10daNpcThe_c[48];
static cPhs__Step daNpcThe_Create(void*);
static int daNpcThe_Delete(void*);
static int daNpcThe_Execute(void*);
static int daNpcThe_IsDelete(void*);
static int daNpcThe_Draw(void*);

//
// External References:
//

extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void setObjectArchive__16dEvent_manager_cFPc();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMyNowCutName__16dEvent_manager_cFi();
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
extern "C" void execute__8daNpcF_cFv();
extern "C" void draw__8daNpcF_cFiifP11_GXColorS10i();
extern "C" void srchAttnActor1__8daNpcF_cFPvPv();
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
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void step__8daNpcF_cFsiii();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void getEvtAreaTagP__8daNpcF_cFii();
extern "C" void getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii();
extern "C" void chkFindPlayer2__8daNpcF_cFis();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void daNpcF_offTmpBit__FUl();
extern "C" void dKy_darkworld_check__Fv();
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
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
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
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz();
extern "C" void __register_global_object();

//
// Declarations:
//

/* 80AFC1D0-80AFC1DC 000000 000C+00 5/5 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AFC1DC-80AFC1F0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80AFC1F0-80AFC200 000020 0010+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
static daNpc_GetParam1 l_bmdGetParamList[2] = {
    {23, 0},  // the
    {24, 0},  // the_tw
};

/* 80AFC200-80AFC2D8 000030 00D8+00 2/3 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam1 l_bckGetParamList[27] = {
    {-1, 0},  // <none>
    {10, 0},  // the_f_talk_a
    {9, 0},   // the_f_smile
    {7, 0},   // the_f_chuckle
    {11, 0},  // the_f_talk_b
    {12, 0},  // the_f_talk_c
    {8, 0},   // the_f_laugh
    {13, 0},  // the_f_talk_r
    {16, 0},  // the_fh_smile
    {14, 0},  // the_fh_chuckle
    {17, 0},  // the_fh_talk_b
    {18, 0},  // the_fh_talk_c
    {15, 0},  // the_fh_laugh
    {19, 0},  // the_fh_talk_r
    {20, 0},  // the_wait_a
    {9, 1},   // the_wait_looking
    {7, 1},   // the_to_wait_b
    {8, 1},   // the_wait_b
    {10, 1},  // the_wait_lookup
    {5, 1},   // the_talk_r
    {6, 1},   // the_talking_r
    {4, 1},   // the_look_a
    {3, 1},   // the_look
    {5, 2},   // the_kune_wait_a
    {4, 2},   // the_kune_talk
    {6, 2},   // the_kune_wait_b
    {3, 2},   // the_kune_shishi
};

/* 80AFC2D8-80AFC348 000108 0070+00 1/1 0/0 0/0 .data            l_btpGetParamList */
static daNpc_GetParam1 l_btpGetParamList[14] = {
    {30, 0},  // the
    {34, 0},  // the_f_talk_a
    {33, 0},  // the_f_smile
    {31, 0},  // the_f_chuckle
    {35, 0},  // the_f_talk_b
    {36, 0},  // the_f_talk_c
    {32, 0},  // the_f_laugh
    {37, 0},  // the_f_talk_r
    {40, 0},  // the_fh_smile
    {38, 0},  // the_fh_chuckle
    {41, 0},  // the_fh_talk_b
    {42, 0},  // the_fh_talk_c
    {39, 0},  // the_fh_laugh
    {43, 0},  // the_fh_talk_r
};

/* 80AFC348-80AFC350 000178 0008+00 1/2 0/0 0/0 .data            l_btkGetParamList */
static daNpc_GetParam1 l_btkGetParamList[1] = {
    {27, 0},  // the
};

/* 80AFC350-80AFC35C 000180 000C+00 1/0 0/0 0/0 .data            l_loadRes_THE0 */
static int l_loadRes_THE0[3] = {0, 1, -1};

/* 80AFC35C-80AFC368 00018C 000C+00 1/0 0/0 0/0 .data            l_loadRes_THE1 */
static int l_loadRes_THE1[3] = {0, 1, -1};

/* 80AFC368-80AFC374 000198 000C+00 1/0 0/0 0/0 .data            l_loadRes_THE2 */
static int l_loadRes_THE2[3] = {0, 2, -1};

/* 80AFC374-80AFC380 -00001 000C+00 2/2 0/0 0/0 .data            l_loadRes_list */
static int* l_loadRes_list[3] = {
    l_loadRes_THE0,
    l_loadRes_THE1,
    l_loadRes_THE2,
};

/* 80AFC380-80AFC390 -00001 0010+00 7/10 0/0 0/0 .data            l_resNames */
static char* l_resNames[4] = {
    "The",
    "The1",
    "The2",
    "yelB_TW",
};

/* 80AFC390-80AFC3A0 0001C0 0010+00 0/2 0/0 0/0 .data            l_evtGetParamList */
#pragma push
#pragma force_active on
static int l_evtGetParamList[4] = {
    0, 3, 3, 0,
};
#pragma pop

/* 80AFC3A0-80AFC3B0 -00001 0010+00 0/2 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
static char* l_evtNames[4] = {
    NULL,
    "TW_RESISTANCE1",
    "TW_RESISTANCE2",
    "THE_INTRODUCTION",
};
#pragma pop

/* 80AFC3B0-80AFC3B4 -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
static char* l_myName = "The";
#pragma pop

/* 80AFC3B4-80AFC3C4 -00001 0010+00 0/1 0/0 0/0 .data            mEvtCutNameList__10daNpcThe_c */
#pragma push
#pragma force_active on
char* daNpcThe_c::mEvtCutNameList[4] = {
    "",
    "TW_RESISTANCE",
    "TW_RESISTANCE",
    "THE_INTRODUCTION",
};
#pragma pop

/* 80AFC3C4-80AFC3D0 -00001 000C+00 0/1 0/0 0/0 .data            @3810 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3810[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_TwResistance__10daNpcThe_cFi,
};
#pragma pop

/* 80AFC3D0-80AFC3DC -00001 000C+00 0/1 0/0 0/0 .data            @3811 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3811[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_TwResistance__10daNpcThe_cFi,
};
#pragma pop

/* 80AFC3DC-80AFC3E8 -00001 000C+00 0/1 0/0 0/0 .data            @3812 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3812[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_Introduction__10daNpcThe_cFi,
};
#pragma pop

#ifdef NONMATCHING
daNpcThe_c::EventFn daNpcThe_c::mEvtCutList[4] = {
    NULL,
    &EvCut_TwResistance,
    &EvCut_TwResistance,
    &EvCut_Introduction,
};
#else
/* 80AFC3E8-80AFC418 000218 0030+00 0/2 0/0 0/0 .data            mEvtCutList__10daNpcThe_c */
#pragma push
#pragma force_active on
SECTION_DATA u8 daNpcThe_c::mEvtCutList[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop
#endif

/* 80AFC418-80AFC424 -00001 000C+00 1/1 0/0 0/0 .data            @4153 */
SECTION_DATA static void* lit_4153[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__10daNpcThe_cFPv,
};

/* 80AFC424-80AFC45C -00001 0038+00 1/1 0/0 0/0 .data            @4407 */
SECTION_DATA static void* lit_4407[14] = {
    (void*)(((char*)setExpressionAnm__10daNpcThe_cFib) + 0x90),
    (void*)(((char*)setExpressionAnm__10daNpcThe_cFib) + 0xAC),
    (void*)(((char*)setExpressionAnm__10daNpcThe_cFib) + 0xC8),
    (void*)(((char*)setExpressionAnm__10daNpcThe_cFib) + 0xE4),
    (void*)(((char*)setExpressionAnm__10daNpcThe_cFib) + 0x100),
    (void*)(((char*)setExpressionAnm__10daNpcThe_cFib) + 0x120),
    (void*)(((char*)setExpressionAnm__10daNpcThe_cFib) + 0x13C),
    (void*)(((char*)setExpressionAnm__10daNpcThe_cFib) + 0x158),
    (void*)(((char*)setExpressionAnm__10daNpcThe_cFib) + 0x174),
    (void*)(((char*)setExpressionAnm__10daNpcThe_cFib) + 0x194),
    (void*)(((char*)setExpressionAnm__10daNpcThe_cFib) + 0x1B4),
    (void*)(((char*)setExpressionAnm__10daNpcThe_cFib) + 0x1D4),
    (void*)(((char*)setExpressionAnm__10daNpcThe_cFib) + 0x1F4),
    (void*)(((char*)setExpressionAnm__10daNpcThe_cFib) + 0x214),
};

/* 80AFC45C-80AFC494 -00001 0038+00 1/1 0/0 0/0 .data            @4441 */
SECTION_DATA static void* lit_4441[14] = {
    (void*)(((char*)setExpressionBtp__10daNpcThe_cFi) + 0x8C),
    (void*)(((char*)setExpressionBtp__10daNpcThe_cFi) + 0xD0),
    (void*)(((char*)setExpressionBtp__10daNpcThe_cFi) + 0xD0),
    (void*)(((char*)setExpressionBtp__10daNpcThe_cFi) + 0xD0),
    (void*)(((char*)setExpressionBtp__10daNpcThe_cFi) + 0x94),
    (void*)(((char*)setExpressionBtp__10daNpcThe_cFi) + 0xD0),
    (void*)(((char*)setExpressionBtp__10daNpcThe_cFi) + 0xD0),
    (void*)(((char*)setExpressionBtp__10daNpcThe_cFi) + 0xD0),
    (void*)(((char*)setExpressionBtp__10daNpcThe_cFi) + 0x9C),
    (void*)(((char*)setExpressionBtp__10daNpcThe_cFi) + 0xA4),
    (void*)(((char*)setExpressionBtp__10daNpcThe_cFi) + 0xAC),
    (void*)(((char*)setExpressionBtp__10daNpcThe_cFi) + 0xB4),
    (void*)(((char*)setExpressionBtp__10daNpcThe_cFi) + 0xBC),
    (void*)(((char*)setExpressionBtp__10daNpcThe_cFi) + 0xC4),
};

/* 80AFC494-80AFC4C8 -00001 0034+00 1/1 0/0 0/0 .data            @4482 */
SECTION_DATA static void* lit_4482[13] = {
    (void*)(((char*)setMotionAnm__10daNpcThe_cFif) + 0x9C),
    (void*)(((char*)setMotionAnm__10daNpcThe_cFif) + 0xA4),
    (void*)(((char*)setMotionAnm__10daNpcThe_cFif) + 0xAC),
    (void*)(((char*)setMotionAnm__10daNpcThe_cFif) + 0xB4),
    (void*)(((char*)setMotionAnm__10daNpcThe_cFif) + 0xBC),
    (void*)(((char*)setMotionAnm__10daNpcThe_cFif) + 0xC4),
    (void*)(((char*)setMotionAnm__10daNpcThe_cFif) + 0xCC),
    (void*)(((char*)setMotionAnm__10daNpcThe_cFif) + 0xD4),
    (void*)(((char*)setMotionAnm__10daNpcThe_cFif) + 0xDC),
    (void*)(((char*)setMotionAnm__10daNpcThe_cFif) + 0xE4),
    (void*)(((char*)setMotionAnm__10daNpcThe_cFif) + 0xEC),
    (void*)(((char*)setMotionAnm__10daNpcThe_cFif) + 0xF4),
    (void*)(((char*)setMotionAnm__10daNpcThe_cFif) + 0xFC),
};

/* 80AFC4C8-80AFC4D4 -00001 000C+00 0/1 0/0 0/0 .data            @4577 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4577[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__10daNpcThe_cFPv,
};
#pragma pop

/* 80AFC4D4-80AFC4E0 -00001 000C+00 0/1 0/0 0/0 .data            @4583 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4583[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitTW__10daNpcThe_cFPv,
};
#pragma pop

/* 80AFC4E0-80AFC4EC -00001 000C+00 0/1 0/0 0/0 .data            @4585 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4585[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__10daNpcThe_cFPv,
};
#pragma pop

/* 80AFC4EC-80AFC4F8 -00001 000C+00 0/1 0/0 0/0 .data            @4611 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4611[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__10daNpcThe_cFPv,
};
#pragma pop

/* 80AFC4F8-80AFC504 -00001 000C+00 0/1 0/0 0/0 .data            @4616 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4616[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__10daNpcThe_cFPv,
};
#pragma pop

/* 80AFC504-80AFC510 -00001 000C+00 0/1 0/0 0/0 .data            @4621 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4621[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__10daNpcThe_cFPv,
};
#pragma pop

/* 80AFC510-80AFC51C -00001 000C+00 0/1 0/0 0/0 .data            @4626 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4626[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__10daNpcThe_cFPv,
};
#pragma pop

/* 80AFC51C-80AFC528 -00001 000C+00 0/1 0/0 0/0 .data            @4630 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4630[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__10daNpcThe_cFPv,
};
#pragma pop

/* 80AFC528-80AFC534 -00001 000C+00 0/1 0/0 0/0 .data            @4635 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4635[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__10daNpcThe_cFPv,
};
#pragma pop

/* 80AFC534-80AFC554 -00001 0020+00 1/0 0/0 0/0 .data            daNpcThe_MethodTable */
static actor_method_class daNpcThe_MethodTable = {
    (process_method_func)daNpcThe_Create,
    (process_method_func)daNpcThe_Delete,
    (process_method_func)daNpcThe_Execute,
    (process_method_func)daNpcThe_IsDelete,
    (process_method_func)daNpcThe_Draw,
};

/* 80AFC554-80AFC584 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_THE */
extern actor_process_profile_definition g_profile_NPC_THE = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_NPC_THE,
    &g_fpcLf_Method.mBase,
    sizeof(daNpcThe_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x174,
    &daNpcThe_MethodTable,
    0x44108,
    fopAc_NPC_e,
    fopAc_CULLBOX_CUSTOM_e,
};

/* 80AFC584-80AFC590 0003B4 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80AFC590-80AFC5D8 0003C0 0048+00 2/2 0/0 0/0 .data            __vt__10daNpcThe_c */
SECTION_DATA extern void* __vt__10daNpcThe_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10daNpcThe_cFv,
    (void*)setParam__10daNpcThe_cFv,
    (void*)main__10daNpcThe_cFv,
    (void*)ctrlBtk__10daNpcThe_cFv,
    (void*)adjustShapeAngle__10daNpcThe_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__10daNpcThe_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__10daNpcThe_cFib,
    (void*)setExpressionBtp__10daNpcThe_cFi,
    (void*)setExpression__10daNpcThe_cFif,
    (void*)setMotionAnm__10daNpcThe_cFif,
    (void*)setMotion__10daNpcThe_cFifi,
    (void*)drawDbgInfo__10daNpcThe_cFv,
    (void*)drawOtherMdls__8daNpcF_cFv,
};

/* 80AFC5D8-80AFC5E4 000408 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AFC5E4-80AFC608 000414 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AFBDF0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AFBDE8,
};

/* 80AFC608-80AFC614 000438 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AFC614-80AFC620 000444 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AFC620-80AFC62C 000450 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AFC62C-80AFC638 00045C 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80AFC638-80AFC644 000468 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80AFC644-80AFC650 000474 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AFC650-80AFC65C 000480 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 80AF76CC-80AF7850 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__10daNpcThe_cFv */
#ifdef NONMATCHING
// daNpcF_c constructor needs to not be inlined
daNpcThe_c::daNpcThe_c() {
    /* empty function */
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcThe_c::daNpcThe_c() {
extern "C" asm void __ct__10daNpcThe_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__ct__10daNpcThe_cFv.s"
}
#pragma pop
#endif

/* 80AF7850-80AF7898 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80AF7898-80AF78E0 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80AF78E0-80AF7AE0 000300 0200+00 1/0 0/0 0/0 .text            __dt__10daNpcThe_cFv */
#ifdef NONMATCHING
daNpcThe_c::~daNpcThe_c() {
    for (int i = 0; l_loadRes_list[mType][i] >= 0; i++) {
        dComIfG_resDelete(&mPhase[i], l_resNames[l_loadRes_list[mType][i]]);
    }
    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcThe_c::~daNpcThe_c() {
extern "C" asm void __dt__10daNpcThe_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__dt__10daNpcThe_cFv.s"
}
#pragma pop
#endif

/* 80AFBE0C-80AFBE78 000000 006C+00 11/11 0/0 0/0 .rodata          m__16daNpcThe_Param_c */
daNpcThe_Param_c::param const daNpcThe_Param_c::m = {
    220.0f,     // mAttnOffsetY
    -3.0f,      // mGravity
    1.0f,       // mScale
    400.0f,     // mShadowDepth
    255.0f,     // mCcWeight
    200.0f,     // mCylH
    35.0f,      // mWallH
    40.0f,      // mWallR
    0.0f,       // mBodyUpAngle
    -20.0f,     // mBodyDownAngle
    10.0f,      // mBodyLeftAngle
    -10.0f,     // mBodyRightAngle
    30.0f,      // mHeadUpAngle
    -20.0f,     // mHeadDownAngle
    45.0f,      // mHeadLeftAngle
    -45.0f,     // mHeadRightAngle
    0.6f,       // mNeckAngleScl
    12.0f,      // mMorfFrames
    3,          // mSpeakDistIdx
    6,          // mSpeakAngleIdx
    5,          // mTalkDistIdx
    6,          // mTalkAngleIdx
    80.0f,      // mAttnFovY
    500.0f,     // mAttnRadius
    300.0f,     // mAttnUpperY
    -300.0f,    // mAttnLowerY
    60,
    8,
    0,          // mTestExpression
    0,          // mTestMotion
    0,          // mTestLookMode
    false,      // mTest
};

int daNpcThe_c::CreateHeap() {
    J3DModelData* model_data = NULL;
    mTwilight = dKy_darkworld_check();
    int bmd_get_idx = mTwilight ? 1 : 0;
    if (l_bmdGetParamList[bmd_get_idx].fileIdx >= 0) {
        model_data = static_cast<J3DModelData*>(dComIfG_getObjectRes(
            l_resNames[l_bmdGetParamList[bmd_get_idx].arcIdx],
            l_bmdGetParamList[bmd_get_idx].fileIdx
        ));
    }
    mpMorf = new mDoExt_McaMorfSO(model_data, NULL, NULL, NULL, -1, 1.0f, 0, -1,
                                    &mSound, 0x80000, 0x11020284);
    
    if (mpMorf != NULL && mpMorf->getModel() == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }
    if (mpMorf == NULL) {
        return 0;
    }

    J3DModel* model = mpMorf->getModel();
    for (u16 i = 0; i < model_data->getJointTree().getJointNum(); i++) {
        model_data->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);

    mpMatAnm = new daNpcF_MatAnm_c();
    if (mpMatAnm == NULL) {
        return 0;
    }

    if (!setExpressionAnm(ANM_F_TALK_A, false)) {
        return 0;
    }
    setMotionAnm(ANM_WAIT_A, 0.0f);
    return 1;
}

/* 80AF7AE0-80AF7CB0 000500 01D0+00 1/1 0/0 0/0 .text ctrlJoint__10daNpcThe_cFP8J3DJointP8J3DModel
 */
int daNpcThe_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int joint_no = i_joint->getJntNo();
    int lookat_joints[3] = {1, 3, 4};

    if (joint_no == 0) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(joint_no));
    
    switch (joint_no) {
        case 1:
        case 3:
        case 4:
            setLookatMtx(joint_no, lookat_joints, daNpcThe_Param_c::m.mNeckAngleScl);
            break;
    }

    i_model->setAnmMtx(joint_no, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    if ((joint_no == 4 || joint_no == 11) && (mAnmFlags & 0x100)) {
        J3DAnmTransform* anm = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mpMorf->getAnm());
        mpMorf->changeAnm(anm);
    }

    return 1;
}

/* ############################################################################################## */
/* 80AFBE84-80AFBE88 000078 0004+00 4/4 0/0 0/0 .rodata          @4296 */
SECTION_RODATA static f32 const lit_4296 = 1.0f;
COMPILER_STRIP_GATE(0x80AFBE84, &lit_4296);

/* 80AFBE88-80AFBE8C 00007C 0004+00 5/7 0/0 0/0 .rodata          @4297 */
SECTION_RODATA static u8 const lit_4297[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AFBE88, &lit_4297);

/* 80AF7CB0-80AF7F58 0006D0 02A8+00 1/1 0/0 0/0 .text
 * createHeapCallBack__10daNpcThe_cFP10fopAc_ac_c               */
#ifdef NONMATCHING
// matches with literals
int daNpcThe_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpcThe_c*>(i_this)->CreateHeap();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcThe_c::createHeapCallBack(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/createHeapCallBack__10daNpcThe_cFP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* 80AF7F58-80AF7F94 000978 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" asm void __dt__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__dt__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80AF7F94-80AF7FAC 0009B4 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" asm void __ct__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__ct__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80AF7FAC-80AF7FE8 0009CC 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" asm void __dt__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__dt__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 80AF7FE8-80AF8000 000A08 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::J3DTevColorAnm() {
extern "C" asm void __ct__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__ct__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 80AF8000-80AF8048 000A20 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" asm void __dt__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__dt__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80AF8048-80AF806C 000A68 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::J3DTexNoAnm() {
extern "C" asm void __ct__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__ct__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80AF806C-80AF80A8 000A8C 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" asm void __dt__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__dt__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80AF80A8-80AF80C0 000AC8 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" asm void __ct__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__ct__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80AF80C0-80AF80FC 000AE0 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" asm void __dt__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__dt__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 80AF80FC-80AF8114 000B1C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::J3DMatColorAnm() {
extern "C" asm void __ct__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__ct__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 80AF8114-80AF8160 000B34 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__10daNpcThe_cFP8J3DJointi
 */
int daNpcThe_c::ctrlJointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        daNpcThe_c* _this = (daNpcThe_c*)j3dSys.getModel()->getUserArea();
        if (_this != NULL) {
            _this->ctrlJoint(i_joint, j3dSys.getModel());
        }
    }
    return true;
}

/* 80AF8160-80AF841C 000B80 02BC+00 2/0 0/0 0/0 .text            setExpressionAnm__10daNpcThe_cFib
 */
#ifdef NONMATCHING
// matches with literals
bool daNpcThe_c::setExpressionAnm(int i_idx, bool i_modify) {
    J3DAnmTransform* anm = NULL;
    int attr = 0;
    mAnmFlags &= ~ANM_EXPRESSION_FLAGS;

    if (l_bckGetParamList[i_idx].fileIdx >= 0) {
        anm = getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[i_idx].arcIdx],
                                l_bckGetParamList[i_idx].fileIdx);
    }

    bool res = false;
    switch (i_idx) {
    case ANM_NONE:
        res = setExpressionBtp(0);
        break;
    case ANM_F_TALK_A:
        res = setExpressionBtp(1);
        break;
    case ANM_F_SMILE:
        res = setExpressionBtp(2);
        break;
    case ANM_F_CHUCKLE:
        res = setExpressionBtp(3);
        break;
    case ANM_F_TALK_B:
        res = setExpressionBtp(4);
        attr = 2;
        break;
    case ANM_F_TALK_C:
        res = setExpressionBtp(5);
        break;
    case ANM_F_LAUGH:
        res = setExpressionBtp(6);
        break;
    case ANM_F_TALK_R:
        res = setExpressionBtp(7);
        break;
    case ANM_FH_SMILE:
        res = setExpressionBtp(8);
        attr = 2;
        break;
    case ANM_FH_CHUCKLE:
        res = setExpressionBtp(9);
        attr = 2;
        break;
    case ANM_FH_TALK_B:
        res = setExpressionBtp(10);
        attr = 2;
        break;
    case ANM_FH_TALK_C:
        res = setExpressionBtp(11);
        attr = 2;
        break;
    case ANM_FH_LAUGH:
        res = setExpressionBtp(12);
        attr = 2;
        break;
    case ANM_FH_TALK_R:
        res = setExpressionBtp(13);
        attr = 2;
        break;
    default:
        anm = NULL;
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
        return true;
    }

    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daNpcThe_c::setExpressionAnm(int param_0, bool param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/setExpressionAnm__10daNpcThe_cFib.s"
}
#pragma pop
#endif

/* 80AF841C-80AF8564 000E3C 0148+00 2/0 0/0 0/0 .text            setExpressionBtp__10daNpcThe_cFi */
#ifdef NONMATCHING
// matches with literals
bool daNpcThe_c::setExpressionBtp(int i_idx) {
    J3DAnmTexPattern* anm = NULL;
    mAnmFlags &= ~(ANM_PAUSE_BTP | ANM_PLAY_BTP | ANM_FLAG_800);

    if (l_btpGetParamList[i_idx].fileIdx >= 0) {
        anm = getTexPtrnAnmP(l_resNames[l_btpGetParamList[i_idx].arcIdx],
                             l_btpGetParamList[i_idx].fileIdx);
    }

    int attr = 0;
    switch (i_idx) {
    case 0:
        attr = 2;
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
        break;
    case 4:
        attr = 2;
        break;
    case 5:
        break;
    case 6:
        break;
    case 7:
        break;
    case 8:
        attr = 2;
        break;
    case 9:
        attr = 2;
        break;
    case 10:
        attr = 2;
        break;
    case 11:
        attr = 2;
        break;
    case 12:
        attr = 2;
        break;
    case 13:
        attr = 2;
        break;
    default:
        anm = NULL;
    }

    if (anm == NULL) {
        return true;
    }

    if (setBtpAnm(anm, mpMorf->getModel()->getModelData(), 1.0f, attr)) {
        mAnmFlags |= ANM_PAUSE_BTP | ANM_PLAY_BTP;
        if (i_idx == 0) {
            mAnmFlags |= ANM_FLAG_800;
        }
        return true;
    }

    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daNpcThe_c::setExpressionBtp(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/setExpressionBtp__10daNpcThe_cFi.s"
}
#pragma pop
#endif

/* 80AF8564-80AF8744 000F84 01E0+00 2/0 0/0 0/0 .text            setMotionAnm__10daNpcThe_cFif */
#ifdef NONMATCHING
// matches with literals
void daNpcThe_c::setMotionAnm(int i_idx, f32 i_morf) {
    J3DAnmTransformKey* anm_trans = NULL;
    J3DAnmTextureSRTKey* anm_tex = NULL;
    int attr = 2;
    mAnmFlags &= ~ANM_MOTION_FLAGS;

    if (l_bckGetParamList[i_idx].fileIdx >= 0) {
        anm_trans = getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[i_idx].arcIdx],
                                      l_bckGetParamList[i_idx].fileIdx);
    }

    switch (i_idx) {
    case ANM_WAIT_A:
        attr = 2;
        break;
    case ANM_WAIT_LOOKING:
        attr = 2;
        break;
    case ANM_TO_WAIT_B:
        attr = 0;
        break;
    case ANM_WAIT_B:
        attr = 2;
        break;
    case ANM_WAIT_LOOKUP:
        attr = 2;
        break;
    case ANM_TALK_R:
        attr = 0;
        break;
    case ANM_TALKING_R:
        attr = 2;
        break;
    case ANM_LOOK_A:
        attr = 0;
        break;
    case ANM_LOOK:
        attr = 0;
        break;
    case ANM_KUNE_WAIT_A:
        attr = 2;
        break;
    case ANM_KUNE_TALK:
        attr = 0;
        break;
    case ANM_KUNE_WAIT_B:
        attr = 2;
        break;
    case ANM_KUNE_SHISHI:
        attr = 0;
        break;
    default:
        anm_trans = NULL;
        anm_tex = NULL;
    }

    if (l_btkGetParamList[0].fileIdx >= 0) {
        anm_tex = getTexSRTKeyAnmP(l_resNames[l_btkGetParamList[0].arcIdx],
                                   l_btkGetParamList[0].fileIdx);
    }
    
    if (anm_tex != NULL) {
        if (setBtkAnm(anm_tex, mpMorf->getModel()->getModelData(), 1.0f, 2)) {
            mAnmFlags |= ANM_PAUSE_BTK | ANM_PLAY_BTK;
        }
    }

    if (anm_trans != NULL) {
        if (setMcaMorfAnm(anm_trans, 1.0f, i_morf, attr, 0, -1)) {
            mAnmFlags |= ANM_PAUSE_MORF | ANM_PLAY_MORF;
            mMotionLoops = 0;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcThe_c::setMotionAnm(int param_0, f32 param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/setMotionAnm__10daNpcThe_cFif.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80AFBE8C-80AFBE98 000080 000C+00 0/1 0/0 0/0 .rodata          @4507 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4507[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AFBE8C, &lit_4507);
#pragma pop

/* 80AFBE98-80AFBEA0 00008C 0008+00 0/1 0/0 0/0 .rodata          @4508 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4508[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBE98, &lit_4508);
#pragma pop

/* 80AFBEA0-80AFBEAC 000094 000C+00 0/1 0/0 0/0 .rodata          @4509 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4509[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AFBEA0, &lit_4509);
#pragma pop

/* 80AFBEAC-80AFBEB4 0000A0 0008+00 0/1 0/0 0/0 .rodata          @4510 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4510[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBEAC, &lit_4510);
#pragma pop

/* 80AFBEB4-80AFBEC0 0000A8 000C+00 0/1 0/0 0/0 .rodata          @4511 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4511[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AFBEB4, &lit_4511);
#pragma pop

/* 80AFBEC0-80AFBEC8 0000B4 0008+00 0/1 0/0 0/0 .rodata          @4512 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4512[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBEC0, &lit_4512);
#pragma pop

/* 80AFBEC8-80AFBED4 0000BC 000C+00 0/1 0/0 0/0 .rodata          @4513 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4513[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AFBEC8, &lit_4513);
#pragma pop

/* 80AFBED4-80AFBEDC 0000C8 0008+00 0/1 0/0 0/0 .rodata          @4514 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4514[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBED4, &lit_4514);
#pragma pop

/* 80AFBEDC-80AFBEE8 0000D0 000C+00 0/1 0/0 0/0 .rodata          @4515 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4515[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AFBEDC, &lit_4515);
#pragma pop

/* 80AFBEE8-80AFBEF0 0000DC 0008+00 0/1 0/0 0/0 .rodata          @4516 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4516[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBEE8, &lit_4516);
#pragma pop

/* 80AFBEF0-80AFBEFC 0000E4 000C+00 0/1 0/0 0/0 .rodata          @4517 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4517[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AFBEF0, &lit_4517);
#pragma pop

/* 80AFBEFC-80AFBF04 0000F0 0008+00 0/1 0/0 0/0 .rodata          @4518 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4518[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBEFC, &lit_4518);
#pragma pop

/* 80AFBF04-80AFBF10 0000F8 000C+00 0/1 0/0 0/0 .rodata          @4519 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4519[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AFBF04, &lit_4519);
#pragma pop

/* 80AFBF10-80AFBF18 000104 0008+00 0/1 0/0 0/0 .rodata          @4520 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4520[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBF10, &lit_4520);
#pragma pop

/* 80AFBF18-80AFBF24 00010C 000C+00 0/1 0/0 0/0 .rodata          @4521 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4521[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBF18, &lit_4521);
#pragma pop

/* 80AFBF24-80AFBF2C 000118 0008+00 0/1 0/0 0/0 .rodata          @4522 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4522[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBF24, &lit_4522);
#pragma pop

/* 80AFBF2C-80AFBF38 000120 000C+00 0/1 0/0 0/0 .rodata          @4523 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4523[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBF2C, &lit_4523);
#pragma pop

/* 80AFBF38-80AFBF40 00012C 0008+00 0/1 0/0 0/0 .rodata          @4524 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4524[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBF38, &lit_4524);
#pragma pop

/* 80AFBF40-80AFBF4C 000134 000C+00 0/1 0/0 0/0 .rodata          @4525 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4525[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBF40, &lit_4525);
#pragma pop

/* 80AFBF4C-80AFBF54 000140 0008+00 0/1 0/0 0/0 .rodata          @4526 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4526[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBF4C, &lit_4526);
#pragma pop

/* 80AFBF54-80AFBF60 000148 000C+00 0/1 0/0 0/0 .rodata          @4527 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4527[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBF54, &lit_4527);
#pragma pop

/* 80AFBF60-80AFBF68 000154 0008+00 0/1 0/0 0/0 .rodata          @4528 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4528[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBF60, &lit_4528);
#pragma pop

/* 80AFBF68-80AFBF74 00015C 000C+00 0/1 0/0 0/0 .rodata          @4529 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4529[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBF68, &lit_4529);
#pragma pop

/* 80AFBF74-80AFBF7C 000168 0008+00 0/1 0/0 0/0 .rodata          @4530 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4530[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBF74, &lit_4530);
#pragma pop

/* 80AFBF7C-80AFBF88 000170 000C+00 0/1 0/0 0/0 .rodata          @4531 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4531[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBF7C, &lit_4531);
#pragma pop

/* 80AFBF88-80AFBF90 00017C 0008+00 0/1 0/0 0/0 .rodata          @4532 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4532[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBF88, &lit_4532);
#pragma pop

/* 80AFBF90-80AFBF9C 000184 000C+00 0/1 0/0 0/0 .rodata          @4533 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4533[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBF90, &lit_4533);
#pragma pop

/* 80AFBF9C-80AFBFA0 000190 0004+00 0/1 0/0 0/0 .rodata          @4534 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4534[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AFBF9C, &lit_4534);
#pragma pop

/* 80AFBFA0-80AFBFD8 000194 0038+00 0/0 0/0 0/0 .rodata          @4535 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4535[56] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBFA0, &lit_4535);
#pragma pop

/* 80AFBFD8-80AFBFE4 0001CC 000C+00 0/1 0/0 0/0 .rodata          @4539 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4539[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBFD8, &lit_4539);
#pragma pop

/* 80AFBFE4-80AFBFE8 0001D8 0004+00 0/1 0/0 0/0 .rodata          @4540 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4540[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AFBFE4, &lit_4540);
#pragma pop

/* 80AFBFE8-80AFBFF4 0001DC 000C+00 0/1 0/0 0/0 .rodata          @4541 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4541[12] = {
    0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AFBFE8, &lit_4541);
#pragma pop

/* 80AFBFF4-80AFC000 0001E8 000C+00 0/1 0/0 0/0 .rodata          @4542 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4542[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFBFF4, &lit_4542);
#pragma pop

/* 80AFC000-80AFC008 0001F4 0008+00 0/1 0/0 0/0 .rodata          @4543 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4543[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC000, &lit_4543);
#pragma pop

/* 80AFC008-80AFC014 0001FC 000C+00 0/1 0/0 0/0 .rodata          @4544 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4544[12] = {
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AFC008, &lit_4544);
#pragma pop

/* 80AFC014-80AFC020 000208 000C+00 0/1 0/0 0/0 .rodata          @4545 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4545[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC014, &lit_4545);
#pragma pop

/* 80AFC020-80AFC028 000214 0008+00 0/1 0/0 0/0 .rodata          @4546 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4546[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC020, &lit_4546);
#pragma pop

/* 80AFC028-80AFC034 00021C 000C+00 0/1 0/0 0/0 .rodata          @4547 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4547[12] = {
    0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC028, &lit_4547);
#pragma pop

/* 80AFC034-80AFC038 000228 0004+00 0/1 0/0 0/0 .rodata          @4548 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4548[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AFC034, &lit_4548);
#pragma pop

/* 80AFC038-80AFC044 00022C 000C+00 0/1 0/0 0/0 .rodata          @4549 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4549[12] = {
    0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AFC038, &lit_4549);
#pragma pop

/* 80AFC044-80AFC050 000238 000C+00 0/1 0/0 0/0 .rodata          @4550 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4550[12] = {
    0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC044, &lit_4550);
#pragma pop

/* 80AFC050-80AFC058 000244 0008+00 0/1 0/0 0/0 .rodata          @4551 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4551[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC050, &lit_4551);
#pragma pop

/* 80AFC058-80AFC064 00024C 000C+00 0/1 0/0 0/0 .rodata          @4552 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4552[12] = {
    0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC058, &lit_4552);
#pragma pop

/* 80AFC064-80AFC068 000258 0004+00 0/1 0/0 0/0 .rodata          @4553 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4553[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AFC064, &lit_4553);
#pragma pop

/* 80AFC068-80AFC074 00025C 000C+00 0/1 0/0 0/0 .rodata          @4554 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4554[12] = {
    0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AFC068, &lit_4554);
#pragma pop

/* 80AFC074-80AFC080 000268 000C+00 0/1 0/0 0/0 .rodata          @4555 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4555[12] = {
    0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC074, &lit_4555);
#pragma pop

/* 80AFC080-80AFC088 000274 0008+00 0/1 0/0 0/0 .rodata          @4556 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4556[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC080, &lit_4556);
#pragma pop

/* 80AFC088-80AFC094 00027C 000C+00 0/1 0/0 0/0 .rodata          @4557 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4557[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC088, &lit_4557);
#pragma pop

/* 80AFC094-80AFC098 000288 0004+00 0/1 0/0 0/0 .rodata          @4558 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4558[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AFC094, &lit_4558);
#pragma pop

/* 80AFC098-80AFC0A4 00028C 000C+00 0/1 0/0 0/0 .rodata          @4559 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4559[12] = {
    0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC098, &lit_4559);
#pragma pop

/* 80AFC0A4-80AFC0A8 000298 0004+00 0/1 0/0 0/0 .rodata          @4560 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4560[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AFC0A4, &lit_4560);
#pragma pop

/* 80AFC0A8-80AFC0B4 00029C 000C+00 0/1 0/0 0/0 .rodata          @4561 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4561[12] = {
    0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AFC0A8, &lit_4561);
#pragma pop

/* 80AFC0B4-80AFC0C0 0002A8 000C+00 0/1 0/0 0/0 .rodata          @4562 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4562[12] = {
    0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC0B4, &lit_4562);
#pragma pop

/* 80AFC0C0-80AFC0C8 0002B4 0008+00 0/1 0/0 0/0 .rodata          @4563 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4563[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC0C0, &lit_4563);
#pragma pop

/* 80AFC0C8-80AFC0D4 0002BC 000C+00 0/1 0/0 0/0 .rodata          @4564 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4564[12] = {
    0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AFC0C8, &lit_4564);
#pragma pop

/* 80AFC0D4-80AFC0E0 0002C8 000C+00 0/1 0/0 0/0 .rodata          @4565 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4565[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC0D4, &lit_4565);
#pragma pop

/* 80AFC0E0-80AFC0E8 0002D4 0008+00 0/1 0/0 0/0 .rodata          @4566 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4566[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC0E0, &lit_4566);
#pragma pop

/* 80AFC0E8-80AFC114 0002DC 002C+00 0/0 0/0 0/0 .rodata          @4567 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4567[44] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC0E8, &lit_4567);
#pragma pop

/* 80AFC114-80AFC120 000308 000C+00 0/1 0/0 0/0 .rodata          @4676 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4676[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC114, &lit_4676);
#pragma pop

/* 80AFC120-80AFC124 000314 0004+00 4/4 0/0 0/0 .rodata          @4781 */
SECTION_RODATA static f32 const lit_4781 = -1.0f;
COMPILER_STRIP_GATE(0x80AFC120, &lit_4781);

/* 80AFC158-80AFC158 00034C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AFC1AC = "R_SP116";
#pragma pop

/* 80AF8744-80AF8B0C 001164 03C8+00 1/0 0/0 0/0 .text            wait__10daNpcThe_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpcThe_c::wait(void* param_0) {
    switch (mMode) {
    case 0:
        mAttnChangeTimer = 0;
        // no break

    case 1:
        if (mType == TYPE_KAKARIKO) {
            setExpression(EXPR_H_SMILE, -1.0f);
            setMotion(MOT_KUNE_WAIT_B, -1.0f, false);
        } else {
            setExpression(EXPR_NONE, -1.0f);
            setMotion(MOT_WAIT_A, -1.0f, false);
        }
        setLookMode(LOOK_NONE);
        mTurnMode = 0;
        mMode = 2;
        break;

    case 2:
        if (mType == TYPE_KAKARIKO) {
            if (mCurAngle.y != home.angle.y && step(home.angle.y, -1, -1, 0xf)) {
                mMode = 1;
            }
            setLookMode(LOOK_NONE);
        } else {
            if (!isSneaking()) {
                bool uvar3 = mActorMngr[0].getActorP() != NULL;
                if (chkFindPlayer2(uvar3, mCurAngle.y)) {
                    if (!uvar3) {
                        mActorMngr[0].entry(daPy_getPlayerActorClass());
                        mTurnMode = 0;
                    }
                } else if (uvar3) {
                    mActorMngr[0].remove();
                    mTurnMode = 0;
                }

                if (mActorMngr[0].getActorP() != NULL) {
                    setLookMode(LOOK_PLAYER);
                } else {
                    if (mCurAngle.y != home.angle.y && step(home.angle.y, -1, -1, 0xf)) {
                        mMode = 1;
                    }
                    setLookMode(LOOK_NONE);
                }

                if (mType == TYPE_BAR) {
                    daTag_EvtArea_c* evt_area =
                        static_cast<daTag_EvtArea_c*>(mActorMngr[2].getActorP());
                    if (evt_area != NULL) {
                        if (evt_area->chkPointInArea(daPy_getPlayerActorClass()->current.pos)) {
                            daNpcF_offTmpBit(0xb);
                            daNpcF_offTmpBit(0xc);
                            daNpcF_offTmpBit(0xd);
                            daNpcF_offTmpBit(0xe);
                            mOrderEvtNo = 3;
                            fopAcM_delete(evt_area);
                        }
                    }
                }
            } else {
                setLookMode(LOOK_NONE);
            }

            if (mCurAngle.y == home.angle.y) {
                fopAc_ac_c* actor =
                    getAttnActorP(mActorMngr[0].getActorP() != NULL, srchAttnActor1,
                                  daNpcThe_Param_c::m.mAttnRadius, daNpcThe_Param_c::m.mAttnUpperY,
                                  daNpcThe_Param_c::m.mAttnLowerY, daNpcThe_Param_c::m.mAttnFovY,
                                  shape_angle.y, 120, 1);
                if (actor != NULL) {
                    mActorMngr[1].entry(actor);
                    setLookMode(LOOK_ATTN);
                }
            } else {
                mAttnChangeTimer = 0;
            }
        }

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpcThe_c::wait(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/wait__10daNpcThe_cFPv.s"
}
#pragma pop
#endif

/* 80AF8B0C-80AF8B50 00152C 0044+00 1/0 0/0 0/0 .text            setMotion__10daNpcThe_cFifi */
void daNpcThe_c::setMotion(int i_motion, f32 i_morf, BOOL i_restart) {
    s16 motion = i_motion;
    if (i_restart || mMotion != motion) {
        if (i_motion >= 0 && i_motion < 11) {
            mMotion = motion;
            mMotionMorfOverride = i_morf;
            mMotionPrevPhase = -1;
            mMotionPhase = 0;
        }
    }
}

/* 80AF8B50-80AF8B7C 001570 002C+00 1/0 0/0 0/0 .text            setExpression__10daNpcThe_cFif */
void daNpcThe_c::setExpression(int i_expression, f32 i_morf) {
    if (i_expression >= 0 && i_expression < 14) {
        mExpression = i_expression;
        mExpressionMorfOverride = i_morf;
        mExpressionPrevPhase = -1;
        mExpressionPhase = 0;
    }
}

/* 80AF8B7C-80AF8CC4 00159C 0148+00 1/0 0/0 0/0 .text            waitTW__10daNpcThe_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpcThe_c::waitTW(void* param_0) {
    switch (mMode) {
    case 0:
        mAttnChangeTimer = 0;
        // no break

    case 1:
        if (mType == TYPE_KAKARIKO) {
            setExpression(EXPR_H_SMILE, -1.0f);
            setMotion(MOT_KUNE_WAIT_B, -1.0f, false);
        } else {
            setExpression(EXPR_H_TALK_C, -1.0f);
            setMotion(MOT_WAIT_A, -1.0f, false);
        }
        mTurnMode = 0;
        mMode = 2;
        break;

    case 2:
        if (mCurAngle.y != home.angle.y && step(home.angle.y, -1, -1, 0xf)) {
            mMode = 1;
        }
        setLookMode(LOOK_ACTOR);
        break;

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpcThe_c::waitTW(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/waitTW__10daNpcThe_cFPv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80AFC124-80AFC12C 000318 0008+00 1/1 0/0 0/0 .rodata          @4840 */
SECTION_RODATA static u8 const lit_4840[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80AFC124, &lit_4840);

/* 80AFC158-80AFC158 00034C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AFC1B4 = "DEFAULT_GETITEM";
#pragma pop

/* 80AF8CC4-80AF912C 0016E4 0468+00 6/0 0/0 0/0 .text            talk__10daNpcThe_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpcThe_c::talk(void* param_0) {
    BOOL ret = false;
    BOOL bvar1 = false;
    switch (mMode) {
    case 0:
    case 1:
        initTalk(mFlowID, NULL);
        mAttnChangeTimer = 0;
        mTurnMode = 0;
        field_0xe1c = false;
        mMode = 2;
        break;

    case 2:
        if (mTwilight || isSneaking()) {
            bvar1 = true;
        } else {
            if (mType == TYPE_KAKARIKO &&
                (mpMorf->getAnm() == getTrnsfrmKeyAnmP(
                    l_resNames[l_bckGetParamList[24].arcIdx], l_bckGetParamList[24].fileIdx)
                || mpMorf->getAnm() == getTrnsfrmKeyAnmP(
                    l_resNames[l_bckGetParamList[25].arcIdx], l_bckGetParamList[25].fileIdx)
                || mpMorf->getAnm() == getTrnsfrmKeyAnmP(
                    l_resNames[l_bckGetParamList[26].arcIdx], l_bckGetParamList[26].fileIdx)))
            {
                setLookMode(LOOK_NONE);
            } else {
                setLookMode(LOOK_PLAYER_TALK);
                mActorMngr[0].entry(daPy_getPlayerActorClass());
            }

            if (mType == TYPE_KAKARIKO || mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                bvar1 = true;
            } else if (step(fopAcM_searchPlayerAngleY(this), -1, -1, 0xf)) {
                setExpression(EXPR_NONE, -1.0f);
                setMotion(MOT_WAIT_A, -1.0f, false);
                mTurnMode = 0;
            }
        }

        if (bvar1) {
            int local_24[2] = {-1, -1};
            if (mFlowID == 0x430) {
                local_24[0] = 0x13ef;
            }
            if (talkProc(local_24, 1, NULL)) {
                if (!mFlow.checkEndFlow()) {
                    daPy_getPlayerActorClass()->changeOriginalDemo();
                    daPy_getPlayerActorClass()->changeDemoMode(6, 0, 1, 0);
                } else {
                    if (mFlowID == 0x430) {
                        daPy_getPlayerActorClass()->cancelOriginalDemo();
                    }
                    int item_no = 0;
                    if (mFlow.getEventId(&item_no) == 1) {
                        mItemID = fopAcM_createItemForPresentDemo(&current.pos, item_no,
                                                                  0, -1, -1, NULL, NULL);
                        if (mItemID != -1) {
                            s16 event_id = dComIfGp_getEventManager()
                                .getEventIdx(this, "DEFAULT_GETITEM", 0xff);
                            dComIfGp_getEvent().reset(this);
                            fopAcM_orderChangeEventId(this, event_id, 1, 0xffff);
                            field_0x9ec = true;
                        }
                    }
                    ret = true;
                }
            }
        }

        if (ret) {
            mMode = 3;
            if (mFlowID == 0x430) {
                if (!field_0xe1d) {
                    field_0xe1d = true;
                    field_0xe1c = true;
                } else {
                    mFlowID = home.angle.x;
                }
            }
            if (!field_0x9ec) {
                dComIfGp_event_reset();
            }
            field_0x9ec = false;
        }
        // no break

    case 3:
    default:
        break;
    }
    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpcThe_c::talk(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/talk__10daNpcThe_cFPv.s"
}
#pragma pop
#endif

/* 80AF912C-80AF923C 001B4C 0110+00 2/0 0/0 0/0 .text            test__10daNpcThe_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpcThe_c::test(void* param_0) {
    switch (mMode) {
    case 0:
        mAttnChangeTimer = 0;
        break;

    case 1:
        speedF = 0.0f;
        speed.setall(0.0f);
        mTurnMode = 0;
        mMode = 2;
        // no break

    case 2:
        attention_info.flags = 0;
        if (mExpression != daNpcThe_Param_c::m.mTestExpression) {
            setExpression(daNpcThe_Param_c::m.mTestExpression, daNpcThe_Param_c::m.mMorfFrames);
        }
        setMotion(daNpcThe_Param_c::m.mTestMotion, daNpcThe_Param_c::m.mMorfFrames, false);
        setLookMode(daNpcThe_Param_c::m.mTestLookMode);
        break;

    case 3:
    default:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpcThe_c::test(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/test__10daNpcThe_cFPv.s"
}
#pragma pop
#endif

/* 80AF923C-80AF9244 001C5C 0008+00 2/0 0/0 0/0 .text            EvCut_TwResistance__10daNpcThe_cFi
 */
BOOL daNpcThe_c::EvCut_TwResistance(int i_cutIdx) {
    return true;
}

/* 80AF9244-80AF9338 001C64 00F4+00 1/0 0/0 0/0 .text            EvCut_Introduction__10daNpcThe_cFi
 */
BOOL daNpcThe_c::EvCut_Introduction(int i_cutIdx) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    int* cut_name = (int*)event_manager.getMyNowCutName(i_cutIdx);
    if (event_manager.getIsAddvance(i_cutIdx)) {
        switch (*cut_name) {
        case '0001':
        case '0002':
        case '0003':
        case '0004':
        case '0005':
            initTalk(mFlowID, NULL);
            setLookMode(LOOK_PLAYER);
        }
    }

    switch (*cut_name) {
    case '0001':
    case '0002':
    case '0003':
    case '0004':
    case '0005':
        if (talkProc(NULL, 1, NULL)) {
            return true;
        }
    }

    return false;
}

/* 80AF9338-80AF9358 001D58 0020+00 1/0 0/0 0/0 .text            daNpcThe_Create__FPv */
static cPhs__Step daNpcThe_Create(void* i_this) {
    return static_cast<daNpcThe_c*>(i_this)->create();
}

/* 80AF9358-80AF9748 001D78 03F0+00 1/1 0/0 0/0 .text            create__10daNpcThe_cFv */
cPhs__Step daNpcThe_c::create() {
    fopAcM_SetupActor(this, daNpcThe_c);
    
    mType = getTypeFromParam();
    
    int flow_id = home.angle.x;
    if (flow_id != 0xffff) {
        mFlowID = flow_id;
    } else {
        mFlowID = -1;
    }

    if (mType == TYPE_KAKARIKO && (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[68])
                        || dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[78]))) {
        return cPhs_ERROR_e;
    }

    cPhs__Step step;
    int resources_loaded = 0;
    int i = 0;
    for (; l_loadRes_list[mType][i] >= 0; i++) {
        step = (cPhs__Step)dComIfG_resLoad(&mPhase[i], l_resNames[l_loadRes_list[mType][i]]);
        if (step == cPhs_ERROR_e || step == cPhs_UNK3_e) {
            return cPhs_ERROR_e;
        }
        if (step == cPhs_COMPLEATE_e) {
            resources_loaded++;
        }
    }

    if (resources_loaded == i) {
        u32 heap_size = 0;
        switch (mType) {
        case TYPE_BAR:
            heap_size = 0x4d70;
            break;
        case TYPE_1:
            heap_size = 0x4cc0;
            break;
        case TYPE_KAKARIKO:
            heap_size = 0x4d80;
            break;
        }
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, heap_size)) {
            return cPhs_ERROR_e;
        }

        if (isDelete()) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpMorf->getModel()->getModelData());
        mSound.init(&current.pos, &eyePos, 3, 1);
        mAcchCir.SetWall(daNpcThe_Param_c::m.mWallR, daNpcThe_Param_c::m.mWallH);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mAcch.SetRoofNone();
        mAcch.SetWaterNone();
        mAcch.CrrPos(dComIfG_Bgsp());
        mCcStts.Init(daNpcThe_Param_c::m.mCcWeight, 0, this);
        mColCyl.Set(mCcDCyl);
        mColCyl.SetStts(&mCcStts);
        mColCyl.SetTgType(0);
        mColCyl.SetTgSPrm(0);
        mColCyl.SetH(daNpcThe_Param_c::m.mCylH);
        mColCyl.SetR(daNpcThe_Param_c::m.mWallR);
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        setEnvTevColor();
        setRoomNo();
        reset();
        execute();

        return cPhs_COMPLEATE_e;
    }

    return cPhs_INIT_e;
}

/* 80AF9748-80AF98D0 002168 0188+00 1/1 0/0 0/0 .text            reset__10daNpcThe_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpcThe_c::reset() {
    initialize();
    mpMatAnm->initialize();
    mLookat.initialize();
    for (int i = 0; i < 3; i++) {
        mActorMngr[i].initialize();
    }
    mpNextActionFn = NULL;
    mpActionFn = NULL;
    field_0xe04 = 0;
    field_0xe08 = 0;
    field_0xe0c = 0;
    field_0xe10 = 0;
    mLookMode = -1;
    mMode = 0;
    field_0xe1c = false;
    mItemID = -1;
    current.pos = home.pos;
    old.pos = current.pos;
    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;
    speedF = 0.0f;
    speed.setall(0.0f);
    field_0x9ee = 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcThe_c::reset() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/reset__10daNpcThe_cFv.s"
}
#pragma pop
#endif

/* 80AF98D0-80AF9904 0022F0 0034+00 1/0 0/0 0/0 .text            daNpcThe_Delete__FPv */
static int daNpcThe_Delete(void* i_this) {
    static_cast<daNpcThe_c*>(i_this)->~daNpcThe_c();
    return 1;
}

/* 80AF9904-80AF9924 002324 0020+00 1/0 0/0 0/0 .text            daNpcThe_Execute__FPv */
static int daNpcThe_Execute(void* i_this) {
    return static_cast<daNpcThe_c*>(i_this)->execute();
}

#ifdef NONMATCHING
// matches with data
int daNpcThe_c::Draw() {
    mpMorf->getModel()->getModelData()->getMaterialNodePointer(2)->setMaterialAnm(mpMatAnm);
    ActionFn action_test = &test;
    int is_test = mpActionFn == action_test;
    return draw(is_test, false, daNpcThe_Param_c::m.mShadowDepth, NULL, false);
}
#endif

/* 80AF9924-80AF99BC 002344 0098+00 1/0 0/0 0/0 .text            daNpcThe_Draw__FPv */
#ifdef NONMATCHING
// matches with data
static int daNpcThe_Draw(void* i_this) {
    return static_cast<daNpcThe_c*>(i_this)->Draw();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daNpcThe_Draw(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/daNpcThe_Draw__FPv.s"
}
#pragma pop
#endif

/* 80AF99BC-80AF99C4 0023DC 0008+00 1/0 0/0 0/0 .text            daNpcThe_IsDelete__FPv */
static int daNpcThe_IsDelete(void* i_this) {
    return 1;
}

/* 80AF99C4-80AF99F4 0023E4 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" asm void calc__11J3DTexNoAnmCFPUs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/calc__11J3DTexNoAnmCFPUs.s"
}
#pragma pop

/* 80AF99F4-80AF9CF0 002414 02FC+00 1/0 0/0 0/0 .text            setParam__10daNpcThe_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpcThe_c::setParam() {
    if (mActorMngr[2].getActorP() == NULL) {
        mActorMngr[2].entry(getEvtAreaTagP(19, 0));
    }

    ActionFn next_action = mpNextActionFn;
    mpNextActionFn = NULL;
    if (daNpcThe_Param_c::m.mTest) {
        mpNextActionFn = &test;
    } else if (mTwilight) {
        mpNextActionFn = &waitTW;
    } else {
        mpNextActionFn = &wait;
    }
    if (mpNextActionFn != next_action) {
        for (int i = 3; i < 3; i++) {
            mActorMngr[i].initialize();
        }
    }

    int speak_angle_idx = mType == TYPE_KAKARIKO ? (s16)1 : daNpcThe_Param_c::m.mSpeakAngleIdx;
    int talk_angle_idx = mType == TYPE_KAKARIKO ? (s16)1 : daNpcThe_Param_c::m.mTalkAngleIdx;
    attention_info.flags = 0xa;
    if (isSneaking()) {
        attention_info.distances[fopAc_attn_LOCK_e] = 0x4e;
        attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
        attention_info.distances[fopAc_attn_SPEAK_e] = 0x4d;
        attention_info.flags |= 0x800000;
    } else {
        if (!strcmp(dComIfGp_getStartStageName(), "R_SP116")) {
            attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(daNpcThe_Param_c::m.mTalkDistIdx,
                                                          talk_angle_idx);
            attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
            attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(daNpcThe_Param_c::m.mSpeakDistIdx + 1,
                                                          speak_angle_idx);
        } else {
            attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(daNpcThe_Param_c::m.mTalkDistIdx,
                                                          talk_angle_idx);
            attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
            attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(daNpcThe_Param_c::m.mSpeakDistIdx,
                                                          speak_angle_idx);
        }
    }

    scale.setall(daNpcThe_Param_c::m.mScale);
    mAcchCir.SetWallR(daNpcThe_Param_c::m.mWallR);
    mAcchCir.SetWallH(daNpcThe_Param_c::m.mWallH);
    gravity = daNpcThe_Param_c::m.mGravity;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcThe_c::setParam() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/setParam__10daNpcThe_cFv.s"
}
#pragma pop
#endif

/* 80AF9CF0-80AF9F94 002710 02A4+00 1/0 0/0 0/0 .text            main__10daNpcThe_cFv */
#ifdef NONMATCHING
// dComIfG_gameInfo issues
BOOL daNpcThe_c::main() {
    if (!doEvent()) {
        doNormalAction();
    }

    if (field_0x9ee) {
        mExpressionMorfOverride = 0.0f;
        mMotionMorfOverride = 0.0f;
        field_0x9ee = false;
    }

    if (checkHide()) {
        attention_info.flags = 0;
    }

    if (dComIfGp_event_runCheck() && !eventInfo.checkCommandTalk() && mItemID != -1) {
        dComIfGp_event_setItemPartnerId(mItemID);
        mItemID = -1;
    }

    if (!daNpcThe_Param_c::m.mTest
        && (dComIfGp_event_runCheck() == false
            || (mOrderNewEvt && dComIfGp_getEvent().isOrderOK())))
    {
        if (mOrderEvtNo != 0 && l_resNames[l_evtGetParamList[mOrderEvtNo]] != NULL) {
            eventInfo.setArchiveName(l_resNames[l_evtGetParamList[mOrderEvtNo]]);
        }
        if (!strcmp(dComIfGp_getStartStageName(), "R_SP116")) {
            eventInfo.i_onCondition(0x20);
        }
        orderEvent(field_0xe1c, l_evtNames[mOrderEvtNo], 0xffff, 0x28, 0xff, 1);
    }

    playExpression();
    playMotion();
    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpcThe_c::main() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/main__10daNpcThe_cFv.s"
}
#pragma pop
#endif

/* 80AF9F94-80AFA338 0029B4 03A4+00 1/1 0/0 0/0 .text            playMotion__10daNpcThe_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpcThe_c::playMotion() {
    daNpcF_anmPlayData dat0 = {ANM_WAIT_A, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1a = {ANM_LOOK_A, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData dat1b = {ANM_WAIT_LOOKING, 0.0f, 0};
    daNpcF_anmPlayData* pDat1[2] = {&dat1a, &dat1b};
    daNpcF_anmPlayData dat2a = {ANM_TO_WAIT_B, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData dat2b = {ANM_WAIT_B, 0.0f, 0};
    daNpcF_anmPlayData* pDat2[2] = {&dat2a, &dat2b};
    daNpcF_anmPlayData dat3 = {ANM_WAIT_LOOKUP, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat3[1] = {&dat3};
    daNpcF_anmPlayData dat4a = {ANM_KUNE_TALK, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData dat4b = {ANM_KUNE_WAIT_B, 0.0f, 0};
    daNpcF_anmPlayData* pDat4[2] = {&dat4a, &dat4b};
    daNpcF_anmPlayData dat5 = {ANM_KUNE_WAIT_A, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5};
    daNpcF_anmPlayData dat6a = {ANM_KUNE_SHISHI, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData dat6b = {ANM_KUNE_WAIT_A, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat6[2] = {&dat6a, &dat6b};
    daNpcF_anmPlayData dat7 = {ANM_WAIT_B, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};
    daNpcF_anmPlayData dat8 = {ANM_KUNE_WAIT_B, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat8[1] = {&dat8};
    daNpcF_anmPlayData dat9a = {ANM_TALK_R, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData dat9b = {ANM_TALKING_R, 0.0f, 0};
    daNpcF_anmPlayData* pDat9[2] = {&dat9a, &dat9b};
    daNpcF_anmPlayData dat10a = {ANM_LOOK, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData dat10b = {ANM_WAIT_LOOKING, 0.0f, 0};
    daNpcF_anmPlayData* pDat10[2] = {&dat10a, &dat10b};
    daNpcF_anmPlayData** ppDat[11] = {
        pDat0,
        pDat1,
        pDat2,
        pDat3,
        pDat4,
        pDat5,
        pDat6,
        pDat7,
        pDat8,
        pDat9,
        pDat10,
    };
    if (mMotion >= 0 && mMotion < 11) {
        playMotionAnm(ppDat);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcThe_c::playMotion() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/playMotion__10daNpcThe_cFv.s"
}
#pragma pop
#endif

/* 80AFA338-80AFA6CC 002D58 0394+00 1/1 0/0 0/0 .text            playExpression__10daNpcThe_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpcThe_c::playExpression() {
    daNpcF_anmPlayData dat0 = {ANM_F_TALK_A, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat0[2] = {&dat0, NULL};
    daNpcF_anmPlayData dat1 = {ANM_F_SMILE, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat1[2] = {&dat1, NULL};
    daNpcF_anmPlayData dat2 = {ANM_F_CHUCKLE, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat2[2] = {&dat2, NULL};
    daNpcF_anmPlayData dat3 = {ANM_F_TALK_B, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat3[2] = {&dat3, NULL};
    daNpcF_anmPlayData dat4 = {ANM_F_TALK_C, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat4[2] = {&dat4, NULL};
    daNpcF_anmPlayData dat5 = {ANM_F_LAUGH, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat5[2] = {&dat5, NULL};
    daNpcF_anmPlayData dat6 = {ANM_F_TALK_R, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat6[2] = {&dat6, NULL};
    daNpcF_anmPlayData dat7 = {ANM_FH_TALK_R, 0.0f, 0};
    daNpcF_anmPlayData* pDat7[2] = {&dat7, NULL};
    daNpcF_anmPlayData dat8 = {ANM_FH_SMILE, 0.0f, 0};
    daNpcF_anmPlayData* pDat8[2] = {&dat8, NULL};
    daNpcF_anmPlayData dat9 = {ANM_FH_CHUCKLE, 0.0f, 0};
    daNpcF_anmPlayData* pDat9[2] = {&dat9, NULL};
    daNpcF_anmPlayData dat10 = {ANM_FH_TALK_B, 0.0f, 0};
    daNpcF_anmPlayData* pDat10[2] = {&dat10, NULL};
    daNpcF_anmPlayData dat11 = {ANM_FH_TALK_C, 0.0f, 0};
    daNpcF_anmPlayData* pDat11[2] = {&dat11, NULL};
    daNpcF_anmPlayData dat12 = {ANM_FH_LAUGH, 0.0f, 0};
    daNpcF_anmPlayData* pDat12[2] = {&dat12, NULL};
    daNpcF_anmPlayData dat13 = {ANM_NONE, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat13[1] = {&dat13};
    daNpcF_anmPlayData** ppDat[14] = {
        pDat0,
        pDat1,
        pDat2,
        pDat3,
        pDat4,
        pDat5,
        pDat6,
        pDat7,
        pDat8,
        pDat9,
        pDat10,
        pDat11,
        pDat12,
        pDat13,
    };
    if (mExpression >= 0 && mExpression < 14) {
        playExpressionAnm(ppDat);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcThe_c::playExpression() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/playExpression__10daNpcThe_cFv.s"
}
#pragma pop
#endif

void daNpcThe_c::setExpressionTalkAfter() {
    switch (mExpression) {
    case EXPR_SMILE:
        setExpression(EXPR_H_SMILE, -1.0f);
        break;
    case EXPR_CHUCKLE:
        setExpression(EXPR_H_CHUCKLE, -1.0f);
        break;
    case EXPR_TALK_B:
        setExpression(EXPR_H_TALK_B, -1.0f);
        break;
    case EXPR_TALK_C:
        setExpression(EXPR_H_TALK_C, -1.0f);
        break;
    case EXPR_LAUGH:
        setExpression(EXPR_H_LAUGH, -1.0f);
        break;
    case EXPR_TALK_R:
        setExpression(EXPR_H_TALK_R, -1.0f);
        break;
    default:
        setExpression(EXPR_NONE, -1.0f);
        break;
    }
}

/* ############################################################################################## */
/* 80AFC158-80AFC158 00034C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AFC1C4 = "NO_RESPONSE";
#pragma pop

/* 80AFA6CC-80AFADEC 0030EC 0720+00 1/1 0/0 0/0 .text            doEvent__10daNpcThe_cFv */
#ifdef NONMATCHING
// regalloc and mr ordering
BOOL daNpcThe_c::doEvent() {
    BOOL ret = false;
    if (dComIfGp_event_runCheck() != false) {
        dEvent_manager_c& event_manager = dComIfGp_getEventManager();
        if (eventInfo.checkCommandTalk()) {
            if (mTwilight) {
                if (daNpcF_chkEvtBit(0x115)) {
                    mOrderEvtNo = 2;
                } else {
                    mOrderEvtNo = 1;
                }
                eventInfo.setArchiveName(l_resNames[l_evtGetParamList[mOrderEvtNo]]);
                event_manager.setObjectArchive(eventInfo.getArchiveName());
                mEventIdx = event_manager.getEventIdx(this, l_evtNames[mOrderEvtNo], 0xff);
                if (mEventIdx != -1) {
                    dComIfGp_getEvent().reset(this);
                    fopAcM_orderChangeEventId(this, mEventIdx, 1, 0xffff);
                }
            } else if (dComIfGp_event_chkTalkXY()) {
                if (!dComIfGp_evmng_ChkPresentEnd()) {
                    return true;
                }
                u8 item_no = dComIfGp_event_getPreItemNo();
                if (item_no == 0x80) {
                    mFlowID = 0x430;
                    if (chkAction(&talk)) {
                        (this->*mpActionFn)(NULL);
                    } else {
                        setAction(&talk);
                    }
                } else if (item_no == 0x81) {
                    mFlowID = 0x431;
                    if (chkAction(&talk)) {
                        (this->*mpActionFn)(NULL);
                    } else {
                        setAction(&talk);
                    }
                } else {
                    s16 event_idx
                        = dComIfGp_getEventManager().getEventIdx(this, "NO_RESPONSE", 0xff);
                    dComIfGp_getEvent().reset(this);
                    fopAcM_orderChangeEventId(this, event_idx, 1, 0xffff);
                }
            } else {
                if (chkAction(&talk)) {
                    (this->*mpActionFn)(NULL);
                } else {
                    setAction(&talk);
                }
            }
            ret = true;
        } else {
            int staff_id = event_manager.getMyStaffId(l_myName, this, -1);
            if (staff_id != -1) {
                mCutIndex = staff_id;
                int act_idx = event_manager.getMyActIdx(staff_id, mEvtCutNameList, 4, 0, 0);
                if (act_idx > 0 && act_idx < 4) {
                    if ((this->*mEvtCutList[act_idx])(staff_id)) {
                        event_manager.cutEnd(staff_id);
                    }
                } else {
                    if ((this->*mEvtCutList[mOrderEvtNo])(staff_id)) {
                        event_manager.cutEnd(staff_id);
                    }
                }
                ret = true;
            }
            if (eventInfo.i_checkCommandDemoAccrpt() && mEventIdx != -1
                                                     && event_manager.endCheck(mEventIdx)) {
                dComIfGp_event_reset();
                mOrderEvtNo = 0;
                mEventIdx = -1;
            }
        }
        int expression, motion;
        int prev_msg_timer = mMsgTimer;
        if (ctrlMsgAnm(expression, motion, this, 0)) {
            if (!field_0x9eb) {
                setExpression(expression, -1.0f);
                setMotion(motion, -1.0f, false);
            }
        } else {
            if (prev_msg_timer != 0 && !field_0x9eb) {
                setExpressionTalkAfter();
            }
        }
    } else {
        mMsgTimer = 0;
        if (mCutIndex != -1) {
            mMode = 1;
            mCutIndex = -1;
        }
    }
    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpcThe_c::doEvent() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/doEvent__10daNpcThe_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80AFC12C-80AFC130 000320 0004+00 1/1 0/0 0/0 .rodata          @5324 */
SECTION_RODATA static f32 const lit_5324 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AFC12C, &lit_5324);

/* 80AFADEC-80AFAEC8 00380C 00DC+00 1/0 0/0 0/0 .text            ctrlBtk__10daNpcThe_cFv */
#ifdef NONMATCHING
// somehow this needs to not inline TSinCosTable<13,f32>::sinShort
BOOL daNpcThe_c::ctrlBtk() {
    if (mpMatAnm != NULL) {
        J3DAnmTextureSRTKey* anm = NULL;
        if (l_btkGetParamList[0].fileIdx >= 0) {
            anm = getTexSRTKeyAnmP(l_resNames[l_btkGetParamList[0].arcIdx],
                                   l_btkGetParamList[0].fileIdx);
        }
        if (anm == mBtkAnm.getBtkAnm()) {
            mpMatAnm->setNowOffsetX(cM_ssin(mEyeAngle.y) * 0.2f);
            mpMatAnm->setNowOffsetY(cM_ssin(mEyeAngle.x) * 0.2f);
            mpMatAnm->onEyeMoveFlag();
            return true;
        }
        mpMatAnm->offEyeMoveFlag();
    }
    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpcThe_c::ctrlBtk() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/ctrlBtk__10daNpcThe_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80AFC130-80AFC134 000324 0004+00 0/1 0/0 0/0 .rodata          @5398 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5398 = -10.0f;
COMPILER_STRIP_GATE(0x80AFC130, &lit_5398);
#pragma pop

/* 80AFC134-80AFC13C 000328 0008+00 0/1 0/0 0/0 .rodata          @5399 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5399[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC134, &lit_5399);
#pragma pop

/* 80AFC13C-80AFC144 000330 0008+00 0/1 0/0 0/0 .rodata          @5400 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5400[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC13C, &lit_5400);
#pragma pop

/* 80AFC144-80AFC14C 000338 0008+00 0/1 0/0 0/0 .rodata          @5401 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5401[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AFC144, &lit_5401);
#pragma pop

/* 80AFAEC8-80AFB1C4 0038E8 02FC+00 1/0 0/0 0/0 .text            setAttnPos__10daNpcThe_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpcThe_c::setAttnPos() {
    if (mLookMode == LOOK_RESET) {
        for (int i = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    setMtx();
    lookat();

    cXyz vec1(-10.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&vec1, &eyePos);
    vec1.y = 0.0f;
    mDoMtx_stack_c::multVec(&vec1, &vec1);
    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &vec1);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &vec1);
    
    cXyz* attn_pos = mLookat.getAttnPos();
    if (attn_pos != NULL) {
        cXyz vec2 = *attn_pos - eyePos;
        mEyeAngle.y = -(mLookatAngle[2].y + mCurAngle.y);
        mEyeAngle.y += cM_atan2s(vec2.x, vec2.z);
        mEyeAngle.x = mHeadAngle.x - cM_atan2s(vec2.y, vec2.absXZ());
    } else {
        mEyeAngle.y = 0;
        mEyeAngle.x = 0;
    }

    attention_info.position.set(current.pos.x,
                                current.pos.y + daNpcThe_Param_c::m.mAttnOffsetY,
                                current.pos.z);

    if (!mHide) {
        mColCyl.SetC(current.pos);
        dComIfG_Ccsp()->Set(&mColCyl);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcThe_c::setAttnPos() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/setAttnPos__10daNpcThe_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80AFC14C-80AFC150 000340 0004+00 0/1 0/0 0/0 .rodata          @5449 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5449 = -80.0f;
COMPILER_STRIP_GATE(0x80AFC14C, &lit_5449);
#pragma pop

/* 80AFC150-80AFC154 000344 0004+00 0/1 0/0 0/0 .rodata          @5450 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5450 = 80.0f;
COMPILER_STRIP_GATE(0x80AFC150, &lit_5450);
#pragma pop

/* 80AFC154-80AFC158 000348 0004+00 0/1 0/0 0/0 .rodata          @5451 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5451 = 40.0f;
COMPILER_STRIP_GATE(0x80AFC154, &lit_5451);
#pragma pop

/* 80AFB1C4-80AFB488 003BE4 02C4+00 1/1 0/0 0/0 .text            lookat__10daNpcThe_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpcThe_c::lookat() {
    fopAc_ac_c* actor = NULL;
    J3DModel* model = mpMorf->getModel();
    BOOL snap = false;
    f32 body_down_angle = daNpcThe_Param_c::m.mBodyDownAngle;
    f32 body_up_angle = daNpcThe_Param_c::m.mBodyUpAngle;
    f32 body_right_angle = daNpcThe_Param_c::m.mBodyRightAngle;
    f32 body_left_angle = daNpcThe_Param_c::m.mBodyLeftAngle;
    f32 head_down_angle = daNpcThe_Param_c::m.mHeadDownAngle;
    f32 head_up_angle = daNpcThe_Param_c::m.mHeadUpAngle;
    f32 head_right_angle = daNpcThe_Param_c::m.mHeadRightAngle;
    f32 head_left_angle = daNpcThe_Param_c::m.mHeadLeftAngle;
    s16 angle_delta = mCurAngle.y - mOldAngle.y;
    cXyz lookat_pos[3] = {mLookatPos[0], mLookatPos[1], mLookatPos[2]};
    csXyz* lookat_angle[3] = {&mLookatAngle[0], &mLookatAngle[1], &mLookatAngle[2]};

    switch (mLookMode) {
    case LOOK_RESET:
        snap = true;
        break;
    case LOOK_PLAYER_TALK:
        head_right_angle = -80.0f;
        head_left_angle = 80.0f;
        // no break
    case LOOK_PLAYER:
        actor = daPy_getPlayerActorClass();
        break;
    case LOOK_ACTOR:
        actor = fopAcM_SearchByName(PROC_NPC_ZRC);
        break;
    case LOOK_ATTN:
        break;
    }

    if (actor != NULL) {
        if (mLookMode == LOOK_ACTOR) {
            mLookPos = actor->eyePos;
        } else {
            mLookPos = actor->attention_info.position;
            if (mLookMode != LOOK_PLAYER && mLookMode != LOOK_PLAYER_TALK && mLookMode != LOOK_ATTN)
            {
                mLookPos.y -= 40.0f;
            }
        }
        mLookat.setAttnPos(&mLookPos);
    } else {
        mLookat.setAttnPos(NULL);
    }

    mLookat.setParam(body_down_angle, body_up_angle, body_right_angle, body_left_angle,
                     0.0f, 0.0f, 0.0f, 0.0f,
                     head_down_angle, head_up_angle, head_right_angle, head_left_angle,
                     mCurAngle.y, lookat_pos);
    mLookat.calc(this, model->getBaseTRMtx(), lookat_angle, snap, angle_delta, 0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcThe_c::lookat() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/lookat__10daNpcThe_cFv.s"
}
#pragma pop
#endif

/* 80AFB488-80AFB490 003EA8 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__10daNpcThe_cFv */
BOOL daNpcThe_c::drawDbgInfo() {
    return false;
}

/* 80AFB490-80AFB49C 003EB0 000C+00 1/1 0/0 0/0 .text sinShort__Q25JMath18TSinCosTable<13,f>CFs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80AFB490(void* _this, s16 param_0) /* const */ {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/func_80AFB490.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AFC65C-80AFC668 00048C 000C+00 2/2 0/0 0/0 .data            __vt__16daNpcThe_Param_c */
SECTION_DATA extern void* __vt__16daNpcThe_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daNpcThe_Param_cFv,
};

/* 80AFC670-80AFC67C 000008 000C+00 1/1 0/0 0/0 .bss             @3809 */
static u8 lit_3809[12];

/* 80AFC67C-80AFC680 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
#ifdef NONMATCHING
static daNpcThe_Param_c l_HIO;
#else
static u8 l_HIO[4];
#endif

/* 80AFB49C-80AFB558 003EBC 00BC+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_the_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_npc_the_cpp() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__sinit_d_a_npc_the_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80AFB49C, __sinit_d_a_npc_the_cpp);
#pragma pop

/* 80AFB558-80AFB5A0 003F78 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" asm void __dt__18daNpcF_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__dt__18daNpcF_ActorMngr_cFv.s"
}
#pragma pop

/* 80AFB5A0-80AFB5DC 003FC0 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" asm void __ct__18daNpcF_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__ct__18daNpcF_ActorMngr_cFv.s"
}
#pragma pop

/* 80AFB5DC-80AFB6AC 003FFC 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" asm void __dt__15daNpcF_Lookat_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__dt__15daNpcF_Lookat_cFv.s"
}
#pragma pop

/* 80AFB6AC-80AFB6E8 0040CC 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__dt__5csXyzFv.s"
}
#pragma pop

/* 80AFB6E8-80AFB6EC 004108 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80AFB6EC-80AFB728 00410C 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__dt__4cXyzFv.s"
}
#pragma pop

/* 80AFB728-80AFB72C 004148 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80AFB72C-80AFB978 00414C 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_c::~daNpcF_c() {
extern "C" asm void __dt__8daNpcF_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__dt__8daNpcF_cFv.s"
}
#pragma pop

/* 80AFB978-80AFBB68 004398 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_c::daNpcF_c() {
extern "C" asm void __ct__8daNpcF_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__ct__8daNpcF_cFv.s"
}
#pragma pop

/* 80AFBB68-80AFBBD8 004588 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80AFBBD8-80AFBC34 0045F8 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80AFBC34-80AFBCA4 004654 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80AFBCA4-80AFBCEC 0046C4 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80AFBCEC-80AFBCF0 00470C 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" asm void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80AFBCF0-80AFBCF4 004710 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__8daNpcF_cFv */
// void daNpcF_c::drawOtherMdls() {
extern "C" asm void drawOtherMdls__8daNpcF_cFv() {
    /* empty function */
}

/* 80AFBCF4-80AFBD3C 004714 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80AFBD3C-80AFBD9C 00475C 0060+00 1/1 0/0 0/0 .text chkPointInArea__15daTag_EvtArea_cF4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daTag_EvtArea_c::chkPointInArea(cXyz param_0) {
extern "C" asm void chkPointInArea__15daTag_EvtArea_cF4cXyz() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/chkPointInArea__15daTag_EvtArea_cF4cXyz.s"
}
#pragma pop

/* 80AFBD9C-80AFBDA0 0047BC 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__10daNpcThe_cFv */
void daNpcThe_c::adjustShapeAngle() {
    /* empty function */
}

/* 80AFBDA0-80AFBDE8 0047C0 0048+00 2/1 0/0 0/0 .text            __dt__16daNpcThe_Param_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcThe_Param_c::~daNpcThe_Param_c() {
extern "C" asm void __dt__16daNpcThe_Param_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/__dt__16daNpcThe_Param_cFv.s"
}
#pragma pop

/* 80AFBDE8-80AFBDF0 004808 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80AFBDE8() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/func_80AFBDE8.s"
}
#pragma pop

/* 80AFBDF0-80AFBDF8 004810 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80AFBDF0() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_the/d_a_npc_the/func_80AFBDF0.s"
}
#pragma pop

/* 80AFC158-80AFC158 00034C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
