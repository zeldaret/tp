/**
 * @file d_a_npc_grc.cpp
 * 
*/

#include "d/actor/d_a_npc_grc.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__11daNpc_grC_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__11daNpc_grC_cFv();
extern "C" void create__11daNpc_grC_cFv();
extern "C" void CreateHeap__11daNpc_grC_cFv();
extern "C" void Delete__11daNpc_grC_cFv();
extern "C" void Execute__11daNpc_grC_cFv();
extern "C" void Draw__11daNpc_grC_cFv();
extern "C" void ctrlJoint__11daNpc_grC_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__11daNpc_grC_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_grC_cFP8J3DJointi();
extern "C" void setParam__11daNpc_grC_cFv();
extern "C" void main__11daNpc_grC_cFv();
extern "C" bool ctrlBtk__11daNpc_grC_cFv();
extern "C" void setAttnPos__11daNpc_grC_cFv();
extern "C" void setExpressionAnm__11daNpc_grC_cFib();
extern "C" void setExpressionBtp__11daNpc_grC_cFi();
extern "C" void setExpression__11daNpc_grC_cFif();
extern "C" void setMotionAnm__11daNpc_grC_cFif();
extern "C" void setMotion__11daNpc_grC_cFifi();
extern "C" bool drawDbgInfo__11daNpc_grC_cFv();
extern "C" void drawOtherMdls__11daNpc_grC_cFv();
extern "C" void getTypeFromParam__11daNpc_grC_cFv();
extern "C" void isDelete__11daNpc_grC_cFv();
extern "C" void reset__11daNpc_grC_cFv();
extern "C" void playExpression__11daNpc_grC_cFv();
extern "C" void playMotion__11daNpc_grC_cFv();
extern "C" void chkAction__11daNpc_grC_cFM11daNpc_grC_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_grC_cFM11daNpc_grC_cFPCvPvPv_i();
extern "C" void selectAction__11daNpc_grC_cFv();
extern "C" void doNormalAction__11daNpc_grC_cFi();
extern "C" void doEvent__11daNpc_grC_cFv();
extern "C" void setLookMode__11daNpc_grC_cFi();
extern "C" void lookat__11daNpc_grC_cFv();
extern "C" void chkFindPlayer__11daNpc_grC_cFv();
extern "C" void setExpressionTalkAfter__11daNpc_grC_cFv();
extern "C" void wait__11daNpc_grC_cFPv();
extern "C" void waitTW__11daNpc_grC_cFPv();
extern "C" void waitSpa__11daNpc_grC_cFPv();
extern "C" void waitBuyer__11daNpc_grC_cFPv();
extern "C" void talk__11daNpc_grC_cFPv();
extern "C" void test__11daNpc_grC_cFPv();
extern "C" void setPrtcl__11daNpc_grC_cFv();
extern "C" static void daNpc_grC_Create__FPv();
extern "C" static void daNpc_grC_Delete__FPv();
extern "C" static void daNpc_grC_Execute__FPv();
extern "C" static void daNpc_grC_Draw__FPv();
extern "C" static bool daNpc_grC_IsDelete__FPv();
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
extern "C" void __sinit_d_a_npc_grc_cpp();
extern "C" void adjustShapeAngle__11daNpc_grC_cFv();
extern "C" void __dt__17daNpc_grC_Param_cFv();
extern "C" static void func_809CF4F8();
extern "C" static void func_809CF500();
extern "C" u8 const m__17daNpc_grC_Param_c[108];
extern "C" extern char const* const d_a_npc_grc__stringBase0;
extern "C" void* mEvtCutNameList__11daNpc_grC_c;
extern "C" u8 mEvtCutList__11daNpc_grC_c[12];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
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
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff();
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
extern "C" void chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void step__8daNpcF_cFsiii();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii();
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
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 809CF7F0-809CF7F0 0002D4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809CF7F0 = "grC";
SECTION_DEAD static char const* const stringBase_809CF7F4 = "grC_Mdl";
SECTION_DEAD static char const* const stringBase_809CF7FC = "grC_TW";
SECTION_DEAD static char const* const stringBase_809CF803 = "";
#pragma pop

/* 809CF81C-809CF828 000000 000C+00 4/4 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 809CF828-809CF83C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 809CF83C-809CF84C 000020 0010+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
SECTION_DATA static u8 l_bmdGetParamList[16] = {
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02,
};

/* 809CF84C-809CF8E4 000030 0098+00 1/2 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[152] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00,
};

/* 809CF8E4-809CF914 0000C8 0030+00 1/1 0/0 0/0 .data            l_btpGetParamList */
SECTION_DATA static u8 l_btpGetParamList[48] = {
    0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00,
};

/* 809CF914-809CF91C 0000F8 0008+00 0/1 0/0 0/0 .data            l_btkGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_btkGetParamList[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 809CF91C-809CF924 000100 0008+00 0/1 0/0 0/0 .data            l_evtGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_evtGetParamList[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 809CF924-809CF930 000108 000C+00 1/0 0/0 0/0 .data            l_loadRes_GRCa */
SECTION_DATA static u8 l_loadRes_GRCa[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809CF930-809CF93C 000114 000C+00 1/0 0/0 0/0 .data            l_loadRes_GRCa_TW */
SECTION_DATA static u8 l_loadRes_GRCa_TW[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809CF93C-809CF948 000120 000C+00 1/0 0/0 0/0 .data            l_loadRes_GRC0 */
SECTION_DATA static u8 l_loadRes_GRC0[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809CF948-809CF964 -00001 001C+00 2/2 0/0 0/0 .data            l_loadRes_list */
SECTION_DATA static void* l_loadRes_list[7] = {
    (void*)&l_loadRes_GRCa, (void*)&l_loadRes_GRCa_TW, (void*)&l_loadRes_GRCa,
    (void*)&l_loadRes_GRCa, (void*)&l_loadRes_GRCa,    (void*)&l_loadRes_GRCa,
    (void*)&l_loadRes_GRC0,
};

/* 809CF964-809CF970 -00001 000C+00 5/7 0/0 0/0 .data            l_resNames */
SECTION_DATA static void* l_resNames[3] = {
    (void*)&d_a_npc_grc__stringBase0,
    (void*)(((char*)&d_a_npc_grc__stringBase0) + 0x4),
    (void*)(((char*)&d_a_npc_grc__stringBase0) + 0xC),
};

/* 809CF970-809CF974 000154 0004+00 0/1 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_evtNames[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
#pragma pop

/* 809CF974-809CF978 -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)&d_a_npc_grc__stringBase0;
#pragma pop

/* 809CF978-809CF97C -00001 0004+00 0/1 0/0 0/0 .data            mEvtCutNameList__11daNpc_grC_c */
#pragma push
#pragma force_active on
SECTION_DATA void* daNpc_grC_c::mEvtCutNameList =
    (void*)(((char*)&d_a_npc_grc__stringBase0) + 0x13);
#pragma pop

/* 809CF97C-809CF988 000160 000C+00 1/2 0/0 0/0 .data            mEvtCutList__11daNpc_grC_c */
SECTION_DATA u8 daNpc_grC_c::mEvtCutList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 809CF988-809CF994 -00001 000C+00 1/1 0/0 0/0 .data            @4469 */
SECTION_DATA static void* lit_4469[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__11daNpc_grC_cFPv,
};

/* 809CF994-809CF9BC -00001 0028+00 1/1 0/0 0/0 .data            @4874 */
SECTION_DATA static void* lit_4874[10] = {
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0x90),
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0xAC),
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0xCC),
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0xEC),
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0x10C),
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0x12C),
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0x14C),
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0x168),
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0x184),
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0x1A0),
};

/* 809CF9BC-809CF9E0 -00001 0024+00 1/1 0/0 0/0 .data            @4946 */
SECTION_DATA static void* lit_4946[9] = {
    (void*)(((char*)setMotionAnm__11daNpc_grC_cFif) + 0xCC),
    (void*)(((char*)setMotionAnm__11daNpc_grC_cFif) + 0xCC),
    (void*)(((char*)setMotionAnm__11daNpc_grC_cFif) + 0x9C),
    (void*)(((char*)setMotionAnm__11daNpc_grC_cFif) + 0xA4),
    (void*)(((char*)setMotionAnm__11daNpc_grC_cFif) + 0xCC),
    (void*)(((char*)setMotionAnm__11daNpc_grC_cFif) + 0xAC),
    (void*)(((char*)setMotionAnm__11daNpc_grC_cFif) + 0xB4),
    (void*)(((char*)setMotionAnm__11daNpc_grC_cFif) + 0xCC),
    (void*)(((char*)setMotionAnm__11daNpc_grC_cFif) + 0xBC),
};

/* 809CF9E0-809CF9EC -00001 000C+00 0/1 0/0 0/0 .data            @5149 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5149[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__11daNpc_grC_cFPv,
};
#pragma pop

/* 809CF9EC-809CF9F8 -00001 000C+00 0/1 0/0 0/0 .data            @5153 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5153[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitTW__11daNpc_grC_cFPv,
};
#pragma pop

/* 809CF9F8-809CFA04 -00001 000C+00 0/1 0/0 0/0 .data            @5155 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5155[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitSpa__11daNpc_grC_cFPv,
};
#pragma pop

/* 809CFA04-809CFA10 -00001 000C+00 0/1 0/0 0/0 .data            @5157 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5157[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitBuyer__11daNpc_grC_cFPv,
};
#pragma pop

/* 809CFA10-809CFA1C -00001 000C+00 0/1 0/0 0/0 .data            @5159 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5159[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_grC_cFPv,
};
#pragma pop

/* 809CFA1C-809CFA28 -00001 000C+00 0/1 0/0 0/0 .data            @5199 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5199[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_grC_cFPv,
};
#pragma pop

/* 809CFA28-809CFA34 -00001 000C+00 0/1 0/0 0/0 .data            @5207 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5207[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_grC_cFPv,
};
#pragma pop

/* 809CFA34-809CFA54 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_grC_MethodTable */
static actor_method_class daNpc_grC_MethodTable = {
    (process_method_func)daNpc_grC_Create__FPv,
    (process_method_func)daNpc_grC_Delete__FPv,
    (process_method_func)daNpc_grC_Execute__FPv,
    (process_method_func)daNpc_grC_IsDelete__FPv,
    (process_method_func)daNpc_grC_Draw__FPv,
};

/* 809CFA54-809CFA84 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_GRC */
extern actor_process_profile_definition g_profile_NPC_GRC = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_GRC,           // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daNpc_grC_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  307,                    // mPriority
  &daNpc_grC_MethodTable, // sub_method
  0x00044100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 809CFA84-809CFACC 000268 0048+00 2/2 0/0 0/0 .data            __vt__11daNpc_grC_c */
SECTION_DATA extern void* __vt__11daNpc_grC_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_grC_cFv,
    (void*)setParam__11daNpc_grC_cFv,
    (void*)main__11daNpc_grC_cFv,
    (void*)ctrlBtk__11daNpc_grC_cFv,
    (void*)adjustShapeAngle__11daNpc_grC_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__11daNpc_grC_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__11daNpc_grC_cFib,
    (void*)setExpressionBtp__11daNpc_grC_cFi,
    (void*)setExpression__11daNpc_grC_cFif,
    (void*)setMotionAnm__11daNpc_grC_cFif,
    (void*)setMotion__11daNpc_grC_cFifi,
    (void*)drawDbgInfo__11daNpc_grC_cFv,
    (void*)drawOtherMdls__11daNpc_grC_cFv,
};

/* 809CFACC-809CFAD8 0002B0 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 809CFAD8-809CFAFC 0002BC 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809CF500,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809CF4F8,
};

/* 809CFAFC-809CFB08 0002E0 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 809CFB08-809CFB14 0002EC 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 809CFB14-809CFB20 0002F8 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 809CFB20-809CFB2C 000304 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 809CFB2C-809CFB38 000310 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 809CFB38-809CFB44 00031C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 809CFB44-809CFB50 000328 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 809CB4CC-809CB650 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__11daNpc_grC_cFv */
daNpc_grC_c::daNpc_grC_c() {
    // NONMATCHING
}

/* 809CB650-809CB698 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 809CB698-809CB6E0 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 809CB6E0-809CB8E0 000300 0200+00 1/0 0/0 0/0 .text            __dt__11daNpc_grC_cFv */
daNpc_grC_c::~daNpc_grC_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CF51C-809CF588 000000 006C+00 13/13 0/0 0/0 .rodata          m__17daNpc_grC_Param_c */
SECTION_RODATA u8 const daNpc_grC_Param_c::m[108] = {
    0x42, 0x20, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x0C, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x04, 0x00, 0x06, 0x00, 0x06, 0x00, 0x06,
    0x43, 0x34, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF51C, &daNpc_grC_Param_c::m);

/* 809CF588-809CF58C 00006C 0004+00 0/1 0/0 0/0 .rodata          @4397 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4397 = -300.0f;
COMPILER_STRIP_GATE(0x809CF588, &lit_4397);
#pragma pop

/* 809CF58C-809CF590 000070 0004+00 0/1 0/0 0/0 .rodata          @4398 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4398 = -50.0f;
COMPILER_STRIP_GATE(0x809CF58C, &lit_4398);
#pragma pop

/* 809CF590-809CF594 000074 0004+00 0/1 0/0 0/0 .rodata          @4399 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4399 = 300.0f;
COMPILER_STRIP_GATE(0x809CF590, &lit_4399);
#pragma pop

/* 809CF594-809CF598 000078 0004+00 0/1 0/0 0/0 .rodata          @4400 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4400 = 450.0f;
COMPILER_STRIP_GATE(0x809CF594, &lit_4400);
#pragma pop

/* 809CB8E0-809CBBD4 000500 02F4+00 1/1 0/0 0/0 .text            create__11daNpc_grC_cFv */
void daNpc_grC_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CF598-809CF59C 00007C 0004+00 5/5 0/0 0/0 .rodata          @4454 */
SECTION_RODATA static f32 const lit_4454 = 1.0f;
COMPILER_STRIP_GATE(0x809CF598, &lit_4454);

/* 809CF59C-809CF5A0 000080 0004+00 4/6 0/0 0/0 .rodata          @4455 */
SECTION_RODATA static u8 const lit_4455[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CF59C, &lit_4455);

/* 809CBBD4-809CBDC4 0007F4 01F0+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_grC_cFv */
void daNpc_grC_c::CreateHeap() {
    // NONMATCHING
}

/* 809CBDC4-809CBDF8 0009E4 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_grC_cFv */
void daNpc_grC_c::Delete() {
    // NONMATCHING
}

/* 809CBDF8-809CBE18 000A18 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_grC_cFv */
void daNpc_grC_c::Execute() {
    // NONMATCHING
}

/* 809CBE18-809CBE8C 000A38 0074+00 1/1 0/0 0/0 .text            Draw__11daNpc_grC_cFv */
void daNpc_grC_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CF5A0-809CF5AC 000084 000C+00 1/1 0/0 0/0 .rodata          @4478 */
SECTION_RODATA static u8 const lit_4478[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x809CF5A0, &lit_4478);

/* 809CBE8C-809CC0C0 000AAC 0234+00 1/1 0/0 0/0 .text
 * ctrlJoint__11daNpc_grC_cFP8J3DJointP8J3DModel                */
void daNpc_grC_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 809CC0C0-809CC0E0 000CE0 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_grC_cFP10fopAc_ac_c              */
void daNpc_grC_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809CC0E0-809CC12C 000D00 004C+00 2/2 0/0 0/0 .text ctrlJointCallBack__11daNpc_grC_cFP8J3DJointi
 */
void daNpc_grC_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 809CC12C-809CC26C 000D4C 0140+00 1/0 0/0 0/0 .text            setParam__11daNpc_grC_cFv */
void daNpc_grC_c::setParam() {
    // NONMATCHING
}

/* 809CC26C-809CC3EC 000E8C 0180+00 1/0 0/0 0/0 .text            main__11daNpc_grC_cFv */
void daNpc_grC_c::main() {
    // NONMATCHING
}

/* 809CC3EC-809CC3F4 00100C 0008+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpc_grC_cFv */
bool daNpc_grC_c::ctrlBtk() {
    return false;
}

/* ############################################################################################## */
/* 809CF5AC-809CF5B0 000090 0004+00 0/1 0/0 0/0 .rodata          @4839 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4839 = 16.0f;
COMPILER_STRIP_GATE(0x809CF5AC, &lit_4839);
#pragma pop

/* 809CF5B0-809CF5B4 000094 0004+00 0/1 0/0 0/0 .rodata          @4840 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4840 = 60.0f;
COMPILER_STRIP_GATE(0x809CF5B0, &lit_4840);
#pragma pop

/* 809CF5B4-809CF5B8 000098 0004+00 0/1 0/0 0/0 .rodata          @4841 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4841 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x809CF5B4, &lit_4841);
#pragma pop

/* 809CF5B8-809CF5BC 00009C 0004+00 0/1 0/0 0/0 .rodata          @4842 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4842 = 125.0f;
COMPILER_STRIP_GATE(0x809CF5B8, &lit_4842);
#pragma pop

/* 809CF5BC-809CF5C4 0000A0 0008+00 0/1 0/0 0/0 .rodata          @4843 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4843[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF5BC, &lit_4843);
#pragma pop

/* 809CF5C4-809CF5CC 0000A8 0008+00 0/1 0/0 0/0 .rodata          @4844 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4844[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF5C4, &lit_4844);
#pragma pop

/* 809CF5CC-809CF5D4 0000B0 0008+00 0/1 0/0 0/0 .rodata          @4845 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4845[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF5CC, &lit_4845);
#pragma pop

/* 809CFB68-809CFB6C 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 809CFB6C-809CFB70 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 809CFB70-809CFB74 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 809CFB74-809CFB78 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 809CFB78-809CFB7C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 809CFB7C-809CFB80 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 809CFB80-809CFB84 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 809CFB84-809CFB88 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 809CFB88-809CFB8C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 809CFB8C-809CFB90 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 809CFB90-809CFB94 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 809CFB94-809CFB98 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 809CFB98-809CFB9C 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 809CFB9C-809CFBA0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 809CFBA0-809CFBA4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 809CFBA4-809CFBA8 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 809CFBA8-809CFBB4 000048 000C+00 1/1 0/0 0/0 .bss             @4019 */
static u8 lit_4019[12];

/* 809CFBB4-809CFBB8 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 809CFBB8-809CFBC8 000058 000C+04 0/1 0/0 0/0 .bss             @4659 */
#pragma push
#pragma force_active on
static u8 lit_4659[12 + 4 /* padding */];
#pragma pop

/* 809CFBC8-809CFBD4 000068 000C+00 0/1 0/0 0/0 .bss             eyeOffset$4658 */
#pragma push
#pragma force_active on
static u8 eyeOffset[12];
#pragma pop

/* 809CC3F4-809CC930 001014 053C+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_grC_cFv */
void daNpc_grC_c::setAttnPos() {
    // NONMATCHING
}

/* 809CC930-809CCB78 001550 0248+00 2/0 0/0 0/0 .text            setExpressionAnm__11daNpc_grC_cFib
 */
void daNpc_grC_c::setExpressionAnm(int param_0, bool param_1) {
    // NONMATCHING
}

/* 809CCB78-809CCCA4 001798 012C+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpc_grC_cFi
 */
void daNpc_grC_c::setExpressionBtp(int param_0) {
    // NONMATCHING
}

/* 809CCCA4-809CCCD0 0018C4 002C+00 1/0 0/0 0/0 .text            setExpression__11daNpc_grC_cFif */
void daNpc_grC_c::setExpression(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 809CCCD0-809CCE70 0018F0 01A0+00 2/0 0/0 0/0 .text            setMotionAnm__11daNpc_grC_cFif */
void daNpc_grC_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 809CCE70-809CCEB4 001A90 0044+00 1/0 0/0 0/0 .text            setMotion__11daNpc_grC_cFifi */
void daNpc_grC_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 809CCEB4-809CCEBC 001AD4 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_grC_cFv */
bool daNpc_grC_c::drawDbgInfo() {
    return false;
}

/* 809CCEBC-809CCEC0 001ADC 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__11daNpc_grC_cFv */
void daNpc_grC_c::drawOtherMdls() {
    /* empty function */
}

/* 809CCEC0-809CCF38 001AE0 0078+00 1/1 0/0 0/0 .text            getTypeFromParam__11daNpc_grC_cFv
 */
void daNpc_grC_c::getTypeFromParam() {
    // NONMATCHING
}

/* 809CCF38-809CCFBC 001B58 0084+00 1/1 0/0 0/0 .text            isDelete__11daNpc_grC_cFv */
void daNpc_grC_c::isDelete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CF5D4-809CF5D8 0000B8 0004+00 8/8 0/0 0/0 .rodata          @5043 */
SECTION_RODATA static f32 const lit_5043 = -1.0f;
COMPILER_STRIP_GATE(0x809CF5D4, &lit_5043);

/* 809CCFBC-809CD1B4 001BDC 01F8+00 1/1 0/0 0/0 .text            reset__11daNpc_grC_cFv */
void daNpc_grC_c::reset() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CF5D8-809CF5E4 0000BC 000C+00 0/1 0/0 0/0 .rodata          @5047 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5047[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CF5D8, &lit_5047);
#pragma pop

/* 809CF5E4-809CF5F0 0000C8 000C+00 0/1 0/0 0/0 .rodata          @5048 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5048[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF5E4, &lit_5048);
#pragma pop

/* 809CF5F0-809CF5F8 0000D4 0008+00 0/1 0/0 0/0 .rodata          @5049 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5049[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF5F0, &lit_5049);
#pragma pop

/* 809CF5F8-809CF604 0000DC 000C+00 0/1 0/0 0/0 .rodata          @5050 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5050[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CF5F8, &lit_5050);
#pragma pop

/* 809CF604-809CF610 0000E8 000C+00 0/1 0/0 0/0 .rodata          @5051 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5051[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF604, &lit_5051);
#pragma pop

/* 809CF610-809CF618 0000F4 0008+00 0/1 0/0 0/0 .rodata          @5052 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5052[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF610, &lit_5052);
#pragma pop

/* 809CF618-809CF624 0000FC 000C+00 0/1 0/0 0/0 .rodata          @5053 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5053[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CF618, &lit_5053);
#pragma pop

/* 809CF624-809CF630 000108 000C+00 0/1 0/0 0/0 .rodata          @5054 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5054[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF624, &lit_5054);
#pragma pop

/* 809CF630-809CF638 000114 0008+00 0/1 0/0 0/0 .rodata          @5055 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5055[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF630, &lit_5055);
#pragma pop

/* 809CF638-809CF644 00011C 000C+00 0/1 0/0 0/0 .rodata          @5056 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5056[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CF638, &lit_5056);
#pragma pop

/* 809CF644-809CF650 000128 000C+00 0/1 0/0 0/0 .rodata          @5057 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5057[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF644, &lit_5057);
#pragma pop

/* 809CF650-809CF658 000134 0008+00 0/1 0/0 0/0 .rodata          @5058 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5058[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF650, &lit_5058);
#pragma pop

/* 809CF658-809CF664 00013C 000C+00 0/1 0/0 0/0 .rodata          @5059 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5059[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF658, &lit_5059);
#pragma pop

/* 809CF664-809CF668 000148 0004+00 0/1 0/0 0/0 .rodata          @5060 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5060[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CF664, &lit_5060);
#pragma pop

/* 809CF668-809CF674 00014C 000C+00 0/1 0/0 0/0 .rodata          @5061 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5061[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF668, &lit_5061);
#pragma pop

/* 809CF674-809CF678 000158 0004+00 0/1 0/0 0/0 .rodata          @5062 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5062[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CF674, &lit_5062);
#pragma pop

/* 809CF678-809CF684 00015C 000C+00 0/1 0/0 0/0 .rodata          @5063 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5063[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF678, &lit_5063);
#pragma pop

/* 809CF684-809CF688 000168 0004+00 0/1 0/0 0/0 .rodata          @5064 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5064[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CF684, &lit_5064);
#pragma pop

/* 809CF688-809CF694 00016C 000C+00 0/1 0/0 0/0 .rodata          @5065 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5065[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF688, &lit_5065);
#pragma pop

/* 809CF694-809CF698 000178 0004+00 0/1 0/0 0/0 .rodata          @5066 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5066[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CF694, &lit_5066);
#pragma pop

/* 809CF698-809CF6A4 00017C 000C+00 0/1 0/0 0/0 .rodata          @5067 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5067[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF698, &lit_5067);
#pragma pop

/* 809CF6A4-809CF6A8 000188 0004+00 0/1 0/0 0/0 .rodata          @5068 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5068[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CF6A4, &lit_5068);
#pragma pop

/* 809CD1B4-809CD4AC 001DD4 02F8+00 1/1 0/0 0/0 .text            playExpression__11daNpc_grC_cFv */
void daNpc_grC_c::playExpression() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CF6A8-809CF6E4 00018C 003C+00 0/0 0/0 0/0 .rodata          @5069 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5069[60] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF6A8, &lit_5069);
#pragma pop

/* 809CF6E4-809CF6F0 0001C8 000C+00 0/1 0/0 0/0 .rodata          @5092 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5092[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF6E4, &lit_5092);
#pragma pop

/* 809CF6F0-809CF6F4 0001D4 0004+00 0/1 0/0 0/0 .rodata          @5093 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5093[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CF6F0, &lit_5093);
#pragma pop

/* 809CF6F4-809CF700 0001D8 000C+00 0/1 0/0 0/0 .rodata          @5094 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5094[12] = {
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CF6F4, &lit_5094);
#pragma pop

/* 809CF700-809CF70C 0001E4 000C+00 0/1 0/0 0/0 .rodata          @5095 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5095[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF700, &lit_5095);
#pragma pop

/* 809CF70C-809CF714 0001F0 0008+00 0/1 0/0 0/0 .rodata          @5096 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5096[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF70C, &lit_5096);
#pragma pop

/* 809CF714-809CF720 0001F8 000C+00 0/1 0/0 0/0 .rodata          @5097 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5097[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF714, &lit_5097);
#pragma pop

/* 809CF720-809CF724 000204 0004+00 0/1 0/0 0/0 .rodata          @5098 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5098[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CF720, &lit_5098);
#pragma pop

/* 809CF724-809CF730 000208 000C+00 0/1 0/0 0/0 .rodata          @5099 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5099[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CF724, &lit_5099);
#pragma pop

/* 809CF730-809CF73C 000214 000C+00 0/1 0/0 0/0 .rodata          @5100 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5100[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF730, &lit_5100);
#pragma pop

/* 809CF73C-809CF744 000220 0008+00 0/1 0/0 0/0 .rodata          @5101 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5101[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF73C, &lit_5101);
#pragma pop

/* 809CF744-809CF750 000228 000C+00 0/1 0/0 0/0 .rodata          @5102 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5102[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CF744, &lit_5102);
#pragma pop

/* 809CF750-809CF75C 000234 000C+00 0/1 0/0 0/0 .rodata          @5103 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5103[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF750, &lit_5103);
#pragma pop

/* 809CF75C-809CF764 000240 0008+00 0/1 0/0 0/0 .rodata          @5104 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5104[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF75C, &lit_5104);
#pragma pop

/* 809CF764-809CF770 000248 000C+00 0/1 0/0 0/0 .rodata          @5105 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5105[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF764, &lit_5105);
#pragma pop

/* 809CF770-809CF774 000254 0004+00 0/1 0/0 0/0 .rodata          @5106 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5106[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CF770, &lit_5106);
#pragma pop

/* 809CF774-809CF780 000258 000C+00 0/1 0/0 0/0 .rodata          @5107 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5107[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CF774, &lit_5107);
#pragma pop

/* 809CF780-809CF78C 000264 000C+00 0/1 0/0 0/0 .rodata          @5108 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5108[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF780, &lit_5108);
#pragma pop

/* 809CF78C-809CF794 000270 0008+00 0/1 0/0 0/0 .rodata          @5109 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5109[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF78C, &lit_5109);
#pragma pop

/* 809CF794-809CF7A0 000278 000C+00 0/1 0/0 0/0 .rodata          @5110 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5110[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF794, &lit_5110);
#pragma pop

/* 809CF7A0-809CF7A4 000284 0004+00 0/1 0/0 0/0 .rodata          @5111 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5111[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CF7A0, &lit_5111);
#pragma pop

/* 809CF7A4-809CF7B0 000288 000C+00 0/1 0/0 0/0 .rodata          @5112 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5112[12] = {
    0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF7A4, &lit_5112);
#pragma pop

/* 809CF7B0-809CF7B4 000294 0004+00 0/1 0/0 0/0 .rodata          @5113 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5113[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CF7B0, &lit_5113);
#pragma pop

/* 809CD4AC-809CD794 0020CC 02E8+00 1/1 0/0 0/0 .text            playMotion__11daNpc_grC_cFv */
void daNpc_grC_c::playMotion() {
    // NONMATCHING
}

/* 809CD794-809CD7C0 0023B4 002C+00 2/2 0/0 0/0 .text
 * chkAction__11daNpc_grC_cFM11daNpc_grC_cFPCvPvPv_i            */
void daNpc_grC_c::chkAction(int (daNpc_grC_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809CD7C0-809CD868 0023E0 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_grC_cFM11daNpc_grC_cFPCvPvPv_i            */
void daNpc_grC_c::setAction(int (daNpc_grC_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809CD868-809CD960 002488 00F8+00 1/1 0/0 0/0 .text            selectAction__11daNpc_grC_cFv */
void daNpc_grC_c::selectAction() {
    // NONMATCHING
}

/* 809CD960-809CDA74 002580 0114+00 1/1 0/0 0/0 .text            doNormalAction__11daNpc_grC_cFi */
void daNpc_grC_c::doNormalAction(int param_0) {
    // NONMATCHING
}

/* 809CDA74-809CDD50 002694 02DC+00 1/1 0/0 0/0 .text            doEvent__11daNpc_grC_cFv */
void daNpc_grC_c::doEvent() {
    // NONMATCHING
}

/* 809CDD50-809CDD74 002970 0024+00 7/7 0/0 0/0 .text            setLookMode__11daNpc_grC_cFi */
void daNpc_grC_c::setLookMode(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CF7B4-809CF7D8 000298 0024+00 0/0 0/0 0/0 .rodata          @5114 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5114[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF7B4, &lit_5114);
#pragma pop

/* 809CF7D8-809CF7E4 0002BC 000C+00 0/1 0/0 0/0 .rodata          @5264 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5264[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF7D8, &lit_5264);
#pragma pop

/* 809CF7E4-809CF7E8 0002C8 0004+00 0/1 0/0 0/0 .rodata          @5317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5317 = -80.0f;
COMPILER_STRIP_GATE(0x809CF7E4, &lit_5317);
#pragma pop

/* 809CF7E8-809CF7EC 0002CC 0004+00 0/1 0/0 0/0 .rodata          @5318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5318 = 80.0f;
COMPILER_STRIP_GATE(0x809CF7E8, &lit_5318);
#pragma pop

/* 809CF7EC-809CF7F0 0002D0 0004+00 0/1 0/0 0/0 .rodata          @5319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5319 = 40.0f;
COMPILER_STRIP_GATE(0x809CF7EC, &lit_5319);
#pragma pop

/* 809CDD74-809CDFFC 002994 0288+00 1/1 0/0 0/0 .text            lookat__11daNpc_grC_cFv */
void daNpc_grC_c::lookat() {
    // NONMATCHING
}

/* 809CDFFC-809CE12C 002C1C 0130+00 3/3 0/0 0/0 .text            chkFindPlayer__11daNpc_grC_cFv */
void daNpc_grC_c::chkFindPlayer() {
    // NONMATCHING
}

/* 809CE12C-809CE1F8 002D4C 00CC+00 1/1 0/0 0/0 .text setExpressionTalkAfter__11daNpc_grC_cFv */
void daNpc_grC_c::setExpressionTalkAfter() {
    // NONMATCHING
}

/* 809CE1F8-809CE3A8 002E18 01B0+00 1/0 0/0 0/0 .text            wait__11daNpc_grC_cFPv */
void daNpc_grC_c::wait(void* param_0) {
    // NONMATCHING
}

/* 809CE3A8-809CE490 002FC8 00E8+00 1/0 0/0 0/0 .text            waitTW__11daNpc_grC_cFPv */
void daNpc_grC_c::waitTW(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CF7F0-809CF7F0 0002D4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809CF804 = "F_SP110";
#pragma pop

/* 809CE490-809CE688 0030B0 01F8+00 1/0 0/0 0/0 .text            waitSpa__11daNpc_grC_cFPv */
void daNpc_grC_c::waitSpa(void* param_0) {
    // NONMATCHING
}

/* 809CE688-809CE7C4 0032A8 013C+00 1/0 0/0 0/0 .text            waitBuyer__11daNpc_grC_cFPv */
void daNpc_grC_c::waitBuyer(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CF7F0-809CF7F0 0002D4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809CF80C = "DEFAULT_GETITEM";
#pragma pop

/* 809CE7C4-809CEA6C 0033E4 02A8+00 2/0 0/0 0/0 .text            talk__11daNpc_grC_cFPv */
void daNpc_grC_c::talk(void* param_0) {
    // NONMATCHING
}

/* 809CEA6C-809CEB50 00368C 00E4+00 2/0 0/0 0/0 .text            test__11daNpc_grC_cFPv */
void daNpc_grC_c::test(void* param_0) {
    // NONMATCHING
}

/* 809CEB50-809CEBDC 003770 008C+00 1/1 0/0 0/0 .text            setPrtcl__11daNpc_grC_cFv */
void daNpc_grC_c::setPrtcl() {
    // NONMATCHING
}

/* 809CEBDC-809CEBFC 0037FC 0020+00 1/0 0/0 0/0 .text            daNpc_grC_Create__FPv */
static void daNpc_grC_Create(void* param_0) {
    // NONMATCHING
}

/* 809CEBFC-809CEC1C 00381C 0020+00 1/0 0/0 0/0 .text            daNpc_grC_Delete__FPv */
static void daNpc_grC_Delete(void* param_0) {
    // NONMATCHING
}

/* 809CEC1C-809CEC3C 00383C 0020+00 1/0 0/0 0/0 .text            daNpc_grC_Execute__FPv */
static void daNpc_grC_Execute(void* param_0) {
    // NONMATCHING
}

/* 809CEC3C-809CEC5C 00385C 0020+00 1/0 0/0 0/0 .text            daNpc_grC_Draw__FPv */
static void daNpc_grC_Draw(void* param_0) {
    // NONMATCHING
}

/* 809CEC5C-809CEC64 00387C 0008+00 1/0 0/0 0/0 .text            daNpc_grC_IsDelete__FPv */
static bool daNpc_grC_IsDelete(void* param_0) {
    return true;
}

/* 809CEC64-809CECAC 003884 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809CECAC-809CECE8 0038CC 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809CECE8-809CEDB8 003908 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 809CEDB8-809CEDF4 0039D8 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 809CEDF4-809CEDF8 003A14 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 809CEDF8-809CEE34 003A18 003C+00 6/6 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 809CEE34-809CEE38 003A54 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 809CEE38-809CF084 003A58 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809CF084-809CF274 003CA4 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809CF274-809CF2E4 003E94 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809CF2E4-809CF340 003F04 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 809CF340-809CF3B0 003F60 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809CF3B0-809CF3F8 003FD0 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 809CF3F8-809CF3FC 004018 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 809CF3FC-809CF444 00401C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CFB50-809CFB5C 000334 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_grC_Param_c */
SECTION_DATA extern void* __vt__17daNpc_grC_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_grC_Param_cFv,
};

/* 809CF444-809CF4AC 004064 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_grc_cpp */
void __sinit_d_a_npc_grc_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x809CF444, __sinit_d_a_npc_grc_cpp);
#pragma pop

/* 809CF4AC-809CF4B0 0040CC 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__11daNpc_grC_cFv
 */
void daNpc_grC_c::adjustShapeAngle() {
    /* empty function */
}

/* 809CF4B0-809CF4F8 0040D0 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_grC_Param_cFv */
daNpc_grC_Param_c::~daNpc_grC_Param_c() {
    // NONMATCHING
}

/* 809CF4F8-809CF500 004118 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809CF4F8() {
    // NONMATCHING
}

/* 809CF500-809CF508 004120 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809CF500() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CFBD4-809CFBD8 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_809CFBD4[4];
#pragma pop

/* 809CFBD8-809CFBDC 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_809CFBD8[4];
#pragma pop

/* 809CFBDC-809CFBE0 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_809CFBDC[4];
#pragma pop

/* 809CFBE0-809CFBE4 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_809CFBE0[4];
#pragma pop

/* 809CFBE4-809CFBE8 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809CFBE4[4];
#pragma pop

/* 809CFBE8-809CFBEC 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809CFBE8[4];
#pragma pop

/* 809CFBEC-809CFBF0 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_809CFBEC[4];
#pragma pop

/* 809CFBF0-809CFBF4 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_809CFBF0[4];
#pragma pop

/* 809CFBF4-809CFBF8 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_809CFBF4[4];
#pragma pop

/* 809CFBF8-809CFBFC 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_809CFBF8[4];
#pragma pop

/* 809CFBFC-809CFC00 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_809CFBFC[4];
#pragma pop

/* 809CFC00-809CFC04 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_809CFC00[4];
#pragma pop

/* 809CFC04-809CFC08 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_809CFC04[4];
#pragma pop

/* 809CFC08-809CFC0C 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809CFC08[4];
#pragma pop

/* 809CFC0C-809CFC10 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_809CFC0C[4];
#pragma pop

/* 809CFC10-809CFC14 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_809CFC10[4];
#pragma pop

/* 809CFC14-809CFC18 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_809CFC14[4];
#pragma pop

/* 809CFC18-809CFC1C 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_809CFC18[4];
#pragma pop

/* 809CFC1C-809CFC20 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_809CFC1C[4];
#pragma pop

/* 809CFC20-809CFC24 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_809CFC20[4];
#pragma pop

/* 809CFC24-809CFC28 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_809CFC24[4];
#pragma pop

/* 809CFC28-809CFC2C 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809CFC28[4];
#pragma pop

/* 809CFC2C-809CFC30 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809CFC2C[4];
#pragma pop

/* 809CFC30-809CFC34 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809CFC30[4];
#pragma pop

/* 809CFC34-809CFC38 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_809CFC34[4];
#pragma pop

/* 809CF7F0-809CF7F0 0002D4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */