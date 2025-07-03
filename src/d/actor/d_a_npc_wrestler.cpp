/**
 * @file d_a_npc_wrestler.cpp
 * 
*/

#include "d/actor/d_a_npc_wrestler.h"
#include "d/d_timer.h"
#include "dolphin/types.h"
#include "dol2asm.h"
#include "d/actor/d_a_tag_arena.h"
#include "d/actor/d_a_npc_gra.h"
#include "d/actor/d_a_npc_bouS.h"
#include "f_op/f_op_actor_mng.h"
#include "d/d_camera.h"
#include "m_Do/m_Do_graphic.h"

//
// Forward References:
//

extern "C" void __ct__15daNpcWrestler_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__15daNpcWrestler_cFv();
extern "C" void Create__15daNpcWrestler_cFv();
extern "C" void CreateHeap__15daNpcWrestler_cFv();
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
extern "C" void Delete__15daNpcWrestler_cFv();
extern "C" void Execute__15daNpcWrestler_cFv();
extern "C" void Draw__15daNpcWrestler_cFv();
extern "C" void ctrlJoint__15daNpcWrestler_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__15daNpcWrestler_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__15daNpcWrestler_cFP8J3DJointi();
extern "C" void checkStartUp__15daNpcWrestler_cFv();
extern "C" void setExpressionAnm__15daNpcWrestler_cFib();
extern "C" void setExpressionBtp__15daNpcWrestler_cFi();
extern "C" void setMotionAnm__15daNpcWrestler_cFif();
extern "C" void reset__15daNpcWrestler_cFv();
extern "C" void setAction__15daNpcWrestler_cFM15daNpcWrestler_cFPCvPvPv_b();
extern "C" static void s_sub1__FPvPv();
extern "C" void checkArenaInfo__15daNpcWrestler_cFv();
extern "C" void checkArenaSub__15daNpcWrestler_cFP10fopAc_ac_c();
extern "C" static void s_sub2__FPvPv();
extern "C" void setOnToArena__15daNpcWrestler_cFf();
extern "C" void wait__15daNpcWrestler_cFPv();
extern "C" void setMotion__15daNpcWrestler_cFifi();
extern "C" void setExpression__15daNpcWrestler_cFif();
extern "C" void talk__15daNpcWrestler_cFPv();
extern "C" void demo__15daNpcWrestler_cFPv();
extern "C" void gotoArena__15daNpcWrestler_cFPv();
extern "C" void gotoLiving__15daNpcWrestler_cFPv();
extern "C" void sumouReady__15daNpcWrestler_cFPv();
extern "C" void sumouWait__15daNpcWrestler_cFPv();
extern "C" void checkOutOfArenaP__15daNpcWrestler_cFv();
extern "C" void setNextAction__15daNpcWrestler_cFv();
extern "C" void sumouPunchHit__15daNpcWrestler_cFPv();
extern "C" void sumouPunchChaseHit__15daNpcWrestler_cFPv();
extern "C" void sumouPunchMiss__15daNpcWrestler_cFPv();
extern "C" void checkOutOfArenaW__15daNpcWrestler_cFv();
extern "C" void getJointPos__15daNpcWrestler_cFi();
extern "C" void sumouPunchDraw__15daNpcWrestler_cFPv();
extern "C" void sumouTackleHit__15daNpcWrestler_cFPv();
extern "C" void sumouTackleMiss__15daNpcWrestler_cFPv();
extern "C" void sumouTackleDraw__15daNpcWrestler_cFPv();
extern "C" void sumouSideStep__15daNpcWrestler_cFPv();
extern "C" void sumouLostBalance__15daNpcWrestler_cFPv();
extern "C" void sumouPunchShock__15daNpcWrestler_cFPv();
extern "C" void sumouPunchChaseShock__15daNpcWrestler_cFPv();
extern "C" void sumouPunchStagger__15daNpcWrestler_cFPv();
extern "C" void sumouTackleShock__15daNpcWrestler_cFPv();
extern "C" void sumouTackleStagger__15daNpcWrestler_cFPv();
extern "C" void sumouTackleStaggerRelease__15daNpcWrestler_cFPv();
extern "C" void sumouTacklePush__15daNpcWrestler_cFPv();
extern "C" void sumouTackleRelease__15daNpcWrestler_cFPv();
extern "C" void demoSumouReady__15daNpcWrestler_cFPv();
extern "C" void demoSumouWin__15daNpcWrestler_cFPv();
extern "C" void demoSumouLose__15daNpcWrestler_cFPv();
extern "C" void demoSumouWin2__15daNpcWrestler_cFPv();
extern "C" void demoSumouLose2__15daNpcWrestler_cFPv();
extern "C" void demoSumouUnilateralWin__15daNpcWrestler_cFPv();
extern "C" void demoTalkAfterLose__15daNpcWrestler_cFPv();
extern "C" void EvCut_grDSEntry__15daNpcWrestler_cFi();
extern "C" void EvCut_grDSEntry2__15daNpcWrestler_cFi();
extern "C" void EvCut_grDSEntry3_4__15daNpcWrestler_cFi();
extern "C" void EvCut_grDSEntry5__15daNpcWrestler_cFi();
extern "C" void EvCut_grDSLose__15daNpcWrestler_cFi();
extern "C" static void daNpcWrestler_Create__FPv();
extern "C" static void daNpcWrestler_Delete__FPv();
extern "C" static void daNpcWrestler_Execute__FPv();
extern "C" static void daNpcWrestler_Draw__FPv();
extern "C" static bool daNpcWrestler_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void setParam__15daNpcWrestler_cFv();
extern "C" void main__15daNpcWrestler_cFv();
extern "C" void setWrestlerVoice__15daNpcWrestler_cFv();
extern "C" void playMotion__15daNpcWrestler_cFv();
extern "C" void ctrlBtk__15daNpcWrestler_cFv();
extern "C" void setAttnPos__15daNpcWrestler_cFv();
extern "C" void lookat__15daNpcWrestler_cFv();
extern "C" bool drawDbgInfo__15daNpcWrestler_cFv();
extern "C" void drawOtherMdls__15daNpcWrestler_cFv();
extern "C" void func_80B40D28(void* _this, s16);
extern "C" void __sinit_d_a_npc_wrestler_cpp();
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
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void getArenaPos__12daTagArena_cFv();
extern "C" void getRightFootPos__9daPy_py_cCFv();
extern "C" void getLeftFootPos__9daPy_py_cCFv();
extern "C" void adjustShapeAngle__15daNpcWrestler_cFv();
extern "C" void __dt__21daNpcWrestler_Param_cFv();
extern "C" static void func_80B416B8();
extern "C" static void func_80B416C0();
extern "C" u8 const m__21daNpcWrestler_Param_c[404];
extern "C" extern char const* const d_a_npc_wrestler__stringBase0;
extern "C" u8 mEvtSeqList__15daNpcWrestler_c[84];

//
// External References:
//

extern "C" void fadeOut__13mDoGph_gInf_cFf();
extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void push__14mDoMtx_stack_cFv();
extern "C" void pop__14mDoMtx_stack_cFv();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs();
extern "C" void fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcEx_SearchByID__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_TimerDeleteRequest__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void dEv_noFinishSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyNowCutName__16dEvent_manager_cFi();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
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
extern "C" void ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void changeEvent__8daNpcF_cFPcPcUsUs();
extern "C" void chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void turn__8daNpcF_cFsfi();
extern "C" void setAngle__8daNpcF_cFs();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void getEvtAreaTagP__8daNpcF_cFii();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void daNpcF_onEvtBit__FUl();
extern "C" void daNpcF_chkTmpBit__FUl();
extern "C" void daNpcF_onTmpBit__FUl();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void ModeFix__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void dCam_getBody__Fv();
extern "C" void Eye__9dCamera_cFv();
extern "C" void Center__9dCamera_cFv();
extern "C" void setMeterString__13dMeter2Info_cFl();
extern "C" void resetMeterString__13dMeter2Info_cFv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void dTimer_createTimer__FlUlUcUcffff();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcPos__FP4cXyzRC4cXyzfff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseS__FPsss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePosXZ__FP4cXyzRC4cXyzf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleY__FRC3VecRC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void JPAGetXYZRotateMtx__FsssPA4_f();
extern "C" void func_802807E0();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void changeSubBgmStatus__8Z2SeqMgrFl();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
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
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void setTagJump__11daNpc_grA_cFv();
extern "C" void setHomeJump__11daNpc_grA_cFv();
extern "C" void getMode1__11daNpc_grA_cFv();
extern "C" void __register_global_object();

UNK_REL_DATA;

/* 80B41E18-80B41E1C -00001 0004+00 1/2 0/0 0/0 .data            l_resALink */
static char* l_resALink = "alSumou";

/* 80B41E1C-80B41E30 -00001 0014+00 9/13 0/0 0/0 .data            l_resName */
static char* l_resName[5] = {
    "Bou3",
    "grDS",
    NULL,
    NULL,
    NULL,
};

/* 80B41E30-80B41E44 000038 0014+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
static int l_bmdGetParamList[5] = {
    0x3E, 0x47, 0, 0, 0,
};

/* 80B41E44-80B4203C 00004C 01F8+00 1/0 0/0 0/0 .data            l_BouBckParamList */
static int l_BouBckParamList[63][2] = {
    {-1, 2}, {7, 2}, {8, 0}, {9, 0},
    {10, 0}, {11, 0}, {12, 0}, {13, 0},
    {13, 0}, {15, 0}, {16, 0}, {17, 2},
    {18, 0}, {19, 0}, {20, 0}, {21, 0},
    {22, 2}, {23, 2}, {24, 0}, {25, 2},
    {26, 2}, {27, 0}, {28, 0}, {-1, 2},
    {-1, 2}, {-1, 2}, {-1, 2}, {0x37, 2},
    {-1, 2}, {0x2F, 0}, {0x25, 2}, {0x21, 0},
    {0x2D, 0}, {0x20, 2}, {0x1D, 0}, {0x1E, 2},
    {0x1F, 2}, {0x27, 0}, {0x28, 0}, {0x29, 0},
    {0x2A, 0}, {0x30, 0}, {0x31, 0}, {0x32, 0},
    {0x34, 2}, {0x35, 2}, {0x33, 0}, {0x36, 0},
    {0x2E, 2}, {0x26, 0}, {0x2B, 0}, {0x39, 0},
    {0x23, 0}, {0x24, 0}, {6, 2}, {0x22, 0},
    {0x3A, 0}, {0x38, 2}, {-1, 2}, {-1, 2},
    {-1, 2}, {-1, 2}, {-1, 2},
};

/* 80B4203C-80B42150 000244 0114+00 1/0 0/0 0/0 .data            l_BouFaceParamList */
static int l_BouFaceParamList[23][3] = {
    {-1, 0x44, 2}, {7, 0x45, 2}, {8, 0x46, 0},
    {9, 0x47, 0}, {10, 0x48, 0}, {11, 0x49, 0}, 
    {12, 0x4A, 0}, {13, 0x4B, 0}, {14, 0x4C, 0},
    {15, 0x4D, 0}, {16, 0x4E, 0}, {17, 0x4F, 2},
    {18, 0x50, 0}, {19, 0x51, 0}, {20, 0x52, 0},
    {21, 0x53, 0}, {22, 0x54, 2}, {23, 0x55, 2},
    {24, 0x56, 0}, {25, -1, 2}, {26, 0x57, 2},
    {27, 0x58, 0}, {28, 0x59, 0},
};

/* 80B42150-80B42208 000358 00B8+00 1/0 0/0 0/0 .data            l_BouBtpParamList */
static int l_BouBtpParamList[23][2] = {
    {0x44, 2}, {0x45, 0}, 
    {0x46, 0}, {0x47, 0}, 
    {0x48, 0}, {0x49, 0},
    {0x4A, 0}, {0x4B, 0},
    {0x4C, 0}, {0x4D, 0},
    {0x4E, 0}, {0x4F, 2},
    {0x50, 0}, {0x51, 0},
    {0x52, 0}, {0x53, 0},
    {0x54, 2}, {0x55, 2},
    {0x56, 0}, {-1, 2},
    {0x57, 2}, {0x58, 2},
    {0x59, 0},
};

/* 80B42208-80B42210 000410 0008+00 1/0 0/0 0/0 .data            l_BouBtkParamList */
static int l_BouBtkParamList[1][2] = {
    {0x41, 2},
};

/* 80B42210-80B42220 -00001 0010+00 1/0 0/0 0/0 .data            l_BouAnmParamList */
static int* l_BouAnmParamList[4] = {
    (int*)l_BouBckParamList,
    (int*)l_BouFaceParamList,
    (int*)l_BouBtpParamList,
    (int*)l_BouBtkParamList,
};

/* 80B42220-80B42418 000428 01F8+00 1/0 0/0 0/0 .data            l_GrdBckParamList */
static daNpc_GetParam1 l_GrdBckParamList[63] = {
    {-1, 2}, {8, 2}, {9, 0}, {10, 0},
    {0x0B, 0}, {0x0D, 0}, {0x0E, 0}, {0x0F, 0},
    {0x10, 0}, {0x11, 0}, {0x12, 0}, {0x14, 2},
    {0x15, 0}, {0x16, 0}, {0x17, 0}, {0x18, 0},
    {0x19, 2}, {0x1A, 2}, {0x1B, 0}, {0x1C, 2},
    {0x1D, 2}, {0x1E, 0}, {0x1F, 0}, {0x0C, 0},
    {0x20, 2}, {0x13, 0}, {0x21, 2}, {0x3F, 2},
    {-1, 2}, {0x34, 0}, {0x2A, 2}, {0x26, 0},
    {0x31, 0}, {0x25, 2}, {0x22, 0}, {0x23, 2},
    {0x24, 2}, {0x2C, 0}, {0x2D, 0}, {0x2E, 0},
    {0x2F, 0}, {0x35, 0}, {0x36, 0}, {0x37, 0},
    {0x39, 2}, {0x3A, 2}, {0x38, 0}, {0x3B, 0},
    {0x33, 2}, {0x2B, 0}, {0x30, 0}, {0x43, 0},
    {0x28, 0}, {0x29, 0}, {0x07, 2}, {0x27, 0},
    {0x44, 0}, {0x40, 2}, {0x3E, 0}, {0x41, 2},
    {0x3C, 0}, {0x3D, 0}, {0x42, 2},
};

/* 80B42418-80B4252C 000620 0114+00 1/0 0/0 0/0 .data            l_GrdFaceParamList */
static daNpc_GetParam2 l_GrdFaceParamList[23] = {
    {-1, 0x4D, 2}, {8, 0x4E, 2}, {9, 0x4F, 0},
    {0x0A, 0x50, 0}, {0x0B, 0x51, 0}, {0x0D, 0x52, 0}, 
    {0x0E, -1, 0}, {0x0F, 0x53, 0}, {0x10, 0x54, 0}, 
    {0x11, 0x55, 0}, {0x12, 0x56, 0}, {0x14, 0x57, 2},
    {0x15, 0x58, 0}, {0x16, 0x59, 0}, {0x17, 0x5A, 0},
    {0x18, 0x5B, 0}, {0x19, 0x5C, 2}, {0x1A, -1, 2}, 
    {0x1B, 0x5D, 0}, {0x1C, -1, 2}, {0x1D, 0x5E, 2}, 
    {0x1E, 0x5F, 0}, {0x1F, -1, 0},
};

/* 80B4252C-80B425E4 000734 00B8+00 1/0 0/0 0/0 .data            l_GrdBtpParamList */
static daNpc_GetParam1 l_GrdBtpParamList[23] = {
    {0x4D, 2}, {0x4E, 2}, {0x4F, 0}, {0x50, 0},
    {0x51, 0}, {0x52, 0}, {-1, 0}, {0x53, 0},
    {0x54, 0}, {0x55, 0}, {0x56, 0}, {0x57, 2},
    {0x58, 0}, {0x59, 0}, {0x5A, 0}, {0x5B, 0},
    {0x5C, 2}, {-1, 2}, {0x5D, 0}, {-1, 2},
    {0x5E, 2}, {0x5F, 0}, {-1, 0},
};

/* 80B425E4-80B425EC 0007EC 0008+00 1/0 0/0 0/0 .data            l_GrdBtkParamList */
static daNpc_GetParam1 l_GrdBtkParamList[1] = {
    {0x4A, 2},
};

/* 80B425EC-80B425FC -00001 0010+00 1/0 0/0 0/0 .data            l_GrdAnmParamList */
static void* l_GrdAnmParamList[4] = {
    l_GrdBckParamList,
    l_GrdFaceParamList,
    l_GrdBtpParamList,
    l_GrdBtkParamList,
};

/* 80B425FC-80B42604 -00001 0008+00 0/1 0/0 0/0 .data            l_anmList */
static int* l_anmList[2] = {
    (int*)l_BouAnmParamList,
    (int*)l_GrdAnmParamList,
};

/* 80B42604-80B42620 -00001 001C+00 2/5 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[7] = {
    "",
    "GRDS_ENTRY",
    "GRDS_ENTRY2",
    "GRDS_ENTRY3",
    "GRDS_ENTRY4",
    "GRDS_ENTRY5",
    "GRDS_LOSE",
};

/* 80B42620-80B42624 -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
static char* l_myName = "Wrestler";

/* 80B42624-80B42630 -00001 000C+00 0/1 0/0 0/0 .data            @3975 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3975[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_grDSEntry__15daNpcWrestler_cFi,
};
#pragma pop

/* 80B42630-80B4263C -00001 000C+00 0/1 0/0 0/0 .data            @3976 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3976[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_grDSEntry2__15daNpcWrestler_cFi,
};
#pragma pop

/* 80B4263C-80B42648 -00001 000C+00 0/1 0/0 0/0 .data            @3977 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3977[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_grDSEntry3_4__15daNpcWrestler_cFi,
};
#pragma pop

/* 80B42648-80B42654 -00001 000C+00 0/1 0/0 0/0 .data            @3978 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3978[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_grDSEntry3_4__15daNpcWrestler_cFi,
};
#pragma pop

/* 80B42654-80B42660 -00001 000C+00 0/1 0/0 0/0 .data            @3979 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3979[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_grDSEntry5__15daNpcWrestler_cFi,
};
#pragma pop

/* 80B42660-80B4266C -00001 000C+00 0/1 0/0 0/0 .data            @3980 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3980[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_grDSLose__15daNpcWrestler_cFi,
};
#pragma pop

/* 80B4266C-80B426C0 000874 0054+00 0/2 0/0 0/0 .data            mEvtSeqList__15daNpcWrestler_c */
daNpcWrestler_c::EventFn daNpcWrestler_c::mEvtSeqList[7] = {
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
};

/* 80B426C0-80B426CC -00001 000C+00 1/1 0/0 0/0 .data            @4604 */
SECTION_DATA static void* lit_4604[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)gotoArena__15daNpcWrestler_cFPv,
};

/* 80B426CC-80B426D8 -00001 000C+00 0/1 0/0 0/0 .data            @4645 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4645[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B426D8-80B426E4 -00001 000C+00 0/1 0/0 0/0 .data            @4647 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4647[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B426E4-80B426F0 -00001 000C+00 0/1 0/0 0/0 .data            @4653 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4653[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B426F0-80B426FC -00001 000C+00 0/1 0/0 0/0 .data            @4655 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4655[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B426FC-80B42768 -00001 006C+00 1/1 0/0 0/0 .data            @4706 */
SECTION_DATA static void* lit_4706[27] = {
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x9C),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0xB8),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0xD4),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0xF0),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x10C),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x128),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x144),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x160),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x17C),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x198),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x1B4),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x1D0),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x1EC),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x208),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x224),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x240),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x25C),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x278),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x294),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x2B0),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x2CC),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x2E8),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x304),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x320),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x33C),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x358),
    (void*)(((char*)setExpressionAnm__15daNpcWrestler_cFib) + 0x374),
};

/* 80B42768-80B42774 -00001 000C+00 1/1 0/0 0/0 .data            @4776 */
SECTION_DATA static void* lit_4776[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)gotoArena__15daNpcWrestler_cFPv,
};

/* 80B42774-80B42780 -00001 000C+00 1/1 0/0 0/0 .data            @4779 */
SECTION_DATA static void* lit_4779[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcWrestler_cFPv,
};

/* 80B42780-80B4278C -00001 000C+00 0/1 0/0 0/0 .data            @5293 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5293[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouReady__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B4278C-80B42798 -00001 000C+00 0/1 0/0 0/0 .data            @5296 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5296[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouReady__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42798-80B427A4 -00001 000C+00 0/1 0/0 0/0 .data            @5299 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5299[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)gotoLiving__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B427A4-80B427B0 -00001 000C+00 0/1 0/0 0/0 .data            @5303 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5303[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B427B0-80B427BC -00001 000C+00 0/1 0/0 0/0 .data            @5338 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5338[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouPunchChaseHit__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B427BC-80B427C8 -00001 000C+00 0/1 0/0 0/0 .data            @5343 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5343[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouPunchDraw__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B427C8-80B427D4 -00001 000C+00 0/1 0/0 0/0 .data            @5348 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5348[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouTackleDraw__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B427D4-80B427E0 -00001 000C+00 0/1 0/0 0/0 .data            @5354 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5354[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouTackleHit__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B427E0-80B427EC -00001 000C+00 0/1 0/0 0/0 .data            @5361 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5361[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouSideStep__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B427EC-80B427F8 -00001 000C+00 0/1 0/0 0/0 .data            @5366 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5366[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouPunchChaseShock__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B427F8-80B42804 -00001 000C+00 0/1 0/0 0/0 .data            @5374 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5374[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouSideStep__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42804-80B42810 -00001 000C+00 0/1 0/0 0/0 .data            @5382 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5382[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouPunchChaseHit__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42810-80B4281C -00001 000C+00 0/1 0/0 0/0 .data            @5387 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5387[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouPunchDraw__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B4281C-80B42828 -00001 000C+00 0/1 0/0 0/0 .data            @5393 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5393[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouPunchMiss__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42828-80B42834 -00001 000C+00 0/1 0/0 0/0 .data            @5399 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5399[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouTackleMiss__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42834-80B42840 -00001 000C+00 0/1 0/0 0/0 .data            @5404 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5404[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouTackleHit__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42840-80B4284C -00001 000C+00 0/1 0/0 0/0 .data            @5409 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5409[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouTackleDraw__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B4284C-80B42858 -00001 000C+00 0/1 0/0 0/0 .data            @5414 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5414[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouTackleShock__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42858-80B42864 -00001 000C+00 0/1 0/0 0/0 .data            @5419 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5419[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouSideStep__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42864-80B42870 -00001 000C+00 0/1 0/0 0/0 .data            @5424 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5424[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouPunchShock__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42870-80B4287C -00001 000C+00 0/1 0/0 0/0 .data            @5429 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5429[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouTackleHit__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B4287C-80B42888 -00001 000C+00 0/1 0/0 0/0 .data            @5472 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5472[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42888-80B42894 -00001 000C+00 0/1 0/0 0/0 .data            @5475 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5475[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42894-80B428A0 -00001 000C+00 0/1 0/0 0/0 .data            @5480 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5480[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B428A0-80B428AC -00001 000C+00 0/1 0/0 0/0 .data            @5632 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5632[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B428AC-80B428B8 -00001 000C+00 0/1 0/0 0/0 .data            @5637 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5637[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)gotoArena__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B428B8-80B428C4 -00001 000C+00 0/1 0/0 0/0 .data            @5644 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5644[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)gotoArena__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B428C4-80B428D0 -00001 000C+00 0/1 0/0 0/0 .data            @5647 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5647[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B428D0-80B428DC -00001 000C+00 0/1 0/0 0/0 .data            @5650 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5650[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B428DC-80B428E8 -00001 000C+00 0/1 0/0 0/0 .data            @5745 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5745[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B428E8-80B428F4 -00001 000C+00 1/1 0/0 0/0 .data            @5820 */
SECTION_DATA static void* lit_5820[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcWrestler_cFPv,
};

/* 80B428F4-80B42900 -00001 000C+00 1/1 0/0 0/0 .data            @5948 */
SECTION_DATA static void* lit_5948[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouWait__15daNpcWrestler_cFPv,
};

/* 80B42900-80B4290C -00001 000C+00 1/1 0/0 0/0 .data            @5951 */
SECTION_DATA static void* lit_5951[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouWait__15daNpcWrestler_cFPv,
};

/* 80B4290C-80B42928 -00001 001C+00 1/1 0/0 0/0 .data            @6092 */
SECTION_DATA static void* lit_6092[7] = {
    (void*)(((char*)sumouReady__15daNpcWrestler_cFPv) + 0x2E4),
    (void*)(((char*)sumouReady__15daNpcWrestler_cFPv) + 0x3DC),
    (void*)(((char*)sumouReady__15daNpcWrestler_cFPv) + 0x404),
    (void*)(((char*)sumouReady__15daNpcWrestler_cFPv) + 0x534),
    (void*)(((char*)sumouReady__15daNpcWrestler_cFPv) + 0x6AC),
    (void*)(((char*)sumouReady__15daNpcWrestler_cFPv) + 0x72C),
    (void*)(((char*)sumouReady__15daNpcWrestler_cFPv) + 0x800),
};

/* 80B42928-80B42934 -00001 000C+00 0/1 0/0 0/0 .data            @6107 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6107[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouPunchHit__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42934-80B42940 -00001 000C+00 0/1 0/0 0/0 .data            @6112 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6112[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouSideStep__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42940-80B4294C -00001 000C+00 0/1 0/0 0/0 .data            @6115 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6115[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouPunchHit__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B4294C-80B42958 -00001 000C+00 0/1 0/0 0/0 .data            @6120 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6120[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouTackleHit__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42958-80B42964 -00001 000C+00 0/1 0/0 0/0 .data            @6126 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6126[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouTackleMiss__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42964-80B42970 -00001 000C+00 0/1 0/0 0/0 .data            @6129 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6129[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouWait__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42970-80B4297C -00001 000C+00 0/1 0/0 0/0 .data            @6132 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6132[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouWait__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B4297C-80B42988 -00001 000C+00 0/1 0/0 0/0 .data            @6137 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6137[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouWin2__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42988-80B42994 -00001 000C+00 0/1 0/0 0/0 .data            @6400 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6400[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouUnilateralWin__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42994-80B429A0 -00001 000C+00 0/1 0/0 0/0 .data            @6415 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6415[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouWin2__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B429A0-80B429AC -00001 000C+00 0/1 0/0 0/0 .data            @6421 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6421[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouWait__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B429AC-80B429B8 -00001 000C+00 0/1 0/0 0/0 .data            @6623 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6623[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouUnilateralWin__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B429B8-80B429C4 -00001 000C+00 0/1 0/0 0/0 .data            @6638 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6638[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouWin2__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B429C4-80B429D0 -00001 000C+00 0/1 0/0 0/0 .data            @6643 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6643[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouWait__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B429D0-80B429DC -00001 000C+00 1/1 0/0 0/0 .data            @6833 */
SECTION_DATA static void* lit_6833[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouLose__15daNpcWrestler_cFPv,
};

/* 80B429DC-80B429E8 -00001 000C+00 1/1 0/0 0/0 .data            @6838 */
SECTION_DATA static void* lit_6838[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouTackleStagger__15daNpcWrestler_cFPv,
};

/* 80B429E8-80B429F4 -00001 000C+00 0/1 0/0 0/0 .data            @7029 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7029[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouUnilateralWin__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B429F4-80B42A00 -00001 000C+00 0/1 0/0 0/0 .data            @7044 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7044[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouLose2__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42A00-80B42A0C -00001 000C+00 0/1 0/0 0/0 .data            @7049 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7049[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouWin2__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42A0C-80B42A18 -00001 000C+00 0/1 0/0 0/0 .data            @7054 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7054[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouWait__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42A18-80B42A24 -00001 000C+00 1/1 0/0 0/0 .data            @7272 */
SECTION_DATA static void* lit_7272[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouWin__15daNpcWrestler_cFPv,
};

/* 80B42A24-80B42A30 -00001 000C+00 1/1 0/0 0/0 .data            @7277 */
SECTION_DATA static void* lit_7277[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouTacklePush__15daNpcWrestler_cFPv,
};

/* 80B42A30-80B42A3C -00001 000C+00 0/1 0/0 0/0 .data            @7542 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7542[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouWin2__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42A3C-80B42A48 -00001 000C+00 0/1 0/0 0/0 .data            @7547 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7547[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouTackleShock__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42A48-80B42A54 -00001 000C+00 0/1 0/0 0/0 .data            @7552 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7552[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouPunchShock__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42A54-80B42A60 -00001 000C+00 0/1 0/0 0/0 .data            @7557 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7557[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouLostBalance__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42A60-80B42A6C -00001 000C+00 0/1 0/0 0/0 .data            @7604 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7604[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouUnilateralWin__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42A6C-80B42A78 -00001 000C+00 0/1 0/0 0/0 .data            @7623 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7623[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouLose2__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42A78-80B42A84 -00001 000C+00 0/1 0/0 0/0 .data            @7628 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7628[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouWin2__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42A84-80B42A90 -00001 000C+00 0/1 0/0 0/0 .data            @7633 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7633[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouWait__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42A90-80B42A9C -00001 000C+00 0/1 0/0 0/0 .data            @7775 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7775[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouWin2__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42A9C-80B42AA8 -00001 000C+00 0/1 0/0 0/0 .data            @7780 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7780[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouPunchChaseShock__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42AA8-80B42AB4 -00001 000C+00 0/1 0/0 0/0 .data            @7787 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7787[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouTackleHit__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42AB4-80B42AC0 -00001 000C+00 0/1 0/0 0/0 .data            @7790 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7790[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouWait__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42AC0-80B42ACC -00001 000C+00 0/1 0/0 0/0 .data            @7970 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7970[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouWait__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42ACC-80B42AD8 -00001 000C+00 0/1 0/0 0/0 .data            @7975 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7975[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouWin2__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42AD8-80B42AE4 -00001 000C+00 0/1 0/0 0/0 .data            @7980 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7980[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouTackleShock__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42AE4-80B42AF0 -00001 000C+00 0/1 0/0 0/0 .data            @7985 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7985[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouPunchShock__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42AF0-80B42AFC -00001 000C+00 0/1 0/0 0/0 .data            @8022 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8022[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouLose2__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42AFC-80B42B08 -00001 000C+00 0/1 0/0 0/0 .data            @8027 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8027[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouWin2__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42B08-80B42B14 -00001 000C+00 0/1 0/0 0/0 .data            @8034 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8034[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouWait__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42B14-80B42B20 -00001 000C+00 0/1 0/0 0/0 .data            @8037 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8037[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouPunchStagger__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42B20-80B42B2C -00001 000C+00 0/1 0/0 0/0 .data            @8088 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8088[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouLose2__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42B2C-80B42B38 -00001 000C+00 0/1 0/0 0/0 .data            @8093 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8093[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouWin2__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42B38-80B42B44 -00001 000C+00 0/1 0/0 0/0 .data            @8098 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8098[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouPunchStagger__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42B44-80B42B50 -00001 000C+00 0/1 0/0 0/0 .data            @8219 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8219[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouLose2__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42B50-80B42B5C -00001 000C+00 0/1 0/0 0/0 .data            @8224 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8224[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouWin2__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42B5C-80B42B68 -00001 000C+00 0/1 0/0 0/0 .data            @8229 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8229[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouTackleShock__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42B68-80B42B74 -00001 000C+00 0/1 0/0 0/0 .data            @8234 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8234[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouPunchShock__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42B74-80B42B80 -00001 000C+00 0/1 0/0 0/0 .data            @8239 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8239[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouWait__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42B80-80B42B8C -00001 000C+00 1/1 0/0 0/0 .data            @8323 */
SECTION_DATA static void* lit_8323[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouLose__15daNpcWrestler_cFPv,
};

/* 80B42B8C-80B42B98 -00001 000C+00 1/1 0/0 0/0 .data            @8328 */
SECTION_DATA static void* lit_8328[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouTackleStagger__15daNpcWrestler_cFPv,
};

/* 80B42B98-80B42BA4 -00001 000C+00 1/1 0/0 0/0 .data            @8395 */
SECTION_DATA static void* lit_8395[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouLose__15daNpcWrestler_cFPv,
};

/* 80B42BA4-80B42BB0 -00001 000C+00 1/1 0/0 0/0 .data            @8400 */
SECTION_DATA static void* lit_8400[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouTackleStaggerRelease__15daNpcWrestler_cFPv,
};

/* 80B42BB0-80B42BBC -00001 000C+00 1/1 0/0 0/0 .data            @8584 */
SECTION_DATA static void* lit_8584[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouWait__15daNpcWrestler_cFPv,
};

/* 80B42BBC-80B42BC8 -00001 000C+00 1/1 0/0 0/0 .data            @8642 */
SECTION_DATA static void* lit_8642[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoSumouWin__15daNpcWrestler_cFPv,
};

/* 80B42BC8-80B42BD4 -00001 000C+00 1/1 0/0 0/0 .data            @8647 */
SECTION_DATA static void* lit_8647[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouTackleRelease__15daNpcWrestler_cFPv,
};

/* 80B42BD4-80B42BE0 -00001 000C+00 1/1 0/0 0/0 .data            @8834 */
SECTION_DATA static void* lit_8834[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sumouWait__15daNpcWrestler_cFPv,
};

/* 80B42BE0-80B42BEC -00001 000C+00 1/1 0/0 0/0 .data            @8996 */
SECTION_DATA static void* lit_8996[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)gotoArena__15daNpcWrestler_cFPv,
};

/* 80B42BEC-80B42C18 -00001 002C+00 1/1 0/0 0/0 .data            @9274 */
SECTION_DATA static void* lit_9274[11] = {
    (void*)(((char*)demoSumouReady__15daNpcWrestler_cFPv) + 0x2D0),
    (void*)(((char*)demoSumouReady__15daNpcWrestler_cFPv) + 0x3F4),
    (void*)(((char*)demoSumouReady__15daNpcWrestler_cFPv) + 0x400),
    (void*)(((char*)demoSumouReady__15daNpcWrestler_cFPv) + 0x53C),
    (void*)(((char*)demoSumouReady__15daNpcWrestler_cFPv) + 0x5F0),
    (void*)(((char*)demoSumouReady__15daNpcWrestler_cFPv) + 0x7EC),
    (void*)(((char*)demoSumouReady__15daNpcWrestler_cFPv) + 0x960),
    (void*)(((char*)demoSumouReady__15daNpcWrestler_cFPv) + 0xAAC),
    (void*)(((char*)demoSumouReady__15daNpcWrestler_cFPv) + 0xB80),
    (void*)(((char*)demoSumouReady__15daNpcWrestler_cFPv) + 0xCF4),
    (void*)(((char*)demoSumouReady__15daNpcWrestler_cFPv) + 0xD74),
};

/* 80B42C18-80B42C24 -00001 000C+00 1/1 0/0 0/0 .data            @9296 */
SECTION_DATA static void* lit_9296[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcWrestler_cFPv,
};

/* 80B42C24-80B42C30 -00001 000C+00 1/1 0/0 0/0 .data            @9429 */
SECTION_DATA static void* lit_9429[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcWrestler_cFPv,
};

/* 80B42C30-80B42C3C -00001 000C+00 1/1 0/0 0/0 .data            @9432 */
SECTION_DATA static void* lit_9432[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoTalkAfterLose__15daNpcWrestler_cFPv,
};

/* 80B42C3C-80B42C48 -00001 000C+00 1/1 0/0 0/0 .data            @9598 */
SECTION_DATA static void* lit_9598[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcWrestler_cFPv,
};

/* 80B42C48-80B42C54 -00001 000C+00 1/1 0/0 0/0 .data            @9717 */
SECTION_DATA static void* lit_9717[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcWrestler_cFPv,
};

/* 80B42C54-80B42C60 -00001 000C+00 1/1 0/0 0/0 .data            @9720 */
SECTION_DATA static void* lit_9720[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoTalkAfterLose__15daNpcWrestler_cFPv,
};

/* 80B42C60-80B42C6C -00001 000C+00 1/1 0/0 0/0 .data            @9878 */
SECTION_DATA static void* lit_9878[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcWrestler_cFPv,
};

/* 80B42C6C-80B42C78 -00001 000C+00 0/1 0/0 0/0 .data            @9999 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_9999[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__15daNpcWrestler_cFPv,
};
#pragma pop

/* 80B42C78-80B42C9C -00001 0024+00 1/1 0/0 0/0 .data            @10144 */
SECTION_DATA static void* lit_10144[9] = {
    (void*)(((char*)EvCut_grDSEntry__15daNpcWrestler_cFi) + 0x238),
    (void*)(((char*)EvCut_grDSEntry__15daNpcWrestler_cFi) + 0x240),
    (void*)(((char*)EvCut_grDSEntry__15daNpcWrestler_cFi) + 0x478),
    (void*)(((char*)EvCut_grDSEntry__15daNpcWrestler_cFi) + 0x4B8),
    (void*)(((char*)EvCut_grDSEntry__15daNpcWrestler_cFi) + 0x240),
    (void*)(((char*)EvCut_grDSEntry__15daNpcWrestler_cFi) + 0x240),
    (void*)(((char*)EvCut_grDSEntry__15daNpcWrestler_cFi) + 0x238),
    (void*)(((char*)EvCut_grDSEntry__15daNpcWrestler_cFi) + 0x240),
    (void*)(((char*)EvCut_grDSEntry__15daNpcWrestler_cFi) + 0x240),
};

/* 80B42C9C-80B42CC0 -00001 0024+00 1/1 0/0 0/0 .data            @10143 */
SECTION_DATA static void* lit_10143[9] = {
    (void*)(((char*)EvCut_grDSEntry__15daNpcWrestler_cFi) + 0x7C),
    (void*)(((char*)EvCut_grDSEntry__15daNpcWrestler_cFi) + 0xC8),
    (void*)(((char*)EvCut_grDSEntry__15daNpcWrestler_cFi) + 0xE8),
    (void*)(((char*)EvCut_grDSEntry__15daNpcWrestler_cFi) + 0x104),
    (void*)(((char*)EvCut_grDSEntry__15daNpcWrestler_cFi) + 0xC8),
    (void*)(((char*)EvCut_grDSEntry__15daNpcWrestler_cFi) + 0xC8),
    (void*)(((char*)EvCut_grDSEntry__15daNpcWrestler_cFi) + 0xA8),
    (void*)(((char*)EvCut_grDSEntry__15daNpcWrestler_cFi) + 0xC8),
    (void*)(((char*)EvCut_grDSEntry__15daNpcWrestler_cFi) + 0xC8),
};

/* 80B42CC0-80B42CCC -00001 000C+00 1/1 0/0 0/0 .data            @10156 */
SECTION_DATA static void* lit_10156[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)gotoArena__15daNpcWrestler_cFPv,
};

/* 80B42CCC-80B42CD8 -00001 000C+00 1/1 0/0 0/0 .data            @10254 */
SECTION_DATA static void* lit_10254[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)gotoArena__15daNpcWrestler_cFPv,
};

/* 80B42CD8-80B42CF8 -00001 0020+00 1/0 0/0 0/0 .data            daNpcWrestler_MethodTable */
static actor_method_class daNpcWrestler_MethodTable = {
    (process_method_func)daNpcWrestler_Create__FPv,
    (process_method_func)daNpcWrestler_Delete__FPv,
    (process_method_func)daNpcWrestler_Execute__FPv,
    (process_method_func)daNpcWrestler_IsDelete__FPv,
    (process_method_func)daNpcWrestler_Draw__FPv,
};

/* 80B42CF8-80B42D28 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_WRESTLER */
extern actor_process_profile_definition g_profile_NPC_WRESTLER = {
  fpcLy_CURRENT_e,            // mLayerID
  7,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_NPC_WRESTLER,          // mProcName
  &g_fpcLf_Method.base,      // sub_method
  0xEA0,                      // mSize (fix this)
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  329,                        // mPriority
  &daNpcWrestler_MethodTable, // sub_method
  0x00044007,                 // mStatus
  fopAc_NPC_e,                // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};

/* 80B42D28-80B42D34 000F30 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80B42D34-80B42D7C 000F3C 0048+00 2/2 0/0 0/0 .data            __vt__15daNpcWrestler_c */
SECTION_DATA extern void* __vt__15daNpcWrestler_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcWrestler_cFv,
    (void*)setParam__15daNpcWrestler_cFv,
    (void*)main__15daNpcWrestler_cFv,
    (void*)ctrlBtk__15daNpcWrestler_cFv,
    (void*)adjustShapeAngle__15daNpcWrestler_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__15daNpcWrestler_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__15daNpcWrestler_cFib,
    (void*)setExpressionBtp__15daNpcWrestler_cFi,
    (void*)setExpression__15daNpcWrestler_cFif,
    (void*)setMotionAnm__15daNpcWrestler_cFif,
    (void*)setMotion__15daNpcWrestler_cFifi,
    (void*)drawDbgInfo__15daNpcWrestler_cFv,
    (void*)drawOtherMdls__15daNpcWrestler_cFv,
};

/* 80B42D7C-80B42D88 000F84 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B42D88-80B42DAC 000F90 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B416C0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B416B8,
};

/* 80B42DAC-80B42DB8 000FB4 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B42DB8-80B42DC4 000FC0 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B42DC4-80B42DD0 000FCC 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B42DD0-80B42DDC 000FD8 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80B42DDC-80B42DE8 000FE4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B42DE8-80B42DF4 000FF0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B42DF4-80B42E00 000FFC 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 80B2F28C-80B2F410 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__15daNpcWrestler_cFv */
daNpcWrestler_c::daNpcWrestler_c() {
    // NONMATCHING
}

/* 80B416DC-80B41870 000000 0194+00 35/35 0/0 0/0 .rodata          m__21daNpcWrestler_Param_c */
const daNpcWrestler_HIOParam daNpcWrestler_Param_c::m = {
    220.0f,
    -3.0f,
    1.0f,
    400.0f,
    255.0f,
    200.0f,
    35.0f,
    40.0f,
    0.0f,
    0.0f,
    30.0f,
    -30.0f,
    30.0f,
    -10.0f,
    30.0f,
    -30.0f,
    0.6f,
    6.0f,
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
    0,
    30,
    60,
    0,
    3,
    10,
    0,
    0.5f,
    180.0f,
    500.0f,
    0.05f,
    15,
    0,
    0.0f,
    30.0f,
    20.0f,
    16.0f,
    150.0f,
    10.0f,
    400,
    400,
    0xFF00,
    0,
    400.0f,
    14,
    11,
    0.0f,
    5.0f,
    360.0f,
    0.0f,
    1.0f,
    240.0f,
    0.0f,
    5.0f,
    350.0f,
    0.0f,
    10.0f,
    240.0f,
    0xA8C,
    0x1004,
    0xA28,
    0x11F8,
    44.0f,
    30.0f,
    40.0f,
    150.0f,
    35.0f,
    55.0f,
    800.0f,
    13.0f,
    230.0f,
    140.0f,
    150.0f,
    20,
    0x258,
    0x28,
    20,
    12,
    0,
    20.0f,
    30.0f,
    20.0f,
    30.0f,
    25.0f,
    50.0f,
    25.0f,
    0.0f,
    220.0f,
    35.0f,
    85.0f,
    1100.0f,
    10.0f,
    257.0f,
    180.0f,
    150.0f,
    20,
    0x258,
    30,
    15,
    12,
    0,
    20.0f,
    20.0f,
    60.0f,
    0.0f,
    20.0f,
    20.0f,
    // 60.0f,
    // 0.0f,
};

/* 80B2F688-80B2F974 0004E8 02EC+00 1/1 0/0 0/0 .text            Create__15daNpcWrestler_cFv */
cPhs__Step daNpcWrestler_c::Create() {
    // NONMATCHING
    fopAcM_SetupActor(this, daNpcWrestler_c);

    mType = getType();
    mMsgNo = getMessageNo();
    field_0xe04 = l_anmList[mType];

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, l_resALink);
    if (phase == cPhs_COMPLEATE_e) {
        phase = (cPhs__Step)dComIfG_resLoad(&mPhase2, l_resName[mType]);
    }

    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, mType == 0 ? 0x49B0 : 0x3A40)) {
            return cPhs_ERROR_e;
        }

        field_0xbd8 = &daNpcWrestler_Param_c::m;
        field_0xbdc = &field_0xbd8->mTypeParams[mType];

        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -160.0f, -50.0f, -160.0f, 160.0f, 220.0f, 160.0f);
        reset();

        mSound.init(&current.pos, &eyePos, 3, 1);
        mAcchCir.SetWall(field_0xbdc->field_0x8, field_0xbdc->field_0x4);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this),
                    fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(field_0xbd8->common.weight, 0, this);
        field_0xc90.Set(daNpcF_c::mCcDCyl);
        field_0xc90.SetStts(&mCcStts);
        field_0xc90.SetTgType(0);
        field_0xc90.SetTgSPrm(0);
        field_0xc90.SetH(field_0xbdc->field_0x0);
        field_0xc90.SetR(field_0xbdc->field_0x8);
        
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        setEnvTevColor();
        setRoomNo();
        Execute();
        dTimer_createTimer(9, 0x989298, 0, 0, 210.0f, 410.0f, 32.0f, 419.0f);
    }

    return phase;
}

/* 80B2F974-80B2FBF4 0007D4 0280+00 1/1 0/0 0/0 .text            CreateHeap__15daNpcWrestler_cFv */
int daNpcWrestler_c::CreateHeap() {
    J3DModelData* mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_resName[mType], l_bmdGetParamList[mType]);
    JUT_ASSERT(mdlData_p != 0);

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

    if (!setExpressionAnm(20, false)) {
        return 0;
    }
    setMotionAnm(57, 0.0f);

    return 1;
}

/* 80B2FDB0-80B2FDE4 000C10 0034+00 1/1 0/0 0/0 .text            Delete__15daNpcWrestler_cFv */
int daNpcWrestler_c::Delete() {
    this->~daNpcWrestler_c();
    return 1;
}

/* 80B2FDE4-80B2FE1C 000C44 0038+00 2/2 0/0 0/0 .text            Execute__15daNpcWrestler_cFv */
int daNpcWrestler_c::Execute() {
    checkArenaInfo();
    execute();
    return 1;
}

/* 80B2FE1C-80B2FE84 000C7C 0068+00 1/1 0/0 0/0 .text            Draw__15daNpcWrestler_cFv */
int daNpcWrestler_c::Draw() {
    if (mWrestlerNoDraw != 0) {
        return 0;
    }
        
    mpMorf->getModel()->getModelData()->getMaterialNodePointer(1)->setMaterialAnm(mpMatAnm);
    return draw(FALSE, FALSE, field_0xbdc->field_0xc, NULL, FALSE);
}

/* 80B2FE84-80B30150 000CE4 02CC+00 1/1 0/0 0/0 .text            ctrlJoint__15daNpcWrestler_cFP8J3DJointP8J3DModel */
int daNpcWrestler_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    // NONMATCHING
    int jnt_no = i_joint->getJntNo();
    int iVar1[3] = {1, 3, 4};

    if (jnt_no == 0) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jnt_no));
    
    if (mType == 0) {
        switch (jnt_no) {
            case 2:
                break;

            case 3:
            case 4:
                setLookatMtx(jnt_no, iVar1, field_0xbd8->common.neck_rotation_ratio);
                break;
        }
    } else if (jnt_no != 2) {
        switch (jnt_no) {
            case 2:
                break;

            case 3:
            case 4:
                setLookatMtx(jnt_no, iVar1, field_0xbd8->common.neck_rotation_ratio);
                break;
        }
    }
    
    if (jnt_no == 1) {
        mDoMtx_stack_c::YrotM(field_0x908[0].z);
        mDoMtx_stack_c::ZrotM(-field_0x908[0].x);
    } else if (jnt_no == 4) {
        mDoMtx_stack_c::YrotM(field_0x908[2].z);
        mDoMtx_stack_c::ZrotM(field_0x908[2].x);
    }

    i_model->setAnmMtx(jnt_no, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    int iVar2;
    if (mType == 0) {
        iVar2 = 8;
    } else {
        iVar2 = 7;
    }

    if ((jnt_no == 4 || jnt_no == iVar2) && (mAnmFlags & 0x100)) {
        J3DAnmTransform* anm = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mpMorf->getAnm());
        mpMorf->changeAnm(anm);
    }

    return 1;
}

/* 80B30150-80B30170 000FB0 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__15daNpcWrestler_cFP10fopAc_ac_c */
int daNpcWrestler_c::createHeapCallBack(fopAc_ac_c* a_this) {
    ((daNpcWrestler_c*)a_this)->CreateHeap();
}

/* 80B30170-80B301BC 000FD0 004C+00 1/1 0/0 0/0 .text            ctrlJointCallBack__15daNpcWrestler_cFP8J3DJointi */
int daNpcWrestler_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpcWrestler_c* i_this = reinterpret_cast<daNpcWrestler_c*>(model->getUserArea());
        if (i_this != 0) {
            i_this->ctrlJoint(i_joint, model);
        }
    }
    return 1;
}

/* 80B301BC-80B3023C 00101C 0080+00 0/0 0/0 1/1 .text            checkStartUp__15daNpcWrestler_cFv */
BOOL daNpcWrestler_c::checkStartUp() {
    // NONMATCHING
    return chkAction(&daNpcWrestler_c::gotoArena) >> 5 & 0xFF && field_0xe96 == 2;
}

/* 80B3023C-80B30654 00109C 0418+00 2/0 0/0 0/0 .text setExpressionAnm__15daNpcWrestler_cFib */
bool daNpcWrestler_c::setExpressionAnm(int param_1, bool param_2) {
    // NONMATCHING
    J3DAnmTransform* anmTransform;

    mAnmFlags &= 0xFFFFE03F;

    if (field_0xe04[param_1] >= 0) {
        anmTransform = (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], field_0xe04[param_1]);
    } else {
        anmTransform = NULL;
    }

    int iVar1 = field_0xe04[param_1 + 1];
    bool bVar1 = false;
    switch (param_1) {
        case 0:
            bVar1 = setExpressionBtp(0);
            break;

        case 1:
            bVar1 = setExpressionBtp(1);
            break;

        case 2:
            bVar1 = setExpressionBtp(2);
            break;

        case 3:
            bVar1 = setExpressionBtp(3);
            break;

        case 4:
            bVar1 = setExpressionBtp(4);
            break;

        case 5:
            bVar1 = setExpressionBtp(5);
            break;

        case 6:
            bVar1 = setExpressionBtp(6);
            break;

        case 7:
            bVar1 = setExpressionBtp(7);
            break;

        case 8:
            bVar1 = setExpressionBtp(8);
            break;

        case 9:
            bVar1 = setExpressionBtp(9);
            break;

        case 10:
            bVar1 = setExpressionBtp(10);
            break;

        case 11:
            bVar1 = setExpressionBtp(11);
            break;

        case 12:
            bVar1 = setExpressionBtp(12);
            break;

        case 13:
            bVar1 = setExpressionBtp(13);
            break;

        case 14:
            bVar1 = setExpressionBtp(14);
            break;

        case 15:
            bVar1 = setExpressionBtp(15);
            break;

        case 16:
            bVar1 = setExpressionBtp(16);
            break;

        case 17:
            bVar1 = setExpressionBtp(17);
            break;

        case 18:
            bVar1 = setExpressionBtp(18);
            break;

        case 19:
            bVar1 = setExpressionBtp(19);
            break;

        case 20:
            bVar1 = setExpressionBtp(20);
            break;

        case 21:
            bVar1 = setExpressionBtp(21);
            break;

        case 22:
            bVar1 = setExpressionBtp(22);
            break;

        case 23:
            bVar1 = setExpressionBtp(0);
            break;

        case 24:
            bVar1 = setExpressionBtp(0);
            break;

        case 25:
            bVar1 = setExpressionBtp(0);
            break;

        case 26:
            bVar1 = setExpressionBtp(0);
            break;

        default:
            anmTransform = NULL;
    }

    if (!bVar1) {
        return false;
    }

    if (anmTransform == NULL) {
        return true;
    }

    if (setBckAnm(anmTransform, 1.0f, iVar1, 0, -1, param_2)) {
        mAnmFlags |= 0x140;
        mExpressionLoops = 0;

        return true;
    }

    return false;
}

/* 80B30654-80B3074C 0014B4 00F8+00 1/0 0/0 0/0 .text setExpressionBtp__15daNpcWrestler_cFi */
bool daNpcWrestler_c::setExpressionBtp(int param_1) {
    // NONMATCHING
    J3DAnmTexPattern* anmTexPattern;
    if (field_0xe04[2] + param_1 >= 0) {
        anmTexPattern = getTexPtrnAnmP(l_resName[mType], field_0xe04[2] + param_1);
    } else {
        anmTexPattern = NULL;
    }

    int iVar1 = field_0xe04[2] + param_1 + 4;
    mAnmFlags &= 0xFFFFF57F;

    if (anmTexPattern == NULL) {
        return 1;
    }

    if (setBtpAnm(anmTexPattern, mpMorf->getModel()->getModelData(), 1.0f, iVar1)) {
        mAnmFlags |= 0x280;

        if (param_1 == 0 || param_1 == 20) {
            mAnmFlags |= 0x800;
        }

        return 1;
    }

    return 0;
}

/* 80B3074C-80B308B0 0015AC 0164+00 1/0 0/0 0/0 .text            setMotionAnm__15daNpcWrestler_cFif */
void daNpcWrestler_c::setMotionAnm(int param_1, f32 param_2) {
    // NONMATCHING
    J3DAnmTransformKey* anmTransformKey;
    J3DAnmTextureSRTKey* anmTextureSRTKey;

    if (field_0xe04[param_1] >= 0) {
        anmTransformKey = getTrnsfrmKeyAnmP(l_resName[mType], field_0xe04[param_1]);
    } else {
        anmTransformKey = NULL;
    }

    if (field_0xe04[3] >= 0) {
        anmTextureSRTKey = getTexSRTKeyAnmP(l_resName[mType], field_0xe04[3]);
    } else {
        anmTextureSRTKey = NULL;
    }
}

/* 80B308B0-80B30AD8 001710 0228+00 1/1 0/0 0/0 .text            reset__15daNpcWrestler_cFv */
void daNpcWrestler_c::reset() {
    // NONMATCHING
    initialize();
    mpMatAnm->initialize();
    mLookAt.initialize();

    for (int i = 0; i < 2; i++) {
        mActorMngr[i].initialize();
    }

    field_0xe80 = 0;
    field_0xe84 = 0;
    field_0xdcc = 0;
    mLookMode = -1;
    field_0xe96 = 0;
    field_0xe8c = -1.0f;
    mOrderEvtNo = 0;

    if (mType == 1 && daNpcF_chkEvtBit(0x3F)) {
        if (daNpcF_chkEvtBit(0x3E)) {
            current.pos.set(-216.2476f, -172.1f, 806.0135f);
            old.pos = current.pos;
            setAngle(0x2CD3);
            home.angle.y = 0x2CD3;
        } else {
            current.pos.set(0.0f, -24.54f, 100.0f);
            old.pos = current.pos;
            setAngle(0);
        }
    }

    speedF = 0.0f;
    speed.setall(0.0f);
    mArenaInfo = 0;
    field_0xe78 = -1;
    field_0xe8c = field_0xbd8->common.morf_frame;

    if (mType == 0 && getStatusNo() != 0) {
        checkArenaInfo();
        mItemNo = getStatusNo();
        setAction(&daNpcWrestler_c::gotoArena);
    } else {
        setAction(&daNpcWrestler_c::wait);
    }

    mExpressionMorfOverride = 0.0f;
    mMotionMorfOverride = 0.0f;
}

/* 80B30AD8-80B30B80 001938 00A8+00 1/1 0/0 0/0 .text            setAction__15daNpcWrestler_cFM15daNpcWrestler_cFPCvPvPv_b */
inline int daNpcWrestler_c::setAction(actionFunc action) {
    field_0xe96 = 3;
    if (field_0xdcc != NULL) {
        (this->*field_0xdcc)(NULL);
    }

    field_0xe96 = 0;
    field_0xdcc = action;
    if (field_0xdcc != NULL) {
        (this->*field_0xdcc)(NULL);
    }

    return 1;
}

/* 80B30B80-80B30BEC 0019E0 006C+00 1/1 0/0 0/0 .text            s_sub1__FPvPv */
static void* s_sub1(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_Tag_Arena && ((daNpcWrestler_c*)i_data)->checkArenaSub((daNpcWrestler_c*)i_actor)) {
        return i_actor;
    }

    return NULL;
}

/* 80B30BEC-80B30CA4 001A4C 00B8+00 2/2 0/0 0/0 .text            checkArenaInfo__15daNpcWrestler_cFv */
void daNpcWrestler_c::checkArenaInfo() {
    // NONMATCHING
    daTagArena_c* arena;
    if (mArenaInfo == 0 && (arena = (daTagArena_c*)fpcM_Search(s_sub1, this),  arena != NULL)) {
        mArenaPos.x = arena->getArenaPos().x;
        mArenaPos.y = arena->getArenaPos().y;
        mArenaPos.z = arena->getArenaPos().z;
        mArenaExtent = arena->getArenaExtent();
        mArenaAngle = arena->getArenaAngle();
        mArenaInfo = 1;
    }
}

/* 80B30CA4-80B30CC8 001B04 0024+00 1/1 0/0 0/0 .text            checkArenaSub__15daNpcWrestler_cFP10fopAc_ac_c */
bool daNpcWrestler_c::checkArenaSub(fopAc_ac_c* actor) {
    daTagArena_c* arena = (daTagArena_c*)actor;
    if (getArenaNo() == arena->getArenaNo()) {
        return true;
    }

    return false;
}

/* 80B30CC8-80B30D48 001B28 0080+00 1/1 0/0 0/0 .text            s_sub2__FPvPv */
static void* s_sub2(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_NPC_GRA) {
        daNpc_grA_c* goron = (daNpc_grA_c*)i_actor;
        if (goron->getType() == 3) {
            goron->setTagJump();
        } else if (goron->getType() == 4 && goron->getMode1() != 1) {
            goron->setHomeJump();
        }
    }

    return NULL;
}

/* 80B30D48-80B30F00 001BA8 01B8+00 2/2 0/0 0/0 .text            setOnToArena__15daNpcWrestler_cFf */
void daNpcWrestler_c::setOnToArena(f32 param_1) {
    if (mType == 0) {
        daNpcBouS_c* bou = (daNpcBouS_c*)fpcM_SearchByID(parentActorID);
        JUT_ASSERT(2166, bou != 0);
        bou->setHome();
        bou->offDispFlag();
    } else if (mType == 1) {
        fpcM_Search(s_sub2, this);
    }

    JUT_ASSERT(2175, mArenaInfo.chkFlag);

    current.pos.set(0.0f, 0.0f, -param_1);
    cXyz sp3c, sp48;
    sp48 = mArenaPos;
    mDoMtx_stack_c::transS(sp48);
    mDoMtx_stack_c::YrotM(mArenaAngle);
    mDoMtx_stack_c::multVec(&current.pos, &current.pos);
    old.pos.set(current.pos);
    setAngle(mArenaAngle);

    daPy_py_c* player = daPy_getPlayerActorClass();
    sp3c.set(0.0f, 0.0f, param_1);
    mDoMtx_stack_c::multVec(&sp3c, &sp3c);
    player->setPlayerPosAndAngle(&sp3c, mArenaAngle + 0x8000, 0);

    if (mType == 0) {
        player->setClothesChange(1);
    }
}

/* 80B30F00-80B31680 001D60 0780+00 13/1 0/0 0/0 .text            wait__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::wait(void* param_1) {
    // NONMATCHING
    switch (field_0xe96) {
        case 0:
            setExpression(5, -1.0f);
            setMotion(0, field_0xe8c, 0);
            mTurnMode = 0;
            speedF = 0.0f;
            field_0xe96 = 2;
            return true;

        case 1:
            return true;

        case 2:
            if (dComIfGp_event_runCheck()) {
                if (mOrderNewEvt != 0) {
                    if (dComIfGp_getEvent().isOrderOK()) {
                        actionFunc action;
                        if (!eventInfo.checkCommandTalk()) {
                            if (!dComIfGp_event_chkTalkXY() || dComIfGp_evmng_ChkPresentEnd()) {
                                if (mType == 1 && field_0xe99 == 0 && daNpcF_chkEvtBit(0x3A) && !daNpcF_chkEvtBit(0x3E) && daNpcF_chkEvtBit(0x3F)) {
                                    s16 sVar1;
                                    if (current.pos.z > 200.0f) {
                                        sVar1 = 3;
                                    } else {
                                        sVar1 = 4;
                                    }

                                    mOrderEvtNo = sVar1;

                                    changeEvent(l_resName[mType], l_evtNames[mOrderEvtNo], 1, 0xFFFF);
                                    action = &daNpcWrestler_c::demo;
                                    field_0xe96 = 3;
                                    if (field_0xdcc != NULL) {
                                        (this->*field_0xdcc)(NULL);
                                    }

                                    field_0xe96 = 0;
                                    field_0xdcc = action;
                                    if (field_0xdcc != NULL) {
                                        (this->*field_0xdcc)(NULL);
                                    }

                                    break;
                                }

                                action = &daNpcWrestler_c::talk;
                                field_0xe96 = 3;
                                if (field_0xdcc != NULL) {
                                    (this->*field_0xdcc)(NULL);
                                }

                                field_0xe96 = 0;
                                field_0xdcc = action;
                                if (field_0xdcc != NULL) {
                                    (this->*field_0xdcc)(NULL);
                                }

                                break;
                            }
                        } else {
                            if (dComIfGp_getEventManager().getMyStaffId(l_myName, NULL, 0) != -1) {
                                action = &daNpcWrestler_c::demo;
                                field_0xe96 = 3;
                                if (field_0xdcc != NULL) {
                                    (this->*field_0xdcc)(NULL);
                                }

                                field_0xe96 = 0;
                                field_0xdcc = action;
                                if (field_0xdcc != NULL) {
                                    (this->*field_0xdcc)(NULL);
                                }

                                break;
                            }
                        }
                    }
                }
            }

            mOrderEvtNo = 0;
            if (mType == 1 && !daNpcF_chkEvtBit(0x3F)) {
                fopAc_ac_c* actor = getEvtAreaTagP(6, 0);
                if (actor != NULL && fopAcM_searchPlayerDistance(actor) < (actor->scale.x * 0.5f)) {
                    mOrderEvtNo = 1;
                    fopAcM_delete(actor);
                }
            }

            if (mOrderEvtNo != 0) {
                eventInfo.setArchiveName(l_resName[mType]);
            }

            orderEvent(field_0xe99, l_evtNames[mOrderEvtNo], 0xFFFF, 0x28, 0xFF, 1);
            

            if (mActorMngr[0].getActorP() != NULL) {
                if (!chkFindPlayer()) {
                    mTurnMode = 0;
                }
            } else if (chkFindPlayer()) {
                mTurnMode = 0;
            }

            if (mActorMngr[0].getActorP() == NULL && home.angle.y != mCurAngle.y && step(home.angle.y, 1) != 0) {
                setExpression(5, -1.0f);
                setMotion(0, -1.0f, 0);
                mTurnMode = 0;
            }
    }

    return true;
}

/* 80B31680-80B316C8 0024E0 0048+00 1/0 0/0 0/0 .text            setMotion__15daNpcWrestler_cFifi */
void daNpcWrestler_c::setMotion(int i_motion, f32 i_motionMorfOverride, int param_3) {
    s16 motion = i_motion;
    if ((param_3 != 0 || mMotion != motion) && i_motion >= 0 && i_motion < 30) {
        mMotion = motion;
        mMotionMorfOverride = i_motionMorfOverride;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
        field_0xe92 = 0;
    }
}

/* 80B316C8-80B316F4 002528 002C+00 1/0 0/0 0/0 .text            setExpression__15daNpcWrestler_cFif */
void daNpcWrestler_c::setExpression(int i_expression, f32 i_expressionMorfOvveride) {
    if (i_expression >= 0 && i_expression < 6) {
        mExpression = i_expression;
        mExpressionMorfOverride = i_expressionMorfOvveride;
        mExpressionPrevPhase = -1;
        mExpressionPhase = 0;
    }
}

/* 80B316F4-80B31EB0 002554 07BC+00 3/0 0/0 0/0 .text            talk__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::talk(void* param_1) {
    // NONMATCHING
    bool rv = false;
    int i_expression, i_motion, iVar3;

    switch (field_0xe96) {
        case 0:
            initTalk(mMsgNo, NULL);
            initTalkAngle();
            mMsgTimer = 0;
            field_0xe99 = 0;
            speedF = 0.0f;
            setLookMode(3);
            field_0xe96 = 2;
            break;
            
        case 2:
            if (setTalkAngle()) {
                if (talkProc(NULL, 1, NULL)) {
                    actionFunc action;
                    mActorMngr[0].entry(daPy_getPlayerActorClass());
                    mItemNo = 0;
                    u16 eventID = mFlow.getEventId(&mItemNo);
                    OS_REPORT("会話終了時 イベントID=%d アイテムNo=%d\n", eventID, mItemNo);
                    if (eventID == 1) {
                        field_0xe78 = fopAcM_createItemForPresentDemo(&current.pos, mItemNo, 0, -1, -1, NULL, NULL);
                        if (field_0xe78 != -1) {
                            s16 sVar1 = dComIfGp_getEventManager().getEventIdx(this, "DEFAULT_GETITEM", 0xFF);
                            dComIfGp_getEvent().reset(this);
                            fopAcM_orderChangeEventId(this, sVar1, 1, 0xFFFF);
                            field_0x9ec = true;
                            field_0xe8c = field_0xbd8->common.morf_frame;

                            action = &daNpcWrestler_c::talk;
                            field_0xe96 = 3;
                            if (field_0xdcc != NULL) {
                                (this->*field_0xdcc)(NULL);
                            }

                            field_0xe96 = 0;
                            field_0xdcc = action;
                            if (field_0xdcc != NULL) {
                                (this->*field_0xdcc)(NULL);
                            }
                        }
                    } else if (eventID == 6) {
                        action = &daNpcWrestler_c::gotoArena;
                        field_0xe96 = 3;
                        if (field_0xdcc != NULL) {
                            (this->*field_0xdcc)(NULL);
                        }

                        field_0xe96 = 0;
                        field_0xdcc = action;
                        if (field_0xdcc != NULL) {
                            (this->*field_0xdcc)(NULL);
                        }
                    } else {
                        int choiceNo = mFlow.getChoiceNo();
                        #ifdef DEBUG
                        char* choice;
                        if (choiceNo == 0) {
                            choice = "はい";
                        } else {
                            choice = "いいえ";
                        }
                        OS_REPORT("二択分岐 %s\n", choice);
                        #endif

                        field_0xe8c = field_0xbd8->common.morf_frame;
                        int itemNo;
                        if (!daNpcF_chkEvtBit(0xE7)) {
                            itemNo = 1;
                        } else {
                            itemNo = 2;
                        }
                        mItemNo = itemNo;

                        if (choiceNo == 0) {
                            if (mType == 0) {
                                action = &daNpcWrestler_c::gotoArena;
                                field_0xe96 = 3;
                                if (field_0xdcc != NULL) {
                                    (this->*field_0xdcc)(NULL);
                                }

                                field_0xe96 = 0;
                                field_0xdcc = action;
                                if (field_0xdcc != NULL) {
                                    (this->*field_0xdcc)(NULL);
                                } else {
                                    mOrderEvtNo = 5;
                                    changeEvent(l_resName[mType], l_evtNames[mOrderEvtNo], 1, 0xFFFF);

                                    action = &daNpcWrestler_c::demo;
                                    field_0xe96 = 3;
                                    if (field_0xdcc != NULL) {
                                        (this->*field_0xdcc)(NULL);
                                    }

                                    field_0xe96 = 0;
                                    field_0xdcc = action;
                                    if (field_0xdcc != NULL) {
                                        (this->*field_0xdcc)(NULL);
                                    }
                                }
                            } else {
                                action = &daNpcWrestler_c::wait;
                                field_0xe96 = 3;
                                if (field_0xdcc != NULL) {
                                    (this->*field_0xdcc)(NULL);
                                }

                                field_0xe96 = 0;
                                field_0xdcc = action;
                                if (field_0xdcc != NULL) {
                                    (this->*field_0xdcc)(NULL);
                                }
                            }
                        } 
                    }

                    rv = true;
                } else {
                    iVar3 = mMsgTimer;
                    if (ctrlMsgAnm(i_expression, i_motion, this, 0)) {
                        setExpression(i_expression, -1.0f);
                        setMotion(i_motion, -1.0f, 0);
                    } else {
                        if (iVar3 != 0 && mMsgTimer == 0) {
                            setExpressionTalkAfter();
                        }
                    }
                }
            }
            break;

        case 3:
            setExpression(5, -1.0f);
            if (!field_0x9ec) {
                dComIfGp_event_reset();
            }
    }

    return rv;
}

/* 80B31EB0-80B32058 002D10 01A8+00 4/0 0/0 0/0 .text            demo__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::demo(void* param_1) {
    // NONMATCHING
    dEvent_manager_c* eventManager = &dComIfGp_getEventManager();
    int staffID;

    switch (field_0xe96) {
        case 0:
            field_0xe96 = 2;
            break;

        case 2:
            staffID = eventManager->getMyStaffId(l_myName, NULL, 0);
            mStaffID = staffID;
            JUT_ASSERT(2886, 0 != mEvtSeqList[mOrderEvtNo]);

            if (staffID != -1 && (this->*mEvtSeqList[mOrderEvtNo])(NULL)) {
                eventManager->cutEnd(mStaffID);
            }

            if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && eventManager->endCheck(mEventIdx)) {
                dComIfGp_event_reset();
                mOrderEvtNo = 0;
                mEventIdx = -1;
                setAction(&daNpcWrestler_c::wait);
            }
            break;

        case 3:
            field_0xe8c = 20.0f;
    }

    return true;
}

/* 80B32058-80B32444 002EB8 03EC+00 7/0 0/0 0/0 .text            gotoArena__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::gotoArena(void* param_1) {
    // NONMATCHING
    dCamera_c* camBody = dCam_getBody();
    int iVar1;

    switch (field_0xe96) {
        case 0:
            if (field_0x9ec) {
                field_0xe84 = 1;
            } else {
                field_0xe84 = 0;
            }

            field_0xe80 = 1.0f / field_0xbd8->fade_speed;
            
            mDoGph_gInf_c::fadeOut(field_0xbd8->fade_speed);
            camBody->Stop();
            camBody->SetTrimSize(2);
            field_0xe96 = 2;
            break;

        case 2:
            switch (field_0xe84) {
                case 0:
                    if (!eventInfo.checkCommandDemoAccrpt()) {
                        fopAcM_orderPotentialEvent(this, 1, 0xFFFF, 0);
                        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                        return false;
                    }

                    field_0xe84++;
                    break;

                case 1:
                    iVar1 = field_0xe80;
                    field_0xe80--;
                    if (iVar1 != 0) {
                        field_0xe9a = 1;
                        field_0xe80 = field_0xbd8->field_0x8c + 1;
                        field_0xe84++;
                    }
                    break;

                case 2:
                    iVar1 = field_0xe80;
                    field_0xe80--;
                    if (iVar1 <= 0) {
                        setNextSumouEvent(-1);
                    }
            }
            break;

        case 3:
            break;
    }

    return true;
}

/* 80B32444-80B32850 0032A4 040C+00 1/0 0/0 0/0 .text            gotoLiving__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::gotoLiving(void* param_1) {
    // NONMATCHING
    dCamera_c* camBody = dCam_getBody();
    int iVar1;

    switch (field_0xe96) {
        case 0:
            field_0xe84 = 0;
            Z2GetAudioMgr()->subBgmStop();
            setBackToLiving();
            mDemoCam.mDemoCamCenter.set(0.0f, 100.0f, 0.0f);
            mDemoCam.mDemoCamEye.set(0.0f, 0.0f, 430.0f);
            mDoMtx_stack_c::transS(fopAcM_GetPosition(daPy_getPlayerActorClass()));
            mDoMtx_stack_c::multVec(&mDemoCam.mDemoCamCenter, &mDemoCam.mDemoCamCenter);
            mDoMtx_stack_c::YrotM(fopAcM_GetShapeAngle_p(daPy_getPlayerActorClass())->y + 0x2D00);
            mDoMtx_stack_c::XrotM(-0xC94);
            mDoMtx_stack_c::multVec(&mDemoCam.mDemoCamEye, &mDemoCam.mDemoCamEye);
            camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, camBody->Fovy(), 0);
            field_0xe96 = 2;
            break;

        case 2:
            switch (field_0xe84) {
                case 0:
                    if (daPy_getPlayerActorClass()->getClothesChangeWaitTimer() == 0) {
                        field_0xe80 = 1.0f / field_0xbd8->fade_speed;
                        mDoGph_gInf_c::fadeOut(-field_0xbd8->fade_speed);
                        field_0xe84++;
                    }
                    break;

                case 1:
                    iVar1 = field_0xe80;
                    field_0xe80--;
                    if (iVar1 < 1) {
                        camBody->Reset(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye);
                        camBody->Start();
                        dComIfGp_event_reset();
                        field_0xe99 = 1;
                        field_0xe8c = field_0xbd8->common.morf_frame;

                        if (mType == 0) {
                            fopAcM_delete(this);
                        } else {
                            setAction(&daNpcWrestler_c::wait);
                        }
                    }
                    break;
            }
            break;

        case 3:
            break;
    }

    return true;
}

/* 80B32850-80B331CC 0036B0 097C+00 2/0 0/0 0/0 .text            sumouReady__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouReady(void* param_1) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    dCamera_c* camBody = dCam_getBody();
    int iVar1;

    switch (field_0xe96) {
        case 0:
            field_0xe84 = 0;
            if (mType == 0) {
                mMsgNo = 7;
            }

            daPy_getPlayerActorClass()->offPlayerNoDraw();
            offWrestlerNoDraw();
            Z2GetAudioMgr()->subBgmStart(Z2BGM_SUMO);
            setLookMode(2);
            mActorMngr[0].entry(daPy_getPlayerActorClass());
            setExpression(3, -1.0f);
            setMotionAnm(30, 0.0f);
            mpMorf->modelCalc();
            player->setSumouReady(this);
            initDemoCamera_ArenaSide();

            if (field_0xe9a != 0) {
                field_0xe80 = 1.0f / field_0xbd8->fade_speed;
                mDoGph_gInf_c::fadeOut(-field_0xbd8->fade_speed);
                camBody->SetTrimSize(2);
                camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, mDemoCamFovy, 0);
            } else {
                field_0xe80 = 0;
            }

            field_0xe96 = 2;
            break;

        case 2:
            switch (field_0xe84) {
                case 0:
                    if (field_0xe9a == 0) {
                        if (!eventInfo.checkCommandDemoAccrpt()) {
                            fopAcM_orderPotentialEvent(this, 1, 0xFFFF, 0);
                            eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                            return false;
                        }

                        camBody->Stop();
                        camBody->SetTrimSize(2);
                        camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, mDemoCamFovy, 0);
                        setOnToArena(field_0xbdc->field_0x14 * 0.5f);
                        field_0xe9a = 0;
                        field_0xe84++;
                        break;
                    }

                    setOnToArena(field_0xbdc->field_0x14 * 0.5f);
                    field_0xe9a = 0;
                    field_0xe84++;
                    // fallthrough
                case 1:
                    if (player->getClothesChangeWaitTimer() == 0) {
                        field_0xe84++;
                        field_0xe5e += field_0xbd8->field_0xac;
                        field_0xe54 -= fabsf(field_0xbd8->field_0xac);
                        
                        if (field_0xe54 < fabsf(field_0xbd8->field_0xac)) {
                            field_0xe80 = 1;
                            field_0xe84++;
                        }

                        mDemoCamFovy = 45.0f;
                        mDoMtx_stack_c::transS(mDemoCam.mDemoCamCenter);
                        mDoMtx_stack_c::YrotM(field_0xe5e);
                        mDemoCam.mDemoCamCenter.set(0.0f, 50.0f, -field_0xbd8->field_0xb0);
                        mDoMtx_stack_c::multVec(&mDemoCam.mDemoCamEye, &mDemoCam.mDemoCamEye);
                        camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, mDemoCamFovy, 0);
                    }
                    break;

                case 3:
                    iVar1 = field_0xe80;
                    field_0xe80--;

                    if (iVar1 <= 0) {
                        camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, mDemoCamFovy, 0);
                        camBody->Reset(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye);
                        camBody->SetTrimSize(0);
                        camBody->Start();
                        dComIfGp_event_reset();
                        field_0xe80 = 0;
                        field_0xe84++;
                    } else {
                        mDoMtx_stack_c::transS(mDemoCam.mDemoCamCenter);
                        mDoMtx_stack_c::YrotM(mArenaAngle + 0x8000);
                        mDemoCam.mDemoCamCenter.set(0.0f, 50.0f, -field_0xbd8->field_0xb0);
                        mDoMtx_stack_c::multVec(&mDemoCam.mDemoCamEye, &mDemoCam.mDemoCamEye);
                        camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, mDemoCamFovy, 0);
                    }
                    break;

                case 4:
                    iVar1 = field_0xe80;
                    field_0xe80++;

                    if (iVar1 > field_0xbd8->ready_appearance_time) {
                        dMeter2Info_setMeterString(0x515);
                        Z2GetAudioMgr()->seStart(Z2SE_SY_SUMO_READY, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                        field_0xe80 = 0;
                        field_0xe84++;
                    }
                    break;

                case 5:
                    iVar1 = field_0xe80;
                    field_0xe80++;
                    if (iVar1 > field_0xbd8->fight_appearance_time) {
                        dMeter2Info_setMeterString(0x516);
                        Z2GetAudioMgr()->seStart(Z2SE_SY_SUMO_START, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                        Z2GetAudioMgr()->changeSubBgmStatus(1);
                        dComIfGp_setDoStatus(21, 0);
                        player->setSumouReadyAcceptButton();
                        player->setSumouForceStand();
                        setMotionAnm(31, 3.0f);
                        field_0xe84++;
                    }
                    break;

                case 6:
                    if (mType == 0) {
                        if (mpMorf->isStop()) {
                            setAction(&daNpcWrestler_c::sumouWait);
                        }
                    } else {
                        setAction(&daNpcWrestler_c::sumouWait);
                    }
                    break;
            }
    }
    
    return 1;
}

/* 80B331CC-80B339EC 00402C 0820+00 14/0 0/0 0/0 .text           sumouWait__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouWait(void* param_1) {
    // NONMATCHING
    daPy_py_c* player;
    int iVar1;

    switch (field_0xe96) {
        case 0:
            field_0xe80 = field_0xbdc->wait_time;
            field_0xe98 = 0;
            
            sumouAI();
            setExpression(3, -1.0f);
            setMotion(8, field_0xe8c, 0);
            field_0xe8c = -1.0f;
            field_0xe96 = 2;
            break;

        case 2:
            correctGraspPosAngle(true);

            if (cLib_distanceAngleS(mCurAngle.y, fopAcM_searchPlayerAngleY(this)) < 0x600) {
                setMotion(8, 6.0f, 0);
            } else {
                setMotion(9, 6.0f, 0);
            }

            if (!setNextAction()) {
                iVar1 = field_0xe80;
                field_0xe80--;
                if (iVar1 < 0) {
                    player = daPy_getPlayerActorClass();
                    if (mType == 1 && !daPy_getPlayerActorClass()->checkEquipHeavyBoots()) {
                        setAction(&daNpcWrestler_c::sumouPunchHit);
                        daPy_getPlayerActorClass()->setSumouForcePunch();
                    } else {
                        switch (mWrestlerAction) {
                            case 1:
                                setAction(&daNpcWrestler_c::sumouSideStep);
                                break;

                            case 2:
                                setAction(&daNpcWrestler_c::sumouPunchHit);
                                daPy_getPlayerActorClass()->setSumouForcePunch();
                                break;

                            case 3:
                                if (player->checkSumouWait()) {
                                    setAction(&daNpcWrestler_c::sumouTackleHit);
                                    daPy_getPlayerActorClass()->setSumouForceTackle();
                                } else if (player->checkSumouLeftMove() || player->checkSumouRightMove()) {
                                    setAction(&daNpcWrestler_c::sumouTackleMiss);
                                }
                                break;

                            case 4:
                                setAction(&daNpcWrestler_c::sumouWait);
                                break;

                            case 5:
                                setAction(&daNpcWrestler_c::sumouWait);
                                break;
                        }
                    }
                }
            }

            if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            }
            break;

        case 3:
            break;
    }

    return true;
}

/* 80B339EC-80B33B3C 00484C 0150+00 13/13 0/0 0/0 .text          checkOutOfArenaP__15daNpcWrestler_cFv */
bool daNpcWrestler_c::checkOutOfArenaP() {
    // NONMATCHING
    if (mArenaInfo == 0) {
        return false;
    }

    f32 fVar1 = pow(mArenaExtent, 2.0);
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (player->getLeftFootPosP()->abs2XZ(mArenaPos) <= fVar1 && player->getRightFootPosP()->abs2XZ(mArenaPos) <= fVar1) {
        return false;
    }

    return true;
}

/* 80B33B3C-80B34654 00499C 0B18+00 1/1 0/0 0/0 .text            setNextAction__15daNpcWrestler_cFv */
bool daNpcWrestler_c::setNextAction() {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (mType == 1 && !player->checkEquipHeavyBoots()) {
        if (player->checkSumouSlideLeft() || player->checkSumouSlideRight() || player->checkSumouLeftMove() || player->checkSumouRightMove()) {
            setAction(&daNpcWrestler_c::sumouPunchChaseHit);
            return true;
        }

        if (player->checkSumouPunchDraw()) {
            setAction(&daNpcWrestler_c::sumouPunchDraw);
            return true;
        }

        if (player->checkSumouTackleDraw()) {
            setAction(&daNpcWrestler_c::sumouTackleDraw);
            return true;
        }
    } else {
        if (player->checkSumouPunchStagger() || player->checkSumouTackleStagger()) {
            mWrestlerAction = 3;
            setAction(&daNpcWrestler_c::sumouTackleHit);
            player->setSumouForceTackle();
            return true;
        }

        switch (mWrestlerAction) {
            case 1:
                if (player->checkSumouTackleMiss()) {
                    setAction(&daNpcWrestler_c::sumouSideStep);
                    return true;
                }

                if (player->checkSumouPunchSuccess()) {
                    setAction(&daNpcWrestler_c::sumouPunchChaseShock);
                    return true;
                }

                if (player->checkSumouSlideLeft() || player->checkSumouSlideRight() || player->checkSumouLeftMove() || player->checkSumouRightMove()) {
                    setAction(&daNpcWrestler_c::sumouSideStep);
                    return true;
                }
                break;

            case 2:
                if (player->checkSumouSlideLeft() || player->checkSumouSlideRight() || player->checkSumouLeftMove() || player->checkSumouRightMove()) {
                    setAction(&daNpcWrestler_c::sumouPunchChaseHit);
                    return true;
                }

                if (player->checkSumouPunchDraw()) {
                    setAction(&daNpcWrestler_c::sumouPunchDraw);
                    return true;
                }

                if (player->checkSumouTackleSuccess() || player->checkSumouTackleSuccessPunch()) {
                    setAction(&daNpcWrestler_c::sumouPunchMiss);
                    return true;
                }
                break;

            case 3:
                if (player->checkSumouSlideLeft() || player->checkSumouSlideRight()) {
                    setAction(&daNpcWrestler_c::sumouTackleMiss);
                    return true;
                }

                if (player->checkSumouPunchMiss()) {
                    setAction(&daNpcWrestler_c::sumouTackleHit);
                    return true;
                }

                if (player->checkSumouTackleDraw()) {
                    setAction(&daNpcWrestler_c::sumouTackleDraw);
                    return true;
                }
                break;

            case 4:
                if (player->checkSumouTackleSuccess()) {
                    setAction(&daNpcWrestler_c::sumouTackleShock);
                    return true;
                }

                if (player->checkSumouTackleMiss()) {
                    setAction(&daNpcWrestler_c::sumouSideStep);
                    return true;
                }

                if (player->checkSumouPunchSuccess()) {
                    setAction(&daNpcWrestler_c::sumouPunchShock);
                    return true;
                }

                if (player->checkSumouPunchMiss()) {
                    setAction(&daNpcWrestler_c::sumouTackleHit);
                    return true;
                }
                break;
        }
    }

    return false;
}

/* 80B34654-80B34CD0 0054B4 067C+00 2/0 0/0 0/0 .text            sumouPunchHit__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouPunchHit(void* param_1) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    int jointNo = mType != 0 ? 0x12 : 0x11;
    cXyz sp2c;

    switch (field_0xe96) {
        case 0:
            setExpressionAnm(6, true);
            setMotion(12, -1.0f, 0);
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);

            field_0xdd8 = dComIfGp_particle_set(0x8537, &sp2c, &mCurAngle, NULL);
            if (field_0xdd8 != NULL) {
                field_0xdd8->becomeImmortalEmitter();
            }

            field_0xde0 = NULL;
            field_0xddc = NULL;
            field_0xe96 = 2;
            break;

        case 2:
            oppositeToPlayer();
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());
            mpMorf->modelCalc();
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);
            
            if (mpMorf->getFrame() == 13.0f) {
                if (mType == 1 && !player->checkEquipHeavyBoots()) {
                    setAction(&daNpcWrestler_c::demoSumouUnilateralWin);
                } else {
                    dComIfGp_getVibration().StartShock(field_0xbd8->slap_hit_impact, 15, cXyz(0.0f, 1.0f, 0.0f));
                    field_0xddc = dComIfGp_particle_set(0x8539, &sp2c, &mCurAngle, NULL);
                    field_0xde0 = dComIfGp_particle_set(0x853A, &sp2c, &mCurAngle, NULL);

                    if (field_0xddc != NULL) {
                        field_0xddc->becomeImmortalEmitter();
                    }

                    if (field_0xde0 != NULL) {
                        field_0xde0->becomeImmortalEmitter();
                    }
                }
            }

            if (field_0xdd8 != NULL) {
                field_0xdd8->setGlobalRTMatrix(mpMorf->getModel()->getAnmMtx(jointNo));
            }

            if (field_0xddc != NULL) {
                field_0xddc->setGlobalTranslation(sp2c);
            }

            if (field_0xde0 != NULL) {
                JGeometry::TVec3<s16> emitter_rot;
                emitter_rot.x = mCurAngle.x;
                emitter_rot.y = mCurAngle.y;
                emitter_rot.z = mCurAngle.z;
                field_0xde0->setGlobalTranslation(sp2c);
                field_0xde0->setGlobalRotation(emitter_rot);
            }

            if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            } else if (player->checkSumouPunchStagger() || player->checkSumouWait()) {
                field_0xe8c = 0.0f;
                setAction(&daNpcWrestler_c::sumouWait);
            }
            break;

        case 3:
            if (field_0xdd8 != NULL) {
                field_0xdd8->quitImmortalEmitter();
                field_0xdd8 = NULL;
            }

            if (field_0xddc != NULL) {
                field_0xddc->quitImmortalEmitter();
                field_0xddc = NULL;
            }

            if (field_0xde0 != NULL) {
                field_0xde0->quitImmortalEmitter();
                field_0xde0 = NULL;
            }

            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(cLib_targetAngleY(player->getViewerCurrentPosP(), &current.pos));
            current.pos.set(0.0f, 0.0f, -63.5f);
            mDoMtx_stack_c::multVec(&current.pos, &current.pos);
            break;
    }

    return true;
}

/* 80B34CD0-80B35364 005B30 0694+00 2/0 0/0 0/0 .text            sumouPunchChaseHit__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouPunchChaseHit(void* param_1) {
    // NONMATCHING
    int jointNo = mType != 0 ? 0x12 : 0x11;
    cXyz sp38;

    switch (field_0xe96) {
        case 0:
            setExpressionAnm(6, true);
            setMotion(12, -1.0f, 0);
            daPy_getPlayerActorClass()->setSumouForcePunch();
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp38);

            field_0xdd8 = dComIfGp_particle_set(0x8537, &sp38, &mCurAngle, NULL);
            if (field_0xdd8 != NULL) {
                field_0xdd8->becomeImmortalEmitter();
            }

            field_0xde0 = NULL;
            field_0xddc = NULL;
            field_0xe96 = 2;
            break;

        case 2:
            mCurAngle.y = fopAcM_searchPlayerAngleY(this);
            current.angle.y = mCurAngle.y;
            shape_angle.y = current.angle.y;
            mpMorf->modelCalc();
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp38);

            if (mpMorf->getFrame() == 13.0f) {
                if (mType == 1 && !daPy_getPlayerActorClass()->checkEquipHeavyBoots()) {
                    setAction(&daNpcWrestler_c::demoSumouUnilateralWin);
                } else {
                    dComIfGp_getVibration().StartShock(field_0xbd8->slap_hit_impact, 15, cXyz(0.0f, 1.0f, 0.0f));
                    field_0xddc = dComIfGp_particle_set(0x8539, &sp38, &mCurAngle, NULL);
                    field_0xde0 = dComIfGp_particle_set(0x853A, &sp38, &mCurAngle, NULL);

                    if (field_0xddc != NULL) {
                        field_0xddc->becomeImmortalEmitter();
                    }

                    if (field_0xde0 != NULL) {
                        field_0xde0->becomeImmortalEmitter();
                    }
                }
            }

            if (field_0xdd8 != NULL) {
                field_0xdd8->setGlobalRTMatrix(mpMorf->getModel()->getAnmMtx(jointNo));
            }

            if (field_0xddc != NULL) {
                field_0xddc->setGlobalTranslation(sp38);
            }

            if (field_0xde0 != NULL) {
                JGeometry::TVec3<s16> emitter_rot;
                emitter_rot.x = mCurAngle.x;
                emitter_rot.y = mCurAngle.y;
                emitter_rot.z = mCurAngle.z;
                field_0xde0->setGlobalTranslation(sp38);
                field_0xde0->setGlobalRotation(emitter_rot);
            }

            field_0xe8c = 0.0f;

            if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            } else if (mpMorf->isStop()) {
                setAction(&daNpcWrestler_c::sumouWait);
            }
            break;

        case 3:
            if (field_0xdd8 != NULL) {
                field_0xdd8->quitImmortalEmitter();
                field_0xdd8 = NULL;
            }

            if (field_0xddc != NULL) {
                field_0xddc->quitImmortalEmitter();
                field_0xddc = NULL;
            }

            if (field_0xde0 != NULL) {
                field_0xde0->quitImmortalEmitter();
                field_0xde0 = NULL;
            }

            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(cLib_targetAngleY(daPy_getPlayerActorClass()->getViewerCurrentPosP(), &current.pos));
            current.pos.set(0.0f, 0.0f, -63.5f);
            mDoMtx_stack_c::multVec(&current.pos, &current.pos);
            break;
    }

    return true;
}

/* 80B35364-80B35780 0061C4 041C+00 1/0 0/0 0/0 .text            sumouPunchMiss__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouPunchMiss(void* param_1) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    int jointNo = mType != 0 ? 0x12 : 0x11;
    cXyz sp2c;

    switch (field_0xe96) {
        case 0:
            setExpressionAnm(8, true);
            setMotion(0x10, -1.0f, 0);
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);

            field_0xdd8 = dComIfGp_particle_set(0x8537, &sp2c, &mCurAngle, NULL);
            if (field_0xdd8 != NULL) {
                field_0xdd8->becomeImmortalEmitter();
            }

            field_0xe96 = 2;
            break;

        case 2:
            oppositeToPlayer();
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());
            mpMorf->modelCalc();
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);
            
            if (mpMorf->getFrame() > 13.0f && mpMorf->getFrame() < 34.0f) {
                dCam_getBody()->ModeFix(6);
            }

            if (mpMorf->getFrame() == 35.0f) {
                dComIfGp_getVibration().StartShock(field_0xbd8->slap_hit_impact, 15, cXyz(0.0f, 1.0f, 0.0f));
            }

            if (field_0xdd8 != NULL) {
                field_0xdd8->setGlobalRTMatrix(mpMorf->getModel()->getAnmMtx(jointNo));
            }

            if (checkOutOfArenaW()) {
                setAction(&daNpcWrestler_c::demoSumouLose);
            } else if (player->checkSumouPushFront()) {
                setAction(&daNpcWrestler_c::sumouTackleStagger);
            }
            break;

        case 3:
            if (field_0xdd8 != NULL) {
                field_0xdd8->quitImmortalEmitter();
                field_0xdd8 = NULL;
            }
            break;
    }

    return true;
}

/* 80B35780-80B358F0 0065E0 0170+00 8/8 0/0 0/0 .text            checkOutOfArenaW__15daNpcWrestler_cFv */
bool daNpcWrestler_c::checkOutOfArenaW() {
    // NONMATCHING
    if (mArenaInfo == 0) {
        return false;
    }

    int jointNo = mType == 0 ? 0x1A : 0x18;
    int jointNo2 = mType == 0 ? 0x1E : 0x1B;
    f32 fVar1 = pow(mArenaExtent, 2.0);

    field_0x89c = getJointPos(jointNo);
    field_0x8a8 = getJointPos(jointNo2);

    if (field_0x89c.abs2XZ(mArenaPos) <= fVar1 && field_0x8a8.abs2XZ(mArenaPos) <= fVar1) {
        return false;
    }

    return true;
}

/* 80B358F0-80B35968 006750 0078+00 4/4 0/0 0/0 .text            getJointPos__15daNpcWrestler_cFi */
cXyz daNpcWrestler_c::getJointPos(int i_jointNo) {
    cXyz jointPos;
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(i_jointNo));
    mDoMtx_stack_c::multVecZero(&jointPos);
    return jointPos;
}

/* 80B35968-80B3606C 0067C8 0704+00 2/0 0/0 0/0 .text            sumouPunchDraw__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouPunchDraw(void* param_1) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    int jointNo = mType != 0 ? 0x12 : 0x11;
    cXyz sp2c;

    switch (field_0xe96) {
        case 0:
            setExpressionAnm(9, true);
            setMotion(0x11, -1.0f, 0);
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);

            field_0xdd8 = dComIfGp_particle_set(0x8537, &sp2c, &mCurAngle, NULL);
            if (field_0xdd8 != NULL) {
                field_0xdd8->becomeImmortalEmitter();
                field_0xdd8->setLifeTime(5);
            }

            field_0xde0 = NULL;
            field_0xddc = NULL;
            field_0xe96 = 2;
            break;

        case 2:
            oppositeToPlayer();
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());
            mpMorf->modelCalc();
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);
            
            if (mpMorf->getFrame() > 18.0f && mpMorf->getFrame() < 32.0f) {
                dCam_getBody()->ModeFix(5);
            }

            if (mpMorf->getFrame() == 13.0f) {
                if (mType == 1 && !daPy_getPlayerActorClass()->checkEquipHeavyBoots()) {
                    setAction(&daNpcWrestler_c::demoSumouUnilateralWin);
                } else {
                    dComIfGp_getVibration().StartShock(field_0xbd8->slap_hit_impact, 15, cXyz(0.0f, 1.0f, 0.0f));
                    field_0xddc = dComIfGp_particle_set(0x8539, &sp2c, &mCurAngle, NULL);
                    if (field_0xddc != NULL) {
                        field_0xddc->becomeImmortalEmitter();
                    }

                    field_0xde0 = dComIfGp_particle_set(0x853A, &sp2c, &mCurAngle, NULL);
                    if (field_0xde0 != NULL) {
                        field_0xde0->becomeImmortalEmitter();
                    }
                }
            }

            if (field_0xdd8 != NULL) {
                field_0xdd8->setGlobalRTMatrix(mpMorf->getModel()->getAnmMtx(jointNo));
            }

            if (field_0xddc != NULL) {
                field_0xddc->setGlobalTranslation(sp2c);
            }

            if (field_0xde0 != NULL) {
                JGeometry::TVec3<s16> emitter_rot;
                emitter_rot.x = mCurAngle.x;
                emitter_rot.y = mCurAngle.y;
                emitter_rot.z = mCurAngle.z;
                field_0xde0->setGlobalTranslation(sp2c);
                field_0xde0->setGlobalRotation(emitter_rot);
            }

            if (checkOutOfArenaW()) {
                setAction(&daNpcWrestler_c::demoSumouLose2);
            } else if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            } else if (player->checkSumouWait()) {
                field_0xe8c = field_0xbd8->common.morf_frame;
                setAction(&daNpcWrestler_c::sumouWait);
            }
            break;

        case 3:
            if (field_0xdd8 != NULL) {
                field_0xdd8->quitImmortalEmitter();
                field_0xdd8 = NULL;
            }

            if (field_0xddc != NULL) {
                field_0xddc->quitImmortalEmitter();
                field_0xddc = NULL;
            }

            if (field_0xde0 != NULL) {
                field_0xde0->quitImmortalEmitter();
                field_0xde0 = NULL;
            }
            break;
    }

    return true;
}

/* 80B3606C-80B36908 006ECC 089C+00 5/0 0/0 0/0 .text            sumouTackleHit__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouTackleHit(void* param_1) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    int jointNo = mType != 0 ? 0 : 0;
    cXyz sp2c;

    switch (field_0xe96) {
        case 0:
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);

            if (player->checkSumouPunchMiss()) {
                setExpressionAnm(0xD, true);
                setMotion(0x1C, field_0xbd8->common.morf_frame, 0);

                field_0xdd8 = dComIfGp_particle_set(0x8546, &sp2c, &mCurAngle, NULL);
                field_0xddc = dComIfGp_particle_set(0x8547, &sp2c, &mCurAngle, NULL);

                if (field_0xdd8 != NULL) {
                    field_0xdd8->becomeImmortalEmitter();
                }

                if (field_0xddc != NULL) {
                    field_0xddc->becomeImmortalEmitter();
                }
            } else {
                setExpressionAnm(0xC, true);
                setMotion(0xD, field_0xbd8->common.morf_frame, 0);

                field_0xdd8 = dComIfGp_particle_set(0x8543, &sp2c, &mCurAngle, NULL);
                field_0xddc = dComIfGp_particle_set(0x8544, &sp2c, &mCurAngle, NULL);

                if (field_0xdd8 != NULL) {
                    field_0xdd8->becomeImmortalEmitter();
                }

                if (field_0xddc != NULL) {
                    field_0xddc->becomeImmortalEmitter();
                }
            }

            field_0xde4 = NULL;
            field_0xde0 = NULL;

            if (mType != 0) {
                setLookMode(0);
                mActorMngr[0].remove();
            }

            field_0xe96 = 2;
            break;

        case 2:
            correctGraspPosAngle(true);
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());
            mpMorf->modelCalc();

            if ((mMotion == 13 && mpMorf->getFrame() == 8.0f) || (mMotion == 0x1C && mpMorf->getFrame() == 34.0f)) {
                field_0xde0 = dComIfGp_particle_set(0x8539, &sp2c, &mCurAngle, NULL);
                field_0xde4 = dComIfGp_particle_set(0x853A, &sp2c, &mCurAngle, NULL);

                if (field_0xde0 != NULL) {
                    field_0xde0->becomeImmortalEmitter();
                }

                if (field_0xde4 != NULL) {
                    field_0xde4->becomeImmortalEmitter();
                }
            } else {
                if (mpMorf->getFrame() == 15.0f) {
                    dComIfGp_getVibration().StartShock(field_0xbd8->slap_hit_impact, 15, cXyz(0.0f, 1.0f, 0.0f));
                }
            }

            if (field_0xdd8 != NULL) {
                field_0xdd8->setGlobalRTMatrix(mpMorf->getModel()->getAnmMtx(jointNo));
            }

            if (field_0xddc != NULL) {
                field_0xddc->setGlobalRTMatrix(mpMorf->getModel()->getAnmMtx(jointNo));
            }

            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);

            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);

            mDoMtx_stack_c::transS(sp2c);
            mDoMtx_stack_c::YrotM(mCurAngle.y);
            sp2c.set(0.0f, 20.0f, 60.0f);
            mDoMtx_stack_c::multVec(&sp2c, &sp2c);

            if (field_0xde0 != NULL) {
                field_0xde0->setGlobalTranslation(sp2c);
            }

            if (field_0xde4 != NULL) {
                JGeometry::TVec3<s16> emitter_rot;
                emitter_rot.x = mCurAngle.x;
                emitter_rot.y = mCurAngle.y;
                emitter_rot.z = mCurAngle.z;
                field_0xde4->setGlobalTranslation(sp2c);
                field_0xde4->setGlobalRotation(emitter_rot);
            }

            if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::sumouTacklePush);
            } else if (player->checkSumouPushBack()) {
                setAction(&daNpcWrestler_c::demoSumouWin);
            }
            break;

        case 3:
            if (field_0xdd8 != NULL) {
                field_0xdd8->quitImmortalEmitter();
                field_0xdd8 = NULL;
            }

            if (field_0xddc != NULL) {
                field_0xddc->quitImmortalEmitter();
                field_0xddc = NULL;
            }

            if (field_0xde0 != NULL) {
                field_0xde0->quitImmortalEmitter();
                field_0xde0 = NULL;
            }

            if (field_0xde4 != NULL) {
                field_0xde4->quitImmortalEmitter();
                field_0xde4 = NULL;
            }
            break;
    }

    return true;
}

/* 80B36908-80B36C8C 007768 0384+00 2/0 0/0 0/0 .text            sumouTackleMiss__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouTackleMiss(void* param_1) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (field_0xe96) {
        case 0:
            setLookMode(0);
            mActorMngr[0].remove();
            setExpressionAnm(0xE, true);
            setMotion(0x12, -1.0f, 0);
            mWrestlerAction = 5;
            field_0xe96 = 2;
            break;

        case 2:
            if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            } else if (player->checkSumouTackleSuccess()) {
                setAction(&daNpcWrestler_c::sumouTackleShock);
            } else if (player->checkSumouPunchSuccess()) {
                setAction(&daNpcWrestler_c::sumouPunchShock);
            } else if (mpMorf->isStop()) {
                setAction(&daNpcWrestler_c::sumouLostBalance);
            }
            break;

        case 3:
            setLookMode(2);
            mActorMngr[0].entry(daPy_getPlayerActorClass());
            break;
    }

    return true;
}

/* 80B36C8C-80B37270 007AEC 05E4+00 2/0 0/0 0/0 .text            sumouTackleDraw__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouTackleDraw(void* param_1) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    int jointNo = mType != 0 ? 0 : 0;
    cXyz sp2c;

    switch (field_0xe96) {
        case 0:
            setExpressionAnm(0x12, true);
            setMotion(0x14, -1.0f, 0);
            field_0xde4 = NULL;
            field_0xde0 = NULL;
            field_0xddc = NULL;
            field_0xdd8 = NULL;
            field_0xe96 = 2;
            break;

        case 2:
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());
            mpMorf->modelCalc();
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);
            mDoMtx_stack_c::transS(sp2c);
            mDoMtx_stack_c::YrotM(mCurAngle.y);
            mDoMtx_stack_c::transM(0.0f, 20.0f, 60.0f);
            mDoMtx_stack_c::multVecZero(&sp2c);

            if (mpMorf->getFrame() == 4.0f) {
                if (mType == 1 && !daPy_getPlayerActorClass()->checkEquipHeavyBoots()) {
                    setAction(&daNpcWrestler_c::demoSumouUnilateralWin);
                } else {
                    dComIfGp_getVibration().StartShock(field_0xbd8->slap_hit_impact, 15, cXyz(0.0f, 1.0f, 0.0f));

                    field_0xde0 = dComIfGp_particle_set(0x8539, &sp2c, &mCurAngle, NULL);
                    field_0xde4 = dComIfGp_particle_set(0x853A, &sp2c, &mCurAngle, NULL);

                    if (field_0xde0 != NULL) {
                        field_0xde0->becomeImmortalEmitter();
                    }

                    if (field_0xde4 != NULL) {
                        field_0xde4->becomeImmortalEmitter();
                    }
                }
            }

            if (field_0xde0 != NULL || field_0xde4 != NULL) {
                if (field_0xde0 != NULL) {
                    field_0xde0->setGlobalTranslation(sp2c);
                }

                if (field_0xde4 != NULL) {
                    JGeometry::TVec3<s16> emitter_rot;
                    emitter_rot.x = mCurAngle.x;
                    emitter_rot.y = mCurAngle.y;
                    emitter_rot.z = mCurAngle.z;
                    field_0xde4->setGlobalTranslation(sp2c);
                    field_0xde4->setGlobalRotation(emitter_rot);
                }
            }

            if (mpMorf->getFrame() > 4.0f && mpMorf->getFrame() < 24.0f) {
                dCam_getBody()->ModeFix(5);
            }

            if (checkOutOfArenaW()) {
                setAction(&daNpcWrestler_c::demoSumouLose2);
            } else if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            } else if (player->checkSumouWait()) {
                field_0xe8c = field_0xbd8->common.morf_frame;
                setAction(&daNpcWrestler_c::sumouWait);
            }
            break;

        case 3:
            break;
    }

    return true;
}

/* 80B37270-80B378F4 0080D0 0684+00 4/0 0/0 0/0 .text            sumouSideStep__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouSideStep(void* param_1) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    int jointNo, jointNo2;

    switch (field_0xe96) {
        case 0:
            field_0xe80 = field_0xbdc->lateral_movement_time;
            setStepAngle();
            if (mStepAngle > 0) {
                setMotion(11, -1.0f, 0);
            } else {
                setMotion(10, -1.0f, 0);
            }

            mpMorf->setPlaySpeed(2.4f);
            field_0xe96 = 2;
            break;

        case 2:
            correctGraspPosAngle(true);

            jointNo = mType == 0 ? 0x1A : 0x18;
            jointNo2 = mType == 0 ? 0x1E : 0x1B;
            cXyz sp2c;

            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);
            sp2c.y = current.pos.y;
            fopAcM_effSmokeSet2(&field_0xde8, NULL, &sp2c, &mCurAngle, 0.8f, &tevStr);
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0xde8);
            if (emitter != NULL) {
                emitter->setRateStep(1);
            }

            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo2));
            mDoMtx_stack_c::multVecZero(&sp2c);
            sp2c.y = current.pos.y;
            fopAcM_effSmokeSet2(&field_0xdec, NULL, &sp2c, &mCurAngle, 0.8f, &tevStr);
            emitter = dComIfGp_particle_getEmitter(field_0xdec);
            if (emitter != NULL) {
                emitter->setRateStep(1);
            }

            field_0xe80--;

            if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            } else if (daPy_getPlayerActorClass()->checkSumouTackleMiss()) {
                setAction(&daNpcWrestler_c::sumouPunchChaseShock);
            } else if (field_0xe80 < 0) {
                field_0xe8c = field_0xbd8->common.morf_frame;
                if (daPy_getPlayerActorClass()->checkSumouTackleMiss()) {
                    setAction(&daNpcWrestler_c::sumouTackleHit);
                    daPy_getPlayerActorClass()->setSumouForceTackle();
                } else {
                    setAction(&daNpcWrestler_c::sumouWait);
                }
            }
            break;

        case 3:
            mStepAngle = 0;
            break;
    }

    return true;
}

/* 80B378F4-80B37C30 008754 033C+00 1/0 0/0 0/0 .text            sumouLostBalance__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouLostBalance(void* param_1) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (field_0xe96) {
        case 0:
            field_0xe80 = field_0xbdc->stagger_time;
            setMotion(8, field_0xbd8->common.morf_frame, 0);
            mWrestlerAction = 5;
            field_0xe96 = 2;
            break;

        case 2:
            if (abs(oppositeToPlayer()) < 0x1000) {
                setAction(&daNpcWrestler_c::sumouWait);
            } else {
                if (checkOutOfArenaP()) {
                    setAction(&daNpcWrestler_c::demoSumouWin2);
                } else if (player->checkSumouTackleSuccess()) {
                    setAction(&daNpcWrestler_c::sumouTackleShock);
                } else if (player->checkSumouPunchSuccess()) {
                    setAction(&daNpcWrestler_c::sumouPunchShock);
                }
            }
            break;

        case 3:
            break;
    }

    return true;
}

/* 80B37C30-80B37FB8 008A90 0388+00 4/0 0/0 0/0 .text            sumouPunchShock__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouPunchShock(void* param_1) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (field_0xe96) {
        case 0:
            setExpressionAnm(7, true);
            setMotion(0xF, -1.0f, 0);
            field_0xe96 = 2;
            break;

        case 2:
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());
            if (mpMorf->getFrame() == 13.0f) {
                dComIfGp_getVibration().StartShock(field_0xbd8->slap_hit_impact, 15, cXyz(0.0f, 1.0f, 0.0f));
            }

            if (checkOutOfArenaW()) {
                setAction(&daNpcWrestler_c::demoSumouLose2);
            } else if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            } else if (player->checkSumouWait()) {
                if (field_0xe98 != 0) {
                    setAction(&daNpcWrestler_c::sumouWait);
                } else {
                    setAction(&daNpcWrestler_c::sumouPunchStagger);
                }
            }
            break;

        case 3:
            break;
    }

    return true;
}

/* 80B37FB8-80B38518 008E18 0560+00 2/0 0/0 0/0 .text            sumouPunchChaseShock__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouPunchChaseShock(void* param_1) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (field_0xe96) {
        case 0:
            setStepAngle();
            if (mStepAngle > 0) {
                setMotion(0xB, -1.0f, 0);
            } else {
                setMotion(10, -1.0f, 0);
            }

            mpMorf->setPlaySpeed(2.4f);
            field_0xe96 = 2;
            break;

        case 2:
            if (player->getBaseAnimeFrame() == 13.0f) {
                setExpressionAnm(7, true);
                setMotion(0xF, -1.0f, 0);
                mpMorf->setFrameF(13.0f);
                dComIfGp_getVibration().StartShock(field_0xbd8->slap_hit_impact, 15, cXyz(0.0f, 1.0f, 0.0f));
            }

            if (player->getBaseAnimeFrame() >= 13.0f) {
                mpMorf->setPlaySpeed(0.0f);
                mpMorf->setFrameF(player->getBaseAnimeFrame());
            } else {
                correctGraspPosAngle(true);
            }

            if (checkOutOfArenaW()) {
                setAction(&daNpcWrestler_c::demoSumouLose2);
            } else if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            } else if (player->checkSumouWait()) {
                setAction(&daNpcWrestler_c::sumouPunchStagger);
            }
            break;

        case 3:
            mStepAngle = 0;
            break;
    }

    return true;
}

/* 80B38518-80B389A4 009378 048C+00 2/0 0/0 0/0 .text            sumouPunchStagger__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouPunchStagger(void* param_1) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (field_0xe96) {
        case 0:
            correctGraspPosAngle(false);
            field_0xe80 = field_0xbdc->stagger_time;
            setExpressionAnm(0xB, true);
            setMotion(0xE, -1.0f, 0);
            field_0xe98 = 1;
            mWrestlerAction = 5;
            field_0xe96 = 2;
            break;

        case 2:
            correctGraspPosAngle(false);
            field_0xe80--;

            if (checkOutOfArenaW()) {
                setAction(&daNpcWrestler_c::demoSumouLose2);
            } else if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            } else if (player->checkSumouTackleSuccess()) {
                setAction(&daNpcWrestler_c::sumouTackleShock);
            } else if (player->checkSumouPunchSuccess()) {
                setAction(&daNpcWrestler_c::sumouPunchShock);
            } else if (field_0xe80 < 0) {
                setAction(&daNpcWrestler_c::sumouWait);
            }
            break;

        case 3:
            break;
    }

    return true;
}

/* 80B389A4-80B38C90 009804 02EC+00 4/0 0/0 0/0 .text            sumouTackleShock__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouTackleShock(void* param_1) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (field_0xe96) {
        case 0:
            setExpressionAnm(0xF, true);
            setMotion(0x13, -1.0f, 0);
            correctGraspPosAngle(true);
            field_0xe96 = 2;
            break;

        case 2:
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());
            if (mpMorf->getFrame() == 5.0f) {
                dComIfGp_getVibration().StartShock(field_0xbd8->slap_hit_impact, 15, cXyz(0.0f, 1.0f, 0.0f));
            }

            if (checkOutOfArenaW()) {
                setAction(&daNpcWrestler_c::demoSumouLose);
            } else if (player->checkSumouPushFront()) {
                setAction(&daNpcWrestler_c::sumouTackleStagger);
            }
            break;

        case 3:
            break;
    }
    return true;
}

/* 80B38C90-80B39334 009AF0 06A4+00 2/0 0/0 0/0 .text            sumouTackleStagger__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouTackleStagger(void* param_1) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    int jointNo = mType == 0 ? 0x1A : 0x18;
    int jointNo2 = mType == 0 ? 0x1E : 0x1B;

    switch (field_0xe96) {
        case 0:
            field_0xe80 = field_0xbdc->stagger_time;
            setExpressionAnm(0x10, true);
            setMotion(0x15, -1.0f, 0);
            mWrestlerAction = 5;
            field_0xe96 = 2;
            break;

        case 2:
            correctGraspPosAngle(true);
            cXyz sp58;
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp58);
            sp58.y = current.pos.y;
            fopAcM_effSmokeSet2(&field_0xde8, NULL, &sp58, &mCurAngle, 0.9f, &tevStr);

            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo2));
            mDoMtx_stack_c::multVecZero(&sp58);
            sp58.y = current.pos.y;
            fopAcM_effSmokeSet2(&field_0xdec, NULL, &sp58, &mCurAngle, 0.9f, &tevStr);

            f32 fVar1 = getJointPos(jointNo).absXZ(mArenaPos);
            f32 fVar2 = getJointPos(jointNo2).absXZ(mArenaPos);
            if (fVar1 > field_0xbd8->field_0x80 || fVar2 > field_0xbd8->field_0x80) {
                Z2GetAudioMgr()->changeSubBgmStatus(3);
            }

            if (fVar1 > field_0xbd8->field_0x84 || fVar2 > field_0xbd8->field_0x84) {
                player->setSumouPushFrontStop();
            }

            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());

            field_0xe80--;

            if (checkOutOfArenaW()) {
                setAction(&daNpcWrestler_c::demoSumouLose);
            } else if (field_0xe80 < 0) {
                setAction(&daNpcWrestler_c::sumouTackleStaggerRelease);
            }
            break;

        case 3:
            player->setSumouForceGraspCancel();
            break;
    }

    return true;
}

/* 80B39334-80B39554 00A194 0220+00 1/0 0/0 0/0 .text            sumouTackleStaggerRelease__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouTackleStaggerRelease(void* param_1) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (field_0xe96) {
        case 0:
            setExpressionAnm(10, true);
            setMotion(0x18, -1.0f, 0);
            mWrestlerAction = 0;
            field_0xe96 = 2;
            break;

        case 2:
            correctGraspPosAngle(true);
            Z2GetAudioMgr()->changeSubBgmStatus(2);
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());

            if (player->checkSumouWait()) {
                setAction(&daNpcWrestler_c::sumouWait);
            }
            break;

        case 3:
            break;
    }

    return true;
}

/* 80B39554-80B39C18 00A3B4 06C4+00 1/0 0/0 0/0 .text            sumouTacklePush__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouTacklePush(void* param_1) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    
    switch (field_0xe96) {
        case 0:
            setExpressionAnm(0x11, true);
            setMotion(0x16, -1.0f, 0);
            field_0xe96 = 2;
            break;

        case 2:
            correctGraspPosAngle(true);
            int jointNo = mType == 0 ? 0x1A : 0x18;
            int jointNo2 = mType == 0 ? 0x1E : 0x1B;
            cXyz sp60;

            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp60);
            sp60.y = current.pos.y;
            fopAcM_effSmokeSet2(&field_0xde8, NULL, &sp60, &mCurAngle, 0.9f, &tevStr);

            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo2));
            mDoMtx_stack_c::multVecZero(&sp60);
            sp60.y = current.pos.y;
            fopAcM_effSmokeSet2(&field_0xdec, NULL, &sp60, &mCurAngle, 0.9f, &tevStr);

            f32 fVar1 = player->getLeftFootPos().absXZ(mArenaPos);
            f32 fVar2 = player->getRightFootPos().absXZ(mArenaPos);
            if (fVar1 > field_0xbd8->field_0x80 || fVar2 > field_0xbd8->field_0x80) {
                Z2GetAudioMgr()->changeSubBgmStatus(3);
            }

            if (fVar1 > field_0xbd8->field_0x84 || fVar2 > field_0xbd8->field_0x84) {
                player->setSumouPushFrontStop();
            }

            s16 sVar1 = cLib_targetAngleY(mArenaPos, *player->getViewerCurrentPosP()) - mCurAngle.y;
            if (abs(sVar1) > field_0xbdc->field_0x28) {
                if (sVar1 <= 0) {
                    sVar1 = -field_0xbdc->field_0x28;
                } else {
                    sVar1 = field_0xbdc->field_0x28;
                }
            }

            player->setSumouPushBackDirection(sVar1);
            
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());

            if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin);
            } else if (player->checkSumouGraspRelease()) {
                setAction(&daNpcWrestler_c::sumouTackleRelease);
            }
            break;

        case 3:
            break;
    }

    return true;
}

/* 80B39C18-80B39F88 00AA78 0370+00 1/0 0/0 0/0 .text sumouTackleRelease__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouTackleRelease(void* param_1) {
    // NONMATCHING
    switch (field_0xe96) {
        case 0:
            setExpressionAnm(5, true);
            setMotion(0x17, -1.0f, 0);
            field_0xe96 = 2;
            break;

        case 2:
            correctGraspPosAngle(true);
            if (mpMorf->getFrame() >= 23.0f && mpMorf->getFrame() <= 34.0f) {
                int jointNo = mType == 0 ? 0x1A : 0x18;
                int jointNo2 = mType == 0 ? 0x1E : 0x1B;
                cXyz sp3c;

                mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
                mDoMtx_stack_c::multVecZero(&sp3c);
                sp3c.y = current.pos.y;
                fopAcM_effSmokeSet2(&field_0xde8, NULL, &sp3c, &mCurAngle, 0.9f, &tevStr);

                mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo2));
                mDoMtx_stack_c::multVecZero(&sp3c);
                sp3c.y = current.pos.y;
                fopAcM_effSmokeSet2(&field_0xde8, NULL, &sp3c, &mCurAngle, 0.9f, &tevStr);
            }

            Z2GetAudioMgr()->changeSubBgmStatus(2);
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(daPy_getPlayerActorClass()->getBaseAnimeFrame());

            if (daPy_getPlayerActorClass()->checkSumouWait()) {
                setAction(&daNpcWrestler_c::sumouWait);
            }
            break;

        case 3:
            if (mType != 0) {
                setLookMode(2);
                mActorMngr[0].entry(daPy_getPlayerActorClass());
            }
            break;
    }

    return true;
}

/* ############################################################################################## */
/* 80B41CF8-80B41CFC 00061C 0004+00 0/1 0/0 0/0 .rodata          @9266 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9266 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80B41CF8, &lit_9266);
#pragma pop

/* 80B41CFC-80B41D00 000620 0004+00 0/3 0/0 0/0 .rodata          @9267 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9267 = 40.0f;
COMPILER_STRIP_GATE(0x80B41CFC, &lit_9267);
#pragma pop

/* 80B39F88-80B3AE24 00ADE8 0E9C+00 2/0 0/0 0/0 .text demoSumouReady__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::demoSumouReady(void* param_1) {
    // NONMATCHING
    dCamera_c* camBody = dCam_getBody();

    switch (field_0xe96) {
        case 2:
            if (dComIfGp_getEvent().checkSkipEdge()) {
                field_0xe84 = 10;
            }

            switch (field_0xe84) {
                case 0:
                    if (field_0xe9a == 0) {
                        if (!eventInfo.checkCommandDemoAccrpt()) {
                            fopAcM_orderPotentialEvent(this, 1, 0xFFFF, 0);
                            eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                            return false;
                        }

                        camBody->Stop();
                        camBody->SetTrimSize(2);
                        camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, mDemoCamFovy, 0);
                        setOnToArena(mArenaExtent * 0.5f);
                        daPy_getPlayerActorClass()->onPlayerNoDraw();
                        field_0xe9a = 0;
                        field_0xe84++;
                        break;
                    }

                    setOnToArena(mArenaExtent * 0.5f);
                    daPy_getPlayerActorClass()->onPlayerNoDraw();
                    field_0xe9a = 0;
                    field_0xe84++;
                    // fallthrough
                case 1:
                    field_0xe84++;
                    // fallthrough
                case 2:
                    field_0xe54 += field_0xe58;
                    cLib_chaseF(&field_0xe58, field_0xbd8->field_0xa4, 0.01f);
                    mDoMtx_stack_c::transS(mArenaPos);
                    mDoMtx_stack_c::YrotM(field_0xe5e);
                    mDoMtx_stack_c::transM(field_0xbd8->field_0xa0 - field_0xe54, field_0xbd8->field_0x98, field_0xbd8->field_0x90);
                    mDoMtx_stack_c::multVecZero(&mDemoCam.mDemoCamEye);
                    mDoMtx_stack_c::XrotM(field_0xbd8->field_0xa8);
                    mDemoCam.mDemoCamCenter.set(0.0f, 0.0f, mArenaExtent * 0.5f - 100.0f);
                    mDoMtx_stack_c::multVec(&mDemoCam.mDemoCamCenter, &mDemoCam.mDemoCamCenter);
                    f32 fVar1 = fabsf(field_0xbd8->field_0xa0) - 40.0f;
                    if (fVar1 < fabsf(field_0xe54)) {
                        setMotion(7, 8.0f, 0);
                        field_0xe80 = field_0xbd8->field_0xb4;
                        field_0xe84++;
                    }
                    break;

                case 3:
                    int iVar1 = field_0xe80;
                    field_0xe80--;
                    if (iVar1 < 1) {
                        mDemoCam.field_0x18.set(0.0f, 0.0f, -100.0f);
                        mDoMtx_stack_c::transS(current.pos);
                        mDoMtx_stack_c::YrotM(mCurAngle.y);
                        mDoMtx_stack_c::transS(cXyz(field_0xbd8->field_0xb8, field_0xbd8->field_0xbc, field_0xbd8->field_0xc0));
                        mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x24);
                        mDoMtx_stack_c::XrotM(field_0xbd8->field_0xe8);
                        mDoMtx_stack_c::multVec(&mDemoCam.field_0x18, &mDemoCam.field_0x18);
                        field_0xe84++;
                    }
                    break;

                case 4:
                    if ((mType == 0 && mpMorf->checkFrame(103.0f)) || (mType == 1 && mpMorf->checkFrame(94.0f))) {
                        dComIfGp_getVibration().StartShock(8, 15, cXyz(0.0f, 1.0f, 0.0f));

                        int jointNo = mType == 0 ? 0x1E : 0x1B;
                        cXyz sp3c;

                        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
                        mDoMtx_stack_c::multVecZero(&sp3c);
                        sp3c.y = current.pos.y;
                        fopAcM_effSmokeSet1(&field_0xde8, &field_0xdec, &sp3c, NULL, 0.8f, &tevStr, 1);
                    }

                    mDemoCam.field_0x18.set(0.0f, 0.0f, -100.0f);
                    mDoMtx_stack_c::transS(current.pos);
                    mDoMtx_stack_c::YrotM(mCurAngle.y);
                    mDoMtx_stack_c::transM(cXyz(field_0xbd8->field_0xb8, field_0xbd8->field_0xbc, field_0xbd8->field_0xc0));
                    mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x24);
                    mDoMtx_stack_c::XrotM(field_0xbd8->field_0xe8);
                    mDoMtx_stack_c::multVec(&mDemoCam.field_0x18, &mDemoCam.field_0x18);

                    if (cLib_addCalcPos(&mDemoCam.mDemoCamEye, mDemoCam.field_0x24, 0.15f, 5.0f, 1.0f) == 0.0f &&
                        cLib_addCalcPos(&mDemoCam.mDemoCamCenter, mDemoCam.field_0x18, 0.15f, 5.0f, 1.0f) == 0.0f && mMotionPhase == 1) {
                        mDemoCam.field_0x18.set(0.0f, 0.0f, -100.0f);
                        mDoMtx_stack_c::transS(current.pos);
                        mDoMtx_stack_c::YrotM(mCurAngle.y);
                        mDoMtx_stack_c::transM(cXyz(field_0xbd8->field_0xc4, field_0xbd8->field_0xc8, field_0xbd8->field_0xcc));
                        mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x24);
                        mDoMtx_stack_c::XrotM(field_0xbd8->field_0xea);
                        mDoMtx_stack_c::multVec(&mDemoCam.field_0x18, &mDemoCam.field_0x18);
                        field_0xe80 = 60;
                        field_0xe84++;
                    }
                    break;

                case 5:
                    mDemoCam.field_0x18.set(0.0f, 0.0f, -100.0f);
                    mDoMtx_stack_c::transS(current.pos);
                    mDoMtx_stack_c::YrotM(mCurAngle.y);
                    mDoMtx_stack_c::transM(cXyz(field_0xbd8->field_0xc4, field_0xbd8->field_0xc8, field_0xbd8->field_0xcc));
                    mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x24);
                    mDoMtx_stack_c::XrotM(field_0xbd8->field_0xea);
                    mDoMtx_stack_c::multVec(&mDemoCam.field_0x18, &mDemoCam.field_0x18);

                    if (cLib_addCalcPos(&mDemoCam.mDemoCamEye, mDemoCam.field_0x24, 0.15f, 5.0f, 1.0f) == 0.0f && 
                        cLib_addCalcPos(&mDemoCam.mDemoCamCenter, mDemoCam.field_0x24, 0.15f, 5.0f, 1.0f) == 0.0f) {
                        int iVar2 = field_0xe80;
                        field_0xe80--;
                        if (iVar2 < 1) {
                            daPy_getPlayerActorClass()->offPlayerNoDraw();
                            onWrestlerNoDraw();
                            initDemoCamera_ReadyLink();
                            field_0xe84++;
                        }
                    }
                    break;
            }
    }
}

/* ############################################################################################## */
/* 80B41D00-80B41D04 000624 0004+00 0/0 0/0 0/0 .rodata          @9268 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9268 = -100.0f;
COMPILER_STRIP_GATE(0x80B41D00, &lit_9268);
#pragma pop

/* 80B41D04-80B41D08 000628 0004+00 0/0 0/0 0/0 .rodata          @9269 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9269 = 103.0f;
COMPILER_STRIP_GATE(0x80B41D04, &lit_9269);
#pragma pop

/* 80B41D08-80B41D0C 00062C 0004+00 0/0 0/0 0/0 .rodata          @9270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9270 = 94.0f;
COMPILER_STRIP_GATE(0x80B41D08, &lit_9270);
#pragma pop

/* 80B41D0C-80B41D10 000630 0004+00 0/0 0/0 0/0 .rodata          @9271 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9271 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80B41D0C, &lit_9271);
#pragma pop

/* 80B41D10-80B41D14 000634 0004+00 0/0 0/0 0/0 .rodata          @9272 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9272 = 126.0f;
COMPILER_STRIP_GATE(0x80B41D10, &lit_9272);
#pragma pop

/* 80B41D14-80B41D18 000638 0004+00 0/4 0/0 0/0 .rodata          @9387 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9387 = 80.0f;
COMPILER_STRIP_GATE(0x80B41D14, &lit_9387);
#pragma pop

/* 80B41D18-80B41D1C 00063C 0004+00 0/5 0/0 0/0 .rodata          @9388 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9388 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B41D18, &lit_9388);
#pragma pop

/* 80B41D1C-80B41D20 000640 0004+00 1/6 0/0 0/0 .rodata          @9389 */
SECTION_RODATA static f32 const lit_9389 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B41D1C, &lit_9389);

/* 80B41D20-80B41D24 000644 0004+00 0/5 0/0 0/0 .rodata          @9390 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9390 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x80B41D20, &lit_9390);
#pragma pop

/* 80B41D24-80B41D28 000648 0004+00 0/7 0/0 0/0 .rodata          @9391 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9391 = 10.0f;
COMPILER_STRIP_GATE(0x80B41D24, &lit_9391);
#pragma pop

/* 80B3AE24-80B3B4B4 00BC84 0690+00 2/0 0/0 0/0 .text            demoSumouWin__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::demoSumouWin(void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B41D28-80B41D2C 00064C 0004+00 0/2 0/0 0/0 .rodata          @9571 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9571 = 180.0f;
COMPILER_STRIP_GATE(0x80B41D28, &lit_9571);
#pragma pop

/* 80B41D2C-80B41D30 000650 0004+00 0/2 0/0 0/0 .rodata          @9572 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9572 = 8.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B41D2C, &lit_9572);
#pragma pop

/* 80B41D30-80B41D34 000654 0004+00 0/2 0/0 0/0 .rodata          @9573 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9573 = 0xC2AE28F6;
COMPILER_STRIP_GATE(0x80B41D30, &lit_9573);
#pragma pop

/* 80B41D34-80B41D38 000658 0004+00 0/2 0/0 0/0 .rodata          @9574 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9574 = 0xC38570A4;
COMPILER_STRIP_GATE(0x80B41D34, &lit_9574);
#pragma pop

/* 80B41D38-80B41D3C 00065C 0004+00 0/2 0/0 0/0 .rodata          @9575 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9575 = 0xC2B9851F;
COMPILER_STRIP_GATE(0x80B41D38, &lit_9575);
#pragma pop

/* 80B41D3C-80B41D40 000660 0004+00 0/2 0/0 0/0 .rodata          @9576 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9576 = 0xC397147B;
COMPILER_STRIP_GATE(0x80B41D3C, &lit_9576);
#pragma pop

/* 80B41D40-80B41D44 000664 0004+00 0/2 0/0 0/0 .rodata          @9577 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9577 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80B41D40, &lit_9577);
#pragma pop

/* 80B41D44-80B41D48 000668 0004+00 0/2 0/0 0/0 .rodata          @9578 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9578 = 30.0f;
COMPILER_STRIP_GATE(0x80B41D44, &lit_9578);
#pragma pop

/* 80B41D48-80B41D4C 00066C 0004+00 0/2 0/0 0/0 .rodata          @9579 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9579 = 2.0f / 25.0f;
COMPILER_STRIP_GATE(0x80B41D48, &lit_9579);
#pragma pop

/* 80B41D4C-80B41D50 000670 0004+00 0/2 0/0 0/0 .rodata          @9580 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9580 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B41D4C, &lit_9580);
#pragma pop

/* 80B41D50-80B41D54 000674 0004+00 0/3 0/0 0/0 .rodata          @9581 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9581 = 70.0f;
COMPILER_STRIP_GATE(0x80B41D50, &lit_9581);
#pragma pop

/* 80B3B4B4-80B3BC84 00C314 07D0+00 3/0 0/0 0/0 .text            demoSumouLose__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::demoSumouLose(void* param_1) {
    // NONMATCHING
}

/* 80B3BC84-80B3C278 00CAE4 05F4+00 11/0 0/0 0/0 .text demoSumouWin2__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::demoSumouWin2(void* param_1) {
    // NONMATCHING
}

/* 80B3C278-80B3CA2C 00D0D8 07B4+00 5/0 0/0 0/0 .text demoSumouLose2__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::demoSumouLose2(void* param_1) {
    // NONMATCHING
}

/* 80B3CA2C-80B3D0C0 00D88C 0694+00 4/0 0/0 0/0 .text demoSumouUnilateralWin__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::demoSumouUnilateralWin(void* param_1) {
    // NONMATCHING
}

/* 80B3D0C0-80B3D584 00DF20 04C4+00 2/0 0/0 0/0 .text demoTalkAfterLose__15daNpcWrestler_cFPv */
void daNpcWrestler_c::demoTalkAfterLose(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B41D7C-80B41D7C 0006A0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B41DEC = "pos";
SECTION_DEAD static char const* const stringBase_80B41DF0 = "angle";
#pragma pop

/* 80B3D584-80B3DB50 00E3E4 05CC+00 3/0 0/0 0/0 .text EvCut_grDSEntry__15daNpcWrestler_cFi */
void daNpcWrestler_c::EvCut_grDSEntry(int param_0) {
    // NONMATCHING
}

/* 80B3DB50-80B3DCE8 00E9B0 0198+00 1/0 0/0 0/0 .text EvCut_grDSEntry2__15daNpcWrestler_cFi */
void daNpcWrestler_c::EvCut_grDSEntry2(int param_0) {
    // NONMATCHING
}

/* 80B3DCE8-80B3E0FC 00EB48 0414+00 2/0 0/0 0/0 .text EvCut_grDSEntry3_4__15daNpcWrestler_cFi */
void daNpcWrestler_c::EvCut_grDSEntry3_4(int param_0) {
    // NONMATCHING
}

/* 80B3E0FC-80B3E584 00EF5C 0488+00 1/0 0/0 0/0 .text EvCut_grDSEntry5__15daNpcWrestler_cFi */
void daNpcWrestler_c::EvCut_grDSEntry5(int param_0) {
    // NONMATCHING
}

/* 80B3E584-80B3EA2C 00F3E4 04A8+00 1/0 0/0 0/0 .text            EvCut_grDSLose__15daNpcWrestler_cFi */
void daNpcWrestler_c::EvCut_grDSLose(int param_0) {
    // NONMATCHING
}

/* 80B3EA2C-80B3EA4C 00F88C 0020+00 1/0 0/0 0/0 .text            daNpcWrestler_Create__FPv */
static void daNpcWrestler_Create(void* a_this) {
    // NONMATCHING
}

/* 80B3EA4C-80B3EA6C 00F8AC 0020+00 1/0 0/0 0/0 .text            daNpcWrestler_Delete__FPv */
static void daNpcWrestler_Delete(void* param_0) {
    // NONMATCHING
}

/* 80B3EA6C-80B3EA8C 00F8CC 0020+00 1/0 0/0 0/0 .text            daNpcWrestler_Execute__FPv */
static void daNpcWrestler_Execute(void* param_0) {
    // NONMATCHING
}

/* 80B3EA8C-80B3EAAC 00F8EC 0020+00 1/0 0/0 0/0 .text            daNpcWrestler_Draw__FPv */
static void daNpcWrestler_Draw(void* param_0) {
    // NONMATCHING
}

/* 80B3EAAC-80B3EAB4 00F90C 0008+00 1/0 0/0 0/0 .text            daNpcWrestler_IsDelete__FPv */
static bool daNpcWrestler_IsDelete(void* param_0) {
    return true;
}

/* 80B3EAB4-80B3EAE4 00F914 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80B3EAE4-80B3EB94 00F944 00B0+00 1/0 0/0 0/0 .text            setParam__15daNpcWrestler_cFv */
void daNpcWrestler_c::setParam() {
    // NONMATCHING
}

/* 80B3EB94-80B3EF10 00F9F4 037C+00 1/0 0/0 0/0 .text            main__15daNpcWrestler_cFv */
BOOL daNpcWrestler_c::main() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B41D54-80B41D58 000678 0004+00 0/0 0/0 0/0 .rodata          @10142 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10142 = 3.5f;
COMPILER_STRIP_GATE(0x80B41D54, &lit_10142);
#pragma pop

/* 80B41D58-80B41D5C 00067C 0004+00 0/1 0/0 0/0 .rodata          @10652 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10652 = 11.0f;
COMPILER_STRIP_GATE(0x80B41D58, &lit_10652);
#pragma pop

/* 80B41D5C-80B41D60 000680 0004+00 0/1 0/0 0/0 .rodata          @10653 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10653 = 2.0f;
COMPILER_STRIP_GATE(0x80B41D5C, &lit_10653);
#pragma pop

/* 80B41D60-80B41D64 000684 0004+00 0/1 0/0 0/0 .rodata          @10654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10654 = 7.0f;
COMPILER_STRIP_GATE(0x80B41D60, &lit_10654);
#pragma pop

/* 80B41D64-80B41D68 000688 0004+00 0/1 0/0 0/0 .rodata          @10655 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10655 = 37.0f;
COMPILER_STRIP_GATE(0x80B41D64, &lit_10655);
#pragma pop

/* 80B41D68-80B41D6C 00068C 0004+00 0/1 0/0 0/0 .rodata          @10656 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10656 = 42.0f;
COMPILER_STRIP_GATE(0x80B41D68, &lit_10656);
#pragma pop

/* 80B41D6C-80B41D70 000690 0004+00 0/1 0/0 0/0 .rodata          @10657 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10657 = 12.0f;
COMPILER_STRIP_GATE(0x80B41D6C, &lit_10657);
#pragma pop

/* 80B3EF10-80B3FCE8 00FD70 0DD8+00 1/1 0/0 0/0 .text setWrestlerVoice__15daNpcWrestler_cFv */
void daNpcWrestler_c::setWrestlerVoice() {
    // NONMATCHING
}

/* 80B3FCE8-80B404FC 010B48 0814+00 1/2 0/0 0/0 .text            playMotion__15daNpcWrestler_cFv */
void daNpcWrestler_c::playMotion() {
    // NONMATCHING
}

/* 80B404FC-80B405E8 01135C 00EC+00 1/0 0/0 0/0 .text            ctrlBtk__15daNpcWrestler_cFv */
BOOL daNpcWrestler_c::ctrlBtk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B41D70-80B41D74 000694 0004+00 0/1 0/0 0/0 .rodata          @10804 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10804 = -10.0f;
COMPILER_STRIP_GATE(0x80B41D70, &lit_10804);
#pragma pop

/* 80B41D74-80B41D78 000698 0004+00 0/1 0/0 0/0 .rodata          @10805 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10805 = 125.0f;
COMPILER_STRIP_GATE(0x80B41D74, &lit_10805);
#pragma pop

/* 80B42E18-80B42E24 000008 000C+00 1/1 0/0 0/0 .bss             @3974 */
static u8 lit_3974[12];

/* 80B42E24-80B42E28 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpcWrestler_Param_c l_HIO;

/* 80B42E28-80B42E34 000018 000C+00 1/1 0/0 0/0 .bss             @4628 */
static u8 lit_4628[12];

/* 80B42E34-80B42E38 000024 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80B42E34[4];

/* 80B42E38-80B42E44 000028 000C+00 1/1 0/0 0/0 .bss
 * eyeOffset$localstatic3$setAttnPos__15daNpcWrestler_cFv       */
static u8 data_80B42E38[12];

/* 80B405E8-80B40B3C 011448 0554+00 1/1 0/0 0/0 .text            setAttnPos__15daNpcWrestler_cFv */
void daNpcWrestler_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B41D78-80B41D7C 00069C 0004+00 0/1 0/0 0/0 .rodata          @10841 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10841 = -80.0f;
COMPILER_STRIP_GATE(0x80B41D78, &lit_10841);
#pragma pop

/* 80B40B3C-80B40D1C 01199C 01E0+00 1/1 0/0 0/0 .text            lookat__15daNpcWrestler_cFv */
void daNpcWrestler_c::lookat() {
    // NONMATCHING
}

/* 80B40D1C-80B40D24 011B7C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__15daNpcWrestler_cFv */
BOOL daNpcWrestler_c::drawDbgInfo() {
    return false;
}

/* 80B40D24-80B40D28 011B84 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__15daNpcWrestler_cFv
 */
void daNpcWrestler_c::drawOtherMdls() {
    /* empty function */
}

/* 80B40D28-80B40D34 011B88 000C+00 2/2 0/0 0/0 .text sinShort__Q25JMath18TSinCosTable<13,f>CFs */
extern "C" void func_80B40D28(void* _this, s16 param_0) /* const */ {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B42E00-80B42E0C 001008 000C+00 2/2 0/0 0/0 .data            __vt__21daNpcWrestler_Param_c */
SECTION_DATA extern void* __vt__21daNpcWrestler_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__21daNpcWrestler_Param_cFv,
};

/* 80B40D34-80B40E38 011B94 0104+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_wrestler_cpp */
void __sinit_d_a_npc_wrestler_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80B40D34, __sinit_d_a_npc_wrestler_cpp);
#pragma pop

/* 80B40E38-80B40E80 011C98 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B40E80-80B40EBC 011CE0 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B40EBC-80B40F8C 011D1C 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 80B40F8C-80B40FC8 011DEC 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80B40FC8-80B40FCC 011E28 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80B40FCC-80B41008 011E2C 003C+00 6/6 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80B41008-80B4100C 011E68 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80B4100C-80B41258 011E6C 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80B41258-80B41448 0120B8 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80B41448-80B414B8 0122A8 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80B414B8-80B41514 012318 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B41514-80B41584 012374 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80B41584-80B415CC 0123E4 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80B415CC-80B415D0 01242C 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80B415D0-80B41618 012430 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B41618-80B41634 012478 001C+00 1/1 0/0 0/0 .text            getArenaPos__12daTagArena_cFv */
// void daTagArena_c::getArenaPos() {
extern "C" void getArenaPos__12daTagArena_cFv() {
    // NONMATCHING
}

/* 80B41634-80B41650 012494 001C+00 2/2 0/0 0/0 .text            getRightFootPos__9daPy_py_cCFv */
// void daPy_py_c::getRightFootPos() const {
extern "C" void getRightFootPos__9daPy_py_cCFv() {
    // NONMATCHING
}

/* 80B41650-80B4166C 0124B0 001C+00 2/2 0/0 0/0 .text            getLeftFootPos__9daPy_py_cCFv */
// void daPy_py_c::getLeftFootPos() const {
extern "C" void getLeftFootPos__9daPy_py_cCFv() {
    // NONMATCHING
}

/* 80B4166C-80B41670 0124CC 0004+00 1/0 0/0 0/0 .text adjustShapeAngle__15daNpcWrestler_cFv */
void daNpcWrestler_c::adjustShapeAngle() {
    /* empty function */
}

/* 80B416B8-80B416C0 012518 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80B416B8() {
    // NONMATCHING
}

/* 80B416C0-80B416C8 012520 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80B416C0() {
    // NONMATCHING
}

/* 80B41D7C-80B41D7C 0006A0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
