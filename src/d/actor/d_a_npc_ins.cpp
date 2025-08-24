/**
 * @file d_a_npc_ins.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_ins.h"
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
extern "C" extern u8 g_meter2_info[248];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80A14168-80A14168 0003BC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A14168 = "Ins";
SECTION_DEAD static char const* const stringBase_80A1416C = "Ins1";
SECTION_DEAD static char const* const stringBase_80A14171 = "Ins2";
SECTION_DEAD static char const* const stringBase_80A14176 = "ins";
#pragma pop

/* 80A141BC-80A142DC 000020 0120+00 1/2 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[288] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
};

/* 80A142DC-80A1433C 000140 0060+00 1/1 0/0 0/0 .data            l_btpGetParamList */
SECTION_DATA static u8 l_btpGetParamList[96] = {
    0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};

/* 80A1433C-80A14354 0001A0 0018+00 1/2 0/0 0/0 .data            l_btkGetParamList */
SECTION_DATA static u8 l_btkGetParamList[24] = {
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};

/* 80A14354-80A14360 0001B8 000C+00 1/0 0/0 0/0 .data            l_loadRes_INS0 */
SECTION_DATA static u8 l_loadRes_INS0[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80A14360-80A1436C 0001C4 000C+00 1/0 0/0 0/0 .data            l_loadRes_INS1 */
SECTION_DATA static u8 l_loadRes_INS1[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80A1436C-80A14378 0001D0 000C+00 1/0 0/0 0/0 .data            l_loadRes_INS2 */
SECTION_DATA static u8 l_loadRes_INS2[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80A14378-80A14384 -00001 000C+00 2/2 0/0 0/0 .data            l_loadRes_list */
SECTION_DATA static void* l_loadRes_list[3] = {
    (void*)&l_loadRes_INS0,
    (void*)&l_loadRes_INS1,
    (void*)&l_loadRes_INS2,
};

/* 80A14384-80A14390 -00001 000C+00 6/7 0/0 0/0 .data            l_arcNames */
SECTION_DATA static void* l_arcNames[3] = {
    (void*)&d_a_npc_ins__stringBase0,
    (void*)(((char*)&d_a_npc_ins__stringBase0) + 0x4),
    (void*)(((char*)&d_a_npc_ins__stringBase0) + 0x9),
};

/* 80A14390-80A14394 0001F4 0004+00 0/4 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_evtNames[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
#pragma pop

/* 80A14394-80A14398 -00001 0004+00 1/5 0/0 0/0 .data            l_myName */
SECTION_DATA static void* l_myName = (void*)(((char*)&d_a_npc_ins__stringBase0) + 0xE);

/* 80A14398-80A143A4 0001FC 000C+00 2/2 0/0 0/0 .data            mEvtSeqList__10daNpcIns_c */
SECTION_DATA u8 daNpcIns_c::mEvtSeqList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A143A4-80A143B0 -00001 000C+00 1/1 0/0 0/0 .data            @4607 */
SECTION_DATA static void* lit_4607[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)goHome__10daNpcIns_cFPv,
};

/* 80A143B0-80A143D8 -00001 0028+00 1/1 0/0 0/0 .data            @4650 */
SECTION_DATA static void* lit_4650[10] = {
    (void*)(((char*)setExpressionAnm__10daNpcIns_cFib) + 0xA0),
    (void*)(((char*)setExpressionAnm__10daNpcIns_cFib) + 0x19C),
    (void*)(((char*)setExpressionAnm__10daNpcIns_cFib) + 0xBC),
    (void*)(((char*)setExpressionAnm__10daNpcIns_cFib) + 0xD8),
    (void*)(((char*)setExpressionAnm__10daNpcIns_cFib) + 0xF4),
    (void*)(((char*)setExpressionAnm__10daNpcIns_cFib) + 0x110),
    (void*)(((char*)setExpressionAnm__10daNpcIns_cFib) + 0x12C),
    (void*)(((char*)setExpressionAnm__10daNpcIns_cFib) + 0x148),
    (void*)(((char*)setExpressionAnm__10daNpcIns_cFib) + 0x164),
    (void*)(((char*)setExpressionAnm__10daNpcIns_cFib) + 0x180),
};

/* 80A143D8-80A143E4 -00001 000C+00 0/4 0/0 0/0 .data            @4862 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4862[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__10daNpcIns_cFPv,
};
#pragma pop

/* 80A143E4-80A143F0 -00001 000C+00 0/4 0/0 0/0 .data            @4867 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4867[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__10daNpcIns_cFPv,
};
#pragma pop

/* 80A143F0-80A143FC -00001 000C+00 1/1 0/0 0/0 .data            @5026 */
SECTION_DATA static void* lit_5026[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__10daNpcIns_cFPv,
};

/* 80A143FC-80A14408 -00001 000C+00 0/1 0/0 0/0 .data            @5138 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5138[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)goHome__10daNpcIns_cFPv,
};
#pragma pop

/* 80A14408-80A14414 -00001 000C+00 0/1 0/0 0/0 .data            @5202 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5202[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)goHome__10daNpcIns_cFPv,
};
#pragma pop

/* 80A14414-80A14420 -00001 000C+00 1/1 0/0 0/0 .data            @5401 */
SECTION_DATA static void* lit_5401[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitPresent__10daNpcIns_cFPv,
};

/* 80A14420-80A1442C -00001 000C+00 1/1 0/0 0/0 .data            @5403 */
SECTION_DATA static void* lit_5403[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitShop__10daNpcIns_cFPv,
};

/* 80A1442C-80A1448C -00001 0060+00 1/1 0/0 0/0 .data            @5553 */
SECTION_DATA static void* lit_5553[24] = {
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0x24),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0x2C),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0x34),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0x3C),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0x44),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0x4C),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0x54),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0x5C),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0x64),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0x6C),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0x74),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0x7C),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0x84),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0x8C),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0x94),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0x9C),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0xA4),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0xAC),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0xB4),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0xBC),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0xC4),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0xCC),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0xD4),
    (void*)(((char*)getInsectParamData__10daNpcIns_cFi) + 0xDC),
};

/* 80A1448C-80A14498 -00001 000C+00 0/1 0/0 0/0 .data            @5556 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5556[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitShop__10daNpcIns_cFPv,
};
#pragma pop

/* 80A14498-80A144A4 -00001 000C+00 0/1 0/0 0/0 .data            @5559 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5559[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitOutSide1__10daNpcIns_cFPv,
};
#pragma pop

/* 80A144A4-80A144B0 -00001 000C+00 0/1 0/0 0/0 .data            @5562 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5562[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitOutSide2__10daNpcIns_cFPv,
};
#pragma pop

/* 80A144B0-80A144D0 -00001 0020+00 1/0 0/0 0/0 .data            daNpcIns_MethodTable */
static actor_method_class daNpcIns_MethodTable = {
    (process_method_func)daNpcIns_Create__FPv,
    (process_method_func)daNpcIns_Delete__FPv,
    (process_method_func)daNpcIns_Execute__FPv,
    (process_method_func)daNpcIns_IsDelete__FPv,
    (process_method_func)daNpcIns_Draw__FPv,
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

/* 80A14500-80A1450C 000364 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80A1450C-80A14518 000370 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80A14518-80A14560 00037C 0048+00 2/2 0/0 0/0 .data            __vt__10daNpcIns_c */
SECTION_DATA extern void* __vt__10daNpcIns_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10daNpcIns_cFv,
    (void*)setParam__10daNpcIns_cFv,
    (void*)main__10daNpcIns_cFv,
    (void*)ctrlBtk__10daNpcIns_cFv,
    (void*)adjustShapeAngle__8daNpcF_cFv,
    (void*)setMtx__10daNpcIns_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__10daNpcIns_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__10daNpcIns_cFib,
    (void*)setExpressionBtp__10daNpcIns_cFi,
    (void*)setExpression__10daNpcIns_cFif,
    (void*)setMotionAnm__10daNpcIns_cFif,
    (void*)setMotion__10daNpcIns_cFifi,
    (void*)drawDbgInfo__10daNpcIns_cFv,
    (void*)drawOtherMdls__8daNpcF_cFv,
};

/* 80A14560-80A1456C 0003C4 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A1456C-80A14590 0003D0 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A13D90,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A13D88,
};

/* 80A14590-80A1459C 0003F4 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80A1459C-80A145A8 000400 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80A145A8-80A145B4 00040C 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80A145B4-80A145C0 000418 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80A145C0-80A145CC 000424 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80A145CC-80A145D8 000430 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80A145D8-80A145E4 00043C 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 80A0E24C-80A0E3D0 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__10daNpcIns_cFv */
daNpcIns_c::daNpcIns_c() {
    // NONMATCHING
}

/* 80A0E3D0-80A0E418 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80A0E418-80A0E460 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80A0E460-80A0E660 000300 0200+00 1/0 0/0 0/0 .text            __dt__10daNpcIns_cFv */
daNpcIns_c::~daNpcIns_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A13DAC-80A13E6C 000000 00C0+00 15/15 0/0 0/0 .rodata          l_insectParams */
SECTION_RODATA static u8 const l_insectParams[192] = {
    0x00, 0x00, 0x01, 0x91, 0x07, 0x09, 0x00, 0x00, 0x00, 0x00, 0x01, 0x92, 0x07, 0x09, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x93, 0x07, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x01, 0x94, 0x07, 0x0A, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x95, 0x07, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x01, 0x96, 0x07, 0x0B, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x97, 0x07, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x01, 0x98, 0x07, 0x0C, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x99, 0x07, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x01, 0x9A, 0x07, 0x0D, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x9B, 0x07, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x01, 0x9C, 0x07, 0x0E, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x9D, 0x07, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x01, 0x9E, 0x07, 0x0F, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x9F, 0x07, 0x10, 0x00, 0x00, 0x00, 0x00, 0x01, 0xA0, 0x07, 0x10, 0x00, 0x00,
    0x00, 0x00, 0x01, 0xA1, 0x07, 0x11, 0x00, 0x00, 0x00, 0x00, 0x01, 0xA2, 0x07, 0x11, 0x00, 0x00,
    0x00, 0x00, 0x01, 0xA3, 0x07, 0x12, 0x00, 0x00, 0x00, 0x00, 0x01, 0xA4, 0x07, 0x12, 0x00, 0x00,
    0x00, 0x00, 0x01, 0xA5, 0x07, 0x13, 0x00, 0x00, 0x00, 0x00, 0x01, 0xA6, 0x07, 0x13, 0x00, 0x00,
    0x00, 0x00, 0x01, 0xA7, 0x07, 0x14, 0x00, 0x00, 0x00, 0x00, 0x01, 0xA8, 0x07, 0x14, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A13DAC, &l_insectParams);

/* 80A13E6C-80A13EDC 0000C0 0070+00 3/11 0/0 0/0 .rodata          m__16daNpcIns_Param_c */
SECTION_RODATA u8 const daNpcIns_Param_c::m[112] = {
    0x42, 0x0C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xA0, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0xC0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A13E6C, &daNpcIns_Param_c::m);

/* 80A13EDC-80A13EE0 000130 0004+00 0/1 0/0 0/0 .rodata          @4341 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4341 = -160.0f;
COMPILER_STRIP_GATE(0x80A13EDC, &lit_4341);
#pragma pop

/* 80A13EE0-80A13EE4 000134 0004+00 0/1 0/0 0/0 .rodata          @4342 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4342 = -50.0f;
COMPILER_STRIP_GATE(0x80A13EE0, &lit_4342);
#pragma pop

/* 80A13EE4-80A13EE8 000138 0004+00 0/1 0/0 0/0 .rodata          @4343 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4343 = 160.0f;
COMPILER_STRIP_GATE(0x80A13EE4, &lit_4343);
#pragma pop

/* 80A13EE8-80A13EEC 00013C 0004+00 0/1 0/0 0/0 .rodata          @4344 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4344 = 220.0f;
COMPILER_STRIP_GATE(0x80A13EE8, &lit_4344);
#pragma pop

/* 80A14168-80A14168 0003BC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A1417A = "R_SP160";
SECTION_DEAD static char const* const stringBase_80A14182 = "F_SP122";
#pragma pop

/* 80A0E660-80A0EA30 000500 03D0+00 1/1 0/0 0/0 .text            Create__10daNpcIns_cFv */
void daNpcIns_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A13EEC-80A13EF0 000140 0004+00 4/4 0/0 0/0 .rodata          @4414 */
SECTION_RODATA static f32 const lit_4414 = 1.0f;
COMPILER_STRIP_GATE(0x80A13EEC, &lit_4414);

/* 80A13EF0-80A13EF4 000144 0004+00 3/11 0/0 0/0 .rodata          @4415 */
SECTION_RODATA static u8 const lit_4415[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A13EF0, &lit_4415);

/* 80A0EA30-80A0ED80 0008D0 0350+00 1/1 0/0 0/0 .text            CreateHeap__10daNpcIns_cFv */
void daNpcIns_c::CreateHeap() {
    // NONMATCHING
}

/* 80A0ED80-80A0EDBC 000C20 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A0EDBC-80A0EDD4 000C5C 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A0EDD4-80A0EE10 000C74 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A0EE10-80A0EE28 000CB0 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A0EE28-80A0EE70 000CC8 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A0EE70-80A0EE94 000D10 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A0EE94-80A0EED0 000D34 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A0EED0-80A0EEE8 000D70 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A0EEE8-80A0EF24 000D88 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A0EF24-80A0EF3C 000DC4 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A0EF3C-80A0EF70 000DDC 0034+00 1/1 0/0 0/0 .text            Delete__10daNpcIns_cFv */
void daNpcIns_c::Delete() {
    // NONMATCHING
}

/* 80A0EF70-80A0EF94 000E10 0024+00 2/2 0/0 0/0 .text            Execute__10daNpcIns_cFv */
void daNpcIns_c::Execute() {
    // NONMATCHING
}

/* 80A0EF94-80A0F0BC 000E34 0128+00 1/1 0/0 0/0 .text            Draw__10daNpcIns_cFv */
void daNpcIns_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A13EF4-80A13F00 000148 000C+00 1/1 0/0 0/0 .rodata          @4507 */
SECTION_RODATA static u8 const lit_4507[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80A13EF4, &lit_4507);

/* 80A0F0BC-80A0F28C 000F5C 01D0+00 1/1 0/0 0/0 .text ctrlJoint__10daNpcIns_cFP8J3DJointP8J3DModel
 */
void daNpcIns_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 80A0F28C-80A0F2AC 00112C 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__10daNpcIns_cFP10fopAc_ac_c               */
void daNpcIns_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A0F2AC-80A0F2F8 00114C 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__10daNpcIns_cFP8J3DJointi
 */
void daNpcIns_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80A0F2F8-80A0F538 001198 0240+00 2/0 0/0 0/0 .text            setExpressionAnm__10daNpcIns_cFib
 */
void daNpcIns_c::setExpressionAnm(int param_0, bool param_1) {
    // NONMATCHING
}

/* 80A0F538-80A0F618 0013D8 00E0+00 1/0 0/0 0/0 .text            setExpressionBtp__10daNpcIns_cFi */
void daNpcIns_c::setExpressionBtp(int param_0) {
    // NONMATCHING
}

/* 80A0F618-80A0F78C 0014B8 0174+00 1/0 0/0 0/0 .text            setMotionAnm__10daNpcIns_cFif */
bool daNpcIns_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80A0F78C-80A0F984 00162C 01F8+00 1/1 0/0 0/0 .text            reset__10daNpcIns_cFv */
void daNpcIns_c::reset() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A13F00-80A13F0C 000154 000C+00 0/1 0/0 0/0 .rodata          @4746 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4746[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A13F00, &lit_4746);
#pragma pop

/* 80A13F0C-80A13F10 000160 0004+00 0/1 0/0 0/0 .rodata          @4747 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4747[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A13F0C, &lit_4747);
#pragma pop

/* 80A13F10-80A13F1C 000164 000C+00 0/1 0/0 0/0 .rodata          @4748 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4748[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A13F10, &lit_4748);
#pragma pop

/* 80A13F1C-80A13F20 000170 0004+00 0/1 0/0 0/0 .rodata          @4749 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4749[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A13F1C, &lit_4749);
#pragma pop

/* 80A13F20-80A13F2C 000174 000C+00 0/1 0/0 0/0 .rodata          @4750 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4750[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A13F20, &lit_4750);
#pragma pop

/* 80A13F2C-80A13F30 000180 0004+00 0/1 0/0 0/0 .rodata          @4751 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4751[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A13F2C, &lit_4751);
#pragma pop

/* 80A13F30-80A13F3C 000184 000C+00 0/1 0/0 0/0 .rodata          @4752 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4752[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A13F30, &lit_4752);
#pragma pop

/* 80A13F3C-80A13F40 000190 0004+00 0/1 0/0 0/0 .rodata          @4753 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4753[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A13F3C, &lit_4753);
#pragma pop

/* 80A13F40-80A13F4C 000194 000C+00 0/1 0/0 0/0 .rodata          @4754 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4754[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A13F40, &lit_4754);
#pragma pop

/* 80A13F4C-80A13F50 0001A0 0004+00 0/1 0/0 0/0 .rodata          @4755 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4755[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A13F4C, &lit_4755);
#pragma pop

/* 80A13F50-80A13F5C 0001A4 000C+00 0/1 0/0 0/0 .rodata          @4756 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4756[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A13F50, &lit_4756);
#pragma pop

/* 80A13F5C-80A13F60 0001B0 0004+00 0/1 0/0 0/0 .rodata          @4757 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4757[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A13F5C, &lit_4757);
#pragma pop

/* 80A13F60-80A13F6C 0001B4 000C+00 0/1 0/0 0/0 .rodata          @4758 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4758[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A13F60, &lit_4758);
#pragma pop

/* 80A13F6C-80A13F70 0001C0 0004+00 0/1 0/0 0/0 .rodata          @4759 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4759[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A13F6C, &lit_4759);
#pragma pop

/* 80A13F70-80A13F7C 0001C4 000C+00 0/1 0/0 0/0 .rodata          @4760 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4760[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A13F70, &lit_4760);
#pragma pop

/* 80A13F7C-80A13F80 0001D0 0004+00 0/1 0/0 0/0 .rodata          @4761 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4761[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A13F7C, &lit_4761);
#pragma pop

/* 80A13F80-80A13F8C 0001D4 000C+00 0/1 0/0 0/0 .rodata          @4762 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4762[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A13F80, &lit_4762);
#pragma pop

/* 80A13F8C-80A13F90 0001E0 0004+00 0/1 0/0 0/0 .rodata          @4763 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4763[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A13F8C, &lit_4763);
#pragma pop

/* 80A13F90-80A13F9C 0001E4 000C+00 0/1 0/0 0/0 .rodata          @4764 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4764[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A13F90, &lit_4764);
#pragma pop

/* 80A13F9C-80A13FA0 0001F0 0004+00 0/1 0/0 0/0 .rodata          @4765 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4765[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A13F9C, &lit_4765);
#pragma pop

/* 80A13FA0-80A13FC8 0001F4 0028+00 0/0 0/0 0/0 .rodata          @4766 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4766[40] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A13FA0, &lit_4766);
#pragma pop

/* 80A13FC8-80A13FD4 00021C 000C+00 0/1 0/0 0/0 .rodata          @4770 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4770[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A13FC8, &lit_4770);
#pragma pop

/* 80A13FD4-80A13FD8 000228 0004+00 0/1 0/0 0/0 .rodata          @4771 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4771[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A13FD4, &lit_4771);
#pragma pop

/* 80A13FD8-80A13FE4 00022C 000C+00 0/1 0/0 0/0 .rodata          @4772 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4772[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A13FD8, &lit_4772);
#pragma pop

/* 80A13FE4-80A13FF0 000238 000C+00 0/1 0/0 0/0 .rodata          @4773 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4773[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A13FE4, &lit_4773);
#pragma pop

/* 80A13FF0-80A13FF8 000244 0008+00 0/1 0/0 0/0 .rodata          @4774 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4774[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A13FF0, &lit_4774);
#pragma pop

/* 80A13FF8-80A14004 00024C 000C+00 0/1 0/0 0/0 .rodata          @4775 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4775[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A13FF8, &lit_4775);
#pragma pop

/* 80A14004-80A14008 000258 0004+00 0/1 0/0 0/0 .rodata          @4776 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4776[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A14004, &lit_4776);
#pragma pop

/* 80A14008-80A14014 00025C 000C+00 0/1 0/0 0/0 .rodata          @4777 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4777[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A14008, &lit_4777);
#pragma pop

/* 80A14014-80A14020 000268 000C+00 0/1 0/0 0/0 .rodata          @4778 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4778[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A14014, &lit_4778);
#pragma pop

/* 80A14020-80A14028 000274 0008+00 0/1 0/0 0/0 .rodata          @4779 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4779[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A14020, &lit_4779);
#pragma pop

/* 80A14028-80A14034 00027C 000C+00 0/1 0/0 0/0 .rodata          @4780 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4780[12] = {
    0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A14028, &lit_4780);
#pragma pop

/* 80A14034-80A14038 000288 0004+00 0/1 0/0 0/0 .rodata          @4781 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4781[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A14034, &lit_4781);
#pragma pop

/* 80A14038-80A14044 00028C 000C+00 0/1 0/0 0/0 .rodata          @4782 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4782[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A14038, &lit_4782);
#pragma pop

/* 80A14044-80A14050 000298 000C+00 0/1 0/0 0/0 .rodata          @4783 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4783[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A14044, &lit_4783);
#pragma pop

/* 80A14050-80A14058 0002A4 0008+00 0/1 0/0 0/0 .rodata          @4784 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4784[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A14050, &lit_4784);
#pragma pop

/* 80A14058-80A14064 0002AC 000C+00 0/1 0/0 0/0 .rodata          @4785 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4785[12] = {
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A14058, &lit_4785);
#pragma pop

/* 80A14064-80A14070 0002B8 000C+00 0/1 0/0 0/0 .rodata          @4786 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4786[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A14064, &lit_4786);
#pragma pop

/* 80A14070-80A14078 0002C4 0008+00 0/1 0/0 0/0 .rodata          @4787 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4787[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A14070, &lit_4787);
#pragma pop

/* 80A14078-80A14084 0002CC 000C+00 0/1 0/0 0/0 .rodata          @4788 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4788[12] = {
    0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A14078, &lit_4788);
#pragma pop

/* 80A14084-80A14088 0002D8 0004+00 0/1 0/0 0/0 .rodata          @4789 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4789[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A14084, &lit_4789);
#pragma pop

/* 80A14088-80A14094 0002DC 000C+00 0/1 0/0 0/0 .rodata          @4790 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4790[12] = {
    0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A14088, &lit_4790);
#pragma pop

/* 80A14094-80A14098 0002E8 0004+00 0/1 0/0 0/0 .rodata          @4791 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4791[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A14094, &lit_4791);
#pragma pop

/* 80A14098-80A140A4 0002EC 000C+00 0/1 0/0 0/0 .rodata          @4792 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4792[12] = {
    0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A14098, &lit_4792);
#pragma pop

/* 80A140A4-80A140A8 0002F8 0004+00 0/1 0/0 0/0 .rodata          @4793 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4793[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A140A4, &lit_4793);
#pragma pop

/* 80A140A8-80A140B4 0002FC 000C+00 0/1 0/0 0/0 .rodata          @4794 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4794[12] = {
    0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A140A8, &lit_4794);
#pragma pop

/* 80A140B4-80A140B8 000308 0004+00 0/1 0/0 0/0 .rodata          @4795 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4795[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A140B4, &lit_4795);
#pragma pop

/* 80A140B8-80A140C4 00030C 000C+00 0/1 0/0 0/0 .rodata          @4796 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4796[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A140B8, &lit_4796);
#pragma pop

/* 80A140C4-80A140C8 000318 0004+00 0/1 0/0 0/0 .rodata          @4797 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4797[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A140C4, &lit_4797);
#pragma pop

/* 80A140C8-80A140D4 00031C 000C+00 0/1 0/0 0/0 .rodata          @4798 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4798[12] = {
    0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A140C8, &lit_4798);
#pragma pop

/* 80A140D4-80A140D8 000328 0004+00 0/1 0/0 0/0 .rodata          @4799 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4799[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A140D4, &lit_4799);
#pragma pop

/* 80A140D8-80A1410C 00032C 0034+00 0/0 0/0 0/0 .rodata          @4800 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4800[52] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A140D8, &lit_4800);
#pragma pop

/* 80A1410C-80A14118 000360 000C+00 0/1 0/0 0/0 .rodata          @4812 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4812[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A1410C, &lit_4812);
#pragma pop

/* 80A14118-80A1411C 00036C 0004+00 3/8 0/0 0/0 .rodata          @4994 */
SECTION_RODATA static f32 const lit_4994 = -1.0f;
COMPILER_STRIP_GATE(0x80A14118, &lit_4994);

/* 80A1411C-80A14120 000370 0004+00 0/4 0/0 0/0 .rodata          @4995 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4995 = 0x3BB40000;
COMPILER_STRIP_GATE(0x80A1411C, &lit_4995);
#pragma pop

/* 80A14120-80A14124 000374 0004+00 0/4 0/0 0/0 .rodata          @4996 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4996 = 15.0f;
COMPILER_STRIP_GATE(0x80A14120, &lit_4996);
#pragma pop

/* 80A14124-80A1412C 000378 0008+00 1/5 0/0 0/0 .rodata          @4998 */
SECTION_RODATA static u8 const lit_4998[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A14124, &lit_4998);

/* 80A0F984-80A0FF40 001824 05BC+00 2/0 0/0 0/0 .text            waitShop__10daNpcIns_cFPv */
void daNpcIns_c::waitShop(void* param_0) {
    // NONMATCHING
}

/* 80A0FF40-80A0FFC4 001DE0 0084+00 1/0 0/0 0/0 .text            setMotion__10daNpcIns_cFifi */
void daNpcIns_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 80A0FFC4-80A0FFF0 001E64 002C+00 1/0 0/0 0/0 .text            setExpression__10daNpcIns_cFif */
void daNpcIns_c::setExpression(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80A0FFF0-80A103A0 001E90 03B0+00 1/0 0/0 0/0 .text            waitPresent__10daNpcIns_cFPv */
void daNpcIns_c::waitPresent(void* param_0) {
    // NONMATCHING
}

/* 80A103A0-80A10950 002240 05B0+00 1/0 0/0 0/0 .text            waitOutSide1__10daNpcIns_cFPv */
void daNpcIns_c::waitOutSide1(void* param_0) {
    // NONMATCHING
}

/* 80A10950-80A10CD8 0027F0 0388+00 1/0 0/0 0/0 .text            waitOutSide2__10daNpcIns_cFPv */
void daNpcIns_c::waitOutSide2(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A1412C-80A14130 000380 0004+00 0/1 0/0 0/0 .rodata          @5370 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5370 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A1412C, &lit_5370);
#pragma pop

/* 80A14130-80A14134 000384 0004+00 0/1 0/0 0/0 .rodata          @5371 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5371 = 25.0f;
COMPILER_STRIP_GATE(0x80A14130, &lit_5371);
#pragma pop

/* 80A10CD8-80A11330 002B78 0658+00 3/0 0/0 0/0 .text            goHome__10daNpcIns_cFPv */
void daNpcIns_c::goHome(void* param_0) {
    // NONMATCHING
}

/* 80A11330-80A11378 0031D0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A14168-80A14168 0003BC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A1418A = "DEFAULT_GETITEM";
#pragma pop

/* 80A11378-80A11A7C 003218 0704+00 2/0 0/0 0/0 .text            talk__10daNpcIns_cFPv */
void daNpcIns_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80A11A7C-80A11BE8 00391C 016C+00 1/0 0/0 0/0 .text            demo__10daNpcIns_cFPv */
void daNpcIns_c::demo(void* param_0) {
    // NONMATCHING
}

/* 80A11BE8-80A11C50 003A88 0068+00 1/1 0/0 0/0 .text            isInsectComplete__10daNpcIns_cFv */
void daNpcIns_c::isInsectComplete() {
    // NONMATCHING
}

/* 80A11C50-80A11D44 003AF0 00F4+00 2/1 0/0 0/0 .text            getInsectParamData__10daNpcIns_cFi
 */
void daNpcIns_c::getInsectParamData(int param_0) {
    // NONMATCHING
}

/* 80A11D44-80A11F84 003BE4 0240+00 2/2 0/0 0/0 .text            setWaitAction__10daNpcIns_cFv */
void daNpcIns_c::setWaitAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A14134-80A1413C 000388 0008+00 0/4 0/0 0/0 .rodata          @5618 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5618[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A14134, &lit_5618);
#pragma pop

/* 80A1413C-80A14144 000390 0008+00 0/4 0/0 0/0 .rodata          @5619 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5619[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A1413C, &lit_5619);
#pragma pop

/* 80A14144-80A1414C 000398 0008+00 0/4 0/0 0/0 .rodata          @5620 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5620[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A14144, &lit_5620);
#pragma pop

/* 80A11F84-80A1211C 003E24 0198+00 1/1 0/0 0/0 .text            setPath__10daNpcIns_cFi */
void daNpcIns_c::setPath(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A1414C-80A14150 0003A0 0004+00 0/2 0/0 0/0 .rodata          @5663 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5663 = 10.0f;
COMPILER_STRIP_GATE(0x80A1414C, &lit_5663);
#pragma pop

/* 80A1211C-80A122D0 003FBC 01B4+00 1/1 0/0 0/0 .text            checkPoint__10daNpcIns_cFR4cXyzf */
void daNpcIns_c::checkPoint(cXyz& param_0, f32 param_1) {
    // NONMATCHING
}

/* 80A122D0-80A12480 004170 01B0+00 1/1 0/0 0/0 .text            setNextPoint__10daNpcIns_cFv */
void daNpcIns_c::setNextPoint() {
    // NONMATCHING
}

/* 80A12480-80A124D0 004320 0050+00 2/2 0/0 0/0 .text            getTargetPoint__10daNpcIns_cFiP3Vec
 */
void daNpcIns_c::getTargetPoint(int param_0, Vec* param_1) {
    // NONMATCHING
}

/* 80A124D0-80A12560 004370 0090+00 1/1 0/0 0/0 .text            pathMoveF__10daNpcIns_cFv */
void daNpcIns_c::pathMoveF() {
    // NONMATCHING
}

/* 80A12560-80A12580 004400 0020+00 1/0 0/0 0/0 .text            daNpcIns_Create__FPv */
static void daNpcIns_Create(void* param_0) {
    // NONMATCHING
}

/* 80A12580-80A125A0 004420 0020+00 1/0 0/0 0/0 .text            daNpcIns_Delete__FPv */
static void daNpcIns_Delete(void* param_0) {
    // NONMATCHING
}

/* 80A125A0-80A125C0 004440 0020+00 1/0 0/0 0/0 .text            daNpcIns_Execute__FPv */
static void daNpcIns_Execute(void* param_0) {
    // NONMATCHING
}

/* 80A125C0-80A125E0 004460 0020+00 1/0 0/0 0/0 .text            daNpcIns_Draw__FPv */
static void daNpcIns_Draw(void* param_0) {
    // NONMATCHING
}

/* 80A125E0-80A125E8 004480 0008+00 1/0 0/0 0/0 .text            daNpcIns_IsDelete__FPv */
static bool daNpcIns_IsDelete(void* param_0) {
    return true;
}

/* 80A125E8-80A12618 004488 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80A12618-80A126D4 0044B8 00BC+00 1/0 0/0 0/0 .text            setParam__10daNpcIns_cFv */
void daNpcIns_c::setParam() {
    // NONMATCHING
}

/* 80A126D4-80A12A10 004574 033C+00 1/0 0/0 0/0 .text            main__10daNpcIns_cFv */
void daNpcIns_c::main() {
    // NONMATCHING
}

/* 80A12A10-80A12DC8 0048B0 03B8+00 1/1 0/0 0/0 .text            playMotion__10daNpcIns_cFv */
void daNpcIns_c::playMotion() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A14150-80A14154 0003A4 0004+00 1/1 0/0 0/0 .rodata          @5847 */
SECTION_RODATA static f32 const lit_5847 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A14150, &lit_5847);

/* 80A12DC8-80A12EA4 004C68 00DC+00 1/0 0/0 0/0 .text            ctrlBtk__10daNpcIns_cFv */
void daNpcIns_c::ctrlBtk() {
    // NONMATCHING
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
bool daNpcIns_c::drawDbgInfo() {
    return false;
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
daNpcIns_Param_c::~daNpcIns_Param_c() {
    // NONMATCHING
}

/* 80A13D88-80A13D90 005C28 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80A13D88() {
    // NONMATCHING
}

/* 80A13D90-80A13D98 005C30 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80A13D90() {
    // NONMATCHING
}

/* 80A14168-80A14168 0003BC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
