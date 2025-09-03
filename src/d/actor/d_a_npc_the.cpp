/**
 * d_a_npc_the.cpp
 * NPC - Telma
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_the.h"
#include "SSystem/SComponent/c_math.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "d/actor/d_a_tag_evtarea.h"
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

/* 80AFC67C-80AFC680 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpcThe_Param_c l_HIO;

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
static int l_evtGetParamList[4] = {
    0, 3, 3, 0,
};

/* 80AFC3A0-80AFC3B0 -00001 0010+00 0/2 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[4] = {
    NULL,
    "TW_RESISTANCE1",
    "TW_RESISTANCE2",
    "THE_INTRODUCTION",
};

/* 80AFC3B0-80AFC3B4 -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
static char* l_myName = "The";

/* 80AFC3B4-80AFC3C4 -00001 0010+00 0/1 0/0 0/0 .data            mEvtCutNameList__10daNpcThe_c */
char* daNpcThe_c::mEvtCutNameList[4] = {
    "",
    "TW_RESISTANCE",
    "TW_RESISTANCE",
    "THE_INTRODUCTION",
};

daNpcThe_c::EventFn daNpcThe_c::mEvtCutList[4] = {
    NULL,
    &EvCut_TwResistance,
    &EvCut_TwResistance,
    &EvCut_Introduction,
};

int daNpcThe_c::Draw() {
    mpMorf->getModel()->getModelData()->getMaterialNodePointer(2)->setMaterialAnm(mpMatAnm);
    ActionFn action_test = &test;
    int is_test = mpActionFn == action_test;
    return draw(is_test, false, daNpcThe_Param_c::m.mShadowDepth, NULL, false);
}

/* 80AF76CC-80AF7850 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__10daNpcThe_cFv */
// NONMATCHING daNpcF_c constructor needs to not be inlined
daNpcThe_c::daNpcThe_c() {
    /* empty function */
}

/* 80AF78E0-80AF7AE0 000300 0200+00 1/0 0/0 0/0 .text            __dt__10daNpcThe_cFv */
daNpcThe_c::~daNpcThe_c() {
    for (int i = 0; l_loadRes_list[mType][i] >= 0; i++) {
        dComIfG_resDelete(&mPhase[i], l_resNames[l_loadRes_list[mType][i]]);
    }
    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
}

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
    8,          // mDamageTimer
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

/* 80AF7CB0-80AF7F58 0006D0 02A8+00 1/1 0/0 0/0 .text
 * createHeapCallBack__10daNpcThe_cFP10fopAc_ac_c               */
int daNpcThe_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpcThe_c*>(i_this)->CreateHeap();
}

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
bool daNpcThe_c::setExpressionAnm(int i_idx, bool i_modify) {
    J3DAnmTransform* anm = NULL;
    int attr = J3DFrameCtrl::EMode_NONE;
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
        attr = J3DFrameCtrl::EMode_LOOP;
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
        attr = J3DFrameCtrl::EMode_LOOP;
        break;
    case ANM_FH_CHUCKLE:
        res = setExpressionBtp(9);
        attr = J3DFrameCtrl::EMode_LOOP;
        break;
    case ANM_FH_TALK_B:
        res = setExpressionBtp(10);
        attr = J3DFrameCtrl::EMode_LOOP;
        break;
    case ANM_FH_TALK_C:
        res = setExpressionBtp(11);
        attr = J3DFrameCtrl::EMode_LOOP;
        break;
    case ANM_FH_LAUGH:
        res = setExpressionBtp(12);
        attr = J3DFrameCtrl::EMode_LOOP;
        break;
    case ANM_FH_TALK_R:
        res = setExpressionBtp(13);
        attr = J3DFrameCtrl::EMode_LOOP;
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

/* 80AF841C-80AF8564 000E3C 0148+00 2/0 0/0 0/0 .text            setExpressionBtp__10daNpcThe_cFi */
bool daNpcThe_c::setExpressionBtp(int i_idx) {
    J3DAnmTexPattern* anm = NULL;
    mAnmFlags &= ~(ANM_PAUSE_BTP | ANM_PLAY_BTP | ANM_FLAG_800);

    if (l_btpGetParamList[i_idx].fileIdx >= 0) {
        anm = getTexPtrnAnmP(l_resNames[l_btpGetParamList[i_idx].arcIdx],
                             l_btpGetParamList[i_idx].fileIdx);
    }

    int attr = J3DFrameCtrl::EMode_NONE;
    switch (i_idx) {
    case 0:
        attr = J3DFrameCtrl::EMode_LOOP;
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
        break;
    case 4:
        attr = J3DFrameCtrl::EMode_LOOP;
        break;
    case 5:
        break;
    case 6:
        break;
    case 7:
        break;
    case 8:
        attr = J3DFrameCtrl::EMode_LOOP;
        break;
    case 9:
        attr = J3DFrameCtrl::EMode_LOOP;
        break;
    case 10:
        attr = J3DFrameCtrl::EMode_LOOP;
        break;
    case 11:
        attr = J3DFrameCtrl::EMode_LOOP;
        break;
    case 12:
        attr = J3DFrameCtrl::EMode_LOOP;
        break;
    case 13:
        attr = J3DFrameCtrl::EMode_LOOP;
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

/* 80AF8564-80AF8744 000F84 01E0+00 2/0 0/0 0/0 .text            setMotionAnm__10daNpcThe_cFif */
void daNpcThe_c::setMotionAnm(int i_idx, f32 i_morf) {
    J3DAnmTransformKey* anm_trans = NULL;
    J3DAnmTextureSRTKey* anm_tex = NULL;
    int attr = J3DFrameCtrl::EMode_LOOP;
    mAnmFlags &= ~ANM_MOTION_FLAGS;

    if (l_bckGetParamList[i_idx].fileIdx >= 0) {
        anm_trans = getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[i_idx].arcIdx],
                                      l_bckGetParamList[i_idx].fileIdx);
    }

    switch (i_idx) {
    case ANM_WAIT_A:
        attr = J3DFrameCtrl::EMode_LOOP;
        break;
    case ANM_WAIT_LOOKING:
        attr = J3DFrameCtrl::EMode_LOOP;
        break;
    case ANM_TO_WAIT_B:
        attr = J3DFrameCtrl::EMode_NONE;
        break;
    case ANM_WAIT_B:
        attr = J3DFrameCtrl::EMode_LOOP;
        break;
    case ANM_WAIT_LOOKUP:
        attr = J3DFrameCtrl::EMode_LOOP;
        break;
    case ANM_TALK_R:
        attr = J3DFrameCtrl::EMode_NONE;
        break;
    case ANM_TALKING_R:
        attr = J3DFrameCtrl::EMode_LOOP;
        break;
    case ANM_LOOK_A:
        attr = J3DFrameCtrl::EMode_NONE;
        break;
    case ANM_LOOK:
        attr = J3DFrameCtrl::EMode_NONE;
        break;
    case ANM_KUNE_WAIT_A:
        attr = J3DFrameCtrl::EMode_LOOP;
        break;
    case ANM_KUNE_TALK:
        attr = J3DFrameCtrl::EMode_NONE;
        break;
    case ANM_KUNE_WAIT_B:
        attr = J3DFrameCtrl::EMode_LOOP;
        break;
    case ANM_KUNE_SHISHI:
        attr = J3DFrameCtrl::EMode_NONE;
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

/* 80AFA338-80AFA6CC 002D58 0394+00 1/1 0/0 0/0 .text            playExpression__10daNpcThe_cFv */
void daNpcThe_c::playExpression() {
    daNpcF_anmPlayData dat0 = {ANM_F_TALK_A, daNpcThe_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData* pDat0[2] = {&dat0, NULL};
    daNpcF_anmPlayData dat1 = {ANM_F_SMILE, daNpcThe_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData* pDat1[2] = {&dat1, NULL};
    daNpcF_anmPlayData dat2 = {ANM_F_CHUCKLE, daNpcThe_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData* pDat2[2] = {&dat2, NULL};
    daNpcF_anmPlayData dat3 = {ANM_F_TALK_B, daNpcThe_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData* pDat3[2] = {&dat3, NULL};
    daNpcF_anmPlayData dat4 = {ANM_F_TALK_C, daNpcThe_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData* pDat4[2] = {&dat4, NULL};
    daNpcF_anmPlayData dat5 = {ANM_F_LAUGH, daNpcThe_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData* pDat5[2] = {&dat5, NULL};
    daNpcF_anmPlayData dat6 = {ANM_F_TALK_R, daNpcThe_Param_c::m.mMorfFrames, 1};
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

/* 80AF9F94-80AFA338 0029B4 03A4+00 1/1 0/0 0/0 .text            playMotion__10daNpcThe_cFv */
void daNpcThe_c::playMotion() {
    daNpcF_anmPlayData dat0 = {ANM_WAIT_A, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1a = {ANM_LOOK_A, daNpcThe_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat1b = {ANM_WAIT_LOOKING, 0.0f, 0};
    daNpcF_anmPlayData* pDat1[2] = {&dat1a, &dat1b};
    daNpcF_anmPlayData dat2a = {ANM_TO_WAIT_B, daNpcThe_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat2b = {ANM_WAIT_B, 0.0f, 0};
    daNpcF_anmPlayData* pDat2[2] = {&dat2a, &dat2b};
    daNpcF_anmPlayData dat3 = {ANM_WAIT_LOOKUP, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat3[1] = {&dat3};
    daNpcF_anmPlayData dat4a = {ANM_KUNE_TALK, daNpcThe_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat4b = {ANM_KUNE_WAIT_B, 0.0f, 0};
    daNpcF_anmPlayData* pDat4[2] = {&dat4a, &dat4b};
    daNpcF_anmPlayData dat5 = {ANM_KUNE_WAIT_A, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5};
    daNpcF_anmPlayData dat6a = {ANM_KUNE_SHISHI, daNpcThe_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat6b = {ANM_KUNE_WAIT_A, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat6[2] = {&dat6a, &dat6b};
    daNpcF_anmPlayData dat7 = {ANM_WAIT_B, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};
    daNpcF_anmPlayData dat8 = {ANM_KUNE_WAIT_B, daNpcThe_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat8[1] = {&dat8};
    daNpcF_anmPlayData dat9a = {ANM_TALK_R, daNpcThe_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat9b = {ANM_TALKING_R, 0.0f, 0};
    daNpcF_anmPlayData* pDat9[2] = {&dat9a, &dat9b};
    daNpcF_anmPlayData dat10a = {ANM_LOOK, daNpcThe_Param_c::m.mMorfFrames, 1};
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

/* 80AFC114-80AFC120 000308 000C+00 0/1 0/0 0/0 .rodata          @4676 */
static u8 const lit_4676[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AF8744-80AF8B0C 001164 03C8+00 1/0 0/0 0/0 .text            wait__10daNpcThe_cFPv */
BOOL daNpcThe_c::wait(void* param_0) {
    switch (mMode) {
    case 0:
        mAttnChangeTimer = 0;
        // fallthrough

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
BOOL daNpcThe_c::waitTW(void* param_0) {
    switch (mMode) {
    case 0:
        mAttnChangeTimer = 0;
        // fallthrough

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

/* 80AF8CC4-80AF912C 0016E4 0468+00 6/0 0/0 0/0 .text            talk__10daNpcThe_cFPv */
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
        // fallthrough

    case 3:
    default:
        break;
    }
    return ret;
}

/* 80AF912C-80AF923C 001B4C 0110+00 2/0 0/0 0/0 .text            test__10daNpcThe_cFPv */
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
        // fallthrough

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

/* 80AF923C-80AF9244 001C5C 0008+00 2/0 0/0 0/0 .text            EvCut_TwResistance__10daNpcThe_cFi
 */
BOOL daNpcThe_c::EvCut_TwResistance(int i_staffID) {
    return true;
}

/* 80AF9244-80AF9338 001C64 00F4+00 1/0 0/0 0/0 .text            EvCut_Introduction__10daNpcThe_cFi
 */
BOOL daNpcThe_c::EvCut_Introduction(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    int* cut_name = (int*)event_manager.getMyNowCutName(i_staffID);
    if (event_manager.getIsAddvance(i_staffID)) {
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

    if (mType == TYPE_KAKARIKO
             /* dSv_event_flag_c::M_035 - Cutscene - [cutscene: 35] after carriage guarding event */
        && (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[68])
           /* dSv_event_flag_c::M_045 - Lakebed Temple - Lakebed Temple clear */
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

/* 80AF98D0-80AF9904 0022F0 0034+00 1/0 0/0 0/0 .text            daNpcThe_Delete__FPv */
static int daNpcThe_Delete(void* i_this) {
    static_cast<daNpcThe_c*>(i_this)->~daNpcThe_c();
    return 1;
}

/* 80AF9904-80AF9924 002324 0020+00 1/0 0/0 0/0 .text            daNpcThe_Execute__FPv */
static int daNpcThe_Execute(void* i_this) {
    return static_cast<daNpcThe_c*>(i_this)->execute();
}

/* 80AF9924-80AF99BC 002344 0098+00 1/0 0/0 0/0 .text            daNpcThe_Draw__FPv */
static int daNpcThe_Draw(void* i_this) {
    return static_cast<daNpcThe_c*>(i_this)->Draw();
}


/* 80AF99BC-80AF99C4 0023DC 0008+00 1/0 0/0 0/0 .text            daNpcThe_IsDelete__FPv */
static int daNpcThe_IsDelete(void* i_this) {
    return 1;
}

/* 80AF99F4-80AF9CF0 002414 02FC+00 1/0 0/0 0/0 .text            setParam__10daNpcThe_cFv */
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
            attention_info.distances[fopAc_attn_LOCK_e]
                = getDistTableIdx(daNpcThe_Param_c::m.mTalkDistIdx, talk_angle_idx);
            attention_info.distances[fopAc_attn_TALK_e]
                = attention_info.distances[fopAc_attn_LOCK_e];
            attention_info.distances[fopAc_attn_SPEAK_e]
                = getDistTableIdx(daNpcThe_Param_c::m.mSpeakDistIdx + 1, speak_angle_idx);
        } else {
            attention_info.distances[fopAc_attn_LOCK_e]
                = getDistTableIdx(daNpcThe_Param_c::m.mTalkDistIdx, talk_angle_idx);
            attention_info.distances[fopAc_attn_TALK_e]
                = attention_info.distances[fopAc_attn_LOCK_e];
            attention_info.distances[fopAc_attn_SPEAK_e]
                = getDistTableIdx(daNpcThe_Param_c::m.mSpeakDistIdx, speak_angle_idx);
        }
    }

    scale.setall(daNpcThe_Param_c::m.mScale);
    mAcchCir.SetWallR(daNpcThe_Param_c::m.mWallR);
    mAcchCir.SetWallH(daNpcThe_Param_c::m.mWallH);
    gravity = daNpcThe_Param_c::m.mGravity;
}


/* 80AF9CF0-80AF9F94 002710 02A4+00 1/0 0/0 0/0 .text            main__10daNpcThe_cFv */
// NONMATCHING dComIfG_gameInfo issues
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
        && (dComIfGp_event_runCheck() == FALSE
            || (mOrderNewEvt && dComIfGp_getEvent().isOrderOK())))
    {
        if (mOrderEvtNo != 0 && l_resNames[l_evtGetParamList[mOrderEvtNo]] != NULL) {
            eventInfo.setArchiveName(l_resNames[l_evtGetParamList[mOrderEvtNo]]);
        }
        if (!strcmp(dComIfGp_getStartStageName(), "R_SP116")) {
            eventInfo.onCondition(0x20);
        }
        orderEvent(field_0xe1c, l_evtNames[mOrderEvtNo], 0xffff, 0x28, 0xff, 1);
    }

    playExpression();
    playMotion();
    return true;
}

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

/* 80AFA6CC-80AFADEC 0030EC 0720+00 1/1 0/0 0/0 .text            doEvent__10daNpcThe_cFv */
BOOL daNpcThe_c::doEvent() {
    BOOL ret = false;
    if (dComIfGp_event_runCheck() != false) {
        dEvent_manager_c& event_manager = dComIfGp_getEventManager();
        if (eventInfo.checkCommandTalk()) {
            if (mTwilight) {
                    /* dSv_event_flag_c::F_0277 - Castle Town - Hear conversation between Telma and Ilia in Telma's shop (Twilight) */
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
            s32 staff_id = event_manager.getMyStaffId(l_myName, this, -1);
            if (staff_id != -1) {
                mStaffID = staff_id;
                int act_idx = event_manager.getMyActIdx(staff_id, mEvtCutNameList,
                                                        ARRAY_SIZE(mEvtCutNameList), 0, 0);
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
            if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1
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
        if (mStaffID != -1) {
            mMode = 1;
            mStaffID = -1;
        }
    }
    return ret;
}

/* 80AFADEC-80AFAEC8 00380C 00DC+00 1/0 0/0 0/0 .text            ctrlBtk__10daNpcThe_cFv */
// NONMATCHING somehow this needs to not inline TSinCosTable<13,f32>::sinShort
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

/* 80AFAEC8-80AFB1C4 0038E8 02FC+00 1/0 0/0 0/0 .text            setAttnPos__10daNpcThe_cFv */
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

/* 80AFB1C4-80AFB488 003BE4 02C4+00 1/1 0/0 0/0 .text            lookat__10daNpcThe_cFv */
// NONMATCHING rodata problems
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
        // fallthrough
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


/* 80AFB488-80AFB490 003EA8 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__10daNpcThe_cFv */
BOOL daNpcThe_c::drawDbgInfo() {
    return false;
}

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
    &g_fpcLf_Method.base,
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
