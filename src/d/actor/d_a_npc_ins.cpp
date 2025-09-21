/**
 * @file d_a_npc_ins.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_ins.h"
#include "d/d_meter2_info.h"
#include "d/d_msg_object.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__10daNpcIns_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10daNpcIns_cFv();
extern "C" void Create__10daNpcIns_cFv();
extern "C" void CreateHeap__10daNpcIns_cFv();
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
extern "C" void Delete__10daNpcIns_cFv();
extern "C" void Execute__10daNpcIns_cFv();
extern "C" void Draw__10daNpcIns_cFv();
extern "C" void ctrlJoint__10daNpcIns_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__10daNpcIns_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__10daNpcIns_cFP8J3DJointi();
extern "C" void setExpressionAnm__10daNpcIns_cFib();
extern "C" void setExpressionBtp__10daNpcIns_cFi();
extern "C" void setMotionAnm__10daNpcIns_cFif();
extern "C" void reset__10daNpcIns_cFv();
extern "C" void waitShop__10daNpcIns_cFPv();
extern "C" void setMotion__10daNpcIns_cFifi();
extern "C" void setExpression__10daNpcIns_cFif();
extern "C" void waitPresent__10daNpcIns_cFPv();
extern "C" void waitOutSide1__10daNpcIns_cFPv();
extern "C" void waitOutSide2__10daNpcIns_cFPv();
extern "C" void goHome__10daNpcIns_cFPv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void talk__10daNpcIns_cFPv();
extern "C" void demo__10daNpcIns_cFPv();
extern "C" void isInsectComplete__10daNpcIns_cFv();
extern "C" void getInsectParamData__10daNpcIns_cFi();
extern "C" void setWaitAction__10daNpcIns_cFv();
extern "C" void setPath__10daNpcIns_cFi();
extern "C" void checkPoint__10daNpcIns_cFR4cXyzf();
extern "C" void setNextPoint__10daNpcIns_cFv();
extern "C" void getTargetPoint__10daNpcIns_cFiP3Vec();
extern "C" void pathMoveF__10daNpcIns_cFv();
extern "C" static void daNpcIns_Create__FPv();
extern "C" static void daNpcIns_Delete__FPv();
extern "C" static void daNpcIns_Execute__FPv();
extern "C" static void daNpcIns_Draw__FPv();
extern "C" static bool daNpcIns_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void setParam__10daNpcIns_cFv();
extern "C" void main__10daNpcIns_cFv();
extern "C" void playMotion__10daNpcIns_cFv();
extern "C" void ctrlBtk__10daNpcIns_cFv();
extern "C" void setAttnPos__10daNpcIns_cFv();
extern "C" void lookat__10daNpcIns_cFv();
extern "C" void setMtx__10daNpcIns_cFv();
extern "C" bool drawDbgInfo__10daNpcIns_cFv();
extern "C" void func_80A13468(void* _this, s16);
extern "C" void func_80A13474(void* _this, int, int);
extern "C" void __sinit_d_a_npc_ins_cpp();
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
extern "C" void __dt__16daNpcIns_Param_cFv();
extern "C" static void func_80A13D88();
extern "C" static void func_80A13D90();
extern "C" u8 const m__16daNpcIns_Param_c[112];
extern "C" extern char const* const d_a_npc_ins__stringBase0;
extern "C" u8 mEvtSeqList__10daNpcIns_c[12];

//
// External References:
//

extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fopAcM_getPolygonAngle__FPC8cM3dGPlas();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void dPath_GetPnt__FPC5dPathi();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
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
extern "C" void chkActorInSight__8daNpcF_cFP10fopAc_ac_cf();
extern "C" void chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void turn__8daNpcF_cFsfi();
extern "C" void setAngle__8daNpcF_cFs();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void daNpcF_onEvtBit__FUl();
extern "C" void dKy_getdaytime_hour__Fv();
extern "C" void dKy_getdaytime_minute__Fv();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void setInsectItemNo__12dMsgObject_cFUc();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
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
extern "C" void __register_global_object();

/* 80A141BC-80A142DC 000020 0120+00 1/2 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam2 l_bckGetParamList[24] = {
    {-1, J3DFrameCtrl::EMode_LOOP, 0},
    {0xA, J3DFrameCtrl::EMode_NONE, 0},
    {8, J3DFrameCtrl::EMode_NONE, 0},
    {9, J3DFrameCtrl::EMode_NONE, 0},
    {6, J3DFrameCtrl::EMode_NONE, 0},
    {7, J3DFrameCtrl::EMode_NONE, 0},
    {0xD, J3DFrameCtrl::EMode_LOOP, 0},
    {0xE, J3DFrameCtrl::EMode_LOOP, 0},
    {0xB, J3DFrameCtrl::EMode_LOOP, 0},
    {0xC, J3DFrameCtrl::EMode_LOOP, 0},
    {0xB, J3DFrameCtrl::EMode_LOOP, 1},
    {0xA, J3DFrameCtrl::EMode_LOOP, 1},
    {9, J3DFrameCtrl::EMode_NONE, 1},
    {4, J3DFrameCtrl::EMode_NONE, 1},
    {7, J3DFrameCtrl::EMode_NONE, 1},
    {8, J3DFrameCtrl::EMode_LOOP, 1},
    {5, J3DFrameCtrl::EMode_NONE, 1},
    {6, J3DFrameCtrl::EMode_NONE, 1},
    {9, J3DFrameCtrl::EMode_LOOP, 2},
    {0xA, J3DFrameCtrl::EMode_LOOP, 2},
    {5, J3DFrameCtrl::EMode_LOOP, 2},
    {6, J3DFrameCtrl::EMode_LOOP, 2},
    {7, J3DFrameCtrl::EMode_LOOP, 2},
    {8, J3DFrameCtrl::EMode_NONE, 2},
};

/* 80A142DC-80A1433C 000140 0060+00 1/1 0/0 0/0 .data            l_btpGetParamList */
static daNpc_GetParam2 l_btpGetParamList[8] = {
    {0x17, 2, 0},
    {0x1A, 0, 0},
    {0x1B, 0, 0},
    {0x18, 0, 0},
    {0x19, 0, 0},
    {0x1E, 2, 0},
    {0x1C, 2, 0},
    {0x1D, 2, 0},
};

/* 80A1433C-80A14354 0001A0 0018+00 1/2 0/0 0/0 .data            l_btkGetParamList */
static daNpc_GetParam2 l_btkGetParamList[2] = {
    {0x14, J3DFrameCtrl::EMode_LOOP, 0},
    {0xE, J3DFrameCtrl::EMode_NONE, 1},
};

/* 80A14354-80A14360 0001B8 000C+00 1/0 0/0 0/0 .data            l_loadRes_INS0 */
static int l_loadRes_INS0[3] = {
    0, 1, -1,
};

/* 80A14360-80A1436C 0001C4 000C+00 1/0 0/0 0/0 .data            l_loadRes_INS1 */
static int l_loadRes_INS1[3] = {
    0, 2, -1,
};

/* 80A1436C-80A14378 0001D0 000C+00 1/0 0/0 0/0 .data            l_loadRes_INS2 */
static int l_loadRes_INS2[3] = {
    0, 2, -1,
};

/* 80A14378-80A14384 -00001 000C+00 2/2 0/0 0/0 .data            l_loadRes_list */
static int* l_loadRes_list[3] = {
    l_loadRes_INS0,
    l_loadRes_INS1,
    l_loadRes_INS2,
};

/* 80A14384-80A14390 -00001 000C+00 6/7 0/0 0/0 .data            l_arcNames */
static char* l_arcNames[3] = {
    "Ins",
    "Ins1",
    "Ins2",
};

/* 80A14390-80A14394 0001F4 0004+00 0/4 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[1] = {
    NULL,
};

/* 80A14394-80A14398 -00001 0004+00 1/5 0/0 0/0 .data            l_myName */
static char* l_myName = "ins";

/* 80A14398-80A143A4 0001FC 000C+00 2/2 0/0 0/0 .data            mEvtSeqList__10daNpcIns_c */
daNpcIns_c::eventFunc daNpcIns_c::mEvtSeqList[1] = {
    NULL,
};

/* 80A0E24C-80A0E3D0 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__10daNpcIns_cFv */
daNpcIns_c::daNpcIns_c() {}

/* 80A0E460-80A0E660 000300 0200+00 1/0 0/0 0/0 .text            __dt__10daNpcIns_cFv */
daNpcIns_c::~daNpcIns_c() {
    // NONMATCHING
}

/* 80A13DAC-80A13E6C 000000 00C0+00 15/15 0/0 0/0 .rodata          l_insectParams */
static insect_param_data const l_insectParams[24] = {
    {0x0191, 0x709, 0, 0},
    {0x0192, 0x709, 0, 0},
    {0x0193, 0x70A, 0, 0},
    {0x0194, 0x70A, 0, 0},
    {0x0195, 0x70B, 0, 0},
    {0x0196, 0x70B, 0, 0},
    {0x0197, 0x70C, 0, 0},
    {0x0198, 0x70C, 0, 0},
    {0x0199, 0x70D, 0, 0},
    {0x019A, 0x70D, 0, 0},
    {0x019B, 0x70E, 0, 0},
    {0x019C, 0x70E, 0, 0},
    {0x019D, 0x70F, 0, 0},
    {0x019E, 0x70F, 0, 0},
    {0x019F, 0x710, 0, 0},
    {0x01A0, 0x710, 0, 0},
    {0x01A1, 0x711, 0, 0},
    {0x01A2, 0x711, 0, 0},
    {0x01A3, 0x712, 0, 0},
    {0x01A4, 0x712, 0, 0},
    {0x01A5, 0x713, 0, 0},
    {0x01A6, 0x713, 0, 0},
    {0x01A7, 0x714, 0, 0},
    {0x01A8, 0x714, 0, 0},
};

/* 80A13E6C-80A13EDC 0000C0 0070+00 3/11 0/0 0/0 .rodata          m__16daNpcIns_Param_c */
daNpcIns_HIOParam const daNpcIns_Param_c::m = {
    35.0f,
    -3.0f,
    1.0f,
    400.0f,
    255.0f,
    130.0f,
    45.0f,
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
    1.5f,
};

/* 80A0E660-80A0EA30 000500 03D0+00 1/1 0/0 0/0 .text            Create__10daNpcIns_cFv */
cPhs__Step daNpcIns_c::Create() {
    fopAcM_SetupActor(this, daNpcIns_c);

    mType = 0;

    if (strcmp(dComIfGp_getStartStageName(), "R_SP160") == 0) {
        mType = 0;
    } else if (strcmp(dComIfGp_getStartStageName(), "F_SP122") == 0) {
        if (isInsectComplete()) {
            return cPhs_ERROR_e;
        }

        if (cLib_getRndValue(0, 2) != 0) {
            mType = 1;
        } else {
            mType = 2;
        }

        u16 StartTime = ((getStartTime() & 0xFF) / 10) * 60 + (((getStartTime() & 0xFF) % 10) * 10);
        mGoHomeTime = ((getEndTime() & 0xFF) / 10) * 60 + (((getEndTime() & 0xFF) % 10) * 10);

        JUT_ASSERT(331, mGoHomeTime < 1440);
        JUT_ASSERT(332, StartTime < mGoHomeTime);

        if (getTime() < StartTime || getTime() > mGoHomeTime) {
            return cPhs_ERROR_e;
        }
    }

    cPhs__Step phase = cPhs_ERROR_e;
    for (int i = 0; l_loadRes_list[mType][i] >= 0; i++) {
        phase = (cPhs__Step)dComIfG_resLoad(&mPhases[i], l_arcNames[l_loadRes_list[mType][i]]);

        if (phase != cPhs_COMPLEATE_e) {
            return phase;
        }
    }

    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x6200)) {
            return cPhs_ERROR_e;
        }

        mInsectMsgNo = getMessageNo();
        field_0xe16 = mInsectMsgNo;
        mpMorf->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -160.0f, -50.0f, -160.0f, 160.0f, 220.0f, 160.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);
        mAcchCir.SetWall(daNpcIns_Param_c::m.common.width, daNpcIns_Param_c::m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this),
                  fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mAcch.SetRoofNone();
        mAcch.SetWaterNone();
        mAcch.CrrPos(dComIfG_Bgsp());
        mCcStts.Init(daNpcIns_Param_c::m.common.weight, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgType(0);
        mCyl.SetTgSPrm(0);
        mCyl.SetH(daNpcIns_Param_c::m.common.height);
        mCyl.SetR(daNpcIns_Param_c::m.common.width);
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

/* 80A0EA30-80A0ED80 0008D0 0350+00 1/1 0/0 0/0 .text            CreateHeap__10daNpcIns_cFv */
int daNpcIns_c::CreateHeap() {
    J3DModelData* mdlData_p = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_arcNames[0], 0x11));

    JUT_ASSERT(424, 0 != mdlData_p);

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

    mpUmbrellaModel = NULL;
    mpKagoModel = NULL;

    if (mType == 1 || mType == 2) {
        mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_arcNames[2], 0x10);

        JUT_ASSERT(456, mdlData_p != 0);

        mpUmbrellaModel = mDoExt_J3DModel__create(mdlData_p, 0x80000, 0x11000084);
        if (mpUmbrellaModel == NULL) {
            return 0;
        }

        mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_arcNames[2], 0xD);

        JUT_ASSERT(463, mdlData_p != 0);

        mpKagoModel = mDoExt_J3DModel__create(mdlData_p, 0, 0x11000084);
        if (mpKagoModel == NULL) {
            return 0;
        }
    }

    mpMatAnm = new daNpcF_MatAnm_c();
    if (mpMatAnm == NULL) {
        return 0;
    }

    if (!setExpressionAnm(1, false)) {
        return 0;
    }

    int i_motion = 0xA;
    switch (mType) {
        case 0:
            i_motion = 0xA;
            break;
        
        case 1:
            i_motion = 0x14;
            break;

        case 2:
            i_motion = 0x16;
            break;
    }

    setMotionAnm(i_motion, 0.0f);

    return 1;
}

/* 80A0EF3C-80A0EF70 000DDC 0034+00 1/1 0/0 0/0 .text            Delete__10daNpcIns_cFv */
int daNpcIns_c::Delete() {
    this->~daNpcIns_c();
    return 1;
}

/* 80A0EF70-80A0EF94 000E10 0024+00 2/2 0/0 0/0 .text            Execute__10daNpcIns_cFv */
int daNpcIns_c::Execute() {
    execute();
    return 1;
}

/* 80A0EF94-80A0F0BC 000E34 0128+00 1/1 0/0 0/0 .text            Draw__10daNpcIns_cFv */
int daNpcIns_c::Draw() {
    mpMorf->getModel()->getModelData()->getMaterialNodePointer(1)->setMaterialAnm(mpMatAnm);
    draw(FALSE, FALSE, daNpcIns_Param_c::m.common.real_shadow_size, NULL, FALSE);

    if (mpUmbrellaModel != NULL) {
        g_env_light.setLightTevColorType_MAJI(mpUmbrellaModel, &tevStr);
        mpUmbrellaModel->setBaseTRMtx(mpMorf->getModel()->getAnmMtx(0xD));
        mDoExt_modelUpdateDL(mpUmbrellaModel);
        dComIfGd_addRealShadow(mShadowKey, mpUmbrellaModel);
    }

    if (mpKagoModel != NULL) {
        g_env_light.setLightTevColorType_MAJI(mpKagoModel, &tevStr);
        mpKagoModel->setBaseTRMtx(mpMorf->getModel()->getAnmMtx(0xB));
        mDoExt_modelUpdateDL(mpKagoModel);
        dComIfGd_addRealShadow(mShadowKey, mpKagoModel);
    }

    return 1;
}

/* 80A0F0BC-80A0F28C 000F5C 01D0+00 1/1 0/0 0/0 .text            ctrlJoint__10daNpcIns_cFP8J3DJointP8J3DModel */
int daNpcIns_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jntNo = i_joint->getJntNo();
    int lookatJoints[3] = {1, 3, 4};

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
            setLookatMtx(jntNo, lookatJoints, daNpcIns_Param_c::m.common.neck_rotation_ratio);
            break;
    }

    i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    if ((jntNo == 4 || jntNo == 8) && (mAnmFlags & ANM_PLAY_BCK) != 0) {
        J3DAnmTransform* anmTransform = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mpMorf->getAnm());
        mpMorf->changeAnm(anmTransform);
    }

    return 1;
}

/* 80A0F28C-80A0F2AC 00112C 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__10daNpcIns_cFP10fopAc_ac_c */
int daNpcIns_c::createHeapCallBack(fopAc_ac_c* a_this) {
    return static_cast<daNpcIns_c*>(a_this)->CreateHeap();
}

/* 80A0F2AC-80A0F2F8 00114C 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__10daNpcIns_cFP8J3DJointi */
int daNpcIns_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpcIns_c* i_this = (daNpcIns_c*)model->getUserArea();
        
        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80A0F2F8-80A0F538 001198 0240+00 2/0 0/0 0/0 .text            setExpressionAnm__10daNpcIns_cFib */
bool daNpcIns_c::setExpressionAnm(int i_index, bool i_modify) {
    mAnmFlags &= ~ANM_EXPRESSION_FLAGS;
    J3DAnmTransform* i_bck;

    if (l_bckGetParamList[i_index].fileIdx >= 0) {
        i_bck = getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_index].arcIdx], l_bckGetParamList[i_index].fileIdx);    
    } else {
        i_bck = NULL;
    }

    int i_attr = l_bckGetParamList[i_index].attr;
    bool bVar1 = 0;

    switch (i_index) {
        case 0:
            bVar1 = setExpressionBtp(0);
            break;

        case 2:
            bVar1 = setExpressionBtp(1);
            break;

        case 3:
            bVar1 = setExpressionBtp(2);
            break;

        case 4:
            bVar1 = setExpressionBtp(3);
            break;

        case 5:
            bVar1 = setExpressionBtp(4);
            break;

        case 6:
            bVar1 = setExpressionBtp(0);
            break;

        case 7:
            bVar1 = setExpressionBtp(5);
            break;

        case 8:
            bVar1 = setExpressionBtp(6);
            break;

        case 9:
            bVar1 = setExpressionBtp(7);
            break;

        case 1:
            bVar1 = setExpressionBtp(0);
            break;

        default:
            i_bck = NULL;
    }

    if (!bVar1) {
        return false;
    }

    if (i_bck == NULL) {
        return true;
    }

    if (setBckAnm(i_bck, 1.0f, i_attr, 0, -1, i_modify)) {
        mAnmFlags |= ANM_PLAY_BCK | ANM_PAUSE_BCK;
        mExpressionLoops = 0;

        return true;
    }

    OS_REPORT("%s: 表情Bckアニメーションの登録に失敗しました！\n", __FILE__);
    return false;
}

/* 80A0F538-80A0F618 0013D8 00E0+00 1/0 0/0 0/0 .text            setExpressionBtp__10daNpcIns_cFi */
bool daNpcIns_c::setExpressionBtp(int i_index) {
    J3DAnmTexPattern* i_btp = getTexPtrnAnmP(l_arcNames[l_btpGetParamList[i_index].arcIdx], l_btpGetParamList[i_index].fileIdx);
    int i_attr = l_btpGetParamList[i_index].attr;
    mAnmFlags &= ~(ANM_FLAG_800 | ANM_PLAY_BTP | ANM_PAUSE_BTP);

    if (i_btp == NULL) {
        return true;
    }

    if (setBtpAnm(i_btp, mpMorf->getModel()->getModelData(), 1.0f, i_attr)) {
        mAnmFlags |= ANM_PLAY_BTP | ANM_PAUSE_BTP;

        if (i_index == 0) {
            mAnmFlags |= ANM_FLAG_800;
        }

        return true;
    }

    OS_REPORT("%s: 表情Btpアニメーションの登録に失敗しました！\n", __FILE__);

    return false;
}

/* 80A0F618-80A0F78C 0014B8 0174+00 1/0 0/0 0/0 .text            setMotionAnm__10daNpcIns_cFif */
void daNpcIns_c::setMotionAnm(int i_index, f32 i_morf) {
    if (i_index < 0xA || i_index >= 0x18) {
        return;
    }

    int btkIdx = 0;
    switch (i_index) {
        case 0x10:
            btkIdx = 1;
            break;
    }

    J3DAnmTransformKey* i_bck = getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_index].arcIdx], l_bckGetParamList[i_index].fileIdx);
    J3DAnmTextureSRTKey* i_btk = getTexSRTKeyAnmP(l_arcNames[l_btkGetParamList[btkIdx].arcIdx], l_btkGetParamList[btkIdx].fileIdx);
    int bck_attr = l_bckGetParamList[i_index].attr;
    int btk_attr = l_btkGetParamList[btkIdx].attr;
    mAnmFlags &= ~ANM_MOTION_FLAGS;

    if (i_bck != NULL && setMcaMorfAnm(i_bck, 1.0f, i_morf, bck_attr, 0, -1)) {
        mAnmFlags |= ANM_PLAY_MORF | ANM_PAUSE_MORF;
        mMotionLoops = 0;
    }

    if (i_btk != NULL && setBtkAnm(i_btk, mpMorf->getModel()->getModelData(), 1.0f, btk_attr)) {
        mAnmFlags |= ANM_PLAY_BTK | ANM_PAUSE_BTK;
    }   
}

/* 80A0F78C-80A0F984 00162C 01F8+00 1/1 0/0 0/0 .text            reset__10daNpcIns_cFv */
void daNpcIns_c::reset() {
    initialize();
    mpMatAnm->initialize();
    mLookat.initialize();

    for (int i = 0; i < 1; i++) {
        mActorMngr[i].initialize();
    }
    

    field_0xdfc = 0;
    field_0xe00 = 0;
    mAction = NULL;
    mLookMode = -1;
    mMode = 0;
    mItemID = fpcM_ERROR_PROCESS_ID_e;
    mOrderEvtNo = 0;
    mExpressionMorfOverride = 0.0f;
    mMotionMorfOverride = 0.0f;
    speedF = 0.0f;
    speed.setall(0.0f);

    switch (mType) {
        case 0:
            current.pos.set(home.pos);
            break;
        
        case 1:
            setPath(getPathID1());
            getTargetPoint(0, &home.pos);
            current.pos = home.pos;
            break;

        case 2:
            setPath(getPathID2());
            getTargetPoint(0, &home.pos);
            current.pos = home.pos;
            break;
    }

    old.pos.set(current.pos);
    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;
    field_0xe10 = current.pos.y;
    setWaitAction();
}

void daNpcIns_c::playExpression() {
    daNpcF_anmPlayData dat0 = {0x1, daNpcIns_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1 = {0x2, daNpcIns_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};
    daNpcF_anmPlayData dat2 = {0x3, 0.0f, 0};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};
    daNpcF_anmPlayData dat3 = {0x4, daNpcIns_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat3[1] = {&dat3};
    daNpcF_anmPlayData dat4 = {0x5, daNpcIns_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4};
    daNpcF_anmPlayData dat5 = {0x6, daNpcIns_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5};
    daNpcF_anmPlayData dat6 = {0x7, 0.0f, 0};
    daNpcF_anmPlayData* pDat6[1] = {&dat6};
    daNpcF_anmPlayData dat7 = {0x8, daNpcIns_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};
    daNpcF_anmPlayData dat8 = {0x9, daNpcIns_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat8[1] = {&dat8};
    daNpcF_anmPlayData dat9 = {0x0, daNpcIns_Param_c::m.common.morf_frame, 0};
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

    if (mExpression >= 0 && mExpression < 10) {
        playExpressionAnm(ppDat);
    }
}

BOOL daNpcIns_c::setAction(actionFunc action) {
    mMode = 3;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    mPrevAction = mAction;
    mMode = 0;
    mAction = action;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    return TRUE;
}

void daNpcIns_c::waitEventMng() {
    if (dComIfGp_event_runCheck() != FALSE) {
        if (eventInfo.checkCommandTalk()) {
            setAction(&daNpcIns_c::talk);
        } else if (dComIfGp_getEventManager().getMyStaffId(l_myName, NULL, 0) != -1) {
            setAction(&daNpcIns_c::demo);
        }
    } else {
        if (mOrderEvtNo != 0) {
            eventInfo.setArchiveName("ins");
        }

        orderEvent(field_0xe20, l_evtNames[mOrderEvtNo], 0xFFFF, 0x28, 0xFF, 1);
    }
}

BOOL daNpcIns_c::step(s16 i_turnTargetAngle, int param_2) {
    if (mTurnMode == 0) {
        if (param_2 != 0) {
            if ((int)fabsf(cM_sht2d((s16)(i_turnTargetAngle - mCurAngle.y))) > 0x28) {
                setExpression(9, -1.0f);
                setMotion(0xB, -1.0f, 0);
            }
        }

        mTurnTargetAngle = i_turnTargetAngle;
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

BOOL daNpcIns_c::chkFindPlayer() {
    BOOL rv;

    if (!chkActorInSight(daPy_getPlayerActorClass(), daNpcIns_Param_c::m.common.fov)) {
        mActorMngr[0].remove();
        return FALSE;
    }

    if (mActorMngr[0].getActorP() == NULL) {
        rv = chkPlayerInSpeakArea(this);
    } else {
        rv = chkPlayerInTalkArea(this);
    }

    if (rv) {
        mActorMngr[0].entry(daPy_getPlayerActorClass());
    } else {
        mActorMngr[0].remove();
    }

    return rv;
}

void daNpcIns_c::checkPlayerSearch() {
    if (mActorMngr[0].getActorP() != NULL) {
        if (!chkFindPlayer()) {
            mTurnMode = 0;
        }
    } else if (chkFindPlayer()) {
        mTurnMode = 0;
    }
}

/* 80A0F984-80A0FF40 001824 05BC+00 2/0 0/0 0/0 .text            waitShop__10daNpcIns_cFPv */
int daNpcIns_c::waitShop(void* param_1) {
    // NONMATCHING
    switch (mMode) {
        case 0:
            setExpression(9, -1.0f);
            setMotion(0, -1.0f, 0);
            mTurnMode = 0;
            speedF = 0.0f;
            mMode = 2;
            break;
        
        case 2:
            checkPlayerSearch();

            if (mActorMngr[0].getActorP() != NULL) {
                setLookMode(LOOK_PLAYER);
            } else {
                setLookMode(LOOK_NONE);

                if (home.angle.y != mCurAngle.y && step(home.angle.y, 1)) {
                    setExpression(9, -1.0f);
                    setMotion(0, -1.0f, 0);
                    mTurnMode = 0;
                }
            }

            waitEventMng();
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1530, 0);
            break;
    }

    return 1;
}

/* 80A0FF40-80A0FFC4 001DE0 0084+00 1/0 0/0 0/0 .text            setMotion__10daNpcIns_cFifi */
void daNpcIns_c::setMotion(int i_motion, f32 i_morf, int param_3) {
    s16 motion = i_motion;

    switch (motion) {
        case 0xB:
            if (mType != 0) {
                motion = 0xC;
            }
            break;
        
        case 0xC:
            if (mType == 0) {
                motion = 0xB;
            }
            break;
    }

    if ((param_3 != 0 || mMotion != motion) && i_motion >= 0 && i_motion < 0xD) {
        mMotion = motion;
        mMotionMorfOverride = i_morf;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
    }
}

/* 80A0FFC4-80A0FFF0 001E64 002C+00 1/0 0/0 0/0 .text            setExpression__10daNpcIns_cFif */
void daNpcIns_c::setExpression(int i_expression, f32 i_morf) {
    if (i_expression >= 0 && i_expression < 10) {
        mExpression = i_expression;
        mExpressionMorfOverride = i_morf;
        mExpressionPrevPhase = -1;
        mExpressionPhase = 0;
    }
}

/* 80A0FFF0-80A103A0 001E90 03B0+00 1/0 0/0 0/0 .text            waitPresent__10daNpcIns_cFPv */
int daNpcIns_c::waitPresent(void* param_1) {
    switch (mMode) {
        case 0:
            setExpression(9, -1.0f);
            setMotion(0, -1.0f, 0);
            setLookMode(LOOK_PLAYER);
            mTurnMode = 0;
            speedF = 0.0f;
            mMode = 2;
            break;
        
        case 2: {
            checkPlayerSearch();

            u8 type = dMeter2Info_getInsectSelectType();
            if (type != 0xFF) {
                if (type != 0 && !isInsect(type)) {
                    break;
                }

                if (type != 0) {
                    OS_REPORT("Insects released. Type=%d\n", type);
                    mInsectMsgNo = getInsectMessageNo(type);
                    daNpcF_onEvtBit(getInsectEvtBitNo(type));
                    dMsgObject_setInsectItemNo(type);
                    daPy_py_c* player = daPy_getPlayerActorClass();
                    player->changeOriginalDemo();
                    player->changeDemoMode(0x25, 2, type, 0);
                } else {
                    mInsectMsgNo = 0x719;
                }

                dMeter2Info_setInsectSelectType(0xFF);
            }

            if (mInsectMsgNo != 0x719) {
                if (!daPy_getPlayerActorClass()->checkInsectRelease()) {
                    break;
                }
            }

            setAction(&daNpcIns_c::talk);
            break;
        }

        case 3:
            break;

        default:
            JUT_ASSERT(1585, 0);
            break;
    }

    return 1;
}

/* 80A103A0-80A10950 002240 05B0+00 1/0 0/0 0/0 .text            waitOutSide1__10daNpcIns_cFPv */
int daNpcIns_c::waitOutSide1(void* param_1) {
    // NONMATCHING
    switch (mMode) {
        case 0:
            setExpression(9, -1.0f);
            setMotion(8, -1.0f, 0);
            setLookMode(LOOK_NONE);
            field_0xe00 = cLib_getRndValue(3, 5);
            mTurnMode = 0;
            speedF = 0.0f;
            mMode = 2;
            break;
        
        case 2:
            if (home.angle.y != mCurAngle.y && step(home.angle.y, 1)) {
                setExpression(9, -1.0f);
                setMotion(8, -1.0f, 0);
                field_0xe00 = cLib_getRndValue(3, 5);
                mTurnMode = 0;
            }

            if (mMotionLoops >= field_0xe00) {
                if (mMotion == 8) {
                    setMotion(9, -1.0f, 0);
                    field_0xe00 = cLib_getRndValue(1, 3);
                } else {
                    setMotion(8, -1.0f, 0);
                    field_0xe00 = cLib_getRndValue(3, 5);
                }
            }

            if (getTime() >= mGoHomeTime) {
                setAction(&daNpcIns_c::goHome);
            }

            mSound.startCreatureVoiceLevel(Z2SE_INS_V_UFUFU, -1);
            waitEventMng();
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1642, 0);
            break;
    }
}

/* 80A10950-80A10CD8 0027F0 0388+00 1/0 0/0 0/0 .text            waitOutSide2__10daNpcIns_cFPv */
int daNpcIns_c::waitOutSide2(void* param_1) {
    // NONMATCHING
    switch (mMode) {
        case 0:
            setExpression(9, -1.0f);
            setMotion(0xA, -1.0f, 0);
            setLookMode(LOOK_NONE);
            mTurnMode = 0;
            speedF = 0.0f;
            mMode = 2;
            break;
        
        case 2:
            if (getTime() >= mGoHomeTime) {
                setAction(&daNpcIns_c::goHome);
            }

            mSound.startCreatureVoiceLevel(Z2SE_INS_V_UFUFU, -1);
            waitEventMng();
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1679, 0);
            break;
    }
}

/* 80A10CD8-80A11330 002B78 0658+00 3/0 0/0 0/0 .text            goHome__10daNpcIns_cFPv */
int daNpcIns_c::goHome(void* param_1) {
    // NONMATCHING
    switch (mMode) {
        case 0: {
            cXyz targetPoint;

            JUT_ASSERT(1702, mPath != 0);

            getTargetPoint(field_0xe08, &targetPoint);

            if (step(cLib_targetAngleY(&current.pos, &targetPoint), 1)) {
                setExpression(9, -1.0f);
                setMotion(7, -1.0f, 0);
                speedF = daNpcIns_Param_c::m.walk_speed;
                mInsectMsgNo = 0x27;
                mMode = 2;
            }
            break;
        }
        
        case 2:
            checkPlayerSearch();

            if (mActorMngr[0].getActorP() != NULL) {
                setLookMode(LOOK_PLAYER);
            } else {
                setLookMode(LOOK_NONE);
            }

            speedF = daNpcIns_Param_c::m.walk_speed;

            if (checkPoint(current.pos, speedF) && setNextPoint()) {
                fopAcM_delete(this);
            }

            pathMoveF();

            if (current.pos.y != old.pos.y) {
                cM3dGPla plane;
                s16 sVar1;
                if (dComIfG_Bgsp().GetTriPla(mAcch.m_gnd, &plane)) {
                    sVar1 = (s16)fopAcM_getPolygonAngle(&plane, shape_angle.y);
                } else {
                    sVar1 = 0;
                }

                if (sVar1 != 0) {
                    field_0xe10 = current.pos.y;
                }
            }

            cLib_addCalc2(&field_0xe10, current.pos.y, 0.4f, 25.0f);
            waitEventMng();
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1750, 0);
            break;
    }

    return 0;
}

void daNpcIns_c::setExpressionTalkAfter() {
    switch (mExpression) {
        case 1:
            setExpression(5, -1.0f);
            break;

        case 2:
            setExpression(6, -1.0f);
            break;
        
        case 3:
            setExpression(7, -1.0f);
            break;

        case 4:
            setExpression(8, -1.0f);
            break;

        default:
            setExpression(9, -1.0f);
            break;
    }
}

/* 80A11378-80A11A7C 003218 0704+00 2/0 0/0 0/0 .text            talk__10daNpcIns_cFPv */
int daNpcIns_c::talk(void* param_1) {
    // NONMATCHING
    int rv = 0;
    int itemNo;

    switch (mMode) {
        case 0:
            if (daPy_py_c::checkNowWolf()) {
                mInsectMsgNo = 0x25;
            }

            initTalk(mInsectMsgNo, NULL);
            mTurnMode = 0;
            mMsgTimer = 0;
            field_0xe20 = 0;
            field_0xe14 = fopAcM_searchPlayerAngleY(this);
            setLookMode(LOOK_PLAYER_TALK);
            mMode = 2;
            break;
        
        case 2:
            if (field_0xe14 == mCurAngle.y) {
                if (talkProc(NULL, TRUE, NULL)) {
                    mActorMngr[0].entry(daPy_getPlayerActorClass());

                    if (mType == 0) {
                        itemNo = 0;
                        u32 eventID = mFlow.getEventId(&itemNo);

                        OS_REPORT("会話終了時 イベントID=%d アイテムNo=%d\n", eventID, itemNo);

                        if (eventID == 1) {
                            mItemID = fopAcM_createItemForPresentDemo(&current.pos, itemNo, 0, -1, -1, NULL, NULL);

                            if (mItemID != fpcM_ERROR_PROCESS_ID_e) {
                                daPy_getPlayerActorClass()->cancelOriginalDemo();
                                s16 eventIdx = dComIfGp_getEventManager().getEventIdx(this, "DEFAULT_GETITEM", 0xFF);
                                dComIfGp_getEvent().reset(this);
                                fopAcM_orderChangeEventId(this, eventIdx, 1, 0xFFFF);
                                field_0x9ec = true;
                                field_0xe20 = 1;
                            }
                        } else if (eventID == 0x18 && mInsectMsgNo == field_0xe16) {
                            dMeter2Info_setPauseStatus(8);
                            field_0x9ec = true;
                            setAction(&daNpcIns_c::waitPresent);
                            rv = 1;
                            break;
                        }

                        setAction(&daNpcIns_c::waitShop);
                    } else {
                        setAction(mAction);
                    }

                    rv = 1;
                } else {
                    int i_expression, i_motion;
                    int msgTimer = mMsgTimer;

                    if (ctrlMsgAnm(i_expression, i_motion, this, FALSE)) {
                        setExpression(i_expression, -1.0f);
                        setMotion(i_motion, -1.0f, 0);
                    } else if (msgTimer != 0 && mMsgTimer == 0) {
                        setExpressionTalkAfter();
                    }
                }
            } else {
                if (step(field_0xe14, 1)) {
                    setMotion(0, -1.0f, 0);
                    mTurnMode = 0;
                }
            }
            break;

        case 3:
            mInsectMsgNo = field_0xe16;
            setExpression(9, -1.0f);

            if (!field_0x9ec) {
                dComIfGp_event_reset();
            }
            break;

        default:
            JUT_ASSERT(1848, 0);
            break;
    }

    return rv;
}

/* 80A11A7C-80A11BE8 00391C 016C+00 1/0 0/0 0/0 .text            demo__10daNpcIns_cFPv */
int daNpcIns_c::demo(void* param_1) {
    dEvent_manager_c* eventManager = &dComIfGp_getEventManager();
    int iVar1 = 0;

    switch (mMode) {
        case 0:
            setExpression(9, -1.0f);
            setMotion(0, -1.0f, 0);
            mMode = 2;
            // fallthrough        
        case 2:
            if (dComIfGp_event_runCheck() != FALSE && !eventInfo.checkCommandTalk()) {
                eventManager = &dComIfGp_getEventManager();
                s32 staffId = eventManager->getMyStaffId(l_myName, NULL, 0);
                if (staffId != -1) {
                    mStaffID = staffId;

                    JUT_ASSERT(1882, 0 != mEvtSeqList[mOrderEvtNo]);

                    if ((this->*mEvtSeqList[mOrderEvtNo])(staffId)) {
                        eventManager->cutEnd(staffId);
                    }

                    iVar1 = 1;
                }

                if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && eventManager->endCheck(mEventIdx)) {
                    dComIfGp_event_reset();
                    mOrderEvtNo = 0;
                    mEventIdx = -1;
                    setWaitAction();
                }
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1910, 0);
            break;
    }

    return 1;
}

/* 80A11BE8-80A11C50 003A88 0068+00 1/1 0/0 0/0 .text            isInsectComplete__10daNpcIns_cFv */
bool daNpcIns_c::isInsectComplete() {
    const insect_param_data* data_p = l_insectParams;

    for (int i = 0; i < 0x18; i++, data_p++) {
        if (!daNpcF_chkEvtBit(data_p->evt_bit_no)) {
            return false;
        }
    }

    return true;
}

/* 80A11C50-80A11D44 003AF0 00F4+00 2/1 0/0 0/0 .text            getInsectParamData__10daNpcIns_cFi */
const insect_param_data& daNpcIns_c::getInsectParamData(int i_index) {
    switch (i_index) {
        case 0xC0:
            i_index = 0;
            break;

        case 0xC1:
            i_index = 1;
            break;

        case 0xC2:
            i_index = 2;
            break;

        case 0xC3:
            i_index = 3;
            break;

        case 0xC4:
            i_index = 4;
            break;

        case 0xC5:
            i_index = 5;
            break;

        case 0xC6:
            i_index = 6;
            break;

        case 0xC7:
            i_index = 7;
            break;

        case 0xC8:
            i_index = 8;
            break;

        case 0xC9:
            i_index = 9;
            break;

        case 0xCA:
            i_index = 10;
            break;

        case 0xCB:
            i_index = 11;
            break;

        case 0xCC:
            i_index = 12;
            break;

        case 0xCD:
            i_index = 13;
            break;

        case 0xCE:
            i_index = 14;
            break;

        case 0xCF:
            i_index = 15;
            break;

        case 0xD0:
            i_index = 16;
            break;

        case 0xD1:
            i_index = 17;
            break;

        case 0xD2:
            i_index = 18;
            break;

        case 0xD3:
            i_index = 19;
            break;

        case 0xD4:
            i_index = 20;
            break;

        case 0xD5:
            i_index = 21;
            break;

        case 0xD6:
            i_index = 22;
            break;

        case 0xD7:
            i_index = 23;
            break;

        default:
            JUT_ASSERT(1965, 0);
            break;
    }

    return l_insectParams[i_index];
}

/* 80A11D44-80A11F84 003BE4 0240+00 2/2 0/0 0/0 .text            setWaitAction__10daNpcIns_cFv */
void daNpcIns_c::setWaitAction() {
    // NONMATCHING
    switch (mType) {
        case 0:
            setAction(&daNpcIns_c::waitShop);
            break;
        
        case 1:
            setAction(&daNpcIns_c::waitOutSide1);
            break;

        case 2:
            setAction(&daNpcIns_c::waitOutSide2);
            break;
    }
}

/* 80A11F84-80A1211C 003E24 0198+00 1/1 0/0 0/0 .text            setPath__10daNpcIns_cFi */
bool daNpcIns_c::setPath(int path_index) {
    mPath = dPath_GetRoomPath(path_index, fopAcM_GetRoomNo(this));

    if (mPath == NULL) {
        return false;
    }

    field_0xe08 = 1;
    field_0xe0c = current.pos.absXZ(dPath_GetPnt(mPath, field_0xe08)->m_position);
    return true;
}

/* 80A1211C-80A122D0 003FBC 01B4+00 1/1 0/0 0/0 .text            checkPoint__10daNpcIns_cFR4cXyzf */
bool daNpcIns_c::checkPoint(cXyz& param_1, f32 param_2) {
    f32 fVar1 = param_1.absXZ(dPath_GetPnt(mPath, field_0xe08)->m_position);
    if (fVar1 < param_2 || fVar1 < 10.0f) {
        return true;
    }

    field_0xe0c -= param_2;

    if (field_0xe0c < 0.0f) {
        return true;
    }

    return false;
}

/* 80A122D0-80A12480 004170 01B0+00 1/1 0/0 0/0 .text            setNextPoint__10daNpcIns_cFv */
bool daNpcIns_c::setNextPoint() {
    dPath_GetPnt(mPath, field_0xe08);
    field_0xe08++;

    if (field_0xe08 >= mPath->m_num) {
        field_0xe08 = mPath->m_num - 1;
        field_0xe0c = 0.0f;
        return true;
    }

    dPath_GetPnt(mPath, field_0xe08);
    field_0xe0c = current.pos.absXZ(dPath_GetPnt(mPath, field_0xe08)->m_position);
    return false;
}

/* 80A12480-80A124D0 004320 0050+00 2/2 0/0 0/0 .text            getTargetPoint__10daNpcIns_cFiP3Vec */
void daNpcIns_c::getTargetPoint(int pnt_index, Vec* param_2) {
    if (mPath != NULL) {
        *param_2 = dPath_GetPnt(mPath, pnt_index)->m_position;
    }
}

/* 80A124D0-80A12560 004370 0090+00 1/1 0/0 0/0 .text            pathMoveF__10daNpcIns_cFv */
void daNpcIns_c::pathMoveF() {
    if (mPath != NULL) {
        cXyz sp18;
        getTargetPoint(field_0xe08, &sp18);
        cLib_addCalcAngleS2(&mCurAngle.y, cLib_targetAngleY(&current.pos, &sp18), 13, 0x600);
        setAngle(mCurAngle.y);
        fopAcM_posMoveF(this, NULL);
    }
}

/* 80A12560-80A12580 004400 0020+00 1/0 0/0 0/0 .text            daNpcIns_Create__FPv */
static int daNpcIns_Create(void* a_this) {
    return static_cast<daNpcIns_c*>(a_this)->Create();
}

/* 80A12580-80A125A0 004420 0020+00 1/0 0/0 0/0 .text            daNpcIns_Delete__FPv */
static int daNpcIns_Delete(void* a_this) {
    return static_cast<daNpcIns_c*>(a_this)->Delete();
}

/* 80A125A0-80A125C0 004440 0020+00 1/0 0/0 0/0 .text            daNpcIns_Execute__FPv */
static int daNpcIns_Execute(void* a_this) {
    return static_cast<daNpcIns_c*>(a_this)->Execute();
}

/* 80A125C0-80A125E0 004460 0020+00 1/0 0/0 0/0 .text            daNpcIns_Draw__FPv */
static int daNpcIns_Draw(void* a_this) {
    return static_cast<daNpcIns_c*>(a_this)->Draw();
}

/* 80A125E0-80A125E8 004480 0008+00 1/0 0/0 0/0 .text            daNpcIns_IsDelete__FPv */
static int daNpcIns_IsDelete(void* a_this) {
    return 1;
}

/* 80A12618-80A126D4 0044B8 00BC+00 1/0 0/0 0/0 .text            setParam__10daNpcIns_cFv */
void daNpcIns_c::setParam() {
    attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(daNpcIns_Param_c::m.common.attention_distance, daNpcIns_Param_c::m.common.attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(daNpcIns_Param_c::m.common.talk_distance, daNpcIns_Param_c::m.common.talk_angle);
    attention_info.flags = fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e;

    if (daPy_py_c::checkNowWolf()) {
        attention_info.flags |= 0x800000;
    }

    mAcchCir.SetWallR(daNpcIns_Param_c::m.common.width);
    mAcchCir.SetWallH(daNpcIns_Param_c::m.common.knee_length);
    gravity = daNpcIns_Param_c::m.common.gravity;
}

/* 80A126D4-80A12A10 004574 033C+00 1/0 0/0 0/0 .text            main__10daNpcIns_cFv */
BOOL daNpcIns_c::main() {
    if (mAction) {
        (this->*mAction)(NULL);
    }

    if (mItemID != fpcM_ERROR_PROCESS_ID_e && dComIfGp_event_runCheck() != FALSE) {
        if (strcmp(dComIfGp_getEventManager().getRunEventName(), "DEFAULT_GETITEM") == 0) {
            dComIfGp_event_setItemPartnerId(mItemID);
            mItemID = fpcM_ERROR_PROCESS_ID_e;
        }
    }

    playExpression();
    playMotion();
    return chkAction(&daNpcIns_c::goHome);
}

/* 80A12A10-80A12DC8 0048B0 03B8+00 1/1 0/0 0/0 .text            playMotion__10daNpcIns_cFv */
void daNpcIns_c::playMotion() {
    // NONMATCHING
    daNpcF_anmPlayData dat0 = {0xA, daNpcIns_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1a = {0xC, daNpcIns_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat1b = {0xB, 0.0f, 0};
    daNpcF_anmPlayData* pDat1[2] = {&dat1a, &dat1b};
    daNpcF_anmPlayData dat2 = {0xB, daNpcIns_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};
    daNpcF_anmPlayData dat3a = {0xD, daNpcIns_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat3b = {0xA, daNpcIns_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat3[2] = {&dat3a, &dat3b};
    daNpcF_anmPlayData dat4 = {0x12, daNpcIns_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4};
    daNpcF_anmPlayData dat5a = {0xE, 0.0f, 1};
    daNpcF_anmPlayData dat5b = {0xF, 0.0f, 0};
    daNpcF_anmPlayData* pDat5[2] = {&dat5a, &dat5b};
    daNpcF_anmPlayData dat6a = {0x10, daNpcIns_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat6b = {0xB, 0.0f, 0};
    daNpcF_anmPlayData* pDat6[2] = {&dat6a, &dat6b};
    daNpcF_anmPlayData dat7 = {0x13, daNpcIns_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};
    daNpcF_anmPlayData dat8 = {0x14, daNpcIns_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat8[1] = {&dat8};
    daNpcF_anmPlayData dat9 = {0x15, daNpcIns_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat9[1] = {&dat9};
    daNpcF_anmPlayData dat10 = {0x16, daNpcIns_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat10[1] = {&dat10};
    daNpcF_anmPlayData dat11 = {0x11, daNpcIns_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat11[1] = {&dat11};
    daNpcF_anmPlayData dat12 = {0x17, daNpcIns_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat12[1] = {&dat12};

    daNpcF_anmPlayData** ppDat[13] = {
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
    };

    if (mMotion >= 0 && mMotion < 0xD) {
        playMotionAnm(ppDat);
    }
}

/* 80A12DC8-80A12EA4 004C68 00DC+00 1/0 0/0 0/0 .text            ctrlBtk__10daNpcIns_cFv */
BOOL daNpcIns_c::ctrlBtk() {
    // NONMATCHING
    if (mpMatAnm != NULL) {
        J3DAnmTextureSRTKey* i_btk = getTexSRTKeyAnmP(l_arcNames[l_btkGetParamList[0].arcIdx], l_btkGetParamList[0].fileIdx);

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

/* ############################################################################################## */
/* 80A14154-80A14158 0003A8 0004+00 0/1 0/0 0/0 .rodata          @5916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5916 = 60.0f;
COMPILER_STRIP_GATE(0x80A14154, &lit_5916);
#pragma pop

/* 80A12EA4-80A131AC 004D44 0308+00 1/0 0/0 0/0 .text            setAttnPos__10daNpcIns_cFv */
void daNpcIns_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A14158-80A1415C 0003AC 0004+00 0/1 0/0 0/0 .rodata          @5958 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5958 = -80.0f;
COMPILER_STRIP_GATE(0x80A14158, &lit_5958);
#pragma pop

/* 80A1415C-80A14160 0003B0 0004+00 0/1 0/0 0/0 .rodata          @5959 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5959 = 80.0f;
COMPILER_STRIP_GATE(0x80A1415C, &lit_5959);
#pragma pop

/* 80A14160-80A14164 0003B4 0004+00 0/1 0/0 0/0 .rodata          @5960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5960 = 5.0f;
COMPILER_STRIP_GATE(0x80A14160, &lit_5960);
#pragma pop

/* 80A14164-80A14168 0003B8 0004+00 0/1 0/0 0/0 .rodata          @5961 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5961 = 40.0f;
COMPILER_STRIP_GATE(0x80A14164, &lit_5961);
#pragma pop

/* 80A131AC-80A1339C 00504C 01F0+00 1/1 0/0 0/0 .text            lookat__10daNpcIns_cFv */
void daNpcIns_c::lookat() {
    // NONMATCHING
}

/* 80A1339C-80A13460 00523C 00C4+00 1/0 0/0 0/0 .text            setMtx__10daNpcIns_cFv */
void daNpcIns_c::setMtx() {
    // NONMATCHING
}

/* 80A13460-80A13468 005300 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__10daNpcIns_cFv */
int daNpcIns_c::drawDbgInfo() {
    return 0;
}

/* 80A13468-80A13474 005308 000C+00 1/1 0/0 0/0 .text sinShort__Q25JMath18TSinCosTable<13,f>CFs */
extern "C" void func_80A13468(void* _this, s16 param_0) /* const */ {
    // NONMATCHING
}

/* 80A13474-80A134F0 005314 007C+00 2/2 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
extern "C" void func_80A13474(void* _this, int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A145E4-80A145F0 000448 000C+00 2/2 0/0 0/0 .data            __vt__16daNpcIns_Param_c */
SECTION_DATA extern void* __vt__16daNpcIns_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daNpcIns_Param_cFv,
};

/* 80A145F8-80A14604 000008 000C+00 1/1 0/0 0/0 .bss             @3928 */
static u8 lit_3928[12];

/* 80A14604-80A14608 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A134F0-80A13558 005390 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_ins_cpp */
void __sinit_d_a_npc_ins_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A134F0, __sinit_d_a_npc_ins_cpp);
#pragma pop

/* 80A13558-80A135A0 0053F8 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A135A0-80A135DC 005440 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A135DC-80A136AC 00547C 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 80A136AC-80A136E8 00554C 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80A136E8-80A136EC 005588 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80A136EC-80A13728 00558C 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80A13728-80A1372C 0055C8 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80A1372C-80A13978 0055CC 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80A13978-80A13B68 005818 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80A13B68-80A13BD8 005A08 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80A13BD8-80A13C34 005A78 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A13C34-80A13CA4 005AD4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80A13CA4-80A13CEC 005B44 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80A13CEC-80A13CF0 005B8C 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__8daNpcF_cFv */
// void daNpcF_c::adjustShapeAngle() {
extern "C" void adjustShapeAngle__8daNpcF_cFv() {
    /* empty function */
}

/* 80A13CF0-80A13CF4 005B90 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80A13CF4-80A13CF8 005B94 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__8daNpcF_cFv */
// void daNpcF_c::drawOtherMdls() {
extern "C" void drawOtherMdls__8daNpcF_cFv() {
    /* empty function */
}

/* 80A13CF8-80A13D40 005B98 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A13D40-80A13D88 005BE0 0048+00 2/1 0/0 0/0 .text            __dt__16daNpcIns_Param_cFv */
// daNpcIns_Param_c::~daNpcIns_Param_c() {
//     // NONMATCHING
// }

/* 80A13D88-80A13D90 005C28 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80A13D88() {
    // NONMATCHING
}

/* 80A13D90-80A13D98 005C30 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80A13D90() {
    // NONMATCHING
}

/* 80A14168-80A14168 0003BC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 80A144B0-80A144D0 -00001 0020+00 1/0 0/0 0/0 .data            daNpcIns_MethodTable */
static actor_method_class daNpcIns_MethodTable = {
    (process_method_func)daNpcIns_Create,
    (process_method_func)daNpcIns_Delete,
    (process_method_func)daNpcIns_Execute,
    (process_method_func)daNpcIns_IsDelete,
    (process_method_func)daNpcIns_Draw,
};

/* 80A144D0-80A14500 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_INS */
extern actor_process_profile_definition g_profile_NPC_INS = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_INS,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcIns_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  425,                    // mPriority
  &daNpcIns_MethodTable,  // sub_method
  0x00040100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
