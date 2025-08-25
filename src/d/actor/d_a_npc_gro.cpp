/**
 * @file d_a_npc_gro.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_gro.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__11daNpc_grO_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__11daNpc_grO_cFv();
extern "C" void create__11daNpc_grO_cFv();
extern "C" void CreateHeap__11daNpc_grO_cFv();
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
extern "C" void Delete__11daNpc_grO_cFv();
extern "C" void Execute__11daNpc_grO_cFv();
extern "C" void Draw__11daNpc_grO_cFv();
extern "C" void ctrlJoint__11daNpc_grO_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__11daNpc_grO_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_grO_cFP8J3DJointi();
extern "C" void setParam__11daNpc_grO_cFv();
extern "C" void main__11daNpc_grO_cFv();
extern "C" void ctrlBtk__11daNpc_grO_cFv();
extern "C" void setAttnPos__11daNpc_grO_cFv();
extern "C" void setExpressionAnm__11daNpc_grO_cFib();
extern "C" void setExpressionBtp__11daNpc_grO_cFi();
extern "C" void setExpression__11daNpc_grO_cFif();
extern "C" void setMotionAnm__11daNpc_grO_cFif();
extern "C" void setMotion__11daNpc_grO_cFifi();
extern "C" bool drawDbgInfo__11daNpc_grO_cFv();
extern "C" void drawOtherMdls__11daNpc_grO_cFv();
extern "C" void getTypeFromParam__11daNpc_grO_cFv();
extern "C" void isDelete__11daNpc_grO_cFv();
extern "C" void reset__11daNpc_grO_cFv();
extern "C" void playExpression__11daNpc_grO_cFv();
extern "C" void playMotion__11daNpc_grO_cFv();
extern "C" void chkAction__11daNpc_grO_cFM11daNpc_grO_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_grO_cFM11daNpc_grO_cFPCvPvPv_i();
extern "C" void selectAction__11daNpc_grO_cFv();
extern "C" void doNormalAction__11daNpc_grO_cFi();
extern "C" void doEvent__11daNpc_grO_cFv();
extern "C" void setLookMode__11daNpc_grO_cFi();
extern "C" void lookat__11daNpc_grO_cFv();
extern "C" void setExpressionTalkAfter__11daNpc_grO_cFv();
extern "C" void wait__11daNpc_grO_cFPv();
extern "C" void bokinWait__11daNpc_grO_cFPv();
extern "C" void waitMaro__11daNpc_grO_cFPv();
extern "C" void talk__11daNpc_grO_cFPv();
extern "C" static void s_sub__FPvPv();
extern "C" void ECut_bokinFinish__11daNpc_grO_cFi();
extern "C" void cutPushOut__11daNpc_grO_cFi();
extern "C" void test__11daNpc_grO_cFPv();
extern "C" static void daNpc_grO_Create__FPv();
extern "C" static void daNpc_grO_Delete__FPv();
extern "C" static void daNpc_grO_Execute__FPv();
extern "C" static void daNpc_grO_Draw__FPv();
extern "C" static bool daNpc_grO_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
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
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_npc_gro_cpp();
extern "C" void adjustShapeAngle__11daNpc_grO_cFv();
extern "C" void __dt__17daNpc_grO_Param_cFv();
extern "C" static void func_809DEF58();
extern "C" static void func_809DEF60();
extern "C" u8 const m__17daNpc_grO_Param_c[108];
extern "C" extern char const* const d_a_npc_gro__stringBase0;
extern "C" void* mEvtCutNameList__11daNpc_grO_c[3];
extern "C" u8 mEvtCutList__11daNpc_grO_c[36];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
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
extern "C" void daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz();
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
extern "C" void tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
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
extern "C" void hitChk2__8daNpcF_cFP8dCcD_Cylii();
extern "C" void setDamage__8daNpcF_cFiii();
extern "C" void ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void changeEvent__8daNpcF_cFPcPcUsUs();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void step__8daNpcF_cFsiii();
extern "C" void setAngle__8daNpcF_cFs();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii();
extern "C" void chkFindPlayer2__8daNpcF_cFis();
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
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_chaseS__FPsss();
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
extern "C" void choccai__12daNpc_Maro_cFPv();
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 809DF2B8-809DF2B8 00033C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809DF2B8 = "grO";
SECTION_DEAD static char const* const stringBase_809DF2BC = "grO1";
SECTION_DEAD static char const* const stringBase_809DF2C1 = "grO1D";
SECTION_DEAD static char const* const stringBase_809DF2C7 = "BOKIN_FINISH";
SECTION_DEAD static char const* const stringBase_809DF2D4 = "PUSHOUT";
SECTION_DEAD static char const* const stringBase_809DF2DC = "";
#pragma pop

/* 809DF318-809DF324 -00001 000C+00 0/0 0/0 0/0 .data            @4083 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4083[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)choccai__12daNpc_Maro_cFPv,
};
#pragma pop

/* 809DF324-809DF33C 00002C 0018+00 0/1 0/0 0/0 .data            l_bmdGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_bmdGetParamList[24] = {
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 809DF33C-809DF3F4 000044 00B8+00 1/2 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[184] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x01,
};

/* 809DF3F4-809DF424 0000FC 0030+00 1/1 0/0 0/0 .data            l_btpGetParamList */
SECTION_DATA static u8 l_btpGetParamList[48] = {
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x01,
};

/* 809DF424-809DF42C 00012C 0008+00 1/2 0/0 0/0 .data            l_btkGetParamList */
SECTION_DATA static u8 l_btkGetParamList[8] = {
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
};

/* 809DF42C-809DF444 000134 0018+00 0/2 0/0 0/0 .data            l_evtGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_evtGetParamList[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 809DF444-809DF454 00014C 0010+00 1/0 0/0 0/0 .data            l_loadRes_GROa */
SECTION_DATA static u8 l_loadRes_GROa[16] = {
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809DF454-809DF464 00015C 0010+00 1/0 0/0 0/0 .data            l_loadRes_GRO_BOKIN */
SECTION_DATA static u8 l_loadRes_GRO_BOKIN[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809DF464-809DF474 00016C 0010+00 1/0 0/0 0/0 .data            l_loadRes_GRO_MARO */
SECTION_DATA static u8 l_loadRes_GRO_MARO[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809DF474-809DF484 00017C 0010+00 1/0 0/0 0/0 .data            l_loadRes_GRO0 */
SECTION_DATA static u8 l_loadRes_GRO0[16] = {
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809DF484-809DF494 -00001 0010+00 2/2 0/0 0/0 .data            l_loadRes_list */
SECTION_DATA static void* l_loadRes_list[4] = {
    (void*)&l_loadRes_GROa,
    (void*)&l_loadRes_GRO_BOKIN,
    (void*)&l_loadRes_GRO_MARO,
    (void*)&l_loadRes_GRO0,
};

/* 809DF494-809DF4A4 00019C 0010+00 0/1 0/0 0/0 .data            l_loadObj_list */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_loadObj_list[16] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 809DF4A4-809DF4B0 -00001 000C+00 5/9 0/0 0/0 .data            l_resNames */
SECTION_DATA static void* l_resNames[3] = {
    (void*)&d_a_npc_gro__stringBase0,
    (void*)(((char*)&d_a_npc_gro__stringBase0) + 0x4),
    (void*)(((char*)&d_a_npc_gro__stringBase0) + 0x9),
};

/* 809DF4B0-809DF4BC -00001 000C+00 0/2 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtNames[3] = {
    (void*)NULL,
    (void*)(((char*)&d_a_npc_gro__stringBase0) + 0xF),
    (void*)(((char*)&d_a_npc_gro__stringBase0) + 0x1C),
};
#pragma pop

/* 809DF4BC-809DF4C0 -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)&d_a_npc_gro__stringBase0;
#pragma pop

/* 809DF4C0-809DF4CC -00001 000C+00 0/1 0/0 0/0 .data            mEvtCutNameList__11daNpc_grO_c */
#pragma push
#pragma force_active on
SECTION_DATA void* daNpc_grO_c::mEvtCutNameList[3] = {
    (void*)(((char*)&d_a_npc_gro__stringBase0) + 0x24),
    (void*)(((char*)&d_a_npc_gro__stringBase0) + 0xF),
    (void*)(((char*)&d_a_npc_gro__stringBase0) + 0x1C),
};
#pragma pop

/* 809DF4CC-809DF4D8 -00001 000C+00 0/1 0/0 0/0 .data            @4096 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4096[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_bokinFinish__11daNpc_grO_cFi,
};
#pragma pop

/* 809DF4D8-809DF4E4 -00001 000C+00 0/1 0/0 0/0 .data            @4097 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4097[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutPushOut__11daNpc_grO_cFi,
};
#pragma pop

/* 809DF4E4-809DF508 0001EC 0024+00 0/2 0/0 0/0 .data            mEvtCutList__11daNpc_grO_c */
#pragma push
#pragma force_active on
SECTION_DATA u8 daNpc_grO_c::mEvtCutList[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 809DF508-809DF514 -00001 000C+00 1/1 0/0 0/0 .data            @4584 */
SECTION_DATA static void* lit_4584[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__11daNpc_grO_cFPv,
};

/* 809DF514-809DF548 -00001 0034+00 1/1 0/0 0/0 .data            @4985 */
SECTION_DATA static void* lit_4985[13] = {
    (void*)(((char*)setExpressionAnm__11daNpc_grO_cFib) + 0x90),
    (void*)(((char*)setExpressionAnm__11daNpc_grO_cFib) + 0xAC),
    (void*)(((char*)setExpressionAnm__11daNpc_grO_cFib) + 0xCC),
    (void*)(((char*)setExpressionAnm__11daNpc_grO_cFib) + 0xEC),
    (void*)(((char*)setExpressionAnm__11daNpc_grO_cFib) + 0x108),
    (void*)(((char*)setExpressionAnm__11daNpc_grO_cFib) + 0x124),
    (void*)(((char*)setExpressionAnm__11daNpc_grO_cFib) + 0x140),
    (void*)(((char*)setExpressionAnm__11daNpc_grO_cFib) + 0x160),
    (void*)(((char*)setExpressionAnm__11daNpc_grO_cFib) + 0x17C),
    (void*)(((char*)setExpressionAnm__11daNpc_grO_cFib) + 0x198),
    (void*)(((char*)setExpressionAnm__11daNpc_grO_cFib) + 0x1B8),
    (void*)(((char*)setExpressionAnm__11daNpc_grO_cFib) + 0x1D4),
    (void*)(((char*)setExpressionAnm__11daNpc_grO_cFib) + 0x1F4),
};

/* 809DF548-809DF570 -00001 0028+00 1/1 0/0 0/0 .data            @5058 */
SECTION_DATA static void* lit_5058[10] = {
    (void*)(((char*)setMotionAnm__11daNpc_grO_cFif) + 0xCC),
    (void*)(((char*)setMotionAnm__11daNpc_grO_cFif) + 0xCC),
    (void*)(((char*)setMotionAnm__11daNpc_grO_cFif) + 0x9C),
    (void*)(((char*)setMotionAnm__11daNpc_grO_cFif) + 0xA4),
    (void*)(((char*)setMotionAnm__11daNpc_grO_cFif) + 0xAC),
    (void*)(((char*)setMotionAnm__11daNpc_grO_cFif) + 0xCC),
    (void*)(((char*)setMotionAnm__11daNpc_grO_cFif) + 0xB4),
    (void*)(((char*)setMotionAnm__11daNpc_grO_cFif) + 0xCC),
    (void*)(((char*)setMotionAnm__11daNpc_grO_cFif) + 0xBC),
    (void*)(((char*)setMotionAnm__11daNpc_grO_cFif) + 0xCC),
};

/* 809DF570-809DF57C -00001 000C+00 0/1 0/0 0/0 .data            @5287 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5287[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__11daNpc_grO_cFPv,
};
#pragma pop

/* 809DF57C-809DF588 -00001 000C+00 0/1 0/0 0/0 .data            @5291 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5291[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)bokinWait__11daNpc_grO_cFPv,
};
#pragma pop

/* 809DF588-809DF594 -00001 000C+00 0/1 0/0 0/0 .data            @5293 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5293[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitMaro__11daNpc_grO_cFPv,
};
#pragma pop

/* 809DF594-809DF5A0 -00001 000C+00 0/1 0/0 0/0 .data            @5295 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5295[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_grO_cFPv,
};
#pragma pop

/* 809DF5A0-809DF5AC -00001 000C+00 0/1 0/0 0/0 .data            @5340 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5340[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_grO_cFPv,
};
#pragma pop

/* 809DF5AC-809DF5B8 -00001 000C+00 0/1 0/0 0/0 .data            @5348 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5348[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_grO_cFPv,
};
#pragma pop

/* 809DF5B8-809DF5C4 -00001 000C+00 0/1 0/0 0/0 .data            @5368 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5368[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_grO_cFPv,
};
#pragma pop

/* 809DF5C4-809DF5E4 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_grO_MethodTable */
static actor_method_class daNpc_grO_MethodTable = {
    (process_method_func)daNpc_grO_Create__FPv,
    (process_method_func)daNpc_grO_Delete__FPv,
    (process_method_func)daNpc_grO_Execute__FPv,
    (process_method_func)daNpc_grO_IsDelete__FPv,
    (process_method_func)daNpc_grO_Draw__FPv,
};

/* 809DF5E4-809DF614 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_GRO */
extern actor_process_profile_definition g_profile_NPC_GRO = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_GRO,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_grO_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  311,                    // mPriority
  &daNpc_grO_MethodTable, // sub_method
  0x00044100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 809DF614-809DF620 00031C 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 809DF620-809DF668 000328 0048+00 2/2 0/0 0/0 .data            __vt__11daNpc_grO_c */
SECTION_DATA extern void* __vt__11daNpc_grO_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_grO_cFv,
    (void*)setParam__11daNpc_grO_cFv,
    (void*)main__11daNpc_grO_cFv,
    (void*)ctrlBtk__11daNpc_grO_cFv,
    (void*)adjustShapeAngle__11daNpc_grO_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__11daNpc_grO_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__11daNpc_grO_cFib,
    (void*)setExpressionBtp__11daNpc_grO_cFi,
    (void*)setExpression__11daNpc_grO_cFif,
    (void*)setMotionAnm__11daNpc_grO_cFif,
    (void*)setMotion__11daNpc_grO_cFifi,
    (void*)drawDbgInfo__11daNpc_grO_cFv,
    (void*)drawOtherMdls__11daNpc_grO_cFv,
};

/* 809DF668-809DF674 000370 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 809DF674-809DF698 00037C 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809DEF60,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809DEF58,
};

/* 809DF698-809DF6A4 0003A0 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 809DF6A4-809DF6B0 0003AC 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 809DF6B0-809DF6BC 0003B8 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 809DF6BC-809DF6C8 0003C4 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 809DF6C8-809DF6D4 0003D0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 809DF6D4-809DF6E0 0003DC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 809DF6E0-809DF6EC 0003E8 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 809DA56C-809DA6F0 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__11daNpc_grO_cFv */
daNpc_grO_c::daNpc_grO_c() {
    // NONMATCHING
}

/* 809DA6F0-809DA738 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 809DA738-809DA780 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 809DA780-809DA980 000300 0200+00 1/0 0/0 0/0 .text            __dt__11daNpc_grO_cFv */
daNpc_grO_c::~daNpc_grO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809DEF7C-809DEFE8 000000 006C+00 14/14 0/0 0/0 .rodata          m__17daNpc_grO_Param_c */
SECTION_RODATA u8 const daNpc_grO_Param_c::m[108] = {
    0x43, 0x20, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x44, 0x16, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x0C, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0xB4, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0x00, 0x05, 0x00, 0x03,
    0x43, 0x34, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DEF7C, &daNpc_grO_Param_c::m);

/* 809DEFE8-809DEFF8 00006C 0010+00 0/1 0/0 0/0 .rodata          heapSize$4387 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[16] = {
    0x00, 0x00, 0x3D, 0x50, 0x00, 0x00, 0x3D, 0x60, 0x00, 0x00, 0x35, 0x50, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DEFE8, &heapSize);
#pragma pop

/* 809DEFF8-809DEFFC 00007C 0004+00 0/1 0/0 0/0 .rodata          @4474 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4474 = -300.0f;
COMPILER_STRIP_GATE(0x809DEFF8, &lit_4474);
#pragma pop

/* 809DEFFC-809DF000 000080 0004+00 0/1 0/0 0/0 .rodata          @4475 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4475 = -50.0f;
COMPILER_STRIP_GATE(0x809DEFFC, &lit_4475);
#pragma pop

/* 809DF000-809DF004 000084 0004+00 0/1 0/0 0/0 .rodata          @4476 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4476 = 300.0f;
COMPILER_STRIP_GATE(0x809DF000, &lit_4476);
#pragma pop

/* 809DF004-809DF008 000088 0004+00 0/1 0/0 0/0 .rodata          @4477 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4477 = 450.0f;
COMPILER_STRIP_GATE(0x809DF004, &lit_4477);
#pragma pop

/* 809DA980-809DAC58 000500 02D8+00 1/1 0/0 0/0 .text            create__11daNpc_grO_cFv */
void daNpc_grO_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809DF008-809DF00C 00008C 0004+00 4/4 0/0 0/0 .rodata          @4552 */
SECTION_RODATA static f32 const lit_4552 = 1.0f;
COMPILER_STRIP_GATE(0x809DF008, &lit_4552);

/* 809DF00C-809DF010 000090 0004+00 5/7 0/0 0/0 .rodata          @4553 */
SECTION_RODATA static u8 const lit_4553[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809DF00C, &lit_4553);

/* 809DAC58-809DAF74 0007D8 031C+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_grO_cFv */
void daNpc_grO_c::CreateHeap() {
    // NONMATCHING
}

/* 809DAF74-809DAFB0 000AF4 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 809DAFB0-809DAFC8 000B30 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 809DAFC8-809DB004 000B48 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 809DB004-809DB01C 000B84 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 809DB01C-809DB064 000B9C 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 809DB064-809DB088 000BE4 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 809DB088-809DB0C4 000C08 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 809DB0C4-809DB0DC 000C44 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 809DB0DC-809DB118 000C5C 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 809DB118-809DB130 000C98 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 809DB130-809DB164 000CB0 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_grO_cFv */
void daNpc_grO_c::Delete() {
    // NONMATCHING
}

/* 809DB164-809DB184 000CE4 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_grO_cFv */
void daNpc_grO_c::Execute() {
    // NONMATCHING
}

/* 809DB184-809DB214 000D04 0090+00 1/1 0/0 0/0 .text            Draw__11daNpc_grO_cFv */
void daNpc_grO_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809DF010-809DF01C 000094 000C+00 1/1 0/0 0/0 .rodata          @4605 */
SECTION_RODATA static u8 const lit_4605[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x809DF010, &lit_4605);

/* 809DB214-809DB448 000D94 0234+00 1/1 0/0 0/0 .text
 * ctrlJoint__11daNpc_grO_cFP8J3DJointP8J3DModel                */
void daNpc_grO_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 809DB448-809DB468 000FC8 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_grO_cFP10fopAc_ac_c              */
void daNpc_grO_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809DB468-809DB4B4 000FE8 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpc_grO_cFP8J3DJointi
 */
void daNpc_grO_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 809DB4B4-809DB5F4 001034 0140+00 1/0 0/0 0/0 .text            setParam__11daNpc_grO_cFv */
void daNpc_grO_c::setParam() {
    // NONMATCHING
}

/* 809DB5F4-809DB774 001174 0180+00 1/0 0/0 0/0 .text            main__11daNpc_grO_cFv */
void daNpc_grO_c::main() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809DF01C-809DF020 0000A0 0004+00 7/7 0/0 0/0 .rodata          @4812 */
SECTION_RODATA static f32 const lit_4812 = -1.0f;
COMPILER_STRIP_GATE(0x809DF01C, &lit_4812);

/* 809DF020-809DF024 0000A4 0004+00 1/1 0/0 0/0 .rodata          @4813 */
SECTION_RODATA static f32 const lit_4813 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x809DF020, &lit_4813);

/* 809DB774-809DB854 0012F4 00E0+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpc_grO_cFv */
void daNpc_grO_c::ctrlBtk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809DF024-809DF028 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4946 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4946 = 30.0f;
COMPILER_STRIP_GATE(0x809DF024, &lit_4946);
#pragma pop

/* 809DF028-809DF02C 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4947 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4947 = 10.0f;
COMPILER_STRIP_GATE(0x809DF028, &lit_4947);
#pragma pop

/* 809DF02C-809DF030 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4948 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4948 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x809DF02C, &lit_4948);
#pragma pop

/* 809DF030-809DF034 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4949 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4949 = 125.0f;
COMPILER_STRIP_GATE(0x809DF030, &lit_4949);
#pragma pop

/* 809DF034-809DF03C 0000B8 0008+00 0/1 0/0 0/0 .rodata          @4950 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4950[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF034, &lit_4950);
#pragma pop

/* 809DF03C-809DF044 0000C0 0008+00 0/1 0/0 0/0 .rodata          @4951 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4951[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF03C, &lit_4951);
#pragma pop

/* 809DF044-809DF04C 0000C8 0008+00 0/1 0/0 0/0 .rodata          @4952 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4952[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF044, &lit_4952);
#pragma pop

/* 809DF04C-809DF050 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4953 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4953 = 60.0f;
COMPILER_STRIP_GATE(0x809DF04C, &lit_4953);
#pragma pop

/* 809DF740-809DF74C 000048 000C+00 1/1 0/0 0/0 .bss             @4095 */
static u8 lit_4095[12];

/* 809DF74C-809DF750 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 809DF750-809DF760 000058 000C+04 0/1 0/0 0/0 .bss             @4818 */
#pragma push
#pragma force_active on
static u8 lit_4818[12 + 4 /* padding */];
#pragma pop

/* 809DF760-809DF76C 000068 000C+00 0/1 0/0 0/0 .bss             eyeOffset$4817 */
#pragma push
#pragma force_active on
static u8 eyeOffset[12];
#pragma pop

/* 809DB854-809DBD58 0013D4 0504+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_grO_cFv */
void daNpc_grO_c::setAttnPos() {
    // NONMATCHING
}

/* 809DBD58-809DBFF4 0018D8 029C+00 2/0 0/0 0/0 .text            setExpressionAnm__11daNpc_grO_cFib
 */
void daNpc_grO_c::setExpressionAnm(int param_0, bool param_1) {
    // NONMATCHING
}

/* 809DBFF4-809DC118 001B74 0124+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpc_grO_cFi
 */
void daNpc_grO_c::setExpressionBtp(int param_0) {
    // NONMATCHING
}

/* 809DC118-809DC144 001C98 002C+00 1/0 0/0 0/0 .text            setExpression__11daNpc_grO_cFif */
void daNpc_grO_c::setExpression(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 809DC144-809DC2E4 001CC4 01A0+00 2/0 0/0 0/0 .text            setMotionAnm__11daNpc_grO_cFif */
bool daNpc_grO_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 809DC2E4-809DC328 001E64 0044+00 1/0 0/0 0/0 .text            setMotion__11daNpc_grO_cFifi */
void daNpc_grO_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 809DC328-809DC330 001EA8 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_grO_cFv */
bool daNpc_grO_c::drawDbgInfo() {
    return false;
}

/* 809DC330-809DC3DC 001EB0 00AC+00 1/0 0/0 0/0 .text            drawOtherMdls__11daNpc_grO_cFv */
void daNpc_grO_c::drawOtherMdls() {
    // NONMATCHING
}

/* 809DC3DC-809DC43C 001F5C 0060+00 1/1 0/0 0/0 .text            getTypeFromParam__11daNpc_grO_cFv
 */
void daNpc_grO_c::getTypeFromParam() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809DF2B8-809DF2B8 00033C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809DF2DD = "D_MN04";
#pragma pop

/* 809DC43C-809DC4F4 001FBC 00B8+00 1/1 0/0 0/0 .text            isDelete__11daNpc_grO_cFv */
void daNpc_grO_c::isDelete() {
    // NONMATCHING
}

/* 809DC4F4-809DC67C 002074 0188+00 1/1 0/0 0/0 .text            reset__11daNpc_grO_cFv */
void daNpc_grO_c::reset() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809DF050-809DF05C 0000D4 000C+00 0/1 0/0 0/0 .rodata          @5164 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5164[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809DF050, &lit_5164);
#pragma pop

/* 809DF05C-809DF068 0000E0 000C+00 0/1 0/0 0/0 .rodata          @5165 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5165[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF05C, &lit_5165);
#pragma pop

/* 809DF068-809DF070 0000EC 0008+00 0/1 0/0 0/0 .rodata          @5166 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5166[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF068, &lit_5166);
#pragma pop

/* 809DF070-809DF07C 0000F4 000C+00 0/1 0/0 0/0 .rodata          @5167 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5167[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809DF070, &lit_5167);
#pragma pop

/* 809DF07C-809DF088 000100 000C+00 0/1 0/0 0/0 .rodata          @5168 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5168[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF07C, &lit_5168);
#pragma pop

/* 809DF088-809DF090 00010C 0008+00 0/1 0/0 0/0 .rodata          @5169 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5169[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF088, &lit_5169);
#pragma pop

/* 809DF090-809DF09C 000114 000C+00 0/1 0/0 0/0 .rodata          @5170 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5170[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809DF090, &lit_5170);
#pragma pop

/* 809DF09C-809DF0A8 000120 000C+00 0/1 0/0 0/0 .rodata          @5171 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5171[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF09C, &lit_5171);
#pragma pop

/* 809DF0A8-809DF0B0 00012C 0008+00 0/1 0/0 0/0 .rodata          @5172 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5172[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF0A8, &lit_5172);
#pragma pop

/* 809DF0B0-809DF0BC 000134 000C+00 0/1 0/0 0/0 .rodata          @5173 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5173[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809DF0B0, &lit_5173);
#pragma pop

/* 809DF0BC-809DF0C8 000140 000C+00 0/1 0/0 0/0 .rodata          @5174 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5174[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF0BC, &lit_5174);
#pragma pop

/* 809DF0C8-809DF0D0 00014C 0008+00 0/1 0/0 0/0 .rodata          @5175 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5175[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF0C8, &lit_5175);
#pragma pop

/* 809DF0D0-809DF0DC 000154 000C+00 0/1 0/0 0/0 .rodata          @5176 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5176[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809DF0D0, &lit_5176);
#pragma pop

/* 809DF0DC-809DF0E8 000160 000C+00 0/1 0/0 0/0 .rodata          @5177 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5177[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF0DC, &lit_5177);
#pragma pop

/* 809DF0E8-809DF0F0 00016C 0008+00 0/1 0/0 0/0 .rodata          @5178 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5178[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF0E8, &lit_5178);
#pragma pop

/* 809DF0F0-809DF0FC 000174 000C+00 0/1 0/0 0/0 .rodata          @5179 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5179[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809DF0F0, &lit_5179);
#pragma pop

/* 809DF0FC-809DF108 000180 000C+00 0/1 0/0 0/0 .rodata          @5180 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5180[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF0FC, &lit_5180);
#pragma pop

/* 809DF108-809DF110 00018C 0008+00 0/1 0/0 0/0 .rodata          @5181 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5181[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF108, &lit_5181);
#pragma pop

/* 809DF110-809DF11C 000194 000C+00 0/1 0/0 0/0 .rodata          @5182 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5182[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF110, &lit_5182);
#pragma pop

/* 809DF11C-809DF120 0001A0 0004+00 0/1 0/0 0/0 .rodata          @5183 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5183[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809DF11C, &lit_5183);
#pragma pop

/* 809DF120-809DF12C 0001A4 000C+00 0/1 0/0 0/0 .rodata          @5184 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5184[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF120, &lit_5184);
#pragma pop

/* 809DF12C-809DF130 0001B0 0004+00 0/1 0/0 0/0 .rodata          @5185 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5185[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809DF12C, &lit_5185);
#pragma pop

/* 809DF130-809DF13C 0001B4 000C+00 0/1 0/0 0/0 .rodata          @5186 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5186[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF130, &lit_5186);
#pragma pop

/* 809DF13C-809DF140 0001C0 0004+00 0/1 0/0 0/0 .rodata          @5187 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5187[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809DF13C, &lit_5187);
#pragma pop

/* 809DF140-809DF14C 0001C4 000C+00 0/1 0/0 0/0 .rodata          @5188 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5188[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF140, &lit_5188);
#pragma pop

/* 809DF14C-809DF150 0001D0 0004+00 0/1 0/0 0/0 .rodata          @5189 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5189[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809DF14C, &lit_5189);
#pragma pop

/* 809DF150-809DF15C 0001D4 000C+00 0/1 0/0 0/0 .rodata          @5190 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5190[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF150, &lit_5190);
#pragma pop

/* 809DF15C-809DF160 0001E0 0004+00 0/1 0/0 0/0 .rodata          @5191 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5191[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809DF15C, &lit_5191);
#pragma pop

/* 809DF160-809DF16C 0001E4 000C+00 0/1 0/0 0/0 .rodata          @5192 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5192[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF160, &lit_5192);
#pragma pop

/* 809DF16C-809DF170 0001F0 0004+00 0/1 0/0 0/0 .rodata          @5193 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5193[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809DF16C, &lit_5193);
#pragma pop

/* 809DC67C-809DCA68 0021FC 03EC+00 1/1 0/0 0/0 .text            playExpression__11daNpc_grO_cFv */
void daNpc_grO_c::playExpression() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809DF170-809DF1A4 0001F4 0034+00 0/0 0/0 0/0 .rodata          @5194 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5194[52] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF170, &lit_5194);
#pragma pop

/* 809DF1A4-809DF1B0 000228 000C+00 0/1 0/0 0/0 .rodata          @5222 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5222[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF1A4, &lit_5222);
#pragma pop

/* 809DF1B0-809DF1B4 000234 0004+00 0/1 0/0 0/0 .rodata          @5223 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5223[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809DF1B0, &lit_5223);
#pragma pop

/* 809DF1B4-809DF1C0 000238 000C+00 0/1 0/0 0/0 .rodata          @5224 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5224[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF1B4, &lit_5224);
#pragma pop

/* 809DF1C0-809DF1C4 000244 0004+00 0/1 0/0 0/0 .rodata          @5225 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5225[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809DF1C0, &lit_5225);
#pragma pop

/* 809DF1C4-809DF1D0 000248 000C+00 0/1 0/0 0/0 .rodata          @5226 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5226[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809DF1C4, &lit_5226);
#pragma pop

/* 809DF1D0-809DF1DC 000254 000C+00 0/1 0/0 0/0 .rodata          @5227 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5227[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF1D0, &lit_5227);
#pragma pop

/* 809DF1DC-809DF1E4 000260 0008+00 0/1 0/0 0/0 .rodata          @5228 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5228[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF1DC, &lit_5228);
#pragma pop

/* 809DF1E4-809DF1F0 000268 000C+00 0/1 0/0 0/0 .rodata          @5229 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5229[12] = {
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809DF1E4, &lit_5229);
#pragma pop

/* 809DF1F0-809DF1FC 000274 000C+00 0/1 0/0 0/0 .rodata          @5230 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5230[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF1F0, &lit_5230);
#pragma pop

/* 809DF1FC-809DF204 000280 0008+00 0/1 0/0 0/0 .rodata          @5231 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5231[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF1FC, &lit_5231);
#pragma pop

/* 809DF204-809DF210 000288 000C+00 0/1 0/0 0/0 .rodata          @5232 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5232[12] = {
    0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF204, &lit_5232);
#pragma pop

/* 809DF210-809DF214 000294 0004+00 0/1 0/0 0/0 .rodata          @5233 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5233[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809DF210, &lit_5233);
#pragma pop

/* 809DF214-809DF220 000298 000C+00 0/1 0/0 0/0 .rodata          @5234 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5234[12] = {
    0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809DF214, &lit_5234);
#pragma pop

/* 809DF220-809DF22C 0002A4 000C+00 0/1 0/0 0/0 .rodata          @5235 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5235[12] = {
    0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF220, &lit_5235);
#pragma pop

/* 809DF22C-809DF234 0002B0 0008+00 0/1 0/0 0/0 .rodata          @5236 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5236[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF22C, &lit_5236);
#pragma pop

/* 809DF234-809DF240 0002B8 000C+00 0/1 0/0 0/0 .rodata          @5237 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5237[12] = {
    0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809DF234, &lit_5237);
#pragma pop

/* 809DF240-809DF24C 0002C4 000C+00 0/1 0/0 0/0 .rodata          @5238 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5238[12] = {
    0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF240, &lit_5238);
#pragma pop

/* 809DF24C-809DF254 0002D0 0008+00 0/1 0/0 0/0 .rodata          @5239 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5239[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF24C, &lit_5239);
#pragma pop

/* 809DF254-809DF260 0002D8 000C+00 0/1 0/0 0/0 .rodata          @5240 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5240[12] = {
    0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF254, &lit_5240);
#pragma pop

/* 809DF260-809DF264 0002E4 0004+00 0/1 0/0 0/0 .rodata          @5241 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5241[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809DF260, &lit_5241);
#pragma pop

/* 809DF264-809DF270 0002E8 000C+00 0/1 0/0 0/0 .rodata          @5242 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5242[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF264, &lit_5242);
#pragma pop

/* 809DF270-809DF274 0002F4 0004+00 0/1 0/0 0/0 .rodata          @5243 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5243[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809DF270, &lit_5243);
#pragma pop

/* 809DCA68-809DCDA4 0025E8 033C+00 1/1 0/0 0/0 .text            playMotion__11daNpc_grO_cFv */
void daNpc_grO_c::playMotion() {
    // NONMATCHING
}

/* 809DCDA4-809DCDD0 002924 002C+00 2/2 0/0 0/0 .text
 * chkAction__11daNpc_grO_cFM11daNpc_grO_cFPCvPvPv_i            */
void daNpc_grO_c::chkAction(int (daNpc_grO_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809DCDD0-809DCE78 002950 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_grO_cFM11daNpc_grO_cFPCvPvPv_i            */
void daNpc_grO_c::setAction(int (daNpc_grO_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809DCE78-809DCF44 0029F8 00CC+00 1/1 0/0 0/0 .text            selectAction__11daNpc_grO_cFv */
void daNpc_grO_c::selectAction() {
    // NONMATCHING
}

/* 809DCF44-809DD070 002AC4 012C+00 1/1 0/0 0/0 .text            doNormalAction__11daNpc_grO_cFi */
void daNpc_grO_c::doNormalAction(int param_0) {
    // NONMATCHING
}

/* 809DD070-809DD3D8 002BF0 0368+00 1/1 0/0 0/0 .text            doEvent__11daNpc_grO_cFv */
void daNpc_grO_c::doEvent() {
    // NONMATCHING
}

/* 809DD3D8-809DD3FC 002F58 0024+00 9/9 0/0 0/0 .text            setLookMode__11daNpc_grO_cFi */
void daNpc_grO_c::setLookMode(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809DF274-809DF298 0002F8 0024+00 0/0 0/0 0/0 .rodata          @5244 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5244[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF274, &lit_5244);
#pragma pop

/* 809DF298-809DF2A4 00031C 000C+00 0/1 0/0 0/0 .rodata          @5421 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5421[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF298, &lit_5421);
#pragma pop

/* 809DF2A4-809DF2A8 000328 0004+00 0/1 0/0 0/0 .rodata          @5474 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5474 = -80.0f;
COMPILER_STRIP_GATE(0x809DF2A4, &lit_5474);
#pragma pop

/* 809DF2A8-809DF2AC 00032C 0004+00 0/1 0/0 0/0 .rodata          @5475 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5475 = 80.0f;
COMPILER_STRIP_GATE(0x809DF2A8, &lit_5475);
#pragma pop

/* 809DF2AC-809DF2B0 000330 0004+00 0/1 0/0 0/0 .rodata          @5476 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5476 = 40.0f;
COMPILER_STRIP_GATE(0x809DF2AC, &lit_5476);
#pragma pop

/* 809DD3FC-809DD684 002F7C 0288+00 1/1 0/0 0/0 .text            lookat__11daNpc_grO_cFv */
void daNpc_grO_c::lookat() {
    // NONMATCHING
}

/* 809DD684-809DD758 003204 00D4+00 1/1 0/0 0/0 .text setExpressionTalkAfter__11daNpc_grO_cFv */
void daNpc_grO_c::setExpressionTalkAfter() {
    // NONMATCHING
}

/* 809DD758-809DD960 0032D8 0208+00 1/0 0/0 0/0 .text            wait__11daNpc_grO_cFPv */
void daNpc_grO_c::wait(void* param_0) {
    // NONMATCHING
}

/* 809DD960-809DDB68 0034E0 0208+00 1/0 0/0 0/0 .text            bokinWait__11daNpc_grO_cFPv */
void daNpc_grO_c::bokinWait(void* param_0) {
    // NONMATCHING
}

/* 809DDB68-809DDCF8 0036E8 0190+00 1/0 0/0 0/0 .text            waitMaro__11daNpc_grO_cFPv */
void daNpc_grO_c::waitMaro(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809DF2B8-809DF2B8 00033C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809DF2E4 = "DEFAULT_GETITEM";
#pragma pop

/* 809DDCF8-809DE084 003878 038C+00 3/0 0/0 0/0 .text            talk__11daNpc_grO_cFPv */
void daNpc_grO_c::talk(void* param_0) {
    // NONMATCHING
}

/* 809DE084-809DE0D0 003C04 004C+00 1/1 0/0 0/0 .text            s_sub__FPvPv */
static void s_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809DF2B0-809DF2B8 000334 0008+00 1/1 0/0 0/0 .rodata          @5690 */
SECTION_RODATA static u8 const lit_5690[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809DF2B0, &lit_5690);

/* 809DF2B8-809DF2B8 00033C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809DF2F4 = "prm";
#pragma pop

/* 809DE0D0-809DE30C 003C50 023C+00 1/0 0/0 0/0 .text            ECut_bokinFinish__11daNpc_grO_cFi
 */
void daNpc_grO_c::ECut_bokinFinish(int param_0) {
    // NONMATCHING
}

/* 809DE30C-809DE4EC 003E8C 01E0+00 1/0 0/0 0/0 .text            cutPushOut__11daNpc_grO_cFi */
void daNpc_grO_c::cutPushOut(int param_0) {
    // NONMATCHING
}

/* 809DE4EC-809DE5D0 00406C 00E4+00 2/0 0/0 0/0 .text            test__11daNpc_grO_cFPv */
void daNpc_grO_c::test(void* param_0) {
    // NONMATCHING
}

/* 809DE5D0-809DE5F0 004150 0020+00 1/0 0/0 0/0 .text            daNpc_grO_Create__FPv */
static void daNpc_grO_Create(void* param_0) {
    // NONMATCHING
}

/* 809DE5F0-809DE610 004170 0020+00 1/0 0/0 0/0 .text            daNpc_grO_Delete__FPv */
static void daNpc_grO_Delete(void* param_0) {
    // NONMATCHING
}

/* 809DE610-809DE630 004190 0020+00 1/0 0/0 0/0 .text            daNpc_grO_Execute__FPv */
static void daNpc_grO_Execute(void* param_0) {
    // NONMATCHING
}

/* 809DE630-809DE650 0041B0 0020+00 1/0 0/0 0/0 .text            daNpc_grO_Draw__FPv */
static void daNpc_grO_Draw(void* param_0) {
    // NONMATCHING
}

/* 809DE650-809DE658 0041D0 0008+00 1/0 0/0 0/0 .text            daNpc_grO_IsDelete__FPv */
static bool daNpc_grO_IsDelete(void* param_0) {
    return true;
}

/* 809DE658-809DE688 0041D8 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 809DE688-809DE6D0 004208 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809DE6D0-809DE70C 004250 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809DE70C-809DE7DC 00428C 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 809DE7DC-809DE818 00435C 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 809DE818-809DE81C 004398 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 809DE81C-809DE858 00439C 003C+00 6/6 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 809DE858-809DE85C 0043D8 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 809DE85C-809DEAA8 0043DC 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809DEAA8-809DEC98 004628 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809DEC98-809DED08 004818 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809DED08-809DED64 004888 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 809DED64-809DEDD4 0048E4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809DEDD4-809DEE1C 004954 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 809DEE1C-809DEE20 00499C 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 809DEE20-809DEE68 0049A0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809DF6EC-809DF6F8 0003F4 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_grO_Param_c */
SECTION_DATA extern void* __vt__17daNpc_grO_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_grO_Param_cFv,
};

/* 809DEE68-809DEF0C 0049E8 00A4+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_gro_cpp */
void __sinit_d_a_npc_gro_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x809DEE68, __sinit_d_a_npc_gro_cpp);
#pragma pop

/* 809DEF0C-809DEF10 004A8C 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__11daNpc_grO_cFv
 */
void daNpc_grO_c::adjustShapeAngle() {
    /* empty function */
}

/* 809DEF10-809DEF58 004A90 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_grO_Param_cFv */
daNpc_grO_Param_c::~daNpc_grO_Param_c() {
    // NONMATCHING
}

/* 809DEF58-809DEF60 004AD8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809DEF58() {
    // NONMATCHING
}

/* 809DEF60-809DEF68 004AE0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809DEF60() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809DF76C-809DF770 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_809DF76C[4];
#pragma pop

/* 809DF770-809DF774 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_809DF770[4];
#pragma pop

/* 809DF774-809DF778 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_809DF774[4];
#pragma pop

/* 809DF778-809DF77C 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_809DF778[4];
#pragma pop

/* 809DF77C-809DF780 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809DF77C[4];
#pragma pop

/* 809DF780-809DF784 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809DF780[4];
#pragma pop

/* 809DF784-809DF788 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_809DF784[4];
#pragma pop

/* 809DF788-809DF78C 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_809DF788[4];
#pragma pop

/* 809DF78C-809DF790 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_809DF78C[4];
#pragma pop

/* 809DF790-809DF794 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_809DF790[4];
#pragma pop

/* 809DF794-809DF798 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_809DF794[4];
#pragma pop

/* 809DF798-809DF79C 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_809DF798[4];
#pragma pop

/* 809DF79C-809DF7A0 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_809DF79C[4];
#pragma pop

/* 809DF7A0-809DF7A4 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809DF7A0[4];
#pragma pop

/* 809DF7A4-809DF7A8 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_809DF7A4[4];
#pragma pop

/* 809DF7A8-809DF7AC 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_809DF7A8[4];
#pragma pop

/* 809DF7AC-809DF7B0 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_809DF7AC[4];
#pragma pop

/* 809DF7B0-809DF7B4 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_809DF7B0[4];
#pragma pop

/* 809DF7B4-809DF7B8 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_809DF7B4[4];
#pragma pop

/* 809DF7B8-809DF7BC 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_809DF7B8[4];
#pragma pop

/* 809DF7BC-809DF7C0 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_809DF7BC[4];
#pragma pop

/* 809DF7C0-809DF7C4 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809DF7C0[4];
#pragma pop

/* 809DF7C4-809DF7C8 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809DF7C4[4];
#pragma pop

/* 809DF7C8-809DF7CC 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809DF7C8[4];
#pragma pop

/* 809DF7CC-809DF7D0 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_809DF7CC[4];
#pragma pop

/* 809DF2B8-809DF2B8 00033C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
