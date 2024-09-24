/**
 * @file d_a_npc_blue_ns.cpp
 * 
*/

#define DANPCF_C_CTOR_HACK

#include "rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns.h"
#include "rel/d/a/tag/d_a_tag_yami/d_a_tag_yami.h"
#include "rel/d/a/obj/d_a_obj_carry/d_a_obj_carry.h"
#include "rel/d/a/npc/d_a_npc_yamis/d_a_npc_yamis.h"
#include "rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid.h"
#include "rel/d/a/npc/d_a_npc_yamit/d_a_npc_yamit.h"
#include "d/cc/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void __ct__13daNpcBlueNS_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__13daNpcBlueNS_cFv();
extern "C" void Create__13daNpcBlueNS_cFv();
extern "C" void CreateHeap__13daNpcBlueNS_cFv();
extern "C" void isDelete__13daNpcBlueNS_cFv();
extern "C" void Delete__13daNpcBlueNS_cFv();
extern "C" void Execute__13daNpcBlueNS_cFv();
extern "C" void _Execute__13daNpcBlueNS_cFv();
extern "C" void callEvt_changeYami__13daNpcBlueNS_cFv();
extern "C" void create_Yamijin__13daNpcBlueNS_cFi();
extern "C" void col_check__13daNpcBlueNS_cFv();
extern "C" void holyball_check_main__13daNpcBlueNS_cFP10fopAc_ac_c();
extern "C" void Draw__13daNpcBlueNS_cFv();
extern "C" void ctrlJoint__13daNpcBlueNS_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__13daNpcBlueNS_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__13daNpcBlueNS_cFP8J3DJointi();
extern "C" void setParam__13daNpcBlueNS_cFv();
extern "C" void srchActor__13daNpcBlueNS_cFv();
extern "C" void srchHollyBall__13daNpcBlueNS_cFv();
extern "C" void srchTagYami__13daNpcBlueNS_cFv();
extern "C" void _search_Tag__13daNpcBlueNS_cFPvPv();
extern "C" void _search_HollyBall_Y__13daNpcBlueNS_cFPvPv();
extern "C" void _search_HollyBall_G__13daNpcBlueNS_cFPvPv();
extern "C" void main__13daNpcBlueNS_cFv();
extern "C" void setAttnPos__13daNpcBlueNS_cFv();
extern "C" void setMotionAnm__13daNpcBlueNS_cFif();
extern "C" void setMotion__13daNpcBlueNS_cFifi();
extern "C" bool drawDbgInfo__13daNpcBlueNS_cFv();
extern "C" void reset__13daNpcBlueNS_cFv();
extern "C" void playMotion__13daNpcBlueNS_cFv();
extern "C" void setAction__13daNpcBlueNS_cFM13daNpcBlueNS_cFPCvPvi_i();
extern "C" void setLookMode__13daNpcBlueNS_cFi();
extern "C" void lookat__13daNpcBlueNS_cFv();
extern "C" void step__13daNpcBlueNS_cFsi();
extern "C" void chkFindPlayer__13daNpcBlueNS_cFv();
extern "C" void wait__13daNpcBlueNS_cFi();
extern "C" void down__13daNpcBlueNS_cFi();
extern "C" void talk__13daNpcBlueNS_cFi();
extern "C" void demo__13daNpcBlueNS_cFi();
extern "C" void ChgPtclDisp__13daNpcBlueNS_cFv();
extern "C" void downSE__13daNpcBlueNS_cFv();
extern "C" void lightsowrdSE__13daNpcBlueNS_cFv();
extern "C" void appearSE__13daNpcBlueNS_cFv();
extern "C" void _Evt_ChgYami_Chibi__13daNpcBlueNS_cFi();
extern "C" void _Evt_ChgYami_Chibi_CutInit__13daNpcBlueNS_cFRCi();
extern "C" void _Evt_ChgYami_Chibi_CutMain__13daNpcBlueNS_cFRCi();
extern "C" void _Evt_ChgYami_Debu__13daNpcBlueNS_cFi();
extern "C" void _Evt_ChgYami_Debu_CutInit__13daNpcBlueNS_cFRCi();
extern "C" void _Evt_ChgYami_Debu_CutMain__13daNpcBlueNS_cFRCi();
extern "C" void _Evt_ChgYami_Noppo__13daNpcBlueNS_cFi();
extern "C" void _Evt_ChgYami_Noppo_CutInit__13daNpcBlueNS_cFRCi();
extern "C" void _Evt_ChgYami_Noppo_CutMain__13daNpcBlueNS_cFRCi();
extern "C" void _Evt_ChgYami_STNoppo__13daNpcBlueNS_cFi();
extern "C" void _Evt_ChgYami_STNoppo_CutInit__13daNpcBlueNS_cFRCi();
extern "C" void _Evt_ChgYami_STNoppo_CutMain__13daNpcBlueNS_cFRCi();
extern "C" static void daNpcBlueNS_Create__FPv();
extern "C" static void daNpcBlueNS_Delete__FPv();
extern "C" static void daNpcBlueNS_Execute__FPv();
extern "C" static void daNpcBlueNS_Draw__FPv();
extern "C" static bool daNpcBlueNS_IsDelete__FPv();
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
extern "C" bool ctrlBtk__8daNpcF_cFv();
extern "C" bool setExpressionAnm__8daNpcF_cFib();
extern "C" bool setExpressionBtp__8daNpcF_cFi();
extern "C" void setExpression__8daNpcF_cFif();
extern "C" void drawOtherMdls__8daNpcF_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_8096C790(void* _this, int*);
extern "C" void __sinit_d_a_npc_blue_ns_cpp();
extern "C" void adjustShapeAngle__13daNpcBlueNS_cFv();
extern "C" void __dt__19daNpcBlueNS_Param_cFv();
extern "C" static void func_8096C8FC();
extern "C" static void func_8096C904();
extern "C" u8 const m__19daNpcBlueNS_Param_c[112];
extern "C" extern char const* const d_a_npc_blue_ns__stringBase0;
extern "C" u8 mEvtSeqList__13daNpcBlueNS_c[84];

//
// External References:
//

extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcM_IsCreating__FUi();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
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
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void initialize__18daNpcF_ActorMngr_cFv();
extern "C" void entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcF_ActorMngr_cFv();
extern "C" void getActorP__18daNpcF_ActorMngr_cFv();
extern "C" void initialize__15daNpcF_Lookat_cFv();
extern "C" void setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz();
extern "C" void calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii();
extern "C" void setMtx__8daNpcF_cFv();
extern "C" void setMtx2__8daNpcF_cFv();
extern "C" void initialize__8daNpcF_cFv();
extern "C" void getTrnsfrmKeyAnmP__8daNpcF_cFPci();
extern "C" void setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii();
extern "C" void setEnvTevColor__8daNpcF_cFv();
extern "C" void setRoomNo__8daNpcF_cFv();
extern "C" void playAllAnm__8daNpcF_cFv();
extern "C" void playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void setLookatMtx__8daNpcF_cFiPif();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void chkActorInSight__8daNpcF_cFP10fopAc_ac_cf();
extern "C" void chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void turn__8daNpcF_cFsfi();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void daNpcF_getGroundAngle__FP13cBgS_PolyInfos();
extern "C" void daNpcF_chkDoBtnEqSpeak__FP10fopAc_ac_c();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_chaseF__FPfff();
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
extern "C" void __ptmf_scall();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
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

/* 8096CBA0-8096CBAC 000000 000C+00 3/3 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8096CBAC-8096CBC0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 8096CBC0-8096CC2C 000020 006C+00 1/1 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static int l_bckGetParamList[9][3] = {
    {0x0B, 0x02, 0x00}, {0x0C,
    0x02, 0x00}, {0x0D, 0x02,
    0x00}, {0x08, 0x00, 0x00},
    {0x09, 0x00, 0x00}, {0x0A,
    0x00, 0x00}, {0x05, 0x00,
    0x00}, {0x06, 0x00, 0x00},
    {0x07, 0x00, 0x00},
};

/* 8096CC2C-8096CC30 -00001 0004+00 4/5 0/0 0/0 .data            l_arcNames */
static char* l_arcNames[1] = {"Blue_NS"};

/* 8096CC30-8096CC4C -00001 001C+00 0/1 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
static char* l_evtNames[7] = {
    NULL,
    "CHG_YAMI_CHIBI",
    "CHG_YAMI_DEBU",
    "CHG_YAMI_NOPPO",
    "CHG_YAMI_NOPPO_STOPPER",
    "CHG_YAMI_NOPPO_STOPPER",
    "CHG_YAMI_NOPPO_STOPPER",
};
#pragma pop

/* 8096CC4C-8096CC50 -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static char* l_myName = "Blue_NS";
#pragma pop

#ifdef NONMATCHING
daNpcBlueNS_c::EventSeqFunc daNpcBlueNS_c::mEvtSeqList[7] = {
    &daNpcBlueNS_c::_Evt_ChgYami_Chibi,
    &daNpcBlueNS_c::_Evt_ChgYami_Debu,
    &daNpcBlueNS_c::_Evt_ChgYami_Noppo,
    &daNpcBlueNS_c::_Evt_ChgYami_STNoppo,
    &daNpcBlueNS_c::_Evt_ChgYami_STNoppo,
    &daNpcBlueNS_c::_Evt_ChgYami_STNoppo,
    NULL
};
#else
/* 8096CC50-8096CC5C -00001 000C+00 0/1 0/0 0/0 .data            @3890 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3890[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)_Evt_ChgYami_Chibi__13daNpcBlueNS_cFi,
};
#pragma pop

/* 8096CC5C-8096CC68 -00001 000C+00 0/1 0/0 0/0 .data            @3891 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3891[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)_Evt_ChgYami_Debu__13daNpcBlueNS_cFi,
};
#pragma pop

/* 8096CC68-8096CC74 -00001 000C+00 0/1 0/0 0/0 .data            @3892 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3892[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)_Evt_ChgYami_Noppo__13daNpcBlueNS_cFi,
};
#pragma pop

/* 8096CC74-8096CC80 -00001 000C+00 0/1 0/0 0/0 .data            @3893 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3893[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)_Evt_ChgYami_STNoppo__13daNpcBlueNS_cFi,
};
#pragma pop

/* 8096CC80-8096CC8C -00001 000C+00 0/1 0/0 0/0 .data            @3894 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3894[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)_Evt_ChgYami_STNoppo__13daNpcBlueNS_cFi,
};
#pragma pop

/* 8096CC8C-8096CC98 -00001 000C+00 0/1 0/0 0/0 .data            @3895 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3895[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)_Evt_ChgYami_STNoppo__13daNpcBlueNS_cFi,
};
#pragma pop

/* 8096CC98-8096CCEC 0000F8 0054+00 0/2 0/0 0/0 .data            mEvtSeqList__13daNpcBlueNS_c */
#pragma push
#pragma force_active on
SECTION_DATA u8 daNpcBlueNS_c::mEvtSeqList[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop
#endif

/* 8096CCEC-8096CCF8 -00001 000C+00 1/1 0/0 0/0 .data            @4401 */
SECTION_DATA static void* lit_4401[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpcBlueNS_cFi,
};

/* 8096CCF8-8096CD04 -00001 000C+00 1/1 0/0 0/0 .data            @4461 */
SECTION_DATA static void* lit_4461[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)down__13daNpcBlueNS_cFi,
};

/* 8096CD04-8096CD10 -00001 000C+00 1/1 0/0 0/0 .data            @4884 */
SECTION_DATA static void* lit_4884[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpcBlueNS_cFi,
};

/* 8096CD10-8096CD1C -00001 000C+00 0/1 0/0 0/0 .data            @5065 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5065[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpcBlueNS_cFi,
};
#pragma pop

/* 8096CD1C-8096CD28 -00001 000C+00 0/1 0/0 0/0 .data            @5070 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5070[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__13daNpcBlueNS_cFi,
};
#pragma pop

/* 8096CD28-8096CD34 -00001 000C+00 1/1 0/0 0/0 .data            @5100 */
SECTION_DATA static void* lit_5100[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpcBlueNS_cFi,
};

/* 8096CD34-8096CD40 -00001 000C+00 0/0 0/0 0/0 .data            @5122 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5122[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpcBlueNS_cFi,
};
#pragma pop

/* 8096CD40-8096CD4C -00001 000C+00 1/1 0/0 0/0 .data            @5146 */
SECTION_DATA static void* lit_5146[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpcBlueNS_cFi,
};

/* 8096CD4C-8096CD58 -00001 000C+00 0/1 0/0 0/0 .data            @5193 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5193[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpcBlueNS_cFi,
};
#pragma pop

/* 8096CD58-8096CD78 -00001 0020+00 1/0 0/0 0/0 .data            daNpcBlueNS_MethodTable */
static actor_method_class daNpcBlueNS_MethodTable = {
    (process_method_func)daNpcBlueNS_Create__FPv,
    (process_method_func)daNpcBlueNS_Delete__FPv,
    (process_method_func)daNpcBlueNS_Execute__FPv,
    (process_method_func)daNpcBlueNS_IsDelete__FPv,
    (process_method_func)daNpcBlueNS_Draw__FPv,
};

/* 8096CD78-8096CDA8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_BLUENS */
extern actor_process_profile_definition g_profile_NPC_BLUENS = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_BLUENS,          // mProcName
  &g_fpcLf_Method.mBase,    // sub_method
  sizeof(daNpcBlueNS_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  318,                      // mPriority
  &daNpcBlueNS_MethodTable, // sub_method
  0x08044180,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 8096CDA8-8096CDF0 000208 0048+00 2/2 0/0 0/0 .data            __vt__13daNpcBlueNS_c */
SECTION_DATA extern void* __vt__13daNpcBlueNS_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcBlueNS_cFv,
    (void*)setParam__13daNpcBlueNS_cFv,
    (void*)main__13daNpcBlueNS_cFv,
    (void*)ctrlBtk__8daNpcF_cFv,
    (void*)adjustShapeAngle__13daNpcBlueNS_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__13daNpcBlueNS_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__8daNpcF_cFib,
    (void*)setExpressionBtp__8daNpcF_cFi,
    (void*)setExpression__8daNpcF_cFif,
    (void*)setMotionAnm__13daNpcBlueNS_cFif,
    (void*)setMotion__13daNpcBlueNS_cFifi,
    (void*)drawDbgInfo__13daNpcBlueNS_cFv,
    (void*)drawOtherMdls__8daNpcF_cFv,
};

/* 8096CDF0-8096CDFC 000250 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8096CDFC-8096CE20 00025C 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8096C904,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8096C8FC,
};

/* 8096CE20-8096CE2C 000280 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8096CE2C-8096CE38 00028C 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8096CE38-8096CE44 000298 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8096CE44-8096CE50 0002A4 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 8096CE50-8096CE5C 0002B0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 8096CE5C-8096CE68 0002BC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8096CE68-8096CE74 0002C8 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 8096896C-80968AF0 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__13daNpcBlueNS_cFv */
// daNpcF_c constructor needs to not be inlined
#ifdef NONMATCHING
daNpcBlueNS_c::daNpcBlueNS_c() {

}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpcBlueNS_c::daNpcBlueNS_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/__ct__13daNpcBlueNS_cFv.s"
}
#pragma pop
#endif

/* 80968AF0-80968B38 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80968B38-80968B80 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80968B80-80968D44 000300 01C4+00 1/0 0/0 0/0 .text            __dt__13daNpcBlueNS_cFv */
// Matches with daNpcF_c
#ifdef NONMATCHING
daNpcBlueNS_c::~daNpcBlueNS_c() {
    for (int i = 0; i < 1; i++) {
        dComIfG_resDelete(&mPhase[i], l_arcNames[i]);
    }
    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpcBlueNS_c::~daNpcBlueNS_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/__dt__13daNpcBlueNS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8096C920-8096C964 000000 0044+00 8/8 0/0 0/0 .rodata          l_cyl_src */
const static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x8}, // mGObjAt
        {dCcD_SE_NONE, 0x8, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        0.0f, // mRadius
        0.0f // mHeight
    } // mCyl
};

/* 8096C964-8096C9D4 000044 0070+00 3/9 0/0 0/0 .rodata          m__19daNpcBlueNS_Param_c */
SECTION_RODATA daNpcBlueNS_Param_c::Data const daNpcBlueNS_Param_c::m = {
    {55.0f, -3.0f, 1.0f, 2000.0f, 255.0f, 300.0f, 35.0f, 105.0f, 0.0f, 0.0f, 10.0f, -10.0f, 30.0f,
     -10.0f, 45.0f, -45.0, 0.6f, 12.0f},
    {2, 6, 3, 6},
    {60.0f, 500.0f, 300.0f, -300.0f},
    {0x3C, 0, 0, 0},
    {0.0f, 300.0f},
};
COMPILER_STRIP_GATE(0x8096C964, &daNpcBlueNS_Param_c::m);

/* 8096C9D4-8096C9D8 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4265 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4265 = 3.0f;
COMPILER_STRIP_GATE(0x8096C9D4, &lit_4265);
#pragma pop

/* 8096C9D8-8096C9DC 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4266 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4266 = -120.0f;
COMPILER_STRIP_GATE(0x8096C9D8, &lit_4266);
#pragma pop

/* 8096C9DC-8096C9E0 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4267 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4267 = -10.0f;
COMPILER_STRIP_GATE(0x8096C9DC, &lit_4267);
#pragma pop

/* 8096C9E0-8096C9E4 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4268 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4268 = 120.0f;
COMPILER_STRIP_GATE(0x8096C9E0, &lit_4268);
#pragma pop

/* 8096C9E4-8096C9E8 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4269 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4269 = 220.0f;
COMPILER_STRIP_GATE(0x8096C9E4, &lit_4269);
#pragma pop

/* 80968D44-80968FE4 0004C4 02A0+00 1/1 0/0 0/0 .text            Create__13daNpcBlueNS_cFv */
// Matches with literals, daNpcF_c and daNpcF_c ctor hack
#ifdef NONMATCHING
int daNpcBlueNS_c::Create() {
    fopAcM_SetupActor(this, daNpcBlueNS_c);
    field_0xe11 = getType();
    field_0xde4 = getFlowNodeNo();
    int rv;
    for (int i = 0; i < 1; i++) {
        rv = dComIfG_resLoad(&mPhase[i], l_arcNames[i]);
        if (rv != cPhs_COMPLEATE_e) {
            return rv;
        }
    }
    if (rv == cPhs_COMPLEATE_e) {
        if (fopAcM_entrySolidHeap(this, createHeapCallBack, 0x1f20) == 0) {
            return cPhs_ERROR_e;
        } 
        if (isDelete()) {
            return cPhs_ERROR_e;
        }
            
        mTwilight = dKy_darkworld_check();
        mpMorf->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeFar(this, 3.0f);
        fopAcM_setCullSizeBox(this, -120.0f, -10.0f, -120.0f, 120.0f, 220.0f, 120.0f);
        mCreature.init(&current.pos, &eyePos, 3, 1);
        mAcchCir.SetWall(daNpcBlueNS_Param_c::m.field_0x00[7], daNpcBlueNS_Param_c::m.field_0x00[6]);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                    fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mAcch.CrrPos(dComIfG_Bgsp());
        mCcStts.Init(daNpcBlueNS_Param_c::m.field_0x00[4], 0, this);
        mCyl.Set(l_cyl_src);
        mCyl.SetStts(&mCcStts);
        mCyl.SetH(daNpcBlueNS_Param_c::m.field_0x00[5]);
        mCyl.SetR(daNpcBlueNS_Param_c::m.field_0x00[7]);
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        field_0xe10 = 1;
        field_0xe12 = 0;
        field_0xdf0 = NULL;
        field_0xdf4 = NULL;
        field_0xdf8 = NULL;
        mYamiActor = NULL;
        field_0xe00 = 0xffffffff;
        setEnvTevColor();
        setRoomNo();
        reset();
        Execute();
    }
    return rv;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::Create() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/Create__13daNpcBlueNS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8096C9E8-8096C9EC 0000C8 0004+00 4/6 0/0 0/0 .rodata          @4306 */
SECTION_RODATA static f32 const lit_4306 = 1.0f;
COMPILER_STRIP_GATE(0x8096C9E8, &lit_4306);

/* 8096C9EC-8096C9F0 0000CC 0004+00 8/8 0/0 0/0 .rodata          @4307 */
SECTION_RODATA static f32 const lit_4307 = -1.0f;
COMPILER_STRIP_GATE(0x8096C9EC, &lit_4307);

/* 80968FE4-80969138 000764 0154+00 1/1 0/0 0/0 .text            CreateHeap__13daNpcBlueNS_cFv */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
int daNpcBlueNS_c::CreateHeap() {
    J3DModelData* mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_arcNames[0], 16);
    JUT_ASSERT(406, 0 != mdlData_p);
    mpMorf = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mCreature, 0x80000,
                                  0x11000084);
    if (mpMorf != NULL && mpMorf->getModel() == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }
    if (mpMorf == NULL) {
        return 0;
    }
    J3DModel* pModel = mpMorf->getModel();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    pModel->setUserArea((u32)this);
    setMotion(0, -1.0f, 0);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/CreateHeap__13daNpcBlueNS_cFv.s"
}
#pragma pop
#endif

/* 80969138-809691A8 0008B8 0070+00 1/1 0/0 0/0 .text            isDelete__13daNpcBlueNS_cFv */
int daNpcBlueNS_c::isDelete() {
    int rv = 0;
    if (daNpcT_chkEvtBit(0x23a) || fopAcM_isSwitch(this, getSwitchBitNo())) {
        rv = 1;
    }
    return rv;
}

/* 809691A8-809691DC 000928 0034+00 1/1 0/0 0/0 .text            Delete__13daNpcBlueNS_cFv */
// Matches with daNpcF_c
#ifdef NONMATCHING
int daNpcBlueNS_c::Delete() {
    fopAcM_GetID(this);
    this->~daNpcBlueNS_c();
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::Delete() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/Delete__13daNpcBlueNS_cFv.s"
}
#pragma pop
#endif

/* 809691DC-80969200 00095C 0024+00 2/2 0/0 0/0 .text            Execute__13daNpcBlueNS_cFv */
int daNpcBlueNS_c::Execute() {
    _Execute();
    return 1;
}

/* ############################################################################################## */
/* 8096C9F0-8096C9F4 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4392 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4392 = -1000000000.0f;
COMPILER_STRIP_GATE(0x8096C9F0, &lit_4392);
#pragma pop

/* 8096C9F4-8096C9F8 0000D4 0004+00 6/11 0/0 0/0 .rodata          @4393 */
SECTION_RODATA static u8 const lit_4393[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8096C9F4, &lit_4393);

/* 80969200-80969468 000980 0268+00 1/1 0/0 0/0 .text            _Execute__13daNpcBlueNS_cFv */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
void daNpcBlueNS_c::_Execute() {
    setParam();
    if (main()) {
        fopAcM_posMoveF(this, mCcStts.GetCCMoveP());
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
    }
    if (mGroundH != -1e9f) {
        mGroundAngle = daNpcF_getGroundAngle(&mGndChk, mCurAngle.y);
        setEnvTevColor();
        setRoomNo();
    }
    playAllAnm();
    adjustShapeAngle();
    setAttnPos();
    cLib_chaseF(&mExpressionMorf, 0.0f, 1.0f);
    setCollisions();
    if (mTwilight) {
        attention_info.flags |= 0x400000;
        if (daNpcF_chkDoBtnEqSpeak(this)) {
            dComIfGp_setDoStatusForce(0x3b, 0);
        }
    }
    mOldAngle = mCurAngle;
    mCutType = 0;
    mOrderSpeakEvt = 0;
    mOrderNewEvt = 0;
    field_0x9eb = 0;
    field_0x9ef = 0;
    field_0x9f3 = 0;
    for (int i = 0; i < 5; i++) {
        if ((mAttnChangeTimer == 0 || mAttnIdx != i) &&
             mAttnActorTimer[i] != 0) {
            if (cLib_calcTimer(&mAttnActorTimer[i]) == 0) {
                mAttnActor[i].remove();
            }
        }
    }
    if (mDamageTimer != 0) {
        cLib_calcTimer(&mDamageTimer);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcBlueNS_c::_Execute() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/_Execute__13daNpcBlueNS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8096C9F8-8096CA04 0000D8 000C+00 1/1 0/0 0/0 .rodata          sCallEvtName$4400 */
SECTION_RODATA static u16 const sCallEvtName[6] = {
    1, 2, 3, 4, 5, 6,
};
COMPILER_STRIP_GATE(0x8096C9F8, &sCallEvtName);

/* 80969468-80969504 000BE8 009C+00 1/1 0/0 0/0 .text callEvt_changeYami__13daNpcBlueNS_cFv */
#ifdef NONMATCHING
void daNpcBlueNS_c::callEvt_changeYami() {
    mCyl.OffCoSetBit();
    fopAcM_onSwitch(this, getSwitchBitNo());
    mOrderEvtNo = sCallEvtName[field_0xe11];
    OS_REPORT("-------mOrderEvtNo = %d\n", mOrderEvtNo);
    eventInfo.setIdx(1);
    setAction(&daNpcBlueNS_c::wait);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcBlueNS_c::callEvt_changeYami() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/callEvt_changeYami__13daNpcBlueNS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8096CA04-8096CA0C 0000E4 0006+02 1/1 0/0 0/0 .rodata          sNameYami$4420 */
SECTION_RODATA static s16 const sNameYami[3] = {
    0x023F,
    0x023D,
    0x023E,
};
COMPILER_STRIP_GATE(0x8096CA04, &sNameYami);

/* 80969504-809695F0 000C84 00EC+00 5/5 0/0 0/0 .text            create_Yamijin__13daNpcBlueNS_cFi
 */
// Matches with literals
#ifdef NONMATCHING
int daNpcBlueNS_c::create_Yamijin(int param_1) {
    int uVar5 = field_0xe11 / 3;
    int uVar4 = field_0xe11 % 3;
    if (uVar5 != 0 && uVar4 != 2) {
        uVar5 = 0;
        uVar4 = 2;
    }
    int uVar1 = getSwitchBitNo() << 16;
    u32 parameter;
    if (param_1 != 0) {
        parameter = uVar5 | uVar1;
    } else {
        parameter = uVar5 | uVar1 | 0x10000000;
    }
    cXyz acStack_30(current.pos);
    csXyz local_44(current.angle);
    local_44.x = getFlowNodeNo();
    cXyz cStack_3c(1.0f, 1.0f, 1.0f);
    return fopAcM_create(
        sNameYami[uVar4],
        parameter, &acStack_30, fopAcM_GetRoomNo(this), &local_44, &cStack_3c, 0xffffffff);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::create_Yamijin(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/create_Yamijin__13daNpcBlueNS_cFi.s"
}
#pragma pop
#endif

/* 809695F0-80969698 000D70 00A8+00 1/1 0/0 0/0 .text            col_check__13daNpcBlueNS_cFv */
// Matches with literals
#ifdef NONMATCHING
int daNpcBlueNS_c::col_check() {
  if (mCyl.ChkTgHit()) {
    cCcD_Obj* tgHitObj = mCyl.GetTgHitObj();
    if (tgHitObj != NULL && tgHitObj->ChkAtType(AT_TYPE_NORMAL_SWORD)) {
      if (mCyl.GetTgHitGObj()->GetAtMtrl() == dCcD_MTRL_LIGHT) {
         OS_REPORT("---------------HIT LIGHTNING SWORD!!\n");
         lightsowrdSE();
         return 1;
      }
    }
    setAction(&daNpcBlueNS_c::down);
  }
  return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::col_check() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/col_check__13daNpcBlueNS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8096CA0C-8096CA10 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4524 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4524 = 248.75623f;
COMPILER_STRIP_GATE(0x8096CA0C, &lit_4524);
#pragma pop

/* 8096CA10-8096CA14 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4525 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4525 = 800.0f;
COMPILER_STRIP_GATE(0x8096CA10, &lit_4525);
#pragma pop

/* 8096CA14-8096CA18 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4526 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4526 = 5368.2173f;
COMPILER_STRIP_GATE(0x8096CA14, &lit_4526);
#pragma pop

/* 8096CA18-8096CA20 0000F8 0008+00 0/1 0/0 0/0 .rodata          @4527 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4527[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096CA18, &lit_4527);
#pragma pop

/* 8096CA20-8096CA28 000100 0008+00 0/1 0/0 0/0 .rodata          @4528 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4528[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096CA20, &lit_4528);
#pragma pop

/* 8096CA28-8096CA30 000108 0008+00 0/1 0/0 0/0 .rodata          @4529 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4529[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096CA28, &lit_4529);
#pragma pop

/* 8096CA30-8096CA34 000110 0004+00 0/1 0/0 0/0 .rodata          @4530 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4530 = 740.0f;
COMPILER_STRIP_GATE(0x8096CA30, &lit_4530);
#pragma pop

/* 8096CA34-8096CA38 000114 0004+00 0/1 0/0 0/0 .rodata          @4531 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4531 = 1000.0f;
COMPILER_STRIP_GATE(0x8096CA34, &lit_4531);
#pragma pop

/* 80969698-80969870 000E18 01D8+00 1/1 0/0 0/0 .text
 * holyball_check_main__13daNpcBlueNS_cFP10fopAc_ac_c           */
// Matches with literals
#ifdef NONMATCHING
int daNpcBlueNS_c::holyball_check_main(fopAc_ac_c* param_1) {
    if (param_1 == NULL) {
        return 0;
    }
    if (!fopAcM_checkCarryNow(param_1)) {
        return 0;
    }

    f32 dVar9;
    f32 dVar8;
    switch(field_0xe11) {
    case 5:
        cXyz cStack_4c(248.75623f, 800.0f, 5368.2173f);
        cXyz cStack_58 = *fopAcM_GetPosition_p(param_1) - cStack_4c;
        dVar8 = cStack_58.absXZ();
        dVar9 = 740.0f;
        break;
    case 3:
    case 4:
        dVar8 = fopAcM_searchActorDistanceXZ(this, param_1);
        dVar9 = 1000.0f;
        break;
    default:
        dVar8 = fopAcM_searchActorDistanceXZ(this, param_1);
        dVar9 = daNpcBlueNS_Param_c::m.field_0x68[1];
        break;
    }
    return dVar8 <= dVar9;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::holyball_check_main(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/holyball_check_main__13daNpcBlueNS_cFP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8096CA38-8096CA3C 000118 0004+00 0/1 0/0 0/0 .rodata          @4570 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4570 = 20.0f;
COMPILER_STRIP_GATE(0x8096CA38, &lit_4570);
#pragma pop

/* 80969870-809699D0 000FF0 0160+00 1/1 0/0 0/0 .text            Draw__13daNpcBlueNS_cFv */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
int daNpcBlueNS_c::Draw() {
    if (field_0xe10 == 0) {
        return 1;
    }
    J3DModel* morfModel = mpMorf->getModel();
    morfModel->getModelData();
    tevStr.mFogColor.r = 0;
    tevStr.mFogColor.g = 0;
    tevStr.mFogColor.b = 0;
    tevStr.mFogColor.a = 0;
    if (mTwilight) {
        g_env_light.settingTevStruct(2, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(morfModel, &tevStr);
        dComIfGd_setListDark();
        mpMorf->entryDL();
        dComIfGd_setList();
    } else {
        g_env_light.settingTevStruct(2, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(morfModel, &tevStr);
        mpMorf->entryDL();
    }
    dDlst_shadowControl_c::getSimpleTex();
    mShadowKey = dComIfGd_setShadow(
        mShadowKey, 1, morfModel, &current.pos,
        daNpcBlueNS_Param_c::m.field_0x00[3], 20.0f,
        current.pos.y, mGroundH,
        mGndChk, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::Draw() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/Draw__13daNpcBlueNS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8096CA3C-8096CA48 00011C 000C+00 1/1 0/0 0/0 .rodata          @4574 */
SECTION_RODATA static u8 const lit_4574[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x8096CA3C, &lit_4574);

/* 809699D0-80969B68 001150 0198+00 1/1 0/0 0/0 .text
 * ctrlJoint__13daNpcBlueNS_cFP8J3DJointP8J3DModel              */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
int daNpcBlueNS_c::ctrlJoint(J3DJoint* param_1, J3DModel* param_2) {
    int jointNo = param_1->getJntNo();
    int lit_4574[3] = {1,3,4};

    if (jointNo == 0) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }
    mDoMtx_stack_c::copy(param_2->getAnmMtx(jointNo));
    switch(jointNo) {
    case 1:
    case 3:
    case 4:
        setLookatMtx(jointNo, lit_4574, daNpcBlueNS_Param_c::m.field_0x00[16]);
        break;
    }
    param_2->setAnmMtx(jointNo, mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/ctrlJoint__13daNpcBlueNS_cFP8J3DJointP8J3DModel.s"
}
#pragma pop
#endif

/* 80969B68-80969B88 0012E8 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpcBlueNS_cFP10fopAc_ac_c            */
int daNpcBlueNS_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpcBlueNS_c*>(i_this)->CreateHeap();
}

/* 80969B88-80969BD4 001308 004C+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpcBlueNS_cFP8J3DJointi               */
int daNpcBlueNS_c::ctrlJointCallBack(J3DJoint* param_1, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpcBlueNS_c* i_this = (daNpcBlueNS_c*)model->getUserArea();
        if (i_this != NULL) {
            i_this->ctrlJoint(param_1, model);
        }
    }
    return 1;
}

/* 80969BD4-80969C48 001354 0074+00 1/0 0/0 0/0 .text            setParam__13daNpcBlueNS_cFv */
// Matches with daNpcF_c
#ifdef NONMATCHING
void daNpcBlueNS_c::setParam() {
    srchActor();
    attention_info.distances[0] = getDistTableIdx(
        daNpcBlueNS_Param_c::m.field_0x48[2],
        daNpcBlueNS_Param_c::m.field_0x48[3]);
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = getDistTableIdx(
        daNpcBlueNS_Param_c::m.field_0x48[0],
        daNpcBlueNS_Param_c::m.field_0x48[1]);
    attention_info.flags = 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcBlueNS_c::setParam() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/setParam__13daNpcBlueNS_cFv.s"
}
#pragma pop
#endif

/* 80969C48-80969C90 0013C8 0048+00 1/1 0/0 0/0 .text            srchActor__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::srchActor() {
    srchHollyBall();
    switch (field_0xe11) {
    case 4:
        break;
    case 5:
        srchTagYami();
        break;
    }
}

/* 80969C90-80969CF8 001410 0068+00 1/1 0/0 0/0 .text            srchHollyBall__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::srchHollyBall() {
    if (field_0xdf0 == NULL) {
        field_0xdf0 = (fopAc_ac_c*)fpcM_Search(&daNpcBlueNS_c::_search_HollyBall_Y, this);
    }
    if (field_0xdf4 == NULL) {
        field_0xdf4 = (fopAc_ac_c*)fpcM_Search(&daNpcBlueNS_c::_search_HollyBall_G, this);
    }
}

/* 80969CF8-80969D60 001478 0068+00 1/1 0/0 0/0 .text            srchTagYami__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::srchTagYami() {
    if (field_0xdf8 == NULL) {
        field_0xdf8 = (daTagYami_c*)fpcM_Search(_search_Tag, this);
        if (field_0xdf8 != NULL) {
            field_0xdf8->off_CoHit();
        }
    }
}

/* 80969D60-80969DE4 0014E0 0084+00 1/1 0/0 0/0 .text            _search_Tag__13daNpcBlueNS_cFPvPv
 */
void* daNpcBlueNS_c::_search_Tag(void* param_1, void* param_2) {
    if (!fopAcM_IsActor(param_1)) {
        return NULL;
    }
    if (fopAcM_GetName(param_1) == PROC_TAG_YAMI &&
        static_cast<daNpcBlueNS_c*>(param_2)->_chk_TagPrm((fopAc_ac_c*)param_1))
    {
        return param_1;
    }

    return NULL;
}

/* 80969DE4-80969E9C 001564 00B8+00 1/1 0/0 0/0 .text _search_HollyBall_Y__13daNpcBlueNS_cFPvPv */
void* daNpcBlueNS_c::_search_HollyBall_Y(void* param_1, void* param_2) {
    if (!fopAcM_IsActor(param_1)) {
        return NULL;
    }
    if (fpcM_IsCreating(fopAcM_GetID(param_1))) {
        return NULL;
    }
    if (fopAcM_GetName(param_1) != PROC_Obj_Carry) {
        return NULL;
    }
    if (!static_cast<daObjCarry_c*>(param_1)->prm_chk_type_lightball()) {
        return NULL;
    }
    if (static_cast<daObjCarry_c*>(param_1)->getType() != daObjCarry_c::TYPE_BALL_S) {
        return NULL;
    }
    return param_1;
}

/* 80969E9C-80969F54 00161C 00B8+00 1/1 0/0 0/0 .text _search_HollyBall_G__13daNpcBlueNS_cFPvPv */
void* daNpcBlueNS_c::_search_HollyBall_G(void* param_1, void* param_2) {
    if (!fopAcM_IsActor(param_1)) {
        return NULL;
    }
    if (fpcM_IsCreating(fopAcM_GetID(param_1))) {
        return NULL;
    }
    if (fopAcM_GetName(param_1) != PROC_Obj_Carry) {
        return NULL;
    }
    if (!static_cast<daObjCarry_c*>(param_1)->prm_chk_type_lightball()) {
        return NULL;
    }
    if (static_cast<daObjCarry_c*>(param_1)->getType() != daObjCarry_c::TYPE_BALL_S_2) {
        return NULL;
    }
    return param_1;
}

/* 80969F54-8096A090 0016D4 013C+00 1/0 0/0 0/0 .text            main__13daNpcBlueNS_cFv */
BOOL daNpcBlueNS_c::main() {
    if (fopAcM_isSwitch(this, 0x58)) {
        field_0xe00 = create_Yamijin(1);
        fopAcM_onSwitch(this, getSwitchBitNo());
        fopAcM_delete(this);
    } else {
        if (field_0xdc4) {
            (this->*field_0xdc4)(0);
        }
        if (col_check()) {
            if (field_0xe12 == 0) {
                callEvt_changeYami();
                field_0xe12 = 1;
            }
        } else {
            if (field_0xe12 == 0 && holyball_check()) {
                callEvt_changeYami();
                field_0xe12 = 1;
            }
        }
        playMotion();
    }
    return 0;
}

/* ############################################################################################## */
/* 8096CA48-8096CA4C 000128 0004+00 0/1 0/0 0/0 .rodata          @4846 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4846 = 10.0f;
COMPILER_STRIP_GATE(0x8096CA48, &lit_4846);
#pragma pop

/* 8096CA4C-8096CA50 00012C 0004+00 1/2 0/0 0/0 .rodata          @4847 */
SECTION_RODATA static f32 const lit_4847 = 15.0f;
COMPILER_STRIP_GATE(0x8096CA4C, &lit_4847);

/* 8096A090-8096A238 001810 01A8+00 1/0 0/0 0/0 .text            setAttnPos__13daNpcBlueNS_cFv */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
void daNpcBlueNS_c::setAttnPos() {
    if (mLookMode == 1) {
        for (int i = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }
    daNpcF_c::setMtx();
    lookat();
    cXyz local_1c(10.0f, 15.0f, 0.0f);
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&local_1c, &eyePos);
    local_1c.x = 0.0f;
    mDoMtx_stack_c::multVec(&local_1c, &local_1c);
    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &local_1c);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &local_1c);
    attention_info.position.set(mHeadPos.x,
                mHeadPos.y + daNpcBlueNS_Param_c::m.field_0x00[0],
                mHeadPos.z);
    cXyz cStack_28;
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
    mDoMtx_stack_c::multVecZero(&cStack_28);
    cStack_28.y = current.pos.y;
    mCyl.SetC(cStack_28);
    dComIfG_Ccsp()->Set(&mCyl);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcBlueNS_c::setAttnPos() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/setAttnPos__13daNpcBlueNS_cFv.s"
}
#pragma pop
#endif

/* 8096A238-8096A308 0019B8 00D0+00 1/0 0/0 0/0 .text            setMotionAnm__13daNpcBlueNS_cFif */
// Matches with daNpcF_c
#ifdef NONMATCHING
void daNpcBlueNS_c::setMotionAnm(int param_1, f32 param_2) {
    J3DAnmTransformKey* transfrm = getTrnsfrmKeyAnmP(
        l_arcNames[l_bckGetParamList[param_1][2]],
        l_bckGetParamList[param_1][0]);
    int iVar2 = l_bckGetParamList[param_1][1];
    mAnmFlags &= ~(ANM_PAUSE_MORF | ANM_PLAY_MORF);
    if (transfrm != NULL &&
        setMcaMorfAnm(transfrm, 1.0f, param_2, iVar2, 0, -1))
    {
        mAnmFlags |= ANM_PAUSE_MORF | ANM_PLAY_MORF;
        mMotionLoops = 0;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcBlueNS_c::setMotionAnm(int param_0, f32 param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/setMotionAnm__13daNpcBlueNS_cFif.s"
}
#pragma pop
#endif

/* 8096A308-8096A350 001A88 0048+00 1/0 0/0 0/0 .text            setMotion__13daNpcBlueNS_cFifi */
// Matches with daNpcF_c
#ifdef NONMATCHING
void daNpcBlueNS_c::setMotion(int motion, f32 motionMorfOverride, int param_3) {
    s16 hMotion = motion;
    if ((param_3 != 0 || mMotion != hMotion) && motion >= 0 && motion < 9) {
        mMotion = hMotion;
        mMotionMorfOverride = motionMorfOverride;
        mMotionPrevPhase = 0xffff;
        mMotionPhase = 0;
        field_0xdea = 0;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcBlueNS_c::setMotion(int param_0, f32 param_1, int param_2) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/setMotion__13daNpcBlueNS_cFifi.s"
}
#pragma pop
#endif

/* 8096A350-8096A358 001AD0 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpcBlueNS_cFv */
BOOL daNpcBlueNS_c::drawDbgInfo() {
    return FALSE;
}

/* ############################################################################################## */
/* 8096CA50-8096CA5C 000130 000C+00 0/1 0/0 0/0 .rodata          sWaitAnm$4874 */
#pragma push
#pragma force_active on
SECTION_RODATA static int const sWaitAnm[3] = {
    1, 0, 2,
};
COMPILER_STRIP_GATE(0x8096CA50, &sWaitAnm);
#pragma pop

/* 8096CA5C-8096CA68 00013C 000C+00 0/1 0/0 0/0 .rodata          sDamageAnm$4875 */
#pragma push
#pragma force_active on
SECTION_RODATA static int const sDamageAnm[3] = {
    4, 3, 5,
};
COMPILER_STRIP_GATE(0x8096CA5C, &sDamageAnm);
#pragma pop

/* 8096CA68-8096CA74 000148 000C+00 0/1 0/0 0/0 .rodata          sAppearAnm$4876 */
#pragma push
#pragma force_active on
SECTION_RODATA static int const sAppearAnm[3] = {
    7, 6, 8,
};
COMPILER_STRIP_GATE(0x8096CA68, &sAppearAnm);
#pragma pop

/* 8096A358-8096A518 001AD8 01C0+00 1/1 0/0 0/0 .text            reset__13daNpcBlueNS_cFv */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
void daNpcBlueNS_c::reset() {
    int uVar2 = field_0xe11 % 3;
    if (field_0xe11 / 3 != 0) {
        uVar2 = 2;
    }
    field_0xe04 = sWaitAnm[uVar2];
    field_0xe08 = sDamageAnm[uVar2];
    field_0xe0c = sAppearAnm[uVar2];
    initialize();
    mLookAt.initialize();
    for (int i = 0; i < 1; i++) {
        mActorMngrs[i].initialize();
    }
    field_0xddc = 0;
    field_0xde0 = 0;
    field_0xdc4 = 0;
    mLookMode = -1;
    field_0xdc0 = 0;
    current.pos.set(home.pos);
    old.pos.set(current.pos);
    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;
    speedF = 0;
    speed.setall(0.0f);
    field_0xdd8 = -1;
    mOrderEvtNo = 0;
    setAction(&daNpcBlueNS_c::wait);
    mMotionMorfOverride = 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcBlueNS_c::reset() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/reset__13daNpcBlueNS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8096CA74-8096CA80 000154 000C+00 0/1 0/0 0/0 .rodata          @4908 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4908[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096CA74, &lit_4908);
#pragma pop

/* 8096CA80-8096CA84 000160 0004+00 0/1 0/0 0/0 .rodata          @4909 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4909[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8096CA80, &lit_4909);
#pragma pop

/* 8096CA84-8096CA90 000164 000C+00 0/1 0/0 0/0 .rodata          @4910 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4910[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096CA84, &lit_4910);
#pragma pop

/* 8096CA90-8096CA94 000170 0004+00 0/1 0/0 0/0 .rodata          @4911 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4911[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8096CA90, &lit_4911);
#pragma pop

/* 8096CA94-8096CAA0 000174 000C+00 0/1 0/0 0/0 .rodata          @4912 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4912[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096CA94, &lit_4912);
#pragma pop

/* 8096CAA0-8096CAA4 000180 0004+00 0/1 0/0 0/0 .rodata          @4913 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4913[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8096CAA0, &lit_4913);
#pragma pop

/* 8096CAA4-8096CAB0 000184 000C+00 0/1 0/0 0/0 .rodata          @4914 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4914[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096CAA4, &lit_4914);
#pragma pop

/* 8096CAB0-8096CAB4 000190 0004+00 0/1 0/0 0/0 .rodata          @4915 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4915[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8096CAB0, &lit_4915);
#pragma pop

/* 8096CAB4-8096CAC0 000194 000C+00 0/1 0/0 0/0 .rodata          @4916 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4916[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096CAB4, &lit_4916);
#pragma pop

/* 8096CAC0-8096CAC4 0001A0 0004+00 0/1 0/0 0/0 .rodata          @4917 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4917[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8096CAC0, &lit_4917);
#pragma pop

/* 8096CAC4-8096CAD0 0001A4 000C+00 0/1 0/0 0/0 .rodata          @4918 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4918[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096CAC4, &lit_4918);
#pragma pop

/* 8096CAD0-8096CAD4 0001B0 0004+00 0/1 0/0 0/0 .rodata          @4919 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4919[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8096CAD0, &lit_4919);
#pragma pop

/* 8096CAD4-8096CAE0 0001B4 000C+00 0/1 0/0 0/0 .rodata          @4920 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4920[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096CAD4, &lit_4920);
#pragma pop

/* 8096CAE0-8096CAE4 0001C0 0004+00 0/1 0/0 0/0 .rodata          @4921 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4921[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8096CAE0, &lit_4921);
#pragma pop

/* 8096CAE4-8096CAF0 0001C4 000C+00 0/1 0/0 0/0 .rodata          @4922 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4922[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096CAE4, &lit_4922);
#pragma pop

/* 8096CAF0-8096CAF4 0001D0 0004+00 0/1 0/0 0/0 .rodata          @4923 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4923[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8096CAF0, &lit_4923);
#pragma pop

/* 8096CAF4-8096CB00 0001D4 000C+00 0/1 0/0 0/0 .rodata          @4924 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4924[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096CAF4, &lit_4924);
#pragma pop

/* 8096CB00-8096CB04 0001E0 0004+00 0/1 0/0 0/0 .rodata          @4925 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4925[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8096CB00, &lit_4925);
#pragma pop

/* 8096A518-8096A750 001C98 0238+00 1/1 0/0 0/0 .text            playMotion__13daNpcBlueNS_cFv */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
void daNpcBlueNS_c::playMotion() {
    daNpcF_anmPlayData dat0 = {0, 0.0f, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1a = {1, 0.0f, 0};
    daNpcF_anmPlayData* pDat1[1] = {&dat1a};
    daNpcF_anmPlayData dat2a = {2, 0.0f, 0};
    daNpcF_anmPlayData* pDat2[1] = {&dat2a};
    daNpcF_anmPlayData dat3a = {3, 0.0f, 0};
    daNpcF_anmPlayData* pDat3[1] = {&dat3a};
    daNpcF_anmPlayData dat4a = {4, 0.0f, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4a};
    daNpcF_anmPlayData dat5a = {5, 0.0f, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5a};
    daNpcF_anmPlayData dat6a = {6, daNpcBlueNS_Param_c::m.field_0x00[17], 0};
    daNpcF_anmPlayData* pDat6[1] = {&dat6a};
    daNpcF_anmPlayData dat7 = {7, daNpcBlueNS_Param_c::m.field_0x00[17], 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};
    daNpcF_anmPlayData dat8 = {8, daNpcBlueNS_Param_c::m.field_0x00[17], 0};
    daNpcF_anmPlayData* pDat8[1] = {&dat8};
    daNpcF_anmPlayData** ppDat[9] = {
        pDat0, pDat1, pDat2, pDat3, pDat4, pDat5, pDat6, pDat7, pDat8,
    };
    if (mMotion >= 0 && mMotion < 9) {
        field_0xdea = mMotionPhase;
        playMotionAnm(ppDat);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcBlueNS_c::playMotion() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/playMotion__13daNpcBlueNS_cFv.s"
}
#pragma pop
#endif

/* 8096A750-8096A7F8 001ED0 00A8+00 7/7 0/0 0/0 .text
 * setAction__13daNpcBlueNS_cFM13daNpcBlueNS_cFPCvPvi_i         */
int daNpcBlueNS_c::setAction(ActionFunc param_1) {
    field_0xdc0 = 3;
    if (field_0xdc4) {
        (this->*field_0xdc4)(0);
    }
    field_0xdc0 = 0;
    field_0xdc4 = param_1;
    if (field_0xdc4) {
        (this->*field_0xdc4)(0);
    }
    return 1;
}

/* 8096A7F8-8096A81C 001F78 0024+00 1/1 0/0 0/0 .text            setLookMode__13daNpcBlueNS_cFi */
void daNpcBlueNS_c::setLookMode(int lookMode) {
    if (lookMode >= 0 && lookMode < 4 && lookMode != mLookMode) {
        mLookMode = lookMode;
    }
}

/* ############################################################################################## */
/* 8096CB04-8096CB28 0001E4 0024+00 0/0 0/0 0/0 .rodata          @4926 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4926[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096CB04, &lit_4926);
#pragma pop

/* 8096CB28-8096CB34 000208 000C+00 0/1 0/0 0/0 .rodata          @4956 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4956[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096CB28, &lit_4956);
#pragma pop

/* 8096CB34-8096CB38 000214 0004+00 0/1 0/0 0/0 .rodata          @5004 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5004 = -80.0f;
COMPILER_STRIP_GATE(0x8096CB34, &lit_5004);
#pragma pop

/* 8096CB38-8096CB3C 000218 0004+00 0/1 0/0 0/0 .rodata          @5005 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5005 = 80.0f;
COMPILER_STRIP_GATE(0x8096CB38, &lit_5005);
#pragma pop

/* 8096CB3C-8096CB40 00021C 0004+00 0/1 0/0 0/0 .rodata          @5006 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5006 = 40.0f;
COMPILER_STRIP_GATE(0x8096CB3C, &lit_5006);
#pragma pop

/* 8096A81C-8096A9FC 001F9C 01E0+00 1/1 0/0 0/0 .text            lookat__13daNpcBlueNS_cFv */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
void daNpcBlueNS_c::lookat() {
    daPy_py_c* player = NULL;
    J3DModel* morfModel = mpMorf->getModel();
    int iVar9 = 0;
    f32 dVar15 = daNpcBlueNS_Param_c::m.field_0x00[9];
    f32 dVar14 = daNpcBlueNS_Param_c::m.field_0x00[8];
    f32 dVar13 = daNpcBlueNS_Param_c::m.field_0x00[11];
    f32 dVar12 = daNpcBlueNS_Param_c::m.field_0x00[10];
    f32 dVar7 = daNpcBlueNS_Param_c::m.field_0x00[13];
    f32 dVar8 = daNpcBlueNS_Param_c::m.field_0x00[12];
    f32 dVar9 = daNpcBlueNS_Param_c::m.field_0x00[15];
    f32 dVar10 = daNpcBlueNS_Param_c::m.field_0x00[14];
    s16 angleDiff = mCurAngle.y - mOldAngle.y;
    cXyz cStack_b8;
    cXyz cStack_c4;
    cXyz cStack_d0;
    cStack_d0 = mLookatPos[0];
    cStack_c4 = mLookatPos[1];
    cStack_b8 = mLookatPos[2];
    csXyz* local_dc[3] = {&mLookatAngle[0], &mLookatAngle[1], &mLookatAngle[2]};
    cXyz cStack_e8;

    switch (mLookMode) {
    case LOOK_AT_0:
        break;
    case LOOK_AT_1:
        iVar9 = 1;
        break;
    case LOOK_AT_2:
    case LOOK_AT_3:
        player = daPy_getPlayerActorClass();
        if (mLookMode == LOOK_AT_3) {
            dVar9 = -80.0f;
            dVar10 = 80.0f;
        }
        break;
    }

    if (player != NULL) {
        mLookPos = player->attention_info.position;
        if (mLookMode != LOOK_AT_2 && mLookMode != LOOK_AT_3) {
            mLookPos.y -= 40.0f;
        }
        mLookAt.setAttnPos(&mLookPos);
    } else {
        mLookAt.setAttnPos(NULL);
    }
    mLookAt.setParam(dVar15, dVar14, dVar13, dVar12, 0.0f, 0.0, 0.0f, 0.0f, dVar7, dVar8, dVar9,
                     dVar10, mCurAngle.y, &cStack_d0);
    mLookAt.calc(this, morfModel->getBaseTRMtx(), local_dc, iVar9, angleDiff, 0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcBlueNS_c::lookat() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/lookat__13daNpcBlueNS_cFv.s"
}
#pragma pop
#endif

/* 8096A9FC-8096AAF0 00217C 00F4+00 1/1 0/0 0/0 .text            step__13daNpcBlueNS_cFsi */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
int daNpcBlueNS_c::step(s16 param_1, int param_2) {
    if (mTurnMode == 0) {
        mTurnTargetAngle = param_1;
        mTurnAmount = 0;
        if (mCurAngle.y == mTurnTargetAngle) {
            mTurnMode++;
        }
        current.angle.y = mCurAngle.y;
        shape_angle.y = current.angle.y;
        mTurnMode++;
    } else if (mTurnMode == 1) {
        if (turn(mTurnTargetAngle, 15.0f, 0)) {
            shape_angle.y = current.angle.y;
            mCurAngle.y = current.angle.y;
            mOldAngle.y = current.angle.y;
            mTurnMode++;
        } else {
            shape_angle.y = current.angle.y;
            mCurAngle.y = current.angle.y;
        }
    }
    return mTurnMode > 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::step(s16 param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/step__13daNpcBlueNS_cFsi.s"
}
#pragma pop
#endif

/* 8096AAF0-8096ABD4 002270 00E4+00 1/1 0/0 0/0 .text            chkFindPlayer__13daNpcBlueNS_cFv */
// Matches with daNpcF_c
#ifdef NONMATCHING
int daNpcBlueNS_c::chkFindPlayer() {
    if (!chkActorInSight(daPy_getPlayerActorClass(),
                                        daNpcBlueNS_Param_c::m.field_0x50[0])) {
        mActorMngrs[0].remove();
        return 0;
    }
    fopAc_ac_c* actor = mActorMngrs[0].getActorP();
    bool inArea;
    if (actor == NULL) {
        inArea = chkPlayerInSpeakArea(this);
    } else {
        inArea = chkPlayerInTalkArea(this);
    }
    if (inArea) {
        mActorMngrs[0].entry(daPy_getPlayerActorClass());
    } else {
        mActorMngrs[0].remove();
    }
    return inArea;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::chkFindPlayer() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/chkFindPlayer__13daNpcBlueNS_cFv.s"
}
#pragma pop
#endif

/* 8096ABD4-8096AD70 002354 019C+00 6/0 0/0 0/0 .text            wait__13daNpcBlueNS_cFi */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
int daNpcBlueNS_c::wait(int param_1) {
    switch (field_0xdc0) {
    case 0:
        setMotion(field_0xe04, -1.0f, 0);
        speedF = 0.0f;
        field_0xdc0 = 2;
        break;
    case 2:
        chkFindPlayer();
        if (dComIfGp_event_runCheck()) {
            if (eventInfo.checkCommandTalk()) {
                if (!dComIfGp_event_chkTalkXY() ||
                    dComIfGp_evmng_ChkPresentEnd())
                {
                    setAction(&daNpcBlueNS_c::wait);
                }
            } else {
                if (dComIfGp_getEventManager().getMyStaffId(l_myName, this, 0) != -1) {
                    setAction(&daNpcBlueNS_c::demo);
                }
            }
        } else {
             if (mOrderEvtNo != 0) {
                eventInfo.setArchiveName(l_arcNames[0]);
             }
             orderEvent(field_0xdec, l_evtNames[mOrderEvtNo], 0xffff, 4, 0xff, 2);
        }
        break;
    case 1:
    case 3:
    default:
        break;
    }
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::wait(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/wait__13daNpcBlueNS_cFi.s"
}
#pragma pop
#endif

/* 8096AD70-8096AE5C 0024F0 00EC+00 1/0 0/0 0/0 .text            down__13daNpcBlueNS_cFi */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
int daNpcBlueNS_c::down(int param_1) {
    switch (field_0xdc0) {
    case 0:
        setMotion(field_0xe08, -1.0f, 0);
        speedF = 0.0f;
        downSE();
        field_0xdc0 = 2;
        break;
    case 2:
        if (mpMorf->isStop()) {
            setAction(&daNpcBlueNS_c::wait);
        }
        break;
    case 1:
    case 3:
    default:
        break;
    }
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::down(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/down__13daNpcBlueNS_cFi.s"
}
#pragma pop
#endif

/* 8096AE5C-8096AFC8 0025DC 016C+00 1/0 0/0 0/0 .text            talk__13daNpcBlueNS_cFi */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
int daNpcBlueNS_c::talk(int param_1) {
    bool rv = false;
    switch (field_0xdc0) {
    case 0:
        initTalk(field_0xde4, NULL);
        mMsgTimer = 0;
        field_0xdec = 0;
        setLookMode(LOOK_AT_3);
        field_0xdc0 = 2;
        break;
    case 2:
        if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
            if (talkProc(NULL, 1, NULL)) {
                mActorMngrs[0].entry(daPy_getPlayerActorClass());
                int local_38 = 0;
                mFlow.getEventId(&local_38);
                setAction(&daNpcBlueNS_c::wait);
                rv = true;
            }
        } else {
            if (step(fopAcM_searchPlayerAngleY(this), 1)) {
                mTurnMode = 0;
            }
        }
        break;
    case 3:
        if (!field_0x9ec) {
            dComIfGp_event_reset();
        }
        break;
    }
    return rv;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::talk(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/talk__13daNpcBlueNS_cFi.s"
}
#pragma pop
#endif

/* 8096AFC8-8096B204 002748 023C+00 1/0 0/0 0/0 .text            demo__13daNpcBlueNS_cFi */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
int daNpcBlueNS_c::demo(int param_1) {
    switch (field_0xdc0) {
    case 0:
        setMotion(field_0xe04, -1.0f, 0);
        field_0xdc0 = 2;
        break;
    case 2:
        if (g_dComIfG_gameInfo.play.getEvent().mEventStatus != 0 && !eventInfo.checkCommandTalk()) {
            dEvent_manager_c& evtMgr = dComIfGp_getEventManager();
            int staffId = evtMgr.getMyStaffId(l_myName, this, 0);
            if (staffId != -1) {
                mStaffID = staffId;
                JUT_ASSERT(2043, 0 != mEvtSeqList[mOrderEvtNo]);
                if ((this->*mEvtSeqList[mOrderEvtNo])(staffId)) {
                    evtMgr.cutEnd(staffId);
                }
            }
            if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && evtMgr.endCheck(mEventIdx))
            {
                switch (mOrderEvtNo) {
                case 4:
                    dComIfGp_event_reset();
                    mOrderEvtNo = 0;
                    mEventIdx = -1;
                    eventInfo.setIdx(0);
                    fopAcM_delete(this);
                    break;
                case 5:
                    dComIfGp_event_reset();
                    mOrderEvtNo = 0;
                    mEventIdx = -1;
                    eventInfo.setIdx(0);
                    fopAcM_delete(this);
                    break;
                case 6:
                    dComIfGp_event_reset();
                    mOrderEvtNo = 0;
                    mEventIdx = -1;
                    eventInfo.setIdx(0);
                    fopAcM_delete(this);
                    break;
                case 1:
                case 2:
                case 3:
                    dComIfGp_event_reset();
                    mOrderEvtNo = 0;
                    mEventIdx = -1;
                    eventInfo.setIdx(0);
                    fopAcM_delete(this);
                    break;
                default:
                    dComIfGp_event_reset();
                    mOrderEvtNo = 0;
                    mEventIdx = -1;
                    eventInfo.setIdx(0);
                    setAction(&daNpcBlueNS_c::wait);
                    break;
                }
            }
        }
        break;
    case 1:
    case 3:
    default:
        break;
    }
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::demo(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/demo__13daNpcBlueNS_cFi.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8096CB40-8096CB4C 000220 000C+00 1/1 0/0 0/0 .rodata          ptclOffsetY$5218 */
SECTION_RODATA static f32 const ptclOffsetY[3] = {
    0, 20.0f, 50.0f,
};
COMPILER_STRIP_GATE(0x8096CB40, &ptclOffsetY);

/* 8096B204-8096B320 002984 011C+00 4/4 0/0 0/0 .text            ChgPtclDisp__13daNpcBlueNS_cFv */
// Matches with literals
#ifdef NONMATCHING
void daNpcBlueNS_c::ChgPtclDisp() {
    int idx = field_0xe11 % 3;
    if (field_0xe11 / 3 != 0) {
        idx = 2;
    }
    cXyz acStack_28;
    acStack_28.set(current.pos.x, current.pos.y + ptclOffsetY[idx], current.pos.z);
    dComIfGp_particle_set(0x8a71, &acStack_28, &tevStr, &shape_angle, NULL);
    dComIfGp_particle_set(0x8a72, &acStack_28, &tevStr, &shape_angle, NULL);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpcBlueNS_c::ChgPtclDisp() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/ChgPtclDisp__13daNpcBlueNS_cFv.s"
}
#pragma pop
#endif

/* 8096B320-8096B3D8 002AA0 00B8+00 1/1 0/0 0/0 .text            downSE__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::downSE() {
    switch (field_0xe11) {
    case 0:
        mCreature.startCreatureVoice(Z2SE_YAMI_CUT_S, -1);
        break;
    case 1:
        mCreature.startCreatureVoice(Z2SE_YAMI_CUT_D, -1);
        break;
    case 2:
    case 3:
    case 4:
    case 5:
        mCreature.startCreatureVoice(Z2SE_YAMI_CUT_T, -1);
        break;
    }
}

/* 8096B3D8-8096B490 002B58 00B8+00 1/1 0/0 0/0 .text            lightsowrdSE__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::lightsowrdSE() {
    switch (field_0xe11) {
    case 0:
        mCreature.startCreatureVoice(Z2SE_YAMI_CUT_L_SWD_S, -1);
        break;
    case 1:
        mCreature.startCreatureVoice(Z2SE_YAMI_CUT_L_SWD_D, -1);
        break;
    case 2:
    case 3:
    case 4:
    case 5:
        mCreature.startCreatureVoice(Z2SE_YAMI_CUT_L_SWD_T, -1);
        break;
    }
}

/* 8096B490-8096B548 002C10 00B8+00 4/4 0/0 0/0 .text            appearSE__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::appearSE() {
    switch (field_0xe11) {
    case 0:
        mCreature.startCreatureVoice(Z2SE_YAMI_TRANSFORM_S, -1);
        break;
    case 1:
        mCreature.startCreatureVoice(Z2SE_YAMI_TRANSFORM_D, -1);
        break;
    case 2:
    case 3:
    case 4:
    case 5:
        mCreature.startCreatureVoice(Z2SE_YAMI_TRANSFORM_T, -1);
        break;
    }
}

/* 8096B548-8096B5F0 002CC8 00A8+00 1/0 0/0 0/0 .text _Evt_ChgYami_Chibi__13daNpcBlueNS_cFi */
int daNpcBlueNS_c::_Evt_ChgYami_Chibi(int param_1) {
    dEvent_manager_c& evtMgr = dComIfGp_getEventManager();
    int local_18[1];
    *local_18 = -1;
    int* pCut = dComIfGp_evmng_getMyIntegerP(param_1, "cutId");
    if (pCut != NULL) {
        *local_18 = *pCut;
    } else {
        OS_REPORT("---------------CUT FALSE\n");
        return 1;
    }
    if (evtMgr.getIsAddvance(param_1)) {
        _Evt_ChgYami_Chibi_CutInit(*local_18);
    }
    return _Evt_ChgYami_Chibi_CutMain(*local_18);
}

/* 8096B5F0-8096B688 002D70 0098+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_Chibi_CutInit__13daNpcBlueNS_cFRCi              */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
int daNpcBlueNS_c::_Evt_ChgYami_Chibi_CutInit(int const& param_1) {
    switch(param_1) {
    case 10:
        field_0xe00 = -1;
        break;
    case 20:
        setMotion(field_0xe0c, -1.0f, 0);
        appearSE();
        break;
    case 30:
        field_0xe10 = 0;
        mYamiActor = NULL;
        break;
    }
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::_Evt_ChgYami_Chibi_CutInit(int const& param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/_Evt_ChgYami_Chibi_CutInit__13daNpcBlueNS_cFRCi.s"
}
#pragma pop
#endif

/* 8096B688-8096B7B8 002E08 0130+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_Chibi_CutMain__13daNpcBlueNS_cFRCi              */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
int daNpcBlueNS_c::_Evt_ChgYami_Chibi_CutMain(int const& param_1) {
    int rv = 0;
    switch (param_1) {
    case 10:
        if (field_0xe00 == 0xffffffff) {
            field_0xe00 = create_Yamijin(0);
            if (field_0xe00 != 0xffffffff) {
                rv = 1;
            }
        } else {
            rv = 1;
        }
        break;
    case 20:
        if (mpMorf->isStop()) {
            ChgPtclDisp();
            rv = 1;
        }
        break;
    case 30:
        mYamiActor = fopAcM_SearchByID(field_0xe00);
        if (mYamiActor != NULL) {
            OS_REPORT("----%x :: FIND YAMI ACTOR!!\n", this);
            static_cast<daNpc_yamiS_c*>(mYamiActor)->vanish_off();
            static_cast<daNpc_yamiS_c*>(mYamiActor)->on_CoHit();
            rv = 1;
        }
        break;
    }
    return rv;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::_Evt_ChgYami_Chibi_CutMain(int const& param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/_Evt_ChgYami_Chibi_CutMain__13daNpcBlueNS_cFRCi.s"
}
#pragma pop
#endif

/* 8096B7B8-8096B860 002F38 00A8+00 1/0 0/0 0/0 .text _Evt_ChgYami_Debu__13daNpcBlueNS_cFi */
int daNpcBlueNS_c::_Evt_ChgYami_Debu(int param_1) {
    dEvent_manager_c& evtMgr = dComIfGp_getEventManager();
    int local_18[1];
    *local_18 = -1;
    int* pCut = dComIfGp_evmng_getMyIntegerP(param_1, "cutId");
    if (pCut != NULL) {
        *local_18 = *pCut;
    } else {
        OS_REPORT("---------------CUT FALSE\n");
        return 1;
    }
    if (evtMgr.getIsAddvance(param_1)) {
        _Evt_ChgYami_Debu_CutInit(*local_18);
    }
    return _Evt_ChgYami_Debu_CutMain(*local_18);
}

/* 8096B860-8096B8F8 002FE0 0098+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_Debu_CutInit__13daNpcBlueNS_cFRCi               */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
int daNpcBlueNS_c::_Evt_ChgYami_Debu_CutInit(int const& param_1) {
    switch(param_1) {
    case 10:
        field_0xe00 = -1;
        break;
    case 20:
        setMotion(field_0xe0c, -1.0f, 0);
        appearSE();
        break;
    case 30:
        field_0xe10 = 0;
        mYamiActor = NULL;
        break;
    }
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::_Evt_ChgYami_Debu_CutInit(int const& param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/_Evt_ChgYami_Debu_CutInit__13daNpcBlueNS_cFRCi.s"
}
#pragma pop
#endif

/* 8096B8F8-8096BA28 003078 0130+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_Debu_CutMain__13daNpcBlueNS_cFRCi               */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
int daNpcBlueNS_c::_Evt_ChgYami_Debu_CutMain(int const& param_1) {
    int rv = 0;
    switch (param_1) {
    case 10:
        if (field_0xe00 == 0xffffffff) {
            field_0xe00 = create_Yamijin(0);
            if (field_0xe00 != 0xffffffff) {
                rv = 1;
            }
        } else {
            rv = 1;
        }
        break;
    case 20:
        if (mpMorf->isStop()) {
            ChgPtclDisp();
            rv = 1;
        }
        break;
    case 30:
        mYamiActor = fopAcM_SearchByID(field_0xe00);
        if (mYamiActor != NULL) {
            OS_REPORT("----%x :: FIND YAMI ACTOR!!\n", this);
            static_cast<daNpc_yamiD_c*>(mYamiActor)->vanish_off();
            static_cast<daNpc_yamiD_c*>(mYamiActor)->on_CoHit();
            rv = 1;
        }
        break;
    }
    return rv;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::_Evt_ChgYami_Debu_CutMain(int const& param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/_Evt_ChgYami_Debu_CutMain__13daNpcBlueNS_cFRCi.s"
}
#pragma pop
#endif

/* 8096BA28-8096BAD0 0031A8 00A8+00 1/0 0/0 0/0 .text _Evt_ChgYami_Noppo__13daNpcBlueNS_cFi */
int daNpcBlueNS_c::_Evt_ChgYami_Noppo(int param_1) {
    dEvent_manager_c& evtMgr = dComIfGp_getEventManager();
    int local_18[1];
    *local_18 = -1;
    int* pCut = dComIfGp_evmng_getMyIntegerP(param_1, "cutId");
    if (pCut != NULL) {
        *local_18 = *pCut;
    } else {
        OS_REPORT("---------------CUT FALSE\n");
        return 1;
    }
    if (evtMgr.getIsAddvance(param_1)) {
        _Evt_ChgYami_Noppo_CutInit(*local_18);
    }
    return _Evt_ChgYami_Noppo_CutMain(*local_18);
}

/* 8096BAD0-8096BB68 003250 0098+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_Noppo_CutInit__13daNpcBlueNS_cFRCi              */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
int daNpcBlueNS_c::_Evt_ChgYami_Noppo_CutInit(int const& param_1) {
    switch(param_1) {
    case 10:
        field_0xe00 = -1;
        break;
    case 20:
        setMotion(field_0xe0c, -1.0f, 0);
        appearSE();
        break;
    case 30:
        field_0xe10 = 0;
        mYamiActor = NULL;
        break;
    }
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::_Evt_ChgYami_Noppo_CutInit(int const& param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/_Evt_ChgYami_Noppo_CutInit__13daNpcBlueNS_cFRCi.s"
}
#pragma pop
#endif

/* 8096BB68-8096BC98 0032E8 0130+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_Noppo_CutMain__13daNpcBlueNS_cFRCi              */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
int daNpcBlueNS_c::_Evt_ChgYami_Noppo_CutMain(int const& param_1) {
    int rv = 0;
    switch (param_1) {
    case 10:
        if (field_0xe00 == 0xffffffff) {
            field_0xe00 = create_Yamijin(0);
            if (field_0xe00 != 0xffffffff) {
                rv = 1;
            }
        } else {
            rv = 1;
        }
        break;
    case 20:
        if (mpMorf->isStop()) {
            ChgPtclDisp();
            rv = 1;
        }
        break;
    case 30:
        mYamiActor = fopAcM_SearchByID(field_0xe00);
        if (mYamiActor != NULL) {
            OS_REPORT("----%x :: FIND YAMI ACTOR!!\n", this);
            static_cast<daNpc_yamiT_c*>(mYamiActor)->vanish_off();
            static_cast<daNpc_yamiT_c*>(mYamiActor)->on_CoHit();
            rv = 1;
        }
        break;
    }
    return rv;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::_Evt_ChgYami_Noppo_CutMain(int const& param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/_Evt_ChgYami_Noppo_CutMain__13daNpcBlueNS_cFRCi.s"
}
#pragma pop
#endif

/* 8096BC98-8096BD40 003418 00A8+00 3/0 0/0 0/0 .text _Evt_ChgYami_STNoppo__13daNpcBlueNS_cFi */
int daNpcBlueNS_c::_Evt_ChgYami_STNoppo(int param_1) {
    dEvent_manager_c& evtMgr = dComIfGp_getEventManager();
    int local_18[1];
    *local_18 = -1;
    int* pCut = dComIfGp_evmng_getMyIntegerP(param_1, "cutId");
    if (pCut != NULL) {
        *local_18 = *pCut;
    } else {
        OS_REPORT("---------------CUT FALSE\n");
        return 1;
    }
    if (evtMgr.getIsAddvance(param_1)) {
        _Evt_ChgYami_STNoppo_CutInit(*local_18);
    }
    return _Evt_ChgYami_STNoppo_CutMain(*local_18);
}

/* 8096BD40-8096BDD8 0034C0 0098+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_STNoppo_CutInit__13daNpcBlueNS_cFRCi            */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
int daNpcBlueNS_c::_Evt_ChgYami_STNoppo_CutInit(int const& param_1) {
    switch(param_1) {
    case 10:
        field_0xe00 = -1;
        break;
    case 20:
        setMotion(field_0xe0c, -1.0f, 0);
        appearSE();
        break;
    case 30:
        field_0xe10 = 0;
        mYamiActor = NULL;
        break;
    }
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::_Evt_ChgYami_STNoppo_CutInit(int const& param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/_Evt_ChgYami_STNoppo_CutInit__13daNpcBlueNS_cFRCi.s"
}
#pragma pop
#endif

/* 8096BDD8-8096BF08 003558 0130+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_STNoppo_CutMain__13daNpcBlueNS_cFRCi            */
// Matches with literals and daNpcF_c
#ifdef NONMATCHING
int daNpcBlueNS_c::_Evt_ChgYami_STNoppo_CutMain(int const& param_1) {
    int rv = 0;
    switch (param_1) {
    case 10:
        if (field_0xe00 == 0xffffffff) {
            field_0xe00 = create_Yamijin(0);
            if (field_0xe00 != 0xffffffff) {
                rv = 1;
            }
        } else {
            rv = 1;
        }
        break;
    case 20:
        if (mpMorf->isStop()) {
            ChgPtclDisp();
            rv = 1;
        }
        break;
    case 30:
        mYamiActor = fopAcM_SearchByID(field_0xe00);
        if (mYamiActor != NULL) {
            OS_REPORT("----%x :: FIND YAMI ACTOR!!\n", this);
            static_cast<daNpc_yamiT_c*>(mYamiActor)->vanish_off();
            static_cast<daNpc_yamiT_c*>(mYamiActor)->on_CoHit();
            rv = 1;
        }
        break;
    }
    return rv;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpcBlueNS_c::_Evt_ChgYami_STNoppo_CutMain(int const& param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/_Evt_ChgYami_STNoppo_CutMain__13daNpcBlueNS_cFRCi.s"
}
#pragma pop
#endif

/* 8096BF08-8096BF28 003688 0020+00 1/0 0/0 0/0 .text            daNpcBlueNS_Create__FPv */
static int daNpcBlueNS_Create(void* i_this) {
    return static_cast<daNpcBlueNS_c*>(i_this)->Create();
}

/* 8096BF28-8096BF48 0036A8 0020+00 1/0 0/0 0/0 .text            daNpcBlueNS_Delete__FPv */
static int daNpcBlueNS_Delete(void* i_this) {
    return static_cast<daNpcBlueNS_c*>(i_this)->Delete();
}

/* 8096BF48-8096BF68 0036C8 0020+00 1/0 0/0 0/0 .text            daNpcBlueNS_Execute__FPv */
static int daNpcBlueNS_Execute(void* i_this) {
    return static_cast<daNpcBlueNS_c*>(i_this)->Execute();
}

/* 8096BF68-8096BF88 0036E8 0020+00 1/0 0/0 0/0 .text            daNpcBlueNS_Draw__FPv */
static int daNpcBlueNS_Draw(void* i_this) {
    return static_cast<daNpcBlueNS_c*>(i_this)->Draw();
}

/* 8096BF88-8096BF90 003708 0008+00 1/0 0/0 0/0 .text            daNpcBlueNS_IsDelete__FPv */
static int daNpcBlueNS_IsDelete(void* param_0) {
    return 1;
}

/* 8096BF90-8096BFD8 003710 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" asm void __dt__18daNpcF_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/__dt__18daNpcF_ActorMngr_cFv.s"
}
#pragma pop

/* 8096BFD8-8096C014 003758 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" asm void __ct__18daNpcF_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/__ct__18daNpcF_ActorMngr_cFv.s"
}
#pragma pop

/* 8096C014-8096C0E4 003794 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" asm void __dt__15daNpcF_Lookat_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/__dt__15daNpcF_Lookat_cFv.s"
}
#pragma pop

/* 8096C0E4-8096C120 003864 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/__dt__5csXyzFv.s"
}
#pragma pop

/* 8096C120-8096C124 0038A0 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" asm void __ct__5csXyzFv() {
    /* empty function */
}

/* 8096C124-8096C160 0038A4 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/__dt__4cXyzFv.s"
}
#pragma pop

/* 8096C160-8096C164 0038E0 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" asm void __ct__4cXyzFv() {
    /* empty function */
}

/* 8096C164-8096C3B0 0038E4 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_c::~daNpcF_c() {
extern "C" asm void __dt__8daNpcF_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/__dt__8daNpcF_cFv.s"
}
#pragma pop

/* 8096C3B0-8096C5A0 003B30 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_c::daNpcF_c() {
extern "C" asm void __ct__8daNpcF_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/__ct__8daNpcF_cFv.s"
}
#pragma pop

/* 8096C5A0-8096C610 003D20 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 8096C610-8096C66C 003D90 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 8096C66C-8096C6DC 003DEC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 8096C6DC-8096C724 003E5C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 8096C724-8096C728 003EA4 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" asm void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 8096C728-8096C730 003EA8 0008+00 1/0 0/0 0/0 .text            ctrlBtk__8daNpcF_cFv */
// bool daNpcF_c::ctrlBtk() {
extern "C" bool ctrlBtk__8daNpcF_cFv() {
    return false;
}

/* 8096C730-8096C738 003EB0 0008+00 1/0 0/0 0/0 .text            setExpressionAnm__8daNpcF_cFib */
// bool daNpcF_c::setExpressionAnm(int param_0, bool param_1) {
extern "C" bool setExpressionAnm__8daNpcF_cFib() {
    return true;
}

/* 8096C738-8096C740 003EB8 0008+00 1/0 0/0 0/0 .text            setExpressionBtp__8daNpcF_cFi */
// bool daNpcF_c::setExpressionBtp(int param_0) {
extern "C" bool setExpressionBtp__8daNpcF_cFi() {
    return true;
}

/* 8096C740-8096C744 003EC0 0004+00 1/0 0/0 0/0 .text            setExpression__8daNpcF_cFif */
// void daNpcF_c::setExpression(int param_0, f32 param_1) {
extern "C" asm void setExpression__8daNpcF_cFif() {
    /* empty function */
}

/* 8096C744-8096C748 003EC4 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__8daNpcF_cFv */
// void daNpcF_c::drawOtherMdls() {
extern "C" asm void drawOtherMdls__8daNpcF_cFv() {
    /* empty function */
}

/* 8096C748-8096C790 003EC8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 8096C790-8096C7AC 003F10 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_8096C790(void* _this, int* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/func_8096C790.s"
}
#pragma pop

/* ############################################################################################## */
/* 8096CE74-8096CE80 0002D4 000C+00 2/2 0/0 0/0 .data            __vt__19daNpcBlueNS_Param_c */
SECTION_DATA extern void* __vt__19daNpcBlueNS_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpcBlueNS_Param_cFv,
};

/* 8096CE88-8096CE94 000008 000C+00 1/1 0/0 0/0 .bss             @3889 */
static u8 lit_3889[12];

/* 8096CE94-8096CE98 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 8096C7AC-8096C8B0 003F2C 0104+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_blue_ns_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_npc_blue_ns_cpp() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/__sinit_d_a_npc_blue_ns_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8096C7AC, __sinit_d_a_npc_blue_ns_cpp);
#pragma pop

/* 8096C8B0-8096C8B4 004030 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__13daNpcBlueNS_cFv
 */
void daNpcBlueNS_c::adjustShapeAngle() {
    /* empty function */
}

/* 8096C8B4-8096C8FC 004034 0048+00 2/1 0/0 0/0 .text            __dt__19daNpcBlueNS_Param_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpcBlueNS_Param_c::~daNpcBlueNS_Param_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/__dt__19daNpcBlueNS_Param_cFv.s"
}
#pragma pop

/* 8096C8FC-8096C904 00407C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_8096C8FC() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/func_8096C8FC.s"
}
#pragma pop

/* 8096C904-8096C90C 004084 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_8096C904() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_blue_ns/d_a_npc_blue_ns/func_8096C904.s"
}
#pragma pop

/* 8096CB4C-8096CB4C 00022C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
