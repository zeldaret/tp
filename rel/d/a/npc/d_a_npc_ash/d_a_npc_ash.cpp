/**
 * d_a_npc_ash.cpp
 * NPC - Ashei
 */

#include "rel/d/a/npc/d_a_npc_ash/d_a_npc_ash.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "SSystem/SComponent/c_math.h"
#include "rel/d/a/tag/d_a_tag_evtarea/d_a_tag_evtarea.h"
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

/* ############################################################################################## */
/* 8095D910-8095D910 0002D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8095D910 = "Ash";
SECTION_DEAD static char const* const stringBase_8095D914 = "Ash1";
SECTION_DEAD static char const* const stringBase_8095D919 = "Ash2";
SECTION_DEAD static char const* const stringBase_8095D91E = "";
SECTION_DEAD static char const* const stringBase_8095D91F = "THE_INTRODUCTION";
SECTION_DEAD static char const* const stringBase_8095D930 = "RESIST_MEETING";
SECTION_DEAD static char const* const stringBase_8095D93F = "RESIST_WIRETAP_ASH";
SECTION_DEAD static char const* const stringBase_8095D952 = "RESIST_WIRETAP_SHAD";
SECTION_DEAD static char const* const stringBase_8095D966 = "RESIST_WIRETAP_RAFREL";
#pragma pop

/* 8095D990-8095D99C 000000 000C+00 4/4 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8095D99C-8095D9B0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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
#pragma push
#pragma force_active on
static daNpc_GetParam2 l_btkGetParamList[1] = {
    {14, 2, 0}, // ash
};
#pragma pop

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

#ifdef NONMATCHING

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

#else

/* 8095DAC0-8095DACC -00001 000C+00 5/7 0/0 0/0 .data            l_arcNames */
SECTION_DATA static char* l_arcNames[3] = {
    (char*)&d_a_npc_ash__stringBase0,
    (((char*)&d_a_npc_ash__stringBase0) + 0x4),
    (((char*)&d_a_npc_ash__stringBase0) + 0x9),
};

/* 8095DACC-8095DAE4 -00001 0018+00 0/2 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static char* l_evtNames[6] = {
   (((char*)&d_a_npc_ash__stringBase0) + 0xE),
    (((char*)&d_a_npc_ash__stringBase0) + 0xF),
    (((char*)&d_a_npc_ash__stringBase0) + 0x20),
    (((char*)&d_a_npc_ash__stringBase0) + 0x2F),
    (((char*)&d_a_npc_ash__stringBase0) + 0x42),
    (((char*)&d_a_npc_ash__stringBase0) + 0x56),
};
#pragma pop

/* 8095DAE4-8095DAE8 -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static char* l_myName = (char*)&d_a_npc_ash__stringBase0;
#pragma pop

#endif

#ifdef NONMATCHING

daNpcAsh_c::EventFn daNpcAsh_c::mEvtSeqList[6] = {
    NULL,
    &EvCut_Introduction,
    &EvCut_Meeting,
    &EvCut_WiretapSponsor,
    &EvCut_WiretapEntrant,
    &EvCut_WiretapEntrant,
};

#else

/* 8095DAE8-8095DAF4 -00001 000C+00 0/1 0/0 0/0 .data            @3823 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3823[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_Introduction__10daNpcAsh_cFi,
};
#pragma pop

/* 8095DAF4-8095DB00 -00001 000C+00 0/1 0/0 0/0 .data            @3824 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3824[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_Meeting__10daNpcAsh_cFi,
};
#pragma pop

/* 8095DB00-8095DB0C -00001 000C+00 0/1 0/0 0/0 .data            @3825 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3825[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_WiretapSponsor__10daNpcAsh_cFi,
};
#pragma pop

/* 8095DB0C-8095DB18 -00001 000C+00 0/1 0/0 0/0 .data            @3826 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3826[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_WiretapEntrant__10daNpcAsh_cFi,
};
#pragma pop

/* 8095DB18-8095DB24 -00001 000C+00 0/1 0/0 0/0 .data            @3827 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3827[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_WiretapEntrant__10daNpcAsh_cFi,
};
#pragma pop

/* 8095DB24-8095DB6C 000194 0048+00 0/2 0/0 0/0 .data            mEvtSeqList__10daNpcAsh_c */
#pragma push
#pragma force_active on
SECTION_DATA u8 daNpcAsh_c::mEvtSeqList[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

#endif

/* 8095DB6C-8095DB8C -00001 0020+00 1/1 0/0 0/0 .data            @4549 */
SECTION_DATA static void* lit_4549[8] = {
    (void*)(((char*)setExpressionAnm__10daNpcAsh_cFib) + 0xB4),
    (void*)(((char*)setExpressionAnm__10daNpcAsh_cFib) + 0xD0),
    (void*)(((char*)setExpressionAnm__10daNpcAsh_cFib) + 0xEC),
    (void*)(((char*)setExpressionAnm__10daNpcAsh_cFib) + 0x108),
    (void*)(((char*)setExpressionAnm__10daNpcAsh_cFib) + 0x124),
    (void*)(((char*)setExpressionAnm__10daNpcAsh_cFib) + 0x140),
    (void*)(((char*)setExpressionAnm__10daNpcAsh_cFib) + 0x15C),
    (void*)(((char*)setExpressionAnm__10daNpcAsh_cFib) + 0x178),
};

/* 8095DB8C-8095DB98 -00001 000C+00 1/1 0/0 0/0 .data            @4605 */
SECTION_DATA static void* lit_4605[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_type0__10daNpcAsh_cFPv,
};

/* 8095DB98-8095DBA4 -00001 000C+00 1/1 0/0 0/0 .data            @4608 */
SECTION_DATA static void* lit_4608[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_type1__10daNpcAsh_cFPv,
};

/* 8095DBA4-8095DBB0 -00001 000C+00 0/1 0/0 0/0 .data            @4808 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4808[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__10daNpcAsh_cFPv,
};
#pragma pop

/* 8095DBB0-8095DBBC -00001 000C+00 0/1 0/0 0/0 .data            @4813 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4813[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__10daNpcAsh_cFPv,
};
#pragma pop

/* 8095DBBC-8095DBC8 -00001 000C+00 1/1 0/0 0/0 .data            @5015 */
SECTION_DATA static void* lit_5015[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)leave__10daNpcAsh_cFPv,
};

/* 8095DBC8-8095DBD4 -00001 000C+00 1/1 0/0 0/0 .data            @5048 */
SECTION_DATA static void* lit_5048[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_type0__10daNpcAsh_cFPv,
};

/* 8095DBD4-8095DBE0 -00001 000C+00 0/1 0/0 0/0 .data            @5129 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5129[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_type0__10daNpcAsh_cFPv,
};
#pragma pop

/* 8095DBE0-8095DBEC -00001 000C+00 0/1 0/0 0/0 .data            @5132 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5132[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_type1__10daNpcAsh_cFPv,
};
#pragma pop

/* 8095DBEC-8095DBF8 -00001 000C+00 0/1 0/0 0/0 .data            @5137 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5137[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_type0__10daNpcAsh_cFPv,
};
#pragma pop

/* 8095DBF8-8095DC04 -00001 000C+00 0/1 0/0 0/0 .data            @5140 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5140[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_type1__10daNpcAsh_cFPv,
};
#pragma pop

static cPhs__Step daNpcAsh_Create(void*);
static int daNpcAsh_Delete(void*);
static int daNpcAsh_Execute(void*);
static int daNpcAsh_IsDelete(void*);
static int daNpcAsh_Draw(void*);

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
    &g_fpcLf_Method.mBase,
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

/* 8095DC54-8095DC60 0002C4 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 8095DC60-8095DCA8 0002D0 0048+00 2/2 0/0 0/0 .data            __vt__10daNpcAsh_c */
SECTION_DATA extern void* __vt__10daNpcAsh_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10daNpcAsh_cFv,
    (void*)setParam__10daNpcAsh_cFv,
    (void*)main__10daNpcAsh_cFv,
    (void*)ctrlBtk__10daNpcAsh_cFv,
    (void*)adjustShapeAngle__8daNpcF_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__10daNpcAsh_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__10daNpcAsh_cFib,
    (void*)setExpressionBtp__10daNpcAsh_cFi,
    (void*)setExpression__10daNpcAsh_cFif,
    (void*)setMotionAnm__10daNpcAsh_cFif,
    (void*)setMotion__10daNpcAsh_cFifi,
    (void*)drawDbgInfo__10daNpcAsh_cFv,
    (void*)drawOtherMdls__8daNpcF_cFv,
};

/* 8095DCA8-8095DCB4 000318 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8095DCB4-8095DCD8 000324 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8095D624,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8095D61C,
};

/* 8095DCD8-8095DCE4 000348 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8095DCE4-8095DCF0 000354 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8095DCF0-8095DCFC 000360 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8095DCFC-8095DD08 00036C 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 8095DD08-8095DD14 000378 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8095DD14-8095DD20 000384 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 8095DD20-8095DD2C 000390 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 809582EC-80958430 0000EC 0144+00 1/1 0/0 0/0 .text            __ct__10daNpcAsh_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpcAsh_c::daNpcAsh_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__ct__10daNpcAsh_cFv.s"
}
#pragma pop
 
/* 80958430-809584FC 000230 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_CylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Cyl::~dCcD_Cyl() {
asm void __dt__8dCcD_CylFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__8dCcD_CylFv.s"
}
#pragma pop

/* 809584FC-80958580 0002FC 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Cyl::dCcD_Cyl() {
asm void __ct__8dCcD_CylFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__ct__8dCcD_CylFv.s"
}
#pragma pop

/* 80958580-809585C8 000380 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 809585C8-80958610 0003C8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80958610-809587A0 000410 0190+00 1/0 0/0 0/0 .text            __dt__10daNpcAsh_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcAsh_c::~daNpcAsh_c() {
asm void __dt__10daNpcAsh_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__10daNpcAsh_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8095D640-8095D6AC 000000 006C+00 14/14 0/0 0/0 .rodata          m__16daNpcAsh_Param_c */
SECTION_RODATA daNpcAsh_Param_c::param const daNpcAsh_Param_c::m = {
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
COMPILER_STRIP_GATE(0x8095D640, &daNpcAsh_Param_c::m);

/* 809587A0-80958B68 0005A0 03C8+00 1/1 0/0 0/0 .text            Create__10daNpcAsh_cFv */
cPhs__Step daNpcAsh_c::Create() {
    cPhs__Step step;

    fopAcM_SetupActor(this, daNpcAsh_c);

    if (!strcmp(dComIfGp_getStartStageName(), "R_SP116") && dComIfG_play_c::getLayerNo(0) == 4) {
        if (daNpcF_chkEvtBit(0x169) && !daNpcF_chkEvtBit(0x10a)) {
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

/* ############################################################################################## */
/* 8095D6BC-8095D6C0 00007C 0004+00 4/4 0/0 0/0 .rodata          @4300 */
SECTION_RODATA static f32 const lit_4300 = 1.0f;
COMPILER_STRIP_GATE(0x8095D6BC, &lit_4300);

/* 8095D6C0-8095D6C4 000080 0004+00 3/9 0/0 0/0 .rodata          @4301 */
SECTION_RODATA static f32 const lit_4301 = 0.0f;
COMPILER_STRIP_GATE(0x8095D6C0, &lit_4301);

/* 80958B68-80958F08 000968 03A0+00 1/1 0/0 0/0 .text            CreateHeap__10daNpcAsh_cFv */
#ifdef NONMATCHING
// matches with literals
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpcAsh_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/CreateHeap__10daNpcAsh_cFv.s"
}
#pragma pop
#endif

/* 80958F08-80958F44 000D08 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::~J3DTevKColorAnm() {
asm void __dt__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80958F44-80958F5C 000D44 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::J3DTevKColorAnm() {
asm void __ct__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__ct__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80958F5C-80958F98 000D5C 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::~J3DTevColorAnm() {
asm void __dt__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 80958F98-80958FB0 000D98 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::J3DTevColorAnm() {
asm void __ct__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__ct__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 80958FB0-80958FF8 000DB0 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::~J3DTexNoAnm() {
asm void __dt__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80958FF8-8095901C 000DF8 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::J3DTexNoAnm() {
asm void __ct__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__ct__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 8095901C-80959058 000E1C 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::~J3DTexMtxAnm() {
asm void __dt__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80959058-80959070 000E58 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::J3DTexMtxAnm() {
asm void __ct__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__ct__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80959070-809590AC 000E70 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::~J3DMatColorAnm() {
asm void __dt__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 809590AC-809590C4 000EAC 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::J3DMatColorAnm() {
asm void __ct__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__ct__14J3DMatColorAnmFv.s"
}
#pragma pop

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

/* ############################################################################################## */

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
#ifdef NONMATCHING
// literals
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daNpcAsh_c::setExpressionAnm(int param_0, bool param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/setExpressionAnm__10daNpcAsh_cFib.s"
}
#pragma pop
#endif

/* 809596E0-809597C0 0014E0 00E0+00 1/0 0/0 0/0 .text            setExpressionBtp__10daNpcAsh_cFi */
#ifdef NONMATCHING
// literals
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daNpcAsh_c::setExpressionBtp(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/setExpressionBtp__10daNpcAsh_cFi.s"
}
#pragma pop
#endif

/* 809597C0-80959910 0015C0 0150+00 1/0 0/0 0/0 .text            setMotionAnm__10daNpcAsh_cFif */
#ifdef NONMATCHING
// literals
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcAsh_c::setMotionAnm(int param_0, f32 param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/setMotionAnm__10daNpcAsh_cFif.s"
}
#pragma pop
#endif

/* 80959910-80959B28 001710 0218+00 1/1 0/0 0/0 .text            reset__10daNpcAsh_cFv */
#ifdef NONMATCHING
// literals
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcAsh_c::reset() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/reset__10daNpcAsh_cFv.s"
}
#pragma pop
#endif

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

/* 8095D770-8095D77C 000130 000C+00 0/1 0/0 0/0 .rodata          @4658 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4658[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D770, &lit_4658);
#pragma pop

/* 8095D77C-8095D780 00013C 0004+00 0/1 0/0 0/0 .rodata          @4659 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4659[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8095D77C, &lit_4659);
#pragma pop

/* 8095D780-8095D78C 000140 000C+00 0/1 0/0 0/0 .rodata          @4660 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4660[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D780, &lit_4660);
#pragma pop

/* 8095D78C-8095D790 00014C 0004+00 0/1 0/0 0/0 .rodata          @4661 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4661[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8095D78C, &lit_4661);
#pragma pop

/* 8095D790-8095D79C 000150 000C+00 0/1 0/0 0/0 .rodata          @4662 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4662[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D790, &lit_4662);
#pragma pop

/* 8095D79C-8095D7A0 00015C 0004+00 0/1 0/0 0/0 .rodata          @4663 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4663[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8095D79C, &lit_4663);
#pragma pop

/* 8095D7A0-8095D7AC 000160 000C+00 0/1 0/0 0/0 .rodata          @4664 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4664[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x8095D7A0, &lit_4664);
#pragma pop

/* 8095D7AC-8095D7B8 00016C 000C+00 0/1 0/0 0/0 .rodata          @4665 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4665[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D7AC, &lit_4665);
#pragma pop

/* 8095D7B8-8095D7C0 000178 0008+00 0/1 0/0 0/0 .rodata          @4666 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4666[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D7B8, &lit_4666);
#pragma pop

/* 8095D7C0-8095D7CC 000180 000C+00 0/1 0/0 0/0 .rodata          @4667 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4667[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x8095D7C0, &lit_4667);
#pragma pop

/* 8095D7CC-8095D7D8 00018C 000C+00 0/1 0/0 0/0 .rodata          @4668 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4668[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D7CC, &lit_4668);
#pragma pop

/* 8095D7D8-8095D7E0 000198 0008+00 0/1 0/0 0/0 .rodata          @4669 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4669[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D7D8, &lit_4669);
#pragma pop

/* 8095D7E0-8095D7EC 0001A0 000C+00 0/1 0/0 0/0 .rodata          @4670 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4670[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x8095D7E0, &lit_4670);
#pragma pop

/* 8095D7EC-8095D7F8 0001AC 000C+00 0/1 0/0 0/0 .rodata          @4671 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4671[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D7EC, &lit_4671);
#pragma pop

/* 8095D7F8-8095D800 0001B8 0008+00 0/1 0/0 0/0 .rodata          @4672 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4672[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D7F8, &lit_4672);
#pragma pop

/* 8095D800-8095D80C 0001C0 000C+00 0/1 0/0 0/0 .rodata          @4673 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4673[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x8095D800, &lit_4673);
#pragma pop

/* 8095D80C-8095D818 0001CC 000C+00 0/1 0/0 0/0 .rodata          @4674 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4674[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D80C, &lit_4674);
#pragma pop

/* 8095D818-8095D820 0001D8 0008+00 0/1 0/0 0/0 .rodata          @4675 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4675[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D818, &lit_4675);
#pragma pop

/* 8095D820-8095D82C 0001E0 000C+00 0/1 0/0 0/0 .rodata          @4676 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4676[12] = {
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D820, &lit_4676);
#pragma pop

/* 8095D82C-8095D830 0001EC 0004+00 0/1 0/0 0/0 .rodata          @4677 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4677[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8095D82C, &lit_4677);
#pragma pop

/* 8095D830-8095D83C 0001F0 000C+00 0/1 0/0 0/0 .rodata          @4678 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4678[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D830, &lit_4678);
#pragma pop

/* 8095D83C-8095D840 0001FC 0004+00 0/1 0/0 0/0 .rodata          @4679 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4679[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8095D83C, &lit_4679);
#pragma pop

/* 8095D840-8095D84C 000200 000C+00 0/1 0/0 0/0 .rodata          @4680 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4680[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x8095D840, &lit_4680);
#pragma pop

/* 8095D84C-8095D850 00020C 0004+00 0/1 0/0 0/0 .rodata          @4681 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4681[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8095D84C, &lit_4681);
#pragma pop

/* 8095D850-8095D878 000210 0028+00 0/0 0/0 0/0 .rodata          @4682 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4682[40] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D850, &lit_4682);
#pragma pop

/* 8095D878-8095D884 000238 000C+00 0/1 0/0 0/0 .rodata          @4697 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4697[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D878, &lit_4697);
#pragma pop

/* 8095D884-8095D888 000244 0004+00 4/9 0/0 0/0 .rodata          @4976 */
SECTION_RODATA static f32 const lit_4976 = -1.0f;
COMPILER_STRIP_GATE(0x8095D884, &lit_4976);

/* 8095D888-8095D88C 000248 0004+00 0/3 0/0 0/0 .rodata          @4977 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4977 = 0x3BB40000;
COMPILER_STRIP_GATE(0x8095D888, &lit_4977);
#pragma pop

/* 8095D88C-8095D890 00024C 0004+00 0/4 0/0 0/0 .rodata          @4978 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4978 = 15.0f;
COMPILER_STRIP_GATE(0x8095D88C, &lit_4978);
#pragma pop

/* 8095D890-8095D898 000250 0008+00 0/3 0/0 0/0 .rodata          @4980 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4980[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D890, &lit_4980);
#pragma pop

/* 80959C40-8095A67C 001A40 0A3C+00 4/0 0/0 0/0 .text            wait_type0__10daNpcAsh_cFPv */
#ifdef NONMATCHING
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
                if (!dComIfGp_event_chkTalkXY() || dComIfGp_evmng_ChkPresentEnd()) {
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daNpcAsh_c::wait_type0(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/wait_type0__10daNpcAsh_cFPv.s"
}
#pragma pop
#endif

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

/* ############################################################################################## */
/* 8095D898-8095D89C 000258 0004+00 0/1 0/0 0/0 .rodata          @5033 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5033 = 0xC5866001;
COMPILER_STRIP_GATE(0x8095D898, &lit_5033);
#pragma pop

/* 8095D89C-8095D8A0 00025C 0004+00 0/1 0/0 0/0 .rodata          @5034 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5034 = 0x4606CEA1;
COMPILER_STRIP_GATE(0x8095D89C, &lit_5034);
#pragma pop

/* 8095A6EC-8095A8EC 0024EC 0200+00 3/0 0/0 0/0 .text            wait_type1__10daNpcAsh_cFPv */
#ifdef NONMATCHING
// literals
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
                current.pos.set(-4300.0f, 0.0f, 8627.657f);
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daNpcAsh_c::wait_type1(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/wait_type1__10daNpcAsh_cFPv.s"
}
#pragma pop
#endif

/* 8095A8EC-8095AD28 0026EC 043C+00 1/0 0/0 0/0 .text            talk__10daNpcAsh_cFPv */
#ifdef NONMATCHING
// literals
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daNpcAsh_c::talk(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/talk__10daNpcAsh_cFPv.s"
}
#pragma pop
#endif

/* 8095AD28-8095B164 002B28 043C+00 1/0 0/0 0/0 .text            demo__10daNpcAsh_cFPv */
#ifdef NONMATCHING
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
        if (dComIfGp_event_runCheck() && !eventInfo.checkCommandTalk()) {
            s32 staff_id = dComIfGp_getEventManager().getMyStaffId(l_myName, NULL, 0);
            if (staff_id != -1) {
                mStaffID = staff_id;
                s32 eventIdx = dComIfGp_getEventManager().getMyActIdx(staff_id, l_evtNames,
                                                                      ARRAY_SIZE(l_evtNames), 0, 0);
                if (eventIdx >= 1 && eventIdx < 6) {
                    mOrderEvtNo = eventIdx;
                }
                if ((this->*(mEvtSeqList[mOrderEvtNo]))(staff_id)) {
                    dComIfGp_getEventManager().cutEnd(staff_id);
                }
            }

            if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1
                && dComIfGp_getEventManager().endCheck(mEventIdx))
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daNpcAsh_c::demo(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/demo__10daNpcAsh_cFPv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8095D8A0-8095D8A4 000260 0004+00 0/1 0/0 0/0 .rodata          @5227 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5227 = 0xC5C36B19;
COMPILER_STRIP_GATE(0x8095D8A0, &lit_5227);
#pragma pop

/* 8095D8A4-8095D8A8 000264 0004+00 0/1 0/0 0/0 .rodata          @5228 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5228 = 0x45C35E15;
COMPILER_STRIP_GATE(0x8095D8A4, &lit_5228);
#pragma pop

/* 8095D8A8-8095D8B0 000268 0008+00 0/2 0/0 0/0 .rodata          @5229 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5229[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D8A8, &lit_5229);
#pragma pop

/* 8095D8B0-8095D8B8 000270 0008+00 0/2 0/0 0/0 .rodata          @5230 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5230[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D8B0, &lit_5230);
#pragma pop

/* 8095D8B8-8095D8C0 000278 0008+00 0/2 0/0 0/0 .rodata          @5231 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5231[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D8B8, &lit_5231);
#pragma pop

/* 8095B164-8095B48C 002F64 0328+00 1/0 0/0 0/0 .text            leave__10daNpcAsh_cFPv */
#ifdef NONMATCHING
// literals
bool daNpcAsh_c::leave(void* param_0) {
    cXyz target;
    target.set(-6253.387, 0.0, 6251.76);

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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daNpcAsh_c::leave(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/leave__10daNpcAsh_cFPv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8095D910-8095D910 0002D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8095D98B = "prm";
#pragma pop

/* 8095B48C-8095B58C 00328C 0100+00 1/0 0/0 0/0 .text            EvCut_Introduction__10daNpcAsh_cFi
 */

BOOL daNpcAsh_c::EvCut_Introduction(int i_staffID) {
    int* prm = dComIfGp_evmng_getMyIntegerP(i_staffID, ((char*)&d_a_npc_ash__stringBase0) + 0x7B);
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


/* ############################################################################################## */
/* 8095D8C0-8095D8D0 000280 0010+00 1/1 0/0 0/0 .rodata          @5254 */
SECTION_RODATA static u8 const lit_5254[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D8C0, &lit_5254);

/* 8095B58C-8095B83C 00338C 02B0+00 1/0 0/0 0/0 .text            EvCut_Meeting__10daNpcAsh_cFi */
#ifdef NONMATCHING
// literals
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpcAsh_c::EvCut_Meeting(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/EvCut_Meeting__10daNpcAsh_cFi.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8095D8D0-8095D8E0 000290 0010+00 1/1 0/0 0/0 .rodata          @5295 */
SECTION_RODATA static u8 const lit_5295[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8095D8D0, &lit_5295);

/* 8095B83C-8095BA80 00363C 0244+00 1/0 0/0 0/0 .text EvCut_WiretapSponsor__10daNpcAsh_cFi */
#ifdef NONMATCHING
// literals
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpcAsh_c::EvCut_WiretapSponsor(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/EvCut_WiretapSponsor__10daNpcAsh_cFi.s"
}
#pragma pop
#endif

/* 8095BA80-8095BC38 003880 01B8+00 2/0 0/0 0/0 .text EvCut_WiretapEntrant__10daNpcAsh_cFi */
#ifdef NONMATCHING
BOOL daNpcAsh_c::EvCut_WiretapEntrant(int i_staffID) {
    int* prm = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm == NULL) {
        return false;
    }

    if (dComIfGp_getEventManager().getIsAddvance(i_staffID)) {
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpcAsh_c::EvCut_WiretapEntrant(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/EvCut_WiretapEntrant__10daNpcAsh_cFi.s"
}
#pragma pop
#endif

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

/* 8095BCC0-8095BCF0 003AC0 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void J3DTexNoAnm::calc(u16* param_0) const {
asm void calc__11J3DTexNoAnmCFPUs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/calc__11J3DTexNoAnmCFPUs.s"
}
#pragma pop

/* 8095BCF0-8095BF6C 003AF0 027C+00 1/0 0/0 0/0 .text            setParam__10daNpcAsh_cFv */
#ifdef NONMATCHING
// literals
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcAsh_c::setParam() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/setParam__10daNpcAsh_cFv.s"
}
#pragma pop
#endif

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

// /* 8095C200-8095C520 004000 0320+00 1/1 0/0 0/0 .text            playMotion__10daNpcAsh_cFv */
#ifdef NONMATCHING
// matches with literals
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcAsh_c::playMotion() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/playMotion__10daNpcAsh_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8095D8E0-8095D8E4 0002A0 0004+00 0/1 0/0 0/0 .rodata          @5492 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5492 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x8095D8E0, &lit_5492);
#pragma pop

/* 8095D8E4-8095D8E8 0002A4 0004+00 0/1 0/0 0/0 .rodata          @5493 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5493 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x8095D8E4, &lit_5493);
#pragma pop

/* 8095C520-8095C5C4 004320 00A4+00 1/0 0/0 0/0 .text            ctrlBtk__10daNpcAsh_cFv */
#ifdef NONMATCHING
BOOL daNpcAsh_c::ctrlBtk() {
    if (mpMatAnm != NULL) {
        mpMatAnm->setNowOffsetX(cM_ssin(mEyeAngle.y) * 0.2f * -1.0f);
        mpMatAnm->setNowOffsetY(cM_ssin(mEyeAngle.x) * 0.4f);
        mpMatAnm->onEyeMoveFlag();
        return true;
    } else {
        return false;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpcAsh_c::ctrlBtk() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/ctrlBtk__10daNpcAsh_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8095D8E8-8095D8EC 0002A8 0004+00 0/1 0/0 0/0 .rodata          @5589 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5589 = 10.0f;
COMPILER_STRIP_GATE(0x8095D8E8, &lit_5589);
#pragma pop

/* 8095D8EC-8095D8F0 0002AC 0004+00 0/1 0/0 0/0 .rodata          @5590 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5590 = 3070.0f;
COMPILER_STRIP_GATE(0x8095D8EC, &lit_5590);
#pragma pop

/* 8095D8F0-8095D8F4 0002B0 0004+00 0/1 0/0 0/0 .rodata          @5591 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5591 = -1150.0f;
COMPILER_STRIP_GATE(0x8095D8F0, &lit_5591);
#pragma pop

/* 8095D8F4-8095D8F8 0002B4 0004+00 0/1 0/0 0/0 .rodata          @5592 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5592 = 2446.0f;
COMPILER_STRIP_GATE(0x8095D8F4, &lit_5592);
#pragma pop

/* 8095D8F8-8095D8FC 0002B8 0004+00 0/1 0/0 0/0 .rodata          @5593 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5593 = 170.0f;
COMPILER_STRIP_GATE(0x8095D8F8, &lit_5593);
#pragma pop

/* 8095D8FC-8095D900 0002BC 0004+00 0/1 0/0 0/0 .rodata          @5594 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5594 = 60.0f;
COMPILER_STRIP_GATE(0x8095D8FC, &lit_5594);
#pragma pop

/* 8095C5C4-8095C9BC 0043C4 03F8+00 1/0 0/0 0/0 .text            setAttnPos__10daNpcAsh_cFv */
#ifdef NONMATCHING
// literals
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

    if (mType == TYPE_BAR && (!daNpcF_chkEvtBit(0x169) || !daNpcF_chkEvtBit(0x10a)
                            || !daNpcF_chkEvtBit(0x10b) || daNpcF_chkEvtBit(0x10c))) {
        center.set(3070.0f, -1150.0f, 2446.0f);
        mCcCyl[1].SetC(center);
        mCcCyl[1].SetH(170.0f);
        mCcCyl[1].SetR(60.0f);
        dComIfG_Ccsp()->Set(&mCcCyl[1]);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcAsh_c::setAttnPos() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/setAttnPos__10daNpcAsh_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8095D900-8095D904 0002C0 0004+00 0/1 0/0 0/0 .rodata          @5649 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5649 = -15.0f;
COMPILER_STRIP_GATE(0x8095D900, &lit_5649);
#pragma pop

/* 8095D904-8095D908 0002C4 0004+00 0/1 0/0 0/0 .rodata          @5650 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5650 = -30.0f;
COMPILER_STRIP_GATE(0x8095D904, &lit_5650);
#pragma pop

/* 8095D908-8095D90C 0002C8 0004+00 0/1 0/0 0/0 .rodata          @5651 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5651 = 30.0f;
COMPILER_STRIP_GATE(0x8095D908, &lit_5651);
#pragma pop

/* 8095D90C-8095D910 0002CC 0004+00 0/1 0/0 0/0 .rodata          @5652 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5652 = 40.0f;
COMPILER_STRIP_GATE(0x8095D90C, &lit_5652);
#pragma pop

/* 8095C9BC-8095CC8C 0047BC 02D0+00 1/1 0/0 0/0 .text            lookat__10daNpcAsh_cFv */
#ifdef NONMATCHING
// literals
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
    f32 head_right_angle = mMotion == MOT_WAIT_A ? 0.0f : daNpcAsh_Param_c::m.mHeadRightAngle;
    f32 head_left_angle = mMotion == MOT_WAIT_A ? 0.0f : daNpcAsh_Param_c::m.mHeadLeftAngle;
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcAsh_c::lookat() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/lookat__10daNpcAsh_cFv.s"
}
#pragma pop
#endif

/* 8095CC8C-8095CC94 004A8C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__10daNpcAsh_cFv */
BOOL daNpcAsh_c::drawDbgInfo() {
    return false;
}

/* 8095CC94-8095CCA0 004A94 000C+00 1/1 0/0 0/0 .text sinShort__Q25JMath18TSinCosTable<13,f>CFs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_8095CC94(void* _this, s16 param_0) /* const */ {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/func_8095CC94.s"
}
#pragma pop

/* ############################################################################################## */
/* 8095DD2C-8095DD38 00039C 000C+00 2/2 0/0 0/0 .data            __vt__16daNpcAsh_Param_c */
SECTION_DATA extern void* __vt__16daNpcAsh_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daNpcAsh_Param_cFv,
};

/* 8095DD40-8095DD4C 000008 000C+00 1/1 0/0 0/0 .bss             @3822 */
static u8 lit_3822[12];

/* 8095DD4C-8095DD50 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 8095CCA0-8095CD8C 004AA0 00EC+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_ash_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_npc_ash_cpp() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__sinit_d_a_npc_ash_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8095CCA0, __sinit_d_a_npc_ash_cpp);
#pragma pop

/* 8095CD8C-8095CDD4 004B8C 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
asm void __dt__18daNpcF_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__18daNpcF_ActorMngr_cFv.s"
}
#pragma pop

/* 8095CDD4-8095CE10 004BD4 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
asm void __ct__18daNpcF_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__ct__18daNpcF_ActorMngr_cFv.s"
}
#pragma pop

/* 8095CE10-8095CEE0 004C10 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_Lookat_c::~daNpcF_Lookat_c() {
asm void __dt__15daNpcF_Lookat_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__15daNpcF_Lookat_cFv.s"
}
#pragma pop

/* 8095CEE0-8095CF1C 004CE0 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__5csXyzFv.s"
}
#pragma pop

/* 8095CF1C-8095CF20 004D1C 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
void __ct__5csXyzFv() {
    /* empty function */
}

/* 8095CF20-8095CF5C 004D20 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__4cXyzFv.s"
}
#pragma pop

/* 8095CF5C-8095CF60 004D5C 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
void __ct__4cXyzFv() {
    /* empty function */
}

/* 8095CF60-8095D1AC 004D60 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_c::~daNpcF_c() {
asm void __dt__8daNpcF_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__8daNpcF_cFv.s"
}
#pragma pop

/* 8095D1AC-8095D39C 004FAC 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_c::daNpcF_c() {
asm void __ct__8daNpcF_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__ct__8daNpcF_cFv.s"
}
#pragma pop

/* 8095D39C-8095D40C 00519C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 8095D40C-8095D468 00520C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 8095D468-8095D4D8 005268 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 8095D4D8-8095D520 0052D8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 8095D520-8095D524 005320 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__8daNpcF_cFv */
// void daNpcF_c::adjustShapeAngle() {
void adjustShapeAngle__8daNpcF_cFv() {
    /* empty function */
}

/* 8095D524-8095D528 005324 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 8095D528-8095D52C 005328 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__8daNpcF_cFv */
// void daNpcF_c::drawOtherMdls() {
void drawOtherMdls__8daNpcF_cFv() {
    /* empty function */
}

/* 8095D52C-8095D574 00532C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 8095D574-8095D5D4 005374 0060+00 1/1 0/0 0/0 .text chkPointInArea__15daTag_EvtArea_cF4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daTag_EvtArea_c::chkPointInArea(cXyz param_0) {
asm void chkPointInArea__15daTag_EvtArea_cF4cXyz() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/chkPointInArea__15daTag_EvtArea_cF4cXyz.s"
}
#pragma pop

/* 8095D5D4-8095D61C 0053D4 0048+00 2/1 0/0 0/0 .text            __dt__16daNpcAsh_Param_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpcAsh_Param_c::~daNpcAsh_Param_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/__dt__16daNpcAsh_Param_cFv.s"
}
#pragma pop

/* 8095D61C-8095D624 00541C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_8095D61C() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/func_8095D61C.s"
}
#pragma pop

/* 8095D624-8095D62C 005424 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_8095D624() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ash/d_a_npc_ash/func_8095D624.s"
}
#pragma pop

/* 8095D910-8095D910 0002D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
