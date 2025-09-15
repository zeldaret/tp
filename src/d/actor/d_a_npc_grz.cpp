/**
 * @file d_a_npc_grz.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_grz.h"
#include "Z2AudioLib/Z2Instances.h"
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
static int l_bmdGetParamList[1][2] = {
    {0xE, 0},
};

/* 809EF6C8-809EF7D8 000028 0110+00 1/2 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam1 l_bckGetParamList[34] = {
    {-1, 0},
    {6, 0},
    {6, 3},
    {8, 0},
    {7, 0},
    {0xB, 1},
    {0xA, 1},
    {9, 1},
    {8, 1},
    {7, 1},
    {6, 2},
    {5, 2},
    {7, 2},
    {5, 3},
    {4, 3},
    {0xB, 0},
    {0xA, 0},
    {0xB, 3},
    {-1, 0},
    {9, 3},
    {0xA, 3},
    {9, 0},
    {0xB, 1},
    {0xA, 1},
    {0xE, 1},
    {0xD, 1},
    {0xC, 1},
    {0xB, 2},
    {9, 2},
    {8, 2},
    {0xA, 2},
    {0xC, 2},
    {8, 3},
    {7, 3},
};

/* 809EF7D8-809EF828 000138 0050+00 1/1 0/0 0/0 .data            l_btpGetParamList */
static daNpc_GetParam1 l_btpGetParamList[10] = {
    {0x14, 0}, // loop
    {0x15, 1}, // loop
    {0x14, 1}, // no loop
    {0x18, 1}, // loop
    {0x17, 1}, // no loop
    {0x16, 1}, // loop
    {0x13, 2}, // no loop
    {0x12, 2}, // no loop
    {0x14, 2}, // ???
    {0xE, 3}, // no loop
};

/* 809EF828-809EF840 000188 0018+00 1/2 0/0 0/0 .data            l_btkGetParamList */
static daNpc_GetParam1 l_btkGetParamList[3] = {
    {0x11, 0},
    {0x11, 1},
    {0xF, 2},
};

/* 809EF840-809EF860 0001A0 0020+00 0/2 0/0 0/0 .data            l_evtGetParamList */
static daNpc_GetParam1 l_evtGetParamList[4] = {
    {0, 0},
    {1, 4},
    {2, 5},
    {3, 5},
};

/* 809EF860-809EF870 -00001 0010+00 1/3 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[4] = {
    NULL,
    "TALK_STAND",
    "STONE_SMASH",
    "STONE_SMASH_SKIP",
};

/* 809EF870-809EF884 0001D0 0014+00 1/0 0/0 0/0 .data            l_loadRes_YELIA */
static int l_loadRes_YELIA[5] = {
    0, 2, -1, -1, -1,
};

/* 809EF884-809EF898 0001E4 0014+00 1/0 0/0 0/0 .data            l_loadRes_LieDown */
static int l_loadRes_LieDown[5] = {
    0, 1, 4, -1, -1,
};

/* 809EF898-809EF8AC 0001F8 0014+00 1/0 0/0 0/0 .data            l_loadRes_Smash */
static int l_loadRes_Smash[20] = {
    0, 2, 3, 5, -1,
};

/* 809EF8AC-809EF8C0 00020C 0014+00 1/0 0/0 0/0 .data            l_loadRes_GRZa */
static int l_loadRes_GRZa[5] = {
    0, 2, -1, -1, -1,
};

/* 809EF8C0-809EF8D4 000220 0014+00 1/0 0/0 0/0 .data            l_loadRes_GRZ0 */
static int l_loadRes_GRZ0[5] = {
    0, -1, -1, -1, -1,
};

/* 809EF8D4-809EF8E8 -00001 0014+00 2/2 0/0 0/0 .data            l_loadRes_list */
static int* l_loadRes_list[5] = {
    l_loadRes_YELIA, l_loadRes_LieDown, l_loadRes_Smash,
    l_loadRes_GRZa,  l_loadRes_GRZ0,
};

/* 809EF8E8-809EF900 -00001 0018+00 6/9 0/0 0/0 .data            l_resNames */
static char* l_resNames[6] = {
    "grZ",
    "grZ1",
    "grZ2",
    "grZ3",
    "grZD1",
    "grZD3",
};

/* 809EF900-809EF904 -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
static char* l_myName = "grZ";

/* 809EF904-809EF920 -00001 001C+00 0/1 0/0 0/0 .data            mEvtCutNameList__11daNpc_Grz_c */
char* daNpc_Grz_c::mEvtCutNameList[7] = {
    "",
    "WAIT",
    "REBIRTH",
    "TALK_STAND",
    "GO_OUT",
    "STONE_SMASH",
    "STONE_SMASH_SKIP",
};

/* 809EF968-809EF9BC 0002C8 0054+00 0/2 0/0 0/0 .data            mEvtCutList__11daNpc_Grz_c */
daNpc_Grz_c::cutFunc daNpc_Grz_c::mEvtCutList[7] = {
    NULL,
    &daNpc_Grz_c::doWaitCut,
    &daNpc_Grz_c::doRebirthCut,
    &daNpc_Grz_c::doTalkStandCut,
    &daNpc_Grz_c::doGoOutCut,
    &daNpc_Grz_c::doStoneSmashCut,
    &daNpc_Grz_c::doStoneSmashSkipCut,
};

/* 809EF9BC-809EF9CC 00031C 0010+00 1/1 0/0 0/0 .data            l_attack_jnt$4889 */
// static int l_attack_jnt[4] = {
//     0xD, 0xE, 0x13, 0x14,
// };

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
daNpc_Grz_c::daNpc_Grz_c() {}

/* 809E8658-809E8694 000338 003C+00 2/2 0/0 0/0 .text            __dt__Q211daNpc_Grz_c21daNpc_GrZ_prtclMngr_cFv */
daNpc_Grz_c::daNpc_GrZ_prtclMngr_c::~daNpc_GrZ_prtclMngr_c() {
    // NONMATCHING
}

/* 809E8694-809E8698 000374 0004+00 1/1 0/0 0/0 .text            __ct__Q211daNpc_Grz_c21daNpc_GrZ_prtclMngr_cFv */
daNpc_Grz_c::daNpc_GrZ_prtclMngr_c::daNpc_GrZ_prtclMngr_c() {
    /* empty function */
}

/* 809E88C0-809E8BA0 0005A0 02E0+00 1/0 0/0 0/0 .text            __dt__11daNpc_Grz_cFv */
daNpc_Grz_c::~daNpc_Grz_c() {
    // NONMATCHING
}

/* 809EF1F4-809EF274 000000 0080+00 19/19 0/0 0/0 .rodata          m__17daNpc_Grz_Param_c */
daNpc_Grz_HIOParam const daNpc_Grz_Param_c::m = {
    130.0f,
    -3.0f,
    1.0f,
    1200.0f,
    255.0f,
    300.0f,
    35.0f,
    110.0f,
    0.0f,
    0.0f,
    10.0f,
    -10.0f,
    30.0f,
    -10.0f,
    45.0f,
    -45.0f,
    0.6f,
    12.0f,
    7,
    6,
    9,
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
    60,
    0xFFD8,
    0xFFD8,
    0xFFD8,
    11.0f,
    35.0f,
    500.0f,
};

/* 809EF274-809EF288 000080 0014+00 0/1 0/0 0/0 .rodata          heapSize$4217 */
// static int const heapSize[5] = {
//     0x3AE0, 0x3AF0, 0x3AE0, 0x3AF0, 0x0,
// };

/* 809E8BA0-809E8E68 000880 02C8+00 1/1 0/0 0/0 .text            create__11daNpc_Grz_cFv */
cPhs__Step daNpc_Grz_c::create() {
    fopAcM_SetupActor(this, daNpc_Grz_c);

    mType = getTypeFromParam();
    mSwNo = fopAcM_GetParam(this) >> 16;

    if (home.angle.x != 0xFFFF) {
        field_0x1a74 = home.angle.x;
    } else {
        field_0x1a74 = -1;
    }

    if (isDelete()) {
        return cPhs_ERROR_e;
    }

    int iVar1 = 0;
    int i = 0;
    for (; l_loadRes_list[mType][i] >= 0; i++) {
        cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhases[i], l_resNames[l_loadRes_list[mType][i]]);
        if (phase == cPhs_ERROR_e || phase == cPhs_UNK3_e) {
            return cPhs_ERROR_e;
        }

        if (phase == cPhs_COMPLEATE_e) {
            iVar1++;
        }
    }

    if (iVar1 == i) {
        static int const heapSize[5] = {
            0x3AE0, 0x3AF0, 0x3AE0, 0x3AF0, 0x0,
        };

        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize[mType])) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);
        
        mSound.init(&current.pos, &eyePos, 3, 1);
        
        mAcchCir.SetWall(daNpc_Grz_Param_c::m.common.width, daNpc_Grz_Param_c::m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this),
                    fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_Grz_Param_c::m.common.weight, 0, this);
        resetCol();
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        setEnvTevColor();
        setRoomNo();
        reset();
        Execute();

        return cPhs_COMPLEATE_e;
    }

    return cPhs_INIT_e;
}

/* 809E8E68-809E90F0 000B48 0288+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_Grz_cFv */
int daNpc_Grz_c::CreateHeap() {
    J3DModelData* mdlData_p = NULL;

    if (l_bmdGetParamList[0][0] >= 0) {
        mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_resNames[l_bmdGetParamList[0][1]], l_bmdGetParamList[0][0]);
    }

    JUT_ASSERT(556, 0 != mdlData_p);

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
    model->setUserArea((uintptr_t)this);

    mpMatAnm = new daNpcF_MatAnm_c();
    if (mpMatAnm == NULL) {
        return 0;
    }

    if (!setExpressionAnm(1, FALSE)) {
        return 0;
    }

    setMotionAnm(0xF, 0.0f);
    return 1;
}

/* 809E92AC-809E92E0 000F8C 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_Grz_cFv */
int daNpc_Grz_c::Delete() {
    this->~daNpc_Grz_c();
    return 1;
}

/* 809E92E0-809E9324 000FC0 0044+00 2/2 0/0 0/0 .text            Execute__11daNpc_Grz_cFv */
int daNpc_Grz_c::Execute() {
    int rv = execute();
    setPrtcl();
    return rv;
}

/* 809E9324-809E9568 001004 0244+00 1/1 0/0 0/0 .text            Draw__11daNpc_Grz_cFv */
int daNpc_Grz_c::Draw() {
    J3DModel* model = mpMorf->getModel();
    J3DModelData* mdlData_p = mpMorf->getModel()->getModelData();

    if (checkHide()) {
        return 1;
    }

    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);

    for (u16 i = 0; i < mdlData_p->getMaterialNum(); i++) {
        J3DMaterial* matNode_p = mdlData_p->getMaterialNodePointer(i);
        J3DGXColorS10* color = matNode_p->getTevColor(0);

        if (i != 1) {
            color->r = mColor.r;
            color->g = mColor.g;
            color->b = mColor.b;
        } else {
            matNode_p->setMaterialAnm(mpMatAnm);
        }
    }

    if (drawDbgInfo() == 0) {
        if ((mAnmFlags & ANM_PLAY_BTP) != 0) {
            mBtpAnm.entry(mdlData_p);
        }

        if ((mAnmFlags & ANM_PLAY_BTK) != 0) {
            mBtkAnm.entry(mdlData_p);
        }

        if ((mAnmFlags & ANM_PLAY_BRK) != 0) {
            mBrkAnm.entry(mdlData_p);
        }

        mpMorf->entryDL();

        if ((mAnmFlags & ANM_PLAY_BTP) != 0) {
            mBtpAnm.remove(mdlData_p);
        }

        if ((mAnmFlags & ANM_PLAY_BTK) != 0) {
            mBtkAnm.remove(mdlData_p);
        }

        if ((mAnmFlags & ANM_PLAY_BRK) != 0) {
            mBrkAnm.remove(mdlData_p);
        }

        mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model, &current.pos, daNpc_Grz_Param_c::m.common.real_shadow_size,
                                        20.0f, current.pos.y, mGroundH, mGndChk, &tevStr,
                                        0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
        drawOtherMdls();
    }

    return 1;
}

/* 809E9568-809E979C 001248 0234+00 1/1 0/0 0/0 .text            ctrlJoint__11daNpc_Grz_cFP8J3DJointP8J3DModel */
int daNpc_Grz_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jntNo = i_joint->getJntNo();
    int i_jointList[3] = {1, 3, 4};

    if (jntNo == 0) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jntNo));

    switch (jntNo) {
        case 1:
        case 3:
        case 4:
            setLookatMtx(jntNo, i_jointList, daNpc_Grz_Param_c::m.common.neck_rotation_ratio);
            break;
    }

    if (jntNo == 1) {
        mDoMtx_stack_c::YrotM(-field_0x908[0].z);
        mDoMtx_stack_c::ZrotM(field_0x908[0].x);
    } else if (jntNo == 4) {
        mDoMtx_stack_c::YrotM(-field_0x908[2].z);
        mDoMtx_stack_c::ZrotM(field_0x908[2].x);
    }

    i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    if ((jntNo == 4 || jntNo == 10) && (mAnmFlags & ANM_PLAY_BCK) != 0) {
        J3DAnmTransform* anm = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mpMorf->getAnm());
        mpMorf->changeAnm(anm);
    }

    return 1;
}

/* 809E979C-809E97BC 00147C 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__11daNpc_Grz_cFP10fopAc_ac_c */
int daNpc_Grz_c::createHeapCallBack(fopAc_ac_c* a_this) {
    return static_cast<daNpc_Grz_c*>(a_this)->CreateHeap();
}

/* 809E97BC-809E9808 00149C 004C+00 1/1 0/0 0/0 .text            ctrlJointCallBack__11daNpc_Grz_cFP8J3DJointi */
int daNpc_Grz_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Grz_c* i_this = (daNpc_Grz_c*)model->getUserArea();

        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 809E9808-809E9954 0014E8 014C+00 1/0 0/0 0/0 .text            setParam__11daNpc_Grz_cFv */
void daNpc_Grz_c::setParam() {
    actionFunc action = mNextAction;
    u32 flags = fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e;
    selectAction();

    if (!mTwilight && daPy_py_c::checkNowWolf()) {
        flags = 0;
    }

    if (mNextAction != action) {
        for (int i = 4; i < 4; i++) {
            mActorMngrs[i].initialize();
        }
    }

    field_0x1a64 = 0;
    field_0x1a68 = 0;
    attention_info.distances[fopAc_attn_LOCK_e] = 67;
    attention_info.distances[fopAc_attn_TALK_e] = 67;
    attention_info.distances[fopAc_attn_SPEAK_e] = 66;

    switch (mType & 0xFF) {
        case 2:
            if (daPy_py_c::checkNowWolf()) {
                attention_info.flags = 0;
            } else {
                attention_info.flags = flags;
            }
            break;

        default:
            attention_info.flags = flags;
            break;
    }

    scale.set(daNpc_Grz_Param_c::m.common.scale, daNpc_Grz_Param_c::m.common.scale, daNpc_Grz_Param_c::m.common.scale);
    mAcchCir.SetWallR(daNpc_Grz_Param_c::m.common.width);
    mAcchCir.SetWallH(daNpc_Grz_Param_c::m.common.knee_length);
    gravity = daNpc_Grz_Param_c::m.common.gravity;
}

/* 809E9954-809E9AD4 001634 0180+00 1/0 0/0 0/0 .text            main__11daNpc_Grz_cFv */
BOOL daNpc_Grz_c::main() {
    // NONMATCHING
    if (!doEvent()) {
        doNormalAction(1);
    }

    if (checkHide()) {
        attention_info.flags = 0;
    }

    if (!daNpc_Grz_Param_c::m.common.debug_mode_ON) {
        if (!dComIfGp_event_runCheck() || mOrderNewEvt && dComIfGp_getEvent().isOrderOK()) {
            if (mOrderEvtNo != 0) {
                eventInfo.setArchiveName(l_resNames[l_evtGetParamList[mOrderEvtNo].arcIdx]);
            }

            orderEvent(mOrderSpeakEvt, l_evtNames[l_evtGetParamList[mOrderEvtNo].fileIdx], 0xFFFF, 40, 0xFF, 1);
        }
    }

    if (field_0x9ee) {
        mExpressionMorfOverride = 0.0f;
        mMotionMorfOverride = 0.0f;
        field_0x9ee = false;
    }

    playExpression();
    playMotion();
    return TRUE;
}

/* 809E9AD4-809E9BB4 0017B4 00E0+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpc_Grz_cFv */
BOOL daNpc_Grz_c::ctrlBtk() {
    if (mpMatAnm != NULL) {
        J3DAnmTextureSRTKey* btk = NULL;

        if (l_btkGetParamList[0].fileIdx >= 0) {
            btk = getTexSRTKeyAnmP(l_resNames[l_btkGetParamList[0].arcIdx], l_btkGetParamList[0].fileIdx);
        }

        if (btk == mBtkAnm.getBtkAnm()) {
            mpMatAnm->setNowOffsetX(cM_ssin(mEyeAngle.y) * 0.02f * -1.0f);
            mpMatAnm->setNowOffsetY(cM_ssin(mEyeAngle.x) * 0.02f);
            mpMatAnm->onEyeMoveFlag();

            return TRUE;
        }

        mpMatAnm->offEyeMoveFlag();
    }

    return FALSE;
}

/* 809EFC48-809EFC54 000048 000C+00 1/1 0/0 0/0 .bss             @3810 */
static u8 lit_3810[12];

/* 809EFC54-809EFC58 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 809E9BB4-809EA1DC 001894 0628+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_Grz_cFv */
void daNpc_Grz_c::setAttnPos() {
    static cXyz eyeOffset(20.0f, 40.0f, 0.0f);

    cXyz sp80, sp8c, sp98, spa4;
    f32 attention_offset = daNpc_Grz_Param_c::m.common.attention_offset;
    f32 fVar2 = 0.0f;
    f32 fVar3 = 0.0f;

    mDoMtx_stack_c::YrotS(field_0x990);
    cLib_addCalc2(&field_0x984[0], 0.0f, 0.1, 125.0f);
    cLib_addCalc2(&field_0x984[2], 0.0f, 0.1f, 125.0f);

    for (int i = 0; i < 3; i++) {
        sp98.set(0.0f, 0.0f, field_0x984[i] * cM_ssin(field_0x992));
        mDoMtx_stack_c::multVec(&sp98, &spa4);
        field_0x908[i].x = -spa4.z;
        field_0x908[i].z = -spa4.x;
    }

    cLib_chaseS(&field_0x992, 0, 0x555);

    if (mLookMode == 1) {
        for (int i = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    setMtx();
    lookat();
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&eyeOffset, &eyePos);
    eyeOffset.x = 0.0f;
    mDoMtx_stack_c::multVec(&eyeOffset, &sp98);
    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &sp98);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &sp98);

    cXyz* attnPos = mLookat.getAttnPos();
    if (attnPos != NULL) {
        sp8c = *attnPos - eyePos;
        mEyeAngle.y = -(mLookatAngle[2].y + mCurAngle.y);
        mEyeAngle.y += cM_atan2s(sp8c.x, sp8c.z);
        mEyeAngle.x = -cM_atan2s(sp8c.y, sp8c.absXZ());
    } else {
        mEyeAngle.y = 0;
        mEyeAngle.x = 0;
    }

    if (field_0x1a84 == 2) {
        fVar3 = 100.0f;
        fVar2 = 120.0f;
        sp8c.set(0.0f, 0.0f, 100.0f);
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(mCurAngle.y);
        mDoMtx_stack_c::multVec(&sp8c, &sp80);
        attention_info.position.set(sp80.x, sp80.y + attention_offset + 120.0f, sp80.z);
    } else if (mMotion == 8) {
        attention_info.position = current.pos;
        attention_info.position.y += 200.0f;
    } else {
        fVar3 = 110.0f;
        fVar2 = 50.0f;
        sp8c.set(0.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(mCurAngle.y);
        mDoMtx_stack_c::multVec(&sp8c, &sp80);
        attention_info.position.set(mHeadPos.x, mHeadPos.y + attention_offset, mHeadPos.z);

        if (mType == 2 && !dComIfGp_event_runCheck()) {
            fVar3 = 35.0f;
            sp8c.set(0.0f, 0.0f, 35.0f);
            mDoMtx_stack_c::multVec(&sp8c, &sp80);
        }
    }

    mCcStts.Move();

    if (!mHide && !mTwilight) {
        if (!mIsDamaged) {
            mCyl1.SetTgType(0xD8FBFDFF);
            mCyl1.SetTgSPrm(0x1F);
            mCyl1.OnTgNoHitMark();
        } else {
            mCyl1.SetTgType(0);
            mCyl1.SetTgSPrm(0);
        }

        mCyl1.SetC(sp80);
        mCyl1.SetH(daNpc_Grz_Param_c::m.common.height + fVar2);
        mCyl1.SetR(daNpc_Grz_Param_c::m.common.width + fVar3);
        dComIfG_Ccsp()->Set(&mCyl1);
    }

    mCyl1.ClrTgHit();
    setCollisionPunch();
}

/* 809EA1DC-809EA734 001EBC 0558+00 1/1 0/0 0/0 .text            setCollisionPunch__11daNpc_Grz_cFv */
void daNpc_Grz_c::setCollisionPunch() {
    if (mType == 2) {
        f32 frame = mpMorf->getFrame();

        if (field_0x1a80 == 0x20 && ((frame >= 15.0f && frame < 16.0f) || (frame >= 35.0f && frame < 36.0f))) {
            daPy_py_c* player = daPy_getPlayerActorClass();
            f32 fVar2 = (player->current.pos - current.pos).absXZ();

            if (fVar2 < 500.0f) {
                dComIfGp_getVibration().StartShock(6, 15, cXyz(0.0f, 1.0f, 0.0f));
            } else if (fVar2 < 700.0f) {
                dComIfGp_getVibration().StartShock(5, 15, cXyz(0.0f, 1.0f, 0.0f));
            } else if (fVar2 < 900.0f) {
                dComIfGp_getVibration().StartShock(4, 15, cXyz(0.0f, 1.0f, 0.0f));
            } else if (fVar2 < 1100.0f) {
                dComIfGp_getVibration().StartShock(3, 15, cXyz(0.0f, 1.0f, 0.0f));
            } else if (fVar2 < 1300.0f) {
                dComIfGp_getVibration().StartShock(2, 15, cXyz(0.0f, 1.0f, 0.0f));
            } else if (fVar2 < 1500.0f) {
                dComIfGp_getVibration().StartShock(1, 15, cXyz(0.0f, 1.0f, 0.0f));
            }
        }

        for (int i = 0; i < 4; i++) {
            if (!mHide) {
                if (field_0x1a80 == 0x20 && ((frame >= 10.0f && frame < 18.0f && i >= 2) || ((frame < 2.0f || frame >= 29.0f) && i < 2))) {
                    cXyz sp60;
                    mSphs[i].OnAtSetBit();
                    J3DModel* model = mpMorf->getModel();

                    static int l_attack_jnt[4] = {
                        0xD, 0xE, 0x13, 0x14,
                    };

                    mDoMtx_stack_c::copy(model->getAnmMtx(l_attack_jnt[i]));
                    mDoMtx_stack_c::scaleM(scale);
                    mDoMtx_stack_c::multVecZero(&sp60);
                    sp60.y += 10.0f;
                    mSphs[i].SetC(sp60);
                    mSphs[i].SetR(85.0f);
                    dComIfG_Ccsp()->Set(&mSphs[i]);
                } else {
                    mSphs[i].OffAtSetBit();
                }
            }

            mSphs[i].ClrAtHit();
        }

        if (field_0x1a80 == 0x20 && !dComIfGp_event_runCheck()) {
            cXyz sp6c(0.0f, 0.0f, 245.0f);
            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(mCurAngle.y);
            mDoMtx_stack_c::multVec(&sp6c, &sp6c);
            mCyl2.SetTgType(0xD8FBFDFF);
            mCyl2.SetTgSPrm(0x1F);
            mCyl2.OnTgNoHitMark();
            mCyl2.SetC(sp6c);
            f32 heightOffset = 50.0f;
            mCyl2.SetH(daNpc_Grz_Param_c::m.common.height + heightOffset);
            f32 widthOffset = 15.0f;
            mCyl2.SetR(daNpc_Grz_Param_c::m.common.width + widthOffset);
            dComIfG_Ccsp()->Set(&mCyl2);
        }
    }
}

/* 809EA734-809EAA08 002414 02D4+00 2/0 0/0 0/0 .text            setExpressionAnm__11daNpc_Grz_cFib */
bool daNpc_Grz_c::setExpressionAnm(int i_index, bool i_modify) {
    J3DAnmTransform* anm = NULL;
    int i_attr = J3DFrameCtrl::EMode_NONE;

    mAnmFlags &= ~ANM_EXPRESSION_FLAGS;
    
    if (l_bckGetParamList[i_index].fileIdx >= 0) {
        anm = getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[i_index].arcIdx], l_bckGetParamList[i_index].fileIdx);
    }
    bool bVar1 = false;

    switch (i_index) {
        case 0:
            bVar1 = setExpressionBtp(0);
            break;

        case 1:
            bVar1 = setExpressionBtp(0);
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        case 2:
            bVar1 = setExpressionBtp(9);
            break;

        case 3:
            bVar1 = setExpressionBtp(0);
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        case 4:
            bVar1 = setExpressionBtp(0);
            break;

        case 5:
            bVar1 = setExpressionBtp(1);
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        case 6:
            bVar1 = setExpressionBtp(2);
            break;

        case 7:
            bVar1 = setExpressionBtp(3);
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        case 8:
            bVar1 = setExpressionBtp(4);
            break;

        case 9:
            bVar1 = setExpressionBtp(5);
            break;

        case 10:
            bVar1 = setExpressionBtp(6);
            break;

        case 11:
            bVar1 = setExpressionBtp(7);
            break;

        case 12:
            bVar1 = setExpressionBtp(8);
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        case 13:
            bVar1 = setExpressionBtp(0);
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        case 14:
            bVar1 = setExpressionBtp(0);
            break;

        default:
            anm = NULL;
            break;
    }

    if (!bVar1) {
        return false;
    }

    if (anm == NULL) {
        return true;
    }

    if (setBckAnm(anm, 1.0f, i_attr, 0, -1, i_modify)) {
        mAnmFlags |= ANM_PLAY_BCK | ANM_PAUSE_BCK;
        mExpressionLoops = 0;
        return true;
    }

    OS_REPORT("%s: 表情Bckアニメーションの登録に失敗しました！\n", "d_a_npc_grz.cpp");
    return false;
}

/* 809EAA08-809EAB34 0026E8 012C+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpc_Grz_cFi */
bool daNpc_Grz_c::setExpressionBtp(int i_index) {
    J3DAnmTexPattern* btp = NULL;
    int i_attr = J3DFrameCtrl::EMode_NONE;

    mAnmFlags &= 0xFFFFF57F;

    if (l_btpGetParamList[i_index].fileIdx >= 0) {
        btp = getTexPtrnAnmP(l_resNames[l_btpGetParamList[i_index].arcIdx], l_btpGetParamList[i_index].fileIdx);
    }

    switch (i_index) {
        case 0:
        case 1:
        case 3:
        case 8:
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        case 2:
        case 9:
            break;

        case 4:
        case 5:
        case 6:
        case 7:
            break;
            
        default:
            btp = NULL;
            break;
    }

    if (btp == NULL) {
        return true;
    }

    if (setBtpAnm(btp, mpMorf->getModel()->getModelData(), 1.0f, i_attr)) {
        mAnmFlags |= ANM_PLAY_BTP | ANM_PAUSE_BTP;

        if (i_index == 0) {
            mAnmFlags |= ANM_FLAG_800;
        }

        return true;
    }

    OS_REPORT("%s: 表情Btpアニメーションの登録に失敗しました！\n", "d_a_npc_grz.cpp");
    return false;
}

/* 809EAB34-809EAB60 002814 002C+00 1/0 0/0 0/0 .text            setExpression__11daNpc_Grz_cFif */
void daNpc_Grz_c::setExpression(int i_expression, f32 i_morf) {
    if (i_expression >= 0 && i_expression < 0xB) {
        mExpression = i_expression;
        mExpressionMorfOverride = i_morf;
        mExpressionPrevPhase = -1;
        mExpressionPhase = 0;
    }
}

/* 809EAB60-809EAD4C 002840 01EC+00 2/0 0/0 0/0 .text            setMotionAnm__11daNpc_Grz_cFif */
void daNpc_Grz_c::setMotionAnm(int i_index, f32 i_morf) {
    // NONMATCHING
    J3DAnmTransformKey* anm = NULL;
    J3DAnmTextureSRTKey* btk = NULL;
    int index = 0;
    int i_attr = J3DFrameCtrl::EMode_LOOP;
    int i_attr2 = J3DFrameCtrl::EMode_LOOP;

    mAnmFlags &= ~ANM_MOTION_FLAGS;

    if (l_bckGetParamList[i_index].fileIdx >= 0) {
        anm = getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[i_index].arcIdx], l_bckGetParamList[i_index].fileIdx);
    }

    field_0x1a80 = i_index;
    
    switch (i_index) {
        case 0xF:
        case 0x12:
        case 0x14:
        case 0x15:
        case 0x16:
        case 0x18:
        case 0x1B:
        case 0x1F:
        case 0x20:
            break;

        case 0x10:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case 0x11:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case 0x13:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case 0x17:
            index = 1;
            i_attr2 = J3DFrameCtrl::EMode_NONE;
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case 0x19:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case 0x1A:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case 0x1C:
            index = 2;
            i_attr2 = J3DFrameCtrl::EMode_NONE;
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case 0x1D:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case 0x1E:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case 0x21:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        default:
            anm = NULL;
            btk = NULL;
            break;
    }

    if (l_btkGetParamList[index].fileIdx >= 0) {
        btk = getTexSRTKeyAnmP(l_resNames[l_btkGetParamList[index].arcIdx], l_btkGetParamList[index].fileIdx);
    }

    if (btk != NULL) {
        if (setBtkAnm(btk, mpMorf->getModel()->getModelData(), 1.0f, i_attr2)) {
            mAnmFlags |= ANM_PLAY_BTK | ANM_PAUSE_BTK;
        }
    }

    if (anm != NULL && setMcaMorfAnm(anm, 1.0f, i_morf, i_attr, 0, -1)) {
        mAnmFlags |= ANM_PLAY_MORF | ANM_PAUSE_MORF;
        mMotionLoops = 0;
    }
}

/* 809EAD4C-809EAD90 002A2C 0044+00 1/0 0/0 0/0 .text            setMotion__11daNpc_Grz_cFifi */
void daNpc_Grz_c::setMotion(int i_motion, f32 i_morf, int param_3) {
    s16 motion = i_motion;
    if ((param_3 != 0 || mMotion != motion) && i_motion >= 0 && i_motion < 0xF) {
        mMotion = motion;
        mMotionMorfOverride = i_morf;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
    }
}

/* 809EAD90-809EAD98 002A70 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_Grz_cFv */
int daNpc_Grz_c::drawDbgInfo() {
    return 0;
}

/* 809EAD98-809EAD9C 002A78 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__11daNpc_Grz_cFv */
void daNpc_Grz_c::drawOtherMdls() {
    /* empty function */
}

/* 809EAD9C-809EADE8 002A7C 004C+00 1/1 0/0 0/0 .text            getTypeFromParam__11daNpc_Grz_cFv */
int daNpc_Grz_c::getTypeFromParam() {
    switch (fopAcM_GetParam(this) & 0xFF) {
        case 0:
            return 0;
        
        case 1:
            return 1;

        case 2:
            return 2;

        default:
            return 3;
    }
}

/* 809EADE8-809EAE88 002AC8 00A0+00 1/1 0/0 0/0 .text            isDelete__11daNpc_Grz_cFv */
BOOL daNpc_Grz_c::isDelete() {
    if (mType == 3 || mType == 1) {
        return FALSE;
    }

    if (mType == 0) {
        if (daNpcF_chkEvtBit(267) &&    // dSv_event_flag_c::F_0267 - Temple of Time - Temple of Time clear
            !daNpcF_chkEvtBit(287)) {   // dSv_event_flag_c::F_287 - Kakariko Village - Handed wood carving to Ilia
            return FALSE;
        }
    } else if (mType == 2) {
        if (!dComIfGs_isSwitch(mSwNo, fopAcM_GetRoomNo(this))) {
            return FALSE;
        }
    }

    return TRUE;
}

/* 809EAE88-809EB154 002B68 02CC+00 1/1 0/0 0/0 .text            reset__11daNpc_Grz_cFv */
void daNpc_Grz_c::reset() {
    initialize();
    mpMatAnm->initialize();
    mPath.initialize();

    if (mType == 2) {
        if (mPath.setPathInfo(getPathNoFromParam(), fopAcM_GetRoomNo(this), 0) != 0) {
            mPath.setRange(100.0f);
        }
    }

    mLookat.initialize();

    for (int i = 0; i < 4; i++) {
        mActorMngrs[i].initialize();
    }

    mNextAction = NULL;
    mAction = NULL;
    field_0x1a64 = 0;
    field_0x1a68 = 0;
    field_0x1a6c = 0;
    field_0x1a70 = 0;
    mLookMode = -1;
    mMode = 0;
    current.pos = home.pos;
    old.pos = current.pos;
    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;
    speedF = 0.0f;
    speed.setall(0.0f);

    for (int i = 0; i < 1; i++) {
        mPrtclMngr[i].mPaPo.init(&mAcch, 0.0f, 0.0f);
    }

    if (mType == 1) {
        field_0x1a84 = 2;
        field_0x1a74 = 208;
        mColor.r = daNpc_Grz_Param_c::m.color_r;
        mColor.g = daNpc_Grz_Param_c::m.color_g;
        mColor.b = daNpc_Grz_Param_c::m.color_b;
        setExpression(7, -1.0f);
        setMotion(0xB, 0.0f, 0);
    } else {
        field_0x1a84 = 0;
        mColor.r = 0;
        mColor.g = 0;
        mColor.b = 0;
        setExpression(0xA, -1.0f);
        setMotion(0, -1.0f, 0);
    }

    field_0x1a8c = 0;
    field_0x1a88 = 0;
    field_0x1a9c = 0;

    for (int i = 0; i < 3; i++) {
        field_0x1aa0[i] = fpcM_ERROR_PROCESS_ID_e;
    }

    field_0x9ee = true;
}

/* 809EB154-809EB234 002E34 00E0+00 1/1 0/0 0/0 .text            resetCol__11daNpc_Grz_cFv */
void daNpc_Grz_c::resetCol() {
    mCyl1.Set(mCcDCyl);
    mCyl1.SetStts(&mCcStts);
    mCyl1.SetTgHitCallback(tgHitCallBack);
    mCyl2.Set(mCcDCyl);
    mCyl2.SetStts(&mCcStts);

    for (int i = 0; i < 4; i++) {
        mSphs[i].Set(mCcDSph);
        mSphs[i].SetStts(&mCcStts);
        mSphs[i].SetAtSe(0xB);
        mSphs[i].SetAtSpl((dCcG_At_Spl)1);
        mSphs[i].SetAtType(AT_TYPE_800);
        mSphs[i].OnAtSPrmBit(12);
        mSphs[i].SetAtAtp(1);
        mSphs[i].OnTgNoConHit();
        mSphs[i].OffCoSetBit();
    }
}

/* 809EB234-809EB5C0 002F14 038C+00 1/1 0/0 0/0 .text            playExpression__11daNpc_Grz_cFv */
void daNpc_Grz_c::playExpression() {
    daNpcF_anmPlayData dat0a = {0x4, daNpc_Grz_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat0b= {0x3, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[2] = {&dat0a, &dat0b};
    daNpcF_anmPlayData dat1a = {0x9, daNpc_Grz_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat1b = {0x7, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat1[2] = {&dat1a, &dat1b};
    daNpcF_anmPlayData dat2a = {0xA, daNpc_Grz_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat2b = {0x3, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat2[2] = {&dat2a, &dat2b};
    daNpcF_anmPlayData dat3a = {0xB, daNpc_Grz_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat3b = {0x0, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat3[2] = {&dat3a, &dat3b};
    daNpcF_anmPlayData dat4 = {0x3, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4};
    daNpcF_anmPlayData dat5 = {0xD, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5};
    daNpcF_anmPlayData dat6a = {0xE, daNpc_Grz_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat6b = {0x0, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat6[2] = {&dat6a, &dat6b};
    daNpcF_anmPlayData dat7 = {0x5, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};
    daNpcF_anmPlayData dat8 = {0x6, daNpc_Grz_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData* pDat8[1] = {&dat8};
    daNpcF_anmPlayData dat9 = {0x7, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat9[1] = {&dat9};
    daNpcF_anmPlayData dat10 = {0x0, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat10[1] = {&dat10};

    daNpcF_anmPlayData** ppDat[11] = {
        pDat0,
        pDat1,
        pDat2,
        pDat3,
        pDat4,
        pDat5,
        pDat6,
        pDat7,
        pDat8,
        pDat9,
        pDat10,
    };

    if (mExpression >= 0 && mExpression < 0xB) {
        playExpressionAnm(ppDat);
    }
}

/* 809EB5C0-809EBA3C 0032A0 047C+00 1/1 0/0 0/0 .text            playMotion__11daNpc_Grz_cFv */
void daNpc_Grz_c::playMotion() {
    daNpcF_anmPlayData dat0 = {0xF, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1 = {0x18, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};
    daNpcF_anmPlayData dat2a = {0x19, daNpc_Grz_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat2b = {0x18, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat2[2] = {&dat2a, &dat2b};
    daNpcF_anmPlayData dat3 = {0x1B, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat3[1] = {&dat3};
    daNpcF_anmPlayData dat4a = {0x1C, daNpc_Grz_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat4b = {0x1B, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[2] = {&dat4a, &dat4b};
    daNpcF_anmPlayData dat5a = {0x1D, daNpc_Grz_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat5b = {0x1B, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat5[2] = {&dat5a, &dat5b};
    daNpcF_anmPlayData dat6 = {0x20, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat6[1] = {&dat6};
    daNpcF_anmPlayData dat7a = {0x21, daNpc_Grz_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat7b = {0xF, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat7[2] = {&dat7a, &dat7b};
    daNpcF_anmPlayData dat8a = {0x11, daNpc_Grz_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat8b = {0x14, 6.0f, 0};
    daNpcF_anmPlayData* pDat8[2] = {&dat8a, &dat8b};
    daNpcF_anmPlayData dat9a = {0x1E, daNpc_Grz_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat9b = {0xF, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat9[2] = {&dat9a, &dat9b};
    daNpcF_anmPlayData dat10 = {0x1F, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat10[1] = {&dat10};
    daNpcF_anmPlayData dat11 = {0x16, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat11[1] = {&dat11};
    daNpcF_anmPlayData dat12 = {0x17, daNpc_Grz_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat12[1] = {&dat12};
    daNpcF_anmPlayData dat13 = {0x15, 6.0f, 0};
    daNpcF_anmPlayData* pDat13[1] = {&dat13};
    daNpcF_anmPlayData dat14 = {0x1A, 6.0f, 0};
    daNpcF_anmPlayData* pDat14[1] = {&dat14};

    daNpcF_anmPlayData** ppDat[15] = {
        pDat0,
        pDat1,
        pDat2,
        pDat3,
        pDat4,
        pDat5,
        pDat6,
        pDat7,
        pDat8,
        pDat9,
        pDat10,
        pDat11,
        pDat12,
        pDat13,
        pDat14,
    };

    if (mMotion >= 0 && mMotion < 0xF) {
        playMotionAnm(ppDat);
    }
}

/* 809EBA3C-809EBA68 00371C 002C+00 1/1 0/0 0/0 .text            chkAction__11daNpc_Grz_cFM11daNpc_Grz_cFPCvPvPv_i */
BOOL daNpc_Grz_c::chkAction(actionFunc action) {
    return mAction == action;
}

/* 809EBA68-809EBB10 003748 00A8+00 2/2 0/0 0/0 .text            setAction__11daNpc_Grz_cFM11daNpc_Grz_cFPCvPvPv_i */
BOOL daNpc_Grz_c::setAction(actionFunc action) {
    mMode = 3;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    mMode = 0;
    mAction = action;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    return TRUE;
}

/* 809EBB10-809EBC04 0037F0 00F4+00 1/1 0/0 0/0 .text            selectAction__11daNpc_Grz_cFv */
BOOL daNpc_Grz_c::selectAction() {
    // NONMATCHING
    mNextAction = NULL;

    if (daNpc_Grz_Param_c::m.common.debug_mode_ON) {
        mNextAction = &daNpc_Grz_c::test;
    } else {
        switch (mType) {
            case 1:
                if (field_0x1a84 > 0) {
                    mNextAction = &daNpc_Grz_c::lieDown;
                } else {
                    mNextAction = &daNpc_Grz_c::waitWeak;
                }
                break;
            
            case 2:
                mNextAction = &daNpc_Grz_c::waitSmash;
                break;

            default:
                mNextAction = &daNpc_Grz_c::wait;
                break;
        }
    }

    return TRUE;
}

/* 809EBC04-809EBD18 0038E4 0114+00 1/1 0/0 0/0 .text            doNormalAction__11daNpc_Grz_cFi */
void daNpc_Grz_c::doNormalAction(int param_1) {
    if (param_1 != 0 && hitChk2(&mCyl1, TRUE, FALSE)) {
        int damage_time;

        if (mCutType == 8) {
            damage_time = 20;
        } else {
            damage_time = daNpc_Grz_Param_c::m.common.damage_time;
        }

        setDamage(damage_time, 10, 0);
        setLookMode(LOOK_RESET);
    } else if (mIsDamaged && mDamageTimer == 0) {
        mMode = 0;
        mIsDamaged = false;
    }

    mOrderEvtNo = 0;

    if (mNextAction) {
        if (mAction == mNextAction) {
            (this->*mAction)(NULL);
        } else {
            setAction(mNextAction);
        }
    }
}

/* 809EBD18-809EC0CC 0039F8 03B4+00 1/1 0/0 0/0 .text            doEvent__11daNpc_Grz_cFv */
BOOL daNpc_Grz_c::doEvent() {
    // NONMATCHING
    BOOL rv = FALSE;

    if (dComIfGp_event_runCheck() != FALSE) {
        dEvent_manager_c& eventManager = dComIfGp_getEventManager();

        if (eventInfo.checkCommandTalk() || eventInfo.checkCommandDemoAccrpt()) {
            mOrderNewEvt = false;
        }

        if (eventInfo.checkCommandTalk()) {
            if (field_0x1a84 > 0) {
                mOrderEvtNo = 1;
                changeEvent(l_resNames[l_evtGetParamList[mOrderEvtNo].arcIdx], l_evtNames[l_evtGetParamList[mOrderEvtNo].fileIdx], 1, 0xFFFF);
            } else if (chkAction(&daNpc_Grz_c::talk)) {
                (this->*mAction)(NULL);
            } else if (dComIfGp_event_chkTalkXY() == FALSE || dComIfGp_evmng_ChkPresentEnd()) {
                setAction(&daNpc_Grz_c::talk);
            }

            rv = TRUE;
        } else {
            int staffId = eventManager.getMyStaffId(l_myName, NULL, 0);

            if (staffId != -1) {
                mStaffID = staffId;
                int evtCutNo = eventManager.getMyActIdx(staffId, mEvtCutNameList, 7, 0, 0);

                JUT_ASSERT(2262, (0 <= evtCutNo) && (evtCutNo < NUM_EVT_CUTS_e));
                JUT_ASSERT(2263, 0 != mEvtCutList[evtCutNo]);

                if ((this->*mEvtCutList[evtCutNo])(staffId)) {
                    eventManager.cutEnd(staffId);
                }

                rv = TRUE;
            }

            if (eventInfo.checkCommandDemoAccrpt()) {
                if (mEventIdx != -1 && eventManager.endCheck(mEventIdx)) {
                    switch (mOrderEvtNo) {
                        case 2:
                            dComIfGp_event_reset();
                            mOrderEvtNo = 0;
                            mEventIdx = -1;
                            dComIfGs_onSwitch(mSwNo, fopAcM_GetRoomNo(this));
                            fopAcM_delete(this);
                            break;
                        
                        default:
                            dComIfGp_event_reset();
                            mOrderEvtNo = 0;
                            mEventIdx = -1;
                            break;
                    }
                } else {
                    switch (mOrderEvtNo) {
                        case 2:
                            setSkipZev(2, 3);
                            break;

                        default:
                            break;
                    }
                }
            }
        }

        int msgTimer = mMsgTimer;
        int i_expression, i_motion;

        if (ctrlMsgAnm(i_expression, i_motion, this, FALSE)) {
            if (!field_0x9eb) {
                setExpression(i_expression, -1.0f);
                setMotion(i_motion, -1.0f, 0);
            }
        } else if (msgTimer != 0 && !field_0x9eb) {
            setExpressionTalkAfter();
        }

        switch (mExpression) {
            case 3:
            case 2:
                if (mExpressionPhase != 0) {
                    mAnmFlags &= 0xFFFFEFFF;
                }
                break;
        }
    } else {
        mMsgTimer = 0;

        if (mStaffID != -1) {
            mAction = NULL;
            mStaffID = -1;
        }
    }

    return rv;
}

/* 809EC0CC-809EC164 003DAC 0098+00 1/1 0/0 0/0 .text            setSkipZev__11daNpc_Grz_cFii */
bool daNpc_Grz_c::setSkipZev(int param_1, int param_2) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();

    if (strcmp(eventManager.getRunEventName(), l_evtNames[param_1]) == 0) {
        dComIfGp_getEvent().setSkipZev(this, l_evtNames[param_2]);
        dComIfGp_getEvent().onSkipFade();
        return true;
    }

    return false;
}

/* 809EC164-809EC188 003E44 0024+00 10/10 0/0 0/0 .text            setLookMode__11daNpc_Grz_cFi */
void daNpc_Grz_c::setLookMode(int i_lookMode) {
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
int daNpc_Grz_c::wait(void* param_0) {
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
int daNpc_Grz_c::waitSmash(void* param_0) {
    // NONMATCHING
}

/* 809ECBF0-809ECCA0 0048D0 00B0+00 1/0 0/0 0/0 .text            lieDown__11daNpc_Grz_cFPv */
int daNpc_Grz_c::lieDown(void* param_0) {
    // NONMATCHING
}

/* 809ECCA0-809ECD50 004980 00B0+00 1/0 0/0 0/0 .text            waitWeak__11daNpc_Grz_cFPv */
int daNpc_Grz_c::waitWeak(void* param_0) {
    // NONMATCHING
}

/* 809ECD50-809ECF88 004A30 0238+00 2/0 0/0 0/0 .text            talk__11daNpc_Grz_cFPv */
int daNpc_Grz_c::talk(void* param_0) {
    // NONMATCHING
}

/* 809ECF88-809ED06C 004C68 00E4+00 1/0 0/0 0/0 .text            test__11daNpc_Grz_cFPv */
int daNpc_Grz_c::test(void* param_0) {
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
int daNpc_Grz_c::doWaitCut(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EF60C-809EF614 000418 0008+00 1/2 0/0 0/0 .rodata          @6047 */
SECTION_RODATA static u8 const lit_6047[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809EF60C, &lit_6047);

/* 809ED228-809ED3D4 004F08 01AC+00 1/0 0/0 0/0 .text            doRebirthCut__11daNpc_Grz_cFi */
int daNpc_Grz_c::doRebirthCut(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809EF638-809EF638 000444 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809EF69A = "prm";
#pragma pop

/* 809ED3D4-809ED5EC 0050B4 0218+00 1/0 0/0 0/0 .text            doTalkStandCut__11daNpc_Grz_cFi */
int daNpc_Grz_c::doTalkStandCut(int param_0) {
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
int daNpc_Grz_c::doGoOutCut(int param_0) {
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
int daNpc_Grz_c::doStoneSmashCut(int param_0) {
    // NONMATCHING
}

/* 809EE5F0-809EE724 0062D0 0134+00 1/0 0/0 0/0 .text doStoneSmashSkipCut__11daNpc_Grz_cFi */
int daNpc_Grz_c::doStoneSmashSkipCut(int param_0) {
    // NONMATCHING
}

/* 809EE724-809EE744 006404 0020+00 1/0 0/0 0/0 .text            daNpc_Grz_Create__FPv */
static int daNpc_Grz_Create(void* a_this) {
    // NONMATCHING
}

/* 809EE744-809EE764 006424 0020+00 1/0 0/0 0/0 .text            daNpc_Grz_Delete__FPv */
static int daNpc_Grz_Delete(void* a_this) {
    // NONMATCHING
}

/* 809EE764-809EE784 006444 0020+00 1/0 0/0 0/0 .text            daNpc_Grz_Execute__FPv */
static int daNpc_Grz_Execute(void* a_this) {
    // NONMATCHING
}

/* 809EE784-809EE7A4 006464 0020+00 1/0 0/0 0/0 .text            daNpc_Grz_Draw__FPv */
static int daNpc_Grz_Draw(void* a_this) {
    // NONMATCHING
}

/* 809EE7A4-809EE7AC 006484 0008+00 1/0 0/0 0/0 .text            daNpc_Grz_IsDelete__FPv */
static int daNpc_Grz_IsDelete(void* a_this) {
    return 1;
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

// /* 809EF188-809EF1D0 006E68 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_Grz_Param_cFv */
// daNpc_Grz_Param_c::~daNpc_Grz_Param_c() {
//     // NONMATCHING
// }

/* 809EF1D0-809EF1D8 006EB0 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809EF1D0() {
    // NONMATCHING
}

/* 809EF1D8-809EF1E0 006EB8 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809EF1D8() {
    // NONMATCHING
}

AUDIO_INSTANCES;

/* 809EFAA8-809EFAC8 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Grz_MethodTable */
static actor_method_class daNpc_Grz_MethodTable = {
    (process_method_func)daNpc_Grz_Create,
    (process_method_func)daNpc_Grz_Delete,
    (process_method_func)daNpc_Grz_Execute,
    (process_method_func)daNpc_Grz_IsDelete,
    (process_method_func)daNpc_Grz_Draw,
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
