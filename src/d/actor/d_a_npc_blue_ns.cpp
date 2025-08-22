/**
 * @file d_a_npc_blue_ns.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_blue_ns.h"
#include "d/d_cc_d.h"
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

/* ############################################################################################## */
/* 8096CB4C-8096CB4C 00022C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8096CB4C = "Blue_NS";
SECTION_DEAD static char const* const stringBase_8096CB54 = "CHG_YAMI_CHIBI";
SECTION_DEAD static char const* const stringBase_8096CB63 = "CHG_YAMI_DEBU";
SECTION_DEAD static char const* const stringBase_8096CB71 = "CHG_YAMI_NOPPO";
SECTION_DEAD static char const* const stringBase_8096CB80 = "CHG_YAMI_NOPPO_STOPPER";
#pragma pop

/* 8096CBC0-8096CC2C 000020 006C+00 1/1 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[108] = {
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8096CC2C-8096CC30 -00001 0004+00 4/5 0/0 0/0 .data            l_arcNames */
SECTION_DATA static void* l_arcNames = (void*)&d_a_npc_blue_ns__stringBase0;

/* 8096CC30-8096CC4C -00001 001C+00 0/1 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtNames[7] = {
    (void*)NULL,
    (void*)(((char*)&d_a_npc_blue_ns__stringBase0) + 0x8),
    (void*)(((char*)&d_a_npc_blue_ns__stringBase0) + 0x17),
    (void*)(((char*)&d_a_npc_blue_ns__stringBase0) + 0x25),
    (void*)(((char*)&d_a_npc_blue_ns__stringBase0) + 0x34),
    (void*)(((char*)&d_a_npc_blue_ns__stringBase0) + 0x34),
    (void*)(((char*)&d_a_npc_blue_ns__stringBase0) + 0x34),
};
#pragma pop

/* 8096CC4C-8096CC50 -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)&d_a_npc_blue_ns__stringBase0;
#pragma pop

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
  &g_fpcLf_Method.base,    // sub_method
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
daNpcBlueNS_c::daNpcBlueNS_c() {
    // NONMATCHING
}

/* 80968AF0-80968B38 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80968B38-80968B80 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80968B80-80968D44 000300 01C4+00 1/0 0/0 0/0 .text            __dt__13daNpcBlueNS_cFv */
daNpcBlueNS_c::~daNpcBlueNS_c() {
    // NONMATCHING
}

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
SECTION_RODATA u8 const daNpcBlueNS_Param_c::m[112] = {
    0x42, 0x5C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x44, 0xFA, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0xD2, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x02, 0x00, 0x06, 0x00, 0x03, 0x00, 0x06,
    0x42, 0x70, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00,
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
void daNpcBlueNS_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8096C9E8-8096C9EC 0000C8 0004+00 4/6 0/0 0/0 .rodata          @4306 */
SECTION_RODATA static f32 const lit_4306 = 1.0f;
COMPILER_STRIP_GATE(0x8096C9E8, &lit_4306);

/* 8096C9EC-8096C9F0 0000CC 0004+00 8/8 0/0 0/0 .rodata          @4307 */
SECTION_RODATA static f32 const lit_4307 = -1.0f;
COMPILER_STRIP_GATE(0x8096C9EC, &lit_4307);

/* 80968FE4-80969138 000764 0154+00 1/1 0/0 0/0 .text            CreateHeap__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::CreateHeap() {
    // NONMATCHING
}

/* 80969138-809691A8 0008B8 0070+00 1/1 0/0 0/0 .text            isDelete__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::isDelete() {
    // NONMATCHING
}

/* 809691A8-809691DC 000928 0034+00 1/1 0/0 0/0 .text            Delete__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::Delete() {
    // NONMATCHING
}

/* 809691DC-80969200 00095C 0024+00 2/2 0/0 0/0 .text            Execute__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::Execute() {
    // NONMATCHING
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
void daNpcBlueNS_c::_Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8096C9F8-8096CA04 0000D8 000C+00 1/1 0/0 0/0 .rodata          sCallEvtName$4400 */
SECTION_RODATA static u8 const sCallEvtName[12] = {
    0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x06,
};
COMPILER_STRIP_GATE(0x8096C9F8, &sCallEvtName);

/* 80969468-80969504 000BE8 009C+00 1/1 0/0 0/0 .text callEvt_changeYami__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::callEvt_changeYami() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8096CA04-8096CA0C 0000E4 0006+02 1/1 0/0 0/0 .rodata          sNameYami$4420 */
SECTION_RODATA static u8 const sNameYami[6 + 2 /* padding */] = {
    0x02,
    0x3F,
    0x02,
    0x3D,
    0x02,
    0x3E,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8096CA04, &sNameYami);

/* 80969504-809695F0 000C84 00EC+00 5/5 0/0 0/0 .text            create_Yamijin__13daNpcBlueNS_cFi
 */
void daNpcBlueNS_c::create_Yamijin(int param_0) {
    // NONMATCHING
}

/* 809695F0-80969698 000D70 00A8+00 1/1 0/0 0/0 .text            col_check__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::col_check() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8096CA0C-8096CA10 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4524 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4524 = 0x4378C198;
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
SECTION_RODATA static u32 const lit_4526 = 0x45A7C1BD;
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
void daNpcBlueNS_c::holyball_check_main(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8096CA38-8096CA3C 000118 0004+00 0/1 0/0 0/0 .rodata          @4570 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4570 = 20.0f;
COMPILER_STRIP_GATE(0x8096CA38, &lit_4570);
#pragma pop

/* 80969870-809699D0 000FF0 0160+00 1/1 0/0 0/0 .text            Draw__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8096CA3C-8096CA48 00011C 000C+00 1/1 0/0 0/0 .rodata          @4574 */
SECTION_RODATA static u8 const lit_4574[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x8096CA3C, &lit_4574);

/* 809699D0-80969B68 001150 0198+00 1/1 0/0 0/0 .text
 * ctrlJoint__13daNpcBlueNS_cFP8J3DJointP8J3DModel              */
void daNpcBlueNS_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 80969B68-80969B88 0012E8 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpcBlueNS_cFP10fopAc_ac_c            */
void daNpcBlueNS_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80969B88-80969BD4 001308 004C+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpcBlueNS_cFP8J3DJointi               */
void daNpcBlueNS_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80969BD4-80969C48 001354 0074+00 1/0 0/0 0/0 .text            setParam__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::setParam() {
    // NONMATCHING
}

/* 80969C48-80969C90 0013C8 0048+00 1/1 0/0 0/0 .text            srchActor__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::srchActor() {
    // NONMATCHING
}

/* 80969C90-80969CF8 001410 0068+00 1/1 0/0 0/0 .text            srchHollyBall__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::srchHollyBall() {
    // NONMATCHING
}

/* 80969CF8-80969D60 001478 0068+00 1/1 0/0 0/0 .text            srchTagYami__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::srchTagYami() {
    // NONMATCHING
}

/* 80969D60-80969DE4 0014E0 0084+00 1/1 0/0 0/0 .text            _search_Tag__13daNpcBlueNS_cFPvPv
 */
void daNpcBlueNS_c::_search_Tag(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80969DE4-80969E9C 001564 00B8+00 1/1 0/0 0/0 .text _search_HollyBall_Y__13daNpcBlueNS_cFPvPv */
void daNpcBlueNS_c::_search_HollyBall_Y(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80969E9C-80969F54 00161C 00B8+00 1/1 0/0 0/0 .text _search_HollyBall_G__13daNpcBlueNS_cFPvPv */
void daNpcBlueNS_c::_search_HollyBall_G(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80969F54-8096A090 0016D4 013C+00 1/0 0/0 0/0 .text            main__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::main() {
    // NONMATCHING
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
void daNpcBlueNS_c::setAttnPos() {
    // NONMATCHING
}

/* 8096A238-8096A308 0019B8 00D0+00 1/0 0/0 0/0 .text            setMotionAnm__13daNpcBlueNS_cFif */
bool daNpcBlueNS_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 8096A308-8096A350 001A88 0048+00 1/0 0/0 0/0 .text            setMotion__13daNpcBlueNS_cFifi */
void daNpcBlueNS_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 8096A350-8096A358 001AD0 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpcBlueNS_cFv */
bool daNpcBlueNS_c::drawDbgInfo() {
    return false;
}

/* ############################################################################################## */
/* 8096CA50-8096CA5C 000130 000C+00 0/1 0/0 0/0 .rodata          sWaitAnm$4874 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const sWaitAnm[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
};
COMPILER_STRIP_GATE(0x8096CA50, &sWaitAnm);
#pragma pop

/* 8096CA5C-8096CA68 00013C 000C+00 0/1 0/0 0/0 .rodata          sDamageAnm$4875 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const sDamageAnm[12] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05,
};
COMPILER_STRIP_GATE(0x8096CA5C, &sDamageAnm);
#pragma pop

/* 8096CA68-8096CA74 000148 000C+00 0/1 0/0 0/0 .rodata          sAppearAnm$4876 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const sAppearAnm[12] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x08,
};
COMPILER_STRIP_GATE(0x8096CA68, &sAppearAnm);
#pragma pop

/* 8096A358-8096A518 001AD8 01C0+00 1/1 0/0 0/0 .text            reset__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::reset() {
    // NONMATCHING
}

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
void daNpcBlueNS_c::playMotion() {
    // NONMATCHING
}

/* 8096A750-8096A7F8 001ED0 00A8+00 7/7 0/0 0/0 .text
 * setAction__13daNpcBlueNS_cFM13daNpcBlueNS_cFPCvPvi_i         */
void daNpcBlueNS_c::setAction(int (daNpcBlueNS_c::*param_0)(int)) {
    // NONMATCHING
}

/* 8096A7F8-8096A81C 001F78 0024+00 1/1 0/0 0/0 .text            setLookMode__13daNpcBlueNS_cFi */
void daNpcBlueNS_c::setLookMode(int param_0) {
    // NONMATCHING
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
void daNpcBlueNS_c::lookat() {
    // NONMATCHING
}

/* 8096A9FC-8096AAF0 00217C 00F4+00 1/1 0/0 0/0 .text            step__13daNpcBlueNS_cFsi */
void daNpcBlueNS_c::step(s16 param_0, int param_1) {
    // NONMATCHING
}

/* 8096AAF0-8096ABD4 002270 00E4+00 1/1 0/0 0/0 .text            chkFindPlayer__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::chkFindPlayer() {
    // NONMATCHING
}

/* 8096ABD4-8096AD70 002354 019C+00 6/0 0/0 0/0 .text            wait__13daNpcBlueNS_cFi */
void daNpcBlueNS_c::wait(int param_0) {
    // NONMATCHING
}

/* 8096AD70-8096AE5C 0024F0 00EC+00 1/0 0/0 0/0 .text            down__13daNpcBlueNS_cFi */
void daNpcBlueNS_c::down(int param_0) {
    // NONMATCHING
}

/* 8096AE5C-8096AFC8 0025DC 016C+00 1/0 0/0 0/0 .text            talk__13daNpcBlueNS_cFi */
void daNpcBlueNS_c::talk(int param_0) {
    // NONMATCHING
}

/* 8096AFC8-8096B204 002748 023C+00 1/0 0/0 0/0 .text            demo__13daNpcBlueNS_cFi */
void daNpcBlueNS_c::demo(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8096CB40-8096CB4C 000220 000C+00 1/1 0/0 0/0 .rodata          ptclOffsetY$5218 */
SECTION_RODATA static u8 const ptclOffsetY[12] = {
    0x00, 0x00, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8096CB40, &ptclOffsetY);

/* 8096B204-8096B320 002984 011C+00 4/4 0/0 0/0 .text            ChgPtclDisp__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::ChgPtclDisp() {
    // NONMATCHING
}

/* 8096B320-8096B3D8 002AA0 00B8+00 1/1 0/0 0/0 .text            downSE__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::downSE() {
    // NONMATCHING
}

/* 8096B3D8-8096B490 002B58 00B8+00 1/1 0/0 0/0 .text            lightsowrdSE__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::lightsowrdSE() {
    // NONMATCHING
}

/* 8096B490-8096B548 002C10 00B8+00 4/4 0/0 0/0 .text            appearSE__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::appearSE() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8096CB4C-8096CB4C 00022C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8096CB97 = "cutId";
#pragma pop

/* 8096B548-8096B5F0 002CC8 00A8+00 1/0 0/0 0/0 .text _Evt_ChgYami_Chibi__13daNpcBlueNS_cFi */
void daNpcBlueNS_c::_Evt_ChgYami_Chibi(int param_0) {
    // NONMATCHING
}

/* 8096B5F0-8096B688 002D70 0098+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_Chibi_CutInit__13daNpcBlueNS_cFRCi              */
void daNpcBlueNS_c::_Evt_ChgYami_Chibi_CutInit(int const& param_0) {
    // NONMATCHING
}

/* 8096B688-8096B7B8 002E08 0130+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_Chibi_CutMain__13daNpcBlueNS_cFRCi              */
void daNpcBlueNS_c::_Evt_ChgYami_Chibi_CutMain(int const& param_0) {
    // NONMATCHING
}

/* 8096B7B8-8096B860 002F38 00A8+00 1/0 0/0 0/0 .text _Evt_ChgYami_Debu__13daNpcBlueNS_cFi */
void daNpcBlueNS_c::_Evt_ChgYami_Debu(int param_0) {
    // NONMATCHING
}

/* 8096B860-8096B8F8 002FE0 0098+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_Debu_CutInit__13daNpcBlueNS_cFRCi               */
void daNpcBlueNS_c::_Evt_ChgYami_Debu_CutInit(int const& param_0) {
    // NONMATCHING
}

/* 8096B8F8-8096BA28 003078 0130+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_Debu_CutMain__13daNpcBlueNS_cFRCi               */
void daNpcBlueNS_c::_Evt_ChgYami_Debu_CutMain(int const& param_0) {
    // NONMATCHING
}

/* 8096BA28-8096BAD0 0031A8 00A8+00 1/0 0/0 0/0 .text _Evt_ChgYami_Noppo__13daNpcBlueNS_cFi */
void daNpcBlueNS_c::_Evt_ChgYami_Noppo(int param_0) {
    // NONMATCHING
}

/* 8096BAD0-8096BB68 003250 0098+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_Noppo_CutInit__13daNpcBlueNS_cFRCi              */
void daNpcBlueNS_c::_Evt_ChgYami_Noppo_CutInit(int const& param_0) {
    // NONMATCHING
}

/* 8096BB68-8096BC98 0032E8 0130+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_Noppo_CutMain__13daNpcBlueNS_cFRCi              */
void daNpcBlueNS_c::_Evt_ChgYami_Noppo_CutMain(int const& param_0) {
    // NONMATCHING
}

/* 8096BC98-8096BD40 003418 00A8+00 3/0 0/0 0/0 .text _Evt_ChgYami_STNoppo__13daNpcBlueNS_cFi */
void daNpcBlueNS_c::_Evt_ChgYami_STNoppo(int param_0) {
    // NONMATCHING
}

/* 8096BD40-8096BDD8 0034C0 0098+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_STNoppo_CutInit__13daNpcBlueNS_cFRCi            */
void daNpcBlueNS_c::_Evt_ChgYami_STNoppo_CutInit(int const& param_0) {
    // NONMATCHING
}

/* 8096BDD8-8096BF08 003558 0130+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_STNoppo_CutMain__13daNpcBlueNS_cFRCi            */
void daNpcBlueNS_c::_Evt_ChgYami_STNoppo_CutMain(int const& param_0) {
    // NONMATCHING
}

/* 8096BF08-8096BF28 003688 0020+00 1/0 0/0 0/0 .text            daNpcBlueNS_Create__FPv */
static void daNpcBlueNS_Create(void* param_0) {
    // NONMATCHING
}

/* 8096BF28-8096BF48 0036A8 0020+00 1/0 0/0 0/0 .text            daNpcBlueNS_Delete__FPv */
static void daNpcBlueNS_Delete(void* param_0) {
    // NONMATCHING
}

/* 8096BF48-8096BF68 0036C8 0020+00 1/0 0/0 0/0 .text            daNpcBlueNS_Execute__FPv */
static void daNpcBlueNS_Execute(void* param_0) {
    // NONMATCHING
}

/* 8096BF68-8096BF88 0036E8 0020+00 1/0 0/0 0/0 .text            daNpcBlueNS_Draw__FPv */
static void daNpcBlueNS_Draw(void* param_0) {
    // NONMATCHING
}

/* 8096BF88-8096BF90 003708 0008+00 1/0 0/0 0/0 .text            daNpcBlueNS_IsDelete__FPv */
static bool daNpcBlueNS_IsDelete(void* param_0) {
    return true;
}

/* 8096BF90-8096BFD8 003710 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 8096BFD8-8096C014 003758 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 8096C014-8096C0E4 003794 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 8096C0E4-8096C120 003864 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 8096C120-8096C124 0038A0 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 8096C124-8096C160 0038A4 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 8096C160-8096C164 0038E0 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 8096C164-8096C3B0 0038E4 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 8096C3B0-8096C5A0 003B30 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 8096C5A0-8096C610 003D20 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8096C610-8096C66C 003D90 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8096C66C-8096C6DC 003DEC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8096C6DC-8096C724 003E5C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 8096C724-8096C728 003EA4 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
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
extern "C" void setExpression__8daNpcF_cFif() {
    /* empty function */
}

/* 8096C744-8096C748 003EC4 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__8daNpcF_cFv */
// void daNpcF_c::drawOtherMdls() {
extern "C" void drawOtherMdls__8daNpcF_cFv() {
    /* empty function */
}

/* 8096C748-8096C790 003EC8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 8096C790-8096C7AC 003F10 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_8096C790(void* _this, int* param_0) {
    // NONMATCHING
}

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
void __sinit_d_a_npc_blue_ns_cpp() {
    // NONMATCHING
}

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
daNpcBlueNS_Param_c::~daNpcBlueNS_Param_c() {
    // NONMATCHING
}

/* 8096C8FC-8096C904 00407C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8096C8FC() {
    // NONMATCHING
}

/* 8096C904-8096C90C 004084 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8096C904() {
    // NONMATCHING
}

/* 8096CB4C-8096CB4C 00022C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
