/**
 * @file d_a_obj_tks.cpp
 * 
*/

#include "d/actor/d_a_obj_tks.h"
#include "dol2asm.h"
#include "d/d_camera.h"

//
// Forward References:
//

extern "C" void __ct__10daObjTks_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10daObjTks_cFv();
extern "C" void Create__10daObjTks_cFv();
extern "C" void CreateHeap__10daObjTks_cFv();
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
extern "C" void Delete__10daObjTks_cFv();
extern "C" void Execute__10daObjTks_cFv();
extern "C" void Draw__10daObjTks_cFv();
extern "C" void ctrlJoint__10daObjTks_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__10daObjTks_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__10daObjTks_cFP8J3DJointi();
extern "C" void setMtx__10daObjTks_cFv();
extern "C" void setExpressionAnm__10daObjTks_cFib();
extern "C" void setExpressionBtp__10daObjTks_cFi();
extern "C" void setMotion__10daObjTks_cFifi();
extern "C" void reset__10daObjTks_cFv();
extern "C" void setAction__10daObjTks_cFM10daObjTks_cFPCvPv_v();
extern "C" void wait__10daObjTks_cFv();
extern "C" void setExpression__10daObjTks_cFif();
extern "C" void talk__10daObjTks_cFv();
extern "C" void demo__10daObjTks_cFv();
extern "C" void setMotionAnm__10daObjTks_cFif();
extern "C" void warp__10daObjTks_cFv();
extern "C" static void daObjTks_Create__FPv();
extern "C" static void daObjTks_Delete__FPv();
extern "C" static void daObjTks_Execute__FPv();
extern "C" static void daObjTks_Draw__FPv();
extern "C" static bool daObjTks_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void setParam__10daObjTks_cFv();
extern "C" void main__10daObjTks_cFv();
extern "C" void ctrlBtk__10daObjTks_cFv();
extern "C" void setAttnPos__10daObjTks_cFv();
extern "C" void lookat__10daObjTks_cFv();
extern "C" bool drawDbgInfo__10daObjTks_cFv();
extern "C" void drawOtherMdls__10daObjTks_cFv();
extern "C" void func_80D11EA0(void* _this, s16);
extern "C" void __sinit_d_a_obj_tks_cpp();
extern "C" void __dt__15daNpcF_Lookat_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__8daNpcF_cFv();
extern "C" void __dt__18daNpcF_ActorMngr_cFv();
extern "C" void __ct__8daNpcF_cFv();
extern "C" void __ct__18daNpcF_ActorMngr_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void adjustShapeAngle__8daNpcF_cFv();
extern "C" void setCollisions__8daNpcF_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__16daObjTks_Param_cFv();
extern "C" static void func_80D12718();
extern "C" static void func_80D12720();
extern "C" u8 const m__16daObjTks_Param_c[128];
extern "C" extern char const* const d_a_obj_tks__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_delete__FUi();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void setObjectArchive__16dEvent_manager_cFPc();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyNowCutName__16dEvent_manager_cFi();
extern "C" void cutEnd__16dEvent_manager_cFi();
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
extern "C" void StartEventCamera__9dCamera_cFiie();
extern "C" void EndEventCamera__9dCamera_cFi();
extern "C" void initialize__18daNpcF_ActorMngr_cFv();
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
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void setAngle__8daNpcF_cFs();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void dCam_getBody__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void SetIGrp__10cCcD_ObjCoFUl();
extern "C" void SetVsGrp__10cCcD_ObjCoFUl();
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
extern "C" void subBgmStart__8Z2SeqMgrFUl();
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
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
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
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80D128C8-80D128C8 00018C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D128C8 = "TKS2";
SECTION_DEAD static char const* const stringBase_80D128CD = "ObjTks";
#pragma pop

/* 80D128F0-80D128FC 000000 000C+00 3/3 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D128FC-80D12910 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80D12910-80D12940 000020 0030+00 1/2 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[48] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00,
};

/* 80D12940-80D12948 000050 0008+00 1/1 0/0 0/0 .data            l_btpGetParamList */
SECTION_DATA static u8 l_btpGetParamList[8] = {
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02,
};

/* 80D12948-80D12950 000058 0008+00 1/2 0/0 0/0 .data            l_btkGetParamList */
SECTION_DATA static u8 l_btkGetParamList[8] = {
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02,
};

/* 80D12950-80D12954 000060 0004+00 0/0 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_evtNames[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
#pragma pop

/* 80D12954-80D12958 -00001 0004+00 6/9 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_tks__stringBase0;

/* 80D12958-80D1295C -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)(((char*)&d_a_obj_tks__stringBase0) + 0x5);
#pragma pop

/* 80D1295C-80D12968 -00001 000C+00 1/1 0/0 0/0 .data            @4353 */
SECTION_DATA static void* lit_4353[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)warp__10daObjTks_cFv,
};

/* 80D12968-80D12974 -00001 000C+00 1/1 0/0 0/0 .data            @4572 */
SECTION_DATA static void* lit_4572[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__10daObjTks_cFv,
};

/* 80D12974-80D12980 -00001 000C+00 1/1 0/0 0/0 .data            @4691 */
SECTION_DATA static void* lit_4691[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)warp__10daObjTks_cFv,
};

/* 80D12980-80D1298C -00001 000C+00 1/1 0/0 0/0 .data            @4694 */
SECTION_DATA static void* lit_4694[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__10daObjTks_cFv,
};

/* 80D1298C-80D12998 -00001 000C+00 0/1 0/0 0/0 .data            @4775 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4775[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)warp__10daObjTks_cFv,
};
#pragma pop

/* 80D12998-80D129A4 -00001 000C+00 0/1 0/0 0/0 .data            @4791 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4791[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__10daObjTks_cFv,
};
#pragma pop

/* 80D129A4-80D129B0 -00001 000C+00 0/1 0/0 0/0 .data            @4907 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4907[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__10daObjTks_cFv,
};
#pragma pop

/* 80D129B0-80D129BC -00001 000C+00 0/1 0/0 0/0 .data            @4910 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4910[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__10daObjTks_cFv,
};
#pragma pop

/* 80D129BC-80D129DC -00001 0020+00 1/0 0/0 0/0 .data            daObjTks_MethodTable */
static actor_method_class daObjTks_MethodTable = {
    (process_method_func)daObjTks_Create__FPv,
    (process_method_func)daObjTks_Delete__FPv,
    (process_method_func)daObjTks_Execute__FPv,
    (process_method_func)daObjTks_IsDelete__FPv,
    (process_method_func)daObjTks_Draw__FPv,
};

/* 80D129DC-80D12A0C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_TKS */
extern actor_process_profile_definition g_profile_OBJ_TKS = {
  fpcLy_CURRENT_e,            // mLayerID
  7,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_OBJ_TKS,               // mProcName
  &g_fpcLf_Method.base,      // sub_method
  sizeof(daObjTks_c),         // mSize
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  376,                        // mPriority
  &daObjTks_MethodTable,      // sub_method
  0x08044008,                 // mStatus
  fopAc_NPC_e,                // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};

/* 80D12A0C-80D12A18 00011C 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80D12A18-80D12A60 000128 0048+00 2/2 0/0 0/0 .data            __vt__10daObjTks_c */
SECTION_DATA extern void* __vt__10daObjTks_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10daObjTks_cFv,
    (void*)setParam__10daObjTks_cFv,
    (void*)main__10daObjTks_cFv,
    (void*)ctrlBtk__10daObjTks_cFv,
    (void*)adjustShapeAngle__8daNpcF_cFv,
    (void*)setMtx__10daObjTks_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__10daObjTks_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__10daObjTks_cFib,
    (void*)setExpressionBtp__10daObjTks_cFi,
    (void*)setExpression__10daObjTks_cFif,
    (void*)setMotionAnm__10daObjTks_cFif,
    (void*)setMotion__10daObjTks_cFifi,
    (void*)drawDbgInfo__10daObjTks_cFv,
    (void*)drawOtherMdls__10daObjTks_cFv,
};

/* 80D12A60-80D12A6C 000170 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80D12A6C-80D12A90 00017C 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D12720,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D12718,
};

/* 80D12A90-80D12A9C 0001A0 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80D12A9C-80D12AA8 0001AC 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80D12AA8-80D12AB4 0001B8 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80D12AB4-80D12AC0 0001C4 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80D12AC0-80D12ACC 0001D0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80D12ACC-80D12AD8 0001DC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D12AD8-80D12AE4 0001E8 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 80D0F28C-80D0F3F0 0000EC 0164+00 1/1 0/0 0/0 .text            __ct__10daObjTks_cFv */
daObjTks_c::daObjTks_c() {
    // NONMATCHING
}

/* 80D0F3F0-80D0F438 000250 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80D0F438-80D0F480 000298 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80D0F480-80D0F640 0002E0 01C0+00 1/0 0/0 0/0 .text            __dt__10daObjTks_cFv */
daObjTks_c::~daObjTks_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D1273C-80D127BC 000000 0080+00 11/11 0/0 0/0 .rodata          m__16daObjTks_Param_c */
SECTION_RODATA u8 const daObjTks_Param_c::m[128] = {
    0x42, 0xB4, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x42, 0x5C, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x41, 0x90, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x4C, 0xCC, 0xCD, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x13, 0x00, 0x06,
    0x42, 0xA0, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x42, 0xDE, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0xBE, 0x4C, 0xCC, 0xCD, 0x3F, 0x4C, 0xCC, 0xCD,
};
COMPILER_STRIP_GATE(0x80D1273C, &daObjTks_Param_c::m);

/* 80D127BC-80D127C0 000080 0004+00 0/1 0/0 0/0 .rodata          m_cameraItemNum$4211 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const m_cameraItemNum[4] = {
    0x00,
    0x00,
    0x00,
    0x01,
};
COMPILER_STRIP_GATE(0x80D127BC, &m_cameraItemNum);
#pragma pop

/* 80D127C0-80D127C4 000084 0004+00 0/2 0/0 0/0 .rodata          @4271 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4271 = -80.0f;
COMPILER_STRIP_GATE(0x80D127C0, &lit_4271);
#pragma pop

/* 80D127C4-80D127C8 000088 0004+00 0/1 0/0 0/0 .rodata          @4272 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4272 = -30.0f;
COMPILER_STRIP_GATE(0x80D127C4, &lit_4272);
#pragma pop

/* 80D127C8-80D127CC 00008C 0004+00 0/2 0/0 0/0 .rodata          @4273 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4273 = 80.0f;
COMPILER_STRIP_GATE(0x80D127C8, &lit_4273);
#pragma pop

/* 80D127CC-80D127D0 000090 0004+00 0/2 0/0 0/0 .rodata          @4274 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4274 = 10.0f;
COMPILER_STRIP_GATE(0x80D127CC, &lit_4274);
#pragma pop

/* 80D128C8-80D128C8 00018C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D128D4 = "Type";
#pragma pop

/* 80D0F640-80D0F904 0004A0 02C4+00 1/1 0/0 0/0 .text            Create__10daObjTks_cFv */
void daObjTks_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D127D0-80D127D4 000094 0004+00 4/5 0/0 0/0 .rodata          @4323 */
SECTION_RODATA static f32 const lit_4323 = 1.0f;
COMPILER_STRIP_GATE(0x80D127D0, &lit_4323);

/* 80D127D4-80D127D8 000098 0004+00 4/6 0/0 0/0 .rodata          @4324 */
SECTION_RODATA static f32 const lit_4324 = -1.0f;
COMPILER_STRIP_GATE(0x80D127D4, &lit_4324);

/* 80D0F904-80D0FB78 000764 0274+00 1/1 0/0 0/0 .text            CreateHeap__10daObjTks_cFv */
void daObjTks_c::CreateHeap() {
    // NONMATCHING
}

/* 80D0FB78-80D0FBB4 0009D8 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80D0FBB4-80D0FBCC 000A14 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80D0FBCC-80D0FC08 000A2C 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80D0FC08-80D0FC20 000A68 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80D0FC20-80D0FC68 000A80 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80D0FC68-80D0FC8C 000AC8 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80D0FC8C-80D0FCC8 000AEC 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80D0FCC8-80D0FCE0 000B28 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80D0FCE0-80D0FD1C 000B40 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80D0FD1C-80D0FD34 000B7C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80D0FD34-80D0FD68 000B94 0034+00 1/1 0/0 0/0 .text            Delete__10daObjTks_cFv */
void daObjTks_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D127D8-80D127DC 00009C 0004+00 0/1 0/0 0/0 .rodata          @4367 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4367 = 6.0f;
COMPILER_STRIP_GATE(0x80D127D8, &lit_4367);
#pragma pop

/* 80D127DC-80D127E0 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4368 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4368 = -5.0f;
COMPILER_STRIP_GATE(0x80D127DC, &lit_4368);
#pragma pop

/* 80D127E0-80D127E4 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4369 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4369 = 4.0f;
COMPILER_STRIP_GATE(0x80D127E0, &lit_4369);
#pragma pop

/* 80D0FD68-80D0FE60 000BC8 00F8+00 2/2 0/0 0/0 .text            Execute__10daObjTks_cFv */
void daObjTks_c::Execute() {
    // NONMATCHING
}

/* 80D0FE60-80D0FED0 000CC0 0070+00 1/1 0/0 0/0 .text            Draw__10daObjTks_cFv */
void daObjTks_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D127E4-80D127F0 0000A8 000C+00 1/1 0/0 0/0 .rodata          @4394 */
SECTION_RODATA static u8 const lit_4394[12] = {
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x11,
};
COMPILER_STRIP_GATE(0x80D127E4, &lit_4394);

/* 80D0FED0-80D10094 000D30 01C4+00 1/1 0/0 0/0 .text ctrlJoint__10daObjTks_cFP8J3DJointP8J3DModel
 */
void daObjTks_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 80D10094-80D100B4 000EF4 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__10daObjTks_cFP10fopAc_ac_c               */
void daObjTks_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80D100B4-80D10100 000F14 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__10daObjTks_cFP8J3DJointi
 */
void daObjTks_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80D10100-80D10184 000F60 0084+00 1/0 0/0 0/0 .text            setMtx__10daObjTks_cFv */
void daObjTks_c::setMtx() {
    // NONMATCHING
}

/* 80D10184-80D102D0 000FE4 014C+00 1/0 0/0 0/0 .text            setExpressionAnm__10daObjTks_cFib
 */
void daObjTks_c::setExpressionAnm(int param_0, bool param_1) {
    // NONMATCHING
}

/* 80D102D0-80D103A4 001130 00D4+00 1/0 0/0 0/0 .text            setExpressionBtp__10daObjTks_cFi */
void daObjTks_c::setExpressionBtp(int param_0) {
    // NONMATCHING
}

/* 80D103A4-80D103E8 001204 0044+00 1/0 0/0 0/0 .text            setMotion__10daObjTks_cFifi */
void daObjTks_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D127F0-80D127F4 0000B4 0004+00 1/6 0/0 0/0 .rodata          @4599 */
SECTION_RODATA static u8 const lit_4599[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D127F0, &lit_4599);

/* 80D127F4-80D127F8 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4600 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4600 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80D127F4, &lit_4600);
#pragma pop

/* 80D103E8-80D10578 001248 0190+00 1/1 0/0 0/0 .text            reset__10daObjTks_cFv */
void daObjTks_c::reset() {
    // NONMATCHING
}

/* 80D10578-80D10618 0013D8 00A0+00 1/1 0/0 0/0 .text
 * setAction__10daObjTks_cFM10daObjTks_cFPCvPv_v                */
void daObjTks_c::setAction(void (daObjTks_c::*param_0)()) {
    // NONMATCHING
}

/* 80D10618-80D106C8 001478 00B0+00 3/0 0/0 0/0 .text            wait__10daObjTks_cFv */
void daObjTks_c::wait() {
    // NONMATCHING
}

/* 80D106C8-80D106F4 001528 002C+00 1/0 0/0 0/0 .text            setExpression__10daObjTks_cFif */
void daObjTks_c::setExpression(int param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D127F8-80D12804 0000BC 000C+00 0/1 0/0 0/0 .rodata          @4601 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4601[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D127F8, &lit_4601);
#pragma pop

/* 80D12804-80D12808 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4602 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4602[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D12804, &lit_4602);
#pragma pop

/* 80D12808-80D12814 0000CC 000C+00 0/1 0/0 0/0 .rodata          @4603 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4603[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D12808, &lit_4603);
#pragma pop

/* 80D12814-80D12818 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4604 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4604[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D12814, &lit_4604);
#pragma pop

/* 80D12818-80D12820 0000DC 0008+00 0/1 0/0 0/0 .rodata          @4605 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4605[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D12818, &lit_4605);
#pragma pop

/* 80D12820-80D1282C 0000E4 000C+00 0/1 0/0 0/0 .rodata          @4609 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4609[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D12820, &lit_4609);
#pragma pop

/* 80D1282C-80D12830 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4610 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4610[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D1282C, &lit_4610);
#pragma pop

/* 80D12830-80D1283C 0000F4 000C+00 0/1 0/0 0/0 .rodata          @4611 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4611[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80D12830, &lit_4611);
#pragma pop

/* 80D1283C-80D12844 000100 0008+00 0/1 0/0 0/0 .rodata          @4612 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4612[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D1283C, &lit_4612);
#pragma pop

/* 80D12844-80D12850 000108 000C+00 0/1 0/0 0/0 .rodata          @4613 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4613[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D12844, &lit_4613);
#pragma pop

/* 80D12850-80D12854 000114 0004+00 0/1 0/0 0/0 .rodata          @4614 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4614[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D12850, &lit_4614);
#pragma pop

/* 80D12854-80D12860 000118 000C+00 0/1 0/0 0/0 .rodata          @4615 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4615[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80D12854, &lit_4615);
#pragma pop

/* 80D12860-80D12868 000124 0008+00 0/1 0/0 0/0 .rodata          @4616 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4616[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D12860, &lit_4616);
#pragma pop

/* 80D12868-80D12878 00012C 0010+00 0/1 0/0 0/0 .rodata          @4617 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4617[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D12868, &lit_4617);
#pragma pop

/* 80D12878-80D12884 00013C 000C+00 0/1 0/0 0/0 .rodata          @4631 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4631[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D12878, &lit_4631);
#pragma pop

/* 80D12884-80D12888 000148 0004+00 1/2 0/0 0/0 .rodata          @4733 */
SECTION_RODATA static f32 const lit_4733 = 30.0f;
COMPILER_STRIP_GATE(0x80D12884, &lit_4733);

/* 80D106F4-80D10A80 001554 038C+00 1/0 0/0 0/0 .text            talk__10daObjTks_cFv */
void daObjTks_c::talk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D12888-80D12894 00014C 0008+04 0/1 0/0 0/0 .rodata          @4760 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4760[8 + 4 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D12888, &lit_4760);
#pragma pop

/* 80D12894-80D1289C 000158 0008+00 0/1 0/0 0/0 .rodata          @4864 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4864[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D12894, &lit_4864);
#pragma pop

/* 80D128C8-80D128C8 00018C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D128D9 = "TKS_SECRET";
#pragma pop

/* 80D10A80-80D11104 0018E0 0684+00 1/0 0/0 0/0 .text            demo__10daObjTks_cFv */
void daObjTks_c::demo() {
    // NONMATCHING
}

/* 80D11104-80D11228 001F64 0124+00 1/0 0/0 0/0 .text            setMotionAnm__10daObjTks_cFif */
bool daObjTks_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D1289C-80D128A0 000160 0004+00 0/1 0/0 0/0 .rodata          @4946 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4946 = -0.5f;
COMPILER_STRIP_GATE(0x80D1289C, &lit_4946);
#pragma pop

/* 80D128C8-80D128C8 00018C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D128E4 = "TKS_WARP";
#pragma pop

/* 80D11228-80D115B8 002088 0390+00 3/0 0/0 0/0 .text            warp__10daObjTks_cFv */
void daObjTks_c::warp() {
    // NONMATCHING
}

/* 80D115B8-80D115D8 002418 0020+00 1/0 0/0 0/0 .text            daObjTks_Create__FPv */
static void daObjTks_Create(void* param_0) {
    // NONMATCHING
}

/* 80D115D8-80D115F8 002438 0020+00 1/0 0/0 0/0 .text            daObjTks_Delete__FPv */
static void daObjTks_Delete(void* param_0) {
    // NONMATCHING
}

/* 80D115F8-80D11618 002458 0020+00 1/0 0/0 0/0 .text            daObjTks_Execute__FPv */
static void daObjTks_Execute(void* param_0) {
    // NONMATCHING
}

/* 80D11618-80D11638 002478 0020+00 1/0 0/0 0/0 .text            daObjTks_Draw__FPv */
static void daObjTks_Draw(void* param_0) {
    // NONMATCHING
}

/* 80D11638-80D11640 002498 0008+00 1/0 0/0 0/0 .text            daObjTks_IsDelete__FPv */
static bool daObjTks_IsDelete(void* param_0) {
    return true;
}

/* 80D11640-80D11670 0024A0 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D128A0-80D128A4 000164 0004+00 1/1 0/0 0/0 .rodata          @5005 */
SECTION_RODATA static f32 const lit_5005 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D128A0, &lit_5005);

/* 80D11670-80D116C8 0024D0 0058+00 1/0 0/0 0/0 .text            setParam__10daObjTks_cFv */
void daObjTks_c::setParam() {
    // NONMATCHING
}

/* 80D116C8-80D118E8 002528 0220+00 1/0 0/0 0/0 .text            main__10daObjTks_cFv */
void daObjTks_c::main() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D128A4-80D128AC 000168 0004+04 1/1 0/0 0/0 .rodata          @5057 */
SECTION_RODATA static f32 const lit_5057[1 + 1 /* padding */] = {
    1.0f / 5.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80D128A4, &lit_5057);

/* 80D118E8-80D119BC 002748 00D4+00 1/0 0/0 0/0 .text            ctrlBtk__10daObjTks_cFv */
void daObjTks_c::ctrlBtk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D128AC-80D128B4 000170 0008+00 0/1 0/0 0/0 .rodata          @5130 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5130[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D128AC, &lit_5130);
#pragma pop

/* 80D128B4-80D128BC 000178 0008+00 0/1 0/0 0/0 .rodata          @5131 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5131[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D128B4, &lit_5131);
#pragma pop

/* 80D128BC-80D128C4 000180 0008+00 0/1 0/0 0/0 .rodata          @5132 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5132[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D128BC, &lit_5132);
#pragma pop

/* 80D119BC-80D11CB4 00281C 02F8+00 1/0 0/0 0/0 .text            setAttnPos__10daObjTks_cFv */
void daObjTks_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D128C4-80D128C8 000188 0004+00 0/1 0/0 0/0 .rodata          @5173 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5173 = 40.0f;
COMPILER_STRIP_GATE(0x80D128C4, &lit_5173);
#pragma pop

/* 80D11CB4-80D11E94 002B14 01E0+00 1/1 0/0 0/0 .text            lookat__10daObjTks_cFv */
void daObjTks_c::lookat() {
    // NONMATCHING
}

/* 80D11E94-80D11E9C 002CF4 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__10daObjTks_cFv */
bool daObjTks_c::drawDbgInfo() {
    return false;
}

/* 80D11E9C-80D11EA0 002CFC 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__10daObjTks_cFv */
void daObjTks_c::drawOtherMdls() {
    /* empty function */
}

/* 80D11EA0-80D11EAC 002D00 000C+00 1/1 0/0 0/0 .text sinShort__Q25JMath18TSinCosTable<13,f>CFs */
extern "C" void func_80D11EA0(void* _this, s16 param_0) /* const */ {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D12AE4-80D12AF0 0001F4 000C+00 2/2 0/0 0/0 .data            __vt__16daObjTks_Param_c */
SECTION_DATA extern void* __vt__16daObjTks_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daObjTks_Param_cFv,
};

/* 80D12AF8-80D12B04 000008 000C+00 1/1 0/0 0/0 .bss             @3917 */
static u8 lit_3917[12];

/* 80D12B04-80D12B08 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80D11EAC-80D11EEC 002D0C 0040+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_tks_cpp */
void __sinit_d_a_obj_tks_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80D11EAC, __sinit_d_a_obj_tks_cpp);
#pragma pop

/* 80D11EEC-80D11FBC 002D4C 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 80D11FBC-80D11FF8 002E1C 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80D11FF8-80D11FFC 002E58 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80D11FFC-80D12038 002E5C 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80D12038-80D1203C 002E98 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80D1203C-80D12288 002E9C 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80D12288-80D122D0 0030E8 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80D122D0-80D124C0 003130 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80D124C0-80D124FC 003320 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80D124FC-80D1256C 00335C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80D1256C-80D125C8 0033CC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80D125C8-80D12638 003428 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80D12638-80D12680 003498 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80D12680-80D12684 0034E0 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__8daNpcF_cFv */
// void daNpcF_c::adjustShapeAngle() {
extern "C" void adjustShapeAngle__8daNpcF_cFv() {
    /* empty function */
}

/* 80D12684-80D12688 0034E4 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80D12688-80D126D0 0034E8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80D126D0-80D12718 003530 0048+00 2/1 0/0 0/0 .text            __dt__16daObjTks_Param_cFv */
daObjTks_Param_c::~daObjTks_Param_c() {
    // NONMATCHING
}

/* 80D12718-80D12720 003578 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80D12718() {
    // NONMATCHING
}

/* 80D12720-80D12728 003580 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80D12720() {
    // NONMATCHING
}

/* 80D128C8-80D128C8 00018C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
