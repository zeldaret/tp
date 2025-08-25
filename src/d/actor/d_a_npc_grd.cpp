/**
 * @file d_a_npc_grd.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_grd.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__11daNpc_Grd_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__11daNpc_Grd_cFv();
extern "C" void create__11daNpc_Grd_cFv();
extern "C" void CreateHeap__11daNpc_Grd_cFv();
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
extern "C" void Delete__11daNpc_Grd_cFv();
extern "C" void Execute__11daNpc_Grd_cFv();
extern "C" void Draw__11daNpc_Grd_cFv();
extern "C" void ctrlJoint__11daNpc_Grd_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__11daNpc_Grd_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_Grd_cFP8J3DJointi();
extern "C" void setParam__11daNpc_Grd_cFv();
extern "C" void main__11daNpc_Grd_cFv();
extern "C" void ctrlBtk__11daNpc_Grd_cFv();
extern "C" void setAttnPos__11daNpc_Grd_cFv();
extern "C" void setExpressionAnm__11daNpc_Grd_cFib();
extern "C" void setExpressionBtp__11daNpc_Grd_cFi();
extern "C" void setExpression__11daNpc_Grd_cFif();
extern "C" void setMotionAnm__11daNpc_Grd_cFif();
extern "C" void setMotion__11daNpc_Grd_cFifi();
extern "C" bool drawDbgInfo__11daNpc_Grd_cFv();
extern "C" void drawOtherMdls__11daNpc_Grd_cFv();
extern "C" void getTypeFromParam__11daNpc_Grd_cFv();
extern "C" void isDelete__11daNpc_Grd_cFv();
extern "C" void reset__11daNpc_Grd_cFv();
extern "C" void playExpression__11daNpc_Grd_cFv();
extern "C" void playMotion__11daNpc_Grd_cFv();
extern "C" void chkAction__11daNpc_Grd_cFM11daNpc_Grd_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_Grd_cFM11daNpc_Grd_cFPCvPvPv_i();
extern "C" void selectAction__11daNpc_Grd_cFv();
extern "C" void doNormalAction__11daNpc_Grd_cFi();
extern "C" void doEvent__11daNpc_Grd_cFv();
extern "C" void setLookMode__11daNpc_Grd_cFi();
extern "C" void lookat__11daNpc_Grd_cFv();
extern "C" void setExpressionTalkAfter__11daNpc_Grd_cFv();
extern "C" void wait__11daNpc_Grd_cFPv();
extern "C" void talk__11daNpc_Grd_cFPv();
extern "C" void test__11daNpc_Grd_cFPv();
extern "C" static void s_sub1__FPvPv();
extern "C" static void s_sub2__FPvPv();
extern "C" void ECut_nodToGrz__11daNpc_Grd_cFi();
extern "C" static void daNpc_Grd_Create__FPv();
extern "C" static void daNpc_Grd_Delete__FPv();
extern "C" static void daNpc_Grd_Execute__FPv();
extern "C" static void daNpc_Grd_Draw__FPv();
extern "C" static bool daNpc_Grd_IsDelete__FPv();
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
extern "C" void func_809D38F0(void* _this, int*);
extern "C" void __sinit_d_a_npc_grd_cpp();
extern "C" void adjustShapeAngle__11daNpc_Grd_cFv();
extern "C" void __dt__17daNpc_Grd_Param_cFv();
extern "C" static void func_809D39E0();
extern "C" static void func_809D39E8();
extern "C" u8 const m__17daNpc_Grd_Param_c[108];
extern "C" extern char const* const d_a_npc_grd__stringBase0;
extern "C" void* mEvtCutNameList__11daNpc_Grd_c[2];
extern "C" u8 mEvtCutList__11daNpc_Grd_c[24];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
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
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void step__8daNpcF_cFsiii();
extern "C" void setAngle__8daNpcF_cFs();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii();
extern "C" void chkFindPlayer2__8daNpcF_cFis();
extern "C" void daNpcF_chkEvtBit__FUl();
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
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 809D3BF4-809D3BF4 0001F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809D3BF4 = "grD";
SECTION_DEAD static char const* const stringBase_809D3BF8 = "grD1";
SECTION_DEAD static char const* const stringBase_809D3BFD = "";
SECTION_DEAD static char const* const stringBase_809D3BFE = "NOD_TO_GRZ";
#pragma pop

/* 809D3C34-809D3C3C 000020 0008+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
SECTION_DATA static u8 l_bmdGetParamList[8] = {
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
};

/* 809D3C3C-809D3C9C 000028 0060+00 1/2 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[96] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x01,
};

/* 809D3C9C-809D3CBC 000088 0020+00 1/1 0/0 0/0 .data            l_btpGetParamList */
SECTION_DATA static u8 l_btpGetParamList[32] = {
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x01,
};

/* 809D3CBC-809D3CC4 0000A8 0008+00 1/2 0/0 0/0 .data            l_btkGetParamList */
SECTION_DATA static u8 l_btkGetParamList[8] = {
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
};

/* 809D3CC4-809D3CCC 0000B0 0008+00 0/1 0/0 0/0 .data            l_evtGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_evtGetParamList[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 809D3CCC-809D3CD8 0000B8 000C+00 1/0 0/0 0/0 .data            l_loadRes_GRD_YELIA */
SECTION_DATA static u8 l_loadRes_GRD_YELIA[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809D3CD8-809D3CE4 0000C4 000C+00 1/0 0/0 0/0 .data            l_loadRes_GRDa */
SECTION_DATA static u8 l_loadRes_GRDa[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809D3CE4-809D3CF0 0000D0 000C+00 1/0 0/0 0/0 .data            l_loadRes_GRD0 */
SECTION_DATA static u8 l_loadRes_GRD0[12] = {
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809D3CF0-809D3CFC -00001 000C+00 2/2 0/0 0/0 .data            l_loadRes_list */
SECTION_DATA static void* l_loadRes_list[3] = {
    (void*)&l_loadRes_GRD_YELIA,
    (void*)&l_loadRes_GRDa,
    (void*)&l_loadRes_GRD0,
};

/* 809D3CFC-809D3D04 -00001 0008+00 6/8 0/0 0/0 .data            l_resNames */
SECTION_DATA static void* l_resNames[2] = {
    (void*)&d_a_npc_grd__stringBase0,
    (void*)(((char*)&d_a_npc_grd__stringBase0) + 0x4),
};

/* 809D3D04-809D3D08 0000F0 0004+00 0/1 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_evtNames[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
#pragma pop

/* 809D3D08-809D3D0C -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)&d_a_npc_grd__stringBase0;
#pragma pop

/* 809D3D0C-809D3D14 -00001 0008+00 0/1 0/0 0/0 .data            mEvtCutNameList__11daNpc_Grd_c */
#pragma push
#pragma force_active on
SECTION_DATA void* daNpc_Grd_c::mEvtCutNameList[2] = {
    (void*)(((char*)&d_a_npc_grd__stringBase0) + 0x9),
    (void*)(((char*)&d_a_npc_grd__stringBase0) + 0xA),
};
#pragma pop

/* 809D3D14-809D3D20 -00001 000C+00 1/1 0/0 0/0 .data            @4018 */
SECTION_DATA static void* lit_4018[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_nodToGrz__11daNpc_Grd_cFi,
};

/* 809D3D20-809D3D38 00010C 0018+00 1/2 0/0 0/0 .data            mEvtCutList__11daNpc_Grd_c */
SECTION_DATA u8 daNpc_Grd_c::mEvtCutList[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 809D3D38-809D3D44 -00001 000C+00 1/1 0/0 0/0 .data            @4482 */
SECTION_DATA static void* lit_4482[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__11daNpc_Grd_cFPv,
};

/* 809D3D44-809D3D50 -00001 000C+00 1/1 0/0 0/0 .data            @5106 */
SECTION_DATA static void* lit_5106[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__11daNpc_Grd_cFPv,
};

/* 809D3D50-809D3D5C -00001 000C+00 1/1 0/0 0/0 .data            @5110 */
SECTION_DATA static void* lit_5110[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_Grd_cFPv,
};

/* 809D3D5C-809D3D68 -00001 000C+00 0/1 0/0 0/0 .data            @5150 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5150[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Grd_cFPv,
};
#pragma pop

/* 809D3D68-809D3D74 -00001 000C+00 0/1 0/0 0/0 .data            @5158 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5158[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Grd_cFPv,
};
#pragma pop

/* 809D3D74-809D3D94 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Grd_MethodTable */
static actor_method_class daNpc_Grd_MethodTable = {
    (process_method_func)daNpc_Grd_Create__FPv,
    (process_method_func)daNpc_Grd_Delete__FPv,
    (process_method_func)daNpc_Grd_Execute__FPv,
    (process_method_func)daNpc_Grd_IsDelete__FPv,
    (process_method_func)daNpc_Grd_Draw__FPv,
};

/* 809D3D94-809D3DC4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_GRD */
extern actor_process_profile_definition g_profile_NPC_GRD = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_GRD,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_Grd_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  308,                    // mPriority
  &daNpc_Grd_MethodTable, // sub_method
  0x00044100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 809D3DC4-809D3DD0 0001B0 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 809D3DD0-809D3E18 0001BC 0048+00 2/2 0/0 0/0 .data            __vt__11daNpc_Grd_c */
SECTION_DATA extern void* __vt__11daNpc_Grd_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_Grd_cFv,
    (void*)setParam__11daNpc_Grd_cFv,
    (void*)main__11daNpc_Grd_cFv,
    (void*)ctrlBtk__11daNpc_Grd_cFv,
    (void*)adjustShapeAngle__11daNpc_Grd_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__11daNpc_Grd_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__11daNpc_Grd_cFib,
    (void*)setExpressionBtp__11daNpc_Grd_cFi,
    (void*)setExpression__11daNpc_Grd_cFif,
    (void*)setMotionAnm__11daNpc_Grd_cFif,
    (void*)setMotion__11daNpc_Grd_cFifi,
    (void*)drawDbgInfo__11daNpc_Grd_cFv,
    (void*)drawOtherMdls__11daNpc_Grd_cFv,
};

/* 809D3E18-809D3E24 000204 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 809D3E24-809D3E48 000210 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809D39E8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809D39E0,
};

/* 809D3E48-809D3E54 000234 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 809D3E54-809D3E60 000240 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 809D3E60-809D3E6C 00024C 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 809D3E6C-809D3E78 000258 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 809D3E78-809D3E84 000264 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 809D3E84-809D3E90 000270 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 809D3E90-809D3E9C 00027C 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 809CFD2C-809CFEB0 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__11daNpc_Grd_cFv */
daNpc_Grd_c::daNpc_Grd_c() {
    // NONMATCHING
}

/* 809CFEB0-809CFEF8 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 809CFEF8-809CFF40 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 809CFF40-809D0140 000300 0200+00 1/0 0/0 0/0 .text            __dt__11daNpc_Grd_cFv */
daNpc_Grd_c::~daNpc_Grd_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D3A04-809D3A70 000000 006C+00 13/13 0/0 0/0 .rodata          m__17daNpc_Grd_Param_c */
SECTION_RODATA u8 const daNpc_Grd_Param_c::m[108] = {
    0x43, 0x66, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x44, 0x16, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x70, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x05, 0x00, 0x06, 0x00, 0x07, 0x00, 0x06,
    0x43, 0x34, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3A04, &daNpc_Grd_Param_c::m);

/* 809D3A70-809D3A74 00006C 0004+00 0/1 0/0 0/0 .rodata          @4393 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4393 = -300.0f;
COMPILER_STRIP_GATE(0x809D3A70, &lit_4393);
#pragma pop

/* 809D3A74-809D3A78 000070 0004+00 0/1 0/0 0/0 .rodata          @4394 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4394 = -50.0f;
COMPILER_STRIP_GATE(0x809D3A74, &lit_4394);
#pragma pop

/* 809D3A78-809D3A7C 000074 0004+00 0/1 0/0 0/0 .rodata          @4395 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4395 = 300.0f;
COMPILER_STRIP_GATE(0x809D3A78, &lit_4395);
#pragma pop

/* 809D3A7C-809D3A80 000078 0004+00 0/1 0/0 0/0 .rodata          @4396 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4396 = 450.0f;
COMPILER_STRIP_GATE(0x809D3A7C, &lit_4396);
#pragma pop

/* 809D0140-809D0414 000500 02D4+00 1/1 0/0 0/0 .text            create__11daNpc_Grd_cFv */
void daNpc_Grd_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D3A80-809D3A84 00007C 0004+00 4/4 0/0 0/0 .rodata          @4450 */
SECTION_RODATA static f32 const lit_4450 = 1.0f;
COMPILER_STRIP_GATE(0x809D3A80, &lit_4450);

/* 809D3A84-809D3A88 000080 0004+00 5/7 0/0 0/0 .rodata          @4451 */
SECTION_RODATA static u8 const lit_4451[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809D3A84, &lit_4451);

/* 809D0414-809D069C 0007D4 0288+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_Grd_cFv */
void daNpc_Grd_c::CreateHeap() {
    // NONMATCHING
}

/* 809D069C-809D06D8 000A5C 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 809D06D8-809D06F0 000A98 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 809D06F0-809D072C 000AB0 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 809D072C-809D0744 000AEC 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 809D0744-809D078C 000B04 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 809D078C-809D07B0 000B4C 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 809D07B0-809D07EC 000B70 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 809D07EC-809D0804 000BAC 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 809D0804-809D0840 000BC4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 809D0840-809D0858 000C00 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 809D0858-809D088C 000C18 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_Grd_cFv */
void daNpc_Grd_c::Delete() {
    // NONMATCHING
}

/* 809D088C-809D08AC 000C4C 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_Grd_cFv */
void daNpc_Grd_c::Execute() {
    // NONMATCHING
}

/* 809D08AC-809D093C 000C6C 0090+00 1/1 0/0 0/0 .text            Draw__11daNpc_Grd_cFv */
void daNpc_Grd_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D3A88-809D3A94 000084 000C+00 1/1 0/0 0/0 .rodata          @4503 */
SECTION_RODATA static u8 const lit_4503[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x809D3A88, &lit_4503);

/* 809D093C-809D0B70 000CFC 0234+00 1/1 0/0 0/0 .text
 * ctrlJoint__11daNpc_Grd_cFP8J3DJointP8J3DModel                */
void daNpc_Grd_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 809D0B70-809D0B90 000F30 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_Grd_cFP10fopAc_ac_c              */
void daNpc_Grd_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809D0B90-809D0BDC 000F50 004C+00 2/2 0/0 0/0 .text ctrlJointCallBack__11daNpc_Grd_cFP8J3DJointi
 */
void daNpc_Grd_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 809D0BDC-809D0D1C 000F9C 0140+00 1/0 0/0 0/0 .text            setParam__11daNpc_Grd_cFv */
void daNpc_Grd_c::setParam() {
    // NONMATCHING
}

/* 809D0D1C-809D0E9C 0010DC 0180+00 1/0 0/0 0/0 .text            main__11daNpc_Grd_cFv */
void daNpc_Grd_c::main() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D3A94-809D3A98 000090 0004+00 6/6 0/0 0/0 .rodata          @4710 */
SECTION_RODATA static f32 const lit_4710 = -1.0f;
COMPILER_STRIP_GATE(0x809D3A94, &lit_4710);

/* 809D3A98-809D3A9C 000094 0004+00 1/1 0/0 0/0 .rodata          @4711 */
SECTION_RODATA static f32 const lit_4711 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x809D3A98, &lit_4711);

/* 809D0E9C-809D0F7C 00125C 00E0+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpc_Grd_cFv */
void daNpc_Grd_c::ctrlBtk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D3A9C-809D3AA0 000098 0004+00 0/1 0/0 0/0 .rodata          @4861 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4861 = 20.0f;
COMPILER_STRIP_GATE(0x809D3A9C, &lit_4861);
#pragma pop

/* 809D3AA0-809D3AA4 00009C 0004+00 0/1 0/0 0/0 .rodata          @4862 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4862 = 30.0f;
COMPILER_STRIP_GATE(0x809D3AA0, &lit_4862);
#pragma pop

/* 809D3AA4-809D3AA8 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4863 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4863 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x809D3AA4, &lit_4863);
#pragma pop

/* 809D3AA8-809D3AAC 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4864 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4864 = 125.0f;
COMPILER_STRIP_GATE(0x809D3AA8, &lit_4864);
#pragma pop

/* 809D3AAC-809D3AB4 0000A8 0008+00 0/1 0/0 0/0 .rodata          @4865 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4865[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3AAC, &lit_4865);
#pragma pop

/* 809D3AB4-809D3ABC 0000B0 0008+00 0/1 0/0 0/0 .rodata          @4866 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4866[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3AB4, &lit_4866);
#pragma pop

/* 809D3ABC-809D3AC4 0000B8 0008+00 0/1 0/0 0/0 .rodata          @4867 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4867[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3ABC, &lit_4867);
#pragma pop

/* 809D3EF0-809D3EFC 000048 000C+00 1/1 0/0 0/0 .bss             @4017 */
static u8 lit_4017[12];

/* 809D3EFC-809D3F00 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 809D3F00-809D3F10 000058 000C+04 0/1 0/0 0/0 .bss             @4716 */
#pragma push
#pragma force_active on
static u8 lit_4716[12 + 4 /* padding */];
#pragma pop

/* 809D3F10-809D3F1C 000068 000C+00 0/1 0/0 0/0 .bss             eyeOffset$4715 */
#pragma push
#pragma force_active on
static u8 eyeOffset[12];
#pragma pop

/* 809D0F7C-809D14BC 00133C 0540+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_Grd_cFv */
void daNpc_Grd_c::setAttnPos() {
    // NONMATCHING
}

/* 809D14BC-809D1670 00187C 01B4+00 1/0 0/0 0/0 .text            setExpressionAnm__11daNpc_Grd_cFib
 */
void daNpc_Grd_c::setExpressionAnm(int param_0, bool param_1) {
    // NONMATCHING
}

/* 809D1670-809D1794 001A30 0124+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpc_Grd_cFi
 */
void daNpc_Grd_c::setExpressionBtp(int param_0) {
    // NONMATCHING
}

/* 809D1794-809D17C0 001B54 002C+00 1/0 0/0 0/0 .text            setExpression__11daNpc_Grd_cFif */
void daNpc_Grd_c::setExpression(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 809D17C0-809D1940 001B80 0180+00 1/0 0/0 0/0 .text            setMotionAnm__11daNpc_Grd_cFif */
bool daNpc_Grd_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 809D1940-809D1984 001D00 0044+00 1/0 0/0 0/0 .text            setMotion__11daNpc_Grd_cFifi */
void daNpc_Grd_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 809D1984-809D198C 001D44 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_Grd_cFv */
bool daNpc_Grd_c::drawDbgInfo() {
    return false;
}

/* 809D198C-809D1990 001D4C 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__11daNpc_Grd_cFv */
void daNpc_Grd_c::drawOtherMdls() {
    /* empty function */
}

/* 809D1990-809D19B0 001D50 0020+00 1/1 0/0 0/0 .text            getTypeFromParam__11daNpc_Grd_cFv
 */
void daNpc_Grd_c::getTypeFromParam() {
    // NONMATCHING
}

/* 809D19B0-809D1A1C 001D70 006C+00 1/1 0/0 0/0 .text            isDelete__11daNpc_Grd_cFv */
void daNpc_Grd_c::isDelete() {
    // NONMATCHING
}

/* 809D1A1C-809D1B9C 001DDC 0180+00 1/1 0/0 0/0 .text            reset__11daNpc_Grd_cFv */
void daNpc_Grd_c::reset() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D3AC4-809D3AD0 0000C0 000C+00 0/1 0/0 0/0 .rodata          @5031 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5031[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3AC4, &lit_5031);
#pragma pop

/* 809D3AD0-809D3AD4 0000CC 0004+00 0/1 0/0 0/0 .rodata          @5032 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5032[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809D3AD0, &lit_5032);
#pragma pop

/* 809D3AD4-809D3AE0 0000D0 000C+00 0/1 0/0 0/0 .rodata          @5033 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5033[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809D3AD4, &lit_5033);
#pragma pop

/* 809D3AE0-809D3AEC 0000DC 000C+00 0/1 0/0 0/0 .rodata          @5034 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5034[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3AE0, &lit_5034);
#pragma pop

/* 809D3AEC-809D3AF4 0000E8 0008+00 0/1 0/0 0/0 .rodata          @5035 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5035[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3AEC, &lit_5035);
#pragma pop

/* 809D3AF4-809D3B00 0000F0 000C+00 0/1 0/0 0/0 .rodata          @5036 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5036[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3AF4, &lit_5036);
#pragma pop

/* 809D3B00-809D3B04 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5037 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5037[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809D3B00, &lit_5037);
#pragma pop

/* 809D3B04-809D3B10 000100 000C+00 0/1 0/0 0/0 .rodata          @5038 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5038[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3B04, &lit_5038);
#pragma pop

/* 809D3B10-809D3B14 00010C 0004+00 0/1 0/0 0/0 .rodata          @5039 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5039[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809D3B10, &lit_5039);
#pragma pop

/* 809D3B14-809D3B24 000110 0010+00 0/1 0/0 0/0 .rodata          @5040 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5040[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3B14, &lit_5040);
#pragma pop

/* 809D1B9C-809D1D00 001F5C 0164+00 1/1 0/0 0/0 .text            playExpression__11daNpc_Grd_cFv */
void daNpc_Grd_c::playExpression() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D3B24-809D3B30 000120 000C+00 0/1 0/0 0/0 .rodata          @5055 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5055[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3B24, &lit_5055);
#pragma pop

/* 809D3B30-809D3B34 00012C 0004+00 0/1 0/0 0/0 .rodata          @5056 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5056[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809D3B30, &lit_5056);
#pragma pop

/* 809D3B34-809D3B40 000130 000C+00 0/1 0/0 0/0 .rodata          @5057 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5057[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809D3B34, &lit_5057);
#pragma pop

/* 809D3B40-809D3B4C 00013C 000C+00 0/1 0/0 0/0 .rodata          @5058 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5058[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3B40, &lit_5058);
#pragma pop

/* 809D3B4C-809D3B54 000148 0008+00 0/1 0/0 0/0 .rodata          @5059 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5059[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3B4C, &lit_5059);
#pragma pop

/* 809D3B54-809D3B60 000150 000C+00 0/1 0/0 0/0 .rodata          @5060 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5060[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809D3B54, &lit_5060);
#pragma pop

/* 809D3B60-809D3B6C 00015C 000C+00 0/1 0/0 0/0 .rodata          @5061 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5061[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3B60, &lit_5061);
#pragma pop

/* 809D3B6C-809D3B74 000168 0008+00 0/1 0/0 0/0 .rodata          @5062 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5062[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3B6C, &lit_5062);
#pragma pop

/* 809D3B74-809D3B80 000170 000C+00 0/1 0/0 0/0 .rodata          @5063 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5063[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809D3B74, &lit_5063);
#pragma pop

/* 809D3B80-809D3B8C 00017C 000C+00 0/1 0/0 0/0 .rodata          @5064 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5064[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3B80, &lit_5064);
#pragma pop

/* 809D3B8C-809D3B94 000188 0008+00 0/1 0/0 0/0 .rodata          @5065 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5065[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3B8C, &lit_5065);
#pragma pop

/* 809D3B94-809D3BA0 000190 000C+00 0/1 0/0 0/0 .rodata          @5066 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5066[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809D3B94, &lit_5066);
#pragma pop

/* 809D3BA0-809D3BAC 00019C 000C+00 0/1 0/0 0/0 .rodata          @5067 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5067[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3BA0, &lit_5067);
#pragma pop

/* 809D3BAC-809D3BB4 0001A8 0008+00 0/1 0/0 0/0 .rodata          @5068 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5068[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3BAC, &lit_5068);
#pragma pop

/* 809D3BB4-809D3BC0 0001B0 000C+00 0/1 0/0 0/0 .rodata          @5069 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5069[12] = {
    0x00, 0x06, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3BB4, &lit_5069);
#pragma pop

/* 809D3BC0-809D3BC4 0001BC 0004+00 0/1 0/0 0/0 .rodata          @5070 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5070[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809D3BC0, &lit_5070);
#pragma pop

/* 809D1D00-809D1F50 0020C0 0250+00 1/1 0/0 0/0 .text            playMotion__11daNpc_Grd_cFv */
void daNpc_Grd_c::playMotion() {
    // NONMATCHING
}

/* 809D1F50-809D1F7C 002310 002C+00 2/2 0/0 0/0 .text
 * chkAction__11daNpc_Grd_cFM11daNpc_Grd_cFPCvPvPv_i            */
void daNpc_Grd_c::chkAction(int (daNpc_Grd_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809D1F7C-809D2024 00233C 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_Grd_cFM11daNpc_Grd_cFPCvPvPv_i            */
void daNpc_Grd_c::setAction(int (daNpc_Grd_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809D2024-809D20A4 0023E4 0080+00 1/1 0/0 0/0 .text            selectAction__11daNpc_Grd_cFv */
void daNpc_Grd_c::selectAction() {
    // NONMATCHING
}

/* 809D20A4-809D21B8 002464 0114+00 1/1 0/0 0/0 .text            doNormalAction__11daNpc_Grd_cFi */
void daNpc_Grd_c::doNormalAction(int param_0) {
    // NONMATCHING
}

/* 809D21B8-809D2470 002578 02B8+00 1/1 0/0 0/0 .text            doEvent__11daNpc_Grd_cFv */
void daNpc_Grd_c::doEvent() {
    // NONMATCHING
}

/* 809D2470-809D2494 002830 0024+00 5/5 0/0 0/0 .text            setLookMode__11daNpc_Grd_cFi */
void daNpc_Grd_c::setLookMode(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D3BC4-809D3BDC 0001C0 0018+00 0/0 0/0 0/0 .rodata          @5071 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5071[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3BC4, &lit_5071);
#pragma pop

/* 809D3BDC-809D3BE8 0001D8 000C+00 0/1 0/0 0/0 .rodata          @5211 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5211[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D3BDC, &lit_5211);
#pragma pop

/* 809D3BE8-809D3BEC 0001E4 0004+00 0/1 0/0 0/0 .rodata          @5265 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5265 = -80.0f;
COMPILER_STRIP_GATE(0x809D3BE8, &lit_5265);
#pragma pop

/* 809D3BEC-809D3BF0 0001E8 0004+00 0/1 0/0 0/0 .rodata          @5266 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5266 = 80.0f;
COMPILER_STRIP_GATE(0x809D3BEC, &lit_5266);
#pragma pop

/* 809D3BF0-809D3BF4 0001EC 0004+00 0/1 0/0 0/0 .rodata          @5267 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5267 = 40.0f;
COMPILER_STRIP_GATE(0x809D3BF0, &lit_5267);
#pragma pop

/* 809D2494-809D2730 002854 029C+00 1/1 0/0 0/0 .text            lookat__11daNpc_Grd_cFv */
void daNpc_Grd_c::lookat() {
    // NONMATCHING
}

/* 809D2730-809D2768 002AF0 0038+00 1/1 0/0 0/0 .text setExpressionTalkAfter__11daNpc_Grd_cFv */
void daNpc_Grd_c::setExpressionTalkAfter() {
    // NONMATCHING
}

/* 809D2768-809D2970 002B28 0208+00 1/0 0/0 0/0 .text            wait__11daNpc_Grd_cFPv */
void daNpc_Grd_c::wait(void* param_0) {
    // NONMATCHING
}

/* 809D2970-809D2B20 002D30 01B0+00 2/0 0/0 0/0 .text            talk__11daNpc_Grd_cFPv */
void daNpc_Grd_c::talk(void* param_0) {
    // NONMATCHING
}

/* 809D2B20-809D2C04 002EE0 00E4+00 2/0 0/0 0/0 .text            test__11daNpc_Grd_cFPv */
void daNpc_Grd_c::test(void* param_0) {
    // NONMATCHING
}

/* 809D2C04-809D2C50 002FC4 004C+00 1/1 0/0 0/0 .text            s_sub1__FPvPv */
static void s_sub1(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 809D2C50-809D2C9C 003010 004C+00 1/1 0/0 0/0 .text            s_sub2__FPvPv */
static void s_sub2(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D3BF4-809D3BF4 0001F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809D3C09 = "prm";
SECTION_DEAD static char const* const stringBase_809D3C0D = "timer";
#pragma pop

/* 809D2C9C-809D3058 00305C 03BC+00 1/0 0/0 0/0 .text            ECut_nodToGrz__11daNpc_Grd_cFi */
void daNpc_Grd_c::ECut_nodToGrz(int param_0) {
    // NONMATCHING
}

/* 809D3058-809D3078 003418 0020+00 1/0 0/0 0/0 .text            daNpc_Grd_Create__FPv */
static void daNpc_Grd_Create(void* param_0) {
    // NONMATCHING
}

/* 809D3078-809D3098 003438 0020+00 1/0 0/0 0/0 .text            daNpc_Grd_Delete__FPv */
static void daNpc_Grd_Delete(void* param_0) {
    // NONMATCHING
}

/* 809D3098-809D30B8 003458 0020+00 1/0 0/0 0/0 .text            daNpc_Grd_Execute__FPv */
static void daNpc_Grd_Execute(void* param_0) {
    // NONMATCHING
}

/* 809D30B8-809D30D8 003478 0020+00 1/0 0/0 0/0 .text            daNpc_Grd_Draw__FPv */
static void daNpc_Grd_Draw(void* param_0) {
    // NONMATCHING
}

/* 809D30D8-809D30E0 003498 0008+00 1/0 0/0 0/0 .text            daNpc_Grd_IsDelete__FPv */
static bool daNpc_Grd_IsDelete(void* param_0) {
    return true;
}

/* 809D30E0-809D3110 0034A0 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 809D3110-809D3158 0034D0 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809D3158-809D3194 003518 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809D3194-809D3264 003554 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 809D3264-809D32A0 003624 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 809D32A0-809D32A4 003660 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 809D32A4-809D32E0 003664 003C+00 6/6 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 809D32E0-809D32E4 0036A0 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 809D32E4-809D3530 0036A4 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809D3530-809D3720 0038F0 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809D3720-809D3790 003AE0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809D3790-809D37EC 003B50 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 809D37EC-809D385C 003BAC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809D385C-809D38A4 003C1C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 809D38A4-809D38A8 003C64 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 809D38A8-809D38F0 003C68 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 809D38F0-809D390C 003CB0 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_809D38F0(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D3E9C-809D3EA8 000288 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_Grd_Param_c */
SECTION_DATA extern void* __vt__17daNpc_Grd_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_Grd_Param_cFv,
};

/* 809D390C-809D3994 003CCC 0088+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_grd_cpp */
void __sinit_d_a_npc_grd_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x809D390C, __sinit_d_a_npc_grd_cpp);
#pragma pop

/* 809D3994-809D3998 003D54 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__11daNpc_Grd_cFv
 */
void daNpc_Grd_c::adjustShapeAngle() {
    /* empty function */
}

/* 809D3998-809D39E0 003D58 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_Grd_Param_cFv */
daNpc_Grd_Param_c::~daNpc_Grd_Param_c() {
    // NONMATCHING
}

/* 809D39E0-809D39E8 003DA0 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809D39E0() {
    // NONMATCHING
}

/* 809D39E8-809D39F0 003DA8 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809D39E8() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D3F1C-809D3F20 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_809D3F1C[4];
#pragma pop

/* 809D3F20-809D3F24 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_809D3F20[4];
#pragma pop

/* 809D3F24-809D3F28 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_809D3F24[4];
#pragma pop

/* 809D3F28-809D3F2C 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_809D3F28[4];
#pragma pop

/* 809D3F2C-809D3F30 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809D3F2C[4];
#pragma pop

/* 809D3F30-809D3F34 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809D3F30[4];
#pragma pop

/* 809D3F34-809D3F38 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_809D3F34[4];
#pragma pop

/* 809D3F38-809D3F3C 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_809D3F38[4];
#pragma pop

/* 809D3F3C-809D3F40 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_809D3F3C[4];
#pragma pop

/* 809D3F40-809D3F44 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_809D3F40[4];
#pragma pop

/* 809D3F44-809D3F48 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_809D3F44[4];
#pragma pop

/* 809D3F48-809D3F4C 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_809D3F48[4];
#pragma pop

/* 809D3F4C-809D3F50 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_809D3F4C[4];
#pragma pop

/* 809D3F50-809D3F54 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809D3F50[4];
#pragma pop

/* 809D3F54-809D3F58 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_809D3F54[4];
#pragma pop

/* 809D3F58-809D3F5C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_809D3F58[4];
#pragma pop

/* 809D3F5C-809D3F60 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_809D3F5C[4];
#pragma pop

/* 809D3F60-809D3F64 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_809D3F60[4];
#pragma pop

/* 809D3F64-809D3F68 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_809D3F64[4];
#pragma pop

/* 809D3F68-809D3F6C 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_809D3F68[4];
#pragma pop

/* 809D3F6C-809D3F70 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_809D3F6C[4];
#pragma pop

/* 809D3F70-809D3F74 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809D3F70[4];
#pragma pop

/* 809D3F74-809D3F78 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809D3F74[4];
#pragma pop

/* 809D3F78-809D3F7C 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809D3F78[4];
#pragma pop

/* 809D3F7C-809D3F80 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_809D3F7C[4];
#pragma pop

/* 809D3BF4-809D3BF4 0001F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
