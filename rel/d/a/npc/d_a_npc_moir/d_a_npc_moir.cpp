/**
 * @file d_a_npc_moir.cpp
 * 
*/

#include "rel/d/a/npc/d_a_npc_moir/d_a_npc_moir.h"
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
extern "C" void setExpressionAnm__11daNpcMoiR_cFib();
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

//
// Declarations:
//

/* ############################################################################################## */
/* 80A83840-80A83840 000594 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A83840 = "MoiR";
SECTION_DEAD static char const* const stringBase_80A83845 = "MoiR1";
SECTION_DEAD static char const* const stringBase_80A8384B = "MoiR2";
SECTION_DEAD static char const* const stringBase_80A83851 = "MoiR3";
SECTION_DEAD static char const* const stringBase_80A83857 = "";
SECTION_DEAD static char const* const stringBase_80A83858 = "THE_INTRODUCTION";
SECTION_DEAD static char const* const stringBase_80A83869 = "MOIR_APPEAR";
SECTION_DEAD static char const* const stringBase_80A83875 = "MOIR_APPEAR2";
#pragma pop

/* 80A838B0-80A838BC 000000 000C+00 9/9 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A838BC-80A838D0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80A838D0-80A83AA4 000020 01D4+00 3/4 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[468] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x15,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x12,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03,
};

/* 80A83AA4-80A83ABC 0001F4 0018+00 1/1 0/0 0/0 .data            l_btpGetParamList */
SECTION_DATA static u8 l_btpGetParamList[24] = {
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};

/* 80A83ABC-80A83AC8 00020C 000C+00 1/2 0/0 0/0 .data            l_btkGetParamList */
SECTION_DATA static u8 l_btkGetParamList[12] = {
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};

/* 80A83AC8-80A83AD4 000218 000C+00 1/0 0/0 0/0 .data            l_loadRes_MOIR0 */
SECTION_DATA static u8 l_loadRes_MOIR0[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80A83AD4-80A83AE0 000224 000C+00 1/0 0/0 0/0 .data            l_loadRes_MOIR1 */
SECTION_DATA static u8 l_loadRes_MOIR1[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80A83AE0-80A83AEC 000230 000C+00 1/0 0/0 0/0 .data            l_loadRes_MOIR2 */
SECTION_DATA static u8 l_loadRes_MOIR2[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80A83AEC-80A83AF8 -00001 000C+00 2/2 0/0 0/0 .data            l_loadRes_list */
SECTION_DATA static void* l_loadRes_list[3] = {
    (void*)&l_loadRes_MOIR0,
    (void*)&l_loadRes_MOIR1,
    (void*)&l_loadRes_MOIR2,
};

/* 80A83AF8-80A83B08 -00001 0010+00 8/13 0/0 0/0 .data            l_arcNames */
SECTION_DATA static void* l_arcNames[4] = {
    (void*)&d_a_npc_moir__stringBase0,
    (void*)(((char*)&d_a_npc_moir__stringBase0) + 0x5),
    (void*)(((char*)&d_a_npc_moir__stringBase0) + 0xB),
    (void*)(((char*)&d_a_npc_moir__stringBase0) + 0x11),
};

/* 80A83B08-80A83B18 -00001 0010+00 0/5 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtNames[4] = {
    (void*)(((char*)&d_a_npc_moir__stringBase0) + 0x17),
    (void*)(((char*)&d_a_npc_moir__stringBase0) + 0x18),
    (void*)(((char*)&d_a_npc_moir__stringBase0) + 0x29),
    (void*)(((char*)&d_a_npc_moir__stringBase0) + 0x35),
};
#pragma pop

/* 80A83B18-80A83B1C -00001 0004+00 0/3 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)&d_a_npc_moir__stringBase0;
#pragma pop

/* 80A83B1C-80A83B28 -00001 000C+00 0/1 0/0 0/0 .data            @3855 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3855[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_Introduction__11daNpcMoiR_cFi,
};
#pragma pop

/* 80A83B28-80A83B34 -00001 000C+00 0/1 0/0 0/0 .data            @3856 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3856[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_Appear__11daNpcMoiR_cFi,
};
#pragma pop

/* 80A83B34-80A83B40 -00001 000C+00 0/1 0/0 0/0 .data            @3857 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3857[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_Appear2__11daNpcMoiR_cFi,
};
#pragma pop

/* 80A83B40-80A83B70 000290 0030+00 0/2 0/0 0/0 .data            mEvtSeqList__11daNpcMoiR_c */
#pragma push
#pragma force_active on
SECTION_DATA u8 daNpcMoiR_c::mEvtSeqList[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A83B70-80A83B9C -00001 002C+00 1/1 0/0 0/0 .data            @4538 */
SECTION_DATA static void* lit_4538[11] = {
    (void*)(((char*)setExpressionAnm__11daNpcMoiR_cFib) + 0xA0),
    (void*)(((char*)setExpressionAnm__11daNpcMoiR_cFib) + 0xBC),
    (void*)(((char*)setExpressionAnm__11daNpcMoiR_cFib) + 0xD8),
    (void*)(((char*)setExpressionAnm__11daNpcMoiR_cFib) + 0xF4),
    (void*)(((char*)setExpressionAnm__11daNpcMoiR_cFib) + 0x110),
    (void*)(((char*)setExpressionAnm__11daNpcMoiR_cFib) + 0x12C),
    (void*)(((char*)setExpressionAnm__11daNpcMoiR_cFib) + 0x148),
    (void*)(((char*)setExpressionAnm__11daNpcMoiR_cFib) + 0x164),
    (void*)(((char*)setExpressionAnm__11daNpcMoiR_cFib) + 0x180),
    (void*)(((char*)setExpressionAnm__11daNpcMoiR_cFib) + 0x19C),
    (void*)(((char*)setExpressionAnm__11daNpcMoiR_cFib) + 0x1B8),
};

/* 80A83B9C-80A83BA8 -00001 000C+00 0/4 0/0 0/0 .data            @4709 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4709[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_type0__11daNpcMoiR_cFPv,
};
#pragma pop

/* 80A83BA8-80A83BB4 -00001 000C+00 0/4 0/0 0/0 .data            @4712 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4712[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_type1__11daNpcMoiR_cFPv,
};
#pragma pop

/* 80A83BB4-80A83BC0 -00001 000C+00 0/4 0/0 0/0 .data            @4715 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4715[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_type2__11daNpcMoiR_cFPv,
};
#pragma pop

/* 80A83BC0-80A83BCC -00001 000C+00 3/6 0/0 0/0 .data            @4762 */
SECTION_DATA static void* lit_4762[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fight__11daNpcMoiR_cFPv,
};

/* 80A83BCC-80A83BD8 -00001 000C+00 0/0 0/0 0/0 .data            @4854 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4854[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)multiTalk__11daNpcMoiR_cFPv,
};
#pragma pop

/* 80A83BD8-80A83BE4 -00001 000C+00 0/1 0/0 0/0 .data            @4857 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4857[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpcMoiR_cFPv,
};
#pragma pop

/* 80A83BE4-80A83BF0 -00001 000C+00 0/1 0/0 0/0 .data            @4862 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4862[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__11daNpcMoiR_cFPv,
};
#pragma pop

/* 80A83BF0-80A83BFC -00001 000C+00 0/1 0/0 0/0 .data            @4998 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4998[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fight__11daNpcMoiR_cFPv,
};
#pragma pop

/* 80A83BFC-80A83C08 -00001 000C+00 0/0 0/0 0/0 .data            @5013 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5013[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)multiTalk__11daNpcMoiR_cFPv,
};
#pragma pop

/* 80A83C08-80A83C14 -00001 000C+00 0/1 0/0 0/0 .data            @5016 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5016[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpcMoiR_cFPv,
};
#pragma pop

/* 80A83C14-80A83C20 -00001 000C+00 0/1 0/0 0/0 .data            @5021 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5021[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__11daNpcMoiR_cFPv,
};
#pragma pop

/* 80A83C20-80A83C2C -00001 000C+00 1/1 0/0 0/0 .data            @5184 */
SECTION_DATA static void* lit_5184[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)leave__11daNpcMoiR_cFPv,
};

/* 80A83C2C-80A83C38 -00001 000C+00 1/1 0/0 0/0 .data            @5387 */
SECTION_DATA static void* lit_5387[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_type1__11daNpcMoiR_cFPv,
};

/* 80A83C38-80A83C58 -00001 0020+00 1/0 0/0 0/0 .data            daNpcMoiR_MethodTable */
static actor_method_class daNpcMoiR_MethodTable = {
    (process_method_func)daNpcMoiR_Create__FPv,
    (process_method_func)daNpcMoiR_Delete__FPv,
    (process_method_func)daNpcMoiR_Execute__FPv,
    (process_method_func)daNpcMoiR_IsDelete__FPv,
    (process_method_func)daNpcMoiR_Draw__FPv,
};

/* 80A83C58-80A83C88 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_MOIR */
extern actor_process_profile_definition g_profile_NPC_MOIR = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_MOIR,          // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
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

/* 80A83C88-80A83C94 0003D8 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80A83C94-80A83CDC 0003E4 0048+00 2/2 0/0 0/0 .data            __vt__11daNpcMoiR_c */
SECTION_DATA extern void* __vt__11daNpcMoiR_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpcMoiR_cFv,
    (void*)setParam__11daNpcMoiR_cFv,
    (void*)main__11daNpcMoiR_cFv,
    (void*)ctrlBtk__11daNpcMoiR_cFv,
    (void*)adjustShapeAngle__8daNpcF_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__11daNpcMoiR_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__11daNpcMoiR_cFib,
    (void*)setExpressionBtp__11daNpcMoiR_cFi,
    (void*)setExpression__11daNpcMoiR_cFif,
    (void*)setMotionAnm__11daNpcMoiR_cFif,
    (void*)setMotion__11daNpcMoiR_cFifi,
    (void*)drawDbgInfo__11daNpcMoiR_cFv,
    (void*)drawOtherMdls__11daNpcMoiR_cFv,
};

/* 80A83CDC-80A83CE8 00042C 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A83CE8-80A83D0C 000438 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A83290,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A83288,
};

/* 80A83D0C-80A83D18 00045C 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80A83D18-80A83D24 000468 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80A83D24-80A83D30 000474 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80A83D30-80A83D3C 000480 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80A83D3C-80A83D48 00048C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80A83D48-80A83D54 000498 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80A83D54-80A83D60 0004A4 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 80A7C16C-80A7C2F0 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__11daNpcMoiR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpcMoiR_c::daNpcMoiR_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__ct__11daNpcMoiR_cFv.s"
}
#pragma pop

/* 80A7C2F0-80A7C338 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80A7C338-80A7C380 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80A7C380-80A7C580 000300 0200+00 1/0 0/0 0/0 .text            __dt__11daNpcMoiR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpcMoiR_c::~daNpcMoiR_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__dt__11daNpcMoiR_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A832AC-80A83320 000000 0074+00 17/17 0/0 0/0 .rodata          m__17daNpcMoiR_Param_c */
SECTION_RODATA u8 const daNpcMoiR_Param_c::m[116] = {
    0x42, 0x0C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00,
    0x00, 0x43, 0x7F, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1,
    0x20, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00,
    0xC2, 0x34, 0x00, 0x00, 0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00,
    0x06, 0x00, 0x05, 0x00, 0x06, 0x42, 0xA0, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96,
    0x00, 0x00, 0xC3, 0x96, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0x15, 0xCD, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A832AC, &daNpcMoiR_Param_c::m);

/* 80A83320-80A83324 000074 0004+00 0/1 0/0 0/0 .rodata          @4276 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4276 = -100.0f;
COMPILER_STRIP_GATE(0x80A83320, &lit_4276);
#pragma pop

/* 80A83324-80A83328 000078 0004+00 0/1 0/0 0/0 .rodata          @4277 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4277 = -50.0f;
COMPILER_STRIP_GATE(0x80A83324, &lit_4277);
#pragma pop

/* 80A83328-80A8332C 00007C 0004+00 0/1 0/0 0/0 .rodata          @4278 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4278 = 100.0f;
COMPILER_STRIP_GATE(0x80A83328, &lit_4278);
#pragma pop

/* 80A8332C-80A83330 000080 0004+00 0/1 0/0 0/0 .rodata          @4279 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4279 = 220.0f;
COMPILER_STRIP_GATE(0x80A8332C, &lit_4279);
#pragma pop

/* 80A83840-80A83840 000594 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A83882 = "R_SP116";
SECTION_DEAD static char const* const stringBase_80A8388A = "F_SP108";
SECTION_DEAD static char const* const stringBase_80A83892 = "D_MN09";
#pragma pop

/* 80A7C580-80A7C978 000500 03F8+00 1/1 0/0 0/0 .text            Create__11daNpcMoiR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::Create() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/Create__11daNpcMoiR_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A83330-80A83334 000084 0004+00 4/5 0/0 0/0 .rodata          @4337 */
SECTION_RODATA static f32 const lit_4337 = 1.0f;
COMPILER_STRIP_GATE(0x80A83330, &lit_4337);

/* 80A83334-80A83338 000088 0004+00 2/10 0/0 0/0 .rodata          @4338 */
SECTION_RODATA static u8 const lit_4338[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A83334, &lit_4338);

/* 80A7C978-80A7CC8C 0008F8 0314+00 1/1 0/0 0/0 .text            CreateHeap__11daNpcMoiR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/CreateHeap__11daNpcMoiR_cFv.s"
}
#pragma pop

/* 80A7CC8C-80A7CCC8 000C0C 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" asm void __dt__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__dt__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80A7CCC8-80A7CCE0 000C48 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" asm void __ct__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__ct__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80A7CCE0-80A7CD1C 000C60 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" asm void __dt__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__dt__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 80A7CD1C-80A7CD34 000C9C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::J3DTevColorAnm() {
extern "C" asm void __ct__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__ct__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 80A7CD34-80A7CD7C 000CB4 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" asm void __dt__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__dt__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80A7CD7C-80A7CDA0 000CFC 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::J3DTexNoAnm() {
extern "C" asm void __ct__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__ct__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80A7CDA0-80A7CDDC 000D20 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" asm void __dt__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__dt__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80A7CDDC-80A7CDF4 000D5C 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" asm void __ct__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__ct__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80A7CDF4-80A7CE30 000D74 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" asm void __dt__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__dt__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 80A7CE30-80A7CE48 000DB0 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::J3DMatColorAnm() {
extern "C" asm void __ct__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__ct__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 80A7CE48-80A7CE7C 000DC8 0034+00 1/1 0/0 0/0 .text            Delete__11daNpcMoiR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::Delete() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/Delete__11daNpcMoiR_cFv.s"
}
#pragma pop

/* 80A7CE7C-80A7CEA0 000DFC 0024+00 2/2 0/0 0/0 .text            Execute__11daNpcMoiR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::Execute() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/Execute__11daNpcMoiR_cFv.s"
}
#pragma pop

/* 80A7CEA0-80A7CEFC 000E20 005C+00 1/1 0/0 0/0 .text            Draw__11daNpcMoiR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::Draw() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/Draw__11daNpcMoiR_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A83338-80A83344 00008C 000C+00 1/1 0/0 0/0 .rodata          @4386 */
SECTION_RODATA static u8 const lit_4386[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80A83338, &lit_4386);

/* 80A7CEFC-80A7D0CC 000E7C 01D0+00 1/1 0/0 0/0 .text
 * ctrlJoint__11daNpcMoiR_cFP8J3DJointP8J3DModel                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/ctrlJoint__11daNpcMoiR_cFP8J3DJointP8J3DModel.s"
}
#pragma pop

/* 80A7D0CC-80A7D0EC 00104C 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpcMoiR_cFP10fopAc_ac_c              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::createHeapCallBack(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/createHeapCallBack__11daNpcMoiR_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80A7D0EC-80A7D138 00106C 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpcMoiR_cFP8J3DJointi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/ctrlJointCallBack__11daNpcMoiR_cFP8J3DJointi.s"
}
#pragma pop

/* 80A7D138-80A7D394 0010B8 025C+00 2/0 0/0 0/0 .text            setExpressionAnm__11daNpcMoiR_cFib
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::setExpressionAnm(int param_0, bool param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/setExpressionAnm__11daNpcMoiR_cFib.s"
}
#pragma pop

/* 80A7D394-80A7D474 001314 00E0+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpcMoiR_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::setExpressionBtp(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/setExpressionBtp__11daNpcMoiR_cFi.s"
}
#pragma pop

/* 80A7D474-80A7D5C4 0013F4 0150+00 1/0 0/0 0/0 .text            setMotionAnm__11daNpcMoiR_cFif */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::setMotionAnm(int param_0, f32 param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/setMotionAnm__11daNpcMoiR_cFif.s"
}
#pragma pop

/* 80A7D5C4-80A7D73C 001544 0178+00 1/1 0/0 0/0 .text            reset__11daNpcMoiR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::reset() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/reset__11daNpcMoiR_cFv.s"
}
#pragma pop

/* 80A7D73C-80A7D934 0016BC 01F8+00 1/1 0/0 0/0 .text            setWaitAction__11daNpcMoiR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::setWaitAction() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/setWaitAction__11daNpcMoiR_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A83344-80A83350 000098 000C+00 0/1 0/0 0/0 .rodata          @4603 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4603[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83344, &lit_4603);
#pragma pop

/* 80A83350-80A83354 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4604 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4604[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A83350, &lit_4604);
#pragma pop

/* 80A83354-80A83360 0000A8 000C+00 0/1 0/0 0/0 .rodata          @4605 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4605[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A83354, &lit_4605);
#pragma pop

/* 80A83360-80A83364 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4606 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4606[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A83360, &lit_4606);
#pragma pop

/* 80A83364-80A83370 0000B8 000C+00 0/1 0/0 0/0 .rodata          @4607 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4607[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A83364, &lit_4607);
#pragma pop

/* 80A83370-80A83374 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4608 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4608[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A83370, &lit_4608);
#pragma pop

/* 80A83374-80A83380 0000C8 000C+00 0/1 0/0 0/0 .rodata          @4609 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4609[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83374, &lit_4609);
#pragma pop

/* 80A83380-80A83384 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4610 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4610[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A83380, &lit_4610);
#pragma pop

/* 80A83384-80A83390 0000D8 000C+00 0/1 0/0 0/0 .rodata          @4611 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4611[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83384, &lit_4611);
#pragma pop

/* 80A83390-80A83394 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4612 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4612[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A83390, &lit_4612);
#pragma pop

/* 80A83394-80A833A0 0000E8 000C+00 0/1 0/0 0/0 .rodata          @4613 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4613[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83394, &lit_4613);
#pragma pop

/* 80A833A0-80A833A4 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4614 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4614[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A833A0, &lit_4614);
#pragma pop

/* 80A833A4-80A833B0 0000F8 000C+00 0/1 0/0 0/0 .rodata          @4615 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4615[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A833A4, &lit_4615);
#pragma pop

/* 80A833B0-80A833B4 000104 0004+00 0/1 0/0 0/0 .rodata          @4616 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4616[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A833B0, &lit_4616);
#pragma pop

/* 80A833B4-80A833C0 000108 000C+00 0/1 0/0 0/0 .rodata          @4617 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4617[12] = {
    0x00, 0x04, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A833B4, &lit_4617);
#pragma pop

/* 80A833C0-80A833C4 000114 0004+00 0/1 0/0 0/0 .rodata          @4618 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4618[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A833C0, &lit_4618);
#pragma pop

/* 80A833C4-80A833D0 000118 000C+00 0/1 0/0 0/0 .rodata          @4619 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4619[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A833C4, &lit_4619);
#pragma pop

/* 80A833D0-80A833D4 000124 0004+00 0/1 0/0 0/0 .rodata          @4620 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4620[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A833D0, &lit_4620);
#pragma pop

/* 80A833D4-80A833E0 000128 000C+00 0/1 0/0 0/0 .rodata          @4621 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4621[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A833D4, &lit_4621);
#pragma pop

/* 80A833E0-80A833E4 000134 0004+00 0/1 0/0 0/0 .rodata          @4622 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4622[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A833E0, &lit_4622);
#pragma pop

/* 80A833E4-80A833F0 000138 000C+00 0/1 0/0 0/0 .rodata          @4623 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4623[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A833E4, &lit_4623);
#pragma pop

/* 80A833F0-80A833F4 000144 0004+00 0/1 0/0 0/0 .rodata          @4624 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4624[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A833F0, &lit_4624);
#pragma pop

/* 80A833F4-80A833F8 000148 0004+00 0/1 0/0 0/0 .rodata          @4625 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4625[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A833F4, &lit_4625);
#pragma pop

/* 80A833F8-80A83444 00014C 004C+00 0/0 0/0 0/0 .rodata          @4626 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4626[76] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A833F8, &lit_4626);
#pragma pop

/* 80A83444-80A83450 000198 000C+00 0/1 0/0 0/0 .rodata          @4630 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4630[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83444, &lit_4630);
#pragma pop

/* 80A83450-80A83454 0001A4 0004+00 0/1 0/0 0/0 .rodata          @4631 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4631[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A83450, &lit_4631);
#pragma pop

/* 80A83454-80A83460 0001A8 000C+00 0/1 0/0 0/0 .rodata          @4632 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4632[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A83454, &lit_4632);
#pragma pop

/* 80A83460-80A8346C 0001B4 000C+00 0/1 0/0 0/0 .rodata          @4633 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4633[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83460, &lit_4633);
#pragma pop

/* 80A8346C-80A83474 0001C0 0008+00 0/1 0/0 0/0 .rodata          @4634 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4634[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A8346C, &lit_4634);
#pragma pop

/* 80A83474-80A83480 0001C8 000C+00 0/1 0/0 0/0 .rodata          @4635 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4635[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83474, &lit_4635);
#pragma pop

/* 80A83480-80A83484 0001D4 0004+00 0/1 0/0 0/0 .rodata          @4636 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4636[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A83480, &lit_4636);
#pragma pop

/* 80A83484-80A83490 0001D8 000C+00 0/1 0/0 0/0 .rodata          @4637 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4637[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83484, &lit_4637);
#pragma pop

/* 80A83490-80A83494 0001E4 0004+00 0/1 0/0 0/0 .rodata          @4638 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4638[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A83490, &lit_4638);
#pragma pop

/* 80A83494-80A834A0 0001E8 000C+00 0/1 0/0 0/0 .rodata          @4639 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4639[12] = {
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A83494, &lit_4639);
#pragma pop

/* 80A834A0-80A834AC 0001F4 000C+00 0/1 0/0 0/0 .rodata          @4640 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4640[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A834A0, &lit_4640);
#pragma pop

/* 80A834AC-80A834B4 000200 0008+00 0/1 0/0 0/0 .rodata          @4641 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4641[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A834AC, &lit_4641);
#pragma pop

/* 80A834B4-80A834C0 000208 000C+00 0/1 0/0 0/0 .rodata          @4642 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4642[12] = {
    0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A834B4, &lit_4642);
#pragma pop

/* 80A834C0-80A834C4 000214 0004+00 0/1 0/0 0/0 .rodata          @4643 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4643[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A834C0, &lit_4643);
#pragma pop

/* 80A834C4-80A834D0 000218 000C+00 0/1 0/0 0/0 .rodata          @4644 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4644[12] = {
    0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A834C4, &lit_4644);
#pragma pop

/* 80A834D0-80A834D4 000224 0004+00 0/1 0/0 0/0 .rodata          @4645 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4645[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A834D0, &lit_4645);
#pragma pop

/* 80A834D4-80A834E0 000228 000C+00 0/1 0/0 0/0 .rodata          @4646 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4646[12] = {
    0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A834D4, &lit_4646);
#pragma pop

/* 80A834E0-80A834EC 000234 000C+00 0/1 0/0 0/0 .rodata          @4647 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4647[12] = {
    0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A834E0, &lit_4647);
#pragma pop

/* 80A834EC-80A834F4 000240 0008+00 0/1 0/0 0/0 .rodata          @4648 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4648[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A834EC, &lit_4648);
#pragma pop

/* 80A834F4-80A83500 000248 000C+00 0/1 0/0 0/0 .rodata          @4649 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4649[12] = {
    0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A834F4, &lit_4649);
#pragma pop

/* 80A83500-80A83504 000254 0004+00 0/1 0/0 0/0 .rodata          @4650 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4650[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A83500, &lit_4650);
#pragma pop

/* 80A83504-80A83510 000258 000C+00 0/1 0/0 0/0 .rodata          @4651 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4651[12] = {
    0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A83504, &lit_4651);
#pragma pop

/* 80A83510-80A8351C 000264 000C+00 0/1 0/0 0/0 .rodata          @4652 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4652[12] = {
    0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83510, &lit_4652);
#pragma pop

/* 80A8351C-80A83524 000270 0008+00 0/1 0/0 0/0 .rodata          @4653 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4653[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A8351C, &lit_4653);
#pragma pop

/* 80A83524-80A83530 000278 000C+00 0/1 0/0 0/0 .rodata          @4654 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4654[12] = {
    0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A83524, &lit_4654);
#pragma pop

/* 80A83530-80A8353C 000284 000C+00 0/1 0/0 0/0 .rodata          @4655 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4655[12] = {
    0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83530, &lit_4655);
#pragma pop

/* 80A8353C-80A83544 000290 0008+00 0/1 0/0 0/0 .rodata          @4656 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4656[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A8353C, &lit_4656);
#pragma pop

/* 80A83544-80A83550 000298 000C+00 0/1 0/0 0/0 .rodata          @4657 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4657[12] = {
    0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83544, &lit_4657);
#pragma pop

/* 80A83550-80A83554 0002A4 0004+00 0/1 0/0 0/0 .rodata          @4658 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4658[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A83550, &lit_4658);
#pragma pop

/* 80A83554-80A83560 0002A8 000C+00 0/1 0/0 0/0 .rodata          @4659 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4659[12] = {
    0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A83554, &lit_4659);
#pragma pop

/* 80A83560-80A8356C 0002B4 000C+00 0/1 0/0 0/0 .rodata          @4660 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4660[12] = {
    0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83560, &lit_4660);
#pragma pop

/* 80A8356C-80A83574 0002C0 0008+00 0/1 0/0 0/0 .rodata          @4661 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4661[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A8356C, &lit_4661);
#pragma pop

/* 80A83574-80A83580 0002C8 000C+00 0/1 0/0 0/0 .rodata          @4662 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4662[12] = {
    0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A83574, &lit_4662);
#pragma pop

/* 80A83580-80A8358C 0002D4 000C+00 0/1 0/0 0/0 .rodata          @4663 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4663[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83580, &lit_4663);
#pragma pop

/* 80A8358C-80A83594 0002E0 0008+00 0/1 0/0 0/0 .rodata          @4664 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4664[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A8358C, &lit_4664);
#pragma pop

/* 80A83594-80A835A0 0002E8 000C+00 0/1 0/0 0/0 .rodata          @4665 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4665[12] = {
    0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A83594, &lit_4665);
#pragma pop

/* 80A835A0-80A835AC 0002F4 000C+00 0/1 0/0 0/0 .rodata          @4666 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4666[12] = {
    0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A835A0, &lit_4666);
#pragma pop

/* 80A835AC-80A835B4 000300 0008+00 0/1 0/0 0/0 .rodata          @4667 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4667[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A835AC, &lit_4667);
#pragma pop

/* 80A835B4-80A835C0 000308 000C+00 0/1 0/0 0/0 .rodata          @4668 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4668[12] = {
    0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A835B4, &lit_4668);
#pragma pop

/* 80A835C0-80A835C4 000314 0004+00 0/1 0/0 0/0 .rodata          @4669 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4669[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A835C0, &lit_4669);
#pragma pop

/* 80A835C4-80A835D0 000318 000C+00 0/1 0/0 0/0 .rodata          @4670 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4670[12] = {
    0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A835C4, &lit_4670);
#pragma pop

/* 80A835D0-80A835DC 000324 000C+00 0/1 0/0 0/0 .rodata          @4671 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4671[12] = {
    0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A835D0, &lit_4671);
#pragma pop

/* 80A835DC-80A835E4 000330 0008+00 0/1 0/0 0/0 .rodata          @4672 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4672[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A835DC, &lit_4672);
#pragma pop

/* 80A835E4-80A835F0 000338 000C+00 0/1 0/0 0/0 .rodata          @4673 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4673[12] = {
    0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A835E4, &lit_4673);
#pragma pop

/* 80A835F0-80A835FC 000344 000C+00 0/1 0/0 0/0 .rodata          @4674 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4674[12] = {
    0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A835F0, &lit_4674);
#pragma pop

/* 80A835FC-80A83604 000350 0008+00 0/1 0/0 0/0 .rodata          @4675 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4675[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A835FC, &lit_4675);
#pragma pop

/* 80A83604-80A83610 000358 000C+00 0/1 0/0 0/0 .rodata          @4676 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4676[12] = {
    0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83604, &lit_4676);
#pragma pop

/* 80A83610-80A83614 000364 0004+00 0/1 0/0 0/0 .rodata          @4677 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4677[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A83610, &lit_4677);
#pragma pop

/* 80A83614-80A83620 000368 000C+00 0/1 0/0 0/0 .rodata          @4678 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4678[12] = {
    0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83614, &lit_4678);
#pragma pop

/* 80A83620-80A83624 000374 0004+00 0/1 0/0 0/0 .rodata          @4679 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4679[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A83620, &lit_4679);
#pragma pop

/* 80A83624-80A83630 000378 000C+00 0/1 0/0 0/0 .rodata          @4680 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4680[12] = {
    0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A83624, &lit_4680);
#pragma pop

/* 80A83630-80A8363C 000384 000C+00 0/1 0/0 0/0 .rodata          @4681 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4681[12] = {
    0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83630, &lit_4681);
#pragma pop

/* 80A8363C-80A83644 000390 0008+00 0/1 0/0 0/0 .rodata          @4682 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4682[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A8363C, &lit_4682);
#pragma pop

/* 80A83644-80A83650 000398 000C+00 0/1 0/0 0/0 .rodata          @4683 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4683[12] = {
    0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A83644, &lit_4683);
#pragma pop

/* 80A83650-80A8365C 0003A4 000C+00 0/1 0/0 0/0 .rodata          @4684 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4684[12] = {
    0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83650, &lit_4684);
#pragma pop

/* 80A8365C-80A83664 0003B0 0008+00 0/1 0/0 0/0 .rodata          @4685 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4685[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A8365C, &lit_4685);
#pragma pop

/* 80A83664-80A83670 0003B8 000C+00 0/1 0/0 0/0 .rodata          @4686 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4686[12] = {
    0x00, 0x16, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A83664, &lit_4686);
#pragma pop

/* 80A83670-80A83674 0003C4 0004+00 0/1 0/0 0/0 .rodata          @4687 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4687[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A83670, &lit_4687);
#pragma pop

/* 80A83674-80A83680 0003C8 000C+00 0/1 0/0 0/0 .rodata          @4688 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4688[12] = {
    0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A83674, &lit_4688);
#pragma pop

/* 80A83680-80A8368C 0003D4 000C+00 0/1 0/0 0/0 .rodata          @4689 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4689[12] = {
    0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83680, &lit_4689);
#pragma pop

/* 80A8368C-80A83694 0003E0 0008+00 0/1 0/0 0/0 .rodata          @4690 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4690[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A8368C, &lit_4690);
#pragma pop

/* 80A83694-80A836A0 0003E8 000C+00 0/1 0/0 0/0 .rodata          @4691 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4691[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A83694, &lit_4691);
#pragma pop

/* 80A836A0-80A836A8 0003F4 0008+00 0/1 0/0 0/0 .rodata          @4692 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4692[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A836A0, &lit_4692);
#pragma pop

/* 80A836A8-80A836B4 0003FC 000C+00 0/1 0/0 0/0 .rodata          @4693 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4693[12] = {
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A836A8, &lit_4693);
#pragma pop

/* 80A836B4-80A836B8 000408 0004+00 0/1 0/0 0/0 .rodata          @4694 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4694[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A836B4, &lit_4694);
#pragma pop

/* 80A836B8-80A836C4 00040C 000C+00 0/1 0/0 0/0 .rodata          @4695 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4695[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A836B8, &lit_4695);
#pragma pop

/* 80A836C4-80A836C8 000418 0004+00 0/1 0/0 0/0 .rodata          @4696 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4696[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A836C4, &lit_4696);
#pragma pop

/* 80A836C8-80A836D4 00041C 000C+00 0/1 0/0 0/0 .rodata          @4697 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4697[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A836C8, &lit_4697);
#pragma pop

/* 80A836D4-80A836D8 000428 0004+00 0/1 0/0 0/0 .rodata          @4698 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4698[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A836D4, &lit_4698);
#pragma pop

/* 80A836D8-80A83784 00042C 00AC+00 0/0 0/0 0/0 .rodata          @4699 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4699[172] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A836D8, &lit_4699);
#pragma pop

/* 80A83784-80A83790 0004D8 000C+00 0/1 0/0 0/0 .rodata          @4735 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4735[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83784, &lit_4735);
#pragma pop

/* 80A83790-80A83794 0004E4 0004+00 3/11 0/0 0/0 .rodata          @4960 */
SECTION_RODATA static f32 const lit_4960 = -1.0f;
COMPILER_STRIP_GATE(0x80A83790, &lit_4960);

/* 80A83794-80A83798 0004E8 0004+00 0/2 0/0 0/0 .rodata          @4961 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4961 = 135.0f;
COMPILER_STRIP_GATE(0x80A83794, &lit_4961);
#pragma pop

/* 80A7D934-80A7DD94 0018B4 0460+00 1/0 0/0 0/0 .text            wait_type0__11daNpcMoiR_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::wait_type0(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/wait_type0__11daNpcMoiR_cFPv.s"
}
#pragma pop

/* 80A7DD94-80A7DDD8 001D14 0044+00 1/0 0/0 0/0 .text            setMotion__11daNpcMoiR_cFifi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::setMotion(int param_0, f32 param_1, int param_2) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/setMotion__11daNpcMoiR_cFifi.s"
}
#pragma pop

/* 80A7DDD8-80A7DE04 001D58 002C+00 1/0 0/0 0/0 .text            setExpression__11daNpcMoiR_cFif */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::setExpression(int param_0, f32 param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/setExpression__11daNpcMoiR_cFif.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A83798-80A8379C 0004EC 0004+00 0/6 0/0 0/0 .rodata          @5160 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5160 = 0x3BB40000;
COMPILER_STRIP_GATE(0x80A83798, &lit_5160);
#pragma pop

/* 80A8379C-80A837A0 0004F0 0004+00 0/6 0/0 0/0 .rodata          @5161 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5161 = 8.0f;
COMPILER_STRIP_GATE(0x80A8379C, &lit_5161);
#pragma pop

/* 80A837A0-80A837A4 0004F4 0004+00 0/7 0/0 0/0 .rodata          @5162 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5162 = 15.0f;
COMPILER_STRIP_GATE(0x80A837A0, &lit_5162);
#pragma pop

/* 80A837A4-80A837AC 0004F8 0008+00 0/1 0/0 0/0 .rodata          @5163 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5163[8] = {
    0x40, 0x72, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A837A4, &lit_5163);
#pragma pop

/* 80A837AC-80A837B4 000500 0008+00 0/2 0/0 0/0 .rodata          @5164 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5164[8] = {
    0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A837AC, &lit_5164);
#pragma pop

/* 80A837B4-80A837BC 000508 0008+00 1/7 0/0 0/0 .rodata          @5166 */
SECTION_RODATA static u8 const lit_5166[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A837B4, &lit_5166);

/* 80A7DE04-80A7E668 001D84 0864+00 2/0 0/0 0/0 .text            wait_type1__11daNpcMoiR_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::wait_type1(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/wait_type1__11daNpcMoiR_cFPv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A837BC-80A837C0 000510 0004+00 0/1 0/0 0/0 .rodata          @5201 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5201 = 0xC57F0160;
COMPILER_STRIP_GATE(0x80A837BC, &lit_5201);
#pragma pop

/* 80A837C0-80A837C4 000514 0004+00 0/1 0/0 0/0 .rodata          @5202 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5202 = 0x45FCF4EE;
COMPILER_STRIP_GATE(0x80A837C0, &lit_5202);
#pragma pop

/* 80A7E668-80A7E8C0 0025E8 0258+00 1/0 0/0 0/0 .text            wait_type2__11daNpcMoiR_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::wait_type2(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/wait_type2__11daNpcMoiR_cFPv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A83840-80A83840 000594 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A83899 = "DEFAULT_GETITEM";
#pragma pop

/* 80A7E8C0-80A7EFBC 002840 06FC+00 2/0 0/0 0/0 .text            talk__11daNpcMoiR_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::talk(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/talk__11daNpcMoiR_cFPv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A837C4-80A837D4 000518 0010+00 1/1 0/0 0/0 .rodata          @5306 */
SECTION_RODATA static u8 const lit_5306[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A837C4, &lit_5306);

/* 80A7EFBC-80A7F40C 002F3C 0450+00 2/0 0/0 0/0 .text            multiTalk__11daNpcMoiR_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::multiTalk(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/multiTalk__11daNpcMoiR_cFPv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A837D4-80A837D8 000528 0004+00 0/1 0/0 0/0 .rodata          @5440 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5440 = 11.0f;
COMPILER_STRIP_GATE(0x80A837D4, &lit_5440);
#pragma pop

/* 80A837D8-80A837DC 00052C 0004+00 0/1 0/0 0/0 .rodata          @5441 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5441 = 36.0f;
COMPILER_STRIP_GATE(0x80A837D8, &lit_5441);
#pragma pop

/* 80A837DC-80A837E4 000530 0008+00 0/1 0/0 0/0 .rodata          @5442 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5442[8] = {
    0x40, 0x85, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A837DC, &lit_5442);
#pragma pop

/* 80A7F40C-80A7F9AC 00338C 05A0+00 2/0 0/0 0/0 .text            fight__11daNpcMoiR_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::fight(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/fight__11daNpcMoiR_cFPv.s"
}
#pragma pop

/* 80A7F9AC-80A7FEE8 00392C 053C+00 2/0 0/0 0/0 .text            demo__11daNpcMoiR_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::demo(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/demo__11daNpcMoiR_cFPv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A837E4-80A837E8 000538 0004+00 0/1 0/0 0/0 .rodata          @5586 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5586 = 0xC5C36B19;
COMPILER_STRIP_GATE(0x80A837E4, &lit_5586);
#pragma pop

/* 80A837E8-80A837EC 00053C 0004+00 0/1 0/0 0/0 .rodata          @5587 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5587 = 0x45C35E15;
COMPILER_STRIP_GATE(0x80A837E8, &lit_5587);
#pragma pop

/* 80A837EC-80A837F4 000540 0004+04 0/1 0/0 0/0 .rodata          @5588 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5588[1 + 1 /* padding */] = {
    12.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80A837EC, &lit_5588);
#pragma pop

/* 80A837F4-80A837FC 000548 0008+00 0/2 0/0 0/0 .rodata          @5589 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5589[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A837F4, &lit_5589);
#pragma pop

/* 80A837FC-80A83804 000550 0008+00 0/2 0/0 0/0 .rodata          @5590 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5590[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A837FC, &lit_5590);
#pragma pop

/* 80A83804-80A8380C 000558 0008+00 0/2 0/0 0/0 .rodata          @5591 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5591[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A83804, &lit_5591);
#pragma pop

/* 80A7FEE8-80A802C4 003E68 03DC+00 1/0 0/0 0/0 .text            leave__11daNpcMoiR_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::leave(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/leave__11daNpcMoiR_cFPv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A83840-80A83840 000594 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A838A9 = "prm";
#pragma pop

/* 80A802C4-80A803A0 004244 00DC+00 1/0 0/0 0/0 .text            EvCut_Introduction__11daNpcMoiR_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::EvCut_Introduction(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/EvCut_Introduction__11daNpcMoiR_cFi.s"
}
#pragma pop

/* 80A803A0-80A8081C 004320 047C+00 1/0 0/0 0/0 .text            EvCut_Appear__11daNpcMoiR_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::EvCut_Appear(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/EvCut_Appear__11daNpcMoiR_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A8380C-80A83810 000560 0004+00 0/1 0/0 0/0 .rodata          @5816 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5816 = 25.0f;
COMPILER_STRIP_GATE(0x80A8380C, &lit_5816);
#pragma pop

/* 80A8081C-80A81044 00479C 0828+00 1/0 0/0 0/0 .text            EvCut_Appear2__11daNpcMoiR_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::EvCut_Appear2(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/EvCut_Appear2__11daNpcMoiR_cFi.s"
}
#pragma pop

/* 80A81044-80A81064 004FC4 0020+00 1/0 0/0 0/0 .text            daNpcMoiR_Create__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpcMoiR_Create(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/daNpcMoiR_Create__FPv.s"
}
#pragma pop

/* 80A81064-80A81084 004FE4 0020+00 1/0 0/0 0/0 .text            daNpcMoiR_Delete__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpcMoiR_Delete(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/daNpcMoiR_Delete__FPv.s"
}
#pragma pop

/* 80A81084-80A810A4 005004 0020+00 1/0 0/0 0/0 .text            daNpcMoiR_Execute__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpcMoiR_Execute(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/daNpcMoiR_Execute__FPv.s"
}
#pragma pop

/* 80A810A4-80A810C4 005024 0020+00 1/0 0/0 0/0 .text            daNpcMoiR_Draw__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpcMoiR_Draw(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/daNpcMoiR_Draw__FPv.s"
}
#pragma pop

/* 80A810C4-80A810CC 005044 0008+00 1/0 0/0 0/0 .text            daNpcMoiR_IsDelete__FPv */
static bool daNpcMoiR_IsDelete(void* param_0) {
    return true;
}

/* 80A810CC-80A810FC 00504C 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" asm void calc__11J3DTexNoAnmCFPUs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/calc__11J3DTexNoAnmCFPUs.s"
}
#pragma pop

/* 80A810FC-80A81274 00507C 0178+00 1/0 0/0 0/0 .text            setParam__11daNpcMoiR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::setParam() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/setParam__11daNpcMoiR_cFv.s"
}
#pragma pop

/* 80A81274-80A815D4 0051F4 0360+00 1/0 0/0 0/0 .text            main__11daNpcMoiR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::main() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/main__11daNpcMoiR_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A83810-80A83814 000564 0004+00 0/1 0/0 0/0 .rodata          @6020 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6020 = 14.0f;
COMPILER_STRIP_GATE(0x80A83810, &lit_6020);
#pragma pop

/* 80A83814-80A83818 000568 0004+00 0/1 0/0 0/0 .rodata          @6021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6021 = 24.0f;
COMPILER_STRIP_GATE(0x80A83814, &lit_6021);
#pragma pop

/* 80A83818-80A8381C 00056C 0004+00 0/1 0/0 0/0 .rodata          @6022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6022 = 33.0f;
COMPILER_STRIP_GATE(0x80A83818, &lit_6022);
#pragma pop

/* 80A815D4-80A818B4 005554 02E0+00 1/1 0/0 0/0 .text            checkHeadGear__11daNpcMoiR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::checkHeadGear() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/checkHeadGear__11daNpcMoiR_cFv.s"
}
#pragma pop

/* 80A818B4-80A8210C 005834 0858+00 1/1 0/0 0/0 .text            playMotion__11daNpcMoiR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::playMotion() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/playMotion__11daNpcMoiR_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A8381C-80A83820 000570 0004+00 1/1 0/0 0/0 .rodata          @6069 */
SECTION_RODATA static f32 const lit_6069 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A8381C, &lit_6069);

/* 80A8210C-80A821E0 00608C 00D4+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpcMoiR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::ctrlBtk() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/ctrlBtk__11daNpcMoiR_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A83820-80A83824 000574 0004+00 0/1 0/0 0/0 .rodata          @6177 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6177 = -10.0f;
COMPILER_STRIP_GATE(0x80A83820, &lit_6177);
#pragma pop

/* 80A83824-80A83828 000578 0004+00 0/1 0/0 0/0 .rodata          @6178 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6178 = -15.0f;
COMPILER_STRIP_GATE(0x80A83824, &lit_6178);
#pragma pop

/* 80A83828-80A8382C 00057C 0004+00 0/1 0/0 0/0 .rodata          @6179 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6179 = -3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80A83828, &lit_6179);
#pragma pop

/* 80A8382C-80A83830 000580 0004+00 0/1 0/0 0/0 .rodata          @6180 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6180 = 10.0f;
COMPILER_STRIP_GATE(0x80A8382C, &lit_6180);
#pragma pop

/* 80A83830-80A83834 000584 0004+00 0/1 0/0 0/0 .rodata          @6181 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6181 = 2.0f;
COMPILER_STRIP_GATE(0x80A83830, &lit_6181);
#pragma pop

/* 80A83834-80A83838 000588 0004+00 0/2 0/0 0/0 .rodata          @6182 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6182 = 40.0f;
COMPILER_STRIP_GATE(0x80A83834, &lit_6182);
#pragma pop

/* 80A821E0-80A825A0 006160 03C0+00 1/0 0/0 0/0 .text            setAttnPos__11daNpcMoiR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::setAttnPos() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/setAttnPos__11daNpcMoiR_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A83838-80A8383C 00058C 0004+00 0/1 0/0 0/0 .rodata          @6230 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6230 = -80.0f;
COMPILER_STRIP_GATE(0x80A83838, &lit_6230);
#pragma pop

/* 80A8383C-80A83840 000590 0004+00 0/1 0/0 0/0 .rodata          @6231 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6231 = 80.0f;
COMPILER_STRIP_GATE(0x80A8383C, &lit_6231);
#pragma pop

/* 80A825A0-80A82878 006520 02D8+00 1/1 0/0 0/0 .text            lookat__11daNpcMoiR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::lookat() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/lookat__11daNpcMoiR_cFv.s"
}
#pragma pop

/* 80A82878-80A82900 0067F8 0088+00 1/0 0/0 0/0 .text            drawOtherMdls__11daNpcMoiR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcMoiR_c::drawOtherMdls() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/drawOtherMdls__11daNpcMoiR_cFv.s"
}
#pragma pop

/* 80A82900-80A82908 006880 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpcMoiR_cFv */
bool daNpcMoiR_c::drawDbgInfo() {
    return false;
}

/* 80A82908-80A82950 006888 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" asm void __dt__18daNpcF_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__dt__18daNpcF_ActorMngr_cFv.s"
}
#pragma pop

/* 80A82950-80A8298C 0068D0 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" asm void __ct__18daNpcF_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__ct__18daNpcF_ActorMngr_cFv.s"
}
#pragma pop

/* 80A8298C-80A82A5C 00690C 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" asm void __dt__15daNpcF_Lookat_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__dt__15daNpcF_Lookat_cFv.s"
}
#pragma pop

/* 80A82A5C-80A82A98 0069DC 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__dt__5csXyzFv.s"
}
#pragma pop

/* 80A82A98-80A82A9C 006A18 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" asm void __ct__5csXyzFv() {
    /* empty function */
}

/* 80A82A9C-80A82AD8 006A1C 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__dt__4cXyzFv.s"
}
#pragma pop

/* 80A82AD8-80A82ADC 006A58 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" asm void __ct__4cXyzFv() {
    /* empty function */
}

/* 80A82ADC-80A82D28 006A5C 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_c::~daNpcF_c() {
extern "C" asm void __dt__8daNpcF_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__dt__8daNpcF_cFv.s"
}
#pragma pop

/* 80A82D28-80A82F18 006CA8 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_c::daNpcF_c() {
extern "C" asm void __ct__8daNpcF_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__ct__8daNpcF_cFv.s"
}
#pragma pop

/* 80A82F18-80A82F88 006E98 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80A82F88-80A82FE4 006F08 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80A82FE4-80A83054 006F64 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80A83054-80A8309C 006FD4 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80A8309C-80A830A0 00701C 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__8daNpcF_cFv */
// void daNpcF_c::adjustShapeAngle() {
extern "C" asm void adjustShapeAngle__8daNpcF_cFv() {
    /* empty function */
}

/* 80A830A0-80A830A4 007020 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" asm void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80A830A4-80A830EC 007024 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80A830EC-80A83108 00706C 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80A830EC(void* _this, int* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/func_80A830EC.s"
}
#pragma pop

/* 80A83108-80A83184 007088 007C+00 2/2 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80A83108(void* _this, int param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/func_80A83108.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A83D60-80A83D6C 0004B0 000C+00 2/2 0/0 0/0 .data            __vt__17daNpcMoiR_Param_c */
SECTION_DATA extern void* __vt__17daNpcMoiR_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpcMoiR_Param_cFv,
};

/* 80A83D78-80A83D84 000008 000C+00 1/1 0/0 0/0 .bss             @3854 */
static u8 lit_3854[12];

/* 80A83D84-80A83D88 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A83184-80A83240 007104 00BC+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_moir_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_npc_moir_cpp() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__sinit_d_a_npc_moir_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A83184, __sinit_d_a_npc_moir_cpp);
#pragma pop

/* 80A83240-80A83288 0071C0 0048+00 2/1 0/0 0/0 .text            __dt__17daNpcMoiR_Param_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpcMoiR_Param_c::~daNpcMoiR_Param_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/__dt__17daNpcMoiR_Param_cFv.s"
}
#pragma pop

/* 80A83288-80A83290 007208 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80A83288() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/func_80A83288.s"
}
#pragma pop

/* 80A83290-80A83298 007210 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80A83290() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_moir/d_a_npc_moir/func_80A83290.s"
}
#pragma pop

/* 80A83840-80A83840 000594 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
