/**
 * @file d_a_npc_rafrel.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_rafrel.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__13daNpcRafrel_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__13daNpcRafrel_cFv();
extern "C" void Create__13daNpcRafrel_cFv();
extern "C" void CreateHeap__13daNpcRafrel_cFv();
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
extern "C" void Delete__13daNpcRafrel_cFv();
extern "C" void Execute__13daNpcRafrel_cFv();
extern "C" void Draw__13daNpcRafrel_cFv();
extern "C" void ctrlJoint__13daNpcRafrel_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__13daNpcRafrel_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__13daNpcRafrel_cFP8J3DJointi();
extern "C" void setExpressionAnm__13daNpcRafrel_cFib();
extern "C" void setExpressionBtp__13daNpcRafrel_cFi();
extern "C" void setMotionAnm__13daNpcRafrel_cFif();
extern "C" void reset__13daNpcRafrel_cFv();
extern "C" void setWaitAction__13daNpcRafrel_cFv();
extern "C" void isSneaking__13daNpcRafrel_cFv();
extern "C" void wait_type01__13daNpcRafrel_cFPv();
extern "C" void setMotion__13daNpcRafrel_cFifi();
extern "C" void setExpression__13daNpcRafrel_cFif();
extern "C" void wait_type2__13daNpcRafrel_cFPv();
extern "C" void talk__13daNpcRafrel_cFPv();
extern "C" void demo__13daNpcRafrel_cFPv();
extern "C" void leave__13daNpcRafrel_cFPv();
extern "C" void EvCut_Introduction__13daNpcRafrel_cFi();
extern "C" void EvCut_Meeting__13daNpcRafrel_cFi();
extern "C" void EvCut_Appear__13daNpcRafrel_cFi();
extern "C" void EvCut_WiretapSponsor__13daNpcRafrel_cFi();
extern "C" void EvCut_WiretapEntrant__13daNpcRafrel_cFi();
extern "C" static void daNpcRafrel_Create__FPv();
extern "C" static void daNpcRafrel_Delete__FPv();
extern "C" static void daNpcRafrel_Execute__FPv();
extern "C" static void daNpcRafrel_Draw__FPv();
extern "C" static bool daNpcRafrel_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void setParam__13daNpcRafrel_cFv();
extern "C" void main__13daNpcRafrel_cFv();
extern "C" void playMotion__13daNpcRafrel_cFv();
extern "C" void ctrlBtk__13daNpcRafrel_cFv();
extern "C" void setAttnPos__13daNpcRafrel_cFv();
extern "C" void lookat__13daNpcRafrel_cFv();
extern "C" bool drawDbgInfo__13daNpcRafrel_cFv();
extern "C" void func_80ABF07C(void* _this, s16);
extern "C" void __sinit_d_a_npc_rafrel_cpp();
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
extern "C" void __dt__19daNpcRafrel_Param_cFv();
extern "C" static void func_80ABF9BC();
extern "C" static void func_80ABF9C4();
extern "C" u8 const m__19daNpcRafrel_Param_c[116];
extern "C" extern char const* const d_a_npc_rafrel__stringBase0;
extern "C" u8 mEvtSeqList__13daNpcRafrel_c[84];

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
extern "C" void fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
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
extern "C" void convPId__14dEvt_control_cFUi();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMyNowCutName__16dEvent_manager_cFi();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
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
extern "C" void daNpcF_chkTmpBit__FUl();
extern "C" void daNpcF_offTmpBit__FUl();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
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
extern "C" void func_802807E0();
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
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80ABFDBC-80ABFDBC 0003DC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80ABFDBC = "Rafrel";
SECTION_DEAD static char const* const stringBase_80ABFDC3 = "Rafrel1";
SECTION_DEAD static char const* const stringBase_80ABFDCB = "Rafrel2";
SECTION_DEAD static char const* const stringBase_80ABFDD3 = "Rafrel3";
SECTION_DEAD static char const* const stringBase_80ABFDDB = "";
SECTION_DEAD static char const* const stringBase_80ABFDDC = "THE_INTRODUCTION";
SECTION_DEAD static char const* const stringBase_80ABFDED = "RESIST_MEETING";
SECTION_DEAD static char const* const stringBase_80ABFDFC = "RAFREL_APPEAR";
SECTION_DEAD static char const* const stringBase_80ABFE0A = "RESIST_WIRETAP_ASH";
SECTION_DEAD static char const* const stringBase_80ABFE1D = "RESIST_WIRETAP_SHAD";
SECTION_DEAD static char const* const stringBase_80ABFE31 = "RESIST_WIRETAP_RAFREL";
#pragma pop

/* 80ABFEA0-80ABFFFC 000020 015C+00 1/2 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[348] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x12,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
};

/* 80ABFFFC-80AC002C 00017C 0030+00 1/1 0/0 0/0 .data            l_btpGetParamList */
SECTION_DATA static u8 l_btpGetParamList[48] = {
    0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};

/* 80AC002C-80AC0068 0001AC 003C+00 1/2 0/0 0/0 .data            l_btkGetParamList */
SECTION_DATA static u8 l_btkGetParamList[60] = {
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
};

/* 80AC0068-80AC0074 0001E8 000C+00 1/0 0/0 0/0 .data            l_loadRes_RAFREL0 */
SECTION_DATA static u8 l_loadRes_RAFREL0[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80AC0074-80AC0080 0001F4 000C+00 1/0 0/0 0/0 .data            l_loadRes_RAFREL1 */
SECTION_DATA static u8 l_loadRes_RAFREL1[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80AC0080-80AC008C 000200 000C+00 1/0 0/0 0/0 .data            l_loadRes_RAFREL2 */
SECTION_DATA static u8 l_loadRes_RAFREL2[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80AC008C-80AC0098 -00001 000C+00 2/2 0/0 0/0 .data            l_loadRes_list */
SECTION_DATA static void* l_loadRes_list[3] = {
    (void*)&l_loadRes_RAFREL0,
    (void*)&l_loadRes_RAFREL1,
    (void*)&l_loadRes_RAFREL2,
};

/* 80AC0098-80AC00A8 -00001 0010+00 6/8 0/0 0/0 .data            l_arcNames */
SECTION_DATA static void* l_arcNames[4] = {
    (void*)&d_a_npc_rafrel__stringBase0,
    (void*)(((char*)&d_a_npc_rafrel__stringBase0) + 0x7),
    (void*)(((char*)&d_a_npc_rafrel__stringBase0) + 0xF),
    (void*)(((char*)&d_a_npc_rafrel__stringBase0) + 0x17),
};

/* 80AC00A8-80AC00C4 -00001 001C+00 0/2 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtNames[7] = {
    (void*)(((char*)&d_a_npc_rafrel__stringBase0) + 0x1F),
    (void*)(((char*)&d_a_npc_rafrel__stringBase0) + 0x20),
    (void*)(((char*)&d_a_npc_rafrel__stringBase0) + 0x31),
    (void*)(((char*)&d_a_npc_rafrel__stringBase0) + 0x40),
    (void*)(((char*)&d_a_npc_rafrel__stringBase0) + 0x4E),
    (void*)(((char*)&d_a_npc_rafrel__stringBase0) + 0x61),
    (void*)(((char*)&d_a_npc_rafrel__stringBase0) + 0x75),
};
#pragma pop

/* 80AC00C4-80AC00C8 -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)&d_a_npc_rafrel__stringBase0;
#pragma pop

/* 80AC00C8-80AC00D4 -00001 000C+00 0/1 0/0 0/0 .data            @3820 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3820[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_Introduction__13daNpcRafrel_cFi,
};
#pragma pop

/* 80AC00D4-80AC00E0 -00001 000C+00 0/1 0/0 0/0 .data            @3821 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3821[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_Meeting__13daNpcRafrel_cFi,
};
#pragma pop

/* 80AC00E0-80AC00EC -00001 000C+00 0/1 0/0 0/0 .data            @3822 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3822[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_Appear__13daNpcRafrel_cFi,
};
#pragma pop

/* 80AC00EC-80AC00F8 -00001 000C+00 0/1 0/0 0/0 .data            @3823 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3823[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_WiretapEntrant__13daNpcRafrel_cFi,
};
#pragma pop

/* 80AC00F8-80AC0104 -00001 000C+00 0/1 0/0 0/0 .data            @3824 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3824[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_WiretapEntrant__13daNpcRafrel_cFi,
};
#pragma pop

/* 80AC0104-80AC0110 -00001 000C+00 0/1 0/0 0/0 .data            @3825 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3825[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_WiretapSponsor__13daNpcRafrel_cFi,
};
#pragma pop

/* 80AC0110-80AC0164 000290 0054+00 0/2 0/0 0/0 .data            mEvtSeqList__13daNpcRafrel_c */
#pragma push
#pragma force_active on
SECTION_DATA u8 daNpcRafrel_c::mEvtSeqList[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80AC0164-80AC0184 -00001 0020+00 1/1 0/0 0/0 .data            @4544 */
SECTION_DATA static void* lit_4544[8] = {
    (void*)(((char*)setExpressionAnm__13daNpcRafrel_cFib) + 0xA0),
    (void*)(((char*)setExpressionAnm__13daNpcRafrel_cFib) + 0xBC),
    (void*)(((char*)setExpressionAnm__13daNpcRafrel_cFib) + 0xD8),
    (void*)(((char*)setExpressionAnm__13daNpcRafrel_cFib) + 0x110),
    (void*)(((char*)setExpressionAnm__13daNpcRafrel_cFib) + 0x148),
    (void*)(((char*)setExpressionAnm__13daNpcRafrel_cFib) + 0xF4),
    (void*)(((char*)setExpressionAnm__13daNpcRafrel_cFib) + 0x12C),
    (void*)(((char*)setExpressionAnm__13daNpcRafrel_cFib) + 0x164),
};

/* 80AC0184-80AC0190 -00001 000C+00 0/3 0/0 0/0 .data            @4760 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4760[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_type01__13daNpcRafrel_cFPv,
};
#pragma pop

/* 80AC0190-80AC019C -00001 000C+00 0/3 0/0 0/0 .data            @4763 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4763[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_type01__13daNpcRafrel_cFPv,
};
#pragma pop

/* 80AC019C-80AC01A8 -00001 000C+00 0/3 0/0 0/0 .data            @4766 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4766[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_type2__13daNpcRafrel_cFPv,
};
#pragma pop

/* 80AC01A8-80AC01B4 -00001 000C+00 0/1 0/0 0/0 .data            @4893 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4893[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpcRafrel_cFPv,
};
#pragma pop

/* 80AC01B4-80AC01C0 -00001 000C+00 0/1 0/0 0/0 .data            @4897 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4897[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpcRafrel_cFPv,
};
#pragma pop

/* 80AC01C0-80AC01CC -00001 000C+00 0/1 0/0 0/0 .data            @4902 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4902[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__13daNpcRafrel_cFPv,
};
#pragma pop

/* 80AC01CC-80AC01D8 -00001 000C+00 1/1 0/0 0/0 .data            @5117 */
SECTION_DATA static void* lit_5117[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)leave__13daNpcRafrel_cFPv,
};

/* 80AC01D8-80AC01F8 -00001 0020+00 1/0 0/0 0/0 .data            daNpcRafrel_MethodTable */
static actor_method_class daNpcRafrel_MethodTable = {
    (process_method_func)daNpcRafrel_Create__FPv,
    (process_method_func)daNpcRafrel_Delete__FPv,
    (process_method_func)daNpcRafrel_Execute__FPv,
    (process_method_func)daNpcRafrel_IsDelete__FPv,
    (process_method_func)daNpcRafrel_Draw__FPv,
};

/* 80AC01F8-80AC0228 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_RAFREL */
extern actor_process_profile_definition g_profile_NPC_RAFREL = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_RAFREL,          // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpcRafrel_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  414,                      // mPriority
  &daNpcRafrel_MethodTable, // sub_method
  0x00040100,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80AC0228-80AC0234 0003A8 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80AC0234-80AC027C 0003B4 0048+00 2/2 0/0 0/0 .data            __vt__13daNpcRafrel_c */
SECTION_DATA extern void* __vt__13daNpcRafrel_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcRafrel_cFv,
    (void*)setParam__13daNpcRafrel_cFv,
    (void*)main__13daNpcRafrel_cFv,
    (void*)ctrlBtk__13daNpcRafrel_cFv,
    (void*)adjustShapeAngle__8daNpcF_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__13daNpcRafrel_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__13daNpcRafrel_cFib,
    (void*)setExpressionBtp__13daNpcRafrel_cFi,
    (void*)setExpression__13daNpcRafrel_cFif,
    (void*)setMotionAnm__13daNpcRafrel_cFif,
    (void*)setMotion__13daNpcRafrel_cFifi,
    (void*)drawDbgInfo__13daNpcRafrel_cFv,
    (void*)drawOtherMdls__8daNpcF_cFv,
};

/* 80AC027C-80AC0288 0003FC 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AC0288-80AC02AC 000408 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80ABF9C4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80ABF9BC,
};

/* 80AC02AC-80AC02B8 00042C 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AC02B8-80AC02C4 000438 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AC02C4-80AC02D0 000444 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AC02D0-80AC02DC 000450 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80AC02DC-80AC02E8 00045C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80AC02E8-80AC02F4 000468 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AC02F4-80AC0300 000474 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 80AB962C-80AB97B0 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__13daNpcRafrel_cFv */
daNpcRafrel_c::daNpcRafrel_c() {
    // NONMATCHING
}

/* 80AB97B0-80AB97F8 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80AB97F8-80AB9840 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80AB9840-80AB9A40 000300 0200+00 1/0 0/0 0/0 .text            __dt__13daNpcRafrel_cFv */
daNpcRafrel_c::~daNpcRafrel_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ABF9E0-80ABFA54 000000 0074+00 13/13 0/0 0/0 .rodata          m__19daNpcRafrel_Param_c */
SECTION_RODATA u8 const daNpcRafrel_Param_c::m[116] = {
    0x42, 0x0C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00,
    0x00, 0x43, 0x7F, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x20,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1,
    0x20, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00,
    0xC2, 0x34, 0x00, 0x00, 0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00,
    0x06, 0x00, 0x04, 0x00, 0x06, 0x42, 0xA0, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96,
    0x00, 0x00, 0xC3, 0x96, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x43, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABF9E0, &daNpcRafrel_Param_c::m);

/* 80ABFA54-80ABFA58 000074 0004+00 0/1 0/0 0/0 .rodata          @4245 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4245 = -160.0f;
COMPILER_STRIP_GATE(0x80ABFA54, &lit_4245);
#pragma pop

/* 80ABFA58-80ABFA5C 000078 0004+00 0/1 0/0 0/0 .rodata          @4246 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4246 = -50.0f;
COMPILER_STRIP_GATE(0x80ABFA58, &lit_4246);
#pragma pop

/* 80ABFA5C-80ABFA60 00007C 0004+00 0/2 0/0 0/0 .rodata          @4247 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4247 = 160.0f;
COMPILER_STRIP_GATE(0x80ABFA5C, &lit_4247);
#pragma pop

/* 80ABFA60-80ABFA64 000080 0004+00 0/2 0/0 0/0 .rodata          @4248 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4248 = 220.0f;
COMPILER_STRIP_GATE(0x80ABFA60, &lit_4248);
#pragma pop

/* 80ABFDBC-80ABFDBC 0003DC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80ABFE47 = "R_SP116";
SECTION_DEAD static char const* const stringBase_80ABFE4F = "F_SP115";
SECTION_DEAD static char const* const stringBase_80ABFE57 = "D_MN09";
#pragma pop

/* 80AB9A40-80AB9E3C 000500 03FC+00 1/1 0/0 0/0 .text            Create__13daNpcRafrel_cFv */
void daNpcRafrel_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ABFA64-80ABFA68 000084 0004+00 4/5 0/0 0/0 .rodata          @4320 */
SECTION_RODATA static f32 const lit_4320 = 1.0f;
COMPILER_STRIP_GATE(0x80ABFA64, &lit_4320);

/* 80ABFA68-80ABFA6C 000088 0004+00 2/9 0/0 0/0 .rodata          @4321 */
SECTION_RODATA static u8 const lit_4321[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ABFA68, &lit_4321);

/* 80AB9E3C-80ABA1C4 0008FC 0388+00 1/1 0/0 0/0 .text            CreateHeap__13daNpcRafrel_cFv */
void daNpcRafrel_c::CreateHeap() {
    // NONMATCHING
}

/* 80ABA1C4-80ABA200 000C84 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80ABA200-80ABA218 000CC0 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80ABA218-80ABA254 000CD8 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80ABA254-80ABA26C 000D14 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80ABA26C-80ABA2B4 000D2C 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80ABA2B4-80ABA2D8 000D74 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80ABA2D8-80ABA314 000D98 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80ABA314-80ABA32C 000DD4 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80ABA32C-80ABA368 000DEC 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80ABA368-80ABA380 000E28 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80ABA380-80ABA3B4 000E40 0034+00 1/1 0/0 0/0 .text            Delete__13daNpcRafrel_cFv */
void daNpcRafrel_c::Delete() {
    // NONMATCHING
}

/* 80ABA3B4-80ABA3D8 000E74 0024+00 2/2 0/0 0/0 .text            Execute__13daNpcRafrel_cFv */
void daNpcRafrel_c::Execute() {
    // NONMATCHING
}

/* 80ABA3D8-80ABA4A8 000E98 00D0+00 1/1 0/0 0/0 .text            Draw__13daNpcRafrel_cFv */
void daNpcRafrel_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ABFA6C-80ABFA78 00008C 000C+00 1/1 0/0 0/0 .rodata          @4390 */
SECTION_RODATA static u8 const lit_4390[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80ABFA6C, &lit_4390);

/* 80ABA4A8-80ABA678 000F68 01D0+00 1/1 0/0 0/0 .text
 * ctrlJoint__13daNpcRafrel_cFP8J3DJointP8J3DModel              */
void daNpcRafrel_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 80ABA678-80ABA698 001138 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpcRafrel_cFP10fopAc_ac_c            */
void daNpcRafrel_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80ABA698-80ABA6E4 001158 004C+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpcRafrel_cFP8J3DJointi               */
void daNpcRafrel_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80ABA6E4-80ABA8EC 0011A4 0208+00 2/0 0/0 0/0 .text setExpressionAnm__13daNpcRafrel_cFib */
void daNpcRafrel_c::setExpressionAnm(int param_0, bool param_1) {
    // NONMATCHING
}

/* 80ABA8EC-80ABA9CC 0013AC 00E0+00 1/0 0/0 0/0 .text            setExpressionBtp__13daNpcRafrel_cFi
 */
void daNpcRafrel_c::setExpressionBtp(int param_0) {
    // NONMATCHING
}

/* 80ABA9CC-80ABAB88 00148C 01BC+00 1/0 0/0 0/0 .text            setMotionAnm__13daNpcRafrel_cFif */
bool daNpcRafrel_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80ABAB88-80ABADC4 001648 023C+00 1/1 0/0 0/0 .text            reset__13daNpcRafrel_cFv */
void daNpcRafrel_c::reset() {
    // NONMATCHING
}

/* 80ABADC4-80ABAFBC 001884 01F8+00 1/1 0/0 0/0 .text            setWaitAction__13daNpcRafrel_cFv */
void daNpcRafrel_c::setWaitAction() {
    // NONMATCHING
}

/* 80ABAFBC-80ABB014 001A7C 0058+00 1/1 0/0 0/0 .text            isSneaking__13daNpcRafrel_cFv */
void daNpcRafrel_c::isSneaking() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ABFA78-80ABFA84 000098 000C+00 0/1 0/0 0/0 .rodata          @4491 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4491[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFA78, &lit_4491);
#pragma pop

/* 80ABFA84-80ABFA90 0000A4 000C+00 0/1 0/0 0/0 .rodata          @4684 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4684[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFA84, &lit_4684);
#pragma pop

/* 80ABFA90-80ABFA94 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4685 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4685[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ABFA90, &lit_4685);
#pragma pop

/* 80ABFA94-80ABFAA0 0000B4 000C+00 0/1 0/0 0/0 .rodata          @4686 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4686[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFA94, &lit_4686);
#pragma pop

/* 80ABFAA0-80ABFAA4 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4687 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4687[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ABFAA0, &lit_4687);
#pragma pop

/* 80ABFAA4-80ABFAB0 0000C4 000C+00 0/1 0/0 0/0 .rodata          @4688 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4688[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFAA4, &lit_4688);
#pragma pop

/* 80ABFAB0-80ABFAB4 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4689 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4689[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ABFAB0, &lit_4689);
#pragma pop

/* 80ABFAB4-80ABFAC0 0000D4 000C+00 0/1 0/0 0/0 .rodata          @4690 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4690[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFAB4, &lit_4690);
#pragma pop

/* 80ABFAC0-80ABFAC4 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4691 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4691[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ABFAC0, &lit_4691);
#pragma pop

/* 80ABFAC4-80ABFAD0 0000E4 000C+00 0/1 0/0 0/0 .rodata          @4692 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4692[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFAC4, &lit_4692);
#pragma pop

/* 80ABFAD0-80ABFAD4 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4693 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4693[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ABFAD0, &lit_4693);
#pragma pop

/* 80ABFAD4-80ABFAE0 0000F4 000C+00 0/1 0/0 0/0 .rodata          @4694 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4694[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFAD4, &lit_4694);
#pragma pop

/* 80ABFAE0-80ABFAE4 000100 0004+00 0/1 0/0 0/0 .rodata          @4695 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4695[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ABFAE0, &lit_4695);
#pragma pop

/* 80ABFAE4-80ABFAF0 000104 000C+00 0/1 0/0 0/0 .rodata          @4696 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4696[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFAE4, &lit_4696);
#pragma pop

/* 80ABFAF0-80ABFAF4 000110 0004+00 0/1 0/0 0/0 .rodata          @4697 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4697[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ABFAF0, &lit_4697);
#pragma pop

/* 80ABFAF4-80ABFB00 000114 000C+00 0/1 0/0 0/0 .rodata          @4698 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4698[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFAF4, &lit_4698);
#pragma pop

/* 80ABFB00-80ABFB04 000120 0004+00 0/1 0/0 0/0 .rodata          @4699 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4699[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ABFB00, &lit_4699);
#pragma pop

/* 80ABFB04-80ABFB24 000124 0020+00 0/0 0/0 0/0 .rodata          @4700 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4700[32] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFB04, &lit_4700);
#pragma pop

/* 80ABFB24-80ABFB30 000144 000C+00 0/1 0/0 0/0 .rodata          @4704 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4704[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFB24, &lit_4704);
#pragma pop

/* 80ABFB30-80ABFB34 000150 0004+00 0/1 0/0 0/0 .rodata          @4705 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4705[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ABFB30, &lit_4705);
#pragma pop

/* 80ABFB34-80ABFB40 000154 000C+00 0/1 0/0 0/0 .rodata          @4706 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4706[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFB34, &lit_4706);
#pragma pop

/* 80ABFB40-80ABFB44 000160 0004+00 0/1 0/0 0/0 .rodata          @4707 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4707[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ABFB40, &lit_4707);
#pragma pop

/* 80ABFB44-80ABFB50 000164 000C+00 0/1 0/0 0/0 .rodata          @4708 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4708[12] = {
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80ABFB44, &lit_4708);
#pragma pop

/* 80ABFB50-80ABFB5C 000170 000C+00 0/1 0/0 0/0 .rodata          @4709 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4709[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFB50, &lit_4709);
#pragma pop

/* 80ABFB5C-80ABFB64 00017C 0008+00 0/1 0/0 0/0 .rodata          @4710 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4710[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFB5C, &lit_4710);
#pragma pop

/* 80ABFB64-80ABFB70 000184 000C+00 0/1 0/0 0/0 .rodata          @4711 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4711[12] = {
    0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFB64, &lit_4711);
#pragma pop

/* 80ABFB70-80ABFB74 000190 0004+00 0/1 0/0 0/0 .rodata          @4712 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4712[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ABFB70, &lit_4712);
#pragma pop

/* 80ABFB74-80ABFB80 000194 000C+00 0/1 0/0 0/0 .rodata          @4713 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4713[12] = {
    0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFB74, &lit_4713);
#pragma pop

/* 80ABFB80-80ABFB84 0001A0 0004+00 0/1 0/0 0/0 .rodata          @4714 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4714[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ABFB80, &lit_4714);
#pragma pop

/* 80ABFB84-80ABFB90 0001A4 000C+00 0/1 0/0 0/0 .rodata          @4715 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4715[12] = {
    0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80ABFB84, &lit_4715);
#pragma pop

/* 80ABFB90-80ABFB9C 0001B0 000C+00 0/1 0/0 0/0 .rodata          @4716 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4716[12] = {
    0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFB90, &lit_4716);
#pragma pop

/* 80ABFB9C-80ABFBA4 0001BC 0008+00 0/1 0/0 0/0 .rodata          @4717 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4717[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFB9C, &lit_4717);
#pragma pop

/* 80ABFBA4-80ABFBB0 0001C4 000C+00 0/1 0/0 0/0 .rodata          @4718 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4718[12] = {
    0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80ABFBA4, &lit_4718);
#pragma pop

/* 80ABFBB0-80ABFBBC 0001D0 000C+00 0/1 0/0 0/0 .rodata          @4719 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4719[12] = {
    0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFBB0, &lit_4719);
#pragma pop

/* 80ABFBBC-80ABFBC4 0001DC 0008+00 0/1 0/0 0/0 .rodata          @4720 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4720[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFBBC, &lit_4720);
#pragma pop

/* 80ABFBC4-80ABFBD0 0001E4 000C+00 0/1 0/0 0/0 .rodata          @4721 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4721[12] = {
    0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80ABFBC4, &lit_4721);
#pragma pop

/* 80ABFBD0-80ABFBDC 0001F0 000C+00 0/1 0/0 0/0 .rodata          @4722 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4722[12] = {
    0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFBD0, &lit_4722);
#pragma pop

/* 80ABFBDC-80ABFBE4 0001FC 0008+00 0/1 0/0 0/0 .rodata          @4723 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4723[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFBDC, &lit_4723);
#pragma pop

/* 80ABFBE4-80ABFBF0 000204 000C+00 0/1 0/0 0/0 .rodata          @4724 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4724[12] = {
    0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFBE4, &lit_4724);
#pragma pop

/* 80ABFBF0-80ABFBF4 000210 0004+00 0/1 0/0 0/0 .rodata          @4725 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4725[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ABFBF0, &lit_4725);
#pragma pop

/* 80ABFBF4-80ABFC00 000214 000C+00 0/1 0/0 0/0 .rodata          @4726 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4726[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFBF4, &lit_4726);
#pragma pop

/* 80ABFC00-80ABFC04 000220 0004+00 0/1 0/0 0/0 .rodata          @4727 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4727[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ABFC00, &lit_4727);
#pragma pop

/* 80ABFC04-80ABFC10 000224 000C+00 0/1 0/0 0/0 .rodata          @4728 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4728[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80ABFC04, &lit_4728);
#pragma pop

/* 80ABFC10-80ABFC1C 000230 000C+00 0/1 0/0 0/0 .rodata          @4729 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4729[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFC10, &lit_4729);
#pragma pop

/* 80ABFC1C-80ABFC24 00023C 0008+00 0/1 0/0 0/0 .rodata          @4730 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4730[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFC1C, &lit_4730);
#pragma pop

/* 80ABFC24-80ABFC30 000244 000C+00 0/1 0/0 0/0 .rodata          @4731 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4731[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80ABFC24, &lit_4731);
#pragma pop

/* 80ABFC30-80ABFC3C 000250 000C+00 0/1 0/0 0/0 .rodata          @4732 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4732[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFC30, &lit_4732);
#pragma pop

/* 80ABFC3C-80ABFC44 00025C 0008+00 0/1 0/0 0/0 .rodata          @4733 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4733[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFC3C, &lit_4733);
#pragma pop

/* 80ABFC44-80ABFC50 000264 000C+00 0/1 0/0 0/0 .rodata          @4734 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4734[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80ABFC44, &lit_4734);
#pragma pop

/* 80ABFC50-80ABFC5C 000270 000C+00 0/1 0/0 0/0 .rodata          @4735 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4735[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFC50, &lit_4735);
#pragma pop

/* 80ABFC5C-80ABFC64 00027C 0008+00 0/1 0/0 0/0 .rodata          @4736 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4736[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFC5C, &lit_4736);
#pragma pop

/* 80ABFC64-80ABFC70 000284 000C+00 0/1 0/0 0/0 .rodata          @4737 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4737[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFC64, &lit_4737);
#pragma pop

/* 80ABFC70-80ABFC74 000290 0004+00 0/1 0/0 0/0 .rodata          @4738 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4738[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ABFC70, &lit_4738);
#pragma pop

/* 80ABFC74-80ABFC80 000294 000C+00 0/1 0/0 0/0 .rodata          @4739 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4739[12] = {
    0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFC74, &lit_4739);
#pragma pop

/* 80ABFC80-80ABFC84 0002A0 0004+00 0/1 0/0 0/0 .rodata          @4740 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4740[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ABFC80, &lit_4740);
#pragma pop

/* 80ABFC84-80ABFC90 0002A4 000C+00 0/1 0/0 0/0 .rodata          @4741 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4741[12] = {
    0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80ABFC84, &lit_4741);
#pragma pop

/* 80ABFC90-80ABFC9C 0002B0 000C+00 0/1 0/0 0/0 .rodata          @4742 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4742[12] = {
    0x00, 0x1C, 0x00, 0x00, 0x40, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFC90, &lit_4742);
#pragma pop

/* 80ABFC9C-80ABFCA4 0002BC 0008+00 0/1 0/0 0/0 .rodata          @4743 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4743[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFC9C, &lit_4743);
#pragma pop

/* 80ABFCA4-80ABFCB0 0002C4 000C+00 0/1 0/0 0/0 .rodata          @4744 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4744[12] = {
    0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFCA4, &lit_4744);
#pragma pop

/* 80ABFCB0-80ABFCB8 0002D0 0008+00 0/1 0/0 0/0 .rodata          @4745 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4745[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFCB0, &lit_4745);
#pragma pop

/* 80ABFCB8-80ABFCC4 0002D8 000C+00 0/1 0/0 0/0 .rodata          @4746 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4746[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFCB8, &lit_4746);
#pragma pop

/* 80ABFCC4-80ABFCC8 0002E4 0004+00 0/1 0/0 0/0 .rodata          @4747 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4747[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ABFCC4, &lit_4747);
#pragma pop

/* 80ABFCC8-80ABFCD4 0002E8 000C+00 0/1 0/0 0/0 .rodata          @4748 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4748[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFCC8, &lit_4748);
#pragma pop

/* 80ABFCD4-80ABFCD8 0002F4 0004+00 0/1 0/0 0/0 .rodata          @4749 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4749[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ABFCD4, &lit_4749);
#pragma pop

/* 80ABFCD8-80ABFD24 0002F8 004C+00 0/0 0/0 0/0 .rodata          @4750 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4750[76] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFCD8, &lit_4750);
#pragma pop

/* 80ABFD24-80ABFD30 000344 000C+00 0/1 0/0 0/0 .rodata          @4787 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4787[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFD24, &lit_4787);
#pragma pop

/* 80ABFD30-80ABFD34 000350 0004+00 5/10 0/0 0/0 .rodata          @5080 */
SECTION_RODATA static f32 const lit_5080 = -1.0f;
COMPILER_STRIP_GATE(0x80ABFD30, &lit_5080);

/* 80ABFD34-80ABFD38 000354 0004+00 0/1 0/0 0/0 .rodata          @5081 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5081 = 0x43360B61;
COMPILER_STRIP_GATE(0x80ABFD34, &lit_5081);
#pragma pop

/* 80ABFD38-80ABFD3C 000358 0004+00 0/4 0/0 0/0 .rodata          @5082 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5082 = 0x3BB40000;
COMPILER_STRIP_GATE(0x80ABFD38, &lit_5082);
#pragma pop

/* 80ABFD3C-80ABFD40 00035C 0004+00 0/4 0/0 0/0 .rodata          @5083 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5083 = 15.0f;
COMPILER_STRIP_GATE(0x80ABFD3C, &lit_5083);
#pragma pop

/* 80ABFD40-80ABFD44 000360 0004+00 0/1 0/0 0/0 .rodata          @5084 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5084 = -200.0f;
COMPILER_STRIP_GATE(0x80ABFD40, &lit_5084);
#pragma pop

/* 80ABFD44-80ABFD48 000364 0004+00 0/1 0/0 0/0 .rodata          @5085 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5085 = 200.0f;
COMPILER_STRIP_GATE(0x80ABFD44, &lit_5085);
#pragma pop

/* 80ABFD48-80ABFD50 000368 0004+04 0/1 0/0 0/0 .rodata          @5086 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5086[1 + 1 /* padding */] = {
    135.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80ABFD48, &lit_5086);
#pragma pop

/* 80ABFD50-80ABFD58 000370 0008+00 0/4 0/0 0/0 .rodata          @5088 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5088[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFD50, &lit_5088);
#pragma pop

/* 80ABFDBC-80ABFDBC 0003DC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80ABFE5E = "NO_RESPONSE";
#pragma pop

/* 80ABB014-80ABBB10 001AD4 0AFC+00 2/0 0/0 0/0 .text            wait_type01__13daNpcRafrel_cFPv */
void daNpcRafrel_c::wait_type01(void* param_0) {
    // NONMATCHING
}

/* 80ABBB10-80ABBBB0 0025D0 00A0+00 1/0 0/0 0/0 .text            setMotion__13daNpcRafrel_cFifi */
void daNpcRafrel_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 80ABBBB0-80ABBBDC 002670 002C+00 1/0 0/0 0/0 .text            setExpression__13daNpcRafrel_cFif
 */
void daNpcRafrel_c::setExpression(int param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ABFD58-80ABFD5C 000378 0004+00 0/1 0/0 0/0 .rodata          @5157 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5157 = 0xC58569FB;
COMPILER_STRIP_GATE(0x80ABFD58, &lit_5157);
#pragma pop

/* 80ABFD5C-80ABFD60 00037C 0004+00 0/1 0/0 0/0 .rodata          @5158 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5158 = 0x4603F0F9;
COMPILER_STRIP_GATE(0x80ABFD5C, &lit_5158);
#pragma pop

/* 80ABBBDC-80ABBE84 00269C 02A8+00 1/0 0/0 0/0 .text            wait_type2__13daNpcRafrel_cFPv */
void daNpcRafrel_c::wait_type2(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ABFDBC-80ABFDBC 0003DC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80ABFE6A = "DEFAULT_GETITEM";
#pragma pop

/* 80ABBE84-80ABC50C 002944 0688+00 2/0 0/0 0/0 .text            talk__13daNpcRafrel_cFPv */
void daNpcRafrel_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80ABC50C-80ABCA40 002FCC 0534+00 1/0 0/0 0/0 .text            demo__13daNpcRafrel_cFPv */
void daNpcRafrel_c::demo(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ABFD60-80ABFD64 000380 0004+00 0/1 0/0 0/0 .rodata          @5376 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5376 = 0xC5C36B19;
COMPILER_STRIP_GATE(0x80ABFD60, &lit_5376);
#pragma pop

/* 80ABFD64-80ABFD68 000384 0004+00 0/1 0/0 0/0 .rodata          @5377 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5377 = 0x45C35E15;
COMPILER_STRIP_GATE(0x80ABFD64, &lit_5377);
#pragma pop

/* 80ABFD68-80ABFD70 000388 0004+04 0/1 0/0 0/0 .rodata          @5378 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5378[1 + 1 /* padding */] = {
    13.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80ABFD68, &lit_5378);
#pragma pop

/* 80ABFD70-80ABFD78 000390 0008+00 0/3 0/0 0/0 .rodata          @5379 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5379[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFD70, &lit_5379);
#pragma pop

/* 80ABFD78-80ABFD80 000398 0008+00 0/3 0/0 0/0 .rodata          @5380 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5380[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFD78, &lit_5380);
#pragma pop

/* 80ABFD80-80ABFD88 0003A0 0008+00 0/3 0/0 0/0 .rodata          @5381 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5381[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFD80, &lit_5381);
#pragma pop

/* 80ABCA40-80ABCD74 003500 0334+00 1/0 0/0 0/0 .text            leave__13daNpcRafrel_cFPv */
void daNpcRafrel_c::leave(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ABFDBC-80ABFDBC 0003DC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80ABFE7A = "prm";
#pragma pop

/* 80ABCD74-80ABCE74 003834 0100+00 1/0 0/0 0/0 .text EvCut_Introduction__13daNpcRafrel_cFi */
void daNpcRafrel_c::EvCut_Introduction(int param_0) {
    // NONMATCHING
}

/* 80ABCE74-80ABD124 003934 02B0+00 1/0 0/0 0/0 .text            EvCut_Meeting__13daNpcRafrel_cFi */
void daNpcRafrel_c::EvCut_Meeting(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ABFD88-80ABFD8C 0003A8 0004+00 0/1 0/0 0/0 .rodata          @5580 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5580 = 30.0f;
COMPILER_STRIP_GATE(0x80ABFD88, &lit_5580);
#pragma pop

/* 80ABD124-80ABD8A0 003BE4 077C+00 1/0 0/0 0/0 .text            EvCut_Appear__13daNpcRafrel_cFi */
void daNpcRafrel_c::EvCut_Appear(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ABFD8C-80ABFD9C 0003AC 0010+00 1/1 0/0 0/0 .rodata          @5583 */
SECTION_RODATA static u8 const lit_5583[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ABFD8C, &lit_5583);

/* 80ABD8A0-80ABDB7C 004360 02DC+00 1/0 0/0 0/0 .text EvCut_WiretapSponsor__13daNpcRafrel_cFi */
void daNpcRafrel_c::EvCut_WiretapSponsor(int param_0) {
    // NONMATCHING
}

/* 80ABDB7C-80ABDDE4 00463C 0268+00 2/0 0/0 0/0 .text EvCut_WiretapEntrant__13daNpcRafrel_cFi */
void daNpcRafrel_c::EvCut_WiretapEntrant(int param_0) {
    // NONMATCHING
}

/* 80ABDDE4-80ABDE04 0048A4 0020+00 1/0 0/0 0/0 .text            daNpcRafrel_Create__FPv */
static void daNpcRafrel_Create(void* param_0) {
    // NONMATCHING
}

/* 80ABDE04-80ABDE24 0048C4 0020+00 1/0 0/0 0/0 .text            daNpcRafrel_Delete__FPv */
static void daNpcRafrel_Delete(void* param_0) {
    // NONMATCHING
}

/* 80ABDE24-80ABDE44 0048E4 0020+00 1/0 0/0 0/0 .text            daNpcRafrel_Execute__FPv */
static void daNpcRafrel_Execute(void* param_0) {
    // NONMATCHING
}

/* 80ABDE44-80ABDE64 004904 0020+00 1/0 0/0 0/0 .text            daNpcRafrel_Draw__FPv */
static void daNpcRafrel_Draw(void* param_0) {
    // NONMATCHING
}

/* 80ABDE64-80ABDE6C 004924 0008+00 1/0 0/0 0/0 .text            daNpcRafrel_IsDelete__FPv */
static bool daNpcRafrel_IsDelete(void* param_0) {
    return true;
}

/* 80ABDE6C-80ABDE9C 00492C 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ABFD9C-80ABFDA0 0003BC 0004+00 0/1 0/0 0/0 .rodata          @5742 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5742 = 150.0f;
COMPILER_STRIP_GATE(0x80ABFD9C, &lit_5742);
#pragma pop

/* 80ABFDA0-80ABFDA4 0003C0 0004+00 0/1 0/0 0/0 .rodata          @5743 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5743 = 100.0f;
COMPILER_STRIP_GATE(0x80ABFDA0, &lit_5743);
#pragma pop

/* 80ABDE9C-80ABE1D0 00495C 0334+00 1/0 0/0 0/0 .text            setParam__13daNpcRafrel_cFv */
void daNpcRafrel_c::setParam() {
    // NONMATCHING
}

/* 80ABE1D0-80ABE470 004C90 02A0+00 1/0 0/0 0/0 .text            main__13daNpcRafrel_cFv */
void daNpcRafrel_c::main() {
    // NONMATCHING
}

/* 80ABE470-80ABE9FC 004F30 058C+00 1/1 0/0 0/0 .text            playMotion__13daNpcRafrel_cFv */
void daNpcRafrel_c::playMotion() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ABFDA4-80ABFDA8 0003C4 0004+00 1/1 0/0 0/0 .rodata          @5819 */
SECTION_RODATA static f32 const lit_5819 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80ABFDA4, &lit_5819);

/* 80ABE9FC-80ABEAD8 0054BC 00DC+00 1/0 0/0 0/0 .text            ctrlBtk__13daNpcRafrel_cFv */
void daNpcRafrel_c::ctrlBtk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ABFDA8-80ABFDAC 0003C8 0004+00 0/1 0/0 0/0 .rodata          @5923 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5923 = -15.0f;
COMPILER_STRIP_GATE(0x80ABFDA8, &lit_5923);
#pragma pop

/* 80ABFDAC-80ABFDB0 0003CC 0004+00 0/1 0/0 0/0 .rodata          @5924 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5924 = 10.0f;
COMPILER_STRIP_GATE(0x80ABFDAC, &lit_5924);
#pragma pop

/* 80ABFDB0-80ABFDB4 0003D0 0004+00 0/1 0/0 0/0 .rodata          @5925 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5925 = 2.0f;
COMPILER_STRIP_GATE(0x80ABFDB0, &lit_5925);
#pragma pop

/* 80ABFDB4-80ABFDB8 0003D4 0004+00 0/1 0/0 0/0 .rodata          @5926 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5926 = 50.0f;
COMPILER_STRIP_GATE(0x80ABFDB4, &lit_5926);
#pragma pop

/* 80ABEAD8-80ABEE98 005598 03C0+00 1/0 0/0 0/0 .text            setAttnPos__13daNpcRafrel_cFv */
void daNpcRafrel_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ABFDB8-80ABFDBC 0003D8 0004+00 0/1 0/0 0/0 .rodata          @5967 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5967 = 40.0f;
COMPILER_STRIP_GATE(0x80ABFDB8, &lit_5967);
#pragma pop

/* 80ABEE98-80ABF074 005958 01DC+00 1/1 0/0 0/0 .text            lookat__13daNpcRafrel_cFv */
void daNpcRafrel_c::lookat() {
    // NONMATCHING
}

/* 80ABF074-80ABF07C 005B34 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpcRafrel_cFv */
bool daNpcRafrel_c::drawDbgInfo() {
    return false;
}

/* 80ABF07C-80ABF088 005B3C 000C+00 1/1 0/0 0/0 .text sinShort__Q25JMath18TSinCosTable<13,f>CFs */
extern "C" void func_80ABF07C(void* _this, s16 param_0) /* const */ {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AC0300-80AC030C 000480 000C+00 2/2 0/0 0/0 .data            __vt__19daNpcRafrel_Param_c */
SECTION_DATA extern void* __vt__19daNpcRafrel_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpcRafrel_Param_cFv,
};

/* 80AC0318-80AC0324 000008 000C+00 1/1 0/0 0/0 .bss             @3819 */
static u8 lit_3819[12];

/* 80AC0324-80AC0328 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80ABF088-80ABF18C 005B48 0104+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_rafrel_cpp */
void __sinit_d_a_npc_rafrel_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80ABF088, __sinit_d_a_npc_rafrel_cpp);
#pragma pop

/* 80ABF18C-80ABF1D4 005C4C 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80ABF1D4-80ABF210 005C94 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80ABF210-80ABF2E0 005CD0 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 80ABF2E0-80ABF31C 005DA0 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80ABF31C-80ABF320 005DDC 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80ABF320-80ABF35C 005DE0 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80ABF35C-80ABF360 005E1C 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80ABF360-80ABF5AC 005E20 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80ABF5AC-80ABF79C 00606C 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80ABF79C-80ABF80C 00625C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80ABF80C-80ABF868 0062CC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80ABF868-80ABF8D8 006328 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80ABF8D8-80ABF920 006398 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80ABF920-80ABF924 0063E0 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__8daNpcF_cFv */
// void daNpcF_c::adjustShapeAngle() {
extern "C" void adjustShapeAngle__8daNpcF_cFv() {
    /* empty function */
}

/* 80ABF924-80ABF928 0063E4 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80ABF928-80ABF92C 0063E8 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__8daNpcF_cFv */
// void daNpcF_c::drawOtherMdls() {
extern "C" void drawOtherMdls__8daNpcF_cFv() {
    /* empty function */
}

/* 80ABF92C-80ABF974 0063EC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80ABF974-80ABF9BC 006434 0048+00 2/1 0/0 0/0 .text            __dt__19daNpcRafrel_Param_cFv */
daNpcRafrel_Param_c::~daNpcRafrel_Param_c() {
    // NONMATCHING
}

/* 80ABF9BC-80ABF9C4 00647C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80ABF9BC() {
    // NONMATCHING
}

/* 80ABF9C4-80ABF9CC 006484 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80ABF9C4() {
    // NONMATCHING
}

/* 80ABFDBC-80ABFDBC 0003DC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
