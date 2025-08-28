/**
 * @file d_a_npc_tks.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_tks.h"
#include "d/d_a_obj.h"
#include "d/actor/d_a_npc_tkc.h"
#include "d/d_meter2_info.h"
#include "dol2asm.h"
#include "f_op/f_op_kankyo_mng.h"

//
// Forward References:
//

extern "C" void __ct__10daNpcTks_cFv();
extern "C" void __dt__10daNpcTks_cFv();
extern "C" void Create__10daNpcTks_cFv();
extern "C" void CreateHeap__10daNpcTks_cFv();
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
extern "C" void Delete__10daNpcTks_cFv();
extern "C" void Execute__10daNpcTks_cFv();
extern "C" void Draw__10daNpcTks_cFv();
extern "C" void ctrlJoint__10daNpcTks_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__10daNpcTks_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__10daNpcTks_cFP8J3DJointi();
extern "C" void setMtx__10daNpcTks_cFv();
extern "C" void setExpressionAnm__10daNpcTks_cFib();
extern "C" void setExpressionBtp__10daNpcTks_cFi();
extern "C" void setMotion__10daNpcTks_cFifi();
extern "C" void reset__10daNpcTks_cFv();
extern "C" void setAction__10daNpcTks_cFM10daNpcTks_cFPCvPv_v();
extern "C" void wait__10daNpcTks_cFv();
extern "C" void setMotionAnm__10daNpcTks_cFif();
extern "C" void waitNude__10daNpcTks_cFv();
extern "C" void waitLv6__10daNpcTks_cFv();
extern "C" void talk__10daNpcTks_cFv();
extern "C" void setExpression__10daNpcTks_cFif();
extern "C" void hide__10daNpcTks_cFv();
extern "C" void shake__10daNpcTks_cFv();
extern "C" void showUp__10daNpcTks_cFv();
extern "C" void showUpWait__10daNpcTks_cFv();
extern "C" void lookAroundA__10daNpcTks_cFv();
extern "C" void lookAroundB__10daNpcTks_cFv();
extern "C" void in__10daNpcTks_cFv();
extern "C" void damage__10daNpcTks_cFv();
extern "C" void broken__10daNpcTks_cFv();
extern "C" void demo_appear__10daNpcTks_cFv();
extern "C" void demo_scannon__10daNpcTks_cFv();
extern "C" void demo_Lv6Gate__10daNpcTks_cFv();
extern "C" void demo_farewell__10daNpcTks_cFv();
extern "C" void demo_warpBack__10daNpcTks_cFv();
extern "C" void demo_walkBack__10daNpcTks_cFv();
extern "C" void demo_Lv7Start__10daNpcTks_cFv();
extern "C" void demo_Lv3PickUp__10daNpcTks_cFv();
extern "C" void demo_Lv6PickUp__10daNpcTks_cFv();
extern "C" static void daNpcTks_Create__FPv();
extern "C" static void daNpcTks_Delete__FPv();
extern "C" static void daNpcTks_Execute__FPv();
extern "C" static void daNpcTks_Draw__FPv();
extern "C" static bool daNpcTks_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void setParam__10daNpcTks_cFv();
extern "C" void main__10daNpcTks_cFv();
extern "C" void func_80B1CB4C(void* _this, u32, u32);
extern "C" void ctrlBtk__10daNpcTks_cFv();
extern "C" void setAttnPos__10daNpcTks_cFv();
extern "C" void lookat__10daNpcTks_cFv();
extern "C" bool drawDbgInfo__10daNpcTks_cFv();
extern "C" void drawOtherMdls__10daNpcTks_cFv();
extern "C" void func_80B1D35C(void* _this, s16);
extern "C" void func_80B1D368(void* _this, int*);
extern "C" void func_80B1D384(void* _this, int, int);
extern "C" void __sinit_d_a_npc_tks_cpp();
extern "C" void __dt__18daNpcF_ActorMngr_cFv();
extern "C" void __ct__18daNpcF_ActorMngr_cFv();
extern "C" void __dt__15daNpcF_Lookat_cFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __ct__11J3DLightObjFv();
extern "C" void __dt__8daNpcF_cFv();
extern "C" void __ct__8daNpcF_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void adjustShapeAngle__8daNpcF_cFv();
extern "C" void setCollisions__8daNpcF_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__16daNpcTks_Param_cFv();
extern "C" static void func_80B1DD34();
extern "C" static void func_80B1DD3C();
extern "C" u8 const m__16daNpcTks_Param_c[152];
extern "C" extern char const* const d_a_npc_tks__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_delete__FUi();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs();
extern "C" void fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fopAcM_cancelCarryNow__FP10fopAc_ac_c();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onTbox__12dSv_memBit_cFi();
extern "C" void onDungeonItem__12dSv_memBit_cFi();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void make_eff_break_kotubo__5daObjFP10fopAc_ac_c();
extern "C" void make_eff_break_kotubo2__5daObjFP10fopAc_ac_c();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void setSkipZev__14dEvt_control_cFPvPc();
extern "C" void setPtT__14dEvt_control_cFPv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyNowCutName__16dEvent_manager_cFi();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void StartShock__12dVibration_cFii4cXyz();
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
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
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
extern "C" void turn__8daNpcF_cFsfi();
extern "C" void setAngle__8daNpcF_cFs();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void daNpcF_onEvtBit__FUl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_tevstr_init__FP12dKy_tevstr_cScUc();
extern "C" void warpInProc__13dMeter2Info_cFv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __ct__13cBgS_PolyInfoFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __as__12J3DLightInfoFRC12J3DLightInfo();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
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
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void setActionWait__10daNpcTkc_cFv();
extern "C" void setActionFollow__10daNpcTkc_cFv();
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80B1E048-80B1E048 0002F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B1E048 = "TKS";
SECTION_DEAD static char const* const stringBase_80B1E04C = "J_tubo_00";
SECTION_DEAD static char const* const stringBase_80B1E056 = "K_tubo02";
SECTION_DEAD static char const* const stringBase_80B1E05F = "TKS_ENCOUNTER";
SECTION_DEAD static char const* const stringBase_80B1E06D = "Tks";
#pragma pop

/* 80B1E104-80B1E1B4 000020 00B0+00 1/2 0/0 0/0 .data            l_bckGetParamList */
static struct {
    /* 0x0 */ int fileIdx;
    /* 0x4 */ int attr;
} l_bckGetParamList[22] = {
    {-1, 2},
    {7, 0},
    {0x1A, 2},
    {0x1B, 2},
    {0x0A, 2},
    {0x13, 0},
    {0x14, 2},
    {0x0F, 0},
    {0x10, 0},
    {0x0B, 0},
    {0x12, 0},
    {0x08, 2},
    {0x0E, 0},
    {0x16, 2},
    {0x19, 0},
    {0x17, 0},
    {0x18, 0},
    {0x0D, 0},
    {0x09, 2},
    {0x0C, 0},
    {0x11, 2},
    {0x15, 2},
};

/* 80B1E1B4-80B1E1BC 0000D0 0008+00 1/1 0/0 0/0 .data            l_btpGetParamList */
static struct {
    /* 0x0 */ int fileIdx;
    /* 0x4 */ int attr;
} l_btpGetParamList[1] = {
    {0x24, 2},
};

/* 80B1E1BC-80B1E1C4 0000D8 0008+00 1/2 0/0 0/0 .data            l_btkGetParamList */
static struct {
    /* 0x0 */ int fileIdx;
    /* 0x4 */ int attr;
} l_btkGetParamList[1] = {
    {0x21, 2},
};

/* 80B1E1C4-80B1E1D0 0000E0 000C+00 1/0 0/0 0/0 .data            l_loadRes_TKS0 */
static int l_loadRes_TKS0[3] = {
    0, 1, -1,
};

/* 80B1E1D0-80B1E1DC 0000EC 000C+00 1/0 0/0 0/0 .data            l_loadRes_TKS1 */
static int l_loadRes_TKS1[3] = {
    0, 2, -1,
};

/* 80B1E1DC-80B1E1E8 0000F8 000C+00 1/0 0/0 0/0 .data            l_loadRes_TKS2 */
static int l_loadRes_TKS2[3] = {
    0, -1, -1,
};

/* 80B1E1E8-80B1E1F4 -00001 000C+00 2/2 0/0 0/0 .data            l_loadRes_list */
static int* l_loadRes_list[3] = {
    l_loadRes_TKS0,
    l_loadRes_TKS1,
    l_loadRes_TKS2,
};

/* 80B1E1F4-80B1E200 -00001 000C+00 3/3 0/0 0/0 .data            l_arcNames */
static char* l_arcNames[3] = {
    "TKS",
    "J_tubo_00",
    "K_tubo02",
};

/* 80B1E200-80B1E208 -00001 0008+00 0/0 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtNames[2] = {
    (void*)NULL,
    (void*)(((char*)&d_a_npc_tks__stringBase0) + 0x17),
};
#pragma pop

/* 80B1E208-80B1E20C -00001 0004+00 9/11 0/0 0/0 .data            l_arcName */
static char* l_arcName = "TKS";

/* 80B1E20C-80B1E210 -00001 0004+00 8/9 0/0 0/0 .data            l_myName */
static char* l_myName = "Tks";

/* 80B1E210-80B1E21C -00001 000C+00 0/1 0/0 0/0 .data            @4682 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4682[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)damage__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E21C-80B1E228 -00001 000C+00 0/1 0/0 0/0 .data            @4685 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4685[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)broken__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E228-80B1E234 -00001 000C+00 0/1 0/0 0/0 .data            @4690 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4690[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_appear__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E234-80B1E240 -00001 000C+00 0/1 0/0 0/0 .data            @4849 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4849[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitNude__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E240-80B1E24C -00001 000C+00 0/1 0/0 0/0 .data            @4852 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4852[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)hide__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E24C-80B1E258 -00001 000C+00 0/1 0/0 0/0 .data            @4855 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4855[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_scannon__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E258-80B1E264 -00001 000C+00 0/1 0/0 0/0 .data            @4858 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4858[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_Lv6Gate__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E264-80B1E270 -00001 000C+00 0/1 0/0 0/0 .data            @4861 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4861[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_farewell__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E270-80B1E27C -00001 000C+00 0/1 0/0 0/0 .data            @4864 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4864[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_warpBack__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E27C-80B1E288 -00001 000C+00 0/1 0/0 0/0 .data            @4875 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4875[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_Lv3PickUp__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E288-80B1E294 -00001 000C+00 0/1 0/0 0/0 .data            @4878 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4878[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_walkBack__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E294-80B1E2A0 -00001 000C+00 0/1 0/0 0/0 .data            @4881 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4881[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitLv6__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E2A0-80B1E2AC -00001 000C+00 0/1 0/0 0/0 .data            @4884 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4884[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_Lv7Start__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E2AC-80B1E2B8 -00001 000C+00 0/1 0/0 0/0 .data            @4887 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4887[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_Lv3PickUp__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E2B8-80B1E2C4 -00001 000C+00 0/1 0/0 0/0 .data            @4890 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4890[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_Lv6PickUp__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E2C4-80B1E2D0 -00001 000C+00 1/1 0/0 0/0 .data            @5228 */
SECTION_DATA static void* lit_5228[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__10daNpcTks_cFv,
};

/* 80B1E2D0-80B1E2DC -00001 000C+00 1/1 0/0 0/0 .data            @5290 */
SECTION_DATA static void* lit_5290[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__10daNpcTks_cFv,
};

/* 80B1E2DC-80B1E2E8 -00001 000C+00 1/1 0/0 0/0 .data            @5371 */
SECTION_DATA static void* lit_5371[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__10daNpcTks_cFv,
};

/* 80B1E2E8-80B1E2F4 -00001 000C+00 0/1 0/0 0/0 .data            @5447 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5447[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shake__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E2F4-80B1E300 -00001 000C+00 0/1 0/0 0/0 .data            @5454 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5454[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shake__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E300-80B1E30C -00001 000C+00 0/1 0/0 0/0 .data            @5457 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5457[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)showUp__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E30C-80B1E318 -00001 000C+00 0/1 0/0 0/0 .data            @5462 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5462[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shake__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E318-80B1E324 -00001 000C+00 0/1 0/0 0/0 .data            @5465 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5465[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)showUp__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E324-80B1E330 -00001 000C+00 0/1 0/0 0/0 .data            @5469 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5469[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)showUp__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E330-80B1E33C -00001 000C+00 1/1 0/0 0/0 .data            @5511 */
SECTION_DATA static void* lit_5511[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)hide__10daNpcTks_cFv,
};

/* 80B1E33C-80B1E348 -00001 000C+00 1/1 0/0 0/0 .data            @5515 */
SECTION_DATA static void* lit_5515[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)showUp__10daNpcTks_cFv,
};

/* 80B1E348-80B1E354 -00001 000C+00 1/1 0/0 0/0 .data            @5544 */
SECTION_DATA static void* lit_5544[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)showUpWait__10daNpcTks_cFv,
};

/* 80B1E354-80B1E360 -00001 000C+00 0/1 0/0 0/0 .data            @5573 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5573[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)lookAroundA__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E360-80B1E36C -00001 000C+00 0/1 0/0 0/0 .data            @5576 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5576[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)lookAroundB__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E36C-80B1E378 -00001 000C+00 0/1 0/0 0/0 .data            @5581 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5581[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)lookAroundA__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E378-80B1E384 -00001 000C+00 0/1 0/0 0/0 .data            @5584 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5584[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)lookAroundB__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E384-80B1E390 -00001 000C+00 0/1 0/0 0/0 .data            @5587 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5587[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)in__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E390-80B1E39C -00001 000C+00 0/1 0/0 0/0 .data            @5591 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5591[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)in__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E39C-80B1E3A8 -00001 000C+00 1/1 0/0 0/0 .data            @5632 */
SECTION_DATA static void* lit_5632[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)showUpWait__10daNpcTks_cFv,
};

/* 80B1E3A8-80B1E3B4 -00001 000C+00 1/1 0/0 0/0 .data            @5636 */
SECTION_DATA static void* lit_5636[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)in__10daNpcTks_cFv,
};

/* 80B1E3B4-80B1E3C0 -00001 000C+00 1/1 0/0 0/0 .data            @5665 */
SECTION_DATA static void* lit_5665[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)showUpWait__10daNpcTks_cFv,
};

/* 80B1E3C0-80B1E3CC -00001 000C+00 1/1 0/0 0/0 .data            @5669 */
SECTION_DATA static void* lit_5669[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)in__10daNpcTks_cFv,
};

/* 80B1E3CC-80B1E3D8 -00001 000C+00 1/1 0/0 0/0 .data            @5698 */
SECTION_DATA static void* lit_5698[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)hide__10daNpcTks_cFv,
};

/* 80B1E3D8-80B1E3E4 -00001 000C+00 1/1 0/0 0/0 .data            @5726 */
SECTION_DATA static void* lit_5726[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)hide__10daNpcTks_cFv,
};

/* 80B1E3E4-80B1E3F0 -00001 000C+00 1/1 0/0 0/0 .data            @5775 */
SECTION_DATA static void* lit_5775[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitNude__10daNpcTks_cFv,
};

/* 80B1E3F0-80B1E3FC -00001 000C+00 0/1 0/0 0/0 .data            @5860 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5860[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E3FC-80B1E408 -00001 000C+00 0/1 0/0 0/0 .data            @5870 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5870[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__10daNpcTks_cFv,
};
#pragma pop

/* 80B1E408-80B1E428 -00001 0020+00 1/0 0/0 0/0 .data            daNpcTks_MethodTable */
static actor_method_class daNpcTks_MethodTable = {
    (process_method_func)daNpcTks_Create__FPv,
    (process_method_func)daNpcTks_Delete__FPv,
    (process_method_func)daNpcTks_Execute__FPv,
    (process_method_func)daNpcTks_IsDelete__FPv,
    (process_method_func)daNpcTks_Draw__FPv,
};

/* 80B1E428-80B1E458 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_TKS */
extern actor_process_profile_definition g_profile_NPC_TKS = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_TKS,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcTks_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  374,                    // mPriority
  &daNpcTks_MethodTable,  // sub_method
  0x08044108,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80B1E458-80B1E464 000374 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80B1E464-80B1E4AC 000380 0048+00 2/2 0/0 0/0 .data            __vt__10daNpcTks_c */
SECTION_DATA extern void* __vt__10daNpcTks_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10daNpcTks_cFv,
    (void*)setParam__10daNpcTks_cFv,
    (void*)main__10daNpcTks_cFv,
    (void*)ctrlBtk__10daNpcTks_cFv,
    (void*)adjustShapeAngle__8daNpcF_cFv,
    (void*)setMtx__10daNpcTks_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__10daNpcTks_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__10daNpcTks_cFib,
    (void*)setExpressionBtp__10daNpcTks_cFi,
    (void*)setExpression__10daNpcTks_cFif,
    (void*)setMotionAnm__10daNpcTks_cFif,
    (void*)setMotion__10daNpcTks_cFifi,
    (void*)drawDbgInfo__10daNpcTks_cFv,
    (void*)drawOtherMdls__10daNpcTks_cFv,
};

/* 80B1E4AC-80B1E4B8 0003C8 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B1E4B8-80B1E4DC 0003D4 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B1DD3C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B1DD34,
};

/* 80B1E4DC-80B1E4E8 0003F8 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B1E4E8-80B1E4F4 000404 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B1E4F4-80B1E500 000410 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B1E500-80B1E50C 00041C 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80B1E50C-80B1E518 000428 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 80B1E518-80B1E524 000434 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B1E524-80B1E530 000440 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B1462C-80B14844 0000EC 0218+00 1/1 0/0 0/0 .text            __ct__10daNpcTks_cFv */
daNpcTks_c::daNpcTks_c() {
    // NONMATCHING
}

/* 80B14844-80B14AF8 000304 02B4+00 1/0 0/0 0/0 .text            __dt__10daNpcTks_cFv */
daNpcTks_c::~daNpcTks_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1DD58-80B1DDF0 000000 0098+00 25/25 0/0 0/0 .rodata          m__16daNpcTks_Param_c */
daNpcTks_HIOParam const daNpcTks_Param_c::m = {
    90.0f,
    -3.0f,
    1.0f,
    150.0f,
    255.0f,
    80.0f,
    33.0f,
    25.0f,
    0.0f,
    0.0f,
    45.0f,
    -45.0f,
    30.0f,
    -10.0f,
    45.0f,
    -45.0f,
    0.8f,
    12.0f,
    3,
    6,
    19,
    6,
    80.0f,
    500.0f,
    300.0f,
    -300.0f,
    60,
    8,
    0,
    0,
    0,
    false,
    false,
    0x2D,
    0x96,
    30,
    0x5A,
    1000.0f,
    500.0f,
    35.0f,
    25.0f,
    7.0f,
    2.0f,
    5.0f,
};

/* 80B14AF8-80B14ED0 0005B8 03D8+00 1/1 0/0 0/0 .text            Create__10daNpcTks_cFv */
cPhs__Step daNpcTks_c::Create() {
    fopAcM_SetupActor(this, daNpcTks_c);

    if (dComIfGs_isStageBossEnemy()) {
        return cPhs_ERROR_e;
    }

    if (getType() == 0 || getType() == 0xFF || getType() == 6) {
        if (dComIfGs_isDungeonItemWarp()) {
            return cPhs_ERROR_e;
        }
    } else if (getType() == 3 &&
        /* dSv_event_flag_c::F_0267 - Temple of Time - Temple of Time clear */
        (!daNpcF_chkEvtBit(267) ||
        /* dSv_event_flag_c::F_0545 - Sacred Grove - Watched cutscene of Ooccoo Sr. parting (after Temple of Time) */
        daNpcF_chkEvtBit(545))) {
        return cPhs_ERROR_e;
    }

    if ((getType() == 0 || getType() == 0xFF) && !fopAcM_isSwitch(this, getSwitchNo())) {
        mTksTsubo.mTsuboType = getTsuboType();
    } else {
        mTksTsubo.mTsuboType = 2;
    }

    mMessageNo = getMessageNo();

    cPhs__Step phase = cPhs_ERROR_e;
    for (int i = 0; l_loadRes_list[mTksTsubo.mTsuboType][i] >= 0; i++) {
        phase = (cPhs__Step)dComIfG_resLoad(&mPhases[i], l_arcNames[l_loadRes_list[mTksTsubo.mTsuboType][i]]);
        if (phase != cPhs_COMPLEATE_e) {
            return phase;
        }
    }

    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x3870)) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -80.0f, -30.0f, -80.0f, 80.0f, 10.0f, 80.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);
        mTksTsubo.mSound.init(&mTksTsubo.mPos, &mTksTsubo.mPos, 3, 1);

        mAcchCir.SetWall(daNpcTks_Param_c::m.common.width, daNpcTks_Param_c::m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mAcch.SetRoofNone();
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        mCcStts.Init(daNpcTks_Param_c::m.common.weight, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgType(0);
        mCyl.SetTgSPrm(0);
        mCyl.SetH(daNpcTks_Param_c::m.common.height);
        mCyl.SetR(daNpcTks_Param_c::m.common.width);
        mTksTsubo.mCyl.Set(mCcDCyl);
        mTksTsubo.mCyl.SetStts(&mCcStts);
        mTksTsubo.mCyl.SetTgType(0xD8FBFDFF);
        mTksTsubo.mCyl.SetTgSPrm(17);
        mTksTsubo.mCyl.SetH(100.0f);
        mTksTsubo.mCyl.SetR(30.0f);

        setEnvTevColor();
        setRoomNo();
        reset();
        Execute();
    }

    return phase;
}

/* 80B14ED0-80B1521C 000990 034C+00 1/1 0/0 0/0 .text            CreateHeap__10daNpcTks_cFv */
int daNpcTks_c::CreateHeap() {
    // NONMATCHING
    J3DModelData* mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 30);

    JUT_ASSERT(410, 0 != mdlData_p);

    mpMorf = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11020284);
    if (mpMorf != NULL && mpMorf->getModel() == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }

    if (mpMorf == NULL) {
        return 0;
    }

    J3DModel* model = mpMorf->getModel();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);

    mpMatAnm = new daNpcF_MatAnm_c();
    if (mpMatAnm == NULL) {
        return 0;
    }

    if (!setExpressionAnm(1, false)) {
        return 0;
    }

    setMotion(0, -1.0f, 0);

    if (mTksTsubo.mTsuboType < 2) {
        mdlData_p = static_cast<J3DModelData*>(dComIfG_getObjectRes(mTksTsubo.mTsuboType != 0 ? l_arcNames[2] : l_arcNames[1], 3));

        JUT_ASSERT(453, 0 != mdlData_p);
        
        mTksTsubo.mpModelMorf = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, getTrnsfrmKeyAnmP(l_arcName, 0x16), -1, 1.0f, 0, -1, &mTksTsubo.mSound, 0x80000, 0x11000084);
        if (mTksTsubo.mpModelMorf == NULL) {
            return 0;
        }
    }

    return 1;
}

/* 80B153D8-80B1540C 000E98 0034+00 1/1 0/0 0/0 .text            Delete__10daNpcTks_cFv */
int daNpcTks_c::Delete() {
    this->~daNpcTks_c();
    return 1;
}

/* 80B1540C-80B15430 000ECC 0024+00 2/2 0/0 0/0 .text            Execute__10daNpcTks_cFv */
int daNpcTks_c::Execute() {
    execute();
    return 1;
}

/* 80B15430-80B1548C 000EF0 005C+00 1/1 0/0 0/0 .text            Draw__10daNpcTks_cFv */
int daNpcTks_c::Draw() {
    mpMorf->getModel()->getModelData()->getMaterialNodePointer(2)->setMaterialAnm(mpMatAnm);
    draw(FALSE, FALSE, daNpcTks_Param_c::m.common.real_shadow_size, NULL, FALSE);
    return 1;
}

/* 80B1548C-80B15650 000F4C 01C4+00 1/1 0/0 0/0 .text            ctrlJoint__10daNpcTks_cFP8J3DJointP8J3DModel */
int daNpcTks_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jntNo = i_joint->getJntNo();
    int i_jointList[3] = {0xF, 0x10, 0x11};

    if (jntNo == 0) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0xF));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0x10));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0x11));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jntNo));

    switch (jntNo) {
        case 0xF:
        case 0x10:
        case 0x11:
            setLookatMtx(jntNo, i_jointList, daNpcTks_Param_c::m.common.neck_rotation_ratio);
            break;
    }

    i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    if ((jntNo == 0x11 || jntNo == 0x13) && (mAnmFlags & ANM_PLAY_BCK) != 0) {
        J3DAnmTransform* anm = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mpMorf->getAnm());
        mpMorf->changeAnm(anm);
    }

    return 1;
}

/* 80B15650-80B15670 001110 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__10daNpcTks_cFP10fopAc_ac_c */
int daNpcTks_c::createHeapCallBack(fopAc_ac_c* a_this) {
    return static_cast<daNpcTks_c*>(a_this)->CreateHeap();
}

/* 80B15670-80B156BC 001130 004C+00 2/2 0/0 0/0 .text            ctrlJointCallBack__10daNpcTks_cFP8J3DJointi */
int daNpcTks_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpcTks_c* i_this = (daNpcTks_c*)model->getUserArea();

        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80B156BC-80B157C0 00117C 0104+00 1/0 0/0 0/0 .text            setMtx__10daNpcTks_cFv */
void daNpcTks_c::setMtx() {
    J3DModel* model = mpMorf->getModel();

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(scale);
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    model->setUserArea((u32)this);

    if (mTksTsubo.field_0x586 != 0) {
        if (field_0x138a != 0) {
            mTksTsubo.mPos = current.pos;
        } else {
            mDoMtx_stack_c::transS(mTksTsubo.mPos);
            mDoMtx_stack_c::ZXYrotM(mTksTsubo.mAngle);
        }

        model = mTksTsubo.mpModelMorf->getModel();
        model->setBaseTRMtx(mDoMtx_stack_c::get());
        mTksTsubo.mpModelMorf->modelCalc();
        mTksTsubo.mpModelMorf->getModel()->getModelData()->getJointNodePointer(0)->setMtxCalc(NULL);
    }

    if ((mAnmFlags & ANM_PLAY_BCK) != 0) {
        mBckAnm.getBckAnm()->setFrame(mBckAnm.getFrame());
    }

    mpMorf->modelCalc();
}

/* 80B157C0-80B1590C 001280 014C+00 1/0 0/0 0/0 .text            setExpressionAnm__10daNpcTks_cFib */
bool daNpcTks_c::setExpressionAnm(int i_index, bool i_modify) {
    mAnmFlags &= 0xFFFFE03F;

    J3DAnmTransform* i_bck = l_bckGetParamList[i_index].fileIdx >= 0 ? getTrnsfrmKeyAnmP(l_arcName, l_bckGetParamList[i_index].fileIdx) : NULL;
    int i_attr = l_bckGetParamList[i_index].attr;
    bool bVar1 = FALSE;
    
    switch (i_index) {
        case 0:
            bVar1 = setExpressionBtp(0);
            break;
        
        case 1:
            bVar1 = setExpressionBtp(0);
            break;

        default:
            i_bck = NULL;
            break;
    }

    if (!bVar1) {
        return false;
    }


    if (i_bck == NULL) {
        return true;
    }

    if (setBckAnm(i_bck, 1.0f, i_attr, 0, -1, i_modify)) {
        mAnmFlags |= ANM_PLAY_BCK | ANM_PAUSE_BCK;
        mExpressionLoops = 0;
        return true;
    }

    OS_REPORT("%s: 表情Bckアニメーションの登録に失敗しました！\n", "d_a_npc_tks.cpp");

    return false;
}

/* 80B1590C-80B159E0 0013CC 00D4+00 1/0 0/0 0/0 .text            setExpressionBtp__10daNpcTks_cFi */
bool daNpcTks_c::setExpressionBtp(int i_index) {
    J3DAnmTexPattern* i_btp = getTexPtrnAnmP(l_arcName, l_btpGetParamList[i_index].fileIdx);
    int i_attr = l_btpGetParamList[i_index].attr;

    mAnmFlags &= 0xFFFFF57F;

    if (i_btp == NULL) {
        return true;
    }

    if (setBtpAnm(i_btp, mpMorf->getModel()->getModelData(), 1.0f, i_attr)) {
        mAnmFlags |= ANM_PLAY_BTP | ANM_PAUSE_BTP;

        if (i_index == 0) {
            mAnmFlags |= ANM_FLAG_800;
        }

        return true;
    }

    OS_REPORT("%s: 表情Btpアニメーションの登録に失敗しました！\n", "d_a_npc_tks.cpp");

    return false;
}

/* 80B159E0-80B15A24 0014A0 0044+00 1/0 0/0 0/0 .text            setMotion__10daNpcTks_cFifi */
void daNpcTks_c::setMotion(int i_motion, f32 i_morf, int param_3) {
    s16 motion = i_motion;
    if ((param_3 != 0 || mMotion != motion) && i_motion >= 0 && i_motion < 8) {
        mMotion = motion;
        mMotionMorfOverride = i_morf;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
    }
}

/* 80B15A24-80B160A8 0014E4 0684+00 1/1 0/0 0/0 .text            reset__10daNpcTks_cFv */
void daNpcTks_c::reset() {
    // NONMATCHING
    initialize();
    mpMatAnm->initialize();
    mLookat.initialize();

    for (int i = 0; i < 1; i++) {
        mActorMngr[i].initialize();
    }

    attention_info.distances[fopAc_attn_CARRY_e] = 43;
    attention_info.flags = 0x10;
    field_0x1370 = 0;
    field_0x1374 = 0;
    mAction = NULL;
    mLookMode = -1;
    mMode = 0;
    field_0x138a = 1;
    field_0x1378 = -1;
    scale.setall(daNpcTks_Param_c::m.common.scale);

    dKy_tevstr_init(&mTksTsubo.mTevStr, fopAcM_GetRoomNo(this), 0xFF);
    setAngle(shape_angle.y);
    mTksTsubo.mPos = current.pos;
    mTksTsubo.mAngle = shape_angle;
    speedF = 0.0f;
    speed.setall(0.0f);
    mItemID = fpcM_ERROR_PROCESS_ID_e;
    mExpressionMorfOverride = 0.0f;
    mMotionMorfOverride = 0.0f;

    switch (getType()) {
        case 0:
        case 255:
            if (fopAcM_isSwitch(this, getSwitchNo())) {
                cLib_offBit<u32>(attention_info.flags, 0x10);
                field_0x138a = 0;
                mTksTsubo.field_0x586 = 0;
                setAction(&daNpcTks_c::waitNude);
            } else {
                mTksTsubo.field_0x586 = 1;
                setAction(&daNpcTks_c::hide);
            }
            break;

        case 1: {
            mTksTsubo.field_0x586 = 0;
            field_0x138a = 0;
            setAction(&daNpcTks_c::demo_scannon);
            cXyz i_pos(current.pos);
            i_pos.y += 60.0f;
            parentActorID = fopAcM_createChild(PROC_NPC_TKC, fopAcM_GetID(this), 3, &i_pos, fopAcM_GetRoomNo(this),
                                            &mCurAngle, NULL, -1, NULL);
            break;
        }

        case 2: {
            mTksTsubo.field_0x586 = 0;
            field_0x138a = 0;
            setAction(&daNpcTks_c::demo_Lv6Gate);
            cXyz i_pos(current.pos);
            i_pos.y += 60.0f;
            parentActorID = fopAcM_createChild(PROC_NPC_TKC, fopAcM_GetID(this), 3, &i_pos, fopAcM_GetRoomNo(this),
                                            &mCurAngle, NULL, -1, NULL);
            break;
        }

        case 3: {
            mTksTsubo.field_0x586 = 0;
            field_0x138a = 0;
            field_0x1370 = 10;
            setAction(&daNpcTks_c::demo_farewell);
            cXyz i_pos(current.pos);
            csXyz i_angle(0, fopAcM_searchPlayerAngleY(this), 0);
            i_pos.y += 60.0f;
            parentActorID = fopAcM_createChild(PROC_NPC_TKC, fopAcM_GetID(this), 4, &i_pos, fopAcM_GetRoomNo(this),
                                            &i_angle, NULL, -1, NULL);
            break;
        }

        case 4:
            mTksTsubo.field_0x586 = 0;
            field_0x138a = 0;
            setAction(&daNpcTks_c::demo_warpBack);
            break;

        case 5:
            mTksTsubo.field_0x586 = 0;
            field_0x138a = 0;

            if (strcmp(dComIfGp_getStartStageName(), "D_MN11") == 0) {
                field_0x1370 = 5;
            } else if (strcmp(dComIfGp_getStartStageName(), "D_MN07") == 0) {
                if (fopAcM_GetPosition_p(daPy_getPlayerActorClass())->y < 7500.0f) {
                    field_0x1370 = 5;
                } else {
                    field_0x1370 = 5;
                    setAction(&daNpcTks_c::demo_Lv3PickUp);
                    break;
                }
            } else {
                field_0x1370 = 0;
            }

            setAction(&daNpcTks_c::demo_walkBack);
            break;

        case 6: {
            mTksTsubo.field_0x586 = 0;
            field_0x138a = 0;
            setAction(&daNpcTks_c::waitLv6);
            cXyz i_pos(current.pos);
            i_pos.y += 60.0f;
            parentActorID = fopAcM_createChild(PROC_NPC_TKC, fopAcM_GetID(this), 4, &i_pos, fopAcM_GetRoomNo(this),
                                            &mCurAngle, NULL, -1, NULL);
            break;
        }

        case 7:
            mTksTsubo.field_0x586 = 0;
            field_0x138a = 0;
            gravity = 0.0f;
            setAction(&daNpcTks_c::demo_Lv7Start);
            break;

        case 8:
            mTksTsubo.field_0x586 = 0;
            field_0x138a = 0;
            setAction(&daNpcTks_c::demo_Lv3PickUp);
            break;

        case 9:
            mTksTsubo.field_0x586 = 0;
            field_0x138a = 0;
            setAction(&daNpcTks_c::demo_Lv6PickUp);
            break;

        default:
            JUT_ASSERT(1298, 0);
            break;
    }
}

/* 80B160A8-80B16148 001B68 00A0+00 1/1 0/0 0/0 .text            setAction__10daNpcTks_cFM10daNpcTks_cFPCvPv_v */
BOOL daNpcTks_c::setAction(actionFunc action) {
    mMode = 3;

    if (mAction) {
        (this->*mAction)();
    }

    mMode = 0;
    mAction = action;

    if (mAction) {
        (this->*mAction)();
    }

    return TRUE;
}

/* ############################################################################################## */
/* 80B1DE28-80B1DE34 0000D0 000C+00 0/1 0/0 0/0 .rodata          @5014 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5014[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1DE28, &lit_5014);
#pragma pop

/* 80B1DE34-80B1DE38 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5015 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5015[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B1DE34, &lit_5015);
#pragma pop

/* 80B1DE38-80B1DE44 0000E0 000C+00 0/1 0/0 0/0 .rodata          @5016 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5016[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1DE38, &lit_5016);
#pragma pop

/* 80B1DE44-80B1DE48 0000EC 0004+00 0/1 0/0 0/0 .rodata          @5017 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5017[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B1DE44, &lit_5017);
#pragma pop

/* 80B1DE48-80B1DE50 0000F0 0008+00 0/1 0/0 0/0 .rodata          @5018 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5018[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1DE48, &lit_5018);
#pragma pop

/* 80B1DE50-80B1DE5C 0000F8 000C+00 0/1 0/0 0/0 .rodata          @5022 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5022[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1DE50, &lit_5022);
#pragma pop

/* 80B1DE5C-80B1DE60 000104 0004+00 0/1 0/0 0/0 .rodata          @5023 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5023[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B1DE5C, &lit_5023);
#pragma pop

/* 80B1DE60-80B1DE6C 000108 000C+00 0/1 0/0 0/0 .rodata          @5024 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5024[12] = {
    0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1DE60, &lit_5024);
#pragma pop

/* 80B1DE6C-80B1DE70 000114 0004+00 0/1 0/0 0/0 .rodata          @5025 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5025[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B1DE6C, &lit_5025);
#pragma pop

/* 80B1DE70-80B1DE7C 000118 000C+00 0/1 0/0 0/0 .rodata          @5026 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5026[12] = {
    0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1DE70, &lit_5026);
#pragma pop

/* 80B1DE7C-80B1DE80 000124 0004+00 0/1 0/0 0/0 .rodata          @5027 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5027[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B1DE7C, &lit_5027);
#pragma pop

/* 80B1DE80-80B1DE8C 000128 000C+00 0/1 0/0 0/0 .rodata          @5028 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5028[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1DE80, &lit_5028);
#pragma pop

/* 80B1DE8C-80B1DE90 000134 0004+00 0/1 0/0 0/0 .rodata          @5029 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5029[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B1DE8C, &lit_5029);
#pragma pop

/* 80B1DE90-80B1DE9C 000138 000C+00 0/1 0/0 0/0 .rodata          @5030 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5030[12] = {
    0x00, 0x11, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B1DE90, &lit_5030);
#pragma pop

/* 80B1DE9C-80B1DEA8 000144 000C+00 0/1 0/0 0/0 .rodata          @5031 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5031[12] = {
    0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1DE9C, &lit_5031);
#pragma pop

/* 80B1DEA8-80B1DEB0 000150 0008+00 0/1 0/0 0/0 .rodata          @5032 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5032[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1DEA8, &lit_5032);
#pragma pop

/* 80B1DEB0-80B1DEBC 000158 000C+00 0/1 0/0 0/0 .rodata          @5033 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5033[12] = {
    0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B1DEB0, &lit_5033);
#pragma pop

/* 80B1DEBC-80B1DEC0 000164 0004+00 0/1 0/0 0/0 .rodata          @5034 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5034[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B1DEBC, &lit_5034);
#pragma pop

/* 80B1DEC0-80B1DECC 000168 000C+00 0/1 0/0 0/0 .rodata          @5035 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5035[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B1DEC0, &lit_5035);
#pragma pop

/* 80B1DECC-80B1DED8 000174 000C+00 0/1 0/0 0/0 .rodata          @5036 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5036[12] = {
    0x00, 0x02, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1DECC, &lit_5036);
#pragma pop

/* 80B1DED8-80B1DEE0 000180 0008+00 0/1 0/0 0/0 .rodata          @5037 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5037[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1DED8, &lit_5037);
#pragma pop

/* 80B1DEE0-80B1DEEC 000188 000C+00 0/1 0/0 0/0 .rodata          @5038 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5038[12] = {
    0x00, 0x03, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B1DEE0, &lit_5038);
#pragma pop

/* 80B1DEEC-80B1DEF0 000194 0004+00 0/1 0/0 0/0 .rodata          @5039 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5039[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B1DEEC, &lit_5039);
#pragma pop

/* 80B1DEF0-80B1DF10 000198 0020+00 0/0 0/0 0/0 .rodata          @5040 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5040[32] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1DEF0, &lit_5040);
#pragma pop

/* 80B1DF10-80B1DF20 0001B8 000C+04 0/1 0/0 0/0 .rodata          @5064 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5064[12 + 4 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
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
COMPILER_STRIP_GATE(0x80B1DF10, &lit_5064);
#pragma pop

BOOL daNpcTks_c::checkFindPlayer() {
    f32 fVar1 = pow(daNpcTks_Param_c::m.area_a_dist, 2.0);
    f32 fVar2 = fopAcM_searchPlayerDistanceXZ2(this);
    mActorMngr[0].remove();

    if (fVar2 <= fVar1) {
        mActorMngr[0].entry(daPy_getPlayerActorClass());
        return TRUE;
    }

    return FALSE;
}

void daNpcTks_c::setLookMode(int i_lookMode, fopAc_ac_c* actor_p) {
    if (i_lookMode >= 0 && i_lookMode < 6 && (i_lookMode != mLookMode || actor_p != field_0x1208)) {
        mLookMode = i_lookMode;
        field_0x1208 = actor_p;
    }
}

/* 80B16148-80B16344 001C08 01FC+00 3/0 0/0 0/0 .text            wait__10daNpcTks_cFv */
void daNpcTks_c::wait() {
    switch (mMode) {
        case 0:
            cLib_offBit<u32>(attention_info.flags, 0x10);
            setMotionAnm(2, 0.0f);
            field_0x138a = 0;
            speedF = 0.0f;
            mMode = 2;
            break;

        case 2:
            if (mActorMngr[0].getActorP() != NULL) {
                if (!checkFindPlayer()) {
                    mTurnMode = 0;
                }
            } else if (checkFindPlayer()) {
                mTurnMode = 0;
            }

            if (mActorMngr[0].getActorP() != NULL) {
                setLookMode(LOOK_PLAYER, NULL);
            } else {
                setLookMode(LOOK_NONE, NULL);
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1766, 0);
            break;
    }
}

void daNpcTks_c::setTsuboMotionAnm(int i_index, f32 i_morf) {
    J3DAnmTransform* i_anm = getTrnsfrmKeyAnmP(l_arcName, l_bckGetParamList[i_index].fileIdx);
    int i_attr = l_bckGetParamList[i_index].attr;

    mTksTsubo.mAnmFlags &= 0xFFFFFFF6;

    if (i_anm != NULL) {
        mTksTsubo.mpModelMorf->setAnm(i_anm, i_attr, i_morf, 1.0f, 0.0f, -1.0f);
        mTksTsubo.mAnmFlags |= ANM_PLAY_MORF | ANM_PAUSE_MORF;
    }
}

/* 80B16344-80B16634 001E04 02F0+00 1/0 0/0 0/0 .text            setMotionAnm__10daNpcTks_cFif */
void daNpcTks_c::setMotionAnm(int i_index, f32 i_morf) {
    // NONMATCHING
    if (i_index < 2 || i_index >= 0x16) {
        return;
    }

    J3DAnmTransformKey* i_anm = getTrnsfrmKeyAnmP(l_arcName, l_bckGetParamList[i_index].fileIdx);
    int i_attr = l_bckGetParamList[i_index].attr;

    mAnmFlags &= 0xFFFFFFE4;

    if (i_anm != NULL && setMcaMorfAnm(i_anm, 1.0f, i_morf, i_attr, 0, -1)) {
        mAnmFlags |= ANM_PLAY_MORF | ANM_PAUSE_MORF;
        mMotionLoops = 0;

        if (i_index == 0x14) {
            mpMorf->setPlaySpeed(speedF / daNpcTks_Param_c::m.walk_spd);
        } else {
            mpMorf->setPlaySpeed(1.0f);
        }

        if (field_0x138a != 0) {
            switch (i_index) {
                case 5:
                    setTsuboMotionAnm(0x10, i_morf);
                    break;
                
                case 9:
                    setTsuboMotionAnm(0xF, i_morf);
                    break;

                case 0xA:
                    setTsuboMotionAnm(0x10, i_morf);
                    break;

                default:
                    setTsuboMotionAnm(0xD, i_morf);
                    break;
            }
        }
    }

    J3DAnmTextureSRTKey* i_btk = getTexSRTKeyAnmP(l_arcName, l_btkGetParamList[0].fileIdx);
    i_attr = l_btkGetParamList[0].attr;

    if (i_btk != NULL) {
        if (setBtkAnm(i_btk, mpMorf->getModel()->getModelData(), 1.0f, i_attr)) {
            mAnmFlags |= ANM_PLAY_BTK | ANM_PAUSE_BTK;
        }
    }
}

/* 80B16634-80B1682C 0020F4 01F8+00 2/0 0/0 0/0 .text            waitNude__10daNpcTks_cFv */
void daNpcTks_c::waitNude() {
    // NONMATCHING
    switch (mMode) {
        case 0:
            cLib_offBit<u32>(attention_info.flags, 0x10);
            setMotionAnm(2, 0.0f);
            field_0x138a = 0;
            speedF = 0.0f;
            mMode = 2;
            break;

        case 2: {
            f32 fVar1 = current.pos.y - fopAcM_GetPosition_p(daPy_getPlayerActorClass())->y;

            if (fVar1 > -200.0f && fVar1 < 150.0f && fopAcM_searchPlayerDistanceXZ(this) <= 300.0f) {
                if (!fopAcM_otherBgCheck(this, daPy_getPlayerActorClass())) {
                    eventInfo.onCondition(dEvtCmd_INTALK_e);
                    fopAcM_orderSpeakEvent(this, 0, 0);
                }
            }

            if (dComIfGp_event_runCheck() && eventInfo.checkCommandTalk()) {
                dComIfGs_onDungeonItemWarp();

                if (getTBoxNo() != 0xFF) {
                    dComIfGs_onTbox(getTBoxNo());
                }

                Z2GetAudioMgr()->subBgmStart(Z2BGM_OBACHAN);
                setAction(&daNpcTks_c::talk);
            }
            break;
        }

        case 3:
            break;

        default:
            JUT_ASSERT(1805, 0);
            break;
    }
}

/* 80B1682C-80B16B74 0022EC 0348+00 1/0 0/0 0/0 .text            waitLv6__10daNpcTks_cFv */
void daNpcTks_c::waitLv6() {
    // NONMATCHING
    switch (mMode) {
        case 0:
            cLib_offBit<u32>(attention_info.flags, 0x10);
            setMotionAnm(2, 0.0f);
            field_0x138a = 0;
            speedF = 0.0f;
            mMode = 2;
            break;

        case 2:
            if (mActorMngr[0].getActorP() != NULL) {
                if (!checkFindPlayer()) {
                    mTurnMode = 0;
                }
            } else if (checkFindPlayer()) {
                mTurnMode = 0;
            }

            if (mActorMngr[0].getActorP() != NULL) {
                setLookMode(LOOK_PLAYER, NULL);
            } else {
                setLookMode(LOOK_NONE, NULL);
            }

            if (current.pos.y - fopAcM_GetPosition_p(daPy_getPlayerActorClass())->y < 100.0f && fopAcM_searchPlayerDistanceXZ(this) <= 400.0f) {
                attention_info.flags = 0x42;
                eventInfo.onCondition(dEvtCmd_INTALK_e);
                fopAcM_orderSpeakEvent(this, 0, 0);
            }

            if (dComIfGp_event_runCheck() && eventInfo.checkCommandTalk()) {
                dComIfGs_onDungeonItemWarp();

                if (getTBoxNo() != 0xFF) {
                    dComIfGs_onTbox(getTBoxNo());
                }

                Z2GetAudioMgr()->subBgmStart(Z2BGM_OBACHAN);
                setAction(&daNpcTks_c::talk);
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1858, 0);
            break;
    }
}

void daNpcTks_c::setExpressionTalkAfter() {
    setExpression(1, -1.0f);
}

BOOL daNpcTks_c::step(s16 i_turnTargetAngle, int param_2) {
    if (mTurnMode == 0) {
        if (param_2 != 0) {
            if ((int)fabsf(cM_sht2d((s16)(i_turnTargetAngle - mCurAngle.y))) > 40) {
                setExpression(1, -1.0f);
                setMotion(7, -1.0f, 0);
            }
        }

        mTurnTargetAngle = i_turnTargetAngle;
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
};

/* 80B16B74-80B16FDC 002634 0468+00 2/0 0/0 0/0 .text            talk__10daNpcTks_cFv */
void daNpcTks_c::talk() {
    // NONMATCHING
    switch (mMode) {
        case 0:
            setMotion(0, -1.0f, 0);
            initTalk(mMessageNo, NULL);
            mMsgTimer = 0;
            mTurnMode = 0;
            setLookMode(LOOK_PLAYER_TALK, NULL);
            mMode = 2;
            break;

        case 2: {
            if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                if (talkProc(NULL, TRUE, NULL)) {
                    mActorMngr[0].entry(daPy_getPlayerActorClass());
                    int itemNo = 0;

                    OS_REPORT("会話終了時 イベントID=%d アイテムNo=%d\n", mFlow.getEventId(&itemNo), itemNo);
                    
                    if (mFlow.getEventId(&itemNo) == 1) {
                        mItemID = fopAcM_createItemForPresentDemo(&current.pos, itemNo, 0, -1, -1, NULL, NULL);

                        if (mItemID != fpcM_ERROR_PROCESS_ID_e) {
                            const char* eventName = daPy_py_c::checkNowWolf() ? "WOLF_GET_TKS" : "DEFAULT_GETITEM";
                            s16 eventIdx = dComIfGp_getEventManager().getEventIdx(this, eventName, 0xFF);
                            dComIfGp_getEvent().reset(this);
                            fopAcM_orderChangeEventId(this, eventIdx, 1, 0xFFFF);
                        }
                    }

                    setAction(&daNpcTks_c::wait);
                } else {
                    int msgTimer = mMsgTimer;
                    int i_expression, i_motion;

                    if (ctrlMsgAnm(i_expression, i_motion, this, FALSE)) {
                        setExpression(i_expression, -1.0f);
                        setMotion(i_motion, -1.0f, 0);
                    } else if (msgTimer != 0 && mMsgTimer == 0) {
                        setExpressionTalkAfter();
                    }
                }
            } else if (step(fopAcM_searchPlayerAngleY(this), 1)) {
                setMotion(0, -1.0f, 0);
                mTurnMode = 0;
            }
            break;
        }

        case 3:
            break;

        default:
            JUT_ASSERT(1920, 0);
            break;
    }
}

/* 80B16FDC-80B17008 002A9C 002C+00 1/0 0/0 0/0 .text            setExpression__10daNpcTks_cFif */
void daNpcTks_c::setExpression(int i_expression, f32 i_morf) {
    if (i_expression >= 0 && i_expression < 2) {
        mExpression = i_expression;
        mExpressionMorfOverride = i_morf;
        mExpressionPrevPhase = -1;
        mExpressionPhase = 0;
    }
}

/* 80B17008-80B17420 002AC8 0418+00 4/0 0/0 0/0 .text            hide__10daNpcTks_cFv */
void daNpcTks_c::hide() {
    // NONMATCHING
    switch (mMode) {
        case 0:
            setMotionAnm(4, 0.0f);
            field_0x138a = 1;
            field_0x1370 = cLib_getRndValue<int>(daNpcTks_Param_c::m.hide_time_1, daNpcTks_Param_c::m.hide_time_2 - daNpcTks_Param_c::m.hide_time_1);
            speedF = 0.0f;
            mMode = 2;
            break;

        case 2: {
            int iVar1 = --field_0x1370;
            if (iVar1 <= 0) {
                if (field_0x1378 == 1) {
                    setAction(&daNpcTks_c::shake);
                } else if (field_0x1378 == 0) {
                    if (cLib_getRndValue(0, 2) == 0) {
                        setAction(&daNpcTks_c::shake);
                    } else {
                        setAction(&daNpcTks_c::showUp);
                    }
                } else {
                    if (cLib_getRndValue(0, 2) == 0) {
                        setAction(&daNpcTks_c::shake);
                    } else {
                        setAction(&daNpcTks_c::showUp);
                    }
                }
            }

            if (field_0x1378 == 0) {
                setAction(&daNpcTks_c::showUp);
            }
            break;
        }

        case 3:
            break;

        default:
            JUT_ASSERT(1960, 0);
            break;
    }
}

/* 80B17420-80B175F4 002EE0 01D4+00 3/0 0/0 0/0 .text            shake__10daNpcTks_cFv */
void daNpcTks_c::shake() {
    // NONMATCHING
    switch (mMode) {
        case 0:
            setMotionAnm(0xA, 0.0f);
            field_0x138a = 1;
            speedF = 0.0f;
            mMode = 2;
            break;
        
        case 2:
            if (mpMorf->isStop()) {
                setAction(&daNpcTks_c::hide);
            }

            if (field_0x1378 == 0) {
                setAction(&daNpcTks_c::showUp);
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1986, 0);
            break;
    }
}

/* 80B175F4-80B17734 0030B4 0140+00 4/0 0/0 0/0 .text            showUp__10daNpcTks_cFv */
void daNpcTks_c::showUp() {
    // NONMATCHING
    switch (mMode) {
        case 0:
            setMotionAnm(5, 0.0f);
            field_0x138a = 1;
            speedF = 0.0f;
            mMode = 2;
            break;
        
        case 2:
            if (mpMorf->isStop()) {
                setAction(&daNpcTks_c::showUpWait);
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(2011, 0);
            break;
    }
}

/* 80B17734-80B17B70 0031F4 043C+00 3/0 0/0 0/0 .text            showUpWait__10daNpcTks_cFv */
void daNpcTks_c::showUpWait() {
    // NONMATCHING
    switch (mMode) {
        case 0:
            setMotionAnm(6, 0.0f);
            field_0x138a = 1;
            field_0x1370 = cLib_getRndValue<int>(daNpcTks_Param_c::m.show_up_wait_time_1, daNpcTks_Param_c::m.show_up_wait_time_2 - daNpcTks_Param_c::m.show_up_wait_time_1);
            speedF = 0.0f;
            mMode = 2;
            break;

        case 2: {
            int iVar1 = --field_0x1370;

            if (iVar1 <= 0) {
                if (field_0x1378 == 0) {
                    switch (cLib_getRndValue(0, 2)) {
                        case 0:
                            setAction(&daNpcTks_c::lookAroundA);
                            break;
                        
                        case 1:
                            setAction(&daNpcTks_c::lookAroundB);
                            break;
                    }
                } else {
                    switch (cLib_getRndValue(0, 3)) {
                        case 0:
                            setAction(&daNpcTks_c::lookAroundA);
                            break;

                        case 1:
                            setAction(&daNpcTks_c::lookAroundB);
                            break;

                        case 2:
                            setAction(&daNpcTks_c::in);
                            break;
                    }
                }
            }

            if (field_0x1378 == 1) {
                setAction(&daNpcTks_c::in);
            }
            break;
        }

        case 3:
            break;

        default:
            JUT_ASSERT(2056, 0);
            break;
    }
}

/* 80B17B70-80B17D44 003630 01D4+00 2/0 0/0 0/0 .text            lookAroundA__10daNpcTks_cFv */
void daNpcTks_c::lookAroundA() {
    // NONMATCHING
    switch (mMode) {
        case 0:
            setMotionAnm(7, 0.0f);
            field_0x138a = 1;
            speedF = 0.0f;
            mMode = 2;
            break;
        
        case 2:
            if (mpMorf->isStop()) {
                setAction(&daNpcTks_c::showUpWait);
            }

            if (field_0x1378 == 1) {
                setAction(&daNpcTks_c::in);
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(2082, 0);
            break;
    }
}

/* 80B17D44-80B17F18 003804 01D4+00 2/0 0/0 0/0 .text            lookAroundB__10daNpcTks_cFv */
void daNpcTks_c::lookAroundB() {
    // NONMATCHING
    switch (mMode) {
        case 0:
            setMotionAnm(8, 0.0f);
            field_0x138a = 1;
            speedF = 0.0f;
            mMode = 2;
            break;
        
        case 2:
            if (mpMorf->isStop()) {
                setAction(&daNpcTks_c::showUpWait);
            }

            if (field_0x1378 == 1) {
                setAction(&daNpcTks_c::in);
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(2082, 0);
            break;
    }
}

/* 80B17F18-80B18070 0039D8 0158+00 4/0 0/0 0/0 .text            in__10daNpcTks_cFv */
void daNpcTks_c::in() {
    // NONMATCHING
    switch (mMode) {
        case 0:
            setMotionAnm(9, 0.0f);
            setLookMode(LOOK_NONE, NULL);
            field_0x138a = 1;
            mMode = 2;
            break;
        
        case 2:
            if (mpMorf->isStop()) {
                setAction(&daNpcTks_c::hide);
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(2133, 0);
            break;
    }
}

/* 80B18070-80B181EC 003B30 017C+00 1/0 0/0 0/0 .text            damage__10daNpcTks_cFv */
void daNpcTks_c::damage() {
    // NONMATCHING
    switch (mMode) {
        case 0:
            setMotionAnm(0xA, 0.0f);
            cLib_offBit<u32>(attention_info.flags, 0x10);
            field_0x138a = 1;
            speedF = 0.0f;
            mMode = 2;
            break;
        
        case 2:
            if (mpMorf->isStop()) {
                setAction(&daNpcTks_c::hide);
            }

            if (mTksTsubo.mCyl.ChkTgHit()) {
                mMode = 0;
            }
            break;

        case 3:
            cLib_onBit<u32>(attention_info.flags, 0x10);
            break;

        default:
            JUT_ASSERT(2162, 0);
            break;
    }
}

/* 80B181EC-80B183E8 003CAC 01FC+00 1/0 0/0 0/0 .text            broken__10daNpcTks_cFv */
void daNpcTks_c::broken() {
    // NONMATCHING
    switch (mMode) {
        case 0:
            setMotionAnm(0xB, 0);

            if (mTksTsubo.mTsuboType == 0) {
                daObj::make_eff_break_kotubo(this);
            } else {
                daObj::make_eff_break_kotubo2(this);
            }

            mTksTsubo.mSound.startCreatureSound(Z2SE_TKS_V_OUT_OF_POT, 0, -1);
            cLib_offBit<u32>(attention_info.flags, 0x10);
            field_0x138a = 0;
            mTksTsubo.field_0x586 = 0;
            fopAcM_onSwitch(this, getSwitchNo());
            speedF = 0.0f;
            speed.y = daNpcTks_Param_c::m.launch_spd;
            mMode = 2;
            break;
        
        case 2:
            if (mAcch.ChkGroundLanding()) {
                setMotion(6, -1.0f, 0);
            } else if (mAcch.ChkGroundHit() && mpMorf->isStop()) {
                setAction(&daNpcTks_c::waitNude);
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(2199, 0);
    }
}

/* 80B183E8-80B18D44 003EA8 095C+00 1/0 0/0 0/0 .text            demo_appear__10daNpcTks_cFv */
void daNpcTks_c::demo_appear() {
    // NONMATCHING
    switch (mMode) {
        case 0:
            eventInfo.setArchiveName(l_arcName);
            mEventIdx = dComIfGp_getEventManager().getEventIdx(this, "TKS_ENCOUNTER", 0xFF);
            fopAcM_orderOtherEventId(this, mEventIdx, 0xFF, 0xFFFF, 4, 1);
            cLib_offBit<u32>(attention_info.flags, 0x10);
            setExpression(1, -1.0f);
            setMotionAnm(4, 0.0f);
            mMode = 2;
            // fallthrough
        case 2:
            if (dComIfGp_event_runCheck() != FALSE && !eventInfo.checkCommandTalk()) {
                dEvent_manager_c& eventManager = dComIfGp_getEventManager();
                s32 staffId = eventManager.getMyStaffId(l_myName, NULL, 0);
                if (staffId != -1) {
                    if (!dComIfGs_isDungeonItemWarp()) {
                        dComIfGs_onDungeonItemWarp();
                        
                        if (getTBoxNo() != 0xFF) {
                            dComIfGs_onTbox(getTBoxNo());
                        }

                        Z2GetAudioMgr()->bgmAllMute(60, 0.0f);
                    }

                    int* cutName = (int*)eventManager.getMyNowCutName(staffId);

                    if (eventManager.getIsAddvance(staffId)) {
                        switch (*cutName) {
                            case '0001':
                                break;

                            case '0002':
                                setMotionAnm(0xA, 0.0f);
                                break;

                            case '0003':
                                setMotionAnm(0xB, 0.0f);
                                setLookMode(LOOK_NONE, NULL);

                                if (mTksTsubo.mTsuboType != 0) {
                                    daObj::make_eff_break_kotubo2(this);
                                } else {
                                    daObj::make_eff_break_kotubo(this);
                                }

                                dComIfGp_getVibration().StartShock(2, 15, cXyz(0.0f, 1.0f, 0.0f));
                                mTksTsubo.mSound.startCreatureSound(Z2SE_TKS_V_OUT_OF_POT, 0, -1);
                                fopAcM_cancelCarryNow(this);
                                cLib_offBit<u32>(attention_info.flags, 0x10);
                                field_0x138a = 0;
                                mTksTsubo.field_0x586 = 0;
                                speedF = daNpcTks_Param_c::m.movement_spd;
                                speed.y = daNpcTks_Param_c::m.launch_spd;
                                break;

                            case '0004':
                                setLookMode(LOOK_PLAYER, NULL);
                                mTurnMode = 0;
                                Z2GetAudioMgr()->subBgmStart(Z2BGM_OBACHAN);
                                Z2GetAudioMgr()->bgmAllUnMute(0);
                                break;

                            case '0005':
                                initTalk(mMessageNo, NULL);
                                mMsgTimer = 0;
                                setLookMode(LOOK_PLAYER_TALK, NULL);
                                break;

                            default:
                                JUT_ASSERT(2277, 0);
                                break;
                        }
                    }

                    int msgTimer = mMsgTimer;
                    int i_expression, i_motion;

                    if (ctrlMsgAnm(i_expression, i_motion, this, TRUE)) {
                        setExpression(i_expression, -1.0f);
                        setMotion(i_motion, -1.0f, 0);
                    } else if (msgTimer != 0 && mMsgTimer == 0) {
                        setExpressionTalkAfter();
                    }

                    switch (*cutName) {
                        case '0001':
                            eventManager.cutEnd(staffId);
                            break;

                        case '0002':
                            if (mpMorf->isStop()) {
                                eventManager.cutEnd(staffId);
                            }
                            break;

                        case '0003':
                            setAngle(shape_angle.y);
                            mTksTsubo.mAngle = shape_angle;

                            if (mAcch.ChkGroundLanding()) {
                                speedF = 0.0f;
                                setMotion(6, -1.0f, 0);
                            } else if (mAcch.ChkGroundHit() && mMotionPhase > 0) {
                                setMotionAnm(2, 0.0f);
                                eventManager.cutEnd(staffId);
                            }
                            break;

                        case '0004':
                            if (step(fopAcM_searchPlayerAngleY(this), 1)) {
                                setMotionAnm(2, 0.0f);
                                eventManager.cutEnd(staffId);
                            }
                            break;

                        case '0005':
                            if (talkProc(NULL, TRUE, NULL)) {
                                mActorMngr[0].entry(daPy_getPlayerActorClass());
                                int itemNo = 0;

                                OS_REPORT("会話終了時 イベントID=%d アイテムNo=%d\n", mFlow.getEventId(&itemNo), itemNo);

                                if (mFlow.getEventId(&itemNo) == 1) {
                                    mItemID = fopAcM_createItemForPresentDemo(&current.pos, itemNo, 0, -1, -1, NULL, NULL);

                                    if (mItemID != fpcM_ERROR_PROCESS_ID_e) {
                                        s16 eventIdx = dComIfGp_getEventManager().getEventIdx(this, "DEFAULT_GETITEM", 0xFF);
                                        dComIfGp_getEvent().reset(this);
                                        fopAcM_orderChangeEventId(this, eventIdx, 1, 0xFFFF);
                                        field_0x9ec = true;
                                    }
                                }

                                setAction(&daNpcTks_c::wait);
                                eventManager.cutEnd(staffId);
                            }
                            break;

                        default:
                            JUT_ASSERT(2339, 0);
                            break;
                    }

                    if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && eventManager.endCheck(mEventIdx) != 0) {
                        if (!field_0x9ec) {
                            dComIfGp_event_reset();
                        }

                        mEventIdx = -1;
                        setAction(&daNpcTks_c::wait);
                    }
                }
            }
            break;
        
        case 3:
            break;

        default:
            JUT_ASSERT(2356, 0);
    }
}

/* 80B18D44-80B1926C 004804 0528+00 1/0 0/0 0/0 .text            demo_scannon__10daNpcTks_cFv */
void daNpcTks_c::demo_scannon() {
    switch (mMode) {
        case 0:
            cLib_offBit<u32>(attention_info.flags, 0x10);
            setExpression(1, -1.0f);
            setMotion(0, -1.0f, 0);
            field_0x138a = 0;
            mMode = 2;
            // fallthrough
        case 2:
            if (dComIfGp_event_runCheck() != FALSE && !eventInfo.checkCommandTalk()) {
                dEvent_manager_c& eventManager = dComIfGp_getEventManager();
                s32 staffId = eventManager.getMyStaffId(l_myName, NULL, 0);

                if (staffId != -1) {
                    int* cutName = (int*)eventManager.getMyNowCutName(staffId);

                    if (eventManager.getIsAddvance(staffId)) {
                        switch (*cutName) {
                            case '0001':
                                break;
                            
                            case '0002':
                                old.pos.set(-98491.23f, -18346.793f, 52057.156f);
                                current.pos = old.pos;
                                setAngle(-0x2CA2);
                                speedF = 25.0f;
                                setMotion(2, -1.0f, 0);
                                break;

                            case '0003':
                                setMotion(4, 0.0f, 0);
                                mpMorf->setPlaySpeed(1.0f);
                                setAngle(0);
                                speedF = 0.0f;
                                speed.y = 0.0f;
                                break;

                            default:
                                JUT_ASSERT(2405, 0);
                                break;
                        }
                    }

                    switch (*cutName) {
                        case '0001':
                            eventManager.cutEnd(staffId);
                            break;

                        case '0002': {
                            cXyz sp1c(-102070.93f, -18470.0f, 53544.613f);
                            setAngle(cLib_targetAngleY(&current.pos, &sp1c));
                            fopAcM_effSmokeSet2(&field_0x137c[0], &field_0x137c[1], &current.pos, &mCurAngle, 1.0f, &tevStr);

                            for (int i = 0; i < 2; i++) {
                                JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x137c[i]);
                                if (emitter != NULL) {
                                    emitter->setRate(1.0f);
                                    emitter->setLifeTime(30);
                                    emitter->setGlobalAlpha(0x80);
                                    emitter->setGlobalParticleScale(2.5f, 2.5f);
                                }
                            }

                            mSound.startCreatureVoiceLevel(Z2SE_TKS_V_RUNNING_LOOP, -1);

                            if (current.pos.absXZ(sp1c) < speedF) {
                                current.pos.set(sp1c);
                                speedF = 0.0f;
                                eventManager.cutEnd(staffId);
                            }
                            break;
                        }

                        case '0003':
                            if (mMotionPhase == 0 && mpMorf->checkFrame(9.0f)) {
                                speedF = 25.0f;
                                speed.y = 60.0f;
                                mSound.startCreatureSound(Z2SE_TKS_V_JUMP_UP, 0, -1);
                            }

                            if (speedF > 0.0f && mAcch.ChkGroundLanding()) {
                                speedF = 0.0f;
                                speed.y = 0.0f;
                                eventManager.cutEnd(staffId);
                                fopAcM_delete(this);
                            }
                            break;

                        default:
                            JUT_ASSERT(2473, 0);
                            break;
                    }
                }
            }
            break;
        
        case 3:
            break;

        default:
            JUT_ASSERT(2479, 0);
            break;
    }
}

/* 80B1926C-80B1946C 004D2C 0200+00 1/0 0/0 0/0 .text            demo_Lv6Gate__10daNpcTks_cFv */
void daNpcTks_c::demo_Lv6Gate() {
    switch (mMode) {
        case 0:
            cLib_offBit<u32>(attention_info.flags, 0x10);
            setExpression(1, -1.0f);
            setMotion(0, -1.0f, 0);
            field_0x138a = 0;
            mMode = 2;
            // fallthrough
        case 2:
            if (dComIfGp_event_runCheck() != FALSE && !eventInfo.checkCommandTalk()) {
                dEvent_manager_c& eventManager = dComIfGp_getEventManager();
                s32 staffId = eventManager.getMyStaffId(l_myName, NULL, 0);

                if (staffId != -1) {
                    int* cutName = (int*)eventManager.getMyNowCutName(staffId);

                    if (eventManager.getIsAddvance(staffId)) {
                        switch (*cutName) {
                            case '0001':
                                break;

                            case '0002':
                                field_0x1370 = 320;
                                speedF = 13.0f;
                                setMotion(2, -1.0f, 0);
                                dComIfGp_event_setTalkPartner(this);
                                break;

                            default:
                                JUT_ASSERT(2520, 0);
                                break;
                        }
                    }

                    switch (*cutName) {
                        case '0001':
                            eventManager.cutEnd(staffId);
                            break;
                        
                        case '0002':
                            mSound.startCreatureVoiceLevel(Z2SE_TKS_V_RUNNING_LOOP, -1);

                            if (cLib_calcTimer<int>(&field_0x1370) == 0) {
                                eventManager.cutEnd(staffId);
                                fopAcM_delete(this);
                            }
                            break;

                        default:
                            JUT_ASSERT(2535, 0);
                    }
                }
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(2541, 0);
            break;
    }
}

/* 80B1946C-80B19DAC 004F2C 0940+00 1/0 0/0 0/0 .text            demo_farewell__10daNpcTks_cFv */
void daNpcTks_c::demo_farewell() {
    switch (mMode) {
        case 0:
            if (cLib_calcTimer<int>(&field_0x1370) > 0 || dComIfGp_event_runCheck() != FALSE) {
                return;
            }

            eventInfo.setArchiveName(l_arcName);
            mEventIdx = dComIfGp_getEventManager().getEventIdx(this, "TKS_FAREWELL", 0xFF);
            fopAcM_orderOtherEventId(this, mEventIdx, 0xFF, 0xFFFF, 4, 1);
            cLib_offBit<u32>(attention_info.flags, 0x10);
            setExpression(1, -1.0f);
            setMotionAnm(2, 0.0f);

            /* dSv_event_flag_c::F_0545 - Sacred Grove - Watched cutscene of Ooccoo Sr. parting (after Temple of Time) */
            daNpcF_onEvtBit(545);
            Z2GetAudioMgr()->subBgmStart(Z2BGM_OBACHAN);
            mMode = 2;
            // fallthrough
        case 2:
            if (dComIfGp_event_runCheck() != FALSE && !eventInfo.checkCommandTalk()) {
                dEvent_manager_c& eventManager = dComIfGp_getEventManager();
                s32 staffId = eventManager.getMyStaffId(l_myName, NULL, 0);

                if (staffId != -1) {
                    int* cutName = (int*)eventManager.getMyNowCutName(staffId);

                    if (eventManager.getIsAddvance(staffId)) {
                        switch (*cutName) {
                            case '0001':
                                dComIfGp_getEvent().setSkipZev(this, "TKS_FAREWELL_SKIP");
                                // fallthrough
                            case '0006':
                            case '0007':
                            case '0008':
                            case '0009':
                                initTalk(mMessageNo, NULL);
                                mMsgTimer = 0;
                                setLookMode(LOOK_PLAYER_TALK, NULL);
                                setAngle(fopAcM_searchPlayerAngleY(this));
                                break;
                            
                            case '0002':
                                setLookMode(LOOK_NONE, NULL);
                                break;

                            case '0003': {
                                daNpcTkc_c* actor_p = NULL;
                                fopAcM_SearchByID(parentActorID, (fopAc_ac_c**)&actor_p);
                                if (actor_p != NULL) {
                                    actor_p->setActionFollow();
                                }

                                setMotion(2, -1.0f, 0);
                                speedF = 10.0f;
                                break;
                            }

                            case '0004':
                                setMotion(4, -1.0f, 0);
                                setAngle(0x16EA);
                                break;
                            
                            case '0005':
                                break;

                            case '0010':
                                break;

                            case '0011':
                                Z2GetAudioMgr()->subBgmStop();
                                fopAcM_delete(this);
                                break;

                            default:
                                JUT_ASSERT(2627, 0);
                                break;
                        }
                    }

                    int msgTimer = mMsgTimer;
                    int i_expression, i_motion;

                    if (ctrlMsgAnm(i_expression, i_motion, this, TRUE)) {
                        setExpression(i_expression, -1.0f);
                        setMotion(i_motion, -1.0f, 0);
                    } else if (msgTimer != 0 && mMsgTimer == 0) {
                        setExpressionTalkAfter();
                    }

                    switch (*cutName) {
                        case '0001':
                        case '0006':
                        case '0007':
                        case '0008':
                        case '0009':
                            if (talkProc(NULL, TRUE, NULL)) {
                                eventManager.cutEnd(staffId);
                            }
                            break;
                            
                        case '0002': {
                            cXyz* pos = dComIfGp_evmng_getMyXyzP(staffId, "pos");
                            if (pos != NULL) {
                                if (step(cLib_targetAngleY(&current.pos, pos), 1)) {
                                    mTurnMode = 0;
                                    eventManager.cutEnd(staffId);
                                }
                            }
                            break;
                        }

                        case '0003': {
                            cXyz* pos = dComIfGp_evmng_getMyXyzP(staffId, "pos");
                            if (pos != NULL && current.pos.abs(*pos) <= speedF) {
                                setMotion(0, -1.0f, 0);
                                current.pos = *pos;
                                speedF = 0.0f;
                                eventManager.cutEnd(staffId);
                            }

                            mSound.startCreatureVoiceLevel(Z2SE_TKS_V_RUNNING_LOOP, -1);
                            break;
                        }

                        case '0004': {
                            cXyz* pos = dComIfGp_evmng_getMyXyzP(staffId, "pos");

                            if (mMotion == 4) {
                                if (mMotionPhase == 0 && mpMorf->checkFrame(9.0f)) {
                                    speedF = 15.0f;
                                    speed.y = 60.0f;
                                    mSound.startCreatureSound(Z2SE_TKS_V_JUMP_UP, 0, -1);
                                } else if (speedF > 0.0f && mAcch.ChkGroundLanding()) {
                                    setMotion(5, -1.0f, 0);
                                    speedF = 0.0f;
                                    speed.y = 0.0f;
                                }
                            } else if (mMotion == 5 && mpMorf->isStop()) {
                                Z2GetAudioMgr()->subBgmStop();
                                eventManager.cutEnd(staffId);
                            }
                            break;
                        }

                        case '0005':
                            break;

                        case '0010':
                        case '0011':
                            eventManager.cutEnd(staffId);
                            break;

                        default:
                            JUT_ASSERT(2711, 0);
                            break;
                    }

                    if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && eventManager.endCheck(mEventIdx)) {
                        dComIfGp_event_reset();
                        fopAcM_delete(this);
                        mEventIdx = -1;
                    }
                }
            }
            break;
        
        case 3:
            break;

        default:
            JUT_ASSERT(2737, 0);
    }
}

/* 80B19DAC-80B1A30C 00586C 0560+00 1/0 0/0 0/0 .text            demo_warpBack__10daNpcTks_cFv */
void daNpcTks_c::demo_warpBack() {
    switch (mMode){
        case 0:
            eventInfo.setArchiveName(l_arcName);
            mEventIdx = dComIfGp_getEventManager().getEventIdx(this, "TKS_WARPBACK", 0xFF);
            fopAcM_orderOtherEventId(this, mEventIdx, 0xFF, 0xFFFF, 4, 1);
            cLib_offBit<u32>(attention_info.flags, 0x10);
            setExpression(1, -1.0f);
            setMotionAnm(2, 0.0f);
            setLookMode(LOOK_PLAYER_TALK, NULL);

            if (strcmp(dComIfGp_getStartStageName(), "D_MN11") == 0 && dComIfGp_getStartStageRoomNo() == 3) {
                cXyz* pcVar1 = fopAcM_GetPosition_p(daPy_getPlayerActorClass());
                if (pcVar1->y >= 950.0f) {
                    if (pcVar1->x == 3700.0f && pcVar1->z == -4220.0f) {
                        current.pos.set(3500.0f, 950.0f, -4220.0f);
                        setAngle(0x4000);
                    } else if (pcVar1->x == 3360.0f && pcVar1->z == -2010.0f) {
                        current.pos.set(3360.0f, 950.0f, -1810.0f);
                        setAngle(0x7FFF);
                    }

                    old.pos = current.pos;
                }
            }

            mMode = 2;
            // fallthrough
        case 2:
            if (dComIfGp_event_runCheck() != FALSE && !eventInfo.checkCommandTalk()) {
                dEvent_manager_c& eventManager = dComIfGp_getEventManager();
                s32 staffId = eventManager.getMyStaffId(l_myName, NULL, 0);

                if (staffId != -1) {
                    int* cutName = (int*)eventManager.getMyNowCutName(staffId);

                    if (eventManager.getIsAddvance(staffId)) {
                        switch (*cutName) {
                            case '0001':
                                dComIfGs_resetLastWarpAcceptStage();
                                break;

                            case '0002':
                                initTalk(3, NULL);
                                mMsgTimer = 0;
                                setAngle(fopAcM_searchPlayerAngleY(this));
                                break;

                            case '0003':
                                mCyl.OffCoSetBit();
                                setMotion(4, -1.0f, 0);
                                speedF = 0.0f;
                                speed.y = 0.0f;
                                scale.setall(1.0f);
                                break;

                            default:
                                JUT_ASSERT(2809, 0);
                        }
                    }

                    int msgTimer = mMsgTimer;
                    int i_expression, i_motion;

                    if (ctrlMsgAnm(i_expression, i_motion, this, TRUE)) {
                        setExpression(i_expression, -1.0f);
                        setMotion(i_motion, -1.0f, 0);
                    } else if (msgTimer != 0 && mMsgTimer == 0) {
                        setExpressionTalkAfter();
                    }

                    switch (*cutName) {
                        case '0001':
                            eventManager.cutEnd(staffId);
                            break;
                        
                        case '0002':
                            if (talkProc(NULL, TRUE, NULL)) {
                                eventManager.cutEnd(staffId);
                            }
                            break;

                        case '0003':
                            if (mMotionPhase == 0 && mpMorf->checkFrame(9.0f)) {
                                speedF = 12.0f;
                                speed.y = 33.0f;
                                field_0x1370 = 200.0f / speedF;
                                mSound.startCreatureSound(Z2SE_TKS_V_JUMP_UP, 0, -1);
                            }

                            if (speedF > 0.0f) {
                                cLib_chaseF(&scale.x, 0.15f, 0.85f / (200.0f / speedF));
                                scale.setall(scale.x);

                                if (cLib_calcTimer<int>(&field_0x1370) == 0) {
                                    speedF = 0.0f;
                                    speed.y = 0.0f;
                                    eventManager.cutEnd(staffId);
                                }
                            }
                            break;

                        default:
                            JUT_ASSERT(2853, 0);
                            break;
                    }

                    if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && eventManager.endCheck(mEventIdx)) {
                        mEventIdx = -1;
                        dComIfGp_event_reset();
                        fopAcM_delete(this);
                    }
                }
            }
            break;
        
        case 3:
            break;

        default:
            JUT_ASSERT(2870, 0);
    }
}

/* 80B1A30C-80B1A888 005DCC 057C+00 1/0 0/0 0/0 .text            demo_walkBack__10daNpcTks_cFv */
void daNpcTks_c::demo_walkBack() {
    switch (mMode){
        case 0:
            cLib_offBit<u32>(attention_info.flags, 0x10);
            setExpression(1, -1.0f);
            setMotionAnm(2, 0.0f);
            setLookMode(LOOK_PLAYER_TALK, NULL);

            if (strcmp(dComIfGp_getStartStageName(), "D_MN11") == 0) {
                current.pos.set(0.0f, -150.0f, 6600.0f);
                old.pos = current.pos;
            } else if (strcmp(dComIfGp_getStartStageName(), "D_MN07") == 0) {
                current.pos.set(4955.0f, -200.0f, 5480.0f);
                old.pos = current.pos;
            }

            if (cLib_calcTimer<int>(&field_0x1370) > 0) {
                return;
            }

            if (dComIfGp_event_runCheck() && !eventInfo.checkCommandTalk()) {
                if (dComIfGp_getEventManager().getMyStaffId(l_myName, NULL, 0) != -1) {
                    mMode = 2;
                } else {
                    break;
                }
            } else {
                eventInfo.setArchiveName(l_arcName);
                mEventIdx = dComIfGp_getEventManager().getEventIdx(this, "TKS_WARPBACK", 0xFF);
                fopAcM_orderOtherEventId(this, mEventIdx, 0xFF, 0xFFFF, 4, 1);
            }
            // fallthrough
        case 2:
            if (dComIfGp_event_runCheck() != FALSE && !eventInfo.checkCommandTalk()) {
                dEvent_manager_c& eventManager = dComIfGp_getEventManager();
                s32 staffId = eventManager.getMyStaffId(l_myName, NULL, 0);

                if (staffId != -1) {
                    int* cutName = (int*)eventManager.getMyNowCutName(staffId);

                    if (eventManager.getIsAddvance(staffId)) {
                        switch (*cutName) {
                            case '0001':
                                dComIfGs_resetLastWarpAcceptStage();
                                break;

                            case '0002':
                                initTalk(3, NULL);
                                mMsgTimer = 0;
                                setAngle(fopAcM_searchPlayerAngleY(this));
                                break;

                            case '0003':
                                mCyl.OffCoSetBit();
                                setMotion(4, -1.0f, 0);
                                speedF = 0.0f;
                                speed.y = 0.0f;
                                scale.setall(1.0f);
                                break;

                            default:
                                JUT_ASSERT(2809, 0);
                        }
                    }

                    int msgTimer = mMsgTimer;
                    int i_expression, i_motion;

                    if (ctrlMsgAnm(i_expression, i_motion, this, TRUE)) {
                        setExpression(i_expression, -1.0f);
                        setMotion(i_motion, -1.0f, 0);
                    } else if (msgTimer != 0 && mMsgTimer == 0) {
                        setExpressionTalkAfter();
                    }

                    switch (*cutName) {
                        case '0001':
                            eventManager.cutEnd(staffId);
                            break;
                        
                        case '0002':
                            if (talkProc(NULL, TRUE, NULL)) {
                                eventManager.cutEnd(staffId);
                            }
                            break;

                        case '0003':
                            if (mMotionPhase == 0 && mpMorf->checkFrame(9.0f)) {
                                speedF = 12.0f;
                                speed.y = 31.0f;
                                field_0x1370 = 200.0f / speedF;
                                mSound.startCreatureSound(Z2SE_TKS_V_JUMP_UP, 0, -1);
                            }

                            if (speedF > 0.0f) {
                                cLib_chaseF(&scale.x, 0.15f, 0.85f / (200.0f / speedF));
                                scale.setall(scale.x);

                                if (cLib_calcTimer<int>(&field_0x1370) == 0) {
                                    speedF = 0.0f;
                                    speed.y = 0.0f;
                                    eventManager.cutEnd(staffId);
                                }
                            }
                            break;

                        default:
                            JUT_ASSERT(2986, 0);
                            break;
                    }

                    if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && eventManager.endCheck(mEventIdx)) {
                        dComIfGp_event_reset();
                        mEventIdx = -1;
                        dMeter2Info_warpInProc();
                        fopAcM_delete(this);
                    }
                }
            }
            break;
        
        case 3:
            break;

        default:
            JUT_ASSERT(3004, 0);
    }
}

/* 80B1A888-80B1B6A0 006348 0E18+00 1/0 0/0 0/0 .text            demo_Lv7Start__10daNpcTks_cFv */
void daNpcTks_c::demo_Lv7Start() {
    switch (mMode) {
        case 0:
            cLib_offBit<u32>(attention_info.flags, 0x10);
            setExpression(1, -1.0f);
            setMotion(4, -1.0f, 0);
            mMode = 2;
            // fallthrough
        case 2:
            if (dComIfGp_event_runCheck() != FALSE && !eventInfo.checkCommandTalk()) {
                dEvent_manager_c& eventManager = dComIfGp_getEventManager();
                s32 staffId = eventManager.getMyStaffId(l_myName, NULL, 0);

                if (staffId != -1) {
                    int* cutName = (int*)eventManager.getMyNowCutName(staffId);

                    if (eventManager.getIsAddvance(staffId)) {
                        switch (*cutName) {
                            case '0000':
                                break;
                                
                            case '0002':
                                current.pos.set(120.0f, 3000.0f, 5500.0f);
                                old.pos = current.pos;
                                setAngle(fopAcM_searchPlayerAngleY(this));
                                parentActorID = fopAcM_createChild(PROC_NPC_TKC, fopAcM_GetID(this), 3, &current.pos, fopAcM_GetRoomNo(this),
                                                                   &mCurAngle, NULL, -1, NULL);
                                dComIfGp_event_setTalkPartner(this);
                                field_0x138b = 0;
                                field_0x1370 = 143;
                                break;

                            case '0003': {
                                daNpcTkc_c* actor_p = NULL;
                                fopAcM_SearchByID(parentActorID, (fopAc_ac_c**)&actor_p);

                                if (actor_p != NULL) {
                                    actor_p->setActionWait();
                                }

                                setMotion(1, -1.0f, 0);
                                field_0x1370 = 60;
                                break;
                            }

                            case '0004':
                            case '0008':
                                initTalk(mMessageNo, NULL);
                                mMsgTimer = 0;
                                setLookMode(LOOK_PLAYER_TALK, NULL);
                                break;

                            case '0005':
                                break;

                            case '0007': {
                                daNpcTkc_c* actor_p = NULL;
                                fopAcM_SearchByID(parentActorID, (fopAc_ac_c**)&actor_p);

                                if (actor_p != NULL) {
                                    actor_p->setActionWait();
                                }
                                break;
                            }

                            case '0009':
                                setLookMode(LOOK_NONE, NULL);
                                break;

                            case '0010': {                                
                                daNpcTkc_c* actor_p = NULL;
                                fopAcM_SearchByID(parentActorID, (fopAc_ac_c**)&actor_p);

                                if (actor_p != NULL) {
                                    actor_p->setActionFollow();
                                }

                                setMotion(4, -1.0f, 0);
                                break;
                            }

                            case '0011':
                                setMotion(2, -1.0f, 0);
                                speedF = 10.0f;
                                break;

                            case '0012':
                                fopAcM_delete(this);
                                break;

                            default:
                                JUT_ASSERT(3091, 0);
                                break;
                        }
                    }

                    int msgTimer = mMsgTimer;
                    int i_expression, i_motion;

                    if (ctrlMsgAnm(i_expression, i_motion, this, TRUE)) {
                        setExpression(i_expression, -1.0f);
                    } else if (msgTimer != 0 && mMsgTimer == 0) {
                        setExpressionTalkAfter();
                    }

                    switch (*cutName) {
                        case '0001':
                            gravity = 0.0f;
                            if (!daPy_getPlayerActorClass()->checkSwimUp()) {
                                eventManager.cutEnd(staffId);
                            }
                            break;

                        case '0002':
                            if (cLib_calcTimer<int>(&field_0x1370) == 0) {
                                eventManager.cutEnd(staffId);
                            }

                            if (mAcch.ChkWaterIn()) {
                                f32 fVar3 = mAcch.m_wtr.GetHeight();
                                if (current.pos.y < fVar3) {
                                    cXyz i_pos(current.pos.x, fVar3, current.pos.z);

                                    if (field_0x138b == 0) {
                                        fopKyM_createWpillar(&i_pos, 1.0f, 0);
                                        Z2GetAudioMgr()->seStart(Z2SE_CM_BODYFALL_WATER_S, &i_pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                                    }

                                    if (speed.y < 0.0f) {
                                        speed.y *= 0.7;
                                    }

                                    speed.y -= gravity - 1.0f;
                                    setMotion(1, -1.0f, 0);
                                    fopAcM_effHamonSet(&field_0x137c[0], &i_pos, 0.7f, 0.08f);
                                    field_0x138b = 1;
                                } else {
                                    field_0x138b = 0;
                                }
                            }

                            if (field_0x138b == 0) {
                                mSound.startCreatureVoiceLevel(Z2SE_TKS_V_FALLING_LOOP, -1);
                            }
                            break;
                            
                        case '0003':
                            if (cLib_calcTimer<int>(&field_0x1370) == 0) {
                                eventManager.cutEnd(staffId);
                            }

                            if (mAcch.ChkWaterIn()) {
                                f32 fVar2 = mAcch.m_wtr.GetHeight();
                                if (current.pos.y < fVar2) {
                                    current.pos.y = fVar2;
                                    speed.y = 0.0f;
                                    fopAcM_effHamonSet(&field_0x137c[0], &current.pos, 0.7f, 0.08f);
                                    field_0x138b = 1;
                                } else {
                                    field_0x138b = 0;
                                }
                            }
                            break;

                        case '0008':
                            if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                                if (talkProc(NULL, TRUE, NULL)) {
                                    eventManager.cutEnd(staffId);
                                }
                            } else {
                                if (step(fopAcM_searchPlayerAngleY(this), 0)) {
                                    mTurnMode = 0;
                                }
                            }

                            if (mAcch.ChkWaterIn()) {
                                f32 fVar1 = mAcch.m_wtr.GetHeight();
                                if (current.pos.y < fVar1) {
                                    current.pos.y = fVar1;
                                    speed.y = 0.0f;
                                    fopAcM_effHamonSet(&field_0x137c[0], &current.pos, 0.7f, 0.08f);
                                    field_0x138b = 1;
                                } else {
                                    field_0x138b = 0;
                                }
                            }
                            break;

                        case '0007': {
                        case '0005':
                            mSound.startCreatureVoiceLevel(Z2SE_TKJ_V_ODOROKI_LOOP, -1);
                            daNpcTkc_c* actor_p = NULL;
                            fopAcM_SearchByID(parentActorID, (fopAc_ac_c**)&actor_p);

                            if (actor_p != NULL) {
                                actor_p->callOdorokiSound();
                            }
                            // fallthrough
                        }
                        case '0012':
                            eventManager.cutEnd(staffId);
                        
                            if (mAcch.ChkWaterIn()) {
                                f32 fVar1 = mAcch.m_wtr.GetHeight();
                                if (current.pos.y < fVar1) {
                                    current.pos.y = fVar1;
                                    speed.y = 0.0f;
                                    fopAcM_effHamonSet(&field_0x137c[0], &current.pos, 0.7f, 0.08f);
                                    field_0x138b = 1;
                                } else {
                                    field_0x138b = 0;
                                }
                            }
                            break;

                        case '0004': {
                            int iVar1[2] = {0x2520, -1};
                            if (talkProc(iVar1, TRUE, NULL)) {
                                if (!mFlow.checkEndFlow()) {
                                    fopAc_ac_c* actor_p = fopAcM_SearchByName(PROC_Tag_Lv7Gate);
                                    if (actor_p != NULL) {
                                        setLookMode(LOOK_ACTOR, actor_p);
                                    }
                                } else {
                                    eventManager.cutEnd(staffId);
                                    current.pos.set(1627.059f, -250.0f, 5621.671f);
                                    old.pos = current.pos;
                                    setAngle(0x6024);
                                    setExpression(1, -1.0f);
                                    setMotion(0, -1.0f, 0);
                                    setLookMode(LOOK_NONE, NULL);

                                    daNpcTkc_c* actor_p = NULL;
                                    fopAcM_SearchByID(parentActorID, (fopAc_ac_c**)&actor_p);

                                    if (actor_p != NULL) {
                                        actor_p->setActionFollow();
                                    }
                                }
                            }

                            if (mAcch.ChkWaterIn()) {
                                f32 fVar2 = mAcch.m_wtr.GetHeight();
                                if (current.pos.y < fVar2) {
                                    current.pos.y = fVar2;
                                    speed.y = 0.0f;
                                    fopAcM_effHamonSet(&field_0x137c[0], &current.pos, 0.7f, 0.08f);
                                    field_0x138b = 1;
                                } else {
                                    field_0x138b = 0;
                                }
                            }
                            break;
                        }

                        case '0009': {
                            cXyz sp8c(3453.1926f, -200.0f, 5485.9224f);
                            if (step(cLib_targetAngleY(&current.pos, &sp8c), 1)) {
                                eventManager.cutEnd(staffId);
                            }
                            break;
                        }

                        case '0010':
                            if (mMotion == 4) {
                                if (mMotionPhase == 0 && mpMorf->checkFrame(9.0f)) {
                                    speedF = 8.0f;
                                    speed.y = 30.0f;
                                    mSound.startCreatureSound(Z2SE_TKS_V_JUMP_UP, 0, -1);
                                    break;
                                }

                                if (speedF > 0.0f && mAcch.ChkGroundLanding()) {
                                    setMotion(5, -1.0f, 0);
                                    speedF = 0.0f;
                                    speed.y = 0.0f;
                                }
                            } else if (mMotion == 5) {
                                if (mpMorf->isStop()) {
                                    eventManager.cutEnd(staffId);
                                }
                            }
                            break;

                        case '0011': {
                            mSound.startCreatureVoiceLevel(Z2SE_TKS_V_RUNNING_LOOP, -1);
                            cXyz sp98(3453.1926f, -200.0f, 5485.9224f);
                            step(cLib_targetAngleY(&current.pos, &sp98), 0);
                            eventManager.cutEnd(staffId);
                            break;
                        }

                        default:
                            JUT_ASSERT(3263, 0);
                            break;
                    }
                }
            }
            break;
        
        case 3:
            break;

        default:
            JUT_ASSERT(3269, 0);
            break;
    }
}

/* 80B1B6A0-80B1BD64 007160 06C4+00 2/0 0/0 0/0 .text            demo_Lv3PickUp__10daNpcTks_cFv */
void daNpcTks_c::demo_Lv3PickUp() {
    switch (mMode) {
        case 0:
            cLib_offBit<u32>(attention_info.flags, 0x10);
            setExpression(1, -1.0f);
            setMotion(0, -1.0f, 0);
            setLookMode(LOOK_PLAYER, NULL);

            if (strcmp(dComIfGp_getStartStageName(), "D_MN01") == 0) {
                current.pos.set(0.0f, 1225.0f, 14737.291f);
                setAngle(0);
            } else if (strcmp(dComIfGp_getStartStageName(), "D_MN07") == 0) {
                current.pos.set(0.0f, -250.0f, 3885.7244f);
                setAngle(0);
            }

            old.pos = current.pos;

            if (cLib_calcTimer<int>(&field_0x1370) <= 0) {
                if (dComIfGp_event_runCheck() && !eventInfo.checkCommandTalk()) {
                    if (dComIfGp_getEventManager().getMyStaffId(l_myName, NULL, 0) != -1) {
                        mMode = 2;
                    }
                    break;
                }

                if (daPy_getPlayerActorClass()->checkSwimUp()) {
                    eventInfo.setArchiveName(l_arcName);
                    mEventIdx = dComIfGp_getEventManager().getEventIdx(this, "TKS_WARPBACK", 0xFF);
                    fopAcM_orderOtherEventId(this, mEventIdx, 0xFF, 0xFFFF, 4, 1);
                }
            }
            break;

        case 2:
            if (dComIfGp_event_runCheck() != FALSE && !eventInfo.checkCommandTalk()) {
                dEvent_manager_c& eventManager = dComIfGp_getEventManager();
                s32 staffId = eventManager.getMyStaffId(l_myName, NULL, 0);

                if (staffId != -1) {
                    int* cutName = (int*)eventManager.getMyNowCutName(staffId);

                    if (eventManager.getIsAddvance(staffId)) {
                        switch (*cutName) {
                            case '0001':
                                dComIfGs_resetLastWarpAcceptStage();
                                break;

                            case '0002':
                                initTalk(3, NULL);
                                mMsgTimer = 0;
                                mTurnMode = 0;
                                setLookMode(LOOK_PLAYER_TALK, NULL);
                                break;

                            case '0003':
                                mCyl.OffCoSetBit();
                                setMotion(4, -1.0f, 0);
                                speedF = 0.0f;
                                speed.y = 0.0f;
                                scale.setall(1.0f);
                                break;
                                
                            default:
                                JUT_ASSERT(3348, 0);
                                break;
                        }
                    }
                    
                    int msgTimer = mMsgTimer;
                    int i_expression, i_motion;

                    if (ctrlMsgAnm(i_expression, i_motion, this, TRUE)) {
                        setExpression(i_expression, -1.0f);
                        setMotion(i_motion, -1.0f, 0);
                    } else if (msgTimer != 0 && mMsgTimer == 0) {
                        setExpressionTalkAfter();
                    }

                    switch (*cutName) {
                        case '0001':
                            eventManager.cutEnd(staffId);
                            break;

                        case '0002':
                            if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                                if (talkProc(NULL, TRUE, NULL)) {
                                    eventManager.cutEnd(staffId);
                                }
                            } else if (step(fopAcM_searchPlayerAngleY(this), 0)) {
                                mTurnMode = 0;
                            }
                            break;

                        case '0003':
                            if (mMotionPhase == 0 && mpMorf->checkFrame(9.0f)) {
                                speed.y = 33.0f;
                                field_0x136c = speed.y * -2.0f / gravity;
                                field_0x1370 = field_0x136c;
                                speedF = fopAcM_searchPlayerDistanceXZ(this) / field_0x136c;
                                mSound.startCreatureSound(Z2SE_TKS_V_JUMP_UP, 0, -1);
                            }

                            if (speedF > 0.0f) {
                                cLib_chaseF(&scale.x, 0.15f, 0.85f / field_0x136c);
                                scale.setall(scale.x);

                                if (cLib_calcTimer<int>(&field_0x1370) == 0) {
                                    speedF = 0.0f;
                                    speed.y = 0.0f;
                                    eventManager.cutEnd(staffId);
                                }
                            }
                            break;

                        default:
                            JUT_ASSERT(3406, 0);
                            break;
                    }

                    if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && eventManager.endCheck(mEventIdx)) {
                        dComIfGp_event_reset();
                        mEventIdx = -1;
                        dMeter2Info_warpInProc();
                        fopAcM_delete(this);
                    }
                }
            }
            break;
            
        case 3:
            break;

        default:
            JUT_ASSERT(3424, 0);
            break;
    }
}

/* ############################################################################################## */
/* 80B1E020-80B1E024 0002C8 0004+00 0/1 0/0 0/0 .rodata          @7108 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7108 = 0xC133A190;
COMPILER_STRIP_GATE(0x80B1E020, &lit_7108);
#pragma pop

/* 80B1E024-80B1E028 0002CC 0004+00 0/1 0/0 0/0 .rodata          @7109 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7109 = 0x4509C266;
COMPILER_STRIP_GATE(0x80B1E024, &lit_7109);
#pragma pop

/* 80B1E028-80B1E02C 0002D0 0004+00 0/1 0/0 0/0 .rodata          @7110 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7110 = 0x46879A69;
COMPILER_STRIP_GATE(0x80B1E028, &lit_7110);
#pragma pop

/* 80B1E02C-80B1E030 0002D4 0004+00 0/1 0/0 0/0 .rodata          @7111 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7111 = -275.0f;
COMPILER_STRIP_GATE(0x80B1E02C, &lit_7111);
#pragma pop

/* 80B1E030-80B1E034 0002D8 0004+00 0/1 0/0 0/0 .rodata          @7112 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7112 = 1900.0f;
COMPILER_STRIP_GATE(0x80B1E030, &lit_7112);
#pragma pop

/* 80B1E034-80B1E038 0002DC 0004+00 0/1 0/0 0/0 .rodata          @7113 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7113 = 16.0f;
COMPILER_STRIP_GATE(0x80B1E034, &lit_7113);
#pragma pop

/* 80B1E038-80B1E03C 0002E0 0004+00 0/1 0/0 0/0 .rodata          @7114 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7114 = 36.0f;
COMPILER_STRIP_GATE(0x80B1E038, &lit_7114);
#pragma pop

/* 80B1E048-80B1E048 0002F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B1E0D3 = "D_MN05";
SECTION_DEAD static char const* const stringBase_80B1E0DA = "D_MN06";
#pragma pop

/* 80B1BD64-80B1C3C8 007824 0664+00 1/0 0/0 0/0 .text            demo_Lv6PickUp__10daNpcTks_cFv */
void daNpcTks_c::demo_Lv6PickUp() {
    // NONMATCHING
}

/* 80B1C3C8-80B1C3E8 007E88 0020+00 1/0 0/0 0/0 .text            daNpcTks_Create__FPv */
static void daNpcTks_Create(void* param_0) {
    // NONMATCHING
}

/* 80B1C3E8-80B1C408 007EA8 0020+00 1/0 0/0 0/0 .text            daNpcTks_Delete__FPv */
static void daNpcTks_Delete(void* param_0) {
    // NONMATCHING
}

/* 80B1C408-80B1C428 007EC8 0020+00 1/0 0/0 0/0 .text            daNpcTks_Execute__FPv */
static void daNpcTks_Execute(void* param_0) {
    // NONMATCHING
}

/* 80B1C428-80B1C448 007EE8 0020+00 1/0 0/0 0/0 .text            daNpcTks_Draw__FPv */
static void daNpcTks_Draw(void* param_0) {
    // NONMATCHING
}

/* 80B1C448-80B1C450 007F08 0008+00 1/0 0/0 0/0 .text            daNpcTks_IsDelete__FPv */
static bool daNpcTks_IsDelete(void* param_0) {
    return true;
}

/* 80B1C450-80B1C480 007F10 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1E03C-80B1E040 0002E4 0004+00 0/1 0/0 0/0 .rodata          @7156 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7156 = -50.0f;
COMPILER_STRIP_GATE(0x80B1E03C, &lit_7156);
#pragma pop

/* 80B1C480-80B1C4F8 007F40 0078+00 1/0 0/0 0/0 .text            setParam__10daNpcTks_cFv */
void daNpcTks_c::setParam() {
    // NONMATCHING
}

/* 80B1C4F8-80B1CB4C 007FB8 0654+00 1/0 0/0 0/0 .text            main__10daNpcTks_cFv */
BOOL daNpcTks_c::main() {
    // NONMATCHING
}

/* 80B1CB4C-80B1CB54 00860C 0008+00 1/1 0/0 0/0 .text            cLib_checkBit<Ul>__FUlUl */
extern "C" void func_80B1CB4C(void* _this, u32 param_0, u32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1E040-80B1E044 0002E8 0004+00 1/1 0/0 0/0 .rodata          @7278 */
SECTION_RODATA static f32 const lit_7278 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B1E040, &lit_7278);

/* 80B1CB54-80B1CC28 008614 00D4+00 1/0 0/0 0/0 .text            ctrlBtk__10daNpcTks_cFv */
BOOL daNpcTks_c::ctrlBtk() {
    // NONMATCHING
}

/* 80B1CC28-80B1CFD0 0086E8 03A8+00 1/0 0/0 0/0 .text            setAttnPos__10daNpcTks_cFv */
void daNpcTks_c::setAttnPos() {
    // NONMATCHING
}

/* 80B1CFD0-80B1D1FC 008A90 022C+00 1/1 0/0 0/0 .text            lookat__10daNpcTks_cFv */
void daNpcTks_c::lookat() {
    // NONMATCHING
}

/* 80B1D1FC-80B1D204 008CBC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__10daNpcTks_cFv */
BOOL daNpcTks_c::drawDbgInfo() {
    return false;
}

/* 80B1D204-80B1D35C 008CC4 0158+00 1/0 0/0 0/0 .text            drawOtherMdls__10daNpcTks_cFv */
void daNpcTks_c::drawOtherMdls() {
    // NONMATCHING
}

/* 80B1D35C-80B1D368 008E1C 000C+00 1/1 0/0 0/0 .text sinShort__Q25JMath18TSinCosTable<13,f>CFs */
extern "C" void func_80B1D35C(void* _this, s16 param_0) /* const */ {
    // NONMATCHING
}

/* 80B1D368-80B1D384 008E28 001C+00 7/7 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80B1D368(void* _this, int* param_0) {
    // NONMATCHING
}

/* 80B1D384-80B1D400 008E44 007C+00 2/2 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
extern "C" void func_80B1D384(void* _this, int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1E530-80B1E53C 00044C 000C+00 2/2 0/0 0/0 .data            __vt__16daNpcTks_Param_c */
SECTION_DATA extern void* __vt__16daNpcTks_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daNpcTks_Param_cFv,
};

/* 80B1E548-80B1E554 000008 000C+00 1/1 0/0 0/0 .bss             @3935 */
static u8 lit_3935[12];

/* 80B1E554-80B1E558 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80B1D400-80B1D440 008EC0 0040+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_tks_cpp */
void __sinit_d_a_npc_tks_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80B1D400, __sinit_d_a_npc_tks_cpp);
#pragma pop

/* 80B1D440-80B1D488 008F00 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B1D488-80B1D4C4 008F48 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B1D4C4-80B1D594 008F84 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 80B1D594-80B1D598 009054 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80B1D598-80B1D59C 009058 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80B1D59C-80B1D5D8 00905C 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80B1D5D8-80B1D620 009098 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80B1D620-80B1D668 0090E0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80B1D668-80B1D6A4 009128 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80B1D6A4-80B1D6DC 009164 0038+00 1/1 0/0 0/0 .text            __ct__11J3DLightObjFv */
// J3DLightObj::J3DLightObj() {
extern "C" void __ct__11J3DLightObjFv() {
    // NONMATCHING
}

/* 80B1D6DC-80B1D928 00919C 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80B1D928-80B1DB18 0093E8 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80B1DB18-80B1DB88 0095D8 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80B1DB88-80B1DBE4 009648 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B1DBE4-80B1DC54 0096A4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80B1DC54-80B1DC9C 009714 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80B1DC9C-80B1DCA0 00975C 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__8daNpcF_cFv */
// void daNpcF_c::adjustShapeAngle() {
extern "C" void adjustShapeAngle__8daNpcF_cFv() {
    /* empty function */
}

/* 80B1DCA0-80B1DCA4 009760 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80B1DCA4-80B1DCEC 009764 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B1DCEC-80B1DD34 0097AC 0048+00 2/1 0/0 0/0 .text            __dt__16daNpcTks_Param_cFv */
daNpcTks_Param_c::~daNpcTks_Param_c() {
    // NONMATCHING
}

/* 80B1DD34-80B1DD3C 0097F4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80B1DD34() {
    // NONMATCHING
}

/* 80B1DD3C-80B1DD44 0097FC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80B1DD3C() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1E044-80B1E048 0002EC 0004+00 0/0 0/0 0/0 .rodata          @7420 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7420 = 40.0f;
COMPILER_STRIP_GATE(0x80B1E044, &lit_7420);
#pragma pop

/* 80B1E048-80B1E048 0002F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
