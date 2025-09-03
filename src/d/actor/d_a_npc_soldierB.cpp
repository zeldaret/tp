/**
 * @file d_a_npc_soldierB.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_soldierB.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__16daNpc_SoldierB_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__16daNpc_SoldierB_cFv();
extern "C" void create__16daNpc_SoldierB_cFv();
extern "C" void CreateHeap__16daNpc_SoldierB_cFv();
extern "C" void Delete__16daNpc_SoldierB_cFv();
extern "C" void Execute__16daNpc_SoldierB_cFv();
extern "C" void Draw__16daNpc_SoldierB_cFv();
extern "C" void ctrlJoint__16daNpc_SoldierB_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__16daNpc_SoldierB_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__16daNpc_SoldierB_cFP8J3DJointi();
extern "C" void setParam__16daNpc_SoldierB_cFv();
extern "C" void main__16daNpc_SoldierB_cFv();
extern "C" bool ctrlBtk__16daNpc_SoldierB_cFv();
extern "C" void setAttnPos__16daNpc_SoldierB_cFv();
extern "C" void setMotionAnm__16daNpc_SoldierB_cFif();
extern "C" void setMotion__16daNpc_SoldierB_cFifi();
extern "C" bool drawDbgInfo__16daNpc_SoldierB_cFv();
extern "C" void drawOtherMdls__16daNpc_SoldierB_cFv();
extern "C" void getTypeFromParam__16daNpc_SoldierB_cFv();
extern "C" void isDelete__16daNpc_SoldierB_cFv();
extern "C" void reset__16daNpc_SoldierB_cFv();
extern "C" void playMotion__16daNpc_SoldierB_cFv();
extern "C" void chkAction__16daNpc_SoldierB_cFM16daNpc_SoldierB_cFPCvPvPv_i();
extern "C" void setAction__16daNpc_SoldierB_cFM16daNpc_SoldierB_cFPCvPvPv_i();
extern "C" void selectAction__16daNpc_SoldierB_cFv();
extern "C" void doNormalAction__16daNpc_SoldierB_cFi();
extern "C" void doEvent__16daNpc_SoldierB_cFv();
extern "C" void setLookMode__16daNpc_SoldierB_cFi();
extern "C" void lookat__16daNpc_SoldierB_cFv();
extern "C" static void s_sub__FPvPv();
extern "C" void wait__16daNpc_SoldierB_cFPv();
extern "C" void talk__16daNpc_SoldierB_cFPv();
extern "C" void ECut_listenLake__16daNpc_SoldierB_cFi();
extern "C" void test__16daNpc_SoldierB_cFPv();
extern "C" static void daNpc_SoldierB_Create__FPv();
extern "C" static void daNpc_SoldierB_Delete__FPv();
extern "C" static void daNpc_SoldierB_Execute__FPv();
extern "C" static void daNpc_SoldierB_Draw__FPv();
extern "C" static bool daNpc_SoldierB_IsDelete__FPv();
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
extern "C" bool setExpressionAnm__8daNpcF_cFib();
extern "C" bool setExpressionBtp__8daNpcF_cFi();
extern "C" void setExpression__8daNpcF_cFif();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_npc_soldierB_cpp();
extern "C" void __dt__22daNpc_SoldierB_Param_cFv();
extern "C" static void func_80AF5AB0();
extern "C" static void func_80AF5AB8();
extern "C" u8 const m__22daNpc_SoldierB_Param_c[108];
extern "C" extern char const* const d_a_npc_soldierB__stringBase0;
extern "C" void* mEvtCutNameList__16daNpc_SoldierB_c[2];
extern "C" u8 mEvtCutList__16daNpc_SoldierB_c[24];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
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
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
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
extern "C" void initialize__18daNpcF_ActorMngr_cFv();
extern "C" void entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c();
extern "C" void getActorP__18daNpcF_ActorMngr_cFv();
extern "C" void initialize__15daNpcF_Lookat_cFv();
extern "C" void setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz();
extern "C" void calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii();
extern "C" void execute__8daNpcF_cFv();
extern "C" void draw__8daNpcF_cFiifP11_GXColorS10i();
extern "C" void tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void setMtx__8daNpcF_cFv();
extern "C" void setMtx2__8daNpcF_cFv();
extern "C" void initialize__8daNpcF_cFv();
extern "C" void getTrnsfrmKeyAnmP__8daNpcF_cFPci();
extern "C" void setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii();
extern "C" void setEnvTevColor__8daNpcF_cFv();
extern "C" void setRoomNo__8daNpcF_cFv();
extern "C" void playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void setLookatMtx__8daNpcF_cFiPif();
extern "C" void hitChk2__8daNpcF_cFP8dCcD_Cylii();
extern "C" void setDamage__8daNpcF_cFiii();
extern "C" void ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void step__8daNpcF_cFsiii();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
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
/* 80AF5BF4-80AF5BF4 000120 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AF5BF4 = "chtSolB";
SECTION_DEAD static char const* const stringBase_80AF5BFC = "";
SECTION_DEAD static char const* const stringBase_80AF5BFD = "LISTEN_LAKE";
#pragma pop

/* 80AF5C30-80AF5C40 000020 0010+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
SECTION_DATA static u8 l_bmdGetParamList[16] = {
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00,
};

/* 80AF5C40-80AF5C60 000030 0020+00 1/1 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[32] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
};

/* 80AF5C60-80AF5C68 000050 0008+00 0/1 0/0 0/0 .data            l_evtGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_evtGetParamList[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80AF5C68-80AF5C6C 000058 0004+00 0/1 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_evtNames[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
#pragma pop

/* 80AF5C6C-80AF5C78 00005C 000C+00 1/0 0/0 0/0 .data            l_loadRes_SOLDIERba */
SECTION_DATA static u8 l_loadRes_SOLDIERba[12] = {
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80AF5C78-80AF5C84 000068 000C+00 1/0 0/0 0/0 .data            l_loadRes_SOLDIERb0 */
SECTION_DATA static u8 l_loadRes_SOLDIERb0[12] = {
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80AF5C84-80AF5C8C -00001 0008+00 2/2 0/0 0/0 .data            l_loadRes_list */
SECTION_DATA static void* l_loadRes_list[2] = {
    (void*)&l_loadRes_SOLDIERba,
    (void*)&l_loadRes_SOLDIERb0,
};

/* 80AF5C8C-80AF5C90 -00001 0004+00 4/5 0/0 0/0 .data            l_resNames */
SECTION_DATA static void* l_resNames = (void*)&d_a_npc_soldierB__stringBase0;

/* 80AF5C90-80AF5C94 -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)&d_a_npc_soldierB__stringBase0;
#pragma pop

/* 80AF5C94-80AF5C9C -00001 0008+00 0/1 0/0 0/0 .data            mEvtCutNameList__16daNpc_SoldierB_c
 */
#pragma push
#pragma force_active on
SECTION_DATA void* daNpc_SoldierB_c::mEvtCutNameList[2] = {
    (void*)(((char*)&d_a_npc_soldierB__stringBase0) + 0x8),
    (void*)(((char*)&d_a_npc_soldierB__stringBase0) + 0x9),
};
#pragma pop

/* 80AF5C9C-80AF5CA8 -00001 000C+00 1/1 0/0 0/0 .data            @4024 */
SECTION_DATA static void* lit_4024[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_listenLake__16daNpc_SoldierB_cFi,
};

/* 80AF5CA8-80AF5CC0 000098 0018+00 1/2 0/0 0/0 .data            mEvtCutList__16daNpc_SoldierB_c */
SECTION_DATA u8 daNpc_SoldierB_c::mEvtCutList[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AF5CC0-80AF5CCC -00001 000C+00 1/1 0/0 0/0 .data            @4468 */
SECTION_DATA static void* lit_4468[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__16daNpc_SoldierB_cFPv,
};

/* 80AF5CCC-80AF5CD8 -00001 000C+00 1/1 0/0 0/0 .data            @4942 */
SECTION_DATA static void* lit_4942[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__16daNpc_SoldierB_cFPv,
};

/* 80AF5CD8-80AF5CE4 -00001 000C+00 1/1 0/0 0/0 .data            @4946 */
SECTION_DATA static void* lit_4946[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__16daNpc_SoldierB_cFPv,
};

/* 80AF5CE4-80AF5CF0 -00001 000C+00 0/1 0/0 0/0 .data            @4986 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4986[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__16daNpc_SoldierB_cFPv,
};
#pragma pop

/* 80AF5CF0-80AF5CFC -00001 000C+00 0/1 0/0 0/0 .data            @4994 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4994[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__16daNpc_SoldierB_cFPv,
};
#pragma pop

/* 80AF5CFC-80AF5D1C -00001 0020+00 1/0 0/0 0/0 .data            daNpc_SoldierB_MethodTable */
static actor_method_class daNpc_SoldierB_MethodTable = {
    (process_method_func)daNpc_SoldierB_Create__FPv,
    (process_method_func)daNpc_SoldierB_Delete__FPv,
    (process_method_func)daNpc_SoldierB_Execute__FPv,
    (process_method_func)daNpc_SoldierB_IsDelete__FPv,
    (process_method_func)daNpc_SoldierB_Draw__FPv,
};

/* 80AF5D1C-80AF5D4C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SOLDIERb */
extern actor_process_profile_definition g_profile_NPC_SOLDIERb = {
  fpcLy_CURRENT_e,             // mLayerID
  7,                           // mListID
  fpcPi_CURRENT_e,             // mListPrio
  PROC_NPC_SOLDIERb,           // mProcName
  &g_fpcLf_Method.base,       // sub_method
  sizeof(daNpc_SoldierB_c),    // mSize
  0,                           // mSizeOther
  0,                           // mParameters
  &g_fopAc_Method.base,        // sub_method
  400,                         // mPriority
  &daNpc_SoldierB_MethodTable, // sub_method
  0x00044100,                  // mStatus
  fopAc_NPC_e,                 // mActorType
  fopAc_CULLBOX_CUSTOM_e,      // cullType
};

/* 80AF5D4C-80AF5D94 00013C 0048+00 2/2 0/0 0/0 .data            __vt__16daNpc_SoldierB_c */
SECTION_DATA extern void* __vt__16daNpc_SoldierB_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daNpc_SoldierB_cFv,
    (void*)setParam__16daNpc_SoldierB_cFv,
    (void*)main__16daNpc_SoldierB_cFv,
    (void*)ctrlBtk__16daNpc_SoldierB_cFv,
    (void*)adjustShapeAngle__8daNpcF_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__16daNpc_SoldierB_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__8daNpcF_cFib,
    (void*)setExpressionBtp__8daNpcF_cFi,
    (void*)setExpression__8daNpcF_cFif,
    (void*)setMotionAnm__16daNpc_SoldierB_cFif,
    (void*)setMotion__16daNpc_SoldierB_cFifi,
    (void*)drawDbgInfo__16daNpc_SoldierB_cFv,
    (void*)drawOtherMdls__16daNpc_SoldierB_cFv,
};

/* 80AF5D94-80AF5DA0 000184 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AF5DA0-80AF5DC4 000190 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AF5AB8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AF5AB0,
};

/* 80AF5DC4-80AF5DD0 0001B4 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AF5DD0-80AF5DDC 0001C0 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AF5DDC-80AF5DE8 0001CC 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AF5DE8-80AF5DF4 0001D8 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80AF5DF4-80AF5E00 0001E4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80AF5E00-80AF5E0C 0001F0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AF5E0C-80AF5E18 0001FC 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 80AF2CAC-80AF2E30 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__16daNpc_SoldierB_cFv */
daNpc_SoldierB_c::daNpc_SoldierB_c() {
    // NONMATCHING
}

/* 80AF2E30-80AF2E78 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80AF2E78-80AF2EC0 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80AF2EC0-80AF30C0 000300 0200+00 1/0 0/0 0/0 .text            __dt__16daNpc_SoldierB_cFv */
daNpc_SoldierB_c::~daNpc_SoldierB_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AF5AD4-80AF5B40 000000 006C+00 11/11 0/0 0/0 .rodata          m__22daNpc_SoldierB_Param_c */
SECTION_RODATA u8 const daNpc_SoldierB_Param_c::m[108] = {
    0x41, 0xF0, 0x00, 0x00, 0xC0, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x44, 0x16, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x70, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x05, 0x00, 0x06, 0x00, 0x07, 0x00, 0x06,
    0x43, 0x34, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF5AD4, &daNpc_SoldierB_Param_c::m);

/* 80AF5B40-80AF5B44 00006C 0004+00 0/1 0/0 0/0 .rodata          @4399 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4399 = -300.0f;
COMPILER_STRIP_GATE(0x80AF5B40, &lit_4399);
#pragma pop

/* 80AF5B44-80AF5B48 000070 0004+00 0/1 0/0 0/0 .rodata          @4400 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4400 = -50.0f;
COMPILER_STRIP_GATE(0x80AF5B44, &lit_4400);
#pragma pop

/* 80AF5B48-80AF5B4C 000074 0004+00 0/1 0/0 0/0 .rodata          @4401 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4401 = 300.0f;
COMPILER_STRIP_GATE(0x80AF5B48, &lit_4401);
#pragma pop

/* 80AF5B4C-80AF5B50 000078 0004+00 0/1 0/0 0/0 .rodata          @4402 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4402 = 450.0f;
COMPILER_STRIP_GATE(0x80AF5B4C, &lit_4402);
#pragma pop

/* 80AF30C0-80AF33A0 000500 02E0+00 1/1 0/0 0/0 .text            create__16daNpc_SoldierB_cFv */
void daNpc_SoldierB_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AF5B50-80AF5B54 00007C 0004+00 2/2 0/0 0/0 .rodata          @4453 */
SECTION_RODATA static f32 const lit_4453 = 1.0f;
COMPILER_STRIP_GATE(0x80AF5B50, &lit_4453);

/* 80AF5B54-80AF5B58 000080 0004+00 4/6 0/0 0/0 .rodata          @4454 */
SECTION_RODATA static u8 const lit_4454[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AF5B54, &lit_4454);

/* 80AF33A0-80AF356C 0007E0 01CC+00 1/1 0/0 0/0 .text            CreateHeap__16daNpc_SoldierB_cFv */
void daNpc_SoldierB_c::CreateHeap() {
    // NONMATCHING
}

/* 80AF356C-80AF35A0 0009AC 0034+00 1/1 0/0 0/0 .text            Delete__16daNpc_SoldierB_cFv */
void daNpc_SoldierB_c::Delete() {
    // NONMATCHING
}

/* 80AF35A0-80AF35C0 0009E0 0020+00 2/2 0/0 0/0 .text            Execute__16daNpc_SoldierB_cFv */
void daNpc_SoldierB_c::Execute() {
    // NONMATCHING
}

/* 80AF35C0-80AF3634 000A00 0074+00 1/1 0/0 0/0 .text            Draw__16daNpc_SoldierB_cFv */
void daNpc_SoldierB_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AF5B58-80AF5B64 000084 000C+00 1/1 0/0 0/0 .rodata          @4477 */
SECTION_RODATA static u8 const lit_4477[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80AF5B58, &lit_4477);

/* 80AF3634-80AF3830 000A74 01FC+00 1/1 0/0 0/0 .text
 * ctrlJoint__16daNpc_SoldierB_cFP8J3DJointP8J3DModel           */
void daNpc_SoldierB_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 80AF3830-80AF3850 000C70 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__16daNpc_SoldierB_cFP10fopAc_ac_c         */
void daNpc_SoldierB_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80AF3850-80AF389C 000C90 004C+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__16daNpc_SoldierB_cFP8J3DJointi            */
void daNpc_SoldierB_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80AF389C-80AF39B8 000CDC 011C+00 1/0 0/0 0/0 .text            setParam__16daNpc_SoldierB_cFv */
void daNpc_SoldierB_c::setParam() {
    // NONMATCHING
}

/* 80AF39B8-80AF3B30 000DF8 0178+00 1/0 0/0 0/0 .text            main__16daNpc_SoldierB_cFv */
void daNpc_SoldierB_c::main() {
    // NONMATCHING
}

/* 80AF3B30-80AF3B38 000F70 0008+00 1/0 0/0 0/0 .text            ctrlBtk__16daNpc_SoldierB_cFv */
bool daNpc_SoldierB_c::ctrlBtk() {
    return false;
}

/* ############################################################################################## */
/* 80AF5B64-80AF5B68 000090 0004+00 0/1 0/0 0/0 .rodata          @4790 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4790 = 20.0f;
COMPILER_STRIP_GATE(0x80AF5B64, &lit_4790);
#pragma pop

/* 80AF5B68-80AF5B6C 000094 0004+00 0/1 0/0 0/0 .rodata          @4791 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4791 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80AF5B68, &lit_4791);
#pragma pop

/* 80AF5B6C-80AF5B74 000098 0004+04 0/1 0/0 0/0 .rodata          @4792 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4792[1 + 1 /* padding */] = {
    125.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80AF5B6C, &lit_4792);
#pragma pop

/* 80AF5B74-80AF5B7C 0000A0 0008+00 0/1 0/0 0/0 .rodata          @4793 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4793[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF5B74, &lit_4793);
#pragma pop

/* 80AF5B7C-80AF5B84 0000A8 0008+00 0/1 0/0 0/0 .rodata          @4794 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4794[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF5B7C, &lit_4794);
#pragma pop

/* 80AF5B84-80AF5B8C 0000B0 0008+00 0/1 0/0 0/0 .rodata          @4795 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4795[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF5B84, &lit_4795);
#pragma pop

/* 80AF5E70-80AF5E7C 000048 000C+00 1/1 0/0 0/0 .bss             @4023 */
static u8 lit_4023[12];

/* 80AF5E7C-80AF5E80 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80AF5E80-80AF5E90 000058 000C+04 0/1 0/0 0/0 .bss             @4642 */
#pragma push
#pragma force_active on
static u8 lit_4642[12 + 4 /* padding */];
#pragma pop

/* 80AF5E90-80AF5E9C 000068 000C+00 0/1 0/0 0/0 .bss             eyeOffset$4641 */
#pragma push
#pragma force_active on
static u8 eyeOffset[12];
#pragma pop

/* 80AF3B38-80AF4030 000F78 04F8+00 1/0 0/0 0/0 .text            setAttnPos__16daNpc_SoldierB_cFv */
void daNpc_SoldierB_c::setAttnPos() {
    // NONMATCHING
}

/* 80AF4030-80AF4130 001470 0100+00 1/0 0/0 0/0 .text            setMotionAnm__16daNpc_SoldierB_cFif
 */
bool daNpc_SoldierB_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80AF4130-80AF4174 001570 0044+00 1/0 0/0 0/0 .text            setMotion__16daNpc_SoldierB_cFifi
 */
void daNpc_SoldierB_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 80AF4174-80AF417C 0015B4 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__16daNpc_SoldierB_cFv
 */
bool daNpc_SoldierB_c::drawDbgInfo() {
    return false;
}

/* 80AF417C-80AF4228 0015BC 00AC+00 1/0 0/0 0/0 .text            drawOtherMdls__16daNpc_SoldierB_cFv
 */
void daNpc_SoldierB_c::drawOtherMdls() {
    // NONMATCHING
}

/* 80AF4228-80AF4248 001668 0020+00 1/1 0/0 0/0 .text getTypeFromParam__16daNpc_SoldierB_cFv */
void daNpc_SoldierB_c::getTypeFromParam() {
    // NONMATCHING
}

/* 80AF4248-80AF426C 001688 0024+00 1/1 0/0 0/0 .text            isDelete__16daNpc_SoldierB_cFv */
void daNpc_SoldierB_c::isDelete() {
    // NONMATCHING
}

/* 80AF426C-80AF43E4 0016AC 0178+00 1/1 0/0 0/0 .text            reset__16daNpc_SoldierB_cFv */
void daNpc_SoldierB_c::reset() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AF5B8C-80AF5B98 0000B8 000C+00 0/1 0/0 0/0 .rodata          @4906 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4906[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF5B8C, &lit_4906);
#pragma pop

/* 80AF5B98-80AF5B9C 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4907 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4907[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AF5B98, &lit_4907);
#pragma pop

/* 80AF5B9C-80AF5BA8 0000C8 000C+00 0/1 0/0 0/0 .rodata          @4908 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4908[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AF5B9C, &lit_4908);
#pragma pop

/* 80AF5BA8-80AF5BB4 0000D4 000C+00 0/1 0/0 0/0 .rodata          @4909 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4909[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF5BA8, &lit_4909);
#pragma pop

/* 80AF5BB4-80AF5BBC 0000E0 0008+00 0/1 0/0 0/0 .rodata          @4910 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4910[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF5BB4, &lit_4910);
#pragma pop

/* 80AF5BBC-80AF5BC8 0000E8 000C+00 0/1 0/0 0/0 .rodata          @4911 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4911[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF5BBC, &lit_4911);
#pragma pop

/* 80AF5BC8-80AF5BCC 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4912 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4912[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AF5BC8, &lit_4912);
#pragma pop

/* 80AF5BCC-80AF5BD8 0000F8 000C+00 0/1 0/0 0/0 .rodata          @4913 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4913[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF5BCC, &lit_4913);
#pragma pop

/* 80AF43E4-80AF4508 001824 0124+00 1/1 0/0 0/0 .text            playMotion__16daNpc_SoldierB_cFv */
void daNpc_SoldierB_c::playMotion() {
    // NONMATCHING
}

/* 80AF4508-80AF4534 001948 002C+00 2/2 0/0 0/0 .text
 * chkAction__16daNpc_SoldierB_cFM16daNpc_SoldierB_cFPCvPvPv_i  */
void daNpc_SoldierB_c::chkAction(int (daNpc_SoldierB_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80AF4534-80AF45DC 001974 00A8+00 2/2 0/0 0/0 .text
 * setAction__16daNpc_SoldierB_cFM16daNpc_SoldierB_cFPCvPvPv_i  */
void daNpc_SoldierB_c::setAction(int (daNpc_SoldierB_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80AF45DC-80AF465C 001A1C 0080+00 1/1 0/0 0/0 .text            selectAction__16daNpc_SoldierB_cFv
 */
void daNpc_SoldierB_c::selectAction() {
    // NONMATCHING
}

/* 80AF465C-80AF4770 001A9C 0114+00 1/1 0/0 0/0 .text doNormalAction__16daNpc_SoldierB_cFi */
void daNpc_SoldierB_c::doNormalAction(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AF5BD8-80AF5BDC 000104 0004+00 4/4 0/0 0/0 .rodata          @5036 */
SECTION_RODATA static f32 const lit_5036 = -1.0f;
COMPILER_STRIP_GATE(0x80AF5BD8, &lit_5036);

/* 80AF4770-80AF49E4 001BB0 0274+00 1/1 0/0 0/0 .text            doEvent__16daNpc_SoldierB_cFv */
void daNpc_SoldierB_c::doEvent() {
    // NONMATCHING
}

/* 80AF49E4-80AF4A08 001E24 0024+00 5/5 0/0 0/0 .text            setLookMode__16daNpc_SoldierB_cFi
 */
void daNpc_SoldierB_c::setLookMode(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AF5BDC-80AF5BE8 000108 000C+00 0/1 0/0 0/0 .rodata          @5048 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5048[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF5BDC, &lit_5048);
#pragma pop

/* 80AF5BE8-80AF5BEC 000114 0004+00 0/1 0/0 0/0 .rodata          @5102 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5102 = -80.0f;
COMPILER_STRIP_GATE(0x80AF5BE8, &lit_5102);
#pragma pop

/* 80AF5BEC-80AF5BF0 000118 0004+00 0/1 0/0 0/0 .rodata          @5103 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5103 = 80.0f;
COMPILER_STRIP_GATE(0x80AF5BEC, &lit_5103);
#pragma pop

/* 80AF5BF0-80AF5BF4 00011C 0004+00 0/1 0/0 0/0 .rodata          @5104 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5104 = 40.0f;
COMPILER_STRIP_GATE(0x80AF5BF0, &lit_5104);
#pragma pop

/* 80AF4A08-80AF4CA4 001E48 029C+00 1/1 0/0 0/0 .text            lookat__16daNpc_SoldierB_cFv */
void daNpc_SoldierB_c::lookat() {
    // NONMATCHING
}

/* 80AF4CA4-80AF4CFC 0020E4 0058+00 2/2 0/0 0/0 .text            s_sub__FPvPv */
static void s_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80AF4CFC-80AF4DBC 00213C 00C0+00 1/0 0/0 0/0 .text            wait__16daNpc_SoldierB_cFPv */
void daNpc_SoldierB_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80AF4DBC-80AF4F54 0021FC 0198+00 2/0 0/0 0/0 .text            talk__16daNpc_SoldierB_cFPv */
void daNpc_SoldierB_c::talk(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AF5BF4-80AF5BF4 000120 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AF5C09 = "prm";
#pragma pop

/* 80AF4F54-80AF50AC 002394 0158+00 1/0 0/0 0/0 .text ECut_listenLake__16daNpc_SoldierB_cFi */
void daNpc_SoldierB_c::ECut_listenLake(int param_0) {
    // NONMATCHING
}

/* 80AF50AC-80AF5160 0024EC 00B4+00 2/0 0/0 0/0 .text            test__16daNpc_SoldierB_cFPv */
void daNpc_SoldierB_c::test(void* param_0) {
    // NONMATCHING
}

/* 80AF5160-80AF5180 0025A0 0020+00 1/0 0/0 0/0 .text            daNpc_SoldierB_Create__FPv */
static void daNpc_SoldierB_Create(void* param_0) {
    // NONMATCHING
}

/* 80AF5180-80AF51A0 0025C0 0020+00 1/0 0/0 0/0 .text            daNpc_SoldierB_Delete__FPv */
static void daNpc_SoldierB_Delete(void* param_0) {
    // NONMATCHING
}

/* 80AF51A0-80AF51C0 0025E0 0020+00 1/0 0/0 0/0 .text            daNpc_SoldierB_Execute__FPv */
static void daNpc_SoldierB_Execute(void* param_0) {
    // NONMATCHING
}

/* 80AF51C0-80AF51E0 002600 0020+00 1/0 0/0 0/0 .text            daNpc_SoldierB_Draw__FPv */
static void daNpc_SoldierB_Draw(void* param_0) {
    // NONMATCHING
}

/* 80AF51E0-80AF51E8 002620 0008+00 1/0 0/0 0/0 .text            daNpc_SoldierB_IsDelete__FPv */
static bool daNpc_SoldierB_IsDelete(void* param_0) {
    return true;
}

/* 80AF51E8-80AF5230 002628 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AF5230-80AF526C 002670 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AF526C-80AF533C 0026AC 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 80AF533C-80AF5378 00277C 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80AF5378-80AF537C 0027B8 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80AF537C-80AF53B8 0027BC 003C+00 6/6 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80AF53B8-80AF53BC 0027F8 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80AF53BC-80AF5608 0027FC 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80AF5608-80AF57F8 002A48 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80AF57F8-80AF5868 002C38 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80AF5868-80AF58C4 002CA8 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AF58C4-80AF5934 002D04 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80AF5934-80AF597C 002D74 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80AF597C-80AF5980 002DBC 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__8daNpcF_cFv */
// void daNpcF_c::adjustShapeAngle() {
extern "C" void adjustShapeAngle__8daNpcF_cFv() {
    /* empty function */
}

/* 80AF5980-80AF5984 002DC0 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80AF5984-80AF598C 002DC4 0008+00 1/0 0/0 0/0 .text            setExpressionAnm__8daNpcF_cFib */
// bool daNpcF_c::setExpressionAnm(int param_0, bool param_1) {
extern "C" bool setExpressionAnm__8daNpcF_cFib() {
    return true;
}

/* 80AF598C-80AF5994 002DCC 0008+00 1/0 0/0 0/0 .text            setExpressionBtp__8daNpcF_cFi */
// bool daNpcF_c::setExpressionBtp(int param_0) {
extern "C" bool setExpressionBtp__8daNpcF_cFi() {
    return true;
}

/* 80AF5994-80AF5998 002DD4 0004+00 1/0 0/0 0/0 .text            setExpression__8daNpcF_cFif */
// void daNpcF_c::setExpression(int param_0, f32 param_1) {
extern "C" void setExpression__8daNpcF_cFif() {
    /* empty function */
}

/* 80AF5998-80AF59E0 002DD8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AF5E18-80AF5E24 000208 000C+00 2/2 0/0 0/0 .data            __vt__22daNpc_SoldierB_Param_c */
SECTION_DATA extern void* __vt__22daNpc_SoldierB_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpc_SoldierB_Param_cFv,
};

/* 80AF59E0-80AF5A68 002E20 0088+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_soldierB_cpp */
void __sinit_d_a_npc_soldierB_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80AF59E0, __sinit_d_a_npc_soldierB_cpp);
#pragma pop

/* 80AF5A68-80AF5AB0 002EA8 0048+00 2/1 0/0 0/0 .text            __dt__22daNpc_SoldierB_Param_cFv */
daNpc_SoldierB_Param_c::~daNpc_SoldierB_Param_c() {
    // NONMATCHING
}

/* 80AF5AB0-80AF5AB8 002EF0 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80AF5AB0() {
    // NONMATCHING
}

/* 80AF5AB8-80AF5AC0 002EF8 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80AF5AB8() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AF5E9C-80AF5EA0 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80AF5E9C[4];
#pragma pop

/* 80AF5EA0-80AF5EA4 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80AF5EA0[4];
#pragma pop

/* 80AF5EA4-80AF5EA8 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80AF5EA4[4];
#pragma pop

/* 80AF5EA8-80AF5EAC 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80AF5EA8[4];
#pragma pop

/* 80AF5EAC-80AF5EB0 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80AF5EAC[4];
#pragma pop

/* 80AF5EB0-80AF5EB4 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80AF5EB0[4];
#pragma pop

/* 80AF5EB4-80AF5EB8 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80AF5EB4[4];
#pragma pop

/* 80AF5EB8-80AF5EBC 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80AF5EB8[4];
#pragma pop

/* 80AF5EBC-80AF5EC0 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80AF5EBC[4];
#pragma pop

/* 80AF5EC0-80AF5EC4 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80AF5EC0[4];
#pragma pop

/* 80AF5EC4-80AF5EC8 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80AF5EC4[4];
#pragma pop

/* 80AF5EC8-80AF5ECC 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80AF5EC8[4];
#pragma pop

/* 80AF5ECC-80AF5ED0 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80AF5ECC[4];
#pragma pop

/* 80AF5ED0-80AF5ED4 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80AF5ED0[4];
#pragma pop

/* 80AF5ED4-80AF5ED8 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80AF5ED4[4];
#pragma pop

/* 80AF5ED8-80AF5EDC 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80AF5ED8[4];
#pragma pop

/* 80AF5EDC-80AF5EE0 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80AF5EDC[4];
#pragma pop

/* 80AF5EE0-80AF5EE4 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80AF5EE0[4];
#pragma pop

/* 80AF5EE4-80AF5EE8 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80AF5EE4[4];
#pragma pop

/* 80AF5EE8-80AF5EEC 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80AF5EE8[4];
#pragma pop

/* 80AF5EEC-80AF5EF0 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80AF5EEC[4];
#pragma pop

/* 80AF5EF0-80AF5EF4 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80AF5EF0[4];
#pragma pop

/* 80AF5EF4-80AF5EF8 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80AF5EF4[4];
#pragma pop

/* 80AF5EF8-80AF5EFC 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80AF5EF8[4];
#pragma pop

/* 80AF5EFC-80AF5F00 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80AF5EFC[4];
#pragma pop

/* 80AF5BF4-80AF5BF4 000120 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
