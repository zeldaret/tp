/**
 * @file d_a_npc_moir.cpp
 * 
*/

#include "d/actor/d_a_npc_moir.h"
#include "d/actor/d_a_ni.h"
#include "d/actor/d_a_npc_tk.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__11daNpcMoiR_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__11daNpcMoiR_cFv();
extern "C" void Create__11daNpcMoiR_cFv();
extern "C" void CreateHeap__11daNpcMoiR_cFv();
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
extern "C" void Delete__11daNpcMoiR_cFv();
extern "C" void Execute__11daNpcMoiR_cFv();
extern "C" void Draw__11daNpcMoiR_cFv();
extern "C" void ctrlJoint__11daNpcMoiR_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__11daNpcMoiR_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpcMoiR_cFP8J3DJointi();
extern "C" void setExpressionBtp__11daNpcMoiR_cFi();
extern "C" void setMotionAnm__11daNpcMoiR_cFif();
extern "C" void reset__11daNpcMoiR_cFv();
extern "C" void setWaitAction__11daNpcMoiR_cFv();
extern "C" void wait_type0__11daNpcMoiR_cFPv();
extern "C" void setMotion__11daNpcMoiR_cFifi();
extern "C" void setExpression__11daNpcMoiR_cFif();
extern "C" void wait_type1__11daNpcMoiR_cFPv();
extern "C" void wait_type2__11daNpcMoiR_cFPv();
extern "C" void talk__11daNpcMoiR_cFPv();
extern "C" void multiTalk__11daNpcMoiR_cFPv();
extern "C" void fight__11daNpcMoiR_cFPv();
extern "C" void demo__11daNpcMoiR_cFPv();
extern "C" void leave__11daNpcMoiR_cFPv();
extern "C" void EvCut_Introduction__11daNpcMoiR_cFi();
extern "C" void EvCut_Appear__11daNpcMoiR_cFi();
extern "C" void EvCut_Appear2__11daNpcMoiR_cFi();
extern "C" static void daNpcMoiR_Create__FPv();
extern "C" static void daNpcMoiR_Delete__FPv();
extern "C" static void daNpcMoiR_Execute__FPv();
extern "C" static void daNpcMoiR_Draw__FPv();
extern "C" static bool daNpcMoiR_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void setParam__11daNpcMoiR_cFv();
extern "C" void main__11daNpcMoiR_cFv();
extern "C" void checkHeadGear__11daNpcMoiR_cFv();
extern "C" void playMotion__11daNpcMoiR_cFv();
extern "C" void ctrlBtk__11daNpcMoiR_cFv();
extern "C" void setAttnPos__11daNpcMoiR_cFv();
extern "C" void lookat__11daNpcMoiR_cFv();
extern "C" void drawOtherMdls__11daNpcMoiR_cFv();
extern "C" bool drawDbgInfo__11daNpcMoiR_cFv();
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
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80A830EC(void* _this, int*);
extern "C" void func_80A83108(void* _this, int, int);
extern "C" void __sinit_d_a_npc_moir_cpp();
extern "C" void __dt__17daNpcMoiR_Param_cFv();
extern "C" static void func_80A83288();
extern "C" static void func_80A83290();
extern "C" u8 const m__17daNpcMoiR_Param_c[116];
extern "C" extern char const* const d_a_npc_moir__stringBase0;
extern "C" u8 mEvtSeqList__11daNpcMoiR_c[48];

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
extern "C" void fopAcM_SearchByName__FsPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGs_isStageSwitch__Fii();
extern "C" void isSwitch__12dSv_memBit_cCFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
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
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void daNpcF_onEvtBit__FUl();
extern "C" void daNpcF_chkTmpBit__FUl();
extern "C" void daNpcF_offTmpBit__FUl();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
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
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
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
extern "C" void __register_global_object();

UNK_REL_DATA;

/* 80A838D0-80A83AA4 000020 01D4+00 3/4 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam2 l_bckGetParamList[39] = {
    {-1, 0, 0},
    {7, 0, 0},
    {6, 0, 0},
    {5, 0, 0},
    {7, 0, 2},
    {6, 0, 0},
    {3, 0, 3},
    {8, 2, 0},
    {9, 2, 0},
    {8, 2, 0},
    {4, 0, 3},
    {0xC, 2, 0},
    {0x14, 2, 2},
    {0x15, 2, 2},
    {0xB, 0, 0},
    {0xA, 0, 0},
    {0xA, 2, 2},
    {9, 0, 2},
    {0xE, 0, 2},
    {0xF, 2, 2},
    {0xD, 0, 2},
    {0xB, 2, 2},
    {0xC, 2, 2},
    {4, 0, 2},
    {0x11, 0, 2},
    {0x12, 2, 2},
    {0x13, 0, 2},
    {0x10, 0, 2},
    {3, 2, 1},
    {4, 0, 1},
    {6, 0, 1},
    {7, 2, 1},
    {8, 0, 1},
    {5, 0, 1},
    {6, 0, 3},
    {9, 2, 3},
    {7, 0, 3},
    {8, 2, 3},
    {5, 2, 3},
};

/* 80A83AA4-80A83ABC 0001F4 0018+00 1/1 0/0 0/0 .data            l_btpGetParamList */
static daNpc_GetParam2 l_btpGetParamList[2] = {
    {0x16, 2, 0},
    {0x17, 2, 0},
};

/* 80A83ABC-80A83AC8 00020C 000C+00 1/2 0/0 0/0 .data            l_btkGetParamList */
static daNpc_GetParam2 l_btkGetParamList[1] = {
    {0x13, 2, 0},
};

/* 80A83AC8-80A83AD4 000218 000C+00 1/0 0/0 0/0 .data            l_loadRes_MOIR0 */
static int l_loadRes_MOIR0[3] = {
    0, 1, -1,
};

/* 80A83AD4-80A83AE0 000224 000C+00 1/0 0/0 0/0 .data            l_loadRes_MOIR1 */
static int l_loadRes_MOIR1[3] = {
    0, 2, -1,
};

/* 80A83AE0-80A83AEC 000230 000C+00 1/0 0/0 0/0 .data            l_loadRes_MOIR2 */
static int l_loadRes_MOIR2[3] = {
    0, 3, -1,
};

/* 80A83AEC-80A83AF8 -00001 000C+00 2/2 0/0 0/0 .data            l_loadRes_list */
static int* l_loadRes_list[3] = {
    l_loadRes_MOIR0,
    l_loadRes_MOIR1,
    l_loadRes_MOIR2,
};

/* 80A83AF8-80A83B08 -00001 0010+00 8/13 0/0 0/0 .data            l_arcNames */
static char* l_arcNames[4] = {
    "MoiR",
    "MoiR1",
    "MoiR2",
    "MoiR3",
};

/* 80A83B08-80A83B18 -00001 0010+00 0/5 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[4] = {
    "",
    "THE_INTRODUCTION",
    "MOIR_APPEAR",
    "MOIR_APPEAR2",
};

/* 80A83B18-80A83B1C -00001 0004+00 0/3 0/0 0/0 .data            l_myName */
static char* l_myName = "MoiR";

/* 80A83B40-80A83B70 000290 0030+00 0/2 0/0 0/0 .data            mEvtSeqList__11daNpcMoiR_c */
daNpcMoiR_c::EventFn daNpcMoiR_c::mEvtSeqList[4] = {
    NULL,
    &daNpcMoiR_c::EvCut_Introduction,
    &daNpcMoiR_c::EvCut_Appear,
    &daNpcMoiR_c::EvCut_Appear2,
};

/* 80A7C16C-80A7C2F0 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__11daNpcMoiR_cFv */
daNpcMoiR_c::daNpcMoiR_c() {}

/* 80A7C380-80A7C580 000300 0200+00 1/0 0/0 0/0 .text            __dt__11daNpcMoiR_cFv */
daNpcMoiR_c::~daNpcMoiR_c() {
    for (int i = 0; l_loadRes_list[mMode][i] >= 0; i++) {
        dComIfG_resDelete(&mPhase[i], l_arcNames[l_loadRes_list[mMode][i]]);
    }

    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
}

/* 80A832AC-80A83320 000000 0074+00 17/17 0/0 0/0 .rodata          m__17daNpcMoiR_Param_c */
daNpcMoiR_HIOParam const daNpcMoiR_Param_c::m = {
    35.0f,
    -3.0f,
    1.0f,
    400.0f,
    255.0f,
    200.0f,
    35.0f,
    30.0f,
    0.0f,
    0.0f,
    10.0f,
    -10.0f,
    30.0f,
    -10.0f,
    45.0f,
    -45.0f,
    0.6f,
    12.0f,
    3,
    6,
    5,
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
    300.0f,
    0x15CD,
    0,
};

/* 80A7C580-80A7C978 000500 03F8+00 1/1 0/0 0/0 .text            Create__11daNpcMoiR_cFv */
cPhs__Step daNpcMoiR_c::Create() {
    fopAcM_SetupActor(this, daNpcMoiR_c);

    if (strcmp(dComIfGp_getStartStageName(), "R_SP116") == 0 && dComIfG_play_c::getLayerNo(0) == 4) {
        if (daNpcF_chkEvtBit(0x169) /* dSv_event_flag_c::F_0361 - Arbiter's Grounds - Spun the spinning pillars */
            && daNpcF_chkEvtBit(0x10A) /* dSv_event_flag_c::F_0266 - Snowpeak Ruins - Snowpeak Ruins clear */
            && !daNpcF_chkEvtBit(0x10B) /* dSv_event_flag_c::F_0267 - Temple of Time - Temple of Time clear */) {
            return cPhs_ERROR_e;
        }

        if (dComIfGs_isStageSwitch(0x18, 0x4B)) {
            return cPhs_ERROR_e;
        }

        mMode = 0;
    } else {
        if (strcmp(dComIfGp_getStartStageName(), "F_SP108") == 0) {
            if (daNpcF_chkEvtBit(0x10B) /* dSv_event_flag_c::F_0267 - Temple of Time - Temple of Time clear */) {
                return cPhs_ERROR_e;
            }

            mMode = 1;
        } else {
            if (strcmp(dComIfGp_getStartStageName(), "D_MN09") == 0) {
                if (dComIfGs_isSaveSwitch(0x14)) {
                    return cPhs_ERROR_e;
                }

                fopAcM_OnStatus(this, fopAcM_STATUS_UNK_004000);
                mMode = 2;
            }
        }
    }

    mMsgNo = getMessageNo();
    cPhs__Step phase = cPhs_ERROR_e;
    for (int i = 0; l_loadRes_list[mMode][i] >= 0; i++) {
        phase = (cPhs__Step)dComIfG_resLoad(&mPhase[i], l_arcNames[l_loadRes_list[mMode][i]]);
        if (phase != cPhs_COMPLEATE_e) {
            return phase;
        }
    }

    if (phase == cPhs_COMPLEATE_e) {
        u32 i_size = 0;
        switch (mMode) {
            case 0:
                i_size = 0x4850;
                break;

            case 1:
                i_size = 0x4860;
                break;

            case 2:
                i_size = 0x4850;
                break;

            default:
                JUT_ASSERT(343, 0);
                break;
        }

        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, i_size)) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -100.0f, -50.0f, -100.0f, 100.0f, 220.0f, 100.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);

        mAcchCir.SetWall(daNpcMoiR_Param_c::m.common.width, daNpcMoiR_Param_c::m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1,
                  &mAcchCir, fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mAcch.SetRoofNone();
        mAcch.SetWaterNone();
        mAcch.CrrPos(dComIfG_Bgsp());

        mCcStts.Init(daNpcMoiR_Param_c::m.common.weight, 0, this);
        field_0xca0.Set(mCcDCyl);
        field_0xca0.SetStts(&mCcStts);
        field_0xca0.SetTgType(0);
        field_0xca0.SetTgSPrm(0);

        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        setEnvTevColor();
        setRoomNo();
        mpMorf->modelCalc();
        reset();
        Execute();
    }

    return phase;
}

/* 80A7C978-80A7CC8C 0008F8 0314+00 1/1 0/0 0/0 .text            CreateHeap__11daNpcMoiR_cFv */
int daNpcMoiR_c::CreateHeap() {
    J3DModelData* mdlData_p = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_arcNames[0], 0xF));

    JUT_ASSERT(403, 0 != mdlData_p);

    mpMorf = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11020284);
    if (mpMorf != NULL && mpMorf->getModel() == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }

    if (mpMorf == NULL) {
        return 0;
    }

    J3DModel* mdl_p = mpMorf->getModel();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    mdl_p->setUserArea((u32)this);

    mpMatAnm = new daNpcF_MatAnm_c();
    if (mpMatAnm == NULL) {
        return 0;
    }

    mdlData_p = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_arcNames[0], 0x10));

    JUT_ASSERT(436, mdlData_p != 0);

    field_0xbd8 = mDoExt_J3DModel__create(mdlData_p, 0x80000, 0x11000084);

    if (!setExpressionAnm(1, false)) {
        return 0;
    }

    switch (mMode) {
        case 0:
            setMotionAnm(0x1C, 0.0f);
            break;

        case 1:
            setMotionAnm(0xD, 0.0f);
            break;

        case 2:
            setMotionAnm(0x25, 0.0f);
            break;

        default:
            JUT_ASSERT(448, 0);
            break;
    }

    return 1;
}

/* 80A7CE48-80A7CE7C 000DC8 0034+00 1/1 0/0 0/0 .text            Delete__11daNpcMoiR_cFv */
int daNpcMoiR_c::Delete() {
    this->~daNpcMoiR_c();
    return 1;
}

/* 80A7CE7C-80A7CEA0 000DFC 0024+00 2/2 0/0 0/0 .text            Execute__11daNpcMoiR_cFv */
int daNpcMoiR_c::Execute() {
    execute();
    return 1;
}

/* 80A7CEA0-80A7CEFC 000E20 005C+00 1/1 0/0 0/0 .text            Draw__11daNpcMoiR_cFv */
int daNpcMoiR_c::Draw() {
    mpMorf->getModel()->getModelData()->getMaterialNodePointer(1)->setMaterialAnm(mpMatAnm);
    draw(FALSE, FALSE, daNpcMoiR_Param_c::m.common.real_shadow_size, NULL, FALSE);
    return 1;
}

/* 80A7CEFC-80A7D0CC 000E7C 01D0+00 1/1 0/0 0/0 .text            ctrlJoint__11daNpcMoiR_cFP8J3DJointP8J3DModel */
int daNpcMoiR_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jntNo = i_joint->getJntNo();
    int iVar1[3] = {1, 3, 4};

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
            setLookatMtx(jntNo, iVar1, daNpcMoiR_Param_c::m.common.neck_rotation_ratio);
            break;

    }

    i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    if ((jntNo == 4 || jntNo == 8) && (mAnmFlags & ANM_PLAY_BCK) != 0) {
        J3DAnmTransform* anm = mBckAnm.getBckAnm();
        J3DAnmTransform* i_bck = mpMorf->getAnm();
        mBckAnm.changeBckOnly(i_bck);
        mpMorf->changeAnm(anm);
    }

    return 1;
}

/* 80A7D0CC-80A7D0EC 00104C 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__11daNpcMoiR_cFP10fopAc_ac_c */
int daNpcMoiR_c::createHeapCallBack(fopAc_ac_c* a_this) {
    daNpcMoiR_c* i_this = (daNpcMoiR_c*)a_this;
    i_this->CreateHeap();
}

/* 80A7D0EC-80A7D138 00106C 004C+00 1/1 0/0 0/0 .text            ctrlJointCallBack__11daNpcMoiR_cFP8J3DJointi */
int daNpcMoiR_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpcMoiR_c* i_this = (daNpcMoiR_c*)model->getUserArea();

        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

inline void daNpcMoiR_c::setLookMode(int i_lookMode) {
    if (i_lookMode >= LOOK_NONE && i_lookMode <= LOOK_PLAYER_TALK && i_lookMode != mLookMode) {
        mLookMode = i_lookMode;
    }
}

inline BOOL daNpcMoiR_c::chkFindPlayer() {
    BOOL rv;
    f32 fVar1 = mMode == 0 ? 135.0f : daNpcMoiR_Param_c::m.common.fov;

    if (!chkActorInSight(daPy_getPlayerActorClass(), fVar1)) {
        mActorMngr[0].remove();
        return FALSE;
    } else {
        BOOL bVar1;
        if (mActorMngr[0].getActorP() == NULL) {
            bVar1 = chkPlayerInSpeakArea(this);
        } else {
            bVar1 = chkPlayerInTalkArea(this);
        }

        rv = bVar1;

        if (rv) {
            mActorMngr[0].entry(daPy_getPlayerActorClass());
        } else {
            mActorMngr[0].remove();
        }
    }

    return rv;
}

inline void daNpcMoiR_c::playExpression() {
    daNpcF_anmPlayData dat0 = {0x1, daNpcMoiR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1 = {0x5, daNpcMoiR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};
    daNpcF_anmPlayData dat2 = {0x3, daNpcMoiR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};
    daNpcF_anmPlayData dat3 = {0x8, daNpcMoiR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat3[1] = {&dat3};
    daNpcF_anmPlayData dat4 = {0x6, daNpcMoiR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4};
    daNpcF_anmPlayData dat5 = {0xA, 0.0f, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5};
    daNpcF_anmPlayData dat6 = {0x9, 0.0f, 0};
    daNpcF_anmPlayData* pDat6[1] = {&dat6};
    daNpcF_anmPlayData dat7 = {0x4, 4.0f, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};
    daNpcF_anmPlayData dat8 = {0x2, 0.0f, 0};
    daNpcF_anmPlayData* pDat8[1] = {&dat8};
    daNpcF_anmPlayData dat9 = {0x7, daNpcMoiR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat9[1] = {&dat9};
    daNpcF_anmPlayData dat10 = {0, daNpcMoiR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat10[1] = {&dat10};
    daNpcF_anmPlayData* pDat11[1] = {&dat0};

    daNpcF_anmPlayData** ppDat[19] = {
        pDat0,
        pDat11,
        pDat11,
        pDat1,
        pDat11,
        pDat11,
        pDat11,
        pDat11,
        pDat11,
        pDat11,
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

    if (mExpression >= 0 && mExpression < 0x13) {
        playExpressionAnm(ppDat);
    }
}

/* 80A818B4-80A8210C 005834 0858+00 1/1 0/0 0/0 .text            playMotion__11daNpcMoiR_cFv */
void daNpcMoiR_c::playMotion() {
    // NONMATCHING
    daNpcF_anmPlayData dat0 = {0xB, daNpcMoiR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1a = {0xE, daNpcMoiR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat1b = {0xD, 0.0f, 0};
    daNpcF_anmPlayData* pDat1[2] = {&dat1a, &dat1b};
    daNpcF_anmPlayData dat2 = {0xC, daNpcMoiR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};
    daNpcF_anmPlayData dat3 = {0xD, daNpcMoiR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat3[1] = {&dat3};
    daNpcF_anmPlayData dat4a = {0x10, daNpcMoiR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat4b = {0xD, 0.0f, 0};
    daNpcF_anmPlayData* pDat4[2] = {&dat4a, &dat4b};
    daNpcF_anmPlayData dat5 = {0x13, daNpcMoiR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5};
    daNpcF_anmPlayData dat6 = {0x1C, daNpcMoiR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat6[1] = {&dat6};
    daNpcF_anmPlayData dat7a = {0x1D, daNpcMoiR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat7b = {0x1C, 0.0f, 0};
    daNpcF_anmPlayData* pDat7[2] = {&dat7a, &dat7b};
    daNpcF_anmPlayData dat8 = {0x15, daNpcMoiR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat8[1] = {&dat8};
    daNpcF_anmPlayData dat9a = {0x17, 0.0f, 1};
    daNpcF_anmPlayData dat9b = {0x15, 0.0f, 0};
    daNpcF_anmPlayData* pDat9[2] = {&dat9a, &dat9b};
    daNpcF_anmPlayData dat10a = {0x18, daNpcMoiR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat10b = {0x19, 0.0f, 0};
    daNpcF_anmPlayData* pDat10[2] = {&dat10a, &dat10b};
    daNpcF_anmPlayData dat11 = {0x19, daNpcMoiR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat11[1] = {&dat11};
    daNpcF_anmPlayData dat12a = {0x1A, daNpcMoiR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat12b = {0x19, 0.0f, 0};
    daNpcF_anmPlayData* pDat12[2] = {&dat12a, &dat12b};
    daNpcF_anmPlayData dat13a = {0x1B, daNpcMoiR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat13b = {0xD, 0.0f, 0};
    daNpcF_anmPlayData* pDat13[2] = {&dat13a, &dat13b};
    daNpcF_anmPlayData dat14a = {0x1E, daNpcMoiR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat14b = {0x1F, 0.0f, 0};
    daNpcF_anmPlayData* pDat14[2] = {&dat14a, &dat14b};
    daNpcF_anmPlayData dat15 = {0x1F, daNpcMoiR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat15[1] = {&dat15};
    daNpcF_anmPlayData dat16a = {0x20, daNpcMoiR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat16b = {0x1F, 0.0f, 0};
    daNpcF_anmPlayData* pDat16[2] = {&dat16a, &dat16b};
    daNpcF_anmPlayData dat17a = {0x21, daNpcMoiR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat17b = {0x1C, 0.0f, 0};
    daNpcF_anmPlayData* pDat17[2] = {&dat17a, &dat17b};
    daNpcF_anmPlayData dat18 = {0x26, daNpcMoiR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat18[1] = {&dat18};
    daNpcF_anmPlayData dat19 = {0x25, daNpcMoiR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat19[1] = {&dat19};
    daNpcF_anmPlayData dat20a = {0x24, 0.0f, 1};
    daNpcF_anmPlayData dat20b = {0x25, 0.0f, 0};
    daNpcF_anmPlayData* pDat20[2] = {&dat20a, &dat20b};
    daNpcF_anmPlayData dat21a = {0x14, 0.0f, 1};
    daNpcF_anmPlayData dat21b = {0x15, 0.0f, 0};
    daNpcF_anmPlayData* pDat21[2] = {&dat21a, &dat21b};
    daNpcF_anmPlayData dat22 = {0x16, 2.0f, 1};
    daNpcF_anmPlayData* pDat22[1] = {&dat22};
    daNpcF_anmPlayData dat23a = {0x12, daNpcMoiR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat23b = {0x13, 0.0f, 0};
    daNpcF_anmPlayData* pDat23[2] = {&dat23a, &dat23b};
    daNpcF_anmPlayData dat24 = {0x11, 0.0f, 1};
    daNpcF_anmPlayData* pDat24[2] = {&dat24};
    daNpcF_anmPlayData dat25 = {0x10, daNpcMoiR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat25[1] = {&dat25};
    daNpcF_anmPlayData dat26 = {0xF, 4.0f, 1};
    daNpcF_anmPlayData* pDat26[1] = {&dat26};
    daNpcF_anmPlayData dat27 = {0x0, daNpcMoiR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat27[1] = {&dat27};

    daNpcF_anmPlayData** ppDat[43] = {
        pDat0,
        pDat1,
        pDat2,
        pDat27,
        pDat27,
        pDat27,
        pDat27,
        pDat3,
        pDat27,
        pDat27,
        pDat27,
        pDat27,
        pDat27,
        pDat27,
        pDat27,
        pDat27,
        pDat27,
        pDat27,
        pDat27,
        pDat27,
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
        pDat14,
        pDat15,
        pDat16,
        pDat17,
        pDat18,
        pDat19,
        pDat20,
        pDat21,
        pDat22,
        pDat23,
        pDat24,
        pDat25,
        pDat26,
        // pDat27,
    };

    if (mMotion >= 0 && mMotion < 0x2B) {
        playMotionAnm(ppDat);
    }
}

inline void daNpcMoiR_c::searchActors() {
    if (mActorMngr[1].getActorP() == NULL) {
        mActorMngr[1].entry(fopAcM_SearchByName(PROC_NPC_ASH));
    }

    if (mActorMngr[2].getActorP() == NULL) {
        mActorMngr[2].entry(fopAcM_SearchByName(PROC_NPC_SHAD));
    }

    if (mActorMngr[3].getActorP() == NULL) {
        mActorMngr[3].entry(fopAcM_SearchByName(PROC_NPC_RAFREL));
    }
}

/* 80A7D138-80A7D394 0010B8 025C+00 2/0 0/0 0/0 .text            setExpressionAnm__11daNpcMoiR_cFib */
bool daNpcMoiR_c::setExpressionAnm(int i_index, bool i_modify) {
    mAnmFlags &= 0xFFFFE03F;

    J3DAnmTransform* anmTransform;
    if (l_bckGetParamList[i_index].fileIdx >= 0) {
        anmTransform = getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_index].arcIdx], l_bckGetParamList[i_index].fileIdx);
    } else {
        anmTransform = NULL;
    }

    int i_attr = l_bckGetParamList[i_index].attr;
    bool bVar1 = false;
    switch (i_index) {
        case 0:
            bVar1 = setExpressionBtp(0);
            break;

        case 1:
            bVar1 = setExpressionBtp(0);
            break;

        case 2:
            bVar1 = setExpressionBtp(0);
            break;

        case 3:
            bVar1 = setExpressionBtp(0);
            break;

        case 4:
            bVar1 = setExpressionBtp(0);
            break;

        case 5:
            bVar1 = setExpressionBtp(0);
            break;

        case 6:
            bVar1 = setExpressionBtp(0);
            break;

        case 7:
            bVar1 = setExpressionBtp(0);
            break;

        case 8:
            bVar1 = setExpressionBtp(1);
            break;

        case 9:
            bVar1 = setExpressionBtp(0);
            break;

        case 10:
            bVar1 = setExpressionBtp(0);
            break;

        default:
            anmTransform = NULL;
            break;
    }

    if (!bVar1) {
        return false;
    }

    if (anmTransform == NULL) {
        return true;
    }

    if (setBckAnm(anmTransform, 1.0f, i_attr, 0, -1, i_modify)) {
        mAnmFlags |= ANM_PLAY_BCK | ANM_PAUSE_BCK;
        mExpressionLoops = 0;
        return true;
    }

    OS_REPORT("%s: 表情Bckアニメーションの登録に失敗しました！\n", "d_a_npc_moir.cpp");
    return false;
}

/* 80A7D394-80A7D474 001314 00E0+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpcMoiR_cFi */
bool daNpcMoiR_c::setExpressionBtp(int i_index) {
    J3DAnmTexPattern* anmTexPattern = getTexPtrnAnmP(l_arcNames[l_btpGetParamList[i_index].arcIdx], l_btpGetParamList[i_index].fileIdx);
    int i_attr = l_btpGetParamList[i_index].attr;

    mAnmFlags &= 0xFFFFF57F;

    if (anmTexPattern == NULL) {
        return true;
    }

    if (setBtpAnm(anmTexPattern, mpMorf->getModel()->getModelData(), 1.0f, i_attr)) {
        mAnmFlags |= ANM_PLAY_BTP | ANM_PAUSE_BTP;

        if (i_index == 0) {
            mAnmFlags |= ANM_FLAG_800;
        }

        return true;
    }

    OS_REPORT("%s: 表情Btpアニメーションの登録に失敗しました！\n", "d_a_npc_moir.cpp");
    return false;
}

/* 80A7D474-80A7D5C4 0013F4 0150+00 1/0 0/0 0/0 .text            setMotionAnm__11daNpcMoiR_cFif */
void daNpcMoiR_c::setMotionAnm(int i_index, f32 i_morf) {
    if (i_index < 11 || i_index >= 0x27) {
        return;
    }

    J3DAnmTransformKey* morfAnm = getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_index].arcIdx], l_bckGetParamList[i_index].fileIdx);
    J3DAnmTextureSRTKey* btkAnm = getTexSRTKeyAnmP(l_arcNames[l_btkGetParamList[0].arcIdx], l_btkGetParamList[0].fileIdx);
    int i_morfAttr = l_bckGetParamList[i_index].attr;
    int i_btkAttr = l_btkGetParamList[0].attr;

    mAnmFlags &= 0xFFFFFFC0;

    if (morfAnm != NULL && setMcaMorfAnm(morfAnm, 1.0f, i_morf, i_morfAttr, 0, -1)) {
        mAnmFlags |= ANM_PLAY_MORF | ANM_PAUSE_MORF;
        mMotionLoops = 0;
    }

    if (btkAnm != NULL) {
        if (setBtkAnm(btkAnm, mpMorf->getModel()->getModelData(), 1.0f, i_btkAttr)) {
            mAnmFlags |= ANM_PLAY_BTK | ANM_PAUSE_BTK;
        }
    }
}

/* 80A7D5C4-80A7D73C 001544 0178+00 1/1 0/0 0/0 .text            reset__11daNpcMoiR_cFv */
void daNpcMoiR_c::reset() {
    initialize();
    mpMatAnm->initialize();
    mLookat.initialize();

    for (int i = 0; i < 4; i++) {
        mActorMngr[i].initialize();
    }

    field_0xdfc = cPhs_INIT_e;
    field_0xe00 = 0;
    mAction = NULL;
    mLookMode = -1;
    field_0xe08 = 0;
    current.pos.set(home.pos);
    old.pos.set(current.pos);
    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;
    speedF = 0.0f;
    speed.setall(0.0f);
    field_0xdf8 = -1;
    mOrderEvtNo = 0;
    mExpressionMorfOverride = 0.0f;
    mMotionMorfOverride = 0.0f;
    field_0xe0a = 1;
    setWaitAction();
}

/* 80A7D73C-80A7D934 0016BC 01F8+00 1/1 0/0 0/0 .text            setWaitAction__11daNpcMoiR_cFv */
void daNpcMoiR_c::setWaitAction() {
    switch (mMode) {
        case 0:
            setAction(&daNpcMoiR_c::wait_type0);
            break;

        case 1:
            setAction(&daNpcMoiR_c::wait_type1);
            break;

        case 2:
            setAction(&daNpcMoiR_c::wait_type2);
            break;

        default:
            JUT_ASSERT(1315, 0);
            break;
    }
}

/* 80A7D934-80A7DD94 0018B4 0460+00 1/0 0/0 0/0 .text            wait_type0__11daNpcMoiR_cFPv */
bool daNpcMoiR_c::wait_type0(void* param_1) {
    // NONMATCHING
    switch (field_0xe08) {
        case 0:
            setExpression(0x12, -1.0f);
            setMotion(0x16, -1.0f, 0);
            mTurnMode = 0;
            speedF = 0.0f;
            field_0xe08 = 2;
            break;

        case 2:
            if (mActorMngr[0].getActorP() != NULL) {
                if (!chkFindPlayer()) {
                    mTurnMode = 0;
                }
            } else if (chkFindPlayer()) {
                mTurnMode = 0;
            }

            if (mActorMngr[0].getActorP() != NULL) {
                setLookMode(2);
            } else {
                setLookMode(0);
            }

            if (dComIfGp_event_runCheck()) {
                if (eventInfo.checkCommandTalk()) {
                    if (!dComIfGp_event_chkTalkXY() || dComIfGp_evmng_ChkPresentEnd()) {
                        setAction(&daNpcMoiR_c::talk);
                    }
                } else if (dComIfGp_getEventManager().getMyStaffId(l_myName, NULL, 0) != -1) {
                    setAction(&daNpcMoiR_c::demo);
                }
            } else {
                if (mOrderEvtNo != 0) {
                    eventInfo.setArchiveName(l_arcNames[1]);
                }

                char* i_evtName;
                if (mOrderEvtNo != 0) {
                    i_evtName = l_evtNames[mOrderEvtNo];
                } else {
                    i_evtName = NULL;
                }

                orderEvent(mOrderSpeakEvt, i_evtName, 0xFFFF, 0x28, 0xFF, 1);
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1652, 0);
            break;
    }

    return true;
}

/* 80A7DD94-80A7DDD8 001D14 0044+00 1/0 0/0 0/0 .text            setMotion__11daNpcMoiR_cFifi */
void daNpcMoiR_c::setMotion(int i_motion, f32 i_morf, int param_3) {
    s16 motion = i_motion;
    if ((param_3 != 0 || mMotion != motion) && i_motion >= 0 && i_motion < 0x2B) {
        mMotion = motion;
        mMotionMorfOverride = i_morf;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
    }
}

/* 80A7DDD8-80A7DE04 001D58 002C+00 1/0 0/0 0/0 .text            setExpression__11daNpcMoiR_cFif */
void daNpcMoiR_c::setExpression(int i_expression, f32 i_morf) {
    if (i_expression >= 0 && i_expression < 0x13) {
        mExpression = i_expression;
        mExpressionMorfOverride = i_morf;
        mExpressionPrevPhase = -1;
        mExpressionPhase = 0;
    }
}

BOOL daNpcMoiR_c::step(s16 param_1, int param_2) {
    if (mTurnMode == 0) {
        if (param_2 != 0) {
            if ((s32)fabsf(cM_sht2d((s16)(param_1 - mCurAngle.y))) > 40) {
                setExpression(0x12, -1.0f);

                if (chkAction(&daNpcMoiR_c::fight)) {
                    setMotion(0x26, -1.0f, 0);
                } else {
                    setMotion(0x2A, -1.0f, 0);
                }
            }
        }

        mTurnTargetAngle = param_1;
        mTurnAmount = 0;

        if (mCurAngle.y == mTurnTargetAngle) {
            mTurnMode++;
        }

        current.angle.y = mCurAngle.y;
        shape_angle.y = current.angle.y;
        mTurnMode++;
    } else if (mTurnMode == 1) {
        if (turn(mTurnTargetAngle, (mMotion == 0x25 && mMotionPhase <= 0) ? 8.0f : 15.0f, 0)) {
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

/* 80A7DE04-80A7E668 001D84 0864+00 2/0 0/0 0/0 .text            wait_type1__11daNpcMoiR_cFPv */
bool daNpcMoiR_c::wait_type1(void* param_1) {
    // NONMATCHING
    f32 fVar1;

    switch (field_0xe08) {
        case 0:
            setExpression(0x12, -1.0f);
            setMotion(7, -1.0f, 0);
            field_0xe00 = cLib_getRndValue(3, 5);
            mTurnMode = 0;
            speedF = 0.0f;
            field_0xe08 = 2;
            break;

        case 2:
            if (mActorMngr[0].getActorP() != NULL) {
                if (!chkFindPlayer()) {
                    mTurnMode = 0;
                }
            } else if (chkFindPlayer()) {
                mTurnMode = 0;
            }

            if (mActorMngr[0].getActorP() != NULL) {
                setLookMode(2);
            } else {
                setLookMode(0);
            }

            if (mOrderEvtNo == 0 && home.angle.y != mCurAngle.y && step(home.angle.y, 1)) {
                setExpression(0x12, -1.0f);
                setMotion(7, -1.0f, 0);
                field_0xe00 = cLib_getRndValue(3, 5);
                mTurnMode = 0;
            }

            if (mMotionLoops >= field_0xe00) {
                if (mMotion == 0x29) {
                    setMotion(7, -1.0f, 0);
                    field_0xe00 = cLib_getRndValue(3, 5);
                } else {
                    setMotion(0x29, -1.0f, 0);
                    field_0xe00 = 1;
                }
            }

            if (daPy_py_c::checkNowWolf()) {
                fVar1 = pow(300.0, 2.0);
                if (fopAcM_searchPlayerDistanceXZ2(this) < fVar1) {
                    setAction(&daNpcMoiR_c::fight);
                }
            } else if (!daNpcF_chkEvtBit(0x21F) /* dSv_event_flag_c::F_0543 - Faron Woods - Met Resistance Rusl again in the woods */
                       && fopAcM_searchPlayerDistance(this) < daNpcMoiR_Param_c::m.demo_start_dist) {
                daNpcF_onEvtBit(0x21F); // dSv_event_flag_c::F_0543 - Faron Woods - Met Resistance Rusl again in the woods
                daNpcF_offTmpBit(0xB); // dSv_event_tmp_flag_c::T_0010 - General use - General use temporary flag (flow control) A
                daNpcF_offTmpBit(0xC); // dSv_event_tmp_flag_c::T_0011 - General use - General use temporary flag (flow control) B
                daNpcF_offTmpBit(0xD); // dSv_event_tmp_flag_c::T_0012 - General use - General use temporary flag (flow control) C
                daNpcF_offTmpBit(0xE); // dSv_event_tmp_flag_c::T_0013 - General use - General use temporary flag (flow control) D
                daNpcF_offTmpBit(0xF); // dSv_event_tmp_flag_c::T_0014 - General use - General use temporary flag (flow control) E
                mOrderEvtNo = 2;
            }

            if (dComIfGp_event_runCheck()) {
                if (eventInfo.checkCommandTalk()) {
                    if (!dComIfGp_event_chkTalkXY() || dComIfGp_evmng_ChkPresentEnd()) {
                        setAction(&daNpcMoiR_c::talk);
                    }
                } else if (dComIfGp_getEventManager().getMyStaffId(l_myName, NULL, 0) != -1) {
                    setAction(&daNpcMoiR_c::demo);
                }
            } else {
                if (mOrderEvtNo != 0) {
                    eventInfo.setArchiveName(l_arcNames[2]);
                }

                char* i_eventName;
                if (mOrderEvtNo != 0) {
                    i_eventName = l_evtNames[mOrderEvtNo];
                } else {
                    i_eventName = NULL;
                }

                orderEvent(mOrderSpeakEvt, i_eventName, 0xFFFF, 0x28, 0xFF, 1);
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1756, 0);
            break;
    }

    return true;
}

/* 80A7E668-80A7E8C0 0025E8 0258+00 1/0 0/0 0/0 .text            wait_type2__11daNpcMoiR_cFPv */
bool daNpcMoiR_c::wait_type2(void* param_1) {
    // NONMATCHING
    switch (field_0xe08) {
        case 0:
            setExpression(0xD, -1.0f);
            setMotion(0x23, -1.0f, 0);
            mTurnMode = 0;
            speedF = 0.0f;
            mActorMngr[0].entry(daPy_getPlayerActorClass());
            setLookMode(0);
            field_0xe08 = 2;
            break;

        case 2:
            switch (field_0xe00) {
                case 0:
                    if (daNpcF_chkTmpBit(0x76) /* dSv_event_tmp_flag_c::MN09_03 - Hyrule Castle - Auru's cannon hits Flag */) {
                        current.pos.set(-4080.086f, 0.0f, 8094.616f);
                        old.pos = current.pos;
                        setAngle(-0x6000);
                        field_0xe00++;
                    }
                    break;

                case 1:
                    if (daNpcF_chkTmpBit(0x75) /* dSv_event_tmp_flag_c::MN09_02 - Hyrule Castle - Rusl waves at Link Flag */) {
                        setExpression(0xC, -1.0f);
                        setMotion(0x24, -1.0f, 0);
                        field_0xe00++;
                    }
                    break;

                case 2:
                    if (daNpcF_chkTmpBit(0x74) /* dSv_event_tmp_flag_c::WXXTO - Hyrule Castle - Resistance leaves Flag */) {
                        setAction(&daNpcMoiR_c::leave);
                    }
                    break;

                default:
                    JUT_ASSERT(1805, 0);
                    break;
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1810, 0);
            break;
    }

    return true;
}

/* 80A7E8C0-80A7EFBC 002840 06FC+00 2/0 0/0 0/0 .text            talk__11daNpcMoiR_cFPv */
bool daNpcMoiR_c::talk(void* param_1) {
    // NONMATCHING
    int itemNo, msgTimer, i_expression, i_actionID;
    s16 i_eventID;
    u16 endConversationID;
    bool rv = false;

    switch (field_0xe08) {
        case 0:
            initTalk(mMsgNo, NULL);
            mTurnMode = 0;
            mMsgTimer = 0;
            speedF = 0.0f;
            setLookMode(3);
            field_0xe08 = 2;
            break;

        case 2:
            if (mMode == 0 || fopAcM_searchPlayerAngleY(this) == mCurAngle.y) {
                if (talkProc(NULL, TRUE, NULL)) {
                    mActorMngr[0].entry(daPy_getPlayerActorClass());
                    itemNo = 0;
                    endConversationID = mFlow.getEventId(&itemNo);

                    OS_REPORT("会話終了時 イベントID=%d アイテムNo=%d\n", endConversationID, itemNo);

                    if (endConversationID == 1) {
                        field_0xdf8 = fopAcM_createItemForPresentDemo(&current.pos, itemNo, 0, -1, -1, NULL, NULL);

                        if (field_0xdf8 != -1) {
                            i_eventID = dComIfGp_getEventManager().getEventIdx(this, "DEFAULT_GETITEM", 0xFF);
                            dComIfGp_getEvent().reset(this);
                            fopAcM_orderChangeEventId(this, i_eventID, 1, 0xFFFF);
                            field_0x9ec = true;
                        }
                    } else if (mMode == 1 && mFlow.getChoiceNo() == 0) {
                        mOrderEvtNo = 3;
                        changeEvent(l_arcNames[2], l_evtNames[mOrderEvtNo], 1, 0xFFFF);
                    }

                    setWaitAction();
                    rv = true;

                } else {
                    msgTimer = mMsgTimer;
                    if (ctrlMsgAnm(i_expression, i_actionID, this, FALSE)) {
                        OS_REPORT("レジスタンスモイ 表情番号=%d 動作番号=%d\n", i_expressionID, i_actionID); // "Resistance Moi Expression Number=%d Action Number=%d\n"
                        setExpression(i_expression, -1.0f);
                        setMotion(i_actionID, -1.0f, 0);
                    } else if (msgTimer != 0 && mMsgTimer == 0) {
                        setExpressionTalkAfter();
                    }
                }
            } else if (step(fopAcM_searchPlayerAngleY(this), 1)) {
                setMotion(7, -1.0f, 0);
                mTurnMode = 0;
            }
            break;

        case 3:
            setExpression(0x12, -1.0f);

            if (!field_0x9ec) {
                dComIfGp_event_reset();
            }
            break;

        default:
            JUT_ASSERT(1893, 0);
            break;
    }

    return rv;
}

/* ############################################################################################## */
/* 80A837C4-80A837D4 000518 0010+00 1/1 0/0 0/0 .rodata          @5306 */
SECTION_RODATA static u8 const lit_5306[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A837C4, &lit_5306);

/* 80A7EFBC-80A7F40C 002F3C 0450+00 2/0 0/0 0/0 .text            multiTalk__11daNpcMoiR_cFPv */
void daNpcMoiR_c::multiTalk(void* param_1) {
    // NONMATCHING
    
}

/* 80A7F40C-80A7F9AC 00338C 05A0+00 2/0 0/0 0/0 .text            fight__11daNpcMoiR_cFPv */
bool daNpcMoiR_c::fight(void* param_1) {
    // NONMATCHING
    f32 fVar1;
    int iVar1 = 1;

    switch (field_0xe08) {
        case 0:
            setExpression(0xF, -1.0f);
            setMotion(0x25, -1.0f, 0);
            mSound.startCreatureVoice(Z2SE_MOIR_V_WOLF_SURPRISE, -1);
            setLookMode(2);
            mTurnMode = 0;
            field_0xe08 = 2;
            break;

        case 2:
            if (mMotion == 0x25 && mMotionPhase <= 0) {
                iVar1 = 0;
            }

            if (step(fopAcM_searchPlayerAngleY(this), iVar1)) {
                if (mMotion == 0x26) {
                    setMotion(0x19, -1.0f, 0);
                    field_0xe00 = cLib_getRndValue(1, 2);
                }

                mTurnMode = 0;
            }

            if (mMotion == 0x25 && mMotionPhase > 0) {
                setExpression(0x12, -1.0f);
                setMotion(0x19, -1.0f, 0);
                field_0xe00 = cLib_getRndValue(1, 2);
            } else if (mMotion == 0x18 &&  mMotionLoops >= field_0xe00) {
                setExpression(10, -1.0f);
                setMotion(0x19, -1.0f, 0);
            } else if (mMotion == 0x19 && mMotionPhase > 0) {
                setExpression(0x12, -1.0f);
                setMotion(0x18, -1.0f, 0);
                field_0xe00 = cLib_getRndValue(1, 2);
            }

            if (mMotion == 0x19 && mMotionPhase == 0 && (mpMorf->checkFrame(11.0f) || mpMorf->checkFrame(36.0f))) {
                mSound.startCreatureVoice(Z2SE_MOIR_V_SHIT_H, -1);
            }

            if (daPy_py_c::checkNowWolf()) {
                fVar1 = pow(700.0f, 2.0f);
                if (!(fopAcM_searchPlayerDistanceXZ2(this) > fVar1)) {
                    break;
                }
            }

            setAction(&daNpcMoiR_c::wait_type1);
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(2030, 0);
            break;
    }

    return false;
}

/* 80A7F9AC-80A7FEE8 00392C 053C+00 2/0 0/0 0/0 .text            demo__11daNpcMoiR_cFPv */
bool daNpcMoiR_c::demo(void* param_1) {
    // NONMATCHING
    dEvent_manager_c* eventManager;
    int staffIdx, actIdx;
    bool rv = false;

    switch (field_0xe08) {
        case 0:
            setExpression(0x12, -1.0f);
            setMotion(7, -1.0f, 0);
            field_0xe08 = 2;
            // fallthrough
        case 2:
            if (dComIfGp_event_runCheck() && !eventInfo.checkCommandTalk()) {
                eventManager = &dComIfGp_getEventManager();
                staffIdx = eventManager->getMyStaffId(l_myName, NULL, 0);
                if (staffIdx != -1) {
                    mStaffID = staffIdx;
                    actIdx = eventManager->getMyActIdx(staffIdx, l_evtNames, 4, 0, 0);
                    if (actIdx > 0 && actIdx < 4) {
                        mOrderEvtNo = actIdx;
                    }

                    JUT_ASSERT(2069, mEvtSeqList[mOrderEvtNo] != 0);

                    if ((this->*mEvtSeqList[mOrderEvtNo])(staffIdx)) {
                        eventManager->cutEnd(staffIdx);
                    }

                    rv = true;
                }

                if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && eventManager->endCheck(mEventIdx)) {
                    dComIfGp_event_reset();
                    mOrderEvtNo = 0;
                    mEventIdx = -1;
                    setWaitAction();
                }
            } else {
                mOrderEvtNo = 0;
                mEventIdx = -1;
                setWaitAction();
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(2101, 0);
            break;
    }

    return rv;
}

/* 80A7FEE8-80A802C4 003E68 03DC+00 1/0 0/0 0/0 .text            leave__11daNpcMoiR_cFPv */
bool daNpcMoiR_c::leave(void* param_1) {
    // NONMATCHING
    cXyz sp24(-6253.387, 0.0f, 6251.7603f);
    daNPC_TK_c* actor_p = NULL;

    switch (field_0xe08) {
        case 0:
            setExpression(0x12, -1.0f);
            setMotion(0x22, -1.0f, 0);
            mTurnMode = 0;
            speedF = 0.0f;
            fopAcM_SearchByName(0x100, (fopAc_ac_c**)&actor_p);

            if (actor_p != NULL) {
                actor_p->setAway();
            }

            field_0xe08 = 2;
            break;

        case 2:
            step(cLib_targetAngleY(&current.pos, &sp24), 1);
            speedF = 12.0f;

            if (mAcch.ChkWallHit() || current.pos.abs(sp24) < speedF) {
                fopAcM_delete(this);
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(2143, 0);
            break;
    }

    return true;
}

/* 80A802C4-80A803A0 004244 00DC+00 1/0 0/0 0/0 .text            EvCut_Introduction__11daNpcMoiR_cFi */
BOOL daNpcMoiR_c::EvCut_Introduction(int i_cutIndex) {
    dEvent_manager_c* eventManager = &dComIfGp_getEventManager();
    int* prm = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "prm");
    if (prm == NULL) {
        return FALSE;
    }

    if (eventManager->getIsAddvance(i_cutIndex)) {
        switch (*prm) {
            case 0:
            case 2:
                setLookMode(0);
                return TRUE;

            case 1:
                setLookMode(2);
                return TRUE;

            default:
                JUT_ASSERT(2178, 0);
                break;
        }
    }

    return FALSE;
}

/* 80A803A0-80A8081C 004320 047C+00 1/0 0/0 0/0 .text            EvCut_Appear__11daNpcMoiR_cFi */
BOOL daNpcMoiR_c::EvCut_Appear(int i_cutIndex) {
    // NONMATCHING
    dEvent_manager_c* eventManager = &dComIfGp_getEventManager();
    int* cutName = (int*)eventManager->getMyNowCutName(i_cutIndex);

    if (eventManager->getIsAddvance(i_cutIndex)) {
        switch (*cutName) {
            case '0001':
                break;

            case '0002':
            case '0003':
            case '0004':
            case '0005':
                initTalk(mMsgNo, NULL);
                mMsgTimer = 0;
                break;

            default:
                JUT_ASSERT(2211, 0);
                break;
        }
    }

    int i_expression, i_motion;
    int msgTimer = mMsgTimer;
    if (ctrlMsgAnm(i_expression, i_motion, this, FALSE)) {
        setExpression(i_expression, -1.0f);
        setMotion(i_motion, -1.0f, 0);
    } else if (msgTimer != 0 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    switch (*cutName) {
        case '0001':
            return TRUE;

        case '0002':
        case '0003':
        case '0004':
            if (talkProc(NULL, TRUE, NULL)) {
                return TRUE;
            }
            break;

        case '0005':
            if (fopAcM_searchPlayerAngleY(this) == mCurAngle.y) {
                if (talkProc(NULL, TRUE, NULL)) {
                    OS_REPORT("二択分岐 %s\n", getChoiceNo() == 0 ? "はい" : "いいえ");

                    if (mFlow.getChoiceNo() == 0) {
                        mOrderEvtNo = 3;
                        changeEvent(l_arcNames[2], l_evtNames[mOrderEvtNo], 1, 0xFFFF);
                    }
                    return TRUE;
                }
            } else {
                if (step(fopAcM_searchPlayerAngleY(this), 1)) {
                    setMotion(7, -1.0f, 0);
                    mTurnMode = 0;
                }
            }
            break;

        default:
            JUT_ASSERT(2259, 0);
            break;
    }

    return FALSE;
}

/* 80A8081C-80A81044 00479C 0828+00 1/0 0/0 0/0 .text            EvCut_Appear2__11daNpcMoiR_cFi */
BOOL daNpcMoiR_c::EvCut_Appear2(int i_cutIndex) {
    // NONMATCHING
    ni_class* actor_p;
    dEvent_manager_c* eventManager = &dComIfGp_getEventManager();
    int* cutName = (int*)eventManager->getMyNowCutName(i_cutIndex);

    if (eventManager->getIsAddvance(i_cutIndex)) {
        switch (*cutName) {
            case '0001':
            case '0005':
                setLookMode(3);
                initTalk(mMsgNo, NULL);
                mMsgTimer = 0;
                break;

            case '0002':
                setLookMode(0);
                break;

            case '0003':
                setExpression(0x12, -1.0f);
                setMotion(2, 0.0f, 0);
                break;

            case '0004':
                setExpression(0x12, -1.0f);
                setMotion(0x27, -1.0f, 0);
                mTurnMode = 0;
                actor_p = (ni_class*)fopAcM_SearchByName(PROC_NI);

                if (actor_p != NULL) {
                    actor_p->changeMode();
                }

                field_0xdfc = 90;
                break;

            default:
                JUT_ASSERT(2305, 0);
                break;
        }
    }

    int i_expression, i_motion;
    int msgTimer = mMsgTimer;
    if (ctrlMsgAnm(i_expression, i_motion, this, FALSE)) {
        setExpression(i_expression, -1.0f);
        setMotion(i_motion, -1.0f, 0);
    } else if (msgTimer != 0 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    switch (*cutName) {
        case '0001':
            if (fopAcM_searchPlayerAngleY(this) == mCurAngle.y) {
                if (talkProc(NULL, TRUE, NULL)) {
                    return TRUE;
                }
                break;
            }

            if (step(fopAcM_searchPlayerAngleY(this), 1)) {
                setMotion(7, -1.0f, 0);
                mTurnMode = 0;
            }
            break;

        case '0002':
            if (step(0x1221, 1)) {
                setExpression(0x10, -1.0f);
                setMotion(0x28, -1.0f, 0);
            }

            if (mMotion != 0x28) {
                break;
            }

            if (mMotionPhase == 0 && mpMorf->checkFrame(25.0f)) {
                mDoAud_seStart(Z2SE_PLAY_REED_TOBIKUSA, NULL, 0, 0);
                break;
            }

            if (mMotionPhase > 0) {
                return TRUE;
            }
            break;

        case '0003':
            return TRUE;

        case '0004':
            if (cLib_calcTimer<int>((int*)&field_0xdfc) == 0) {
                return TRUE;
            }
            break;

        case '0005':
            if (talkProc(NULL, TRUE, NULL)) {
                actor_p = (ni_class*)fopAcM_SearchByName(PROC_NI);

                if (actor_p != NULL) {
                    actor_p->changeMode();
                }

                return TRUE;
            }
            break;

        default:
            JUT_ASSERT(2363, 0);
            break;
    }

    return FALSE;
}

/* 80A81044-80A81064 004FC4 0020+00 1/0 0/0 0/0 .text            daNpcMoiR_Create__FPv */
static int daNpcMoiR_Create(void* a_this) {
    daNpcMoiR_c* i_this = (daNpcMoiR_c*)a_this;
    return i_this->Create();
}

/* 80A81064-80A81084 004FE4 0020+00 1/0 0/0 0/0 .text            daNpcMoiR_Delete__FPv */
static int daNpcMoiR_Delete(void* a_this) {
    daNpcMoiR_c* i_this = (daNpcMoiR_c*)a_this;
    return i_this->Delete();
}

/* 80A81084-80A810A4 005004 0020+00 1/0 0/0 0/0 .text            daNpcMoiR_Execute__FPv */
static int daNpcMoiR_Execute(void* a_this) {
    daNpcMoiR_c* i_this = (daNpcMoiR_c*)a_this;
    return i_this->Execute();
}

/* 80A810A4-80A810C4 005024 0020+00 1/0 0/0 0/0 .text            daNpcMoiR_Draw__FPv */
static int daNpcMoiR_Draw(void* a_this) {
    daNpcMoiR_c* i_this = (daNpcMoiR_c*)a_this;
    return i_this->Draw();
}

/* 80A810C4-80A810CC 005044 0008+00 1/0 0/0 0/0 .text            daNpcMoiR_IsDelete__FPv */
static int daNpcMoiR_IsDelete(void* a_this) {
    return 1;
}

/* 80A810FC-80A81274 00507C 0178+00 1/0 0/0 0/0 .text            setParam__11daNpcMoiR_cFv */
void daNpcMoiR_c::setParam() {
    searchActors();

    attention_info.flags = 10;

    if (mMode == 0) {
        attention_info.distances[0] = getDistTableIdx(3, 5);
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = getDistTableIdx(2, 5);
    } else {
        attention_info.distances[0] = getDistTableIdx(daNpcMoiR_Param_c::m.common.attention_distance, daNpcMoiR_Param_c::m.common.attention_angle);
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = getDistTableIdx(daNpcMoiR_Param_c::m.common.talk_distance, daNpcMoiR_Param_c::m.common.talk_angle);

        if (mMode == 1 && daPy_py_c::checkNowWolf()) {
            attention_info.flags = 0;
        }
    }

    #ifdef DEBUG
    scale.set(daNpcMoiR_Param_c::m.common.scale, daNpcMoiR_Param_c::m.common.scale, daNpcMoiR_Param_c::m.common.scale);
    mAcchCir.SetWallR(daNpcMoiR_Param_c::m.common.width);
    mAcchCir.SetWallH(daNpcMoiR_Param_c::m.common.knee_length);
    gravity = daNpcMoiR_Param_c::m.common.gravity;
    #endif
}

/* 80A81274-80A815D4 0051F4 0360+00 1/0 0/0 0/0 .text            main__11daNpcMoiR_cFv */
BOOL daNpcMoiR_c::main() {
    // NONMATCHING
    if (mAction) {
        (this->*mAction)(NULL);
    }

    if (dComIfGp_event_runCheck() && !eventInfo.checkCommandTalk() && field_0xdf8 != -1) {
        dComIfGp_event_setItemPartnerId(field_0xdf8);
        field_0xdf8 = -1;
    }

    playExpression();
    playMotion();
    checkHeadGear();

    return TRUE;
}

/* 80A815D4-80A818B4 005554 02E0+00 1/1 0/0 0/0 .text            checkHeadGear__11daNpcMoiR_cFv */
void daNpcMoiR_c::checkHeadGear() {
    J3DModelData* mdlData_p = mpMorf->getModel()->getModelData();
    J3DAnmTransform* anm = mpMorf->getAnm();

    if (mMode == 0) {
        if (anm == getTrnsfrmKeyAnmP(l_arcNames[1], l_bckGetParamList[30].fileIdx)) {
            if (mpMorf->checkFrame(14.0f)) {
                field_0xe0a = 0;
                mdlData_p->getMaterialNodePointer(3)->getShape()->hide();
            }
        } else if (anm == getTrnsfrmKeyAnmP(l_arcNames[1], l_bckGetParamList[31].fileIdx)) {
            field_0xe0a = 0;
            mdlData_p->getMaterialNodePointer(3)->getShape()->hide();
        } else if (anm == getTrnsfrmKeyAnmP(l_arcNames[1], l_bckGetParamList[32].fileIdx)) {
            field_0xe0a = 0;
            mdlData_p->getMaterialNodePointer(3)->getShape()->hide();
        } else if (anm == getTrnsfrmKeyAnmP(l_arcNames[1], l_bckGetParamList[33].fileIdx) && mpMorf->checkFrame(24.0f)) {
            field_0xe0a = 1;
            mdlData_p->getMaterialNodePointer(3)->getShape()->show();
        }
    } else if (mMode == 1) {
        if (anm == getTrnsfrmKeyAnmP(l_arcNames[2], l_bckGetParamList[24].fileIdx)) {
            if (mpMorf->checkFrame(15.0f)) {
                field_0xe0a = 0;
                mdlData_p->getMaterialNodePointer(3)->getShape()->hide();
            }
        } else if (anm == getTrnsfrmKeyAnmP(l_arcNames[2], l_bckGetParamList[25].fileIdx)) {
            field_0xe0a = 0;
            mdlData_p->getMaterialNodePointer(3)->getShape()->hide();
        } else if (anm == getTrnsfrmKeyAnmP(l_arcNames[2], l_bckGetParamList[26].fileIdx)) {
            field_0xe0a = 0;
            mdlData_p->getMaterialNodePointer(3)->getShape()->hide();
        } else if (anm == getTrnsfrmKeyAnmP(l_arcNames[2], l_bckGetParamList[27].fileIdx) && mpMorf->checkFrame(33.0f)) {
            field_0xe0a = 1;
            mdlData_p->getMaterialNodePointer(3)->getShape()->show();
        }
    }
}

/* 80A8210C-80A821E0 00608C 00D4+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpcMoiR_cFv */
BOOL daNpcMoiR_c::ctrlBtk() {
    // NONMATCHING
    if (mpMatAnm != NULL) {
        J3DAnmTextureSRTKey* anm = getTexSRTKeyAnmP(l_arcNames[l_btkGetParamList[0].arcIdx], l_btkGetParamList[0].fileIdx);
        if (anm == mBtkAnm.getBtkAnm()) {
            mpMatAnm->setNowOffsetX(cM_ssin(mEyeAngle.y) * 0.2f * -1.0f);
            mpMatAnm->setNowOffsetY(cM_ssin(mEyeAngle.x) * 0.2f);
            mpMatAnm->onEyeMoveFlag();
            return TRUE;
        }

        mpMatAnm->offEyeMoveFlag();
    }

    return FALSE;
}

/* 80A821E0-80A825A0 006160 03C0+00 1/0 0/0 0/0 .text            setAttnPos__11daNpcMoiR_cFv */
void daNpcMoiR_c::setAttnPos() {
    // NONMATCHING
    if (mLookMode == LOOK_RESET) {
        for (int i = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    setMtx();
    lookat();

    cXyz sp40;
    if (mMode == 0) {
        sp40.set(-10.0f, -15.0f, -0.15f);
    } else {
        sp40.set(-15.0f, 10.0f, 2.0f);
    }

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&sp40, &eyePos);
    sp40.x = 0.0f;
    mDoMtx_stack_c::multVec(&sp40, &sp40);
    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &sp40);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &sp40);

    cXyz* attnPos = mLookat.getAttnPos();
    if (attnPos != NULL) {
        cXyz sp4c = *attnPos - eyePos;
        mEyeAngle.y = -(mLookatAngle[2].y + mCurAngle.y);
        mEyeAngle.y += cM_atan2s(sp4c.x, sp4c.z);
        mEyeAngle.x = mHeadAngle.x - cM_atan2s(sp4c.y, sp4c.absXZ());

        if (daNpcMoiR_Param_c::m.horizontal_eye_movement_range < mEyeAngle.y) {
            mEyeAngle.y = daNpcMoiR_Param_c::m.horizontal_eye_movement_range;
        } else if (-daNpcMoiR_Param_c::m.horizontal_eye_movement_range > mEyeAngle.y) {
            mEyeAngle.y = -daNpcMoiR_Param_c::m.horizontal_eye_movement_range;
        }
    } else {
        mEyeAngle.y = 0;
        mEyeAngle.x = 0;
    }

    attention_info.position.set(mHeadPos.x, mHeadPos.y + daNpcMoiR_Param_c::m.common.attention_offset, mHeadPos.z);
    cXyz sp58;
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(2));
    mDoMtx_stack_c::multVecZero(&sp58);
    sp58.y = current.pos.y;
    field_0xca0.SetC(sp58);
    field_0xca0.SetH(daNpcMoiR_Param_c::m.common.height);
    
    f32 fVar1;
    if (mMode == 0) {
        fVar1 = 40.0f;
    } else {
        fVar1 = daNpcMoiR_Param_c::m.common.width;
    }

    field_0xca0.SetR(fVar1);
    dComIfG_Ccsp()->Set(&field_0xca0);
}

/* 80A825A0-80A82878 006520 02D8+00 1/1 0/0 0/0 .text            lookat__11daNpcMoiR_cFv */
void daNpcMoiR_c::lookat() {
    // NONMATCHING
    daPy_py_c* player = NULL;
    J3DModel* model = mpMorf->getModel();
    BOOL bVar1 = FALSE;
    f32 body_angleX_min = daNpcMoiR_Param_c::m.common.body_angleX_min;
    f32 body_angleX_max = daNpcMoiR_Param_c::m.common.body_angleX_max;
    f32 body_angleY_min = daNpcMoiR_Param_c::m.common.body_angleY_min;
    f32 body_angleY_max = daNpcMoiR_Param_c::m.common.body_angleY_max;
    f32 head_angleX_min = daNpcMoiR_Param_c::m.common.head_angleX_min;
    f32 head_angleX_max = daNpcMoiR_Param_c::m.common.head_angleX_max;
    f32 head_angleY_min = daNpcMoiR_Param_c::m.common.head_angleY_min;
    f32 head_angleY_max = daNpcMoiR_Param_c::m.common.head_angleY_max;
    s16 sVar1 = mOldAngle.y - mCurAngle.y;
    cXyz spd0[3] = {mLookatPos[0], mLookatPos[1], mLookatPos[2]};
    csXyz* local_dc[3] = {&mLookatAngle[0], &mLookatAngle[1], &mLookatAngle[2]};
    cXyz spe8;

    switch (mLookMode) {
        case LOOK_NONE:
            break;
            
        case LOOK_RESET:
            bVar1 = TRUE;
            break;

        case LOOK_PLAYER:
        case LOOK_PLAYER_TALK:
            player = daPy_getPlayerActorClass();

            if (mMode == 1) {
                if (mLookMode == LOOK_PLAYER_TALK) {
                    head_angleY_min = -80.0f;
                    head_angleY_max = 80.0f;
                }
            }

            if (mMode == 0) {
                J3DAnmTransform* anm = mpMorf->getAnm();
                if (anm == getTrnsfrmKeyAnmP(l_arcNames[1], l_bckGetParamList[30].fileIdx) ||
                    anm == getTrnsfrmKeyAnmP(l_arcNames[1], l_bckGetParamList[33].fileIdx)) {
                    player = NULL;
                }
            }
            break;

        default:
            break;
    }

    if (player != NULL) {
        mLookPos = player->attention_info.position;

        if (mLookMode != LOOK_PLAYER && mLookMode != LOOK_PLAYER_TALK) {
            mLookPos.y -= 40.0f;
        }

        mLookat.setAttnPos(&mLookPos);
    } else {
        mLookat.setAttnPos(0);
    }

    mLookat.setParam(body_angleX_min, body_angleX_max, body_angleY_min, body_angleY_max, 0.0f, 0.0f, 0.0f, 0.0f, 
                        head_angleX_min, head_angleX_max, head_angleY_min, head_angleY_max, mCurAngle.y, spd0);
    mLookat.calc(this, model->getBaseTRMtx(), local_dc, bVar1, sVar1, FALSE);
}

/* 80A82878-80A82900 0067F8 0088+00 1/0 0/0 0/0 .text            drawOtherMdls__11daNpcMoiR_cFv */
void daNpcMoiR_c::drawOtherMdls() {
    if (field_0xe0a == 0) {
        g_env_light.setLightTevColorType_MAJI(field_0xbd8, &tevStr);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0x11));
        field_0xbd8->setBaseTRMtx(mDoMtx_stack_c::get());
        mDoExt_modelUpdateDL(field_0xbd8);
    }
}

/* 80A82900-80A82908 006880 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpcMoiR_cFv */
BOOL daNpcMoiR_c::drawDbgInfo() {
    return FALSE;
}

/* 80A83D84-80A83D88 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpcMoiR_Param_c l_HIO;

/* 80A83240-80A83288 0071C0 0048+00 2/1 0/0 0/0 .text            __dt__17daNpcMoiR_Param_cFv */
daNpcMoiR_Param_c::~daNpcMoiR_Param_c() {}

/* 80A83C38-80A83C58 -00001 0020+00 1/0 0/0 0/0 .data            daNpcMoiR_MethodTable */
static actor_method_class daNpcMoiR_MethodTable = {
    (process_method_func)daNpcMoiR_Create,
    (process_method_func)daNpcMoiR_Delete,
    (process_method_func)daNpcMoiR_Execute,
    (process_method_func)daNpcMoiR_IsDelete,
    (process_method_func)daNpcMoiR_Draw,
};

/* 80A83C58-80A83C88 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_MOIR */
extern actor_process_profile_definition g_profile_NPC_MOIR = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_MOIR,          // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcMoiR_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  415,                    // mPriority
  &daNpcMoiR_MethodTable, // sub_method
  0x00040100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
