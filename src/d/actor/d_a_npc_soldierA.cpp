/**
 * @file d_a_npc_soldierA.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_soldierA.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__16daNpc_SoldierA_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__16daNpc_SoldierA_cFv();
extern "C" void create__16daNpc_SoldierA_cFv();
extern "C" void CreateHeap__16daNpc_SoldierA_cFv();
extern "C" void Delete__16daNpc_SoldierA_cFv();
extern "C" void Execute__16daNpc_SoldierA_cFv();
extern "C" void Draw__16daNpc_SoldierA_cFv();
extern "C" void ctrlJoint__16daNpc_SoldierA_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__16daNpc_SoldierA_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__16daNpc_SoldierA_cFP8J3DJointi();
extern "C" void setParam__16daNpc_SoldierA_cFv();
extern "C" void main__16daNpc_SoldierA_cFv();
extern "C" bool ctrlBtk__16daNpc_SoldierA_cFv();
extern "C" void setAttnPos__16daNpc_SoldierA_cFv();
extern "C" void setMotionAnm__16daNpc_SoldierA_cFif();
extern "C" void setMotion__16daNpc_SoldierA_cFifi();
extern "C" bool drawDbgInfo__16daNpc_SoldierA_cFv();
extern "C" void drawOtherMdls__16daNpc_SoldierA_cFv();
extern "C" void getTypeFromParam__16daNpc_SoldierA_cFv();
extern "C" void isDelete__16daNpc_SoldierA_cFv();
extern "C" void reset__16daNpc_SoldierA_cFv();
extern "C" void playMotion__16daNpc_SoldierA_cFv();
extern "C" void chkAction__16daNpc_SoldierA_cFM16daNpc_SoldierA_cFPCvPvPv_i();
extern "C" void setAction__16daNpc_SoldierA_cFM16daNpc_SoldierA_cFPCvPvPv_i();
extern "C" void selectAction__16daNpc_SoldierA_cFv();
extern "C" void doNormalAction__16daNpc_SoldierA_cFi();
extern "C" void doEvent__16daNpc_SoldierA_cFv();
extern "C" void setLookMode__16daNpc_SoldierA_cFi();
extern "C" void lookat__16daNpc_SoldierA_cFv();
extern "C" void wait__16daNpc_SoldierA_cFPv();
extern "C" void talk__16daNpc_SoldierA_cFPv();
extern "C" void ECut_talkLake__16daNpc_SoldierA_cFi();
extern "C" void ECut_listenLake__16daNpc_SoldierA_cFi();
extern "C" void test__16daNpc_SoldierA_cFPv();
extern "C" static void daNpc_SoldierA_Create__FPv();
extern "C" static void daNpc_SoldierA_Delete__FPv();
extern "C" static void daNpc_SoldierA_Execute__FPv();
extern "C" static void daNpc_SoldierA_Draw__FPv();
extern "C" static bool daNpc_SoldierA_IsDelete__FPv();
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
extern "C" void __sinit_d_a_npc_soldierA_cpp();
extern "C" void __dt__22daNpc_SoldierA_Param_cFv();
extern "C" static void func_80AF26C4();
extern "C" static void func_80AF26CC();
extern "C" u8 const m__22daNpc_SoldierA_Param_c[108];
extern "C" extern char const* const d_a_npc_soldierA__stringBase0;
extern "C" void* mEvtCutNameList__16daNpc_SoldierA_c[3];
extern "C" u8 mEvtCutList__16daNpc_SoldierA_c[36];

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
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
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
extern "C" void srchAttnActor1__8daNpcF_cFPvPv();
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
extern "C" void changeEvent__8daNpcF_cFPcPcUsUs();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void step__8daNpcF_cFsiii();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii();
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
/* 80AF2864-80AF2864 00017C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AF2864 = "TALK_LAKE";
SECTION_DEAD static char const* const stringBase_80AF286E = "chtSolA";
SECTION_DEAD static char const* const stringBase_80AF2876 = "";
SECTION_DEAD static char const* const stringBase_80AF2877 = "LISTEN_LAKE";
#pragma pop

/* 80AF28A8-80AF28B8 000020 0010+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
SECTION_DATA static u8 l_bmdGetParamList[16] = {
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00,
};

/* 80AF28B8-80AF28F0 000030 0038+00 1/1 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[56] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
};

/* 80AF28F0-80AF2900 000068 0010+00 0/2 0/0 0/0 .data            l_evtGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_evtGetParamList[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80AF2900-80AF2908 -00001 0008+00 0/2 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtNames[2] = {
    (void*)NULL,
    (void*)&d_a_npc_soldierA__stringBase0,
};
#pragma pop

/* 80AF2908-80AF2914 000080 000C+00 1/0 0/0 0/0 .data            l_loadRes_SOLDIERaa */
SECTION_DATA static u8 l_loadRes_SOLDIERaa[12] = {
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80AF2914-80AF2920 00008C 000C+00 1/0 0/0 0/0 .data            l_loadRes_SOLDIERa0 */
SECTION_DATA static u8 l_loadRes_SOLDIERa0[12] = {
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80AF2920-80AF2930 -00001 0010+00 2/2 0/0 0/0 .data            l_loadRes_list */
SECTION_DATA static void* l_loadRes_list[4] = {
    (void*)&l_loadRes_SOLDIERaa,
    (void*)&l_loadRes_SOLDIERaa,
    (void*)&l_loadRes_SOLDIERaa,
    (void*)&l_loadRes_SOLDIERa0,
};

/* 80AF2930-80AF2934 -00001 0004+00 4/6 0/0 0/0 .data            l_resNames */
SECTION_DATA static void* l_resNames = (void*)(((char*)&d_a_npc_soldierA__stringBase0) + 0xA);

/* 80AF2934-80AF2938 -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)(((char*)&d_a_npc_soldierA__stringBase0) + 0xA);
#pragma pop

/* 80AF2938-80AF2944 -00001 000C+00 0/1 0/0 0/0 .data            mEvtCutNameList__16daNpc_SoldierA_c
 */
#pragma push
#pragma force_active on
SECTION_DATA void* daNpc_SoldierA_c::mEvtCutNameList[3] = {
    (void*)(((char*)&d_a_npc_soldierA__stringBase0) + 0x12),
    (void*)&d_a_npc_soldierA__stringBase0,
    (void*)(((char*)&d_a_npc_soldierA__stringBase0) + 0x13),
};
#pragma pop

/* 80AF2944-80AF2950 -00001 000C+00 0/1 0/0 0/0 .data            @4018 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4018[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_talkLake__16daNpc_SoldierA_cFi,
};
#pragma pop

/* 80AF2950-80AF295C -00001 000C+00 0/1 0/0 0/0 .data            @4019 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4019[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_listenLake__16daNpc_SoldierA_cFi,
};
#pragma pop

/* 80AF295C-80AF2980 0000D4 0024+00 0/2 0/0 0/0 .data            mEvtCutList__16daNpc_SoldierA_c */
#pragma push
#pragma force_active on
SECTION_DATA u8 daNpc_SoldierA_c::mEvtCutList[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80AF2980-80AF298C -00001 000C+00 1/1 0/0 0/0 .data            @4463 */
SECTION_DATA static void* lit_4463[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__16daNpc_SoldierA_cFPv,
};

/* 80AF298C-80AF2998 -00001 000C+00 1/1 0/0 0/0 .data            @4961 */
SECTION_DATA static void* lit_4961[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__16daNpc_SoldierA_cFPv,
};

/* 80AF2998-80AF29A4 -00001 000C+00 1/1 0/0 0/0 .data            @4965 */
SECTION_DATA static void* lit_4965[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__16daNpc_SoldierA_cFPv,
};

/* 80AF29A4-80AF29B0 -00001 000C+00 0/1 0/0 0/0 .data            @5005 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5005[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__16daNpc_SoldierA_cFPv,
};
#pragma pop

/* 80AF29B0-80AF29BC -00001 000C+00 0/1 0/0 0/0 .data            @5016 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5016[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__16daNpc_SoldierA_cFPv,
};
#pragma pop

/* 80AF29BC-80AF29DC -00001 0020+00 1/0 0/0 0/0 .data            daNpc_SoldierA_MethodTable */
static actor_method_class daNpc_SoldierA_MethodTable = {
    (process_method_func)daNpc_SoldierA_Create__FPv,
    (process_method_func)daNpc_SoldierA_Delete__FPv,
    (process_method_func)daNpc_SoldierA_Execute__FPv,
    (process_method_func)daNpc_SoldierA_IsDelete__FPv,
    (process_method_func)daNpc_SoldierA_Draw__FPv,
};

/* 80AF29DC-80AF2A0C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SOLDIERa */
extern actor_process_profile_definition g_profile_NPC_SOLDIERa = {
  fpcLy_CURRENT_e,             // mLayerID
  7,                           // mListID
  fpcPi_CURRENT_e,             // mListPrio
  PROC_NPC_SOLDIERa,           // mProcName
  &g_fpcLf_Method.base,       // sub_method
  sizeof(daNpc_SoldierA_c),    // mSize
  0,                           // mSizeOther
  0,                           // mParameters
  &g_fopAc_Method.base,        // sub_method
  399,                         // mPriority
  &daNpc_SoldierA_MethodTable, // sub_method
  0x00044100,                  // mStatus
  fopAc_NPC_e,                 // mActorType
  fopAc_CULLBOX_CUSTOM_e,      // cullType
};

/* 80AF2A0C-80AF2A54 000184 0048+00 2/2 0/0 0/0 .data            __vt__16daNpc_SoldierA_c */
SECTION_DATA extern void* __vt__16daNpc_SoldierA_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daNpc_SoldierA_cFv,
    (void*)setParam__16daNpc_SoldierA_cFv,
    (void*)main__16daNpc_SoldierA_cFv,
    (void*)ctrlBtk__16daNpc_SoldierA_cFv,
    (void*)adjustShapeAngle__8daNpcF_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__16daNpc_SoldierA_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__8daNpcF_cFib,
    (void*)setExpressionBtp__8daNpcF_cFi,
    (void*)setExpression__8daNpcF_cFif,
    (void*)setMotionAnm__16daNpc_SoldierA_cFif,
    (void*)setMotion__16daNpc_SoldierA_cFifi,
    (void*)drawDbgInfo__16daNpc_SoldierA_cFv,
    (void*)drawOtherMdls__16daNpc_SoldierA_cFv,
};

/* 80AF2A54-80AF2A60 0001CC 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AF2A60-80AF2A84 0001D8 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AF26CC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AF26C4,
};

/* 80AF2A84-80AF2A90 0001FC 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AF2A90-80AF2A9C 000208 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AF2A9C-80AF2AA8 000214 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AF2AA8-80AF2AB4 000220 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80AF2AB4-80AF2AC0 00022C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80AF2AC0-80AF2ACC 000238 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AF2ACC-80AF2AD8 000244 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 80AEF58C-80AEF710 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__16daNpc_SoldierA_cFv */
daNpc_SoldierA_c::daNpc_SoldierA_c() {
    // NONMATCHING
}

/* 80AEF710-80AEF758 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80AEF758-80AEF7A0 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80AEF7A0-80AEF9A0 000300 0200+00 1/0 0/0 0/0 .text            __dt__16daNpc_SoldierA_cFv */
daNpc_SoldierA_c::~daNpc_SoldierA_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AF26E8-80AF2754 000000 006C+00 12/12 0/0 0/0 .rodata          m__22daNpc_SoldierA_Param_c */
SECTION_RODATA u8 const daNpc_SoldierA_Param_c::m[108] = {
    0x41, 0xF0, 0x00, 0x00, 0xC0, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x44, 0x16, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x70, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x05, 0x00, 0x06, 0x00, 0x07, 0x00, 0x06,
    0x43, 0x34, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF26E8, &daNpc_SoldierA_Param_c::m);

/* 80AF2754-80AF2758 00006C 0004+00 0/1 0/0 0/0 .rodata          @4394 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4394 = -300.0f;
COMPILER_STRIP_GATE(0x80AF2754, &lit_4394);
#pragma pop

/* 80AF2758-80AF275C 000070 0004+00 0/1 0/0 0/0 .rodata          @4395 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4395 = -50.0f;
COMPILER_STRIP_GATE(0x80AF2758, &lit_4395);
#pragma pop

/* 80AF275C-80AF2760 000074 0004+00 0/1 0/0 0/0 .rodata          @4396 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4396 = 300.0f;
COMPILER_STRIP_GATE(0x80AF275C, &lit_4396);
#pragma pop

/* 80AF2760-80AF2764 000078 0004+00 0/1 0/0 0/0 .rodata          @4397 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4397 = 450.0f;
COMPILER_STRIP_GATE(0x80AF2760, &lit_4397);
#pragma pop

/* 80AEF9A0-80AEFC80 000500 02E0+00 1/1 0/0 0/0 .text            create__16daNpc_SoldierA_cFv */
void daNpc_SoldierA_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AF2764-80AF2768 00007C 0004+00 2/2 0/0 0/0 .rodata          @4448 */
SECTION_RODATA static f32 const lit_4448 = 1.0f;
COMPILER_STRIP_GATE(0x80AF2764, &lit_4448);

/* 80AF2768-80AF276C 000080 0004+00 4/6 0/0 0/0 .rodata          @4449 */
SECTION_RODATA static u8 const lit_4449[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AF2768, &lit_4449);

/* 80AEFC80-80AEFE4C 0007E0 01CC+00 1/1 0/0 0/0 .text            CreateHeap__16daNpc_SoldierA_cFv */
void daNpc_SoldierA_c::CreateHeap() {
    // NONMATCHING
}

/* 80AEFE4C-80AEFE80 0009AC 0034+00 1/1 0/0 0/0 .text            Delete__16daNpc_SoldierA_cFv */
void daNpc_SoldierA_c::Delete() {
    // NONMATCHING
}

/* 80AEFE80-80AEFEA0 0009E0 0020+00 2/2 0/0 0/0 .text            Execute__16daNpc_SoldierA_cFv */
void daNpc_SoldierA_c::Execute() {
    // NONMATCHING
}

/* 80AEFEA0-80AEFF14 000A00 0074+00 1/1 0/0 0/0 .text            Draw__16daNpc_SoldierA_cFv */
void daNpc_SoldierA_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AF276C-80AF2778 000084 000C+00 1/1 0/0 0/0 .rodata          @4472 */
SECTION_RODATA static u8 const lit_4472[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80AF276C, &lit_4472);

/* 80AEFF14-80AF0110 000A74 01FC+00 1/1 0/0 0/0 .text
 * ctrlJoint__16daNpc_SoldierA_cFP8J3DJointP8J3DModel           */
void daNpc_SoldierA_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 80AF0110-80AF0130 000C70 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__16daNpc_SoldierA_cFP10fopAc_ac_c         */
void daNpc_SoldierA_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80AF0130-80AF017C 000C90 004C+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__16daNpc_SoldierA_cFP8J3DJointi            */
void daNpc_SoldierA_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80AF017C-80AF02B0 000CDC 0134+00 1/0 0/0 0/0 .text            setParam__16daNpc_SoldierA_cFv */
void daNpc_SoldierA_c::setParam() {
    // NONMATCHING
}

/* 80AF02B0-80AF0428 000E10 0178+00 1/0 0/0 0/0 .text            main__16daNpc_SoldierA_cFv */
void daNpc_SoldierA_c::main() {
    // NONMATCHING
}

/* 80AF0428-80AF0430 000F88 0008+00 1/0 0/0 0/0 .text            ctrlBtk__16daNpc_SoldierA_cFv */
bool daNpc_SoldierA_c::ctrlBtk() {
    return false;
}

/* ############################################################################################## */
/* 80AF2778-80AF277C 000090 0004+00 0/1 0/0 0/0 .rodata          @4789 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4789 = 20.0f;
COMPILER_STRIP_GATE(0x80AF2778, &lit_4789);
#pragma pop

/* 80AF277C-80AF2780 000094 0004+00 0/1 0/0 0/0 .rodata          @4790 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4790 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80AF277C, &lit_4790);
#pragma pop

/* 80AF2780-80AF2788 000098 0004+04 0/1 0/0 0/0 .rodata          @4791 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4791[1 + 1 /* padding */] = {
    125.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80AF2780, &lit_4791);
#pragma pop

/* 80AF2788-80AF2790 0000A0 0008+00 0/1 0/0 0/0 .rodata          @4792 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4792[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF2788, &lit_4792);
#pragma pop

/* 80AF2790-80AF2798 0000A8 0008+00 0/1 0/0 0/0 .rodata          @4793 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4793[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF2790, &lit_4793);
#pragma pop

/* 80AF2798-80AF27A0 0000B0 0008+00 0/1 0/0 0/0 .rodata          @4794 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4794[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF2798, &lit_4794);
#pragma pop

/* 80AF2B30-80AF2B3C 000048 000C+00 1/1 0/0 0/0 .bss             @4017 */
static u8 lit_4017[12];

/* 80AF2B3C-80AF2B40 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80AF2B40-80AF2B50 000058 000C+04 0/1 0/0 0/0 .bss             @4641 */
#pragma push
#pragma force_active on
static u8 lit_4641[12 + 4 /* padding */];
#pragma pop

/* 80AF2B50-80AF2B5C 000068 000C+00 0/1 0/0 0/0 .bss             eyeOffset$4640 */
#pragma push
#pragma force_active on
static u8 eyeOffset[12];
#pragma pop

/* 80AF0430-80AF0928 000F90 04F8+00 1/0 0/0 0/0 .text            setAttnPos__16daNpc_SoldierA_cFv */
void daNpc_SoldierA_c::setAttnPos() {
    // NONMATCHING
}

/* 80AF0928-80AF0A38 001488 0110+00 1/0 0/0 0/0 .text            setMotionAnm__16daNpc_SoldierA_cFif
 */
bool daNpc_SoldierA_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80AF0A38-80AF0A7C 001598 0044+00 1/0 0/0 0/0 .text            setMotion__16daNpc_SoldierA_cFifi
 */
void daNpc_SoldierA_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 80AF0A7C-80AF0A84 0015DC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__16daNpc_SoldierA_cFv
 */
bool daNpc_SoldierA_c::drawDbgInfo() {
    return false;
}

/* 80AF0A84-80AF0B30 0015E4 00AC+00 1/0 0/0 0/0 .text            drawOtherMdls__16daNpc_SoldierA_cFv
 */
void daNpc_SoldierA_c::drawOtherMdls() {
    // NONMATCHING
}

/* 80AF0B30-80AF0B7C 001690 004C+00 1/1 0/0 0/0 .text getTypeFromParam__16daNpc_SoldierA_cFv */
void daNpc_SoldierA_c::getTypeFromParam() {
    // NONMATCHING
}

/* 80AF0B7C-80AF0BB0 0016DC 0034+00 1/1 0/0 0/0 .text            isDelete__16daNpc_SoldierA_cFv */
void daNpc_SoldierA_c::isDelete() {
    // NONMATCHING
}

/* 80AF0BB0-80AF0D34 001710 0184+00 1/1 0/0 0/0 .text            reset__16daNpc_SoldierA_cFv */
void daNpc_SoldierA_c::reset() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AF27A0-80AF27AC 0000B8 000C+00 0/1 0/0 0/0 .rodata          @4914 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4914[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF27A0, &lit_4914);
#pragma pop

/* 80AF27AC-80AF27B0 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4915 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4915[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AF27AC, &lit_4915);
#pragma pop

/* 80AF27B0-80AF27BC 0000C8 000C+00 0/1 0/0 0/0 .rodata          @4916 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4916[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AF27B0, &lit_4916);
#pragma pop

/* 80AF27BC-80AF27C8 0000D4 000C+00 0/1 0/0 0/0 .rodata          @4917 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4917[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF27BC, &lit_4917);
#pragma pop

/* 80AF27C8-80AF27D0 0000E0 0008+00 0/1 0/0 0/0 .rodata          @4918 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4918[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF27C8, &lit_4918);
#pragma pop

/* 80AF27D0-80AF27DC 0000E8 000C+00 0/1 0/0 0/0 .rodata          @4919 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4919[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AF27D0, &lit_4919);
#pragma pop

/* 80AF27DC-80AF27E8 0000F4 000C+00 0/1 0/0 0/0 .rodata          @4920 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4920[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF27DC, &lit_4920);
#pragma pop

/* 80AF27E8-80AF27F0 000100 0008+00 0/1 0/0 0/0 .rodata          @4921 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4921[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF27E8, &lit_4921);
#pragma pop

/* 80AF27F0-80AF27FC 000108 000C+00 0/1 0/0 0/0 .rodata          @4922 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4922[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF27F0, &lit_4922);
#pragma pop

/* 80AF27FC-80AF2800 000114 0004+00 0/1 0/0 0/0 .rodata          @4923 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4923[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AF27FC, &lit_4923);
#pragma pop

/* 80AF2800-80AF280C 000118 000C+00 0/1 0/0 0/0 .rodata          @4924 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4924[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AF2800, &lit_4924);
#pragma pop

/* 80AF280C-80AF2818 000124 000C+00 0/1 0/0 0/0 .rodata          @4925 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4925[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF280C, &lit_4925);
#pragma pop

/* 80AF2818-80AF2820 000130 0008+00 0/1 0/0 0/0 .rodata          @4926 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4926[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF2818, &lit_4926);
#pragma pop

/* 80AF2820-80AF282C 000138 000C+00 0/1 0/0 0/0 .rodata          @4927 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4927[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF2820, &lit_4927);
#pragma pop

/* 80AF282C-80AF2830 000144 0004+00 0/1 0/0 0/0 .rodata          @4928 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4928[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AF282C, &lit_4928);
#pragma pop

/* 80AF0D34-80AF0F50 001894 021C+00 1/1 0/0 0/0 .text            playMotion__16daNpc_SoldierA_cFv */
void daNpc_SoldierA_c::playMotion() {
    // NONMATCHING
}

/* 80AF0F50-80AF0F7C 001AB0 002C+00 2/2 0/0 0/0 .text
 * chkAction__16daNpc_SoldierA_cFM16daNpc_SoldierA_cFPCvPvPv_i  */
void daNpc_SoldierA_c::chkAction(int (daNpc_SoldierA_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80AF0F7C-80AF1024 001ADC 00A8+00 2/2 0/0 0/0 .text
 * setAction__16daNpc_SoldierA_cFM16daNpc_SoldierA_cFPCvPvPv_i  */
void daNpc_SoldierA_c::setAction(int (daNpc_SoldierA_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80AF1024-80AF10A4 001B84 0080+00 1/1 0/0 0/0 .text            selectAction__16daNpc_SoldierA_cFv
 */
void daNpc_SoldierA_c::selectAction() {
    // NONMATCHING
}

/* 80AF10A4-80AF11B8 001C04 0114+00 1/1 0/0 0/0 .text doNormalAction__16daNpc_SoldierA_cFi */
void daNpc_SoldierA_c::doNormalAction(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AF2830-80AF2848 000148 0018+00 0/0 0/0 0/0 .rodata          @4929 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4929[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF2830, &lit_4929);
#pragma pop

/* 80AF2848-80AF284C 000160 0004+00 4/4 0/0 0/0 .rodata          @5059 */
SECTION_RODATA static f32 const lit_5059 = -1.0f;
COMPILER_STRIP_GATE(0x80AF2848, &lit_5059);

/* 80AF11B8-80AF1488 001D18 02D0+00 1/1 0/0 0/0 .text            doEvent__16daNpc_SoldierA_cFv */
void daNpc_SoldierA_c::doEvent() {
    // NONMATCHING
}

/* 80AF1488-80AF14AC 001FE8 0024+00 4/4 0/0 0/0 .text            setLookMode__16daNpc_SoldierA_cFi
 */
void daNpc_SoldierA_c::setLookMode(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AF284C-80AF2858 000164 000C+00 0/1 0/0 0/0 .rodata          @5071 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5071[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF284C, &lit_5071);
#pragma pop

/* 80AF2858-80AF285C 000170 0004+00 0/1 0/0 0/0 .rodata          @5124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5124 = -80.0f;
COMPILER_STRIP_GATE(0x80AF2858, &lit_5124);
#pragma pop

/* 80AF285C-80AF2860 000174 0004+00 0/1 0/0 0/0 .rodata          @5125 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5125 = 80.0f;
COMPILER_STRIP_GATE(0x80AF285C, &lit_5125);
#pragma pop

/* 80AF2860-80AF2864 000178 0004+00 0/1 0/0 0/0 .rodata          @5126 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5126 = 40.0f;
COMPILER_STRIP_GATE(0x80AF2860, &lit_5126);
#pragma pop

/* 80AF14AC-80AF1734 00200C 0288+00 1/1 0/0 0/0 .text            lookat__16daNpc_SoldierA_cFv */
void daNpc_SoldierA_c::lookat() {
    // NONMATCHING
}

/* 80AF1734-80AF18B0 002294 017C+00 1/0 0/0 0/0 .text            wait__16daNpc_SoldierA_cFPv */
void daNpc_SoldierA_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80AF18B0-80AF1A48 002410 0198+00 2/0 0/0 0/0 .text            talk__16daNpc_SoldierA_cFPv */
void daNpc_SoldierA_c::talk(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AF2864-80AF2864 00017C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AF2883 = "prm";
#pragma pop

/* 80AF1A48-80AF1B8C 0025A8 0144+00 1/0 0/0 0/0 .text            ECut_talkLake__16daNpc_SoldierA_cFi
 */
void daNpc_SoldierA_c::ECut_talkLake(int param_0) {
    // NONMATCHING
}

/* 80AF1B8C-80AF1CA4 0026EC 0118+00 1/0 0/0 0/0 .text ECut_listenLake__16daNpc_SoldierA_cFi */
void daNpc_SoldierA_c::ECut_listenLake(int param_0) {
    // NONMATCHING
}

/* 80AF1CA4-80AF1D58 002804 00B4+00 2/0 0/0 0/0 .text            test__16daNpc_SoldierA_cFPv */
void daNpc_SoldierA_c::test(void* param_0) {
    // NONMATCHING
}

/* 80AF1D58-80AF1D78 0028B8 0020+00 1/0 0/0 0/0 .text            daNpc_SoldierA_Create__FPv */
static void daNpc_SoldierA_Create(void* param_0) {
    // NONMATCHING
}

/* 80AF1D78-80AF1D98 0028D8 0020+00 1/0 0/0 0/0 .text            daNpc_SoldierA_Delete__FPv */
static void daNpc_SoldierA_Delete(void* param_0) {
    // NONMATCHING
}

/* 80AF1D98-80AF1DB8 0028F8 0020+00 1/0 0/0 0/0 .text            daNpc_SoldierA_Execute__FPv */
static void daNpc_SoldierA_Execute(void* param_0) {
    // NONMATCHING
}

/* 80AF1DB8-80AF1DD8 002918 0020+00 1/0 0/0 0/0 .text            daNpc_SoldierA_Draw__FPv */
static void daNpc_SoldierA_Draw(void* param_0) {
    // NONMATCHING
}

/* 80AF1DD8-80AF1DE0 002938 0008+00 1/0 0/0 0/0 .text            daNpc_SoldierA_IsDelete__FPv */
static bool daNpc_SoldierA_IsDelete(void* param_0) {
    return true;
}

/* 80AF1DE0-80AF1E28 002940 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AF1E28-80AF1E64 002988 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AF1E64-80AF1F34 0029C4 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 80AF1F34-80AF1F70 002A94 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80AF1F70-80AF1F74 002AD0 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80AF1F74-80AF1FB0 002AD4 003C+00 6/6 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80AF1FB0-80AF1FB4 002B10 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80AF1FB4-80AF2200 002B14 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80AF2200-80AF23F0 002D60 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80AF23F0-80AF2460 002F50 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80AF2460-80AF24BC 002FC0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AF24BC-80AF252C 00301C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80AF252C-80AF2574 00308C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80AF2574-80AF2578 0030D4 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__8daNpcF_cFv */
// void daNpcF_c::adjustShapeAngle() {
extern "C" void adjustShapeAngle__8daNpcF_cFv() {
    /* empty function */
}

/* 80AF2578-80AF257C 0030D8 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80AF257C-80AF2584 0030DC 0008+00 1/0 0/0 0/0 .text            setExpressionAnm__8daNpcF_cFib */
// bool daNpcF_c::setExpressionAnm(int param_0, bool param_1) {
extern "C" bool setExpressionAnm__8daNpcF_cFib() {
    return true;
}

/* 80AF2584-80AF258C 0030E4 0008+00 1/0 0/0 0/0 .text            setExpressionBtp__8daNpcF_cFi */
// bool daNpcF_c::setExpressionBtp(int param_0) {
extern "C" bool setExpressionBtp__8daNpcF_cFi() {
    return true;
}

/* 80AF258C-80AF2590 0030EC 0004+00 1/0 0/0 0/0 .text            setExpression__8daNpcF_cFif */
// void daNpcF_c::setExpression(int param_0, f32 param_1) {
extern "C" void setExpression__8daNpcF_cFif() {
    /* empty function */
}

/* 80AF2590-80AF25D8 0030F0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AF2AD8-80AF2AE4 000250 000C+00 2/2 0/0 0/0 .data            __vt__22daNpc_SoldierA_Param_c */
SECTION_DATA extern void* __vt__22daNpc_SoldierA_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpc_SoldierA_Param_cFv,
};

/* 80AF25D8-80AF267C 003138 00A4+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_soldierA_cpp */
void __sinit_d_a_npc_soldierA_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80AF25D8, __sinit_d_a_npc_soldierA_cpp);
#pragma pop

/* 80AF267C-80AF26C4 0031DC 0048+00 2/1 0/0 0/0 .text            __dt__22daNpc_SoldierA_Param_cFv */
daNpc_SoldierA_Param_c::~daNpc_SoldierA_Param_c() {
    // NONMATCHING
}

/* 80AF26C4-80AF26CC 003224 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80AF26C4() {
    // NONMATCHING
}

/* 80AF26CC-80AF26D4 00322C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80AF26CC() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AF2B5C-80AF2B60 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80AF2B5C[4];
#pragma pop

/* 80AF2B60-80AF2B64 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80AF2B60[4];
#pragma pop

/* 80AF2B64-80AF2B68 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80AF2B64[4];
#pragma pop

/* 80AF2B68-80AF2B6C 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80AF2B68[4];
#pragma pop

/* 80AF2B6C-80AF2B70 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80AF2B6C[4];
#pragma pop

/* 80AF2B70-80AF2B74 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80AF2B70[4];
#pragma pop

/* 80AF2B74-80AF2B78 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80AF2B74[4];
#pragma pop

/* 80AF2B78-80AF2B7C 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80AF2B78[4];
#pragma pop

/* 80AF2B7C-80AF2B80 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80AF2B7C[4];
#pragma pop

/* 80AF2B80-80AF2B84 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80AF2B80[4];
#pragma pop

/* 80AF2B84-80AF2B88 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80AF2B84[4];
#pragma pop

/* 80AF2B88-80AF2B8C 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80AF2B88[4];
#pragma pop

/* 80AF2B8C-80AF2B90 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80AF2B8C[4];
#pragma pop

/* 80AF2B90-80AF2B94 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80AF2B90[4];
#pragma pop

/* 80AF2B94-80AF2B98 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80AF2B94[4];
#pragma pop

/* 80AF2B98-80AF2B9C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80AF2B98[4];
#pragma pop

/* 80AF2B9C-80AF2BA0 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80AF2B9C[4];
#pragma pop

/* 80AF2BA0-80AF2BA4 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80AF2BA0[4];
#pragma pop

/* 80AF2BA4-80AF2BA8 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80AF2BA4[4];
#pragma pop

/* 80AF2BA8-80AF2BAC 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80AF2BA8[4];
#pragma pop

/* 80AF2BAC-80AF2BB0 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80AF2BAC[4];
#pragma pop

/* 80AF2BB0-80AF2BB4 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80AF2BB0[4];
#pragma pop

/* 80AF2BB4-80AF2BB8 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80AF2BB4[4];
#pragma pop

/* 80AF2BB8-80AF2BBC 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80AF2BB8[4];
#pragma pop

/* 80AF2BBC-80AF2BC0 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80AF2BBC[4];
#pragma pop

/* 80AF2864-80AF2864 00017C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
