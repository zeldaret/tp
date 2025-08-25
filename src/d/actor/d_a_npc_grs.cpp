/**
 * @file d_a_npc_grs.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_grs.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__11daNpc_grS_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__11daNpc_grS_cFv();
extern "C" void create__11daNpc_grS_cFv();
extern "C" void CreateHeap__11daNpc_grS_cFv();
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
extern "C" void Delete__11daNpc_grS_cFv();
extern "C" void Execute__11daNpc_grS_cFv();
extern "C" void Draw__11daNpc_grS_cFv();
extern "C" void ctrlJoint__11daNpc_grS_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__11daNpc_grS_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_grS_cFP8J3DJointi();
extern "C" void setParam__11daNpc_grS_cFv();
extern "C" void main__11daNpc_grS_cFv();
extern "C" void ctrlBtk__11daNpc_grS_cFv();
extern "C" void setAttnPos__11daNpc_grS_cFv();
extern "C" void setExpressionAnm__11daNpc_grS_cFib();
extern "C" void setExpressionBtp__11daNpc_grS_cFi();
extern "C" void setExpression__11daNpc_grS_cFif();
extern "C" void setMotionAnm__11daNpc_grS_cFif();
extern "C" void setMotion__11daNpc_grS_cFifi();
extern "C" bool drawDbgInfo__11daNpc_grS_cFv();
extern "C" void drawOtherMdls__11daNpc_grS_cFv();
extern "C" void getTypeFromParam__11daNpc_grS_cFv();
extern "C" void isDelete__11daNpc_grS_cFv();
extern "C" void reset__11daNpc_grS_cFv();
extern "C" void playExpression__11daNpc_grS_cFv();
extern "C" void playMotion__11daNpc_grS_cFv();
extern "C" void chkAction__11daNpc_grS_cFM11daNpc_grS_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_grS_cFM11daNpc_grS_cFPCvPvPv_i();
extern "C" void selectAction__11daNpc_grS_cFv();
extern "C" void doNormalAction__11daNpc_grS_cFi();
extern "C" void doEvent__11daNpc_grS_cFv();
extern "C" void setLookMode__11daNpc_grS_cFi();
extern "C" void lookat__11daNpc_grS_cFv();
extern "C" void setExpressionTalkAfter__11daNpc_grS_cFv();
extern "C" void cutPushOut__11daNpc_grS_cFi();
extern "C" void wait__11daNpc_grS_cFPv();
extern "C" void talk__11daNpc_grS_cFPv();
extern "C" void test__11daNpc_grS_cFPv();
extern "C" void setPrtcl__11daNpc_grS_cFv();
extern "C" static void daNpc_grS_Create__FPv();
extern "C" static void daNpc_grS_Delete__FPv();
extern "C" static void daNpc_grS_Execute__FPv();
extern "C" static void daNpc_grS_Draw__FPv();
extern "C" static bool daNpc_grS_IsDelete__FPv();
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
extern "C" void __sinit_d_a_npc_grs_cpp();
extern "C" void adjustShapeAngle__11daNpc_grS_cFv();
extern "C" void __dt__17daNpc_grS_Param_cFv();
extern "C" static void func_809E7DA8();
extern "C" static void func_809E7DB0();
extern "C" u8 const m__17daNpc_grS_Param_c[108];
extern "C" extern char const* const d_a_npc_grs__stringBase0;
extern "C" void* mEvtCutNameList__11daNpc_grS_c[2];
extern "C" u8 mEvtCutList__11daNpc_grS_c[24];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
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
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
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
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void step__8daNpcF_cFsiii();
extern "C" void setAngle__8daNpcF_cFs();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii();
extern "C" void chkFindPlayer2__8daNpcF_cFis();
extern "C" void daNpcF_chkEvtBit__FUl();
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
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
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
/* 809E7F9C-809E7F9C 0001D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809E7F9C = "grS";
SECTION_DEAD static char const* const stringBase_809E7FA0 = "PUSHOUT";
SECTION_DEAD static char const* const stringBase_809E7FA8 = "";
#pragma pop

/* 809E7FE4-809E7FF4 000020 0010+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
SECTION_DATA static u8 l_bmdGetParamList[16] = {
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00,
};

/* 809E7FF4-809E8034 000030 0040+00 1/2 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[64] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
};

/* 809E8034-809E804C 000070 0018+00 1/1 0/0 0/0 .data            l_btpGetParamList */
SECTION_DATA static u8 l_btpGetParamList[24] = {
    0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00,
};

/* 809E804C-809E8054 000088 0008+00 1/2 0/0 0/0 .data            l_btkGetParamList */
SECTION_DATA static u8 l_btkGetParamList[8] = {
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00,
};

/* 809E8054-809E8064 000090 0010+00 0/1 0/0 0/0 .data            l_evtGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_evtGetParamList[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 809E8064-809E8070 0000A0 000C+00 1/0 0/0 0/0 .data            l_loadRes_GRSa */
SECTION_DATA static u8 l_loadRes_GRSa[12] = {
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809E8070-809E807C 0000AC 000C+00 1/0 0/0 0/0 .data            l_loadRes_GRS0 */
SECTION_DATA static u8 l_loadRes_GRS0[12] = {
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809E807C-809E8084 -00001 0008+00 2/2 0/0 0/0 .data            l_loadRes_list */
SECTION_DATA static void* l_loadRes_list[2] = {
    (void*)&l_loadRes_GRSa,
    (void*)&l_loadRes_GRS0,
};

/* 809E8084-809E8088 -00001 0004+00 6/8 0/0 0/0 .data            l_resNames */
SECTION_DATA static void* l_resNames = (void*)&d_a_npc_grs__stringBase0;

/* 809E8088-809E8090 -00001 0008+00 0/1 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtNames[2] = {
    (void*)NULL,
    (void*)(((char*)&d_a_npc_grs__stringBase0) + 0x4),
};
#pragma pop

/* 809E8090-809E8094 -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)&d_a_npc_grs__stringBase0;
#pragma pop

/* 809E8094-809E809C -00001 0008+00 0/1 0/0 0/0 .data            mEvtCutNameList__11daNpc_grS_c */
#pragma push
#pragma force_active on
SECTION_DATA void* daNpc_grS_c::mEvtCutNameList[2] = {
    (void*)(((char*)&d_a_npc_grs__stringBase0) + 0xC),
    (void*)(((char*)&d_a_npc_grs__stringBase0) + 0x4),
};
#pragma pop

/* 809E809C-809E80A8 -00001 000C+00 1/1 0/0 0/0 .data            @4051 */
SECTION_DATA static void* lit_4051[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutPushOut__11daNpc_grS_cFi,
};

/* 809E80A8-809E80C0 0000E4 0018+00 1/2 0/0 0/0 .data            mEvtCutList__11daNpc_grS_c */
SECTION_DATA u8 daNpc_grS_c::mEvtCutList[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 809E80C0-809E80CC -00001 000C+00 1/1 0/0 0/0 .data            @4522 */
SECTION_DATA static void* lit_4522[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__11daNpc_grS_cFPv,
};

/* 809E80CC-809E80D8 -00001 000C+00 1/1 0/0 0/0 .data            @5142 */
SECTION_DATA static void* lit_5142[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__11daNpc_grS_cFPv,
};

/* 809E80D8-809E80E4 -00001 000C+00 1/1 0/0 0/0 .data            @5146 */
SECTION_DATA static void* lit_5146[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_grS_cFPv,
};

/* 809E80E4-809E80F0 -00001 000C+00 0/1 0/0 0/0 .data            @5191 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5191[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_grS_cFPv,
};
#pragma pop

/* 809E80F0-809E80FC -00001 000C+00 0/1 0/0 0/0 .data            @5199 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5199[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_grS_cFPv,
};
#pragma pop

/* 809E80FC-809E811C -00001 0020+00 1/0 0/0 0/0 .data            daNpc_grS_MethodTable */
static actor_method_class daNpc_grS_MethodTable = {
    (process_method_func)daNpc_grS_Create__FPv,
    (process_method_func)daNpc_grS_Delete__FPv,
    (process_method_func)daNpc_grS_Execute__FPv,
    (process_method_func)daNpc_grS_IsDelete__FPv,
    (process_method_func)daNpc_grS_Draw__FPv,
};

/* 809E811C-809E814C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_GRS */
extern actor_process_profile_definition g_profile_NPC_GRS = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_GRS,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_grS_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  313,                    // mPriority
  &daNpc_grS_MethodTable, // sub_method
  0x00044100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 809E814C-809E8158 000188 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 809E8158-809E81A0 000194 0048+00 2/2 0/0 0/0 .data            __vt__11daNpc_grS_c */
SECTION_DATA extern void* __vt__11daNpc_grS_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_grS_cFv,
    (void*)setParam__11daNpc_grS_cFv,
    (void*)main__11daNpc_grS_cFv,
    (void*)ctrlBtk__11daNpc_grS_cFv,
    (void*)adjustShapeAngle__11daNpc_grS_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__11daNpc_grS_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__11daNpc_grS_cFib,
    (void*)setExpressionBtp__11daNpc_grS_cFi,
    (void*)setExpression__11daNpc_grS_cFif,
    (void*)setMotionAnm__11daNpc_grS_cFif,
    (void*)setMotion__11daNpc_grS_cFifi,
    (void*)drawDbgInfo__11daNpc_grS_cFv,
    (void*)drawOtherMdls__11daNpc_grS_cFv,
};

/* 809E81A0-809E81AC 0001DC 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 809E81AC-809E81D0 0001E8 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809E7DB0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809E7DA8,
};

/* 809E81D0-809E81DC 00020C 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 809E81DC-809E81E8 000218 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 809E81E8-809E81F4 000224 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 809E81F4-809E8200 000230 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 809E8200-809E820C 00023C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 809E820C-809E8218 000248 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 809E8218-809E8224 000254 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 809E40CC-809E4250 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__11daNpc_grS_cFv */
daNpc_grS_c::daNpc_grS_c() {
    // NONMATCHING
}

/* 809E4250-809E4298 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 809E4298-809E42E0 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 809E42E0-809E44E0 000300 0200+00 1/0 0/0 0/0 .text            __dt__11daNpc_grS_cFv */
daNpc_grS_c::~daNpc_grS_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809E7DCC-809E7E38 000000 006C+00 14/14 0/0 0/0 .rodata          m__17daNpc_grS_Param_c */
SECTION_RODATA u8 const daNpc_grS_Param_c::m[108] = {
    0x42, 0xF0, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x44, 0x16, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x42, 0xF0, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x43, 0x34, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809E7DCC, &daNpc_grS_Param_c::m);

/* 809E7E38-809E7E3C 00006C 0004+00 0/1 0/0 0/0 .rodata          @4426 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4426 = -300.0f;
COMPILER_STRIP_GATE(0x809E7E38, &lit_4426);
#pragma pop

/* 809E7E3C-809E7E40 000070 0004+00 0/1 0/0 0/0 .rodata          @4427 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4427 = -50.0f;
COMPILER_STRIP_GATE(0x809E7E3C, &lit_4427);
#pragma pop

/* 809E7E40-809E7E44 000074 0004+00 0/1 0/0 0/0 .rodata          @4428 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4428 = 300.0f;
COMPILER_STRIP_GATE(0x809E7E40, &lit_4428);
#pragma pop

/* 809E7E44-809E7E48 000078 0004+00 0/1 0/0 0/0 .rodata          @4429 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4429 = 450.0f;
COMPILER_STRIP_GATE(0x809E7E44, &lit_4429);
#pragma pop

/* 809E44E0-809E47B4 000500 02D4+00 1/1 0/0 0/0 .text            create__11daNpc_grS_cFv */
void daNpc_grS_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809E7E48-809E7E4C 00007C 0004+00 4/5 0/0 0/0 .rodata          @4490 */
SECTION_RODATA static f32 const lit_4490 = 1.0f;
COMPILER_STRIP_GATE(0x809E7E48, &lit_4490);

/* 809E7E4C-809E7E50 000080 0004+00 5/7 0/0 0/0 .rodata          @4491 */
SECTION_RODATA static u8 const lit_4491[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809E7E4C, &lit_4491);

/* 809E47B4-809E4A9C 0007D4 02E8+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_grS_cFv */
void daNpc_grS_c::CreateHeap() {
    // NONMATCHING
}

/* 809E4A9C-809E4AD8 000ABC 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 809E4AD8-809E4AF0 000AF8 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 809E4AF0-809E4B2C 000B10 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 809E4B2C-809E4B44 000B4C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 809E4B44-809E4B8C 000B64 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 809E4B8C-809E4BB0 000BAC 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 809E4BB0-809E4BEC 000BD0 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 809E4BEC-809E4C04 000C0C 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 809E4C04-809E4C40 000C24 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 809E4C40-809E4C58 000C60 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 809E4C58-809E4C8C 000C78 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_grS_cFv */
void daNpc_grS_c::Delete() {
    // NONMATCHING
}

/* 809E4C8C-809E4CAC 000CAC 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_grS_cFv */
void daNpc_grS_c::Execute() {
    // NONMATCHING
}

/* 809E4CAC-809E4D3C 000CCC 0090+00 1/1 0/0 0/0 .text            Draw__11daNpc_grS_cFv */
void daNpc_grS_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809E7E50-809E7E5C 000084 000C+00 1/1 0/0 0/0 .rodata          @4543 */
SECTION_RODATA static u8 const lit_4543[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x809E7E50, &lit_4543);

/* 809E4D3C-809E4F70 000D5C 0234+00 1/1 0/0 0/0 .text
 * ctrlJoint__11daNpc_grS_cFP8J3DJointP8J3DModel                */
void daNpc_grS_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 809E4F70-809E4F90 000F90 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_grS_cFP10fopAc_ac_c              */
void daNpc_grS_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809E4F90-809E4FDC 000FB0 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpc_grS_cFP8J3DJointi
 */
void daNpc_grS_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 809E4FDC-809E510C 000FFC 0130+00 1/0 0/0 0/0 .text            setParam__11daNpc_grS_cFv */
void daNpc_grS_c::setParam() {
    // NONMATCHING
}

/* 809E510C-809E528C 00112C 0180+00 1/0 0/0 0/0 .text            main__11daNpc_grS_cFv */
void daNpc_grS_c::main() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809E7E5C-809E7E60 000090 0004+00 5/5 0/0 0/0 .rodata          @4746 */
SECTION_RODATA static f32 const lit_4746 = -1.0f;
COMPILER_STRIP_GATE(0x809E7E5C, &lit_4746);

/* 809E7E60-809E7E64 000094 0004+00 1/1 0/0 0/0 .rodata          @4747 */
SECTION_RODATA static f32 const lit_4747 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x809E7E60, &lit_4747);

/* 809E528C-809E536C 0012AC 00E0+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpc_grS_cFv */
void daNpc_grS_c::ctrlBtk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809E7E64-809E7E68 000098 0004+00 0/1 0/0 0/0 .rodata          @4880 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4880 = 16.0f;
COMPILER_STRIP_GATE(0x809E7E64, &lit_4880);
#pragma pop

/* 809E7E68-809E7E6C 00009C 0004+00 0/1 0/0 0/0 .rodata          @4881 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4881 = 20.0f;
COMPILER_STRIP_GATE(0x809E7E68, &lit_4881);
#pragma pop

/* 809E7E6C-809E7E70 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4882 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4882 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x809E7E6C, &lit_4882);
#pragma pop

/* 809E7E70-809E7E74 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4883 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4883 = 125.0f;
COMPILER_STRIP_GATE(0x809E7E70, &lit_4883);
#pragma pop

/* 809E7E74-809E7E7C 0000A8 0008+00 0/1 0/0 0/0 .rodata          @4884 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4884[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809E7E74, &lit_4884);
#pragma pop

/* 809E7E7C-809E7E84 0000B0 0008+00 0/1 0/0 0/0 .rodata          @4885 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4885[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809E7E7C, &lit_4885);
#pragma pop

/* 809E7E84-809E7E8C 0000B8 0008+00 0/1 0/0 0/0 .rodata          @4886 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4886[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809E7E84, &lit_4886);
#pragma pop

/* 809E8278-809E8284 000048 000C+00 1/1 0/0 0/0 .bss             @4050 */
static u8 lit_4050[12];

/* 809E8284-809E8288 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 809E8288-809E8298 000058 000C+04 0/1 0/0 0/0 .bss             @4752 */
#pragma push
#pragma force_active on
static u8 lit_4752[12 + 4 /* padding */];
#pragma pop

/* 809E8298-809E82A4 000068 000C+00 0/1 0/0 0/0 .bss             eyeOffset$4751 */
#pragma push
#pragma force_active on
static u8 eyeOffset[12];
#pragma pop

/* 809E536C-809E5874 00138C 0508+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_grS_cFv */
void daNpc_grS_c::setAttnPos() {
    // NONMATCHING
}

/* 809E5874-809E5A08 001894 0194+00 1/0 0/0 0/0 .text            setExpressionAnm__11daNpc_grS_cFib
 */
void daNpc_grS_c::setExpressionAnm(int param_0, bool param_1) {
    // NONMATCHING
}

/* 809E5A08-809E5B1C 001A28 0114+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpc_grS_cFi
 */
void daNpc_grS_c::setExpressionBtp(int param_0) {
    // NONMATCHING
}

/* 809E5B1C-809E5B48 001B3C 002C+00 1/0 0/0 0/0 .text            setExpression__11daNpc_grS_cFif */
void daNpc_grS_c::setExpression(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 809E5B48-809E5CB8 001B68 0170+00 1/0 0/0 0/0 .text            setMotionAnm__11daNpc_grS_cFif */
bool daNpc_grS_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 809E5CB8-809E5CFC 001CD8 0044+00 1/0 0/0 0/0 .text            setMotion__11daNpc_grS_cFifi */
void daNpc_grS_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 809E5CFC-809E5D04 001D1C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_grS_cFv */
bool daNpc_grS_c::drawDbgInfo() {
    return false;
}

/* 809E5D04-809E5DB4 001D24 00B0+00 1/0 0/0 0/0 .text            drawOtherMdls__11daNpc_grS_cFv */
void daNpc_grS_c::drawOtherMdls() {
    // NONMATCHING
}

/* 809E5DB4-809E5DD4 001DD4 0020+00 1/1 0/0 0/0 .text            getTypeFromParam__11daNpc_grS_cFv
 */
void daNpc_grS_c::getTypeFromParam() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809E7F9C-809E7F9C 0001D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809E7FA9 = "D_MN04";
#pragma pop

/* 809E5DD4-809E5E58 001DF4 0084+00 1/1 0/0 0/0 .text            isDelete__11daNpc_grS_cFv */
void daNpc_grS_c::isDelete() {
    // NONMATCHING
}

/* 809E5E58-809E6000 001E78 01A8+00 1/1 0/0 0/0 .text            reset__11daNpc_grS_cFv */
void daNpc_grS_c::reset() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809E7E8C-809E7E98 0000C0 000C+00 0/1 0/0 0/0 .rodata          @5077 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5077[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809E7E8C, &lit_5077);
#pragma pop

/* 809E7E98-809E7E9C 0000CC 0004+00 0/1 0/0 0/0 .rodata          @5078 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5078[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809E7E98, &lit_5078);
#pragma pop

/* 809E7E9C-809E7EA8 0000D0 000C+00 0/1 0/0 0/0 .rodata          @5079 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5079[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809E7E9C, &lit_5079);
#pragma pop

/* 809E7EA8-809E7EB4 0000DC 000C+00 0/1 0/0 0/0 .rodata          @5080 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5080[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809E7EA8, &lit_5080);
#pragma pop

/* 809E7EB4-809E7EBC 0000E8 0008+00 0/1 0/0 0/0 .rodata          @5081 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5081[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809E7EB4, &lit_5081);
#pragma pop

/* 809E7EBC-809E7EC8 0000F0 000C+00 0/1 0/0 0/0 .rodata          @5082 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5082[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809E7EBC, &lit_5082);
#pragma pop

/* 809E7EC8-809E7ECC 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5083 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5083[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809E7EC8, &lit_5083);
#pragma pop

/* 809E7ECC-809E7ED8 000100 000C+00 0/1 0/0 0/0 .rodata          @5084 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5084[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809E7ECC, &lit_5084);
#pragma pop

/* 809E7ED8-809E7EDC 00010C 0004+00 0/1 0/0 0/0 .rodata          @5085 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5085[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809E7ED8, &lit_5085);
#pragma pop

/* 809E7EDC-809E7EEC 000110 0010+00 0/1 0/0 0/0 .rodata          @5086 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5086[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809E7EDC, &lit_5086);
#pragma pop

/* 809E6000-809E6164 002020 0164+00 1/1 0/0 0/0 .text            playExpression__11daNpc_grS_cFv */
void daNpc_grS_c::playExpression() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809E7EEC-809E7EF8 000120 000C+00 0/1 0/0 0/0 .rodata          @5101 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5101[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809E7EEC, &lit_5101);
#pragma pop

/* 809E7EF8-809E7EFC 00012C 0004+00 0/1 0/0 0/0 .rodata          @5102 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5102[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809E7EF8, &lit_5102);
#pragma pop

/* 809E7EFC-809E7F08 000130 000C+00 0/1 0/0 0/0 .rodata          @5103 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5103[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809E7EFC, &lit_5103);
#pragma pop

/* 809E7F08-809E7F14 00013C 000C+00 0/1 0/0 0/0 .rodata          @5104 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5104[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809E7F08, &lit_5104);
#pragma pop

/* 809E7F14-809E7F1C 000148 0008+00 0/1 0/0 0/0 .rodata          @5105 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5105[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809E7F14, &lit_5105);
#pragma pop

/* 809E7F1C-809E7F28 000150 000C+00 0/1 0/0 0/0 .rodata          @5106 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5106[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809E7F1C, &lit_5106);
#pragma pop

/* 809E7F28-809E7F34 00015C 000C+00 0/1 0/0 0/0 .rodata          @5107 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5107[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809E7F28, &lit_5107);
#pragma pop

/* 809E7F34-809E7F3C 000168 0008+00 0/1 0/0 0/0 .rodata          @5108 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5108[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809E7F34, &lit_5108);
#pragma pop

/* 809E7F3C-809E7F48 000170 000C+00 0/1 0/0 0/0 .rodata          @5109 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5109[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809E7F3C, &lit_5109);
#pragma pop

/* 809E7F48-809E7F4C 00017C 0004+00 0/1 0/0 0/0 .rodata          @5110 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5110[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809E7F48, &lit_5110);
#pragma pop

/* 809E7F4C-809E7F5C 000180 0010+00 0/1 0/0 0/0 .rodata          @5111 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5111[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809E7F4C, &lit_5111);
#pragma pop

/* 809E6164-809E62F0 002184 018C+00 1/1 0/0 0/0 .text            playMotion__11daNpc_grS_cFv */
void daNpc_grS_c::playMotion() {
    // NONMATCHING
}

/* 809E62F0-809E631C 002310 002C+00 2/2 0/0 0/0 .text
 * chkAction__11daNpc_grS_cFM11daNpc_grS_cFPCvPvPv_i            */
void daNpc_grS_c::chkAction(int (daNpc_grS_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809E631C-809E63C4 00233C 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_grS_cFM11daNpc_grS_cFPCvPvPv_i            */
void daNpc_grS_c::setAction(int (daNpc_grS_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809E63C4-809E6444 0023E4 0080+00 1/1 0/0 0/0 .text            selectAction__11daNpc_grS_cFv */
void daNpc_grS_c::selectAction() {
    // NONMATCHING
}

/* 809E6444-809E6570 002464 012C+00 1/1 0/0 0/0 .text            doNormalAction__11daNpc_grS_cFi */
void daNpc_grS_c::doNormalAction(int param_0) {
    // NONMATCHING
}

/* 809E6570-809E6854 002590 02E4+00 1/1 0/0 0/0 .text            doEvent__11daNpc_grS_cFv */
void daNpc_grS_c::doEvent() {
    // NONMATCHING
}

/* 809E6854-809E6878 002874 0024+00 5/5 0/0 0/0 .text            setLookMode__11daNpc_grS_cFi */
void daNpc_grS_c::setLookMode(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809E7F5C-809E7F68 000190 000C+00 0/1 0/0 0/0 .rodata          @5257 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5257[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809E7F5C, &lit_5257);
#pragma pop

/* 809E7F68-809E7F6C 00019C 0004+00 0/1 0/0 0/0 .rodata          @5310 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5310 = -80.0f;
COMPILER_STRIP_GATE(0x809E7F68, &lit_5310);
#pragma pop

/* 809E7F6C-809E7F70 0001A0 0004+00 0/1 0/0 0/0 .rodata          @5311 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5311 = 80.0f;
COMPILER_STRIP_GATE(0x809E7F6C, &lit_5311);
#pragma pop

/* 809E7F70-809E7F74 0001A4 0004+00 0/1 0/0 0/0 .rodata          @5312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5312 = 40.0f;
COMPILER_STRIP_GATE(0x809E7F70, &lit_5312);
#pragma pop

/* 809E6878-809E6B00 002898 0288+00 1/1 0/0 0/0 .text            lookat__11daNpc_grS_cFv */
void daNpc_grS_c::lookat() {
    // NONMATCHING
}

/* 809E6B00-809E6B74 002B20 0074+00 1/1 0/0 0/0 .text setExpressionTalkAfter__11daNpc_grS_cFv */
void daNpc_grS_c::setExpressionTalkAfter() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809E7F9C-809E7F9C 0001D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809E7FB0 = "prm";
#pragma pop

/* 809E6B74-809E6D54 002B94 01E0+00 1/0 0/0 0/0 .text            cutPushOut__11daNpc_grS_cFi */
void daNpc_grS_c::cutPushOut(int param_0) {
    // NONMATCHING
}

/* 809E6D54-809E6F5C 002D74 0208+00 1/0 0/0 0/0 .text            wait__11daNpc_grS_cFPv */
void daNpc_grS_c::wait(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809E7F9C-809E7F9C 0001D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809E7FB4 = "DEFAULT_GETITEM";
#pragma pop

/* 809E6F5C-809E721C 002F7C 02C0+00 2/0 0/0 0/0 .text            talk__11daNpc_grS_cFPv */
void daNpc_grS_c::talk(void* param_0) {
    // NONMATCHING
}

/* 809E721C-809E7300 00323C 00E4+00 2/0 0/0 0/0 .text            test__11daNpc_grS_cFPv */
void daNpc_grS_c::test(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809E7F74-809E7F80 0001A8 000C+00 0/1 0/0 0/0 .rodata          id$5516 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const id[12] = {
    0x83, 0x81, 0x83, 0x82, 0x83, 0x83, 0x83, 0x84, 0x83, 0x85, 0x83, 0x86,
};
COMPILER_STRIP_GATE(0x809E7F74, &id);
#pragma pop

/* 809E7F80-809E7F98 0001B4 0018+00 0/1 0/0 0/0 .rodata          jointNo$5517 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const jointNo[24] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
};
COMPILER_STRIP_GATE(0x809E7F80, &jointNo);
#pragma pop

/* 809E7F98-809E7F9C 0001CC 0004+00 0/1 0/0 0/0 .rodata          @5571 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5571 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x809E7F98, &lit_5571);
#pragma pop

/* 809E7300-809E743C 003320 013C+00 1/1 0/0 0/0 .text            setPrtcl__11daNpc_grS_cFv */
void daNpc_grS_c::setPrtcl() {
    // NONMATCHING
}

/* 809E743C-809E745C 00345C 0020+00 1/0 0/0 0/0 .text            daNpc_grS_Create__FPv */
static void daNpc_grS_Create(void* param_0) {
    // NONMATCHING
}

/* 809E745C-809E747C 00347C 0020+00 1/0 0/0 0/0 .text            daNpc_grS_Delete__FPv */
static void daNpc_grS_Delete(void* param_0) {
    // NONMATCHING
}

/* 809E747C-809E749C 00349C 0020+00 1/0 0/0 0/0 .text            daNpc_grS_Execute__FPv */
static void daNpc_grS_Execute(void* param_0) {
    // NONMATCHING
}

/* 809E749C-809E74BC 0034BC 0020+00 1/0 0/0 0/0 .text            daNpc_grS_Draw__FPv */
static void daNpc_grS_Draw(void* param_0) {
    // NONMATCHING
}

/* 809E74BC-809E74C4 0034DC 0008+00 1/0 0/0 0/0 .text            daNpc_grS_IsDelete__FPv */
static bool daNpc_grS_IsDelete(void* param_0) {
    return true;
}

/* 809E74C4-809E74F4 0034E4 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 809E74F4-809E753C 003514 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809E753C-809E7578 00355C 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809E7578-809E7648 003598 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 809E7648-809E7684 003668 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 809E7684-809E7688 0036A4 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 809E7688-809E76C4 0036A8 003C+00 6/6 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 809E76C4-809E76C8 0036E4 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 809E76C8-809E7914 0036E8 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809E7914-809E7B04 003934 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809E7B04-809E7B74 003B24 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809E7B74-809E7BD0 003B94 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 809E7BD0-809E7C40 003BF0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809E7C40-809E7C88 003C60 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 809E7C88-809E7C8C 003CA8 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 809E7C8C-809E7CD4 003CAC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809E8224-809E8230 000260 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_grS_Param_c */
SECTION_DATA extern void* __vt__17daNpc_grS_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_grS_Param_cFv,
};

/* 809E7CD4-809E7D5C 003CF4 0088+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_grs_cpp */
void __sinit_d_a_npc_grs_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x809E7CD4, __sinit_d_a_npc_grs_cpp);
#pragma pop

/* 809E7D5C-809E7D60 003D7C 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__11daNpc_grS_cFv
 */
void daNpc_grS_c::adjustShapeAngle() {
    /* empty function */
}

/* 809E7D60-809E7DA8 003D80 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_grS_Param_cFv */
daNpc_grS_Param_c::~daNpc_grS_Param_c() {
    // NONMATCHING
}

/* 809E7DA8-809E7DB0 003DC8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809E7DA8() {
    // NONMATCHING
}

/* 809E7DB0-809E7DB8 003DD0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809E7DB0() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809E82A4-809E82A8 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_809E82A4[4];
#pragma pop

/* 809E82A8-809E82AC 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_809E82A8[4];
#pragma pop

/* 809E82AC-809E82B0 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_809E82AC[4];
#pragma pop

/* 809E82B0-809E82B4 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_809E82B0[4];
#pragma pop

/* 809E82B4-809E82B8 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809E82B4[4];
#pragma pop

/* 809E82B8-809E82BC 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809E82B8[4];
#pragma pop

/* 809E82BC-809E82C0 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_809E82BC[4];
#pragma pop

/* 809E82C0-809E82C4 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_809E82C0[4];
#pragma pop

/* 809E82C4-809E82C8 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_809E82C4[4];
#pragma pop

/* 809E82C8-809E82CC 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_809E82C8[4];
#pragma pop

/* 809E82CC-809E82D0 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_809E82CC[4];
#pragma pop

/* 809E82D0-809E82D4 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_809E82D0[4];
#pragma pop

/* 809E82D4-809E82D8 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_809E82D4[4];
#pragma pop

/* 809E82D8-809E82DC 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809E82D8[4];
#pragma pop

/* 809E82DC-809E82E0 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_809E82DC[4];
#pragma pop

/* 809E82E0-809E82E4 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_809E82E0[4];
#pragma pop

/* 809E82E4-809E82E8 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_809E82E4[4];
#pragma pop

/* 809E82E8-809E82EC 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_809E82E8[4];
#pragma pop

/* 809E82EC-809E82F0 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_809E82EC[4];
#pragma pop

/* 809E82F0-809E82F4 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_809E82F0[4];
#pragma pop

/* 809E82F4-809E82F8 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_809E82F4[4];
#pragma pop

/* 809E82F8-809E82FC 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809E82F8[4];
#pragma pop

/* 809E82FC-809E8300 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809E82FC[4];
#pragma pop

/* 809E8300-809E8304 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809E8300[4];
#pragma pop

/* 809E8304-809E8308 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_809E8304[4];
#pragma pop

/* 809E7F9C-809E7F9C 0001D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
