/**
 * @file d_a_npc_tks.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_tks.h"
#include "dol2asm.h"

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
extern "C" extern u8 g_meter2_info[248];
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
SECTION_DATA static u8 l_bckGetParamList[176] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02,
};

/* 80B1E1B4-80B1E1BC 0000D0 0008+00 1/1 0/0 0/0 .data            l_btpGetParamList */
SECTION_DATA static u8 l_btpGetParamList[8] = {
    0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x02,
};

/* 80B1E1BC-80B1E1C4 0000D8 0008+00 1/2 0/0 0/0 .data            l_btkGetParamList */
SECTION_DATA static u8 l_btkGetParamList[8] = {
    0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x02,
};

/* 80B1E1C4-80B1E1D0 0000E0 000C+00 1/0 0/0 0/0 .data            l_loadRes_TKS0 */
SECTION_DATA static u8 l_loadRes_TKS0[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80B1E1D0-80B1E1DC 0000EC 000C+00 1/0 0/0 0/0 .data            l_loadRes_TKS1 */
SECTION_DATA static u8 l_loadRes_TKS1[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80B1E1DC-80B1E1E8 0000F8 000C+00 1/0 0/0 0/0 .data            l_loadRes_TKS2 */
SECTION_DATA static u8 l_loadRes_TKS2[12] = {
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80B1E1E8-80B1E1F4 -00001 000C+00 2/2 0/0 0/0 .data            l_loadRes_list */
SECTION_DATA static void* l_loadRes_list[3] = {
    (void*)&l_loadRes_TKS0,
    (void*)&l_loadRes_TKS1,
    (void*)&l_loadRes_TKS2,
};

/* 80B1E1F4-80B1E200 -00001 000C+00 3/3 0/0 0/0 .data            l_arcNames */
SECTION_DATA static void* l_arcNames[3] = {
    (void*)&d_a_npc_tks__stringBase0,
    (void*)(((char*)&d_a_npc_tks__stringBase0) + 0x4),
    (void*)(((char*)&d_a_npc_tks__stringBase0) + 0xE),
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
SECTION_DATA static void* l_arcName = (void*)&d_a_npc_tks__stringBase0;

/* 80B1E20C-80B1E210 -00001 0004+00 8/9 0/0 0/0 .data            l_myName */
SECTION_DATA static void* l_myName = (void*)(((char*)&d_a_npc_tks__stringBase0) + 0x25);

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
SECTION_RODATA u8 const daNpcTks_Param_c::m[152] = {
    0x42, 0xB4, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x42, 0xA0, 0x00, 0x00, 0x42, 0x04, 0x00, 0x00, 0x41, 0xC8, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x4C, 0xCC, 0xCD, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x13, 0x00, 0x06,
    0x42, 0xA0, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2D,
    0x00, 0x00, 0x00, 0x96, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x5A, 0x44, 0x7A, 0x00, 0x00,
    0x43, 0xFA, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xC8, 0x00, 0x00, 0x40, 0xE0, 0x00, 0x00,
    0x40, 0x00, 0x00, 0x00, 0x40, 0xA0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1DD58, &daNpcTks_Param_c::m);

/* 80B1DDF0-80B1DDF4 000098 0004+00 0/2 0/0 0/0 .rodata          @4467 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4467 = -80.0f;
COMPILER_STRIP_GATE(0x80B1DDF0, &lit_4467);
#pragma pop

/* 80B1DDF4-80B1DDF8 00009C 0004+00 0/1 0/0 0/0 .rodata          @4468 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4468 = -30.0f;
COMPILER_STRIP_GATE(0x80B1DDF4, &lit_4468);
#pragma pop

/* 80B1DDF8-80B1DDFC 0000A0 0004+00 0/3 0/0 0/0 .rodata          @4469 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4469 = 80.0f;
COMPILER_STRIP_GATE(0x80B1DDF8, &lit_4469);
#pragma pop

/* 80B1DDFC-80B1DE00 0000A4 0004+00 0/4 0/0 0/0 .rodata          @4470 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4470 = 10.0f;
COMPILER_STRIP_GATE(0x80B1DDFC, &lit_4470);
#pragma pop

/* 80B1DE00-80B1DE04 0000A8 0004+00 0/2 0/0 0/0 .rodata          @4471 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4471 = 100.0f;
COMPILER_STRIP_GATE(0x80B1DE00, &lit_4471);
#pragma pop

/* 80B1DE04-80B1DE08 0000AC 0004+00 0/3 0/0 0/0 .rodata          @4472 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4472 = 30.0f;
COMPILER_STRIP_GATE(0x80B1DE04, &lit_4472);
#pragma pop

/* 80B14AF8-80B14ED0 0005B8 03D8+00 1/1 0/0 0/0 .text            Create__10daNpcTks_cFv */
void daNpcTks_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1DE08-80B1DE0C 0000B0 0004+00 3/12 0/0 0/0 .rodata          @4537 */
SECTION_RODATA static f32 const lit_4537 = 1.0f;
COMPILER_STRIP_GATE(0x80B1DE08, &lit_4537);

/* 80B1DE0C-80B1DE10 0000B4 0004+00 3/14 0/0 0/0 .rodata          @4538 */
SECTION_RODATA static f32 const lit_4538 = -1.0f;
COMPILER_STRIP_GATE(0x80B1DE0C, &lit_4538);

/* 80B14ED0-80B1521C 000990 034C+00 1/1 0/0 0/0 .text            CreateHeap__10daNpcTks_cFv */
void daNpcTks_c::CreateHeap() {
    // NONMATCHING
}

/* 80B1521C-80B15258 000CDC 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80B15258-80B15270 000D18 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80B15270-80B152AC 000D30 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80B152AC-80B152C4 000D6C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80B152C4-80B1530C 000D84 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80B1530C-80B15330 000DCC 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80B15330-80B1536C 000DF0 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80B1536C-80B15384 000E2C 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80B15384-80B153C0 000E44 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80B153C0-80B153D8 000E80 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80B153D8-80B1540C 000E98 0034+00 1/1 0/0 0/0 .text            Delete__10daNpcTks_cFv */
void daNpcTks_c::Delete() {
    // NONMATCHING
}

/* 80B1540C-80B15430 000ECC 0024+00 2/2 0/0 0/0 .text            Execute__10daNpcTks_cFv */
void daNpcTks_c::Execute() {
    // NONMATCHING
}

/* 80B15430-80B1548C 000EF0 005C+00 1/1 0/0 0/0 .text            Draw__10daNpcTks_cFv */
void daNpcTks_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1DE10-80B1DE1C 0000B8 000C+00 1/1 0/0 0/0 .rodata          @4586 */
SECTION_RODATA static u8 const lit_4586[12] = {
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x11,
};
COMPILER_STRIP_GATE(0x80B1DE10, &lit_4586);

/* 80B1548C-80B15650 000F4C 01C4+00 1/1 0/0 0/0 .text ctrlJoint__10daNpcTks_cFP8J3DJointP8J3DModel
 */
void daNpcTks_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 80B15650-80B15670 001110 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__10daNpcTks_cFP10fopAc_ac_c               */
void daNpcTks_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80B15670-80B156BC 001130 004C+00 2/2 0/0 0/0 .text ctrlJointCallBack__10daNpcTks_cFP8J3DJointi
 */
void daNpcTks_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80B156BC-80B157C0 00117C 0104+00 1/0 0/0 0/0 .text            setMtx__10daNpcTks_cFv */
void daNpcTks_c::setMtx() {
    // NONMATCHING
}

/* 80B157C0-80B1590C 001280 014C+00 1/0 0/0 0/0 .text            setExpressionAnm__10daNpcTks_cFib
 */
void daNpcTks_c::setExpressionAnm(int param_0, bool param_1) {
    // NONMATCHING
}

/* 80B1590C-80B159E0 0013CC 00D4+00 1/0 0/0 0/0 .text            setExpressionBtp__10daNpcTks_cFi */
void daNpcTks_c::setExpressionBtp(int param_0) {
    // NONMATCHING
}

/* 80B159E0-80B15A24 0014A0 0044+00 1/0 0/0 0/0 .text            setMotion__10daNpcTks_cFifi */
void daNpcTks_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1DE1C-80B1DE20 0000C4 0004+00 8/26 0/0 0/0 .rodata          @5011 */
SECTION_RODATA static u8 const lit_5011[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B1DE1C, &lit_5011);

/* 80B1DE20-80B1DE24 0000C8 0004+00 0/3 0/0 0/0 .rodata          @5012 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5012 = 60.0f;
COMPILER_STRIP_GATE(0x80B1DE20, &lit_5012);
#pragma pop

/* 80B1DE24-80B1DE28 0000CC 0004+00 0/1 0/0 0/0 .rodata          @5013 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5013 = 7500.0f;
COMPILER_STRIP_GATE(0x80B1DE24, &lit_5013);
#pragma pop

/* 80B1E048-80B1E048 0002F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B1E071 = "D_MN11";
SECTION_DEAD static char const* const stringBase_80B1E078 = "D_MN07";
#pragma pop

/* 80B15A24-80B160A8 0014E4 0684+00 1/1 0/0 0/0 .text            reset__10daNpcTks_cFv */
void daNpcTks_c::reset() {
    // NONMATCHING
}

/* 80B160A8-80B16148 001B68 00A0+00 1/1 0/0 0/0 .text
 * setAction__10daNpcTks_cFM10daNpcTks_cFPCvPv_v                */
void daNpcTks_c::setAction(void (daNpcTks_c::*param_0)()) {
    // NONMATCHING
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

/* 80B1DF20-80B1DF28 0001C8 0008+00 0/3 0/0 0/0 .rodata          @5165 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5165[8] = {
    0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1DF20, &lit_5165);
#pragma pop

/* 80B16148-80B16344 001C08 01FC+00 3/0 0/0 0/0 .text            wait__10daNpcTks_cFv */
void daNpcTks_c::wait() {
    // NONMATCHING
}

/* 80B16344-80B16634 001E04 02F0+00 1/0 0/0 0/0 .text            setMotionAnm__10daNpcTks_cFif */
bool daNpcTks_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1DF28-80B1DF2C 0001D0 0004+00 0/3 0/0 0/0 .rodata          @5263 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5263 = -200.0f;
COMPILER_STRIP_GATE(0x80B1DF28, &lit_5263);
#pragma pop

/* 80B1DF2C-80B1DF30 0001D4 0004+00 0/1 0/0 0/0 .rodata          @5264 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5264 = 150.0f;
COMPILER_STRIP_GATE(0x80B1DF2C, &lit_5264);
#pragma pop

/* 80B1DF30-80B1DF34 0001D8 0004+00 0/2 0/0 0/0 .rodata          @5265 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5265 = 300.0f;
COMPILER_STRIP_GATE(0x80B1DF30, &lit_5265);
#pragma pop

/* 80B16634-80B1682C 0020F4 01F8+00 2/0 0/0 0/0 .text            waitNude__10daNpcTks_cFv */
void daNpcTks_c::waitNude() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1DF34-80B1DF38 0001DC 0004+00 0/1 0/0 0/0 .rodata          @5356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5356 = 400.0f;
COMPILER_STRIP_GATE(0x80B1DF34, &lit_5356);
#pragma pop

/* 80B1682C-80B16B74 0022EC 0348+00 1/0 0/0 0/0 .text            waitLv6__10daNpcTks_cFv */
void daNpcTks_c::waitLv6() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1DF38-80B1DF3C 0001E0 0004+00 0/4 0/0 0/0 .rodata          @5430 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5430 = 0x3BB40000;
COMPILER_STRIP_GATE(0x80B1DF38, &lit_5430);
#pragma pop

/* 80B1DF3C-80B1DF40 0001E4 0004+00 0/6 0/0 0/0 .rodata          @5431 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5431 = 15.0f;
COMPILER_STRIP_GATE(0x80B1DF3C, &lit_5431);
#pragma pop

/* 80B1DF40-80B1DF48 0001E8 0008+00 1/5 0/0 0/0 .rodata          @5433 */
SECTION_RODATA static u8 const lit_5433[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1DF40, &lit_5433);

/* 80B1E048-80B1E048 0002F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B1E07F = "WOLF_GET_TKS";
SECTION_DEAD static char const* const stringBase_80B1E08C = "DEFAULT_GETITEM";
#pragma pop

/* 80B16B74-80B16FDC 002634 0468+00 2/0 0/0 0/0 .text            talk__10daNpcTks_cFv */
void daNpcTks_c::talk() {
    // NONMATCHING
}

/* 80B16FDC-80B17008 002A9C 002C+00 1/0 0/0 0/0 .text            setExpression__10daNpcTks_cFif */
void daNpcTks_c::setExpression(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80B17008-80B17420 002AC8 0418+00 4/0 0/0 0/0 .text            hide__10daNpcTks_cFv */
void daNpcTks_c::hide() {
    // NONMATCHING
}

/* 80B17420-80B175F4 002EE0 01D4+00 3/0 0/0 0/0 .text            shake__10daNpcTks_cFv */
void daNpcTks_c::shake() {
    // NONMATCHING
}

/* 80B175F4-80B17734 0030B4 0140+00 4/0 0/0 0/0 .text            showUp__10daNpcTks_cFv */
void daNpcTks_c::showUp() {
    // NONMATCHING
}

/* 80B17734-80B17B70 0031F4 043C+00 3/0 0/0 0/0 .text            showUpWait__10daNpcTks_cFv */
void daNpcTks_c::showUpWait() {
    // NONMATCHING
}

/* 80B17B70-80B17D44 003630 01D4+00 2/0 0/0 0/0 .text            lookAroundA__10daNpcTks_cFv */
void daNpcTks_c::lookAroundA() {
    // NONMATCHING
}

/* 80B17D44-80B17F18 003804 01D4+00 2/0 0/0 0/0 .text            lookAroundB__10daNpcTks_cFv */
void daNpcTks_c::lookAroundB() {
    // NONMATCHING
}

/* 80B17F18-80B18070 0039D8 0158+00 4/0 0/0 0/0 .text            in__10daNpcTks_cFv */
void daNpcTks_c::in() {
    // NONMATCHING
}

/* 80B18070-80B181EC 003B30 017C+00 1/0 0/0 0/0 .text            damage__10daNpcTks_cFv */
void daNpcTks_c::damage() {
    // NONMATCHING
}

/* 80B181EC-80B183E8 003CAC 01FC+00 1/0 0/0 0/0 .text            broken__10daNpcTks_cFv */
void daNpcTks_c::broken() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1DF48-80B1DF50 0001F0 0008+00 0/1 0/0 0/0 .rodata          @5981 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5981[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1DF48, &lit_5981);
#pragma pop

/* 80B183E8-80B18D44 003EA8 095C+00 1/0 0/0 0/0 .text            demo_appear__10daNpcTks_cFv */
void daNpcTks_c::demo_appear() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1DF50-80B1DF54 0001F8 0004+00 0/1 0/0 0/0 .rodata          @6095 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6095 = 0xC7C05D9D;
COMPILER_STRIP_GATE(0x80B1DF50, &lit_6095);
#pragma pop

/* 80B1DF54-80B1DF58 0001FC 0004+00 0/1 0/0 0/0 .rodata          @6096 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6096 = 0xC68F5596;
COMPILER_STRIP_GATE(0x80B1DF54, &lit_6096);
#pragma pop

/* 80B1DF58-80B1DF5C 000200 0004+00 0/1 0/0 0/0 .rodata          @6097 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6097 = 0x474B5928;
COMPILER_STRIP_GATE(0x80B1DF58, &lit_6097);
#pragma pop

/* 80B1DF5C-80B1DF60 000204 0004+00 0/1 0/0 0/0 .rodata          @6098 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6098 = 25.0f;
COMPILER_STRIP_GATE(0x80B1DF5C, &lit_6098);
#pragma pop

/* 80B1DF60-80B1DF64 000208 0004+00 0/1 0/0 0/0 .rodata          @6099 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6099 = 0xC7C75B77;
COMPILER_STRIP_GATE(0x80B1DF60, &lit_6099);
#pragma pop

/* 80B1DF64-80B1DF68 00020C 0004+00 0/1 0/0 0/0 .rodata          @6100 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6100 = -18470.0f;
COMPILER_STRIP_GATE(0x80B1DF64, &lit_6100);
#pragma pop

/* 80B1DF68-80B1DF6C 000210 0004+00 0/1 0/0 0/0 .rodata          @6101 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6101 = 0x4751289D;
COMPILER_STRIP_GATE(0x80B1DF68, &lit_6101);
#pragma pop

/* 80B1DF6C-80B1DF70 000214 0004+00 0/1 0/0 0/0 .rodata          @6102 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6102 = 2.5f;
COMPILER_STRIP_GATE(0x80B1DF6C, &lit_6102);
#pragma pop

/* 80B1DF70-80B1DF78 000218 0008+00 0/3 0/0 0/0 .rodata          @6103 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6103[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1DF70, &lit_6103);
#pragma pop

/* 80B1DF78-80B1DF80 000220 0008+00 0/3 0/0 0/0 .rodata          @6104 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6104[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1DF78, &lit_6104);
#pragma pop

/* 80B1DF80-80B1DF88 000228 0008+00 0/3 0/0 0/0 .rodata          @6105 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6105[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1DF80, &lit_6105);
#pragma pop

/* 80B1DF88-80B1DF8C 000230 0004+00 0/7 0/0 0/0 .rodata          @6106 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6106 = 9.0f;
COMPILER_STRIP_GATE(0x80B1DF88, &lit_6106);
#pragma pop

/* 80B18D44-80B1926C 004804 0528+00 1/0 0/0 0/0 .text            demo_scannon__10daNpcTks_cFv */
void daNpcTks_c::demo_scannon() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1DF8C-80B1DF90 000234 0004+00 1/1 0/0 0/0 .rodata          @6141 */
SECTION_RODATA static f32 const lit_6141 = 13.0f;
COMPILER_STRIP_GATE(0x80B1DF8C, &lit_6141);

/* 80B1926C-80B1946C 004D2C 0200+00 1/0 0/0 0/0 .text            demo_Lv6Gate__10daNpcTks_cFv */
void daNpcTks_c::demo_Lv6Gate() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1E048-80B1E048 0002F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B1E09C = "TKS_FAREWELL";
SECTION_DEAD static char const* const stringBase_80B1E0A9 = "TKS_FAREWELL_SKIP";
SECTION_DEAD static char const* const stringBase_80B1E0BB = "pos";
#pragma pop

/* 80B1946C-80B19DAC 004F2C 0940+00 1/0 0/0 0/0 .text            demo_farewell__10daNpcTks_cFv */
void daNpcTks_c::demo_farewell() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1DF90-80B1DF94 000238 0004+00 0/1 0/0 0/0 .rodata          @6417 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6417 = 950.0f;
COMPILER_STRIP_GATE(0x80B1DF90, &lit_6417);
#pragma pop

/* 80B1DF94-80B1DF98 00023C 0004+00 0/1 0/0 0/0 .rodata          @6418 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6418 = 3700.0f;
COMPILER_STRIP_GATE(0x80B1DF94, &lit_6418);
#pragma pop

/* 80B1DF98-80B1DF9C 000240 0004+00 0/1 0/0 0/0 .rodata          @6419 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6419 = -4220.0f;
COMPILER_STRIP_GATE(0x80B1DF98, &lit_6419);
#pragma pop

/* 80B1DF9C-80B1DFA0 000244 0004+00 0/1 0/0 0/0 .rodata          @6420 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6420 = 3500.0f;
COMPILER_STRIP_GATE(0x80B1DF9C, &lit_6420);
#pragma pop

/* 80B1DFA0-80B1DFA4 000248 0004+00 0/1 0/0 0/0 .rodata          @6421 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6421 = 3360.0f;
COMPILER_STRIP_GATE(0x80B1DFA0, &lit_6421);
#pragma pop

/* 80B1DFA4-80B1DFA8 00024C 0004+00 0/1 0/0 0/0 .rodata          @6422 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6422 = -2010.0f;
COMPILER_STRIP_GATE(0x80B1DFA4, &lit_6422);
#pragma pop

/* 80B1DFA8-80B1DFAC 000250 0004+00 0/1 0/0 0/0 .rodata          @6423 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6423 = -1810.0f;
COMPILER_STRIP_GATE(0x80B1DFA8, &lit_6423);
#pragma pop

/* 80B1DFAC-80B1DFB0 000254 0004+00 0/2 0/0 0/0 .rodata          @6424 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6424 = 12.0f;
COMPILER_STRIP_GATE(0x80B1DFAC, &lit_6424);
#pragma pop

/* 80B1DFB0-80B1DFB4 000258 0004+00 0/2 0/0 0/0 .rodata          @6425 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6425 = 33.0f;
COMPILER_STRIP_GATE(0x80B1DFB0, &lit_6425);
#pragma pop

/* 80B1DFB4-80B1DFB8 00025C 0004+00 0/2 0/0 0/0 .rodata          @6426 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6426 = 200.0f;
COMPILER_STRIP_GATE(0x80B1DFB4, &lit_6426);
#pragma pop

/* 80B1DFB8-80B1DFBC 000260 0004+00 0/4 0/0 0/0 .rodata          @6427 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6427 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80B1DFB8, &lit_6427);
#pragma pop

/* 80B1DFBC-80B1DFC0 000264 0004+00 0/4 0/0 0/0 .rodata          @6428 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6428 = 17.0f / 20.0f;
COMPILER_STRIP_GATE(0x80B1DFBC, &lit_6428);
#pragma pop

/* 80B1E048-80B1E048 0002F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B1E0BF = "TKS_WARPBACK";
#pragma pop

/* 80B19DAC-80B1A30C 00586C 0560+00 1/0 0/0 0/0 .text            demo_warpBack__10daNpcTks_cFv */
void daNpcTks_c::demo_warpBack() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1DFC0-80B1DFC4 000268 0004+00 0/1 0/0 0/0 .rodata          @6538 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6538 = -150.0f;
COMPILER_STRIP_GATE(0x80B1DFC0, &lit_6538);
#pragma pop

/* 80B1DFC4-80B1DFC8 00026C 0004+00 0/1 0/0 0/0 .rodata          @6539 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6539 = 6600.0f;
COMPILER_STRIP_GATE(0x80B1DFC4, &lit_6539);
#pragma pop

/* 80B1DFC8-80B1DFCC 000270 0004+00 0/1 0/0 0/0 .rodata          @6540 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6540 = 4955.0f;
COMPILER_STRIP_GATE(0x80B1DFC8, &lit_6540);
#pragma pop

/* 80B1DFCC-80B1DFD0 000274 0004+00 0/1 0/0 0/0 .rodata          @6541 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6541 = 5480.0f;
COMPILER_STRIP_GATE(0x80B1DFCC, &lit_6541);
#pragma pop

/* 80B1DFD0-80B1DFD4 000278 0004+00 0/1 0/0 0/0 .rodata          @6542 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6542 = 31.0f;
COMPILER_STRIP_GATE(0x80B1DFD0, &lit_6542);
#pragma pop

/* 80B1A30C-80B1A888 005DCC 057C+00 1/0 0/0 0/0 .text            demo_walkBack__10daNpcTks_cFv */
void daNpcTks_c::demo_walkBack() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1DFD4-80B1DFDC 00027C 0008+00 0/1 0/0 0/0 .rodata          @6632 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6632[8] = {
    0x00, 0x00, 0x25, 0x20, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B1DFD4, &lit_6632);
#pragma pop

/* 80B1DFDC-80B1DFE0 000284 0004+00 0/1 0/0 0/0 .rodata          @6820 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6820 = 120.0f;
COMPILER_STRIP_GATE(0x80B1DFDC, &lit_6820);
#pragma pop

/* 80B1DFE0-80B1DFE4 000288 0004+00 0/1 0/0 0/0 .rodata          @6821 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6821 = 3000.0f;
COMPILER_STRIP_GATE(0x80B1DFE0, &lit_6821);
#pragma pop

/* 80B1DFE4-80B1DFE8 00028C 0004+00 0/1 0/0 0/0 .rodata          @6822 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6822 = 5500.0f;
COMPILER_STRIP_GATE(0x80B1DFE4, &lit_6822);
#pragma pop

/* 80B1DFE8-80B1DFF0 000290 0008+00 0/1 0/0 0/0 .rodata          @6823 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6823[8] = {
    0x3F, 0xE6, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66,
};
COMPILER_STRIP_GATE(0x80B1DFE8, &lit_6823);
#pragma pop

/* 80B1DFF0-80B1DFF4 000298 0004+00 0/1 0/0 0/0 .rodata          @6824 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6824 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B1DFF0, &lit_6824);
#pragma pop

/* 80B1DFF4-80B1DFF8 00029C 0004+00 0/1 0/0 0/0 .rodata          @6825 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6825 = 2.0f / 25.0f;
COMPILER_STRIP_GATE(0x80B1DFF4, &lit_6825);
#pragma pop

/* 80B1DFF8-80B1DFFC 0002A0 0004+00 0/1 0/0 0/0 .rodata          @6826 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6826 = 0x44CB61E3;
COMPILER_STRIP_GATE(0x80B1DFF8, &lit_6826);
#pragma pop

/* 80B1DFFC-80B1E000 0002A4 0004+00 0/2 0/0 0/0 .rodata          @6827 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6827 = -250.0f;
COMPILER_STRIP_GATE(0x80B1DFFC, &lit_6827);
#pragma pop

/* 80B1E000-80B1E004 0002A8 0004+00 0/1 0/0 0/0 .rodata          @6828 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6828 = 0x45AFAD5E;
COMPILER_STRIP_GATE(0x80B1E000, &lit_6828);
#pragma pop

/* 80B1E004-80B1E008 0002AC 0004+00 0/1 0/0 0/0 .rodata          @6829 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6829 = 0x4557D315;
COMPILER_STRIP_GATE(0x80B1E004, &lit_6829);
#pragma pop

/* 80B1E008-80B1E00C 0002B0 0004+00 0/1 0/0 0/0 .rodata          @6830 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6830 = 0x45AB6F61;
COMPILER_STRIP_GATE(0x80B1E008, &lit_6830);
#pragma pop

/* 80B1E00C-80B1E010 0002B4 0004+00 0/1 0/0 0/0 .rodata          @6831 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6831 = 8.0f;
COMPILER_STRIP_GATE(0x80B1E00C, &lit_6831);
#pragma pop

/* 80B1A888-80B1B6A0 006348 0E18+00 1/0 0/0 0/0 .text            demo_Lv7Start__10daNpcTks_cFv */
void daNpcTks_c::demo_Lv7Start() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1E010-80B1E014 0002B8 0004+00 0/1 0/0 0/0 .rodata          @6974 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6974 = 1225.0f;
COMPILER_STRIP_GATE(0x80B1E010, &lit_6974);
#pragma pop

/* 80B1E014-80B1E018 0002BC 0004+00 0/1 0/0 0/0 .rodata          @6975 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6975 = 0x4666452A;
COMPILER_STRIP_GATE(0x80B1E014, &lit_6975);
#pragma pop

/* 80B1E018-80B1E01C 0002C0 0004+00 0/1 0/0 0/0 .rodata          @6976 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6976 = 0x4572DB97;
COMPILER_STRIP_GATE(0x80B1E018, &lit_6976);
#pragma pop

/* 80B1E01C-80B1E020 0002C4 0004+00 0/1 0/0 0/0 .rodata          @6977 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6977 = -2.0f;
COMPILER_STRIP_GATE(0x80B1E01C, &lit_6977);
#pragma pop

/* 80B1E048-80B1E048 0002F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B1E0CC = "D_MN01";
#pragma pop

/* 80B1B6A0-80B1BD64 007160 06C4+00 2/0 0/0 0/0 .text            demo_Lv3PickUp__10daNpcTks_cFv */
void daNpcTks_c::demo_Lv3PickUp() {
    // NONMATCHING
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
void daNpcTks_c::main() {
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
void daNpcTks_c::ctrlBtk() {
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
bool daNpcTks_c::drawDbgInfo() {
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
