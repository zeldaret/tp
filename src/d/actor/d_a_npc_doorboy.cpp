/**
 * @file d_a_npc_doorboy.cpp
 * 
*/

#include "d/actor/d_a_npc_doorboy.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__14daNpcDoorBoy_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__14daNpcDoorBoy_cFv();
extern "C" void Create__14daNpcDoorBoy_cFv();
extern "C" void CreateHeap__14daNpcDoorBoy_cFv();
extern "C" void Delete__14daNpcDoorBoy_cFv();
extern "C" void Execute__14daNpcDoorBoy_cFv();
extern "C" void Draw__14daNpcDoorBoy_cFv();
extern "C" void ctrlJoint__14daNpcDoorBoy_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__14daNpcDoorBoy_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__14daNpcDoorBoy_cFP8J3DJointi();
extern "C" void setMotion__14daNpcDoorBoy_cFifi();
extern "C" void reset__14daNpcDoorBoy_cFv();
extern "C" void setAction__14daNpcDoorBoy_cFM14daNpcDoorBoy_cFPCvPvPv_b();
extern "C" void wait__14daNpcDoorBoy_cFPv();
extern "C" void fear__14daNpcDoorBoy_cFPv();
extern "C" void talk__14daNpcDoorBoy_cFPv();
extern "C" void demo__14daNpcDoorBoy_cFPv();
extern "C" void dummyTalk__14daNpcDoorBoy_cFPv();
extern "C" static void daNpcDoorBoy_Create__FPv();
extern "C" static void daNpcDoorBoy_Delete__FPv();
extern "C" static void daNpcDoorBoy_Execute__FPv();
extern "C" static void daNpcDoorBoy_Draw__FPv();
extern "C" static bool daNpcDoorBoy_IsDelete__FPv();
extern "C" void setParam__14daNpcDoorBoy_cFv();
extern "C" void main__14daNpcDoorBoy_cFv();
extern "C" void setAttnPos__14daNpcDoorBoy_cFv();
extern "C" void lookat__14daNpcDoorBoy_cFv();
extern "C" void setMotionAnm__14daNpcDoorBoy_cFif();
extern "C" bool drawDbgInfo__14daNpcDoorBoy_cFv();
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
extern "C" bool ctrlBtk__8daNpcF_cFv();
extern "C" void setCollisions__8daNpcF_cFv();
extern "C" bool setExpressionAnm__8daNpcF_cFib();
extern "C" bool setExpressionBtp__8daNpcF_cFi();
extern "C" void setExpression__8daNpcF_cFif();
extern "C" void drawOtherMdls__8daNpcF_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_npc_doorboy_cpp();
extern "C" void adjustShapeAngle__14daNpcDoorBoy_cFv();
extern "C" void __dt__20daNpcDoorBoy_Param_cFv();
extern "C" static void func_809AD984();
extern "C" static void func_809AD98C();
extern "C" u8 const m__20daNpcDoorBoy_Param_c[108];
extern "C" extern char const* const d_a_npc_doorboy__stringBase0;
extern "C" u8 mEvtSeqList__14daNpcDoorBoy_c[12];

//
// External References:
//

extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void dComIfGs_isOneZoneSwitch__Fii();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
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
extern "C" void setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii();
extern "C" void setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi();
extern "C" void setEnvTevColor__8daNpcF_cFv();
extern "C" void setRoomNo__8daNpcF_cFv();
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
extern "C" void dKy_getdaytime_hour__Fv();
extern "C" void dKy_getDarktime_hour__Fv();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void getNowTalkFlowNo__12dMsgObject_cFv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void __ct__17Z2CreatureCitizenFv();
extern "C" void __dt__17Z2CreatureCitizenFv();
extern "C" void init__17Z2CreatureCitizenFP3VecP3VecUcUc();
extern "C" void setMdlType__17Z2CreatureCitizenFScbb();
extern "C" void playVoice__17Z2CreatureCitizenFi();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
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
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcF_c[68];
extern "C" extern void* __vt__8daNpcF_c[18];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 809ADB04-809ADB04 00015C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809ADB04 = "DoorBoy";
SECTION_DEAD static char const* const stringBase_809ADB0C = "Mgeneral";
#pragma pop

/* 809ADB28-809ADB34 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 809ADB34-809ADB48 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 809ADB48-809ADB90 000020 0048+00 1/1 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[72] = {
    0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
    0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x02, 0x00,
    0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
};

/* 809ADB90-809ADB9C 000068 000C+00 0/0 0/0 0/0 .data            l_btpGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_btpGetParamList[12] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 809ADB9C-809ADBA4 -00001 0008+00 5/6 0/0 0/0 .data            l_arcNames */
SECTION_DATA static void* l_arcNames[2] = {
    (void*)&d_a_npc_doorboy__stringBase0,
    (void*)(((char*)&d_a_npc_doorboy__stringBase0) + 0x8),
};

/* 809ADBA4-809ADBA8 00007C 0004+00 0/1 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_evtNames[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
#pragma pop

/* 809ADBA8-809ADBAC -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)&d_a_npc_doorboy__stringBase0;
#pragma pop

/* 809ADBAC-809ADBB8 000084 000C+00 1/2 0/0 0/0 .data            mEvtSeqList__14daNpcDoorBoy_c */
SECTION_DATA u8 daNpcDoorBoy_c::mEvtSeqList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 809ADBB8-809ADBC4 -00001 000C+00 1/1 0/0 0/0 .data            @4449 */
SECTION_DATA static void* lit_4449[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__14daNpcDoorBoy_cFPv,
};

/* 809ADBC4-809ADBD0 -00001 000C+00 0/1 0/0 0/0 .data            @4564 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4564[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__14daNpcDoorBoy_cFPv,
};
#pragma pop

/* 809ADBD0-809ADBDC -00001 000C+00 0/1 0/0 0/0 .data            @4571 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4571[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)dummyTalk__14daNpcDoorBoy_cFPv,
};
#pragma pop

/* 809ADBDC-809ADBE8 -00001 000C+00 0/1 0/0 0/0 .data            @4576 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4576[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__14daNpcDoorBoy_cFPv,
};
#pragma pop

/* 809ADBE8-809ADBF4 -00001 000C+00 0/1 0/0 0/0 .data            @4583 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4583[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fear__14daNpcDoorBoy_cFPv,
};
#pragma pop

/* 809ADBF4-809ADC00 -00001 000C+00 1/1 0/0 0/0 .data            @4707 */
SECTION_DATA static void* lit_4707[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__14daNpcDoorBoy_cFPv,
};

/* 809ADC00-809ADC0C -00001 000C+00 1/1 0/0 0/0 .data            @4710 */
SECTION_DATA static void* lit_4710[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__14daNpcDoorBoy_cFPv,
};

/* 809ADC0C-809ADC18 -00001 000C+00 0/1 0/0 0/0 .data            @4773 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4773[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__14daNpcDoorBoy_cFPv,
};
#pragma pop

/* 809ADC18-809ADC24 -00001 000C+00 1/1 0/0 0/0 .data            @4799 */
SECTION_DATA static void* lit_4799[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__14daNpcDoorBoy_cFPv,
};

/* 809ADC24-809ADC44 -00001 0020+00 1/0 0/0 0/0 .data            daNpcDoorBoy_MethodTable */
static actor_method_class daNpcDoorBoy_MethodTable = {
    (process_method_func)daNpcDoorBoy_Create__FPv,
    (process_method_func)daNpcDoorBoy_Delete__FPv,
    (process_method_func)daNpcDoorBoy_Execute__FPv,
    (process_method_func)daNpcDoorBoy_IsDelete__FPv,
    (process_method_func)daNpcDoorBoy_Draw__FPv,
};

/* 809ADC44-809ADC74 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_DOORBOY */
extern actor_process_profile_definition g_profile_NPC_DOORBOY = {
  fpcLy_CURRENT_e,           // mLayerID
  7,                         // mListID
  fpcPi_CURRENT_e,           // mListPrio
  PROC_NPC_DOORBOY,          // mProcName
  &g_fpcLf_Method.mBase,     // sub_method
  sizeof(daNpcDoorBoy_c),    // mSize
  0,                         // mSizeOther
  0,                         // mParameters
  &g_fopAc_Method.base,      // sub_method
  418,                       // mPriority
  &daNpcDoorBoy_MethodTable, // sub_method
  0x00044187,                // mStatus
  fopAc_NPC_e,               // mActorType
  fopAc_CULLBOX_CUSTOM_e,    // cullType
};

/* 809ADC74-809ADCBC 00014C 0048+00 2/2 0/0 0/0 .data            __vt__14daNpcDoorBoy_c */
SECTION_DATA extern void* __vt__14daNpcDoorBoy_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daNpcDoorBoy_cFv,
    (void*)setParam__14daNpcDoorBoy_cFv,
    (void*)main__14daNpcDoorBoy_cFv,
    (void*)ctrlBtk__8daNpcF_cFv,
    (void*)adjustShapeAngle__14daNpcDoorBoy_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__14daNpcDoorBoy_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__8daNpcF_cFib,
    (void*)setExpressionBtp__8daNpcF_cFi,
    (void*)setExpression__8daNpcF_cFif,
    (void*)setMotionAnm__14daNpcDoorBoy_cFif,
    (void*)setMotion__14daNpcDoorBoy_cFifi,
    (void*)drawDbgInfo__14daNpcDoorBoy_cFv,
    (void*)drawOtherMdls__8daNpcF_cFv,
};

/* 809ADCBC-809ADCC8 000194 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 809ADCC8-809ADCEC 0001A0 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809AD98C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809AD984,
};

/* 809ADCEC-809ADCF8 0001C4 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 809ADCF8-809ADD04 0001D0 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 809ADD04-809ADD10 0001DC 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 809ADD10-809ADD1C 0001E8 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 809ADD1C-809ADD28 0001F4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 809ADD28-809ADD34 000200 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 809ADD34-809ADD40 00020C 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 809AAC8C-809AAE10 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__14daNpcDoorBoy_cFv */
daNpcDoorBoy_c::daNpcDoorBoy_c() {
    // NONMATCHING
}

/* 809AAE10-809AAE58 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 809AAE58-809AAEA0 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 809AAEA0-809AB088 000300 01E8+00 1/0 0/0 0/0 .text            __dt__14daNpcDoorBoy_cFv */
daNpcDoorBoy_c::~daNpcDoorBoy_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809AD9A8-809ADA14 000000 006C+00 10/10 0/0 0/0 .rodata          m__20daNpcDoorBoy_Param_c */
SECTION_RODATA u8 const daNpcDoorBoy_Param_c::m[108] = {
    0x42, 0x5C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0xC1, 0xA0, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x00, 0x04, 0x00, 0x02,
    0x42, 0x70, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809AD9A8, &daNpcDoorBoy_Param_c::m);

/* 809ADA14-809ADA18 00006C 0004+00 0/1 0/0 0/0 .rodata          @4267 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4267 = -50.0f;
COMPILER_STRIP_GATE(0x809ADA14, &lit_4267);
#pragma pop

/* 809ADA18-809ADA1C 000070 0004+00 0/1 0/0 0/0 .rodata          @4268 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4268 = -10.0f;
COMPILER_STRIP_GATE(0x809ADA18, &lit_4268);
#pragma pop

/* 809ADA1C-809ADA20 000074 0004+00 0/2 0/0 0/0 .rodata          @4269 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4269 = 50.0f;
COMPILER_STRIP_GATE(0x809ADA1C, &lit_4269);
#pragma pop

/* 809ADA20-809ADA24 000078 0004+00 0/1 0/0 0/0 .rodata          @4270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4270 = 210.0f;
COMPILER_STRIP_GATE(0x809ADA20, &lit_4270);
#pragma pop

/* 809AB088-809AB320 0004E8 0298+00 1/1 0/0 0/0 .text            Create__14daNpcDoorBoy_cFv */
void daNpcDoorBoy_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809ADA24-809ADA28 00007C 0004+00 2/5 0/0 0/0 .rodata          @4319 */
SECTION_RODATA static f32 const lit_4319 = 1.0f;
COMPILER_STRIP_GATE(0x809ADA24, &lit_4319);

/* 809ADA28-809ADA2C 000080 0004+00 0/1 0/0 0/0 .rodata          @4320 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4320 = 0x3F8A8182;
COMPILER_STRIP_GATE(0x809ADA28, &lit_4320);
#pragma pop

/* 809ADA2C-809ADA30 000084 0004+00 3/6 0/0 0/0 .rodata          @4321 */
SECTION_RODATA static f32 const lit_4321 = -1.0f;
COMPILER_STRIP_GATE(0x809ADA2C, &lit_4321);

/* 809AB320-809AB4A4 000780 0184+00 1/1 0/0 0/0 .text            CreateHeap__14daNpcDoorBoy_cFv */
void daNpcDoorBoy_c::CreateHeap() {
    // NONMATCHING
}

/* 809AB4A4-809AB4D8 000904 0034+00 1/1 0/0 0/0 .text            Delete__14daNpcDoorBoy_cFv */
void daNpcDoorBoy_c::Delete() {
    // NONMATCHING
}

/* 809AB4D8-809AB4FC 000938 0024+00 2/2 0/0 0/0 .text            Execute__14daNpcDoorBoy_cFv */
void daNpcDoorBoy_c::Execute() {
    // NONMATCHING
}

/* 809AB4FC-809AB578 00095C 007C+00 1/1 0/0 0/0 .text            Draw__14daNpcDoorBoy_cFv */
void daNpcDoorBoy_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809ADA30-809ADA3C 000088 000C+00 1/1 0/0 0/0 .rodata          @4341 */
SECTION_RODATA static u8 const lit_4341[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
};
COMPILER_STRIP_GATE(0x809ADA30, &lit_4341);

/* 809AB578-809AB704 0009D8 018C+00 1/1 0/0 0/0 .text
 * ctrlJoint__14daNpcDoorBoy_cFP8J3DJointP8J3DModel             */
void daNpcDoorBoy_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 809AB704-809AB724 000B64 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__14daNpcDoorBoy_cFP10fopAc_ac_c           */
void daNpcDoorBoy_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809AB724-809AB770 000B84 004C+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__14daNpcDoorBoy_cFP8J3DJointi              */
void daNpcDoorBoy_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 809AB770-809AB7B8 000BD0 0048+00 1/0 0/0 0/0 .text            setMotion__14daNpcDoorBoy_cFifi */
void daNpcDoorBoy_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809ADA3C-809ADA40 000094 0004+00 1/5 0/0 0/0 .rodata          @4477 */
SECTION_RODATA static u8 const lit_4477[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809ADA3C, &lit_4477);

/* 809AB7B8-809AB984 000C18 01CC+00 1/1 0/0 0/0 .text            reset__14daNpcDoorBoy_cFv */
void daNpcDoorBoy_c::reset() {
    // NONMATCHING
}

/* 809AB984-809ABA2C 000DE4 00A8+00 1/1 0/0 0/0 .text
 * setAction__14daNpcDoorBoy_cFM14daNpcDoorBoy_cFPCvPvPv_b      */
void daNpcDoorBoy_c::setAction(bool (daNpcDoorBoy_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809ADA40-809ADA4C 000098 000C+00 0/1 0/0 0/0 .rodata          @4478 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4478[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809ADA40, &lit_4478);
#pragma pop

/* 809ADA4C-809ADA50 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4479 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4479[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809ADA4C, &lit_4479);
#pragma pop

/* 809ADA50-809ADA5C 0000A8 000C+00 0/1 0/0 0/0 .rodata          @4480 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4480[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809ADA50, &lit_4480);
#pragma pop

/* 809ADA5C-809ADA60 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4481 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4481[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809ADA5C, &lit_4481);
#pragma pop

/* 809ADA60-809ADA6C 0000B8 000C+00 0/1 0/0 0/0 .rodata          @4482 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4482[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809ADA60, &lit_4482);
#pragma pop

/* 809ADA6C-809ADA70 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4483 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4483[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809ADA6C, &lit_4483);
#pragma pop

/* 809ADA70-809ADA7C 0000C8 000C+00 0/1 0/0 0/0 .rodata          @4484 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4484[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809ADA70, &lit_4484);
#pragma pop

/* 809ADA7C-809ADA80 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4485 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4485[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809ADA7C, &lit_4485);
#pragma pop

/* 809ADA80-809ADA8C 0000D8 000C+00 0/1 0/0 0/0 .rodata          @4486 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4486[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809ADA80, &lit_4486);
#pragma pop

/* 809ADA8C-809ADA90 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4487 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4487[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809ADA8C, &lit_4487);
#pragma pop

/* 809ADA90-809ADA9C 0000E8 000C+00 0/1 0/0 0/0 .rodata          @4488 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4488[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809ADA90, &lit_4488);
#pragma pop

/* 809ADA9C-809ADAA0 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4489 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4489[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809ADA9C, &lit_4489);
#pragma pop

/* 809ADAA0-809ADAD0 0000F8 0030+00 0/0 0/0 0/0 .rodata          @4490 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4490[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809ADAA0, &lit_4490);
#pragma pop

/* 809ADAD0-809ADADC 000128 000C+00 0/1 0/0 0/0 .rodata          @4504 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4504[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809ADAD0, &lit_4504);
#pragma pop

/* 809ADADC-809ADAE0 000134 0004+00 2/4 0/0 0/0 .rodata          @4678 */
SECTION_RODATA static f32 const lit_4678 = 15.0f;
COMPILER_STRIP_GATE(0x809ADADC, &lit_4678);

/* 809ADAE0-809ADAE8 000138 0008+00 0/1 0/0 0/0 .rodata          @4679 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4679[8] = {
    0x40, 0x7F, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809ADAE0, &lit_4679);
#pragma pop

/* 809ADAE8-809ADAF0 000140 0008+00 0/1 0/0 0/0 .rodata          @4680 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4680[8] = {
    0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809ADAE8, &lit_4680);
#pragma pop

/* 809ABA2C-809AC064 000E8C 0638+00 5/0 0/0 0/0 .text            wait__14daNpcDoorBoy_cFPv */
void daNpcDoorBoy_c::wait(void* param_0) {
    // NONMATCHING
}

/* 809AC064-809AC114 0014C4 00B0+00 1/0 0/0 0/0 .text            fear__14daNpcDoorBoy_cFPv */
void daNpcDoorBoy_c::fear(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809ADB04-809ADB04 00015C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809ADB15 = "DEFAULT_GETITEM";
#pragma pop

/* 809AC114-809AC528 001574 0414+00 1/0 0/0 0/0 .text            talk__14daNpcDoorBoy_cFPv */
void daNpcDoorBoy_c::talk(void* param_0) {
    // NONMATCHING
}

/* 809AC528-809AC6F4 001988 01CC+00 1/0 0/0 0/0 .text            demo__14daNpcDoorBoy_cFPv */
void daNpcDoorBoy_c::demo(void* param_0) {
    // NONMATCHING
}

/* 809AC6F4-809AC90C 001B54 0218+00 1/0 0/0 0/0 .text            dummyTalk__14daNpcDoorBoy_cFPv */
void daNpcDoorBoy_c::dummyTalk(void* param_0) {
    // NONMATCHING
}

/* 809AC90C-809AC92C 001D6C 0020+00 1/0 0/0 0/0 .text            daNpcDoorBoy_Create__FPv */
static void daNpcDoorBoy_Create(void* param_0) {
    // NONMATCHING
}

/* 809AC92C-809AC94C 001D8C 0020+00 1/0 0/0 0/0 .text            daNpcDoorBoy_Delete__FPv */
static void daNpcDoorBoy_Delete(void* param_0) {
    // NONMATCHING
}

/* 809AC94C-809AC96C 001DAC 0020+00 1/0 0/0 0/0 .text            daNpcDoorBoy_Execute__FPv */
static void daNpcDoorBoy_Execute(void* param_0) {
    // NONMATCHING
}

/* 809AC96C-809AC98C 001DCC 0020+00 1/0 0/0 0/0 .text            daNpcDoorBoy_Draw__FPv */
static void daNpcDoorBoy_Draw(void* param_0) {
    // NONMATCHING
}

/* 809AC98C-809AC994 001DEC 0008+00 1/0 0/0 0/0 .text            daNpcDoorBoy_IsDelete__FPv */
static bool daNpcDoorBoy_IsDelete(void* param_0) {
    return true;
}

/* 809AC994-809ACA58 001DF4 00C4+00 1/0 0/0 0/0 .text            setParam__14daNpcDoorBoy_cFv */
void daNpcDoorBoy_c::setParam() {
    // NONMATCHING
}

/* 809ACA58-809ACC5C 001EB8 0204+00 1/0 0/0 0/0 .text            main__14daNpcDoorBoy_cFv */
void daNpcDoorBoy_c::main() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809ADAF0-809ADAF4 000148 0004+00 0/1 0/0 0/0 .rodata          @4942 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4942 = 23.0f;
COMPILER_STRIP_GATE(0x809ADAF0, &lit_4942);
#pragma pop

/* 809ADAF4-809ADAF8 00014C 0004+00 0/1 0/0 0/0 .rodata          @4943 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4943 = 55.0f;
COMPILER_STRIP_GATE(0x809ADAF4, &lit_4943);
#pragma pop

/* 809ACC5C-809ACE18 0020BC 01BC+00 1/0 0/0 0/0 .text            setAttnPos__14daNpcDoorBoy_cFv */
void daNpcDoorBoy_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809ADAF8-809ADAFC 000150 0004+00 0/1 0/0 0/0 .rodata          @4984 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4984 = -80.0f;
COMPILER_STRIP_GATE(0x809ADAF8, &lit_4984);
#pragma pop

/* 809ADAFC-809ADB00 000154 0004+00 0/1 0/0 0/0 .rodata          @4985 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4985 = 80.0f;
COMPILER_STRIP_GATE(0x809ADAFC, &lit_4985);
#pragma pop

/* 809ADB00-809ADB04 000158 0004+00 0/1 0/0 0/0 .rodata          @4986 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4986 = 40.0f;
COMPILER_STRIP_GATE(0x809ADB00, &lit_4986);
#pragma pop

/* 809ACE18-809ACFF8 002278 01E0+00 1/1 0/0 0/0 .text            lookat__14daNpcDoorBoy_cFv */
void daNpcDoorBoy_c::lookat() {
    // NONMATCHING
}

/* 809ACFF8-809AD0C8 002458 00D0+00 1/0 0/0 0/0 .text            setMotionAnm__14daNpcDoorBoy_cFif
 */
bool daNpcDoorBoy_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 809AD0C8-809AD0D0 002528 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__14daNpcDoorBoy_cFv */
bool daNpcDoorBoy_c::drawDbgInfo() {
    return false;
}

/* 809AD0D0-809AD118 002530 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809AD118-809AD154 002578 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809AD154-809AD224 0025B4 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 809AD224-809AD260 002684 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 809AD260-809AD264 0026C0 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 809AD264-809AD2A0 0026C4 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 809AD2A0-809AD2A4 002700 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 809AD2A4-809AD4F0 002704 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809AD4F0-809AD6E0 002950 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809AD6E0-809AD750 002B40 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809AD750-809AD7AC 002BB0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 809AD7AC-809AD81C 002C0C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809AD81C-809AD864 002C7C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 809AD864-809AD86C 002CC4 0008+00 1/0 0/0 0/0 .text            ctrlBtk__8daNpcF_cFv */
// bool daNpcF_c::ctrlBtk() {
extern "C" bool ctrlBtk__8daNpcF_cFv() {
    return false;
}

/* 809AD86C-809AD870 002CCC 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 809AD870-809AD878 002CD0 0008+00 1/0 0/0 0/0 .text            setExpressionAnm__8daNpcF_cFib */
// bool daNpcF_c::setExpressionAnm(int param_0, bool param_1) {
extern "C" bool setExpressionAnm__8daNpcF_cFib() {
    return true;
}

/* 809AD878-809AD880 002CD8 0008+00 1/0 0/0 0/0 .text            setExpressionBtp__8daNpcF_cFi */
// bool daNpcF_c::setExpressionBtp(int param_0) {
extern "C" bool setExpressionBtp__8daNpcF_cFi() {
    return true;
}

/* 809AD880-809AD884 002CE0 0004+00 1/0 0/0 0/0 .text            setExpression__8daNpcF_cFif */
// void daNpcF_c::setExpression(int param_0, f32 param_1) {
extern "C" void setExpression__8daNpcF_cFif() {
    /* empty function */
}

/* 809AD884-809AD888 002CE4 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__8daNpcF_cFv */
// void daNpcF_c::drawOtherMdls() {
extern "C" void drawOtherMdls__8daNpcF_cFv() {
    /* empty function */
}

/* 809AD888-809AD8D0 002CE8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809ADD40-809ADD4C 000218 000C+00 2/2 0/0 0/0 .data            __vt__20daNpcDoorBoy_Param_c */
SECTION_DATA extern void* __vt__20daNpcDoorBoy_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__20daNpcDoorBoy_Param_cFv,
};

/* 809ADD58-809ADD64 000008 000C+00 1/1 0/0 0/0 .bss             @3904 */
static u8 lit_3904[12];

/* 809ADD64-809ADD68 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 809AD8D0-809AD938 002D30 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_doorboy_cpp */
void __sinit_d_a_npc_doorboy_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x809AD8D0, __sinit_d_a_npc_doorboy_cpp);
#pragma pop

/* 809AD938-809AD93C 002D98 0004+00 1/0 0/0 0/0 .text adjustShapeAngle__14daNpcDoorBoy_cFv */
void daNpcDoorBoy_c::adjustShapeAngle() {
    /* empty function */
}

/* 809AD93C-809AD984 002D9C 0048+00 2/1 0/0 0/0 .text            __dt__20daNpcDoorBoy_Param_cFv */
daNpcDoorBoy_Param_c::~daNpcDoorBoy_Param_c() {
    // NONMATCHING
}

/* 809AD984-809AD98C 002DE4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809AD984() {
    // NONMATCHING
}

/* 809AD98C-809AD994 002DEC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809AD98C() {
    // NONMATCHING
}

/* 809ADB04-809ADB04 00015C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
