/**
 * @file d_a_npc_ashB.cpp
 * 
*/

#include "d/actor/d_a_npc_ashB.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void __ct__11daNpcAshB_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__11daNpcAshB_cFv();
extern "C" void Create__11daNpcAshB_cFv();
extern "C" void CreateHeap__11daNpcAshB_cFv();
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
extern "C" void Delete__11daNpcAshB_cFv();
extern "C" void Execute__11daNpcAshB_cFv();
extern "C" void Draw__11daNpcAshB_cFv();
extern "C" void ctrlJoint__11daNpcAshB_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__11daNpcAshB_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpcAshB_cFP8J3DJointi();
extern "C" void setExpressionAnm__11daNpcAshB_cFib();
extern "C" void setExpressionBtp__11daNpcAshB_cFi();
extern "C" void setMotionAnm__11daNpcAshB_cFif();
extern "C" void reset__11daNpcAshB_cFv();
extern "C" void setAction__11daNpcAshB_cFM11daNpcAshB_cFPCvPvPv_b();
extern "C" void wait__11daNpcAshB_cFPv();
extern "C" void setMotion__11daNpcAshB_cFifi();
extern "C" void setExpression__11daNpcAshB_cFif();
extern "C" void talk__11daNpcAshB_cFPv();
extern "C" void demo__11daNpcAshB_cFPv();
extern "C" void EvCut_Appear__11daNpcAshB_cFi();
extern "C" static void daNpcAshB_Create__FPv();
extern "C" static void daNpcAshB_Delete__FPv();
extern "C" static void daNpcAshB_Execute__FPv();
extern "C" static void daNpcAshB_Draw__FPv();
extern "C" static bool daNpcAshB_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void setParam__11daNpcAshB_cFv();
extern "C" void main__11daNpcAshB_cFv();
extern "C" void playMotion__11daNpcAshB_cFv();
extern "C" void ctrlBtk__11daNpcAshB_cFv();
extern "C" void setAttnPos__11daNpcAshB_cFv();
extern "C" void lookat__11daNpcAshB_cFv();
extern "C" void drawOtherMdls__11daNpcAshB_cFv();
extern "C" bool drawDbgInfo__11daNpcAshB_cFv();
extern "C" void func_80961800(void* _this, s16);
extern "C" void __sinit_d_a_npc_ashB_cpp();
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
extern "C" void __dt__17daNpcAshB_Param_cFv();
extern "C" static void func_809620C0();
extern "C" static void func_809620C8();
extern "C" u8 const m__17daNpcAshB_Param_c[112];
extern "C" extern char const* const d_a_npc_ashB__stringBase0;
extern "C" u8 mEvtSeqList__11daNpcAshB_c[24];

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
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyNowCutName__16dEvent_manager_cFi();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void getRunEventName__16dEvent_manager_cFv();
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
extern "C" void chkActorInSight__8daNpcF_cFP10fopAc_ac_cf();
extern "C" void chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void turn__8daNpcF_cFsfi();
extern "C" void getDistTableIdx__8daNpcF_cFii();
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
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
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
/* 809623E8-809623E8 000304 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809623E8 = "AshB";
SECTION_DEAD static char const* const stringBase_809623ED = "ASHB_APPEAR";
#pragma pop

/* 80962418-80962424 000000 000C+00 3/3 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80962424-80962438 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80962438-80962534 000020 00FC+00 1/2 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[252] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80962534-80962564 00011C 0030+00 1/1 0/0 0/0 .data            l_btpGetParamList */
SECTION_DATA static u8 l_btpGetParamList[48] = {
    0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x29,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80962564-80962594 00014C 0030+00 1/2 0/0 0/0 .data            l_btkGetParamList */
SECTION_DATA static u8 l_btkGetParamList[48] = {
    0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80962594-80962598 -00001 0004+00 6/8 0/0 0/0 .data            l_arcNames */
SECTION_DATA static void* l_arcNames = (void*)&d_a_npc_ashB__stringBase0;

/* 80962598-809625A0 -00001 0008+00 0/1 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtNames[2] = {
    (void*)NULL,
    (void*)(((char*)&d_a_npc_ashB__stringBase0) + 0x5),
};
#pragma pop

/* 809625A0-809625A4 -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)&d_a_npc_ashB__stringBase0;
#pragma pop

/* 809625A4-809625B0 -00001 000C+00 1/1 0/0 0/0 .data            @3811 */
SECTION_DATA static void* lit_3811[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_Appear__11daNpcAshB_cFi,
};

/* 809625B0-809625C8 000198 0018+00 1/2 0/0 0/0 .data            mEvtSeqList__11daNpcAshB_c */
SECTION_DATA u8 daNpcAshB_c::mEvtSeqList[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 809625C8-809625E4 -00001 001C+00 1/1 0/0 0/0 .data            @4423 */
SECTION_DATA static void* lit_4423[7] = {
    (void*)(((char*)setExpressionAnm__11daNpcAshB_cFib) + 0xB4),
    (void*)(((char*)setExpressionAnm__11daNpcAshB_cFib) + 0xD0),
    (void*)(((char*)setExpressionAnm__11daNpcAshB_cFib) + 0xEC),
    (void*)(((char*)setExpressionAnm__11daNpcAshB_cFib) + 0x108),
    (void*)(((char*)setExpressionAnm__11daNpcAshB_cFib) + 0x124),
    (void*)(((char*)setExpressionAnm__11daNpcAshB_cFib) + 0x140),
    (void*)(((char*)setExpressionAnm__11daNpcAshB_cFib) + 0x15C),
};

/* 809625E4-809625F0 -00001 000C+00 1/1 0/0 0/0 .data            @4500 */
SECTION_DATA static void* lit_4500[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcAshB_cFPv,
};

/* 809625F0-809625FC -00001 000C+00 0/1 0/0 0/0 .data            @4674 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4674[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpcAshB_cFPv,
};
#pragma pop

/* 809625FC-80962608 -00001 000C+00 0/1 0/0 0/0 .data            @4678 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4678[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpcAshB_cFPv,
};
#pragma pop

/* 80962608-80962614 -00001 000C+00 0/1 0/0 0/0 .data            @4683 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4683[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__11daNpcAshB_cFPv,
};
#pragma pop

/* 80962614-80962620 -00001 000C+00 1/1 0/0 0/0 .data            @4874 */
SECTION_DATA static void* lit_4874[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcAshB_cFPv,
};

/* 80962620-8096262C -00001 000C+00 1/1 0/0 0/0 .data            @4877 */
SECTION_DATA static void* lit_4877[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcAshB_cFPv,
};

/* 8096262C-80962638 -00001 000C+00 0/1 0/0 0/0 .data            @4962 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4962[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcAshB_cFPv,
};
#pragma pop

/* 80962638-8096265C -00001 0024+00 1/1 0/0 0/0 .data            @5084 */
SECTION_DATA static void* lit_5084[9] = {
    (void*)(((char*)EvCut_Appear__11daNpcAshB_cFi) + 0x194),
    (void*)(((char*)EvCut_Appear__11daNpcAshB_cFi) + 0x194),
    (void*)(((char*)EvCut_Appear__11daNpcAshB_cFi) + 0x19C),
    (void*)(((char*)EvCut_Appear__11daNpcAshB_cFi) + 0x33C),
    (void*)(((char*)EvCut_Appear__11daNpcAshB_cFi) + 0x360),
    (void*)(((char*)EvCut_Appear__11daNpcAshB_cFi) + 0x33C),
    (void*)(((char*)EvCut_Appear__11daNpcAshB_cFi) + 0x33C),
    (void*)(((char*)EvCut_Appear__11daNpcAshB_cFi) + 0x3FC),
    (void*)(((char*)EvCut_Appear__11daNpcAshB_cFi) + 0x33C),
};

/* 8096265C-80962680 -00001 0024+00 1/1 0/0 0/0 .data            @5083 */
SECTION_DATA static void* lit_5083[9] = {
    (void*)(((char*)EvCut_Appear__11daNpcAshB_cFi) + 0x168),
    (void*)(((char*)EvCut_Appear__11daNpcAshB_cFi) + 0x7C),
    (void*)(((char*)EvCut_Appear__11daNpcAshB_cFi) + 0x94),
    (void*)(((char*)EvCut_Appear__11daNpcAshB_cFi) + 0xB4),
    (void*)(((char*)EvCut_Appear__11daNpcAshB_cFi) + 0xC8),
    (void*)(((char*)EvCut_Appear__11daNpcAshB_cFi) + 0xB4),
    (void*)(((char*)EvCut_Appear__11daNpcAshB_cFi) + 0xB4),
    (void*)(((char*)EvCut_Appear__11daNpcAshB_cFi) + 0x110),
    (void*)(((char*)EvCut_Appear__11daNpcAshB_cFi) + 0xB4),
};

/* 80962680-809626A0 -00001 0020+00 1/0 0/0 0/0 .data            daNpcAshB_MethodTable */
static actor_method_class daNpcAshB_MethodTable = {
    (process_method_func)daNpcAshB_Create__FPv,
    (process_method_func)daNpcAshB_Delete__FPv,
    (process_method_func)daNpcAshB_Execute__FPv,
    (process_method_func)daNpcAshB_IsDelete__FPv,
    (process_method_func)daNpcAshB_Draw__FPv,
};

/* 809626A0-809626D0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_ASHB */
extern actor_process_profile_definition g_profile_NPC_ASHB = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_ASHB,          // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daNpcAshB_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  412,                    // mPriority
  &daNpcAshB_MethodTable, // sub_method
  0x00040100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 809626D0-809626DC 0002B8 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 809626DC-80962724 0002C4 0048+00 2/2 0/0 0/0 .data            __vt__11daNpcAshB_c */
SECTION_DATA extern void* __vt__11daNpcAshB_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpcAshB_cFv,
    (void*)setParam__11daNpcAshB_cFv,
    (void*)main__11daNpcAshB_cFv,
    (void*)ctrlBtk__11daNpcAshB_cFv,
    (void*)adjustShapeAngle__8daNpcF_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__11daNpcAshB_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__11daNpcAshB_cFib,
    (void*)setExpressionBtp__11daNpcAshB_cFi,
    (void*)setExpression__11daNpcAshB_cFif,
    (void*)setMotionAnm__11daNpcAshB_cFif,
    (void*)setMotion__11daNpcAshB_cFifi,
    (void*)drawDbgInfo__11daNpcAshB_cFv,
    (void*)drawOtherMdls__11daNpcAshB_cFv,
};

/* 80962724-80962730 00030C 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80962730-80962754 000318 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809620C8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809620C0,
};

/* 80962754-80962760 00033C 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80962760-8096276C 000348 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8096276C-80962778 000354 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80962778-80962784 000360 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80962784-80962790 00036C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80962790-8096279C 000378 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8096279C-809627A8 000384 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 8095DE4C-8095DFD0 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__11daNpcAshB_cFv */
daNpcAshB_c::daNpcAshB_c() {
    // NONMATCHING
}

/* 8095DFD0-8095E018 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 8095E018-8095E060 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8095E060-8095E224 000300 01C4+00 1/0 0/0 0/0 .text            __dt__11daNpcAshB_cFv */
daNpcAshB_c::~daNpcAshB_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809620E4-80962154 000000 0070+00 11/11 0/0 0/0 .rodata          m__17daNpcAshB_Param_c */
SECTION_RODATA u8 const daNpcAshB_Param_c::m[112] = {
    0x43, 0x4D, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00, 0xC1, 0x70, 0x00, 0x00,
    0x41, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0xC1, 0xA0, 0x00, 0x00,
    0x3F, 0x4C, 0xCC, 0xCD, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xA0, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809620E4, &daNpcAshB_Param_c::m);

/* 80962154-80962158 000070 0004+00 0/1 0/0 0/0 .rodata          @4179 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4179 = -100.0f;
COMPILER_STRIP_GATE(0x80962154, &lit_4179);
#pragma pop

/* 80962158-8096215C 000074 0004+00 0/1 0/0 0/0 .rodata          @4180 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4180 = -50.0f;
COMPILER_STRIP_GATE(0x80962158, &lit_4180);
#pragma pop

/* 8096215C-80962160 000078 0004+00 0/1 0/0 0/0 .rodata          @4181 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4181 = 100.0f;
COMPILER_STRIP_GATE(0x8096215C, &lit_4181);
#pragma pop

/* 80962160-80962164 00007C 0004+00 0/1 0/0 0/0 .rodata          @4182 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4182 = 220.0f;
COMPILER_STRIP_GATE(0x80962160, &lit_4182);
#pragma pop

/* 8095E224-8095E4A0 0004C4 027C+00 1/1 0/0 0/0 .text            Create__11daNpcAshB_cFv */
void daNpcAshB_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80962164-80962168 000080 0004+00 4/4 0/0 0/0 .rodata          @4237 */
SECTION_RODATA static f32 const lit_4237 = 1.0f;
COMPILER_STRIP_GATE(0x80962164, &lit_4237);

/* 80962168-8096216C 000084 0004+00 2/6 0/0 0/0 .rodata          @4238 */
SECTION_RODATA static u8 const lit_4238[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80962168, &lit_4238);

/* 8095E4A0-8095E758 000740 02B8+00 1/1 0/0 0/0 .text            CreateHeap__11daNpcAshB_cFv */
void daNpcAshB_c::CreateHeap() {
    // NONMATCHING
}

/* 8095E758-8095E794 0009F8 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 8095E794-8095E7AC 000A34 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 8095E7AC-8095E7E8 000A4C 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 8095E7E8-8095E800 000A88 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 8095E800-8095E848 000AA0 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 8095E848-8095E86C 000AE8 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 8095E86C-8095E8A8 000B0C 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 8095E8A8-8095E8C0 000B48 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 8095E8C0-8095E8FC 000B60 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 8095E8FC-8095E914 000B9C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 8095E914-8095E948 000BB4 0034+00 1/1 0/0 0/0 .text            Delete__11daNpcAshB_cFv */
void daNpcAshB_c::Delete() {
    // NONMATCHING
}

/* 8095E948-8095E96C 000BE8 0024+00 2/2 0/0 0/0 .text            Execute__11daNpcAshB_cFv */
void daNpcAshB_c::Execute() {
    // NONMATCHING
}

/* 8095E96C-8095E9C8 000C0C 005C+00 1/1 0/0 0/0 .text            Draw__11daNpcAshB_cFv */
void daNpcAshB_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8096216C-80962178 000088 000C+00 1/1 0/0 0/0 .rodata          @4286 */
SECTION_RODATA static u8 const lit_4286[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A,
};
COMPILER_STRIP_GATE(0x8096216C, &lit_4286);

/* 8095E9C8-8095EB94 000C68 01CC+00 1/1 0/0 0/0 .text
 * ctrlJoint__11daNpcAshB_cFP8J3DJointP8J3DModel                */
void daNpcAshB_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 8095EB94-8095EBB4 000E34 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpcAshB_cFP10fopAc_ac_c              */
void daNpcAshB_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8095EBB4-8095EC00 000E54 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpcAshB_cFP8J3DJointi
 */
void daNpcAshB_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 8095EC00-8095EE00 000EA0 0200+00 2/0 0/0 0/0 .text            setExpressionAnm__11daNpcAshB_cFib
 */
void daNpcAshB_c::setExpressionAnm(int param_0, bool param_1) {
    // NONMATCHING
}

/* 8095EE00-8095EEE0 0010A0 00E0+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpcAshB_cFi
 */
void daNpcAshB_c::setExpressionBtp(int param_0) {
    // NONMATCHING
}

/* 8095EEE0-8095F0A4 001180 01C4+00 1/0 0/0 0/0 .text            setMotionAnm__11daNpcAshB_cFif */
void daNpcAshB_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 8095F0A4-8095F21C 001344 0178+00 1/1 0/0 0/0 .text            reset__11daNpcAshB_cFv */
void daNpcAshB_c::reset() {
    // NONMATCHING
}

/* 8095F21C-8095F2C4 0014BC 00A8+00 1/1 0/0 0/0 .text
 * setAction__11daNpcAshB_cFM11daNpcAshB_cFPCvPvPv_b            */
void daNpcAshB_c::setAction(bool (daNpcAshB_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80962178-80962184 000094 000C+00 0/1 0/0 0/0 .rodata          @4521 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4521[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80962178, &lit_4521);
#pragma pop

/* 80962184-80962188 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4522 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4522[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80962184, &lit_4522);
#pragma pop

/* 80962188-80962194 0000A4 000C+00 0/1 0/0 0/0 .rodata          @4523 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4523[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80962188, &lit_4523);
#pragma pop

/* 80962194-80962198 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4524 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4524[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80962194, &lit_4524);
#pragma pop

/* 80962198-809621A4 0000B4 000C+00 0/1 0/0 0/0 .rodata          @4525 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4525[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80962198, &lit_4525);
#pragma pop

/* 809621A4-809621A8 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4526 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4526[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809621A4, &lit_4526);
#pragma pop

/* 809621A8-809621B4 0000C4 000C+00 0/1 0/0 0/0 .rodata          @4527 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4527[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809621A8, &lit_4527);
#pragma pop

/* 809621B4-809621B8 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4528 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4528[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809621B4, &lit_4528);
#pragma pop

/* 809621B8-809621C4 0000D4 000C+00 0/1 0/0 0/0 .rodata          @4529 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4529[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809621B8, &lit_4529);
#pragma pop

/* 809621C4-809621C8 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4530 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4530[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809621C4, &lit_4530);
#pragma pop

/* 809621C8-809621D4 0000E4 000C+00 0/1 0/0 0/0 .rodata          @4531 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4531[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809621C8, &lit_4531);
#pragma pop

/* 809621D4-809621D8 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4532 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4532[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809621D4, &lit_4532);
#pragma pop

/* 809621D8-809621E4 0000F4 000C+00 0/1 0/0 0/0 .rodata          @4533 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4533[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809621D8, &lit_4533);
#pragma pop

/* 809621E4-809621E8 000100 0004+00 0/1 0/0 0/0 .rodata          @4534 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4534[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809621E4, &lit_4534);
#pragma pop

/* 809621E8-80962204 000104 001C+00 0/0 0/0 0/0 .rodata          @4535 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4535[28] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809621E8, &lit_4535);
#pragma pop

/* 80962204-80962210 000120 000C+00 0/1 0/0 0/0 .rodata          @4539 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4539[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80962204, &lit_4539);
#pragma pop

/* 80962210-80962214 00012C 0004+00 0/1 0/0 0/0 .rodata          @4540 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4540[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80962210, &lit_4540);
#pragma pop

/* 80962214-80962220 000130 000C+00 0/1 0/0 0/0 .rodata          @4541 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4541[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80962214, &lit_4541);
#pragma pop

/* 80962220-80962224 00013C 0004+00 0/1 0/0 0/0 .rodata          @4542 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4542[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80962220, &lit_4542);
#pragma pop

/* 80962224-80962230 000140 000C+00 0/1 0/0 0/0 .rodata          @4543 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4543[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80962224, &lit_4543);
#pragma pop

/* 80962230-8096223C 00014C 000C+00 0/1 0/0 0/0 .rodata          @4544 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4544[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80962230, &lit_4544);
#pragma pop

/* 8096223C-80962248 000158 000C+00 0/1 0/0 0/0 .rodata          @4545 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4545[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096223C, &lit_4545);
#pragma pop

/* 80962248-80962254 000164 000C+00 0/1 0/0 0/0 .rodata          @4546 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4546[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80962248, &lit_4546);
#pragma pop

/* 80962254-80962260 000170 000C+00 0/1 0/0 0/0 .rodata          @4547 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4547[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80962254, &lit_4547);
#pragma pop

/* 80962260-8096226C 00017C 000C+00 0/1 0/0 0/0 .rodata          @4548 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4548[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80962260, &lit_4548);
#pragma pop

/* 8096226C-80962274 000188 0008+00 0/1 0/0 0/0 .rodata          @4549 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4549[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096226C, &lit_4549);
#pragma pop

/* 80962274-80962280 000190 000C+00 0/1 0/0 0/0 .rodata          @4550 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4550[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80962274, &lit_4550);
#pragma pop

/* 80962280-8096228C 00019C 000C+00 0/1 0/0 0/0 .rodata          @4551 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4551[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80962280, &lit_4551);
#pragma pop

/* 8096228C-80962294 0001A8 0008+00 0/1 0/0 0/0 .rodata          @4552 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4552[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096228C, &lit_4552);
#pragma pop

/* 80962294-809622A0 0001B0 000C+00 0/1 0/0 0/0 .rodata          @4553 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4553[12] = {
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80962294, &lit_4553);
#pragma pop

/* 809622A0-809622AC 0001BC 000C+00 0/1 0/0 0/0 .rodata          @4554 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4554[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809622A0, &lit_4554);
#pragma pop

/* 809622AC-809622B4 0001C8 0008+00 0/1 0/0 0/0 .rodata          @4555 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4555[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809622AC, &lit_4555);
#pragma pop

/* 809622B4-809622C0 0001D0 000C+00 0/1 0/0 0/0 .rodata          @4556 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4556[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809622B4, &lit_4556);
#pragma pop

/* 809622C0-809622CC 0001DC 000C+00 0/1 0/0 0/0 .rodata          @4557 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4557[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809622C0, &lit_4557);
#pragma pop

/* 809622CC-809622D4 0001E8 0008+00 0/1 0/0 0/0 .rodata          @4558 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4558[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809622CC, &lit_4558);
#pragma pop

/* 809622D4-809622E0 0001F0 000C+00 0/1 0/0 0/0 .rodata          @4559 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4559[12] = {
    0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809622D4, &lit_4559);
#pragma pop

/* 809622E0-809622EC 0001FC 000C+00 0/1 0/0 0/0 .rodata          @4560 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4560[12] = {
    0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809622E0, &lit_4560);
#pragma pop

/* 809622EC-809622F4 000208 0008+00 0/1 0/0 0/0 .rodata          @4561 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4561[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809622EC, &lit_4561);
#pragma pop

/* 809622F4-80962300 000210 000C+00 0/1 0/0 0/0 .rodata          @4562 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4562[12] = {
    0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809622F4, &lit_4562);
#pragma pop

/* 80962300-80962304 00021C 0004+00 0/1 0/0 0/0 .rodata          @4563 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4563[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80962300, &lit_4563);
#pragma pop

/* 80962304-80962310 000220 000C+00 0/1 0/0 0/0 .rodata          @4564 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4564[12] = {
    0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80962304, &lit_4564);
#pragma pop

/* 80962310-8096231C 00022C 000C+00 0/1 0/0 0/0 .rodata          @4565 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4565[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80962310, &lit_4565);
#pragma pop

/* 8096231C-80962324 000238 0008+00 0/1 0/0 0/0 .rodata          @4566 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4566[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096231C, &lit_4566);
#pragma pop

/* 80962324-80962330 000240 000C+00 0/1 0/0 0/0 .rodata          @4567 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4567[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80962324, &lit_4567);
#pragma pop

/* 80962330-80962338 00024C 0008+00 0/1 0/0 0/0 .rodata          @4568 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4568[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80962330, &lit_4568);
#pragma pop

/* 80962338-80962344 000254 000C+00 0/1 0/0 0/0 .rodata          @4569 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4569[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80962338, &lit_4569);
#pragma pop

/* 80962344-8096234C 000260 0008+00 0/1 0/0 0/0 .rodata          @4570 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4570[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80962344, &lit_4570);
#pragma pop

/* 8096234C-8096237C 000268 0030+00 0/0 0/0 0/0 .rodata          @4571 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4571[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096234C, &lit_4571);
#pragma pop

/* 8096237C-80962388 000298 000C+00 0/1 0/0 0/0 .rodata          @4585 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4585[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096237C, &lit_4585);
#pragma pop

/* 80962388-8096238C 0002A4 0004+00 2/4 0/0 0/0 .rodata          @4837 */
SECTION_RODATA static f32 const lit_4837 = -1.0f;
COMPILER_STRIP_GATE(0x80962388, &lit_4837);

/* 8096238C-80962390 0002A8 0004+00 0/1 0/0 0/0 .rodata          @4838 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4838 = 0x43360B61;
COMPILER_STRIP_GATE(0x8096238C, &lit_4838);
#pragma pop

/* 80962390-80962394 0002AC 0004+00 0/2 0/0 0/0 .rodata          @4839 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4839 = 0x3BB40000;
COMPILER_STRIP_GATE(0x80962390, &lit_4839);
#pragma pop

/* 80962394-8096239C 0002B0 0004+04 0/2 0/0 0/0 .rodata          @4840 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4840[1 + 1 /* padding */] = {
    15.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80962394, &lit_4840);
#pragma pop

/* 8096239C-809623A4 0002B8 0008+00 0/1 0/0 0/0 .rodata          @4841 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4841[8] = {
    0x40, 0x82, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096239C, &lit_4841);
#pragma pop

/* 809623A4-809623AC 0002C0 0008+00 0/1 0/0 0/0 .rodata          @4842 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4842[8] = {
    0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809623A4, &lit_4842);
#pragma pop

/* 809623AC-809623B4 0002C8 0008+00 0/2 0/0 0/0 .rodata          @4844 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4844[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809623AC, &lit_4844);
#pragma pop

/* 809623E8-809623E8 000304 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809623F9 = "NO_RESPONSE";
#pragma pop

/* 8095F2C4-8095FC70 001564 09AC+00 4/0 0/0 0/0 .text            wait__11daNpcAshB_cFPv */
void daNpcAshB_c::wait(void* param_0) {
    // NONMATCHING
}

/* 8095FC70-8095FD34 001F10 00C4+00 1/0 0/0 0/0 .text            setMotion__11daNpcAshB_cFifi */
void daNpcAshB_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 8095FD34-8095FD9C 001FD4 0068+00 1/0 0/0 0/0 .text            setExpression__11daNpcAshB_cFif */
void daNpcAshB_c::setExpression(int param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809623E8-809623E8 000304 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80962405 = "DEFAULT_GETITEM";
#pragma pop

/* 8095FD9C-809602E0 00203C 0544+00 2/0 0/0 0/0 .text            talk__11daNpcAshB_cFPv */
void daNpcAshB_c::talk(void* param_0) {
    // NONMATCHING
}

/* 809602E0-809604C8 002580 01E8+00 1/0 0/0 0/0 .text            demo__11daNpcAshB_cFPv */
void daNpcAshB_c::demo(void* param_0) {
    // NONMATCHING
}

/* 809604C8-809609A8 002768 04E0+00 3/0 0/0 0/0 .text            EvCut_Appear__11daNpcAshB_cFi */
void daNpcAshB_c::EvCut_Appear(int param_0) {
    // NONMATCHING
}

/* 809609A8-809609C8 002C48 0020+00 1/0 0/0 0/0 .text            daNpcAshB_Create__FPv */
static void daNpcAshB_Create(void* param_0) {
    // NONMATCHING
}

/* 809609C8-809609E8 002C68 0020+00 1/0 0/0 0/0 .text            daNpcAshB_Delete__FPv */
static void daNpcAshB_Delete(void* param_0) {
    // NONMATCHING
}

/* 809609E8-80960A08 002C88 0020+00 1/0 0/0 0/0 .text            daNpcAshB_Execute__FPv */
static void daNpcAshB_Execute(void* param_0) {
    // NONMATCHING
}

/* 80960A08-80960A28 002CA8 0020+00 1/0 0/0 0/0 .text            daNpcAshB_Draw__FPv */
static void daNpcAshB_Draw(void* param_0) {
    // NONMATCHING
}

/* 80960A28-80960A30 002CC8 0008+00 1/0 0/0 0/0 .text            daNpcAshB_IsDelete__FPv */
static bool daNpcAshB_IsDelete(void* param_0) {
    return true;
}

/* 80960A30-80960A60 002CD0 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80960A60-80960AE8 002D00 0088+00 1/0 0/0 0/0 .text            setParam__11daNpcAshB_cFv */
void daNpcAshB_c::setParam() {
    // NONMATCHING
}

/* 80960AE8-80960D64 002D88 027C+00 1/0 0/0 0/0 .text            main__11daNpcAshB_cFv */
void daNpcAshB_c::main() {
    // NONMATCHING
}

/* 80960D64-80961188 003004 0424+00 1/1 0/0 0/0 .text            playMotion__11daNpcAshB_cFv */
void daNpcAshB_c::playMotion() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809623B4-809623B8 0002D0 0004+00 0/0 0/0 0/0 .rodata          @5082 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5082 = 20.0f;
COMPILER_STRIP_GATE(0x809623B4, &lit_5082);
#pragma pop

/* 809623B8-809623BC 0002D4 0004+00 1/1 0/0 0/0 .rodata          @5198 */
SECTION_RODATA static f32 const lit_5198 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x809623B8, &lit_5198);

/* 80961188-80961264 003428 00DC+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpcAshB_cFv */
void daNpcAshB_c::ctrlBtk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809623BC-809623C4 0002D8 0004+04 0/1 0/0 0/0 .rodata          @5270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5270[1 + 1 /* padding */] = {
    10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x809623BC, &lit_5270);
#pragma pop

/* 809623C4-809623CC 0002E0 0008+00 0/1 0/0 0/0 .rodata          @5271 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5271[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809623C4, &lit_5271);
#pragma pop

/* 809623CC-809623D4 0002E8 0008+00 0/1 0/0 0/0 .rodata          @5272 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5272[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809623CC, &lit_5272);
#pragma pop

/* 809623D4-809623DC 0002F0 0008+00 0/1 0/0 0/0 .rodata          @5273 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5273[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809623D4, &lit_5273);
#pragma pop

/* 80961264-80961574 003504 0310+00 1/0 0/0 0/0 .text            setAttnPos__11daNpcAshB_cFv */
void daNpcAshB_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809623DC-809623E0 0002F8 0004+00 0/1 0/0 0/0 .rodata          @5317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5317 = -80.0f;
COMPILER_STRIP_GATE(0x809623DC, &lit_5317);
#pragma pop

/* 809623E0-809623E4 0002FC 0004+00 0/1 0/0 0/0 .rodata          @5318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5318 = 80.0f;
COMPILER_STRIP_GATE(0x809623E0, &lit_5318);
#pragma pop

/* 809623E4-809623E8 000300 0004+00 0/1 0/0 0/0 .rodata          @5319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5319 = 40.0f;
COMPILER_STRIP_GATE(0x809623E4, &lit_5319);
#pragma pop

/* 80961574-80961770 003814 01FC+00 1/1 0/0 0/0 .text            lookat__11daNpcAshB_cFv */
void daNpcAshB_c::lookat() {
    // NONMATCHING
}

/* 80961770-809617F8 003A10 0088+00 1/0 0/0 0/0 .text            drawOtherMdls__11daNpcAshB_cFv */
void daNpcAshB_c::drawOtherMdls() {
    // NONMATCHING
}

/* 809617F8-80961800 003A98 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpcAshB_cFv */
bool daNpcAshB_c::drawDbgInfo() {
    return false;
}

/* 80961800-8096180C 003AA0 000C+00 1/1 0/0 0/0 .text sinShort__Q25JMath18TSinCosTable<13,f>CFs */
extern "C" void func_80961800(void* _this, s16 param_0) /* const */ {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809627A8-809627B4 000390 000C+00 2/2 0/0 0/0 .data            __vt__17daNpcAshB_Param_c */
SECTION_DATA extern void* __vt__17daNpcAshB_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpcAshB_Param_cFv,
};

/* 809627C0-809627CC 000008 000C+00 1/1 0/0 0/0 .bss             @3810 */
static u8 lit_3810[12];

/* 809627CC-809627D0 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 8096180C-80961894 003AAC 0088+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_ashB_cpp */
void __sinit_d_a_npc_ashB_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8096180C, __sinit_d_a_npc_ashB_cpp);
#pragma pop

/* 80961894-809618DC 003B34 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809618DC-80961918 003B7C 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80961918-809619E8 003BB8 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 809619E8-80961A24 003C88 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80961A24-80961A28 003CC4 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80961A28-80961A64 003CC8 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80961A64-80961A68 003D04 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80961A68-80961CB4 003D08 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80961CB4-80961EA4 003F54 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80961EA4-80961F14 004144 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80961F14-80961F70 0041B4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80961F70-80961FE0 004210 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80961FE0-80962028 004280 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80962028-8096202C 0042C8 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__8daNpcF_cFv */
// void daNpcF_c::adjustShapeAngle() {
extern "C" void adjustShapeAngle__8daNpcF_cFv() {
    /* empty function */
}

/* 8096202C-80962030 0042CC 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80962030-80962078 0042D0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80962078-809620C0 004318 0048+00 2/1 0/0 0/0 .text            __dt__17daNpcAshB_Param_cFv */
daNpcAshB_Param_c::~daNpcAshB_Param_c() {
    // NONMATCHING
}

/* 809620C0-809620C8 004360 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809620C0() {
    // NONMATCHING
}

/* 809620C8-809620D0 004368 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809620C8() {
    // NONMATCHING
}

/* 809623E8-809623E8 000304 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */