/**
 * @file d_a_npc_grz.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_grz.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__11daNpc_Grz_cFv();
extern "C" void __dt__Q211daNpc_Grz_c21daNpc_GrZ_prtclMngr_cFv();
extern "C" void __ct__Q211daNpc_Grz_c21daNpc_GrZ_prtclMngr_cFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__11daNpc_Grz_cFv();
extern "C" void create__11daNpc_Grz_cFv();
extern "C" void CreateHeap__11daNpc_Grz_cFv();
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
extern "C" void Delete__11daNpc_Grz_cFv();
extern "C" void Execute__11daNpc_Grz_cFv();
extern "C" void Draw__11daNpc_Grz_cFv();
extern "C" void ctrlJoint__11daNpc_Grz_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__11daNpc_Grz_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_Grz_cFP8J3DJointi();
extern "C" void setParam__11daNpc_Grz_cFv();
extern "C" void main__11daNpc_Grz_cFv();
extern "C" void ctrlBtk__11daNpc_Grz_cFv();
extern "C" void setAttnPos__11daNpc_Grz_cFv();
extern "C" void setCollisionPunch__11daNpc_Grz_cFv();
extern "C" void setExpressionAnm__11daNpc_Grz_cFib();
extern "C" void setExpressionBtp__11daNpc_Grz_cFi();
extern "C" void setExpression__11daNpc_Grz_cFif();
extern "C" void setMotionAnm__11daNpc_Grz_cFif();
extern "C" void setMotion__11daNpc_Grz_cFifi();
extern "C" bool drawDbgInfo__11daNpc_Grz_cFv();
extern "C" void drawOtherMdls__11daNpc_Grz_cFv();
extern "C" void getTypeFromParam__11daNpc_Grz_cFv();
extern "C" void isDelete__11daNpc_Grz_cFv();
extern "C" void reset__11daNpc_Grz_cFv();
extern "C" void resetCol__11daNpc_Grz_cFv();
extern "C" void playExpression__11daNpc_Grz_cFv();
extern "C" void playMotion__11daNpc_Grz_cFv();
extern "C" void chkAction__11daNpc_Grz_cFM11daNpc_Grz_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_Grz_cFM11daNpc_Grz_cFPCvPvPv_i();
extern "C" void selectAction__11daNpc_Grz_cFv();
extern "C" void doNormalAction__11daNpc_Grz_cFi();
extern "C" void doEvent__11daNpc_Grz_cFv();
extern "C" void setSkipZev__11daNpc_Grz_cFii();
extern "C" void setLookMode__11daNpc_Grz_cFi();
extern "C" void lookat__11daNpc_Grz_cFv();
extern "C" void setExpressionTalkAfter__11daNpc_Grz_cFv();
extern "C" void wait__11daNpc_Grz_cFPv();
extern "C" static void s_sub__FPvPv();
extern "C" static void s_sub2__FPvPv();
extern "C" static void s_sub3__FPvPv();
extern "C" void waitSmash__11daNpc_Grz_cFPv();
extern "C" void lieDown__11daNpc_Grz_cFPv();
extern "C" void waitWeak__11daNpc_Grz_cFPv();
extern "C" void talk__11daNpc_Grz_cFPv();
extern "C" void test__11daNpc_Grz_cFPv();
extern "C" void setPrtcl__11daNpc_Grz_cFv();
extern "C" void doWaitCut__11daNpc_Grz_cFi();
extern "C" void doRebirthCut__11daNpc_Grz_cFi();
extern "C" void doTalkStandCut__11daNpc_Grz_cFi();
extern "C" void doGoOutCut__11daNpc_Grz_cFi();
extern "C" void doStoneSmashCut__11daNpc_Grz_cFi();
extern "C" void doStoneSmashSkipCut__11daNpc_Grz_cFi();
extern "C" static void daNpc_Grz_Create__FPv();
extern "C" static void daNpc_Grz_Delete__FPv();
extern "C" static void daNpc_Grz_Execute__FPv();
extern "C" static void daNpc_Grz_Draw__FPv();
extern "C" static bool daNpc_Grz_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__18daNpcF_ActorMngr_cFv();
extern "C" void __ct__18daNpcF_ActorMngr_cFv();
extern "C" void __dt__13daNpcF_Path_cFv();
extern "C" void __dt__16daNpcF_SPCurve_cFv();
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
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_809EF064(void* _this, int*);
extern "C" void __sinit_d_a_npc_grz_cpp();
extern "C" void adjustShapeAngle__11daNpc_Grz_cFv();
extern "C" void __dt__17daNpc_Grz_Param_cFv();
extern "C" static void func_809EF1D0();
extern "C" static void func_809EF1D8();
extern "C" u8 const m__17daNpc_Grz_Param_c[128];
extern "C" extern char const* const d_a_npc_grz__stringBase0;
extern "C" void* mEvtCutNameList__11daNpc_Grz_c[7];
extern "C" u8 mEvtCutList__11daNpc_Grz_c[84];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGs_offStageSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setSkipZev__14dEvt_control_cFPvPc();
extern "C" void onSkipFade__14dEvt_control_cFv();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
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
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void initialize__18daNpcF_ActorMngr_cFv();
extern "C" void entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcF_ActorMngr_cFv();
extern "C" void getActorP__18daNpcF_ActorMngr_cFv();
extern "C" void initialize__15daNpcF_MatAnm_cFv();
extern "C" void initialize__16daNpcF_SPCurve_cFP5dPathi();
extern "C" void initialize__13daNpcF_Path_cFv();
extern "C" void setPathInfo__13daNpcF_Path_cFUcScUc();
extern "C" void getDstPos__13daNpcF_Path_cF4cXyzR4cXyz();
extern "C" void initialize__15daNpcF_Lookat_cFv();
extern "C" void setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz();
extern "C" void calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii();
extern "C" void execute__8daNpcF_cFv();
extern "C" void tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void srchAttnActor1__8daNpcF_cFPvPv();
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
extern "C" void hitChk2__8daNpcF_cFP8dCcD_Cylii();
extern "C" void setDamage__8daNpcF_cFiii();
extern "C" void ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void changeEvent__8daNpcF_cFPcPcUsUs();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void step__8daNpcF_cFsiii();
extern "C" void setAngle__8daNpcF_cFs();
extern "C" void getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii();
extern "C" void chkFindPlayer2__8daNpcF_cFis();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcF_c[68];
extern "C" u8 mCcDSph__8daNpcF_c[64];
extern "C" extern void* __vt__8daNpcF_c[18];
extern "C" extern void* __vt__15daNpcF_MatAnm_c[4 + 6 /* padding */];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 809EF638-809EF638 000444 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809EF638 = "TALK_STAND";
SECTION_DEAD static char const* const stringBase_809EF643 = "STONE_SMASH";
SECTION_DEAD static char const* const stringBase_809EF64F = "STONE_SMASH_SKIP";
SECTION_DEAD static char const* const stringBase_809EF660 = "grZ";
SECTION_DEAD static char const* const stringBase_809EF664 = "grZ1";
SECTION_DEAD static char const* const stringBase_809EF669 = "grZ2";
SECTION_DEAD static char const* const stringBase_809EF66E = "grZ3";
SECTION_DEAD static char const* const stringBase_809EF673 = "grZD1";
SECTION_DEAD static char const* const stringBase_809EF679 = "grZD3";
SECTION_DEAD static char const* const stringBase_809EF67F = "";
SECTION_DEAD static char const* const stringBase_809EF680 = "WAIT";
SECTION_DEAD static char const* const stringBase_809EF685 = "REBIRTH";
SECTION_DEAD static char const* const stringBase_809EF68D = "GO_OUT";
#pragma pop

/* 809EF6C0-809EF6C8 000020 0008+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
SECTION_DATA static u8 l_bmdGetParamList[8] = {
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
};

/* 809EF6C8-809EF7D8 000028 0110+00 1/2 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[272] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x03,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x03,
};

/* 809EF7D8-809EF828 000138 0050+00 1/1 0/0 0/0 .data            l_btpGetParamList */
SECTION_DATA static u8 l_btpGetParamList[80] = {
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x03,
};

/* 809EF828-809EF840 000188 0018+00 1/2 0/0 0/0 .data            l_btkGetParamList */
SECTION_DATA static u8 l_btkGetParamList[24] = {
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02,
};

/* 809EF840-809EF860 0001A0 0020+00 0/2 0/0 0/0 .data            l_evtGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_evtGetParamList[32] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05,
};
#pragma pop

/* 809EF860-809EF870 -00001 0010+00 1/3 0/0 0/0 .data            l_evtNames */
SECTION_DATA static void* l_evtNames[4] = {
    (void*)NULL,
    (void*)&d_a_npc_grz__stringBase0,
    (void*)(((char*)&d_a_npc_grz__stringBase0) + 0xB),
    (void*)(((char*)&d_a_npc_grz__stringBase0) + 0x17),
};

/* 809EF870-809EF884 0001D0 0014+00 1/0 0/0 0/0 .data            l_loadRes_YELIA */
SECTION_DATA static u8 l_loadRes_YELIA[20] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809EF884-809EF898 0001E4 0014+00 1/0 0/0 0/0 .data            l_loadRes_LieDown */
SECTION_DATA static u8 l_loadRes_LieDown[20] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809EF898-809EF8AC 0001F8 0014+00 1/0 0/0 0/0 .data            l_loadRes_Smash */
SECTION_DATA static u8 l_loadRes_Smash[20] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00,
    0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809EF8AC-809EF8C0 00020C 0014+00 1/0 0/0 0/0 .data            l_loadRes_GRZa */
SECTION_DATA static u8 l_loadRes_GRZa[20] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809EF8C0-809EF8D4 000220 0014+00 1/0 0/0 0/0 .data            l_loadRes_GRZ0 */
SECTION_DATA static u8 l_loadRes_GRZ0[20] = {
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809EF8D4-809EF8E8 -00001 0014+00 2/2 0/0 0/0 .data            l_loadRes_list */
SECTION_DATA static void* l_loadRes_list[5] = {
    (void*)&l_loadRes_YELIA, (void*)&l_loadRes_LieDown, (void*)&l_loadRes_Smash,
    (void*)&l_loadRes_GRZa,  (void*)&l_loadRes_GRZ0,
};

/* 809EF8E8-809EF900 -00001 0018+00 6/9 0/0 0/0 .data            l_resNames */
SECTION_DATA static void* l_resNames[6] = {
    (void*)(((char*)&d_a_npc_grz__stringBase0) + 0x28),
    (void*)(((char*)&d_a_npc_grz__stringBase0) + 0x2C),
    (void*)(((char*)&d_a_npc_grz__stringBase0) + 0x31),
    (void*)(((char*)&d_a_npc_grz__stringBase0) + 0x36),
    (void*)(((char*)&d_a_npc_grz__stringBase0) + 0x3B),
    (void*)(((char*)&d_a_npc_grz__stringBase0) + 0x41),
};

/* 809EF900-809EF904 -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)(((char*)&d_a_npc_grz__stringBase0) + 0x28);
#pragma pop

/* 809EF904-809EF920 -00001 001C+00 0/1 0/0 0/0 .data            mEvtCutNameList__11daNpc_Grz_c */
#pragma push
#pragma force_active on
SECTION_DATA void* daNpc_Grz_c::mEvtCutNameList[7] = {
    (void*)(((char*)&d_a_npc_grz__stringBase0) + 0x47),
    (void*)(((char*)&d_a_npc_grz__stringBase0) + 0x48),
    (void*)(((char*)&d_a_npc_grz__stringBase0) + 0x4D),
    (void*)&d_a_npc_grz__stringBase0,
    (void*)(((char*)&d_a_npc_grz__stringBase0) + 0x55),
    (void*)(((char*)&d_a_npc_grz__stringBase0) + 0xB),
    (void*)(((char*)&d_a_npc_grz__stringBase0) + 0x17),
};
#pragma pop

/* 809EF920-809EF92C -00001 000C+00 0/1 0/0 0/0 .data            @3811 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3811[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)doWaitCut__11daNpc_Grz_cFi,
};
#pragma pop

/* 809EF92C-809EF938 -00001 000C+00 0/1 0/0 0/0 .data            @3812 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3812[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)doRebirthCut__11daNpc_Grz_cFi,
};
#pragma pop

/* 809EF938-809EF944 -00001 000C+00 0/1 0/0 0/0 .data            @3813 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3813[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)doTalkStandCut__11daNpc_Grz_cFi,
};
#pragma pop

/* 809EF944-809EF950 -00001 000C+00 0/1 0/0 0/0 .data            @3814 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3814[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)doGoOutCut__11daNpc_Grz_cFi,
};
#pragma pop

/* 809EF950-809EF95C -00001 000C+00 0/1 0/0 0/0 .data            @3815 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3815[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)doStoneSmashCut__11daNpc_Grz_cFi,
};
#pragma pop

/* 809EF95C-809EF968 -00001 000C+00 0/1 0/0 0/0 .data            @3816 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3816[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)doStoneSmashSkipCut__11daNpc_Grz_cFi,
};
#pragma pop

/* 809EF968-809EF9BC 0002C8 0054+00 0/2 0/0 0/0 .data            mEvtCutList__11daNpc_Grz_c */
#pragma push
#pragma force_active on
SECTION_DATA u8 daNpc_Grz_c::mEvtCutList[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 809EF9BC-809EF9CC 00031C 0010+00 1/1 0/0 0/0 .data            l_attack_jnt$4889 */
SECTION_DATA static u8 l_attack_jnt[16] = {
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x14,
};

/* 809EF9CC-809EFA08 -00001 003C+00 1/1 0/0 0/0 .data            @5064 */
SECTION_DATA static void* lit_5064[15] = {
    (void*)(((char*)setExpressionAnm__11daNpc_Grz_cFib) + 0x90),
    (void*)(((char*)setExpressionAnm__11daNpc_Grz_cFib) + 0xAC),
    (void*)(((char*)setExpressionAnm__11daNpc_Grz_cFib) + 0xCC),
    (void*)(((char*)setExpressionAnm__11daNpc_Grz_cFib) + 0xE8),
    (void*)(((char*)setExpressionAnm__11daNpc_Grz_cFib) + 0x108),
    (void*)(((char*)setExpressionAnm__11daNpc_Grz_cFib) + 0x124),
    (void*)(((char*)setExpressionAnm__11daNpc_Grz_cFib) + 0x144),
    (void*)(((char*)setExpressionAnm__11daNpc_Grz_cFib) + 0x160),
    (void*)(((char*)setExpressionAnm__11daNpc_Grz_cFib) + 0x180),
    (void*)(((char*)setExpressionAnm__11daNpc_Grz_cFib) + 0x19C),
    (void*)(((char*)setExpressionAnm__11daNpc_Grz_cFib) + 0x1B8),
    (void*)(((char*)setExpressionAnm__11daNpc_Grz_cFib) + 0x1D4),
    (void*)(((char*)setExpressionAnm__11daNpc_Grz_cFib) + 0x1F0),
    (void*)(((char*)setExpressionAnm__11daNpc_Grz_cFib) + 0x210),
    (void*)(((char*)setExpressionAnm__11daNpc_Grz_cFib) + 0x230),
};

/* 809EFA08-809EFA54 -00001 004C+00 1/1 0/0 0/0 .data            @5151 */
SECTION_DATA static void* lit_5151[19] = {
    (void*)(((char*)setMotionAnm__11daNpc_Grz_cFif) + 0x110),
    (void*)(((char*)setMotionAnm__11daNpc_Grz_cFif) + 0xA8),
    (void*)(((char*)setMotionAnm__11daNpc_Grz_cFif) + 0xB0),
    (void*)(((char*)setMotionAnm__11daNpc_Grz_cFif) + 0x110),
    (void*)(((char*)setMotionAnm__11daNpc_Grz_cFif) + 0xB8),
    (void*)(((char*)setMotionAnm__11daNpc_Grz_cFif) + 0x110),
    (void*)(((char*)setMotionAnm__11daNpc_Grz_cFif) + 0x110),
    (void*)(((char*)setMotionAnm__11daNpc_Grz_cFif) + 0x110),
    (void*)(((char*)setMotionAnm__11daNpc_Grz_cFif) + 0xC0),
    (void*)(((char*)setMotionAnm__11daNpc_Grz_cFif) + 0x110),
    (void*)(((char*)setMotionAnm__11daNpc_Grz_cFif) + 0xD0),
    (void*)(((char*)setMotionAnm__11daNpc_Grz_cFif) + 0xD8),
    (void*)(((char*)setMotionAnm__11daNpc_Grz_cFif) + 0x110),
    (void*)(((char*)setMotionAnm__11daNpc_Grz_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpc_Grz_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_Grz_cFif) + 0xF8),
    (void*)(((char*)setMotionAnm__11daNpc_Grz_cFif) + 0x110),
    (void*)(((char*)setMotionAnm__11daNpc_Grz_cFif) + 0x110),
    (void*)(((char*)setMotionAnm__11daNpc_Grz_cFif) + 0x100),
};

/* 809EFA54-809EFA60 -00001 000C+00 0/1 0/0 0/0 .data            @5438 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5438[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__11daNpc_Grz_cFPv,
};
#pragma pop

/* 809EFA60-809EFA6C -00001 000C+00 0/1 0/0 0/0 .data            @5444 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5444[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)lieDown__11daNpc_Grz_cFPv,
};
#pragma pop

/* 809EFA6C-809EFA78 -00001 000C+00 0/1 0/0 0/0 .data            @5446 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5446[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitWeak__11daNpc_Grz_cFPv,
};
#pragma pop

/* 809EFA78-809EFA84 -00001 000C+00 0/1 0/0 0/0 .data            @5448 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5448[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitSmash__11daNpc_Grz_cFPv,
};
#pragma pop

/* 809EFA84-809EFA90 -00001 000C+00 0/1 0/0 0/0 .data            @5450 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5450[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_Grz_cFPv,
};
#pragma pop

/* 809EFA90-809EFA9C -00001 000C+00 0/1 0/0 0/0 .data            @5495 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5495[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Grz_cFPv,
};
#pragma pop

/* 809EFA9C-809EFAA8 -00001 000C+00 0/1 0/0 0/0 .data            @5503 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5503[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Grz_cFPv,
};
#pragma pop

/* 809EFAA8-809EFAC8 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Grz_MethodTable */
static actor_method_class daNpc_Grz_MethodTable = {
    (process_method_func)daNpc_Grz_Create__FPv,
    (process_method_func)daNpc_Grz_Delete__FPv,
    (process_method_func)daNpc_Grz_Execute__FPv,
    (process_method_func)daNpc_Grz_IsDelete__FPv,
    (process_method_func)daNpc_Grz_Draw__FPv,
};

/* 809EFAC8-809EFAF8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_GRZ */
extern actor_process_profile_definition g_profile_NPC_GRZ = {
  fpcLy_CURRENT_e,               // mLayerID
  7,                             // mListID
  fpcPi_CURRENT_e,               // mListPrio
  PROC_NPC_GRZ,                  // mProcName
  &g_fpcLf_Method.base,         // sub_method
  sizeof(daNpc_Grz_c),           // mSize
  0,                             // mSizeOther
  0,                             // mParameters
  &g_fopAc_Method.base,          // sub_method
  314,                           // mPriority
  &daNpc_Grz_MethodTable,        // sub_method
  0x00044100,                    // mStatus
  fopAc_NPC_e,                   // mActorType
  fopAc_CULLBOX_CUSTOM_e,        // cullType
};

/* 809EFAF8-809EFB04 000458 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 809EFB04-809EFB4C 000464 0048+00 2/2 0/0 0/0 .data            __vt__11daNpc_Grz_c */
SECTION_DATA extern void* __vt__11daNpc_Grz_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_Grz_cFv,
    (void*)setParam__11daNpc_Grz_cFv,
    (void*)main__11daNpc_Grz_cFv,
    (void*)ctrlBtk__11daNpc_Grz_cFv,
    (void*)adjustShapeAngle__11daNpc_Grz_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__11daNpc_Grz_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__11daNpc_Grz_cFib,
    (void*)setExpressionBtp__11daNpc_Grz_cFi,
    (void*)setExpression__11daNpc_Grz_cFif,
    (void*)setMotionAnm__11daNpc_Grz_cFif,
    (void*)setMotion__11daNpc_Grz_cFifi,
    (void*)drawDbgInfo__11daNpc_Grz_cFv,
    (void*)drawOtherMdls__11daNpc_Grz_cFv,
};

/* 809EFB4C-809EFB58 0004AC 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 809EFB58-809EFB7C 0004B8 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809EF1D8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809EF1D0,
};

/* 809EFB7C-809EFB88 0004DC 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 809EFB88-809EFB94 0004E8 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 809EFB94-809EFBA0 0004F4 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 809EFBA0-809EFBAC 000500 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 809EFBAC-809EFBB8 00050C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 809EFBB8-809EFBC4 000518 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 809EFBC4-809EFBD0 000524 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 809EFBD0-809EFBDC 000530 000C+00 4/4 0/0 0/0 .data            __vt__16daNpcF_SPCurve_c */
SECTION_DATA extern void* __vt__16daNpcF_SPCurve_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daNpcF_SPCurve_cFv,
};

/* 809EFBDC-809EFBE8 00053C 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcF_Path_c */
SECTION_DATA extern void* __vt__13daNpcF_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcF_Path_cFv,
};

/* 809EFBE8-809EFBF4 000548 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 809E840C-809E8658 0000EC 024C+00 1/1 0/0 0/0 .text            __ct__11daNpc_Grz_cFv */
daNpc_Grz_c::daNpc_Grz_c() {
    // NONMATCHING
}

/* 809E8658-809E8694 000338 003C+00 2/2 0/0 0/0 .text
 * __dt__Q211daNpc_Grz_c21daNpc_GrZ_prtclMngr_cFv               */
daNpc_Grz_c::daNpc_GrZ_prtclMngr_c::~daNpc_GrZ_prtclMngr_c() {
    // NONMATCHING
}

/* 809E8694-809E8698 000374 0004+00 1/1 0/0 0/0 .text
 * __ct__Q211daNpc_Grz_c21daNpc_GrZ_prtclMngr_cFv               */
daNpc_Grz_c::daNpc_GrZ_prtclMngr_c::daNpc_GrZ_prtclMngr_c() {
    /* empty function */
}

/* 809E8698-809E8764 000378 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 809E8764-809E87E8 000444 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 809E87E8-809E8830 0004C8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 809E8830-809E8878 000510 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 809E8878-809E88C0 000558 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 809E88C0-809E8BA0 0005A0 02E0+00 1/0 0/0 0/0 .text            __dt__11daNpc_Grz_cFv */
daNpc_Grz_c::~daNpc_Grz_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EF1F4-809EF274 000000 0080+00 19/19 0/0 0/0 .rodata          m__17daNpc_Grz_Param_c */
SECTION_RODATA u8 const daNpc_Grz_Param_c::m[128] = {
    0x43, 0x02, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x44, 0x96, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0xDC, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x07, 0x00, 0x06, 0x00, 0x09, 0x00, 0x06,
    0x42, 0xA0, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0xFF, 0xD8,
    0xFF, 0xD8, 0xFF, 0xD8, 0x41, 0x30, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF1F4, &daNpc_Grz_Param_c::m);

/* 809EF274-809EF288 000080 0014+00 0/1 0/0 0/0 .rodata          heapSize$4217 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[20] = {
    0x00, 0x00, 0x3A, 0xE0, 0x00, 0x00, 0x3A, 0xF0, 0x00, 0x00,
    0x3A, 0xE0, 0x00, 0x00, 0x3A, 0xF0, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF274, &heapSize);
#pragma pop

/* 809EF288-809EF28C 000094 0004+00 0/1 0/0 0/0 .rodata          @4302 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4302 = -300.0f;
COMPILER_STRIP_GATE(0x809EF288, &lit_4302);
#pragma pop

/* 809EF28C-809EF290 000098 0004+00 0/1 0/0 0/0 .rodata          @4303 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4303 = -50.0f;
COMPILER_STRIP_GATE(0x809EF28C, &lit_4303);
#pragma pop

/* 809EF290-809EF294 00009C 0004+00 0/1 0/0 0/0 .rodata          @4304 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4304 = 300.0f;
COMPILER_STRIP_GATE(0x809EF290, &lit_4304);
#pragma pop

/* 809EF294-809EF298 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4305 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4305 = 450.0f;
COMPILER_STRIP_GATE(0x809EF294, &lit_4305);
#pragma pop

/* 809E8BA0-809E8E68 000880 02C8+00 1/1 0/0 0/0 .text            create__11daNpc_Grz_cFv */
void daNpc_Grz_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EF298-809EF29C 0000A4 0004+00 4/8 0/0 0/0 .rodata          @4359 */
SECTION_RODATA static f32 const lit_4359 = 1.0f;
COMPILER_STRIP_GATE(0x809EF298, &lit_4359);

/* 809EF29C-809EF2A0 0000A8 0004+00 5/12 0/0 0/0 .rodata          @4360 */
SECTION_RODATA static u8 const lit_4360[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809EF29C, &lit_4360);

/* 809E8E68-809E90F0 000B48 0288+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_Grz_cFv */
void daNpc_Grz_c::CreateHeap() {
    // NONMATCHING
}

/* 809E90F0-809E912C 000DD0 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 809E912C-809E9144 000E0C 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 809E9144-809E9180 000E24 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 809E9180-809E9198 000E60 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 809E9198-809E91E0 000E78 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 809E91E0-809E9204 000EC0 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 809E9204-809E9240 000EE4 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 809E9240-809E9258 000F20 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 809E9258-809E9294 000F38 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 809E9294-809E92AC 000F74 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 809E92AC-809E92E0 000F8C 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_Grz_cFv */
void daNpc_Grz_c::Delete() {
    // NONMATCHING
}

/* 809E92E0-809E9324 000FC0 0044+00 2/2 0/0 0/0 .text            Execute__11daNpc_Grz_cFv */
void daNpc_Grz_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EF2A0-809EF2A4 0000AC 0004+00 0/3 0/0 0/0 .rodata          @4464 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4464 = 20.0f;
COMPILER_STRIP_GATE(0x809EF2A0, &lit_4464);
#pragma pop

/* 809E9324-809E9568 001004 0244+00 1/1 0/0 0/0 .text            Draw__11daNpc_Grz_cFv */
void daNpc_Grz_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EF2A4-809EF2B0 0000B0 000C+00 1/1 0/0 0/0 .rodata          @4470 */
SECTION_RODATA static u8 const lit_4470[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x809EF2A4, &lit_4470);

/* 809E9568-809E979C 001248 0234+00 1/1 0/0 0/0 .text
 * ctrlJoint__11daNpc_Grz_cFP8J3DJointP8J3DModel                */
void daNpc_Grz_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 809E979C-809E97BC 00147C 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_Grz_cFP10fopAc_ac_c              */
void daNpc_Grz_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809E97BC-809E9808 00149C 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpc_Grz_cFP8J3DJointi
 */
void daNpc_Grz_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 809E9808-809E9954 0014E8 014C+00 1/0 0/0 0/0 .text            setParam__11daNpc_Grz_cFv */
void daNpc_Grz_c::setParam() {
    // NONMATCHING
}

/* 809E9954-809E9AD4 001634 0180+00 1/0 0/0 0/0 .text            main__11daNpc_Grz_cFv */
void daNpc_Grz_c::main() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EF2B0-809EF2B4 0000BC 0004+00 9/13 0/0 0/0 .rodata          @4685 */
SECTION_RODATA static f32 const lit_4685 = -1.0f;
COMPILER_STRIP_GATE(0x809EF2B0, &lit_4685);

/* 809EF2B4-809EF2B8 0000C0 0004+00 1/1 0/0 0/0 .rodata          @4686 */
SECTION_RODATA static f32 const lit_4686 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x809EF2B4, &lit_4686);

/* 809E9AD4-809E9BB4 0017B4 00E0+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpc_Grz_cFv */
void daNpc_Grz_c::ctrlBtk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EF2B8-809EF2BC 0000C4 0004+00 0/2 0/0 0/0 .rodata          @4841 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4841 = 40.0f;
COMPILER_STRIP_GATE(0x809EF2B8, &lit_4841);
#pragma pop

/* 809EF2BC-809EF2C0 0000C8 0004+00 0/2 0/0 0/0 .rodata          @4842 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4842 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x809EF2BC, &lit_4842);
#pragma pop

/* 809EF2C0-809EF2C4 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4843 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4843 = 125.0f;
COMPILER_STRIP_GATE(0x809EF2C0, &lit_4843);
#pragma pop

/* 809EF2C4-809EF2CC 0000D0 0008+00 0/4 0/0 0/0 .rodata          @4844 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4844[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF2C4, &lit_4844);
#pragma pop

/* 809EF2CC-809EF2D4 0000D8 0008+00 0/4 0/0 0/0 .rodata          @4845 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4845[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF2CC, &lit_4845);
#pragma pop

/* 809EF2D4-809EF2DC 0000E0 0008+00 0/4 0/0 0/0 .rodata          @4846 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4846[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF2D4, &lit_4846);
#pragma pop

/* 809EF2DC-809EF2E0 0000E8 0004+00 0/3 0/0 0/0 .rodata          @4847 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4847 = 100.0f;
COMPILER_STRIP_GATE(0x809EF2DC, &lit_4847);
#pragma pop

/* 809EF2E0-809EF2E4 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4848 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4848 = 120.0f;
COMPILER_STRIP_GATE(0x809EF2E0, &lit_4848);
#pragma pop

/* 809EF2E4-809EF2E8 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4849 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4849 = 200.0f;
COMPILER_STRIP_GATE(0x809EF2E4, &lit_4849);
#pragma pop

/* 809EF2E8-809EF2EC 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4850 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4850 = 110.0f;
COMPILER_STRIP_GATE(0x809EF2E8, &lit_4850);
#pragma pop

/* 809EF2EC-809EF2F0 0000F8 0004+00 0/3 0/0 0/0 .rodata          @4851 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4851 = 50.0f;
COMPILER_STRIP_GATE(0x809EF2EC, &lit_4851);
#pragma pop

/* 809EF2F0-809EF2F4 0000FC 0004+00 0/3 0/0 0/0 .rodata          @4852 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4852 = 35.0f;
COMPILER_STRIP_GATE(0x809EF2F0, &lit_4852);
#pragma pop

/* 809EFC48-809EFC54 000048 000C+00 1/1 0/0 0/0 .bss             @3810 */
static u8 lit_3810[12];

/* 809EFC54-809EFC58 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 809EFC58-809EFC68 000058 000C+04 0/1 0/0 0/0 .bss             @4691 */
#pragma push
#pragma force_active on
static u8 lit_4691[12 + 4 /* padding */];
#pragma pop

/* 809EFC68-809EFC74 000068 000C+00 0/1 0/0 0/0 .bss             eyeOffset$4690 */
#pragma push
#pragma force_active on
static u8 eyeOffset[12];
#pragma pop

/* 809E9BB4-809EA1DC 001894 0628+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_Grz_cFv */
void daNpc_Grz_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EF2F4-809EF2F8 000100 0004+00 0/1 0/0 0/0 .rodata          @5018 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5018 = 15.0f;
COMPILER_STRIP_GATE(0x809EF2F4, &lit_5018);
#pragma pop

/* 809EF2F8-809EF2FC 000104 0004+00 0/1 0/0 0/0 .rodata          @5019 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5019 = 16.0f;
COMPILER_STRIP_GATE(0x809EF2F8, &lit_5019);
#pragma pop

/* 809EF2FC-809EF300 000108 0004+00 0/1 0/0 0/0 .rodata          @5020 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5020 = 36.0f;
COMPILER_STRIP_GATE(0x809EF2FC, &lit_5020);
#pragma pop

/* 809EF300-809EF304 00010C 0004+00 0/1 0/0 0/0 .rodata          @5021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5021 = 500.0f;
COMPILER_STRIP_GATE(0x809EF300, &lit_5021);
#pragma pop

/* 809EF304-809EF308 000110 0004+00 0/1 0/0 0/0 .rodata          @5022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5022 = 700.0f;
COMPILER_STRIP_GATE(0x809EF304, &lit_5022);
#pragma pop

/* 809EF308-809EF30C 000114 0004+00 0/1 0/0 0/0 .rodata          @5023 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5023 = 900.0f;
COMPILER_STRIP_GATE(0x809EF308, &lit_5023);
#pragma pop

/* 809EF30C-809EF310 000118 0004+00 0/1 0/0 0/0 .rodata          @5024 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5024 = 1100.0f;
COMPILER_STRIP_GATE(0x809EF30C, &lit_5024);
#pragma pop

/* 809EF310-809EF314 00011C 0004+00 0/1 0/0 0/0 .rodata          @5025 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5025 = 1300.0f;
COMPILER_STRIP_GATE(0x809EF310, &lit_5025);
#pragma pop

/* 809EF314-809EF318 000120 0004+00 0/1 0/0 0/0 .rodata          @5026 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5026 = 1500.0f;
COMPILER_STRIP_GATE(0x809EF314, &lit_5026);
#pragma pop

/* 809EF318-809EF31C 000124 0004+00 0/3 0/0 0/0 .rodata          @5027 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5027 = 10.0f;
COMPILER_STRIP_GATE(0x809EF318, &lit_5027);
#pragma pop

/* 809EF31C-809EF320 000128 0004+00 0/1 0/0 0/0 .rodata          @5028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5028 = 18.0f;
COMPILER_STRIP_GATE(0x809EF31C, &lit_5028);
#pragma pop

/* 809EF320-809EF324 00012C 0004+00 0/1 0/0 0/0 .rodata          @5029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5029 = 2.0f;
COMPILER_STRIP_GATE(0x809EF320, &lit_5029);
#pragma pop

/* 809EF324-809EF328 000130 0004+00 0/3 0/0 0/0 .rodata          @5030 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5030 = 29.0f;
COMPILER_STRIP_GATE(0x809EF324, &lit_5030);
#pragma pop

/* 809EF328-809EF32C 000134 0004+00 0/1 0/0 0/0 .rodata          @5031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5031 = 85.0f;
COMPILER_STRIP_GATE(0x809EF328, &lit_5031);
#pragma pop

/* 809EF32C-809EF330 000138 0004+00 0/1 0/0 0/0 .rodata          @5032 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5032 = 245.0f;
COMPILER_STRIP_GATE(0x809EF32C, &lit_5032);
#pragma pop

/* 809EA1DC-809EA734 001EBC 0558+00 1/1 0/0 0/0 .text            setCollisionPunch__11daNpc_Grz_cFv
 */
void daNpc_Grz_c::setCollisionPunch() {
    // NONMATCHING
}

/* 809EA734-809EAA08 002414 02D4+00 2/0 0/0 0/0 .text            setExpressionAnm__11daNpc_Grz_cFib
 */
void daNpc_Grz_c::setExpressionAnm(int param_0, bool param_1) {
    // NONMATCHING
}

/* 809EAA08-809EAB34 0026E8 012C+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpc_Grz_cFi
 */
void daNpc_Grz_c::setExpressionBtp(int param_0) {
    // NONMATCHING
}

/* 809EAB34-809EAB60 002814 002C+00 1/0 0/0 0/0 .text            setExpression__11daNpc_Grz_cFif */
void daNpc_Grz_c::setExpression(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 809EAB60-809EAD4C 002840 01EC+00 2/0 0/0 0/0 .text            setMotionAnm__11daNpc_Grz_cFif */
bool daNpc_Grz_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 809EAD4C-809EAD90 002A2C 0044+00 1/0 0/0 0/0 .text            setMotion__11daNpc_Grz_cFifi */
void daNpc_Grz_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 809EAD90-809EAD98 002A70 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_Grz_cFv */
bool daNpc_Grz_c::drawDbgInfo() {
    return false;
}

/* 809EAD98-809EAD9C 002A78 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__11daNpc_Grz_cFv */
void daNpc_Grz_c::drawOtherMdls() {
    /* empty function */
}

/* 809EAD9C-809EADE8 002A7C 004C+00 1/1 0/0 0/0 .text            getTypeFromParam__11daNpc_Grz_cFv
 */
void daNpc_Grz_c::getTypeFromParam() {
    // NONMATCHING
}

/* 809EADE8-809EAE88 002AC8 00A0+00 1/1 0/0 0/0 .text            isDelete__11daNpc_Grz_cFv */
void daNpc_Grz_c::isDelete() {
    // NONMATCHING
}

/* 809EAE88-809EB154 002B68 02CC+00 1/1 0/0 0/0 .text            reset__11daNpc_Grz_cFv */
void daNpc_Grz_c::reset() {
    // NONMATCHING
}

/* 809EB154-809EB234 002E34 00E0+00 1/1 0/0 0/0 .text            resetCol__11daNpc_Grz_cFv */
void daNpc_Grz_c::resetCol() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EF330-809EF33C 00013C 000C+00 0/1 0/0 0/0 .rodata          @5305 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5305[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809EF330, &lit_5305);
#pragma pop

/* 809EF33C-809EF348 000148 000C+00 0/1 0/0 0/0 .rodata          @5306 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5306[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF33C, &lit_5306);
#pragma pop

/* 809EF348-809EF350 000154 0008+00 0/1 0/0 0/0 .rodata          @5307 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5307[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF348, &lit_5307);
#pragma pop

/* 809EF350-809EF35C 00015C 000C+00 0/1 0/0 0/0 .rodata          @5308 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5308[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809EF350, &lit_5308);
#pragma pop

/* 809EF35C-809EF368 000168 000C+00 0/1 0/0 0/0 .rodata          @5309 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5309[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF35C, &lit_5309);
#pragma pop

/* 809EF368-809EF370 000174 0008+00 0/1 0/0 0/0 .rodata          @5310 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5310[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF368, &lit_5310);
#pragma pop

/* 809EF370-809EF37C 00017C 000C+00 0/1 0/0 0/0 .rodata          @5311 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5311[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809EF370, &lit_5311);
#pragma pop

/* 809EF37C-809EF388 000188 000C+00 0/1 0/0 0/0 .rodata          @5312 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5312[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF37C, &lit_5312);
#pragma pop

/* 809EF388-809EF390 000194 0008+00 0/1 0/0 0/0 .rodata          @5313 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5313[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF388, &lit_5313);
#pragma pop

/* 809EF390-809EF39C 00019C 000C+00 0/1 0/0 0/0 .rodata          @5314 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5314[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809EF390, &lit_5314);
#pragma pop

/* 809EF39C-809EF3A8 0001A8 000C+00 0/1 0/0 0/0 .rodata          @5315 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5315[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF39C, &lit_5315);
#pragma pop

/* 809EF3A8-809EF3B0 0001B4 0008+00 0/1 0/0 0/0 .rodata          @5316 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5316[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF3A8, &lit_5316);
#pragma pop

/* 809EF3B0-809EF3BC 0001BC 000C+00 0/1 0/0 0/0 .rodata          @5317 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5317[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF3B0, &lit_5317);
#pragma pop

/* 809EF3BC-809EF3C0 0001C8 0004+00 0/1 0/0 0/0 .rodata          @5318 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5318[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809EF3BC, &lit_5318);
#pragma pop

/* 809EF3C0-809EF3CC 0001CC 000C+00 0/1 0/0 0/0 .rodata          @5319 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5319[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF3C0, &lit_5319);
#pragma pop

/* 809EF3CC-809EF3D0 0001D8 0004+00 0/1 0/0 0/0 .rodata          @5320 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5320[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809EF3CC, &lit_5320);
#pragma pop

/* 809EF3D0-809EF3DC 0001DC 000C+00 0/1 0/0 0/0 .rodata          @5321 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5321[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809EF3D0, &lit_5321);
#pragma pop

/* 809EF3DC-809EF3E8 0001E8 000C+00 0/1 0/0 0/0 .rodata          @5322 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5322[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF3DC, &lit_5322);
#pragma pop

/* 809EF3E8-809EF3F0 0001F4 0008+00 0/1 0/0 0/0 .rodata          @5323 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5323[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF3E8, &lit_5323);
#pragma pop

/* 809EF3F0-809EF3FC 0001FC 000C+00 0/1 0/0 0/0 .rodata          @5324 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5324[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF3F0, &lit_5324);
#pragma pop

/* 809EF3FC-809EF400 000208 0004+00 0/1 0/0 0/0 .rodata          @5325 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5325[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809EF3FC, &lit_5325);
#pragma pop

/* 809EF400-809EF40C 00020C 000C+00 0/1 0/0 0/0 .rodata          @5326 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5326[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809EF400, &lit_5326);
#pragma pop

/* 809EF40C-809EF410 000218 0004+00 0/1 0/0 0/0 .rodata          @5327 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5327[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809EF40C, &lit_5327);
#pragma pop

/* 809EF410-809EF41C 00021C 000C+00 0/1 0/0 0/0 .rodata          @5328 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5328[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF410, &lit_5328);
#pragma pop

/* 809EF41C-809EF420 000228 0004+00 0/1 0/0 0/0 .rodata          @5329 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5329[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809EF41C, &lit_5329);
#pragma pop

/* 809EF420-809EF42C 00022C 000C+00 0/1 0/0 0/0 .rodata          @5330 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5330[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF420, &lit_5330);
#pragma pop

/* 809EF42C-809EF430 000238 0004+00 0/1 0/0 0/0 .rodata          @5331 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5331[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809EF42C, &lit_5331);
#pragma pop

/* 809EB234-809EB5C0 002F14 038C+00 1/1 0/0 0/0 .text            playExpression__11daNpc_Grz_cFv */
void daNpc_Grz_c::playExpression() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EF430-809EF45C 00023C 002C+00 0/0 0/0 0/0 .rodata          @5332 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5332[44] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF430, &lit_5332);
#pragma pop

/* 809EF45C-809EF468 000268 000C+00 0/1 0/0 0/0 .rodata          @5358 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5358[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF45C, &lit_5358);
#pragma pop

/* 809EF468-809EF46C 000274 0004+00 0/1 0/0 0/0 .rodata          @5359 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5359[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809EF468, &lit_5359);
#pragma pop

/* 809EF46C-809EF478 000278 000C+00 0/1 0/0 0/0 .rodata          @5360 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5360[12] = {
    0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF46C, &lit_5360);
#pragma pop

/* 809EF478-809EF47C 000284 0004+00 0/1 0/0 0/0 .rodata          @5361 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5361[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809EF478, &lit_5361);
#pragma pop

/* 809EF47C-809EF488 000288 000C+00 0/1 0/0 0/0 .rodata          @5362 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5362[12] = {
    0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809EF47C, &lit_5362);
#pragma pop

/* 809EF488-809EF494 000294 000C+00 0/1 0/0 0/0 .rodata          @5363 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5363[12] = {
    0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF488, &lit_5363);
#pragma pop

/* 809EF494-809EF49C 0002A0 0008+00 0/1 0/0 0/0 .rodata          @5364 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5364[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF494, &lit_5364);
#pragma pop

/* 809EF49C-809EF4A8 0002A8 000C+00 0/1 0/0 0/0 .rodata          @5365 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5365[12] = {
    0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF49C, &lit_5365);
#pragma pop

/* 809EF4A8-809EF4AC 0002B4 0004+00 0/1 0/0 0/0 .rodata          @5366 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5366[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809EF4A8, &lit_5366);
#pragma pop

/* 809EF4AC-809EF4B8 0002B8 000C+00 0/1 0/0 0/0 .rodata          @5367 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5367[12] = {
    0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809EF4AC, &lit_5367);
#pragma pop

/* 809EF4B8-809EF4C4 0002C4 000C+00 0/1 0/0 0/0 .rodata          @5368 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5368[12] = {
    0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF4B8, &lit_5368);
#pragma pop

/* 809EF4C4-809EF4CC 0002D0 0008+00 0/1 0/0 0/0 .rodata          @5369 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5369[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF4C4, &lit_5369);
#pragma pop

/* 809EF4CC-809EF4D8 0002D8 000C+00 0/1 0/0 0/0 .rodata          @5370 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5370[12] = {
    0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809EF4CC, &lit_5370);
#pragma pop

/* 809EF4D8-809EF4E4 0002E4 000C+00 0/1 0/0 0/0 .rodata          @5371 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5371[12] = {
    0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF4D8, &lit_5371);
#pragma pop

/* 809EF4E4-809EF4EC 0002F0 0008+00 0/1 0/0 0/0 .rodata          @5372 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5372[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF4E4, &lit_5372);
#pragma pop

/* 809EF4EC-809EF4F8 0002F8 000C+00 0/1 0/0 0/0 .rodata          @5373 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5373[12] = {
    0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF4EC, &lit_5373);
#pragma pop

/* 809EF4F8-809EF4FC 000304 0004+00 0/1 0/0 0/0 .rodata          @5374 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5374[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809EF4F8, &lit_5374);
#pragma pop

/* 809EF4FC-809EF508 000308 000C+00 0/1 0/0 0/0 .rodata          @5375 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5375[12] = {
    0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809EF4FC, &lit_5375);
#pragma pop

/* 809EF508-809EF514 000314 000C+00 0/1 0/0 0/0 .rodata          @5376 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5376[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF508, &lit_5376);
#pragma pop

/* 809EF514-809EF51C 000320 0008+00 0/1 0/0 0/0 .rodata          @5377 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5377[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF514, &lit_5377);
#pragma pop

/* 809EF51C-809EF528 000328 000C+00 0/1 0/0 0/0 .rodata          @5378 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5378[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809EF51C, &lit_5378);
#pragma pop

/* 809EF528-809EF534 000334 000C+00 0/1 0/0 0/0 .rodata          @5379 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5379[12] = {
    0x00, 0x14, 0x00, 0x00, 0x40, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF528, &lit_5379);
#pragma pop

/* 809EF534-809EF53C 000340 0008+00 0/1 0/0 0/0 .rodata          @5380 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5380[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF534, &lit_5380);
#pragma pop

/* 809EF53C-809EF548 000348 000C+00 0/1 0/0 0/0 .rodata          @5381 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5381[12] = {
    0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809EF53C, &lit_5381);
#pragma pop

/* 809EF548-809EF554 000354 000C+00 0/1 0/0 0/0 .rodata          @5382 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5382[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF548, &lit_5382);
#pragma pop

/* 809EF554-809EF55C 000360 0008+00 0/1 0/0 0/0 .rodata          @5383 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5383[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF554, &lit_5383);
#pragma pop

/* 809EF55C-809EF568 000368 000C+00 0/1 0/0 0/0 .rodata          @5384 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5384[12] = {
    0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF55C, &lit_5384);
#pragma pop

/* 809EF568-809EF56C 000374 0004+00 0/1 0/0 0/0 .rodata          @5385 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5385[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809EF568, &lit_5385);
#pragma pop

/* 809EF56C-809EF578 000378 000C+00 0/1 0/0 0/0 .rodata          @5386 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5386[12] = {
    0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF56C, &lit_5386);
#pragma pop

/* 809EF578-809EF57C 000384 0004+00 0/1 0/0 0/0 .rodata          @5387 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5387[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809EF578, &lit_5387);
#pragma pop

/* 809EF57C-809EF588 000388 000C+00 0/1 0/0 0/0 .rodata          @5388 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5388[12] = {
    0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF57C, &lit_5388);
#pragma pop

/* 809EF588-809EF58C 000394 0004+00 0/1 0/0 0/0 .rodata          @5389 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5389[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809EF588, &lit_5389);
#pragma pop

/* 809EF58C-809EF598 000398 000C+00 0/1 0/0 0/0 .rodata          @5390 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5390[12] = {
    0x00, 0x15, 0x00, 0x00, 0x40, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF58C, &lit_5390);
#pragma pop

/* 809EF598-809EF59C 0003A4 0004+00 0/1 0/0 0/0 .rodata          @5391 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5391[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809EF598, &lit_5391);
#pragma pop

/* 809EF59C-809EF5A8 0003A8 000C+00 0/1 0/0 0/0 .rodata          @5392 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5392[12] = {
    0x00, 0x1A, 0x00, 0x00, 0x40, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF59C, &lit_5392);
#pragma pop

/* 809EF5A8-809EF5AC 0003B4 0004+00 0/1 0/0 0/0 .rodata          @5393 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5393[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809EF5A8, &lit_5393);
#pragma pop

/* 809EB5C0-809EBA3C 0032A0 047C+00 1/1 0/0 0/0 .text            playMotion__11daNpc_Grz_cFv */
void daNpc_Grz_c::playMotion() {
    // NONMATCHING
}

/* 809EBA3C-809EBA68 00371C 002C+00 1/1 0/0 0/0 .text
 * chkAction__11daNpc_Grz_cFM11daNpc_Grz_cFPCvPvPv_i            */
void daNpc_Grz_c::chkAction(int (daNpc_Grz_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809EBA68-809EBB10 003748 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_Grz_cFM11daNpc_Grz_cFPCvPvPv_i            */
void daNpc_Grz_c::setAction(int (daNpc_Grz_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809EBB10-809EBC04 0037F0 00F4+00 1/1 0/0 0/0 .text            selectAction__11daNpc_Grz_cFv */
void daNpc_Grz_c::selectAction() {
    // NONMATCHING
}

/* 809EBC04-809EBD18 0038E4 0114+00 1/1 0/0 0/0 .text            doNormalAction__11daNpc_Grz_cFi */
void daNpc_Grz_c::doNormalAction(int param_0) {
    // NONMATCHING
}

/* 809EBD18-809EC0CC 0039F8 03B4+00 1/1 0/0 0/0 .text            doEvent__11daNpc_Grz_cFv */
void daNpc_Grz_c::doEvent() {
    // NONMATCHING
}

/* 809EC0CC-809EC164 003DAC 0098+00 1/1 0/0 0/0 .text            setSkipZev__11daNpc_Grz_cFii */
void daNpc_Grz_c::setSkipZev(int param_0, int param_1) {
    // NONMATCHING
}

/* 809EC164-809EC188 003E44 0024+00 10/10 0/0 0/0 .text            setLookMode__11daNpc_Grz_cFi */
void daNpc_Grz_c::setLookMode(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EF5AC-809EF5E8 0003B8 003C+00 0/0 0/0 0/0 .rodata          @5394 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5394[60] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF5AC, &lit_5394);
#pragma pop

/* 809EF5E8-809EF5F4 0003F4 000C+00 0/1 0/0 0/0 .rodata          @5582 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5582[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF5E8, &lit_5582);
#pragma pop

/* 809EF5F4-809EF5F8 000400 0004+00 0/1 0/0 0/0 .rodata          @5636 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5636 = -80.0f;
COMPILER_STRIP_GATE(0x809EF5F4, &lit_5636);
#pragma pop

/* 809EF5F8-809EF5FC 000404 0004+00 0/1 0/0 0/0 .rodata          @5637 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5637 = 80.0f;
COMPILER_STRIP_GATE(0x809EF5F8, &lit_5637);
#pragma pop

/* 809EC188-809EC424 003E68 029C+00 1/1 0/0 0/0 .text            lookat__11daNpc_Grz_cFv */
void daNpc_Grz_c::lookat() {
    // NONMATCHING
}

/* 809EC424-809EC4C4 004104 00A0+00 1/1 0/0 0/0 .text setExpressionTalkAfter__11daNpc_Grz_cFv */
void daNpc_Grz_c::setExpressionTalkAfter() {
    // NONMATCHING
}

/* 809EC4C4-809EC770 0041A4 02AC+00 1/0 0/0 0/0 .text            wait__11daNpc_Grz_cFPv */
void daNpc_Grz_c::wait(void* param_0) {
    // NONMATCHING
}

/* 809EC770-809EC7BC 004450 004C+00 1/1 0/0 0/0 .text            s_sub__FPvPv */
static void s_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 809EC7BC-809EC808 00449C 004C+00 1/1 0/0 0/0 .text            s_sub2__FPvPv */
static void s_sub2(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 809EC808-809EC854 0044E8 004C+00 1/1 0/0 0/0 .text            s_sub3__FPvPv */
static void s_sub3(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EF5FC-809EF600 000408 0004+00 0/2 0/0 0/0 .rodata          @5836 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5836 = 11.0f;
COMPILER_STRIP_GATE(0x809EF5FC, &lit_5836);
#pragma pop

/* 809EF600-809EF604 00040C 0004+00 0/2 0/0 0/0 .rodata          @5837 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5837 = 28.0f;
COMPILER_STRIP_GATE(0x809EF600, &lit_5837);
#pragma pop

/* 809EF604-809EF608 000410 0004+00 0/1 0/0 0/0 .rodata          @5838 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5838 = 400.0f;
COMPILER_STRIP_GATE(0x809EF604, &lit_5838);
#pragma pop

/* 809EC854-809ECBF0 004534 039C+00 1/0 0/0 0/0 .text            waitSmash__11daNpc_Grz_cFPv */
void daNpc_Grz_c::waitSmash(void* param_0) {
    // NONMATCHING
}

/* 809ECBF0-809ECCA0 0048D0 00B0+00 1/0 0/0 0/0 .text            lieDown__11daNpc_Grz_cFPv */
void daNpc_Grz_c::lieDown(void* param_0) {
    // NONMATCHING
}

/* 809ECCA0-809ECD50 004980 00B0+00 1/0 0/0 0/0 .text            waitWeak__11daNpc_Grz_cFPv */
void daNpc_Grz_c::waitWeak(void* param_0) {
    // NONMATCHING
}

/* 809ECD50-809ECF88 004A30 0238+00 2/0 0/0 0/0 .text            talk__11daNpc_Grz_cFPv */
void daNpc_Grz_c::talk(void* param_0) {
    // NONMATCHING
}

/* 809ECF88-809ED06C 004C68 00E4+00 1/0 0/0 0/0 .text            test__11daNpc_Grz_cFPv */
void daNpc_Grz_c::test(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EF608-809EF60C 000414 0004+00 1/1 0/0 0/0 .rodata          @6013 */
SECTION_RODATA static f32 const lit_6013 = 4.0f;
COMPILER_STRIP_GATE(0x809EF608, &lit_6013);

/* 809ED06C-809ED18C 004D4C 0120+00 1/1 0/0 0/0 .text            setPrtcl__11daNpc_Grz_cFv */
void daNpc_Grz_c::setPrtcl() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EF638-809EF638 000444 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809EF694 = "timer";
#pragma pop

/* 809ED18C-809ED228 004E6C 009C+00 1/0 0/0 0/0 .text            doWaitCut__11daNpc_Grz_cFi */
void daNpc_Grz_c::doWaitCut(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EF60C-809EF614 000418 0008+00 1/2 0/0 0/0 .rodata          @6047 */
SECTION_RODATA static u8 const lit_6047[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF60C, &lit_6047);

/* 809ED228-809ED3D4 004F08 01AC+00 1/0 0/0 0/0 .text            doRebirthCut__11daNpc_Grz_cFi */
void daNpc_Grz_c::doRebirthCut(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EF638-809EF638 000444 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809EF69A = "prm";
#pragma pop

/* 809ED3D4-809ED5EC 0050B4 0218+00 1/0 0/0 0/0 .text            doTalkStandCut__11daNpc_Grz_cFi */
void daNpc_Grz_c::doTalkStandCut(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EF614-809EF618 000420 0004+00 0/1 0/0 0/0 .rodata          @6205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6205 = 150.0f;
COMPILER_STRIP_GATE(0x809EF614, &lit_6205);
#pragma pop

/* 809EF618-809EF61C 000424 0004+00 0/1 0/0 0/0 .rodata          @6206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6206 = 1020.0f;
COMPILER_STRIP_GATE(0x809EF618, &lit_6206);
#pragma pop

/* 809ED5EC-809EDBA4 0052CC 05B8+00 1/0 0/0 0/0 .text            doGoOutCut__11daNpc_Grz_cFi */
void daNpc_Grz_c::doGoOutCut(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EF61C-809EF624 000428 0006+02 0/1 0/0 0/0 .rodata          l_prticles_id$6299 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_prticles_id[6 + 2 /* padding */] = {
    0x83,
    0xB5,
    0x83,
    0xB6,
    0x83,
    0xB7,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809EF61C, &l_prticles_id);
#pragma pop

/* 809EF624-809EF628 000430 0004+00 0/1 0/0 0/0 .rodata          @6470 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6470 = -250.0f;
COMPILER_STRIP_GATE(0x809EF624, &lit_6470);
#pragma pop

/* 809EF628-809EF62C 000434 0004+00 0/1 0/0 0/0 .rodata          @6471 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6471 = 17.0f;
COMPILER_STRIP_GATE(0x809EF628, &lit_6471);
#pragma pop

/* 809EF62C-809EF630 000438 0004+00 0/1 0/0 0/0 .rodata          @6472 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6472 = 14.0f;
COMPILER_STRIP_GATE(0x809EF62C, &lit_6472);
#pragma pop

/* 809EF630-809EF634 00043C 0004+00 0/1 0/0 0/0 .rodata          @6473 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6473 = 0.5f;
COMPILER_STRIP_GATE(0x809EF630, &lit_6473);
#pragma pop

/* 809EF634-809EF638 000440 0004+00 0/1 0/0 0/0 .rodata          @6474 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6474 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x809EF634, &lit_6474);
#pragma pop

/* 809EDBA4-809EE5F0 005884 0A4C+00 1/0 0/0 0/0 .text            doStoneSmashCut__11daNpc_Grz_cFi */
void daNpc_Grz_c::doStoneSmashCut(int param_0) {
    // NONMATCHING
}

/* 809EE5F0-809EE724 0062D0 0134+00 1/0 0/0 0/0 .text doStoneSmashSkipCut__11daNpc_Grz_cFi */
void daNpc_Grz_c::doStoneSmashSkipCut(int param_0) {
    // NONMATCHING
}

/* 809EE724-809EE744 006404 0020+00 1/0 0/0 0/0 .text            daNpc_Grz_Create__FPv */
static void daNpc_Grz_Create(void* param_0) {
    // NONMATCHING
}

/* 809EE744-809EE764 006424 0020+00 1/0 0/0 0/0 .text            daNpc_Grz_Delete__FPv */
static void daNpc_Grz_Delete(void* param_0) {
    // NONMATCHING
}

/* 809EE764-809EE784 006444 0020+00 1/0 0/0 0/0 .text            daNpc_Grz_Execute__FPv */
static void daNpc_Grz_Execute(void* param_0) {
    // NONMATCHING
}

/* 809EE784-809EE7A4 006464 0020+00 1/0 0/0 0/0 .text            daNpc_Grz_Draw__FPv */
static void daNpc_Grz_Draw(void* param_0) {
    // NONMATCHING
}

/* 809EE7A4-809EE7AC 006484 0008+00 1/0 0/0 0/0 .text            daNpc_Grz_IsDelete__FPv */
static bool daNpc_Grz_IsDelete(void* param_0) {
    return true;
}

/* 809EE7AC-809EE7DC 00648C 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 809EE7DC-809EE824 0064BC 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809EE824-809EE860 006504 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809EE860-809EE8C0 006540 0060+00 1/0 0/0 0/0 .text            __dt__13daNpcF_Path_cFv */
// daNpcF_Path_c::~daNpcF_Path_c() {
extern "C" void __dt__13daNpcF_Path_cFv() {
    // NONMATCHING
}

/* 809EE8C0-809EE908 0065A0 0048+00 1/0 0/0 0/0 .text            __dt__16daNpcF_SPCurve_cFv */
// daNpcF_SPCurve_c::~daNpcF_SPCurve_c() {
extern "C" void __dt__16daNpcF_SPCurve_cFv() {
    // NONMATCHING
}

/* 809EE908-809EE9D8 0065E8 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 809EE9D8-809EEA14 0066B8 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 809EEA14-809EEA18 0066F4 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 809EEA18-809EEA54 0066F8 003C+00 6/6 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 809EEA54-809EEA58 006734 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 809EEA58-809EECA4 006738 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809EECA4-809EEE94 006984 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809EEE94-809EEF04 006B74 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809EEF04-809EEF60 006BE4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 809EEF60-809EEFD0 006C40 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809EEFD0-809EF018 006CB0 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 809EF018-809EF01C 006CF8 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 809EF01C-809EF064 006CFC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 809EF064-809EF080 006D44 001C+00 3/3 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_809EF064(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EFBF4-809EFC00 000554 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_Grz_Param_c */
SECTION_DATA extern void* __vt__17daNpc_Grz_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_Grz_Param_cFv,
};

/* 809EF080-809EF184 006D60 0104+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_grz_cpp */
void __sinit_d_a_npc_grz_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x809EF080, __sinit_d_a_npc_grz_cpp);
#pragma pop

/* 809EF184-809EF188 006E64 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__11daNpc_Grz_cFv
 */
void daNpc_Grz_c::adjustShapeAngle() {
    /* empty function */
}

/* 809EF188-809EF1D0 006E68 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_Grz_Param_cFv */
daNpc_Grz_Param_c::~daNpc_Grz_Param_c() {
    // NONMATCHING
}

/* 809EF1D0-809EF1D8 006EB0 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809EF1D0() {
    // NONMATCHING
}

/* 809EF1D8-809EF1E0 006EB8 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809EF1D8() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EFC74-809EFC78 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_809EFC74[4];
#pragma pop

/* 809EFC78-809EFC7C 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_809EFC78[4];
#pragma pop

/* 809EFC7C-809EFC80 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_809EFC7C[4];
#pragma pop

/* 809EFC80-809EFC84 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_809EFC80[4];
#pragma pop

/* 809EFC84-809EFC88 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809EFC84[4];
#pragma pop

/* 809EFC88-809EFC8C 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809EFC88[4];
#pragma pop

/* 809EFC8C-809EFC90 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_809EFC8C[4];
#pragma pop

/* 809EFC90-809EFC94 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_809EFC90[4];
#pragma pop

/* 809EFC94-809EFC98 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_809EFC94[4];
#pragma pop

/* 809EFC98-809EFC9C 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_809EFC98[4];
#pragma pop

/* 809EFC9C-809EFCA0 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_809EFC9C[4];
#pragma pop

/* 809EFCA0-809EFCA4 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_809EFCA0[4];
#pragma pop

/* 809EFCA4-809EFCA8 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_809EFCA4[4];
#pragma pop

/* 809EFCA8-809EFCAC 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809EFCA8[4];
#pragma pop

/* 809EFCAC-809EFCB0 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_809EFCAC[4];
#pragma pop

/* 809EFCB0-809EFCB4 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_809EFCB0[4];
#pragma pop

/* 809EFCB4-809EFCB8 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_809EFCB4[4];
#pragma pop

/* 809EFCB8-809EFCBC 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_809EFCB8[4];
#pragma pop

/* 809EFCBC-809EFCC0 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_809EFCBC[4];
#pragma pop

/* 809EFCC0-809EFCC4 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_809EFCC0[4];
#pragma pop

/* 809EFCC4-809EFCC8 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_809EFCC4[4];
#pragma pop

/* 809EFCC8-809EFCCC 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809EFCC8[4];
#pragma pop

/* 809EFCCC-809EFCD0 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809EFCCC[4];
#pragma pop

/* 809EFCD0-809EFCD4 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809EFCD0[4];
#pragma pop

/* 809EFCD4-809EFCD8 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_809EFCD4[4];
#pragma pop

/* 809EF638-809EF638 000444 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
