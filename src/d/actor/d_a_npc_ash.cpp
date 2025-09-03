/**
 * d_a_npc_ash.cpp
 * NPC - Ashei
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_ash.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_tag_evtarea.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__10daNpcAsh_cFv();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10daNpcAsh_cFv();
extern "C" void Create__10daNpcAsh_cFv();
extern "C" void CreateHeap__10daNpcAsh_cFv();
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
extern "C" void Delete__10daNpcAsh_cFv();
extern "C" void Execute__10daNpcAsh_cFv();
extern "C" void Draw__10daNpcAsh_cFv();
extern "C" void ctrlJoint__10daNpcAsh_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__10daNpcAsh_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__10daNpcAsh_cFP8J3DJointi();
extern "C" void setExpressionAnm__10daNpcAsh_cFib();
extern "C" void setExpressionBtp__10daNpcAsh_cFi();
extern "C" void setMotionAnm__10daNpcAsh_cFif();
extern "C" void reset__10daNpcAsh_cFv();
extern "C" void setAction__10daNpcAsh_cFM10daNpcAsh_cFPCvPvPv_b();
extern "C" void isSneaking__10daNpcAsh_cFv();
extern "C" void wait_type0__10daNpcAsh_cFPv();
extern "C" void setMotion__10daNpcAsh_cFifi();
extern "C" void setExpression__10daNpcAsh_cFif();
extern "C" void wait_type1__10daNpcAsh_cFPv();
extern "C" void talk__10daNpcAsh_cFPv();
extern "C" void demo__10daNpcAsh_cFPv();
extern "C" void leave__10daNpcAsh_cFPv();
extern "C" void EvCut_Introduction__10daNpcAsh_cFi();
extern "C" void EvCut_Meeting__10daNpcAsh_cFi();
extern "C" void EvCut_WiretapSponsor__10daNpcAsh_cFi();
extern "C" void EvCut_WiretapEntrant__10daNpcAsh_cFi();
extern "C" static void daNpcAsh_Create__FPv();
extern "C" static void daNpcAsh_Delete__FPv();
extern "C" static void daNpcAsh_Execute__FPv();
extern "C" static void daNpcAsh_Draw__FPv();
extern "C" static bool daNpcAsh_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void setParam__10daNpcAsh_cFv();
extern "C" void main__10daNpcAsh_cFv();
extern "C" void playMotion__10daNpcAsh_cFv();
extern "C" void ctrlBtk__10daNpcAsh_cFv();
extern "C" void setAttnPos__10daNpcAsh_cFv();
extern "C" void lookat__10daNpcAsh_cFv();
extern "C" bool drawDbgInfo__10daNpcAsh_cFv();
extern "C" void func_8095CC94(void* _this, s16);
extern "C" void __sinit_d_a_npc_ash_cpp();
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
extern "C" void __dt__16daNpcAsh_Param_cFv();
extern "C" static void func_8095D61C();
extern "C" static void func_8095D624();
extern "C" u8 const m__16daNpcAsh_Param_c[108];
extern "C" extern char* const d_a_npc_ash__stringBase0;
extern "C" u8 mEvtSeqList__10daNpcAsh_c[72];

//
// External References:
//

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
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGs_isStageSwitch__Fii();
extern "C" void isSwitch__12dSv_memBit_cCFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void convPId__14dEvt_control_cFUi();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMyNowCutName__16dEvent_manager_cFi();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void __ct__12dBgS_AcchCirFv();
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
extern "C" void daNpcF_chkTmpBit__FUl();
extern "C" void daNpcF_offTmpBit__FUl();
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
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz();
extern "C" void __register_global_object();

//
// Declarations:
//

/* 8095DD4C-8095DD50 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpcAsh_Param_c l_HIO;

void daNpcAsh_c::setLookMode(int i_lookMode, fopAc_ac_c* i_talkPartner) {
    if (i_lookMode != mLookMode || i_talkPartner != mTalkPartner) {
        mLookMode = i_lookMode;
        mTalkPartner = i_talkPartner;
    }
}

void daNpcAsh_c::searchActors() {
    if (!mActorMngr[1].getActorP()) {
        mActorMngr[1].entry(fopAcM_SearchByName(PROC_NPC_SHAD));
    }
    if (!mActorMngr[2].getActorP()) {
        mActorMngr[2].entry(fopAcM_SearchByName(PROC_NPC_RAFREL));
    }
    if (!mActorMngr[3].getActorP()) {
        mActorMngr[3].entry(fopAcM_SearchByName(PROC_NPC_MOIR));
    }
    if (isMap() && !mActorMngr[4].getActorP()) {
        mActorMngr[4].entry(fopAcM_SearchByName(PROC_Obj_Table));
    }
    if (!mActorMngr[5].getActorP()) {
        mActorMngr[5].entry(getEvtAreaTagP(17, 0));
    }
}

BOOL daNpcAsh_c::chkFindPlayer() {
    BOOL ret;
    if (!chkActorInSight(daPy_getPlayerActorClass(), daNpcAsh_Param_c::m.mAttnFovY)) {
        mActorMngr[0].remove();
        ret = false;
    } else {
        if (mActorMngr[0].getActorP() == NULL) {
            ret = chkPlayerInSpeakArea(this);
        } else {
            ret = chkPlayerInTalkArea(this);
        }
        if (ret) {
            mActorMngr[0].entry(daPy_getPlayerActorClass());
        } else {
            mActorMngr[0].remove();
        }
    }
    return ret;
}

bool daNpcAsh_c::step(s16 i_angY, bool i_animate) {
    if (mTurnMode == 0) {
        if (i_animate) {
            if ((s32)fabsf(cM_sht2d((f32)(s16)(i_angY - mCurAngle.y))) > 40) {
                setExpression(EXPR_NONE, -1.0f);
                setMotion(MOT_STEP, -1.0f, false);
            }
        }
        mTurnTargetAngle = i_angY;
        mTurnAmount = 0;
        if (mCurAngle.y == mTurnTargetAngle) {
            mTurnMode++;
        }
        current.angle.y = mCurAngle.y;
        shape_angle.y = current.angle.y;
        mTurnMode++;
    } else if (mTurnMode == 1) {
        if (turn(mTurnTargetAngle, 15.0f, 0)) {
            shape_angle.y = current.angle.y;
            mCurAngle.y = current.angle.y;
            mOldAngle.y = current.angle.y;
            mTurnMode++;
        } else {
            shape_angle.y = current.angle.y;
            mCurAngle.y = current.angle.y;
        }
    }
    return mTurnMode > 1;
}

/* 8095D9B0-8095DA88 000020 00D8+00 1/2 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam2 l_bckGetParamList[18] = {
    {-1, 2, 0}, // <none>
    {7, 0, 0},  // ash_f_talk_a
    {12, 0, 1}, // ash_f_talk_b
    {11, 0, 1}, // ash_f_silent
    {8, 0, 1},  // ash_f_cool
    {7, 0, 1},  // ash_f_ask
    {9, 0, 1},  // ash_f_explain_a
    {10, 0, 1}, // ash_f_explain_b
    {8, 2, 0},  // ash_wait_a
    {14, 2, 1}, // ash_wait_b
    {15, 2, 1}, // ash_wait_c
    {13, 0, 1}, // ash_step
    {4, 0, 1},  // ash_cool
    {3, 0, 1},  // ash_ask
    {5, 0, 1},  // ash_explain_a
    {6, 0, 1},  // ash_explain_b
    {5, 2, 2},  // ash_bowwait
    {4, 2, 2},  // ash_bowrun
};

/* 8095DA88-8095DA94 0000F8 000C+00 1/1 0/0 0/0 .data            l_btpGetParamList */
static daNpc_GetParam2 l_btpGetParamList[1] = {
    {17, 2, 0}, // ash
};

/* 8095DA94-8095DAA0 000104 000C+00 0/1 0/0 0/0 .data            l_btkGetParamList */
static daNpc_GetParam2 l_btkGetParamList[1] = {
    {14, 2, 0}, // ash
};

/* 8095DAA0-8095DAAC 000110 000C+00 1/0 0/0 0/0 .data            l_loadRes_ASH0 */
static int l_loadRes_ASH0[3] = {
    0, 1, -1,
};

/* 8095DAAC-8095DAB8 00011C 000C+00 1/0 0/0 0/0 .data            l_loadRes_ASH1 */
static int l_loadRes_ASH1[3] = {
    0, 2, -1,
};

/* 8095DAB8-8095DAC0 -00001 0008+00 2/2 0/0 0/0 .data            l_loadRes_list */
static int* l_loadRes_list[2] = {
    l_loadRes_ASH0,
    l_loadRes_ASH1,
};

/* 8095DAC0-8095DACC -00001 000C+00 5/7 0/0 0/0 .data            l_arcNames */
static char* l_arcNames[3] = {
    "Ash",
    "Ash1",
    "Ash2",
};

/* 8095DACC-8095DAE4 -00001 0018+00 0/2 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[6] = {
    "",
    "THE_INTRODUCTION",
    "RESIST_MEETING",
    "RESIST_WIRETAP_ASH",
    "RESIST_WIRETAP_SHAD",
    "RESIST_WIRETAP_RAFREL",
};

/* 8095DAE4-8095DAE8 -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
static char* l_myName = "Ash";

daNpcAsh_c::EventFn daNpcAsh_c::mEvtSeqList[6] = {
    NULL,
    &EvCut_Introduction,
    &EvCut_Meeting,
    &EvCut_WiretapSponsor,
    &EvCut_WiretapEntrant,
    &EvCut_WiretapEntrant,
};

/* 809582EC-80958430 0000EC 0144+00 1/1 0/0 0/0 .text            __ct__10daNpcAsh_cFv */
daNpcAsh_c::daNpcAsh_c() {
    // NONMATCHING
}

/* 80958610-809587A0 000410 0190+00 1/0 0/0 0/0 .text            __dt__10daNpcAsh_cFv */
daNpcAsh_c::~daNpcAsh_c() {
    for (int i = 0; l_loadRes_list[mType][i] >= 0; i++) {
        dComIfG_resDelete(&mPhase[i], l_arcNames[l_loadRes_list[mType][i]]);
    }

    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
}

/* 8095D640-8095D6AC 000000 006C+00 14/14 0/0 0/0 .rodata          m__16daNpcAsh_Param_c */
daNpcAsh_Param_c::param const daNpcAsh_Param_c::m = {
    35.0f,      // mAttnOffsetY
    -3.0f,      // mGravity
    1.0f,       // mScale
    400.0f,     // mShadowDepth
    255.0f,     // mCcWeight
    200.0f,     // mCylH
    35.0f,      // mWallH
    30.0f,      // mWallR
    0.0f,       // mBodyUpAngle
    0.0f,       // mBodyDownAngle
    0.0f,       // mBodyLeftAngle
    0.0f,       // mBodyRightAngle
    30.0f,      // mHeadUpAngle
    0.0f,       // mHeadDownAngle
    30.0f,      // mHeadLeftAngle
    -30.0f,     // mHeadRightAngle
    0.8f,       // mNeckAngleScl
    12.0f,      // mMorfFrames
    3,          // mSpeakDistIdx
    6,          // mSpeakAngleIdx
    5,          // mTalkDistIdx
    6,          // mTalkAngleIdx
    120.0f,     // mAttnFovY
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

/* 809587A0-80958B68 0005A0 03C8+00 1/1 0/0 0/0 .text            Create__10daNpcAsh_cFv */
cPhs__Step daNpcAsh_c::Create() {
    cPhs__Step step;

    fopAcM_SetupActor(this, daNpcAsh_c);

    if (!strcmp(dComIfGp_getStartStageName(), "R_SP116") && dComIfG_play_c::getLayerNo(0) == 4) {
            /* dSv_event_flag_c::F_0361 - Arbiter's Grounds - Spun the spinning pillars */
        if (daNpcF_chkEvtBit(0x169)
                /* dSv_event_flag_c::F_0266 - Snowpeak Ruins - Snowpeak Ruins clear */
            && !daNpcF_chkEvtBit(0x10A)) {
            return cPhs_ERROR_e;
        }
        if (dComIfGs_isStageSwitch(0x18, 0x4b)) {
            return cPhs_ERROR_e;
        }
        mType = TYPE_BAR;
    } else if (!strcmp(dComIfGp_getStartStageName(), "D_MN09")) {
        if (dComIfGs_isSaveSwitch(0x14)) {
            return cPhs_ERROR_e;
        }
        fopAcM_OnStatus(this, 0x4000);
        mType = TYPE_CASTLE;
    }

    mFlowID = getMessageNo();

    step = cPhs_ERROR_e;
    u32 i = 0;
    int arcIndex;
    while (arcIndex = l_loadRes_list[mType][i], arcIndex >= 0) {
        step = (cPhs__Step)dComIfG_resLoad(&mPhase[i], l_arcNames[arcIndex]);
        if (step != cPhs_COMPLEATE_e) {
            return step;
        }
        i++;
    }

    if (step == cPhs_COMPLEATE_e) {
        u32 heapSize = 0;
        switch (mType) {
        case TYPE_BAR:
            heapSize = 0x4210;
            break;
        case TYPE_CASTLE:
            heapSize = 0x58b0;
            break;
        }

        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize)) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -100.0f, -50.0f, -100.0f, 100.0f, 220.0f, 100.0f);
        mCreatureSound.init(&current.pos, &eyePos, 3, 1);
        mAcchCir.SetWall(daNpcAsh_Param_c::m.mWallR, daNpcAsh_Param_c::m.mWallH);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mAcch.SetRoofNone();
        mAcch.SetWaterNone();
        mAcch.CrrPos(dComIfG_Bgsp());
        mCcStts.Init((int)daNpcAsh_Param_c::m.mCcWeight, 0, this);
        mCcCyl[0].Set(daNpcF_c::mCcDCyl);
        mCcCyl[0].SetStts(&mCcStts);
        mCcCyl[0].SetTgType(0);
        mCcCyl[0].SetTgSPrm(0);
        if (mType == TYPE_BAR) {
            mCcCyl[1].Set(daNpcF_c::mCcDCyl);
            mCcCyl[1].SetStts(&mCcStts);
            mCcCyl[1].SetTgType(0);
            mCcCyl[1].SetTgSPrm(0);
            mCcCyl[1].SetCoSPrm(0x19);
        }
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        setEnvTevColor();
        setRoomNo();
        mpMorf->modelCalc();
        reset();
        Execute();
    }

    return step;
}

/* 80958B68-80958F08 000968 03A0+00 1/1 0/0 0/0 .text            CreateHeap__10daNpcAsh_cFv */
BOOL daNpcAsh_c::CreateHeap() {
    J3DModelData* modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_arcNames[0], 11));
    mpMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1,
                                  &mCreatureSound, 0x80000, 0x11020284);
    if (mpMorf != NULL && mpMorf->mpModel == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }
    if (mpMorf == NULL) {
        return false;
    }

    J3DModel* model = mpMorf->getModel();
    for (u16 jointNo = 0; jointNo < modelData->getJointNum(); jointNo++) {
        modelData->getJointNodePointer(jointNo)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);

    mpMatAnm = new daNpcF_MatAnm_c();
    if (mpMatAnm == NULL) {
        return false;
    }

    mModelQuiver = NULL;
    mModelBow = NULL;
    if (mType == TYPE_CASTLE) {
        mModelBow = mDoExt_J3DModel__create(static_cast<J3DModelData*>(
            dComIfG_getObjectRes(l_arcNames[2], 8)), 0x80000, 0x11000084);
        if (mModelBow == NULL) {
            return false;
        }
        mModelQuiver = mDoExt_J3DModel__create(static_cast<J3DModelData*>(
            dComIfG_getObjectRes(l_arcNames[2], 9)), 0x80000, 0x11000084);
        if (mModelQuiver == NULL) {
            return false;
        }
    }

    if (!setExpressionAnm(ANM_F_TALK_A, false)) {
        return false;
    }

    switch (mType) {
    case TYPE_BAR:
        if (isMap()) {
            setMotionAnm(ANM_WAIT_B, 0.0f);
        } else {
            setMotionAnm(ANM_WAIT_A, 0.0f);
        }
        break;
    case TYPE_CASTLE:
        setMotionAnm(ANM_BOWWAIT, 0.0f);
        break;
    }
    return true;
}

/* 809590C4-809590F8 000EC4 0034+00 1/1 0/0 0/0 .text            Delete__10daNpcAsh_cFv */
int daNpcAsh_c::Delete() {
    this->~daNpcAsh_c();
    return 1;
}

/* 809590F8-8095911C 000EF8 0024+00 2/2 0/0 0/0 .text            Execute__10daNpcAsh_cFv */
int daNpcAsh_c::Execute() {
    execute();
    return 1;
}

/* 8095911C-80959238 000F1C 011C+00 1/1 0/0 0/0 .text            Draw__10daNpcAsh_cFv */
int daNpcAsh_c::Draw() {
    mpMorf->getModel()->getModelData()->getMaterialNodePointer(2)->setMaterialAnm(mpMatAnm);
    draw(false, false, daNpcAsh_Param_c::m.mShadowDepth, NULL, false);

    if (mType == TYPE_CASTLE) {
        g_env_light.setLightTevColorType_MAJI(mModelBow, &tevStr);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(16));
        mModelBow->setBaseTRMtx(mDoMtx_stack_c::get());
        mDoExt_modelUpdateDL(mModelBow);

        g_env_light.setLightTevColorType_MAJI(mModelQuiver, &tevStr);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(2));
        mModelQuiver->setBaseTRMtx(mDoMtx_stack_c::get());
        mDoExt_modelUpdateDL(mModelQuiver);
    }

    return 1;
}

/* 80959238-80959458 001038 0220+00 1/1 0/0 0/0 .text ctrlJoint__10daNpcAsh_cFP8J3DJointP8J3DModel
 */
bool daNpcAsh_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jointNo = i_joint->getJntNo();
    int lookatJoints[3] = {1, 3, 4};

    if (jointNo == 0) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jointNo));
    switch (jointNo) {
    case 1:
    case 3:
    case 4:
        setLookatMtx(jointNo, lookatJoints, daNpcAsh_Param_c::m.mNeckAngleScl);
        break;
    }
    i_model->setAnmMtx(jointNo, mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    
    if ((jointNo == 4 || jointNo == 12) && (mAnmFlags & ANM_PLAY_BCK)) {
        J3DAnmTransform* bckAnm = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mpMorf->getAnm());
        mpMorf->changeAnm(bckAnm);
    }

    if (cM3d_IsZero_inverted(mExpressionMorf)) {
        if (jointNo == 12) {
            mpMorf->onMorfNone();
        } else if (jointNo == 4) {
            mpMorf->offMorfNone();
        }
    }

    return true;
}

/* 80959458-80959478 001258 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__10daNpcAsh_cFP10fopAc_ac_c               */
BOOL daNpcAsh_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpcAsh_c*>(i_this)->CreateHeap();
}

/* 80959478-809594C4 001278 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__10daNpcAsh_cFP8J3DJointi
 */
BOOL daNpcAsh_c::ctrlJointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpcAsh_c* _this = (daNpcAsh_c*)model->getUserArea();
        if (_this != NULL) {
            _this->ctrlJoint(i_joint, model);
        }
    }
    return true;
}

/* 809594C4-809596E0 0012C4 021C+00 2/0 0/0 0/0 .text            setExpressionAnm__10daNpcAsh_cFib
 */
bool daNpcAsh_c::setExpressionAnm(int i_idx, bool i_modify) {
    if (i_idx < 0 || i_idx > 7) {
        return false;
    }
    mAnmFlags &= ~ANM_EXPRESSION_FLAGS;

    J3DAnmTransform* bckAnm;
    if (l_bckGetParamList[i_idx].fileIdx >= 0) {
        bckAnm = getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_idx].arcIdx],
                                   l_bckGetParamList[i_idx].fileIdx);
    } else {
        bckAnm = NULL;
    }

    s32 attr = l_bckGetParamList[i_idx].attr;
    bool res = false;
    switch (i_idx) {
    case ANM_NONE:
        res = setExpressionBtp(0);
        break;
    case ANM_F_TALK_A:
        res = setExpressionBtp(0);
        break;
    case ANM_F_TALK_B:
        res = setExpressionBtp(0);
        break;
    case ANM_F_SILENT:
        res = setExpressionBtp(0);
        break;
    case ANM_F_COOL:
        res = setExpressionBtp(0);
        break;
    case ANM_F_ASK:
        res = setExpressionBtp(0);
        break;
    case ANM_F_EXPLAIN_A:
        res = setExpressionBtp(0);
        break;
    case ANM_F_EXPLAIN_B:
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

    if (setBckAnm(bckAnm, 1.0f, attr, 0, -1, i_modify)) {
        mAnmFlags |= ANM_PAUSE_BCK | ANM_PLAY_BCK;
        mExpressionLoops = 0;
        return true;
    }

    return false;
}

/* 809596E0-809597C0 0014E0 00E0+00 1/0 0/0 0/0 .text            setExpressionBtp__10daNpcAsh_cFi */
bool daNpcAsh_c::setExpressionBtp(int i_idx) {
    J3DAnmTexPattern* btpAnm = getTexPtrnAnmP(l_arcNames[l_btpGetParamList[i_idx].arcIdx],
                                              l_btpGetParamList[i_idx].fileIdx);
    s32 attr = l_btpGetParamList[i_idx].attr;
    mAnmFlags &= ~(ANM_PAUSE_BTP | ANM_PLAY_BTP | ANM_FLAG_800);
    if (btpAnm == NULL) {
        return true;
    }
    if (setBtpAnm(btpAnm, mpMorf->getModel()->getModelData(), 1.0f, attr)) {
        mAnmFlags |= ANM_PAUSE_BTP | ANM_PLAY_BTP;
        if (i_idx == 0) {
            mAnmFlags |= ANM_FLAG_800;
        }
        return true;
    }
    return false;
}

/* 809597C0-80959910 0015C0 0150+00 1/0 0/0 0/0 .text            setMotionAnm__10daNpcAsh_cFif */
void daNpcAsh_c::setMotionAnm(int i_idx, f32 i_morf) {
    if (i_idx < 8 || i_idx >= 18) {
        return;
    }

    J3DAnmTransformKey* morfAnm = getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_idx].arcIdx],
                                                    l_bckGetParamList[i_idx].fileIdx);
    J3DAnmTextureSRTKey* btkAnm = getTexSRTKeyAnmP(l_arcNames[l_btkGetParamList[0].arcIdx],
                                                   l_btkGetParamList[0].fileIdx);
    s32 morfAttr = l_bckGetParamList[i_idx].attr;
    s32 btkAttr = l_btkGetParamList[0].attr;
    mAnmFlags &= ~ANM_MOTION_FLAGS;

    if (morfAnm != NULL) {
        if (setMcaMorfAnm(morfAnm, 1.0f, i_morf, morfAttr, 0, -1)) {
            mAnmFlags |= ANM_PAUSE_MORF | ANM_PLAY_MORF;
            mMotionLoops = 0;
        }
    }

    if (btkAnm != NULL) {
        if (setBtkAnm(btkAnm, mpMorf->getModel()->getModelData(), 1.0f, btkAttr)) {
            mAnmFlags |= ANM_PAUSE_BTK | ANM_PLAY_BTK;
        }
    }
}

/* 80959910-80959B28 001710 0218+00 1/1 0/0 0/0 .text            reset__10daNpcAsh_cFv */
void daNpcAsh_c::reset() {
    initialize();
    mpMatAnm->initialize();
    mLookat.initialize();
    for (int i = 0; i < 6; i++) {
        mActorMngr[i].initialize();
    }

    field_0xf50 = 0;
    field_0xf54 = 0;
    mpActionFn = NULL;
    mLookMode = -1;
    mMode = 0;
    gravity = daNpcAsh_Param_c::m.mGravity;
    current.pos = home.pos;
    old.pos = current.pos;
    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;
    speedF = 0.0f;
    speed.setall(0.0f);
    mItemPartnerId = -1;
    mOrderEvtNo = 0;
    mExpressionMorfOverride = 0;
    mMotionMorfOverride = 0;

    if (mFlowID == 0x42d) {
        field_0xf5f = 0;
    } else {
        field_0xf5f = 3;
    }

    if (isSneaking()) {
        fopAcM_OnStatus(this, 0x4000);
    }

    if (mType == TYPE_BAR) {
        setAction(&wait_type0);
    } else {
        setAction(&wait_type1);
    }
}

/* 80959B28-80959BD0 001928 00A8+00 1/1 0/0 0/0 .text
 * setAction__10daNpcAsh_cFM10daNpcAsh_cFPCvPvPv_b              */
bool daNpcAsh_c::setAction(daNpcAsh_c::ActionFn i_actionFn) {
    mMode = 3;
    if (mpActionFn != NULL) {
        (this->*mpActionFn)(NULL);
    }
    mMode = 0;
    this->mpActionFn = i_actionFn;
    if (mpActionFn != NULL) {
        (this->*mpActionFn)(NULL);
    }
    return true;
}

/* 80959BD0-80959C40 0019D0 0070+00 1/1 0/0 0/0 .text            isSneaking__10daNpcAsh_cFv */
bool daNpcAsh_c::isSneaking() {
    if (!strcmp(dComIfGp_getStartStageName(), "R_SP116")
        && dComIfGp_getStartStageRoomNo() == 5 && dComIfG_play_c::getLayerNo(0) == 2)
    {
        return true;
    } else {
        return false;
    }
}

void daNpcAsh_c::playExpression() {
    daNpcF_anmPlayData dat0 = {ANM_F_TALK_A, daNpcAsh_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1 = {ANM_F_TALK_B, daNpcAsh_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};
    daNpcF_anmPlayData dat2 = {ANM_F_SILENT, daNpcAsh_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};
    daNpcF_anmPlayData dat3 = {ANM_F_COOL, daNpcAsh_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat3[1] = {&dat3};
    daNpcF_anmPlayData dat4 = {ANM_F_ASK, daNpcAsh_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4};
    daNpcF_anmPlayData dat5 = {ANM_F_EXPLAIN_A, daNpcAsh_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5};
    daNpcF_anmPlayData dat6 = {ANM_F_EXPLAIN_B, daNpcAsh_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat6[1] = {&dat6};
    daNpcF_anmPlayData dat7 = {ANM_NONE, daNpcAsh_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};
    daNpcF_anmPlayData** ppDat[8] = {
        pDat0,
        pDat1,
        pDat2,
        pDat3,
        pDat4,
        pDat5,
        pDat6,
        pDat7,
    };
    if (mExpression >= 0 && mExpression < 8) {
        playExpressionAnm(ppDat);
    }
}

/* 8095C200-8095C520 004000 0320+00 1/1 0/0 0/0 .text            playMotion__10daNpcAsh_cFv */
void daNpcAsh_c::playMotion() {
    daNpcF_anmPlayData dat0 = {ANM_WAIT_A, daNpcAsh_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1 = {ANM_WAIT_B, daNpcAsh_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};
    daNpcF_anmPlayData dat2 = {ANM_WAIT_C, daNpcAsh_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};
    daNpcF_anmPlayData dat3a = {ANM_COOL, daNpcAsh_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat3b = {ANM_WAIT_C, daNpcAsh_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat3[2] = {&dat3a, &dat3b};
    daNpcF_anmPlayData dat4a = {ANM_ASK, daNpcAsh_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat4b = {ANM_WAIT_C, daNpcAsh_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat4[2] = {&dat4a, &dat4b};
    daNpcF_anmPlayData dat5a = {ANM_EXPLAIN_A, daNpcAsh_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat5b = {ANM_WAIT_C, daNpcAsh_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat5[2] = {&dat5a, &dat5b};
    daNpcF_anmPlayData dat6a = {ANM_EXPLAIN_B, daNpcAsh_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat6b = {ANM_WAIT_A, daNpcAsh_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat6[2] = {&dat6a, &dat6b};
    daNpcF_anmPlayData dat7 = {ANM_BOWWAIT, daNpcAsh_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};
    daNpcF_anmPlayData dat8 = {ANM_BOWRUN, daNpcAsh_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat8[1] = {&dat8};
    daNpcF_anmPlayData dat9 = {ANM_STEP, 4.0f, 1};
    daNpcF_anmPlayData* pDat9[1] = {&dat9};
    daNpcF_anmPlayData** ppDat[10] = {
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
    };
    if (mMotion >= 0 && mMotion < 10) {
        playMotionAnm(ppDat);
    }
}

/* 8095D878-8095D884 000238 000C+00 0/1 0/0 0/0 .rodata          @4697 */
// somehow supposed to be part of lookat()
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4697[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D878, &lit_4697);
#pragma pop

/* 80959C40-8095A67C 001A40 0A3C+00 4/0 0/0 0/0 .text            wait_type0__10daNpcAsh_cFPv */
bool daNpcAsh_c::wait_type0(void* param_0) {
    switch (mMode) {
    case 0:
        setExpression(EXPR_NONE, -1.0f);
        if (!isMap()) {
            setMotion(MOT_WAIT_A, -1.0f, false);
        } else if (mCurAngle.y == home.angle.y) {
            setMotion(MOT_WAIT_B, -1.0f, false);
        }

        mTurnMode = 0;
        speedF = 0.0f;
        mMode = 2;
        break;

    case 2:
        if (isSneaking()) {
            setLookMode(LOOK_NONE, NULL);
        } else {
            if (mActorMngr[0].getActorP() != NULL) {
                if (!chkFindPlayer()) {
                    mTurnMode = 0;
                }
            } else {
                if (chkFindPlayer()) {
                    mTurnMode = 0;
                }
            }

            if (mActorMngr[0].getActorP() != NULL) {
                setLookMode(LOOK_PLAYER, NULL);
            } else {
                if (isMap()) {
                    setLookMode(LOOK_ACTOR, NULL);
                } else {
                    setLookMode(LOOK_NONE, NULL);
                }

                if (home.angle.y != mCurAngle.y && step(home.angle.y, true)) {
                    setExpression(EXPR_NONE, -1.0f);
                    if (!isMap()) {
                        setMotion(MOT_WAIT_A, -1.0f, false);
                    } else {
                        setMotion(MOT_WAIT_B, -1.0f, false);
                    }
                    mTurnMode = 0;
                }

                daTag_EvtArea_c* evtArea = static_cast<daTag_EvtArea_c*>(mActorMngr[5].getActorP());
                if (evtArea != NULL
                    && evtArea->chkPointInArea(*fopAcM_GetPosition_p(daPy_getPlayerActorClass())))
                {
                    daNpcF_offTmpBit(11);
                    mOrderEvtNo = 2;
                    fopAcM_delete(evtArea);
                }
            }
        }

        if (mCurAngle.y != home.angle.y) {
            if (step(home.angle.y, true)) {
                if (!isMap()) {
                    setMotion(MOT_WAIT_A, -1.0f, false);
                } else {
                    setMotion(MOT_WAIT_B, -1.0f, false);
                }
                mTurnMode = 0;
            }
        }

        if (dComIfGp_event_runCheck()) {
            if (eventInfo.checkCommandTalk()) {
                if (dComIfGp_event_chkTalkXY() == FALSE || dComIfGp_evmng_ChkPresentEnd()) {
                    if (isSneaking()) {
                        mOrderEvtNo = 3;
                        changeEvent(l_arcNames[0], l_evtNames[mOrderEvtNo], 1, -1);
                    } else {
                        setAction(&talk);
                    }
                }
            } else {
                if (dComIfGp_getEventManager().getMyStaffId(l_myName, NULL, 0) != -1) {
                    setAction(&demo);
                }
            }
        } else {
            if (mOrderEvtNo != 0) {
                eventInfo.setArchiveName("Ash");
            }
            orderEvent(mMapToolId, mOrderEvtNo != 0 ? l_evtNames[mOrderEvtNo] : NULL,
                       -1, 40, -1, 1);
        }
        break;

    case 3:
        break;
    }

    return true;
}

/* 8095A67C-8095A6C0 00247C 0044+00 1/0 0/0 0/0 .text            setMotion__10daNpcAsh_cFifi */
void daNpcAsh_c::setMotion(int i_motion, f32 i_morf, BOOL i_restart) {
    s16 motion = (s16)i_motion;
    if (i_restart || mMotion != motion) {
        if (i_motion >= 0 && i_motion < 10) {
            mMotion = motion;
            mMotionMorfOverride = i_morf;
            mMotionPrevPhase = -1;
            mMotionPhase = 0;
        }
    }
}

/* 8095A6C0-8095A6EC 0024C0 002C+00 1/0 0/0 0/0 .text            setExpression__10daNpcAsh_cFif */
void daNpcAsh_c::setExpression(int i_expression, f32 i_morf) {
    if (i_expression >= 0 && i_expression < 8) {
        mExpression = i_expression;
        mExpressionMorfOverride = i_morf;
        mExpressionPrevPhase = -1;
        mExpressionPhase = 0;
    }
}

/* 8095A6EC-8095A8EC 0024EC 0200+00 3/0 0/0 0/0 .text            wait_type1__10daNpcAsh_cFPv */
bool daNpcAsh_c::wait_type1(void* param_0) {
    switch (mMode) {
    case 0:
        setExpression(EXPR_NONE, -1.0f);
        setMotion(MOT_BOWWAIT, -1.0f, false);
        mTurnMode = 0;
        speedF = 0.0f;
        mActorMngr[0].entry(daPy_getPlayerActorClass());
        setLookMode(LOOK_NONE, NULL);
        mMode = 2;
        break;

    case 2:
        switch (field_0xf54) {
        case 0:
            if (daNpcF_chkTmpBit(0x76)) {
                current.pos.set(-4300.0005f, 0.0f, 8627.657f);
                old.pos = current.pos;
                setAngle(-0x6000);
                field_0xf54++;
            }
            break;

        case 1:
            if (daNpcF_chkTmpBit(0x74)) {
                setAction(&leave);
            }
            break;
        }

        break;

    case 3:
        break;
    }

    return true;
}

/* 8095A8EC-8095AD28 0026EC 043C+00 1/0 0/0 0/0 .text            talk__10daNpcAsh_cFPv */
bool daNpcAsh_c::talk(void* param_0) {
    bool ret = false;

    switch (mMode) {
    case 0:
        initTalk(mFlowID, NULL);
        mTurnMode = 0;
        mMsgTimer = 0;
        if (mFlowID == 0x42d) {
            field_0xf5f++;
        }
        mMapToolId = 0;
        speedF = 0.0f;
        setLookMode(LOOK_PLAYER_TALK, NULL);
        setMotion(MOT_WAIT_A, -1.0f, false);
        mMode = 2;
        break;

    case 2:
        if (field_0xf5f <= 2 || mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
            if (talkProc(NULL, 1, NULL)) {
                mActorMngr[0].entry(daPy_getPlayerActorClass());
                setAction(&wait_type0);
                ret = true;
            } else {
                s32 prev_msg_timer = mMsgTimer;
                int expression, motion;
                if (ctrlMsgAnm(expression, motion, this, 0)) {
                    setExpression(expression, -1.0f);
                    setMotion(motion, -1.0f, false);
                } else {
                    if (prev_msg_timer != 0 && mMsgTimer == 0) {
                        setExpressionTalkAfter();
                    }
                }
            }
        } else {
            if (step(fopAcM_searchPlayerAngleY(this), true)) {
                setMotion(MOT_WAIT_A, -1.0f, false);
                mTurnMode = 0;
            }
        }
        break;

    case 3:
        setExpression(EXPR_NONE, -1.0f);
        if (!field_0x9ec) {
            dComIfGp_event_reset();
        }
        break;
    }

    return ret;
}

/* 8095AD28-8095B164 002B28 043C+00 1/0 0/0 0/0 .text            demo__10daNpcAsh_cFPv */
bool daNpcAsh_c::demo(void* param_0) {
    switch (mMode) {
    case 0:
        setExpression(EXPR_NONE, -1.0f);
        if (!isMap()) {
            setMotion(MOT_WAIT_A, -1.0f, false);
        } else {
            setMotion(MOT_WAIT_B, -1.0f, false);
        }
        mMode = 2;
        // fallthrough

    case 2:
        if (dComIfGp_event_runCheck() != FALSE && !eventInfo.checkCommandTalk()) {
            dEvent_manager_c& eventManager = dComIfGp_getEventManager();
            s32 staff_id = eventManager.getMyStaffId(l_myName, NULL, 0);
            if (staff_id != -1) {
                mStaffID = staff_id;
                s32 eventIdx = eventManager.getMyActIdx(staff_id, l_evtNames,
                                                        ARRAY_SIZE(l_evtNames), 0, 0);
                if (eventIdx >= 1 && eventIdx < 6) {
                    mOrderEvtNo = eventIdx;
                }
                if ((this->*(mEvtSeqList[mOrderEvtNo]))(staff_id)) {
                    eventManager.cutEnd(staff_id);
                }
            }

            if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1
                && eventManager.endCheck(mEventIdx))
            {
                dComIfGp_event_reset();
                mOrderEvtNo = 0;
                mEventIdx = -1;
                if (mType == TYPE_BAR) {
                    setAction(&wait_type0);
                } else {
                    setAction(&wait_type1);
                }
            }
        } else {
            mOrderEvtNo = 0;
            mEventIdx = -1;
            if (mType == TYPE_BAR) {
                setAction(&wait_type0);
            } else {
                setAction(&wait_type1);
            }
        }
        break;

    case 3:
        break;
    }

    return true;
}

/* 8095B164-8095B48C 002F64 0328+00 1/0 0/0 0/0 .text            leave__10daNpcAsh_cFPv */
bool daNpcAsh_c::leave(void* param_0) {
    cXyz target;
    target.set(-6253.387, 0.0, 6251.7603);

    switch (mMode) {
    case 0:
        setExpression(EXPR_NONE, -1.0f);
        setMotion(MOT_BOWRUN, -1.0f, false);
        mTurnMode = 0;
        speedF = 0.0f;
        mMode = 2;
        break;

    case 2:
        step(cLib_targetAngleY(&current.pos, &target), true);
        speedF = 15.0f;
        if (mAcch.ChkWallHit() || current.pos.abs(target) < speedF) {
            fopAcM_delete(this);
        }
        break;

    case 3:
        break;
    }

    return true;
}

/* 8095B48C-8095B58C 00328C 0100+00 1/0 0/0 0/0 .text            EvCut_Introduction__10daNpcAsh_cFi
 */
BOOL daNpcAsh_c::EvCut_Introduction(int i_staffID) {
    int* prm = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm == NULL) {
        return false;
    }

    if (dComIfGp_getEventManager().getIsAddvance(i_staffID)) {
        switch (*prm) {
        case 0:
        case 2:
            setLookMode(LOOK_NONE, NULL);
            return true;

        case 1:
            setLookMode(LOOK_PLAYER, NULL);
            return true;
        }
    }
    return false;
}

/* 8095B58C-8095B83C 00338C 02B0+00 1/0 0/0 0/0 .text            EvCut_Meeting__10daNpcAsh_cFi */
BOOL daNpcAsh_c::EvCut_Meeting(int i_staffID) {
    dEvent_manager_c& evtMgr = dComIfGp_getEventManager();
    fopAc_ac_c* actors[4] = {
        mActorMngr[2].getActorP(),
        (fopAc_ac_c*)this,
        mActorMngr[1].getActorP(),
        mActorMngr[3].getActorP(),
    };

    int* cutName = (int*)evtMgr.getMyNowCutName(i_staffID);
    if (evtMgr.getIsAddvance(i_staffID)) {
        switch (*cutName) {
        case '0001':
        case '0002':
            dComIfGp_setMesgCameraInfoActor(actors[0], actors[1], actors[2], actors[3],
                                            NULL, NULL, NULL, NULL, NULL, NULL);
            initTalk(0x42e, actors);
        }
    }

    int prev_msg_timer = mMsgTimer;
    int expression, motion;
    if (ctrlMsgAnm(expression, motion, this, 0)) {
        setExpression(expression, -1.0f);
        setMotion(motion, -1.0f, false);
    } else {
        if (prev_msg_timer != 0 && mMsgTimer == 0) {
            setExpressionTalkAfter();
        }
    }

    fopAc_ac_c* talk_partner;
    switch (*cutName) {
    case '0001':
        if (talkProc(NULL, 1, actors)) {
            return true;
        }
        talk_partner = dComIfGp_event_getTalkPartner();
        if (talk_partner == this) {
            talk_partner = NULL;
        }
        setLookMode(LOOK_ATTN, talk_partner);
        break;

    case '0002':
        if (talkProc(NULL, 1, actors)) {
            return true;
        }
        setLookMode(LOOK_PLAYER, NULL);
        break;
    }
    
    return false;
}

/* 8095B83C-8095BA80 00363C 0244+00 1/0 0/0 0/0 .text EvCut_WiretapSponsor__10daNpcAsh_cFi */
BOOL daNpcAsh_c::EvCut_WiretapSponsor(int i_staffID) {
    dEvent_manager_c& evtMgr = dComIfGp_getEventManager();
    fopAc_ac_c* actors[4] = {
        mActorMngr[2].getActorP(),
        (fopAc_ac_c*)this,
        mActorMngr[1].getActorP(),
        mActorMngr[3].getActorP(),
    };

    int* cutName = (int*)evtMgr.getMyNowCutName(i_staffID);
    if (evtMgr.getIsAddvance(i_staffID)) {
        switch (*cutName) {
        case '0001':
            dComIfGp_setMesgCameraInfoActor(actors[0], actors[1], actors[2], actors[3],
                                            NULL, NULL, NULL, NULL, NULL, NULL);
            initTalk(mFlowID, actors);
            break;
        }
    }

    int prev_msg_timer = mMsgTimer;
    int expression, motion;
    if (ctrlMsgAnm(expression, motion, this, 0)) {
        setExpression(expression, -1.0f);
        setMotion(motion, -1.0f, false);
    } else {
        if (prev_msg_timer != 0 && mMsgTimer == 0) {
            setExpressionTalkAfter();
        }
    }

    fopAc_ac_c* talk_partner;
    switch (*cutName) {
    case '0001':
        if (talkProc(NULL, 1, actors)) {
            return true;
        }
        talk_partner = dComIfGp_event_getTalkPartner();
        if (talk_partner == this) {
            talk_partner = NULL;
        }
        setLookMode(LOOK_ATTN, talk_partner);
        break;
    }

    return false;
}

/* 8095BA80-8095BC38 003880 01B8+00 2/0 0/0 0/0 .text EvCut_WiretapEntrant__10daNpcAsh_cFi */
BOOL daNpcAsh_c::EvCut_WiretapEntrant(int i_staffID) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* prm = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm == NULL) {
        return false;
    }

    if (eventManager.getIsAddvance(i_staffID)) {
        switch (*prm) {
        case 0:
            setExpression(EXPR_NONE, -1.0f);
            setMotion(MOT_WAIT_A, -1.0f, false);
            break;
        }
    }

    int prev_msg_timer = mMsgTimer;
    int expression, motion;
    if (ctrlMsgAnm(expression, motion, this, 0) != 0) {
        setExpression(expression, -1.0f);
        setMotion(motion, -1.0f, false);
    } else {
        if (prev_msg_timer != 0 && mMsgTimer == 0) {
            setExpressionTalkAfter();
        }
    }
    
    fopAc_ac_c* talk_partner = dComIfGp_event_getTalkPartner();
    if (talk_partner == this) {
        talk_partner = NULL;
    }
    setLookMode(LOOK_ATTN, talk_partner);
    return true;
}

/* 8095BC38-8095BC58 003A38 0020+00 1/0 0/0 0/0 .text            daNpcAsh_Create__FPv */
static cPhs__Step daNpcAsh_Create(void* i_this) {
    return static_cast<daNpcAsh_c*>(i_this)->Create();
}

/* 8095BC58-8095BC78 003A58 0020+00 1/0 0/0 0/0 .text            daNpcAsh_Delete__FPv */
static int daNpcAsh_Delete(void* i_this) {
    return static_cast<daNpcAsh_c*>(i_this)->Delete();
}

/* 8095BC78-8095BC98 003A78 0020+00 1/0 0/0 0/0 .text            daNpcAsh_Execute__FPv */
static int daNpcAsh_Execute(void* i_this) {
    return static_cast<daNpcAsh_c*>(i_this)->Execute();
}

/* 8095BC98-8095BCB8 003A98 0020+00 1/0 0/0 0/0 .text            daNpcAsh_Draw__FPv */
static int daNpcAsh_Draw(void* i_this) {
    return static_cast<daNpcAsh_c*>(i_this)->Draw();
}

/* 8095BCB8-8095BCC0 003AB8 0008+00 1/0 0/0 0/0 .text            daNpcAsh_IsDelete__FPv */
static int daNpcAsh_IsDelete(void* i_this) {
    return 1;
}

/* 8095BCF0-8095BF6C 003AF0 027C+00 1/0 0/0 0/0 .text            setParam__10daNpcAsh_cFv */
void daNpcAsh_c::setParam() {
    searchActors();
    attention_info.flags = 0xa;
    if (isSneaking()) {
        attention_info.distances[fopAc_attn_LOCK_e] = 0x4e;
        attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
        attention_info.distances[fopAc_attn_SPEAK_e] = 0x4d;
        attention_info.flags |= 0x800000;
    } else {
        if (!strcmp(dComIfGp_getStartStageName(), "R_SP116")) {
            attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(3, 6);
            attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
            attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(2, 6);
        } else {
            attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(daNpcAsh_Param_c::m.mTalkDistIdx,
                                                          daNpcAsh_Param_c::m.mTalkAngleIdx);
            attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
            attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(daNpcAsh_Param_c::m.mSpeakDistIdx,
                                                          daNpcAsh_Param_c::m.mSpeakAngleIdx);
        }
    }
}

/* 8095BF6C-8095C200 003D6C 0294+00 1/0 0/0 0/0 .text            main__10daNpcAsh_cFv */
BOOL daNpcAsh_c::main() {
    if (mpActionFn != NULL) {
        (this->*mpActionFn)(NULL);
    }
    if (dComIfGp_event_runCheck() != 0 && !eventInfo.checkCommandTalk() && mItemPartnerId != -1) {
        dComIfGp_event_setItemPartnerId(mItemPartnerId);
        mItemPartnerId = -1;
    }
    playExpression();
    playMotion();
    return true;
}

/* 8095C520-8095C5C4 004320 00A4+00 1/0 0/0 0/0 .text            ctrlBtk__10daNpcAsh_cFv */
// NONMATCHING inlining issues
BOOL daNpcAsh_c::ctrlBtk() {
    if (mpMatAnm != NULL) {
        mpMatAnm->setNowOffsetX(cM_ssin(mEyeAngle.y) * 0.2f * -1.0f);
        mpMatAnm->setNowOffsetY(cM_ssin(mEyeAngle.x) * 0.4f);
        mpMatAnm->onEyeMoveFlag();
        return TRUE;
    }
    return FALSE;
}

/* 8095C5C4-8095C9BC 0043C4 03F8+00 1/0 0/0 0/0 .text            setAttnPos__10daNpcAsh_cFv */
void daNpcAsh_c::setAttnPos() {
    if (mLookMode == LOOK_RESET) {
        for (int i = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    setMtx2();
    lookat();

    cXyz vec(10.0f, 10.0f, 0.0f);
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&vec, &eyePos);
    vec.x = 0.0f;
    mDoMtx_stack_c::multVec(&vec, &vec);
    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &vec);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &vec);
    cXyz* attnPos = mLookat.getAttnPos();

    if (attnPos != NULL) {
        cXyz local_48 = *attnPos - eyePos;
        mEyeAngle.y = -(mLookatAngle[2].y + mCurAngle.y);
        mEyeAngle.y += cM_atan2s(local_48.x, local_48.z);
        mEyeAngle.x = -cM_atan2s(local_48.y, local_48.absXZ());
        mEyeAngle.x += mHeadAngle.x;
    } else {
        mEyeAngle.y = 0;
        mEyeAngle.x = 0;
    }

    attention_info.position.set(mHeadPos.x,
                                mHeadPos.y + daNpcAsh_Param_c::m.mAttnOffsetY,
                                mHeadPos.z);

    cXyz center;
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(2));
    mDoMtx_stack_c::multVecZero(&center);
    center.y = current.pos.y;
    mCcCyl[0].SetC(center);
    mCcCyl[0].SetH(daNpcAsh_Param_c::m.mCylH);
    mCcCyl[0].SetR(daNpcAsh_Param_c::m.mWallR);
    dComIfG_Ccsp()->Set(&mCcCyl[0]);

                               /* dSv_event_flag_c::F_0361 - Arbiter's Grounds - Spun the spinning pillars */
    if (mType == TYPE_BAR && (!daNpcF_chkEvtBit(0x169)
                                  /* dSv_event_flag_c::F_0266 - Snowpeak Ruins - Snowpeak Ruins clear */
                              || !daNpcF_chkEvtBit(0x10A)
                                  /* dSv_event_flag_c::F_0267 - Temple of Time - Temple of Time clear */
                              || !daNpcF_chkEvtBit(0x10B)
                                 /* dSv_event_flag_c::F_0268 - City in the Sky - City in the Sky clear */
                              || daNpcF_chkEvtBit(0x10C))) {
        center.set(3070.0f, -1150.0f, 2446.0f);
        mCcCyl[1].SetC(center);
        mCcCyl[1].SetH(170.0f);
        mCcCyl[1].SetR(60.0f);
        dComIfG_Ccsp()->Set(&mCcCyl[1]);
    }
}

/* 8095C9BC-8095CC8C 0047BC 02D0+00 1/1 0/0 0/0 .text            lookat__10daNpcAsh_cFv */
// NONMATCHING literal issues
void daNpcAsh_c::lookat() {
    fopAc_ac_c* actor = NULL;
    J3DModel* model = mpMorf->getModel();
    BOOL snap = false;
    f32 body_down_angle = daNpcAsh_Param_c::m.mBodyDownAngle;
    f32 body_up_angle = daNpcAsh_Param_c::m.mBodyUpAngle;
    f32 body_right_angle = mMotion == MOT_WAIT_A ? -15.0f : daNpcAsh_Param_c::m.mBodyRightAngle;
    f32 body_left_angle = mMotion == MOT_WAIT_A ? 15.0f : daNpcAsh_Param_c::m.mBodyLeftAngle;
    f32 head_down_angle = daNpcAsh_Param_c::m.mHeadDownAngle;
    f32 head_up_angle = daNpcAsh_Param_c::m.mHeadUpAngle;
    f32 head_right_angle = mMotion == MOT_WAIT_A ? -30.0f : daNpcAsh_Param_c::m.mHeadRightAngle;
    f32 head_left_angle = mMotion == MOT_WAIT_A ? 30.0f : daNpcAsh_Param_c::m.mHeadLeftAngle;
    s16 angle_delta = mCurAngle.y - mOldAngle.y;
    cXyz lookat_pos[3] = {mLookatPos[0], mLookatPos[1], mLookatPos[2]};
    csXyz* lookat_angle[3] = {&mLookatAngle[0], &mLookatAngle[1], &mLookatAngle[2]};

    switch (mLookMode) {
    case LOOK_NONE:
        break;
    case LOOK_RESET:
        snap = true;
        break;
    case LOOK_PLAYER:
    case LOOK_PLAYER_TALK:
        actor = daPy_getPlayerActorClass();
        break;
    case LOOK_ACTOR:
        actor = mActorMngr[4].getActorP();
        break;
    case LOOK_ATTN:
        actor = mTalkPartner;
        break;
    }

    if (actor != NULL) {
        mLookPos = actor->attention_info.position;
        if (mLookMode != LOOK_PLAYER && mLookMode != LOOK_PLAYER_TALK) {
            mLookPos.y -= 40.0f;
        }
        mLookat.setAttnPos(&mLookPos);
    } else {
        mLookat.setAttnPos(NULL);
    }

    mLookat.setParam(body_down_angle, body_up_angle, body_right_angle, body_left_angle,
                     0.0f, 0.0f, 0.0f, 0.0f,
                     head_down_angle, head_up_angle, head_right_angle, head_left_angle,
                     mCurAngle.y, lookat_pos);
    mLookat.calc(this, model->getBaseTRMtx(), lookat_angle, snap, angle_delta, false);
}

/* 8095CC8C-8095CC94 004A8C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__10daNpcAsh_cFv */
BOOL daNpcAsh_c::drawDbgInfo() {
    return false;
}

/* 8095DC04-8095DC24 -00001 0020+00 1/0 0/0 0/0 .data            daNpcAsh_MethodTable */
static actor_method_class daNpcAsh_MethodTable = {
    (process_method_func)daNpcAsh_Create,
    (process_method_func)daNpcAsh_Delete,
    (process_method_func)daNpcAsh_Execute,
    (process_method_func)daNpcAsh_IsDelete,
    (process_method_func)daNpcAsh_Draw,
};

/* 8095DC24-8095DC54 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_ASH */
extern actor_process_profile_definition g_profile_NPC_ASH = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_NPC_ASH,
    &g_fpcLf_Method.base,
    sizeof(daNpcAsh_c),
    0,
    0,
    &g_fopAc_Method.base,
    411,
    &daNpcAsh_MethodTable,
    0x40100,
    fopAc_NPC_e,
    fopAc_CULLBOX_CUSTOM_e,
};
