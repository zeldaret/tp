/**
 * @file d_a_npc_prayer.cpp
 * 
*/

#include "rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__11daNpcPray_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__11daNpcPray_cFv();
extern "C" void Create__11daNpcPray_cFv();
extern "C" void CreateHeap__11daNpcPray_cFv();
extern "C" void Delete__11daNpcPray_cFv();
extern "C" void Execute__11daNpcPray_cFv();
extern "C" void Draw__11daNpcPray_cFv();
extern "C" void ctrlJoint__11daNpcPray_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__11daNpcPray_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpcPray_cFP8J3DJointi();
extern "C" void setParam__11daNpcPray_cFv();
extern "C" void main__11daNpcPray_cFv();
extern "C" void setAttnPos__11daNpcPray_cFv();
extern "C" void setMotionAnm__11daNpcPray_cFif();
extern "C" void setMotion__11daNpcPray_cFifi();
extern "C" bool drawDbgInfo__11daNpcPray_cFv();
extern "C" void reset__11daNpcPray_cFv();
extern "C" void playMotion__11daNpcPray_cFv();
extern "C" void setAction__11daNpcPray_cFM11daNpcPray_cFPCvPvPv_b();
extern "C" void setLookMode__11daNpcPray_cFi();
extern "C" void lookat__11daNpcPray_cFv();
extern "C" void step__11daNpcPray_cFsi();
extern "C" void chkFindPlayer__11daNpcPray_cFv();
extern "C" void wait__11daNpcPray_cFPv();
extern "C" void fear__11daNpcPray_cFPv();
extern "C" void talk__11daNpcPray_cFPv();
extern "C" void demo__11daNpcPray_cFPv();
extern "C" void createHeart__11daNpcPray_cFv();
extern "C" void _Evt_GetHeart__11daNpcPray_cFi();
extern "C" void _Evt_GetHeart_CutInit__11daNpcPray_cFRCi();
extern "C" void _Evt_GetHeart_CutMain__11daNpcPray_cFRCi();
extern "C" static void daNpcPray_Create__FPv();
extern "C" static void daNpcPray_Delete__FPv();
extern "C" static void daNpcPray_Execute__FPv();
extern "C" static void daNpcPray_Draw__FPv();
extern "C" static bool daNpcPray_IsDelete__FPv();
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
extern "C" void __sinit_d_a_npc_prayer_cpp();
extern "C" void adjustShapeAngle__11daNpcPray_cFv();
extern "C" void __dt__17daNpcPray_Param_cFv();
extern "C" static void func_80AB57E4();
extern "C" static void func_80AB57EC();
extern "C" u8 const m__17daNpcPray_Param_c[108];
extern "C" extern char const* const d_a_npc_prayer__stringBase0;
extern "C" u8 mEvtSeqList__11daNpcPray_c[24];

//
// External References:
//

extern "C" void ZXYrotS__14mDoMtx_stack_cFRC5csXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void onSwitch__12dSv_danBit_cFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
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
extern "C" void entry__18daNpcF_ActorMngr_cFUi();
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
extern "C" void setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii();
extern "C" void setEnvTevColor__8daNpcF_cFv();
extern "C" void setRoomNo__8daNpcF_cFv();
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
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void daNpcF_onEvtBit__FUl();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__5csXyzFsss();
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
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80AB5964-80AB5964 00015C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AB5964 = "Prayer";
SECTION_DEAD static char const* const stringBase_80AB596B = "Wgeneral";
SECTION_DEAD static char const* const stringBase_80AB5974 = "GET_HEART";
#pragma pop

/* 80AB5984-80AB5990 000000 000C+00 3/3 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AB5990-80AB59A4 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80AB59A4-80AB59EC 000020 0048+00 1/1 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[72] = {
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
};

/* 80AB59EC-80AB59F4 -00001 0008+00 4/5 0/0 0/0 .data            l_arcNames */
SECTION_DATA static void* l_arcNames[2] = {
    (void*)&d_a_npc_prayer__stringBase0,
    (void*)(((char*)&d_a_npc_prayer__stringBase0) + 0x7),
};

/* 80AB59F4-80AB59FC -00001 0008+00 0/2 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtNames[2] = {
    (void*)NULL,
    (void*)(((char*)&d_a_npc_prayer__stringBase0) + 0x10),
};
#pragma pop

/* 80AB59FC-80AB5A00 -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)&d_a_npc_prayer__stringBase0;
#pragma pop

/* 80AB5A00-80AB5A0C -00001 000C+00 1/1 0/0 0/0 .data            @3804 */
SECTION_DATA static void* lit_3804[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)_Evt_GetHeart__11daNpcPray_cFi,
};

/* 80AB5A0C-80AB5A24 000088 0018+00 1/2 0/0 0/0 .data            mEvtSeqList__11daNpcPray_c */
SECTION_DATA u8 daNpcPray_c::mEvtSeqList[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AB5A24-80AB5A30 -00001 000C+00 1/1 0/0 0/0 .data            @4425 */
SECTION_DATA static void* lit_4425[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcPray_cFPv,
};

/* 80AB5A30-80AB5A3C -00001 000C+00 0/1 0/0 0/0 .data            @4611 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4611[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpcPray_cFPv,
};
#pragma pop

/* 80AB5A3C-80AB5A48 -00001 000C+00 0/1 0/0 0/0 .data            @4616 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4616[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__11daNpcPray_cFPv,
};
#pragma pop

/* 80AB5A48-80AB5A54 -00001 000C+00 0/1 0/0 0/0 .data            @4623 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4623[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fear__11daNpcPray_cFPv,
};
#pragma pop

/* 80AB5A54-80AB5A60 -00001 000C+00 0/1 0/0 0/0 .data            @4682 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4682[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__11daNpcPray_cFPv,
};
#pragma pop

/* 80AB5A60-80AB5A6C -00001 000C+00 0/1 0/0 0/0 .data            @4684 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4684[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcPray_cFPv,
};
#pragma pop

/* 80AB5A6C-80AB5A78 -00001 000C+00 0/1 0/0 0/0 .data            @4732 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4732[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcPray_cFPv,
};
#pragma pop

/* 80AB5A78-80AB5A98 -00001 0020+00 1/0 0/0 0/0 .data            daNpcPray_MethodTable */
static actor_method_class daNpcPray_MethodTable = {
    (process_method_func)daNpcPray_Create__FPv,
    (process_method_func)daNpcPray_Delete__FPv,
    (process_method_func)daNpcPray_Execute__FPv,
    (process_method_func)daNpcPray_IsDelete__FPv,
    (process_method_func)daNpcPray_Draw__FPv,
};

/* 80AB5A98-80AB5AC8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_PRAYER */
extern actor_process_profile_definition g_profile_NPC_PRAYER = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_PRAYER,        // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daNpcPray_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  419,                    // mPriority
  &daNpcPray_MethodTable, // sub_method
  0x00044187,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80AB5AC8-80AB5B10 000144 0048+00 2/2 0/0 0/0 .data            __vt__11daNpcPray_c */
SECTION_DATA extern void* __vt__11daNpcPray_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpcPray_cFv,
    (void*)setParam__11daNpcPray_cFv,
    (void*)main__11daNpcPray_cFv,
    (void*)ctrlBtk__8daNpcF_cFv,
    (void*)adjustShapeAngle__11daNpcPray_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__11daNpcPray_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__8daNpcF_cFib,
    (void*)setExpressionBtp__8daNpcF_cFi,
    (void*)setExpression__8daNpcF_cFif,
    (void*)setMotionAnm__11daNpcPray_cFif,
    (void*)setMotion__11daNpcPray_cFifi,
    (void*)drawDbgInfo__11daNpcPray_cFv,
    (void*)drawOtherMdls__8daNpcF_cFv,
};

/* 80AB5B10-80AB5B1C 00018C 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AB5B1C-80AB5B40 000198 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AB57EC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AB57E4,
};

/* 80AB5B40-80AB5B4C 0001BC 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AB5B4C-80AB5B58 0001C8 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AB5B58-80AB5B64 0001D4 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AB5B64-80AB5B70 0001E0 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80AB5B70-80AB5B7C 0001EC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80AB5B7C-80AB5B88 0001F8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AB5B88-80AB5B94 000204 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 80AB2DEC-80AB2F70 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__11daNpcPray_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpcPray_c::daNpcPray_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/__ct__11daNpcPray_cFv.s"
}
#pragma pop

/* 80AB2F70-80AB2FB8 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80AB2FB8-80AB3000 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80AB3000-80AB3204 000300 0204+00 1/0 0/0 0/0 .text            __dt__11daNpcPray_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpcPray_c::~daNpcPray_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/__dt__11daNpcPray_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AB5808-80AB5874 000000 006C+00 14/14 0/0 0/0 .rodata          m__17daNpcPray_Param_c */
SECTION_RODATA u8 const daNpcPray_Param_c::m[108] = {
    0x42, 0x5C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x0C, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x02, 0x00, 0x06, 0x00, 0x03, 0x00, 0x06,
    0x42, 0x70, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AB5808, &daNpcPray_Param_c::m);

/* 80AB5874-80AB5878 00006C 0004+00 0/1 0/0 0/0 .rodata          @4169 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4169 = -60.0f;
COMPILER_STRIP_GATE(0x80AB5874, &lit_4169);
#pragma pop

/* 80AB5878-80AB587C 000070 0004+00 0/1 0/0 0/0 .rodata          @4170 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4170 = -10.0f;
COMPILER_STRIP_GATE(0x80AB5878, &lit_4170);
#pragma pop

/* 80AB587C-80AB5880 000074 0004+00 0/1 0/0 0/0 .rodata          @4171 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4171 = 60.0f;
COMPILER_STRIP_GATE(0x80AB587C, &lit_4171);
#pragma pop

/* 80AB5880-80AB5884 000078 0004+00 0/1 0/0 0/0 .rodata          @4172 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4172 = 220.0f;
COMPILER_STRIP_GATE(0x80AB5880, &lit_4172);
#pragma pop

/* 80AB3204-80AB348C 000504 0288+00 1/1 0/0 0/0 .text            Create__11daNpcPray_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::Create() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/Create__11daNpcPray_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AB5884-80AB5888 00007C 0004+00 1/3 0/0 0/0 .rodata          @4220 */
SECTION_RODATA static f32 const lit_4220 = 1.0f;
COMPILER_STRIP_GATE(0x80AB5884, &lit_4220);

/* 80AB5888-80AB588C 000080 0004+00 0/1 0/0 0/0 .rodata          @4221 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4221 = 0x3F8CCCCC;
COMPILER_STRIP_GATE(0x80AB5888, &lit_4221);
#pragma pop

/* 80AB588C-80AB5890 000084 0004+00 2/5 0/0 0/0 .rodata          @4222 */
SECTION_RODATA static f32 const lit_4222 = -1.0f;
COMPILER_STRIP_GATE(0x80AB588C, &lit_4222);

/* 80AB348C-80AB3610 00078C 0184+00 1/1 0/0 0/0 .text            CreateHeap__11daNpcPray_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/CreateHeap__11daNpcPray_cFv.s"
}
#pragma pop

/* 80AB3610-80AB3644 000910 0034+00 1/1 0/0 0/0 .text            Delete__11daNpcPray_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::Delete() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/Delete__11daNpcPray_cFv.s"
}
#pragma pop

/* 80AB3644-80AB3668 000944 0024+00 2/2 0/0 0/0 .text            Execute__11daNpcPray_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::Execute() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/Execute__11daNpcPray_cFv.s"
}
#pragma pop

/* 80AB3668-80AB36A8 000968 0040+00 1/1 0/0 0/0 .text            Draw__11daNpcPray_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::Draw() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/Draw__11daNpcPray_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AB5890-80AB589C 000088 000C+00 1/1 0/0 0/0 .rodata          @4241 */
SECTION_RODATA static u8 const lit_4241[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
};
COMPILER_STRIP_GATE(0x80AB5890, &lit_4241);

/* 80AB36A8-80AB3834 0009A8 018C+00 1/1 0/0 0/0 .text
 * ctrlJoint__11daNpcPray_cFP8J3DJointP8J3DModel                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/ctrlJoint__11daNpcPray_cFP8J3DJointP8J3DModel.s"
}
#pragma pop

/* 80AB3834-80AB3854 000B34 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpcPray_cFP10fopAc_ac_c              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::createHeapCallBack(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/createHeapCallBack__11daNpcPray_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80AB3854-80AB38A0 000B54 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpcPray_cFP8J3DJointi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/ctrlJointCallBack__11daNpcPray_cFP8J3DJointi.s"
}
#pragma pop

/* 80AB38A0-80AB390C 000BA0 006C+00 1/0 0/0 0/0 .text            setParam__11daNpcPray_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::setParam() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/setParam__11daNpcPray_cFv.s"
}
#pragma pop

/* 80AB390C-80AB3964 000C0C 0058+00 1/0 0/0 0/0 .text            main__11daNpcPray_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::main() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/main__11daNpcPray_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AB589C-80AB58A0 000094 0004+00 0/1 0/0 0/0 .rodata          @4391 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4391 = 10.0f;
COMPILER_STRIP_GATE(0x80AB589C, &lit_4391);
#pragma pop

/* 80AB58A0-80AB58A4 000098 0004+00 1/2 0/0 0/0 .rodata          @4392 */
SECTION_RODATA static f32 const lit_4392 = 15.0f;
COMPILER_STRIP_GATE(0x80AB58A0, &lit_4392);

/* 80AB58A4-80AB58A8 00009C 0004+00 1/8 0/0 0/0 .rodata          @4393 */
SECTION_RODATA static u8 const lit_4393[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AB58A4, &lit_4393);

/* 80AB3964-80AB3B0C 000C64 01A8+00 1/0 0/0 0/0 .text            setAttnPos__11daNpcPray_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::setAttnPos() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/setAttnPos__11daNpcPray_cFv.s"
}
#pragma pop

/* 80AB3B0C-80AB3BDC 000E0C 00D0+00 1/0 0/0 0/0 .text            setMotionAnm__11daNpcPray_cFif */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::setMotionAnm(int param_0, f32 param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/setMotionAnm__11daNpcPray_cFif.s"
}
#pragma pop

/* 80AB3BDC-80AB3C24 000EDC 0048+00 1/0 0/0 0/0 .text            setMotion__11daNpcPray_cFifi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::setMotion(int param_0, f32 param_1, int param_2) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/setMotion__11daNpcPray_cFifi.s"
}
#pragma pop

/* 80AB3C24-80AB3C2C 000F24 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpcPray_cFv */
bool daNpcPray_c::drawDbgInfo() {
    return false;
}

/* 80AB3C2C-80AB3DBC 000F2C 0190+00 1/1 0/0 0/0 .text            reset__11daNpcPray_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::reset() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/reset__11daNpcPray_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AB58A8-80AB58B4 0000A0 000C+00 0/1 0/0 0/0 .rodata          @4452 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4452[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AB58A8, &lit_4452);
#pragma pop

/* 80AB58B4-80AB58B8 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4453 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4453[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AB58B4, &lit_4453);
#pragma pop

/* 80AB58B8-80AB58C4 0000B0 000C+00 0/1 0/0 0/0 .rodata          @4454 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4454[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AB58B8, &lit_4454);
#pragma pop

/* 80AB58C4-80AB58D0 0000BC 000C+00 0/1 0/0 0/0 .rodata          @4455 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4455[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AB58C4, &lit_4455);
#pragma pop

/* 80AB58D0-80AB58D8 0000C8 0008+00 0/1 0/0 0/0 .rodata          @4456 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4456[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AB58D0, &lit_4456);
#pragma pop

/* 80AB58D8-80AB58E4 0000D0 000C+00 0/1 0/0 0/0 .rodata          @4457 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4457[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AB58D8, &lit_4457);
#pragma pop

/* 80AB58E4-80AB58F0 0000DC 000C+00 0/1 0/0 0/0 .rodata          @4458 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4458[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AB58E4, &lit_4458);
#pragma pop

/* 80AB58F0-80AB58F8 0000E8 0008+00 0/1 0/0 0/0 .rodata          @4459 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4459[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AB58F0, &lit_4459);
#pragma pop

/* 80AB58F8-80AB5904 0000F0 000C+00 0/1 0/0 0/0 .rodata          @4460 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4460[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AB58F8, &lit_4460);
#pragma pop

/* 80AB5904-80AB5908 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4461 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4461[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AB5904, &lit_4461);
#pragma pop

/* 80AB5908-80AB5918 000100 0010+00 0/1 0/0 0/0 .rodata          @4462 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4462[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AB5908, &lit_4462);
#pragma pop

/* 80AB3DBC-80AB3F54 0010BC 0198+00 1/1 0/0 0/0 .text            playMotion__11daNpcPray_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::playMotion() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/playMotion__11daNpcPray_cFv.s"
}
#pragma pop

/* 80AB3F54-80AB3FFC 001254 00A8+00 4/4 0/0 0/0 .text
 * setAction__11daNpcPray_cFM11daNpcPray_cFPCvPvPv_b            */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::setAction(bool (daNpcPray_c::*param_0)(void*)) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/setAction__11daNpcPray_cFM11daNpcPray_cFPCvPvPv_b.s"
}
#pragma pop

/* 80AB3FFC-80AB4020 0012FC 0024+00 2/2 0/0 0/0 .text            setLookMode__11daNpcPray_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::setLookMode(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/setLookMode__11daNpcPray_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AB5918-80AB5924 000110 000C+00 0/1 0/0 0/0 .rodata          @4495 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4495[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AB5918, &lit_4495);
#pragma pop

/* 80AB5924-80AB5928 00011C 0004+00 0/1 0/0 0/0 .rodata          @4543 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4543 = -80.0f;
COMPILER_STRIP_GATE(0x80AB5924, &lit_4543);
#pragma pop

/* 80AB5928-80AB592C 000120 0004+00 0/1 0/0 0/0 .rodata          @4544 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4544 = 80.0f;
COMPILER_STRIP_GATE(0x80AB5928, &lit_4544);
#pragma pop

/* 80AB592C-80AB5930 000124 0004+00 0/1 0/0 0/0 .rodata          @4545 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4545 = 40.0f;
COMPILER_STRIP_GATE(0x80AB592C, &lit_4545);
#pragma pop

/* 80AB4020-80AB4200 001320 01E0+00 1/1 0/0 0/0 .text            lookat__11daNpcPray_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::lookat() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/lookat__11daNpcPray_cFv.s"
}
#pragma pop

/* 80AB4200-80AB42F4 001500 00F4+00 2/2 0/0 0/0 .text            step__11daNpcPray_cFsi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::step(s16 param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/step__11daNpcPray_cFsi.s"
}
#pragma pop

/* 80AB42F4-80AB43D8 0015F4 00E4+00 1/1 0/0 0/0 .text            chkFindPlayer__11daNpcPray_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::chkFindPlayer() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/chkFindPlayer__11daNpcPray_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AB5930-80AB5938 000128 0008+00 0/1 0/0 0/0 .rodata          @4653 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4653[8] = {
    0x40, 0x7F, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AB5930, &lit_4653);
#pragma pop

/* 80AB5938-80AB5940 000130 0008+00 0/1 0/0 0/0 .rodata          @4654 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4654[8] = {
    0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AB5938, &lit_4654);
#pragma pop

/* 80AB43D8-80AB4674 0016D8 029C+00 3/0 0/0 0/0 .text            wait__11daNpcPray_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::wait(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/wait__11daNpcPray_cFPv.s"
}
#pragma pop

/* 80AB4674-80AB4740 001974 00CC+00 1/0 0/0 0/0 .text            fear__11daNpcPray_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::fear(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/fear__11daNpcPray_cFPv.s"
}
#pragma pop

/* 80AB4740-80AB498C 001A40 024C+00 1/0 0/0 0/0 .text            talk__11daNpcPray_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::talk(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/talk__11daNpcPray_cFPv.s"
}
#pragma pop

/* 80AB498C-80AB4B20 001C8C 0194+00 2/0 0/0 0/0 .text            demo__11daNpcPray_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::demo(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/demo__11daNpcPray_cFPv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AB5940-80AB5944 000138 0004+00 0/1 0/0 0/0 .rodata          @4765 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4765 = 0xC58175A1;
COMPILER_STRIP_GATE(0x80AB5940, &lit_4765);
#pragma pop

/* 80AB5944-80AB5948 00013C 0004+00 0/1 0/0 0/0 .rodata          @4766 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4766 = 850.0f;
COMPILER_STRIP_GATE(0x80AB5944, &lit_4766);
#pragma pop

/* 80AB5948-80AB594C 000140 0004+00 0/1 0/0 0/0 .rodata          @4767 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4767 = 0xC40E5807;
COMPILER_STRIP_GATE(0x80AB5948, &lit_4767);
#pragma pop

/* 80AB594C-80AB5950 000144 0004+00 0/1 0/0 0/0 .rodata          @4768 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4768 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80AB594C, &lit_4768);
#pragma pop

/* 80AB5950-80AB5954 000148 0004+00 0/1 0/0 0/0 .rodata          @4769 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4769 = 95.0f;
COMPILER_STRIP_GATE(0x80AB5950, &lit_4769);
#pragma pop

/* 80AB4B20-80AB4BFC 001E20 00DC+00 1/1 0/0 0/0 .text            createHeart__11daNpcPray_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::createHeart() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/createHeart__11daNpcPray_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AB5964-80AB5964 00015C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AB597E = "cutId";
#pragma pop

/* 80AB4BFC-80AB4CA4 001EFC 00A8+00 1/0 0/0 0/0 .text            _Evt_GetHeart__11daNpcPray_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::_Evt_GetHeart(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/_Evt_GetHeart__11daNpcPray_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AB5954-80AB5958 00014C 0004+00 0/1 0/0 0/0 .rodata          @4800 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4800 = -3.0f;
COMPILER_STRIP_GATE(0x80AB5954, &lit_4800);
#pragma pop

/* 80AB5958-80AB595C 000150 0004+00 0/2 0/0 0/0 .rodata          @4801 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4801 = -4.0f;
COMPILER_STRIP_GATE(0x80AB5958, &lit_4801);
#pragma pop

/* 80AB4CA4-80AB4D34 001FA4 0090+00 1/1 0/0 0/0 .text _Evt_GetHeart_CutInit__11daNpcPray_cFRCi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::_Evt_GetHeart_CutInit(int const& param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/_Evt_GetHeart_CutInit__11daNpcPray_cFRCi.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AB595C-80AB5960 000154 0004+00 0/1 0/0 0/0 .rodata          @4840 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4840 = 110.0f;
COMPILER_STRIP_GATE(0x80AB595C, &lit_4840);
#pragma pop

/* 80AB5960-80AB5964 000158 0004+00 0/1 0/0 0/0 .rodata          @4841 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4841 = -300.0f;
COMPILER_STRIP_GATE(0x80AB5960, &lit_4841);
#pragma pop

/* 80AB4D34-80AB4E88 002034 0154+00 1/1 0/0 0/0 .text _Evt_GetHeart_CutMain__11daNpcPray_cFRCi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcPray_c::_Evt_GetHeart_CutMain(int const& param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/_Evt_GetHeart_CutMain__11daNpcPray_cFRCi.s"
}
#pragma pop

/* 80AB4E88-80AB4EA8 002188 0020+00 1/0 0/0 0/0 .text            daNpcPray_Create__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpcPray_Create(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/daNpcPray_Create__FPv.s"
}
#pragma pop

/* 80AB4EA8-80AB4EC8 0021A8 0020+00 1/0 0/0 0/0 .text            daNpcPray_Delete__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpcPray_Delete(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/daNpcPray_Delete__FPv.s"
}
#pragma pop

/* 80AB4EC8-80AB4EE8 0021C8 0020+00 1/0 0/0 0/0 .text            daNpcPray_Execute__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpcPray_Execute(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/daNpcPray_Execute__FPv.s"
}
#pragma pop

/* 80AB4EE8-80AB4F08 0021E8 0020+00 1/0 0/0 0/0 .text            daNpcPray_Draw__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpcPray_Draw(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/daNpcPray_Draw__FPv.s"
}
#pragma pop

/* 80AB4F08-80AB4F10 002208 0008+00 1/0 0/0 0/0 .text            daNpcPray_IsDelete__FPv */
static bool daNpcPray_IsDelete(void* param_0) {
    return true;
}

/* 80AB4F10-80AB4F58 002210 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" asm void __dt__18daNpcF_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/__dt__18daNpcF_ActorMngr_cFv.s"
}
#pragma pop

/* 80AB4F58-80AB4F94 002258 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" asm void __ct__18daNpcF_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/__ct__18daNpcF_ActorMngr_cFv.s"
}
#pragma pop

/* 80AB4F94-80AB5064 002294 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" asm void __dt__15daNpcF_Lookat_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/__dt__15daNpcF_Lookat_cFv.s"
}
#pragma pop

/* 80AB5064-80AB50A0 002364 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/__dt__5csXyzFv.s"
}
#pragma pop

/* 80AB50A0-80AB50A4 0023A0 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" asm void __ct__5csXyzFv() {
    /* empty function */
}

/* 80AB50A4-80AB50E0 0023A4 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/__dt__4cXyzFv.s"
}
#pragma pop

/* 80AB50E0-80AB50E4 0023E0 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" asm void __ct__4cXyzFv() {
    /* empty function */
}

/* 80AB50E4-80AB5330 0023E4 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_c::~daNpcF_c() {
extern "C" asm void __dt__8daNpcF_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/__dt__8daNpcF_cFv.s"
}
#pragma pop

/* 80AB5330-80AB5520 002630 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_c::daNpcF_c() {
extern "C" asm void __ct__8daNpcF_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/__ct__8daNpcF_cFv.s"
}
#pragma pop

/* 80AB5520-80AB5590 002820 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80AB5590-80AB55EC 002890 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80AB55EC-80AB565C 0028EC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80AB565C-80AB56A4 00295C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80AB56A4-80AB56AC 0029A4 0008+00 1/0 0/0 0/0 .text            ctrlBtk__8daNpcF_cFv */
// bool daNpcF_c::ctrlBtk() {
extern "C" bool ctrlBtk__8daNpcF_cFv() {
    return false;
}

/* 80AB56AC-80AB56B0 0029AC 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" asm void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80AB56B0-80AB56B8 0029B0 0008+00 1/0 0/0 0/0 .text            setExpressionAnm__8daNpcF_cFib */
// bool daNpcF_c::setExpressionAnm(int param_0, bool param_1) {
extern "C" bool setExpressionAnm__8daNpcF_cFib() {
    return true;
}

/* 80AB56B8-80AB56C0 0029B8 0008+00 1/0 0/0 0/0 .text            setExpressionBtp__8daNpcF_cFi */
// bool daNpcF_c::setExpressionBtp(int param_0) {
extern "C" bool setExpressionBtp__8daNpcF_cFi() {
    return true;
}

/* 80AB56C0-80AB56C4 0029C0 0004+00 1/0 0/0 0/0 .text            setExpression__8daNpcF_cFif */
// void daNpcF_c::setExpression(int param_0, f32 param_1) {
extern "C" asm void setExpression__8daNpcF_cFif() {
    /* empty function */
}

/* 80AB56C4-80AB56C8 0029C4 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__8daNpcF_cFv */
// void daNpcF_c::drawOtherMdls() {
extern "C" asm void drawOtherMdls__8daNpcF_cFv() {
    /* empty function */
}

/* 80AB56C8-80AB5710 0029C8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AB5B94-80AB5BA0 000210 000C+00 2/2 0/0 0/0 .data            __vt__17daNpcPray_Param_c */
SECTION_DATA extern void* __vt__17daNpcPray_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpcPray_Param_cFv,
};

/* 80AB5BA8-80AB5BB4 000008 000C+00 1/1 0/0 0/0 .bss             @3803 */
static u8 lit_3803[12];

/* 80AB5BB4-80AB5BB8 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80AB5710-80AB5798 002A10 0088+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_prayer_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_npc_prayer_cpp() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/__sinit_d_a_npc_prayer_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80AB5710, __sinit_d_a_npc_prayer_cpp);
#pragma pop

/* 80AB5798-80AB579C 002A98 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__11daNpcPray_cFv
 */
void daNpcPray_c::adjustShapeAngle() {
    /* empty function */
}

/* 80AB579C-80AB57E4 002A9C 0048+00 2/1 0/0 0/0 .text            __dt__17daNpcPray_Param_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpcPray_Param_c::~daNpcPray_Param_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/__dt__17daNpcPray_Param_cFv.s"
}
#pragma pop

/* 80AB57E4-80AB57EC 002AE4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80AB57E4() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/func_80AB57E4.s"
}
#pragma pop

/* 80AB57EC-80AB57F4 002AEC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80AB57EC() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_prayer/d_a_npc_prayer/func_80AB57EC.s"
}
#pragma pop

/* 80AB5964-80AB5964 00015C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
