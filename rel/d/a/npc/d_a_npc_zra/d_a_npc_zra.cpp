/**
 * d_a_npc_zra.cpp
 * NPC - Zora
 */

#include "rel/d/a/npc/d_a_npc_zra/d_a_npc_zra.h"
#include "SSystem/SComponent/c_math.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "f_op/f_op_actor_mng.h"
#include "f_op/f_op_kankyo_mng.h"
#include "d/com/d_com_inf_game.h"
#include "d/meter/d_meter2_info.h"
#include "d/d_procname.h"
#include "rel/d/a/d_a_canoe/d_a_canoe.h"
#include "rel/d/a/npc/d_a_npc_hoz/d_a_npc_hoz.h"
#include "rel/d/a/obj/d_a_obj_zraMark/d_a_obj_zraMark.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void getDstPosDst2__16daNpc_zrA_Path_cF4cXyzR4cXyz();
extern "C" void __dt__4cXyzFv();
extern "C" void setNextIdxDst__16daNpc_zrA_Path_cF4cXyz();
extern "C" void chkPassedDstXZ__16daNpc_zrA_Path_cF4cXyz();
extern "C" void getDstPosDstXZ__16daNpc_zrA_Path_cF4cXyzR4cXyz();
extern "C" void chkPassedChase__16daNpc_zrA_Path_cFUs4cXyz();
extern "C" void getDstPosChase__16daNpc_zrA_Path_cFUs4cXyzR4cXyz();
extern "C" void chkPassDst__16daNpc_zrA_Path_cFUs4cXyz();
extern "C" void __ct__11daNpc_zrA_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__11daNpc_zrA_cFv();
extern "C" void create__11daNpc_zrA_cFv();
extern "C" void CreateHeap__11daNpc_zrA_cFv();
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
extern "C" void Delete__11daNpc_zrA_cFv();
extern "C" void Execute__11daNpc_zrA_cFv();
extern "C" void Draw__11daNpc_zrA_cFv();
extern "C" void ctrlJoint__11daNpc_zrA_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__11daNpc_zrA_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_zrA_cFP8J3DJointi();
extern "C" void setParam__11daNpc_zrA_cFv();
extern "C" void main__11daNpc_zrA_cFv();
extern "C" void ctrlBtk__11daNpc_zrA_cFv();
extern "C" void setAttnPos__11daNpc_zrA_cFv();
extern "C" void setMtx__11daNpc_zrA_cFv();
extern "C" void setExpressionAnm__11daNpc_zrA_cFib();
extern "C" void setExpressionBtp__11daNpc_zrA_cFi();
extern "C" void setExpression__11daNpc_zrA_cFif();
extern "C" void setMotionAnm__11daNpc_zrA_cFif();
extern "C" void setMotionWaterAnm__11daNpc_zrA_cFi();
extern "C" void setMotion__11daNpc_zrA_cFifi();
extern "C" bool drawDbgInfo__11daNpc_zrA_cFv();
extern "C" void drawOtherMdls__11daNpc_zrA_cFv();
extern "C" void getTypeFromArgument__11daNpc_zrA_cFv();
extern "C" void getSoldierTypeFromParam__11daNpc_zrA_cFv();
extern "C" void getGameModeFromParam__11daNpc_zrA_cFv();
extern "C" void getActionTypeFromParam__11daNpc_zrA_cFv();
extern "C" void getMultiModeFromParam__11daNpc_zrA_cFv();
extern "C" void getMultiNoFromParam__11daNpc_zrA_cFv();
extern "C" void isDelete__11daNpc_zrA_cFv();
extern "C" void reset__11daNpc_zrA_cFv();
extern "C" void playExpression__11daNpc_zrA_cFv();
extern "C" void playMotion__11daNpc_zrA_cFv();
extern "C" void chkAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i();
extern "C" void selectAction__11daNpc_zrA_cFv();
extern "C" void doEvent__11daNpc_zrA_cFv();
extern "C" void setSkipZev__11daNpc_zrA_cFii();
extern "C" void setLookMode__11daNpc_zrA_cFi();
extern "C" void lookat__11daNpc_zrA_cFv();
extern "C" void chkFindPlayer__11daNpc_zrA_cFv();
extern "C" void setExpressionTalkAfter__11daNpc_zrA_cFv();
extern "C" void setPrtcl__11daNpc_zrA_cFv();
extern "C" void test__11daNpc_zrA_cFPv();
extern "C" static void daNpc_zrA_Create__FPv();
extern "C" static void daNpc_zrA_Delete__FPv();
extern "C" static void daNpc_zrA_Execute__FPv();
extern "C" static void daNpc_zrA_Draw__FPv();
extern "C" static bool daNpc_zrA_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__18daNpcF_ActorMngr_cFv();
extern "C" void __ct__18daNpcF_ActorMngr_cFv();
extern "C" void __dt__15daNpcF_Lookat_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__16daNpc_zrA_Path_cFv();
extern "C" void __dt__13daNpcF_Path_cFv();
extern "C" void __dt__16daNpcF_SPCurve_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void __dt__8daNpcF_cFv();
extern "C" void __ct__8daNpcF_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void setCollisions__8daNpcF_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80B7F6AC(void* _this, int*);
extern "C" void func_80B7F6C8(void* _this, u8*);
extern "C" void func_80B7F6E4(void* _this, int, int);
extern "C" void __sinit_d_a_npc_zra_cpp();
extern "C" void wait__11daNpc_zrA_cFPv();
extern "C" void walkCalc__11daNpc_zrA_cFv();
extern "C" void waitCalc__11daNpc_zrA_cFv();
extern "C" void waitSpa__11daNpc_zrA_cFPv();
extern "C" void waitLake__11daNpc_zrA_cFPv();
extern "C" void talk__11daNpc_zrA_cFPv();
extern "C" static void s_subMulti__FPvPv();
extern "C" void ECut_talkMulti__11daNpc_zrA_cFi();
extern "C" void swim__11daNpc_zrA_cFPv();
extern "C" void railSwim__11daNpc_zrA_cFv();
extern "C" void waitSwim__11daNpc_zrA_cFv();
extern "C" void turnSwimInit__11daNpc_zrA_cFv();
extern "C" void turnSwim__11daNpc_zrA_cFv();
extern "C" void turnSwimCheck__11daNpc_zrA_cFv();
extern "C" void evasionCalc__11daNpc_zrA_cFR4cXyzR5csXyz();
extern "C" void __dt__8cM3dGLinFv();
extern "C" void calcBank__11daNpc_zrA_cFssRsRs();
extern "C" void calcWaistAngle__11daNpc_zrA_cFv();
extern "C" void calcWaistAngleInit__11daNpc_zrA_cFv();
extern "C" void calcWaistAngleStop__11daNpc_zrA_cFv();
extern "C" void calcWaistAngleCheck__11daNpc_zrA_cFv();
extern "C" void calcModulation__11daNpc_zrA_cFv();
extern "C" void resetModulation__11daNpc_zrA_cFv();
extern "C" void calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss();
extern "C" void calcSwimPos__11daNpc_zrA_cFR4cXyz();
extern "C" void calcWaitSwim__11daNpc_zrA_cFi();
extern "C" void ECut_talkSwim__11daNpc_zrA_cFi();
extern "C" void waitWaterfall__11daNpc_zrA_cFPv();
extern "C" void swimWaterfall__11daNpc_zrA_cFPv();
extern "C" void diveWaterfall__11daNpc_zrA_cFPv();
extern "C" void talkSwim__11daNpc_zrA_cFPv();
extern "C" void ECut_carryWaterfall__11daNpc_zrA_cFi();
extern "C" void ECut_carryWaterfallSkip__11daNpc_zrA_cFi();
extern "C" void diveCalc__11daNpc_zrA_cFssi();
extern "C" static void s_subHoz__FPvPv();
extern "C" static void s_sub__FPvPv();
extern "C" void waitRiverDescend__11daNpc_zrA_cFPv();
extern "C" void swimRiverDescend__11daNpc_zrA_cFPv();
extern "C" void swimRiverDescend2__11daNpc_zrA_cFPv();
extern "C" void diveRiverDescend__11daNpc_zrA_cFPv();
extern "C" void swimGoalRiverDescend__11daNpc_zrA_cFPv();
extern "C" void returnRiverDescend__11daNpc_zrA_cFPv();
extern "C" void moveRiverPosCalc__11daNpc_zrA_cFR4cXyz();
extern "C" void createRuppi__11daNpc_zrA_cFv();
extern "C" void ECut_beforeBlastzrR__11daNpc_zrA_cFi();
extern "C" void ECut_afterBlastzrR__11daNpc_zrA_cFi();
extern "C" void ECut_thanksBlast__11daNpc_zrA_cFi();
extern "C" void ECut_resultAnnounce__11daNpc_zrA_cFi();
extern "C" void calcCanoeMove__11daNpc_zrA_cFi();
extern "C" static void s_subMark__FPvPv();
extern "C" void tobiSearch__11daNpc_zrA_cFPv();
extern "C" void tobiWait__11daNpc_zrA_cFPv();
extern "C" void tobikomi1__11daNpc_zrA_cFPv();
extern "C" void tobikomi2__11daNpc_zrA_cFPv();
extern "C" void tobikomi3__11daNpc_zrA_cFPv();
extern "C" void tobiJump__11daNpc_zrA_cFPv();
extern "C" void tobiEnd__11daNpc_zrA_cFPv();
extern "C" static void s_subSP__FPvPv();
extern "C" void waitSearch__11daNpc_zrA_cFPv();
extern "C" void ECut_searchPrince1__11daNpc_zrA_cFi();
extern "C" void ECut_searchPrince2__11daNpc_zrA_cFi();
extern "C" void adjustShapeAngle__11daNpc_zrA_cFv();
extern "C" void __dt__17daNpc_zrA_Param_cFv();
extern "C" static void func_80B8C434();
extern "C" static void func_80B8C43C();
extern "C" u8 const m__17daNpc_zrA_Param_c[176];
extern "C" extern char const* const d_a_npc_zra__stringBase0;
extern "C" void* mEvtCutNameList__11daNpc_zrA_c[11];
extern "C" u8 mEvtCutList__11daNpc_zrA_c[132];
static cPhs__Step daNpc_zrA_Create(void*);
static int daNpc_zrA_Delete(void*);
static int daNpc_zrA_Execute(void*);
static int daNpc_zrA_IsDelete(void*);
static int daNpc_zrA_Draw(void*);

//
// External References:
//

extern "C" void mDoAud_setFadeInStart__FUc();
extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void push__14mDoMtx_stack_cFv();
extern "C" void pop__14mDoMtx_stack_cFv();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotS__14mDoMtx_stack_cFRC5csXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_bpkAnmFP16J3DMaterialTableP11J3DAnmColoriifss();
extern "C" void entry__13mDoExt_bpkAnmFP16J3DMaterialTablef();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void setMorf__13mDoExt_morf_cFf();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fopAcM_fastCreateItem__FPC4cXyziiPC5csXyzPC4cXyzPfPfiiPFPv_i();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void fopAcM_getWaterY__FPC4cXyzPf();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void dComIfG_TimerDeleteRequest__Fi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isSwitch__12dSv_danBit_cCFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void dEv_defaultSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void setSkipZev__14dEvt_control_cFPvPc();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff();
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
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void initialize__18daNpcF_ActorMngr_cFv();
extern "C" void entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcF_ActorMngr_cFv();
extern "C" void getActorP__18daNpcF_ActorMngr_cFv();
extern "C" void initialize__15daNpcF_MatAnm_cFv();
extern "C" void initialize__16daNpcF_SPCurve_cFP5dPathi();
extern "C" void initialize__13daNpcF_Path_cFv();
extern "C" void setPathInfo__13daNpcF_Path_cFUcScUc();
extern "C" void chkPassedDst__13daNpcF_Path_cF4cXyz();
extern "C" void reverse__13daNpcF_Path_cFv();
extern "C" void setNextIdx__13daNpcF_Path_cFv();
extern "C" void getNextIdx__13daNpcF_Path_cFv();
extern "C" void getBeforeIdx__13daNpcF_Path_cFv();
extern "C" void getBeforePos__13daNpcF_Path_cFR4cXyz();
extern "C" void getNextPos__13daNpcF_Path_cFR4cXyz();
extern "C" void getDstPos__13daNpcF_Path_cF4cXyzR4cXyz();
extern "C" void initialize__15daNpcF_Lookat_cFv();
extern "C" void setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz();
extern "C" void calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii();
extern "C" void execute__8daNpcF_cFv();
extern "C" void tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void srchAttnActor1__8daNpcF_cFPvPv();
extern "C" void setMtx2__8daNpcF_cFv();
extern "C" void initialize__8daNpcF_cFv();
extern "C" void getTrnsfrmKeyAnmP__8daNpcF_cFPci();
extern "C" void getTexPtrnAnmP__8daNpcF_cFPci();
extern "C" void getTexSRTKeyAnmP__8daNpcF_cFPci();
extern "C" void getTevRegKeyAnmP__8daNpcF_cFPci();
extern "C" void setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii();
extern "C" void setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib();
extern "C" void setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi();
extern "C" void setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi();
extern "C" void setBrkAnm__8daNpcF_cFP15J3DAnmTevRegKeyP12J3DModelDatafi();
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
extern "C" void step__8daNpcF_cFsiii();
extern "C" void setAngle__8daNpcF_cFs();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii();
extern "C" void chkFindPlayer2__8daNpcF_cFis();
extern "C" void daNpcF_pntVsLineSegmentLengthSquare2D__FffffffPfPfPf();
extern "C" void daNpcF_chkPassed__F4cXyzP4dPntUsUsii();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void daNpcF_onEvtBit__FUl();
extern "C" void daNpcF_offTmpBit__FUl();
extern "C" void dKy_daynight_check__Fv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void resetMiniGameItem__13dMeter2Info_cFb();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void normalize__4cXyzFv();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcPos2__FP4cXyzRC4cXyzff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseS__FPsss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void removeMatColorAnimator__16J3DMaterialTableFP11J3DAnmColor();
extern "C" void removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
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
extern "C" void getType__11daNpc_Hoz_cFv();
extern "C" void __register_global_object();
extern "C" void entryPointer__14daObjZraMark_cFP10fopAc_ac_c();

//
// Declarations:
//

/* ############################################################################################## */
/* 80B8C458-80B8C508 000000 00B0+00 56/56 0/0 0/0 .rodata          m__17daNpc_zrA_Param_c */
daNpc_zrA_Param_c::param const daNpc_zrA_Param_c::m = {
    230.0f,   // mAttnOffsetY
    -3.0f,    // mGravity
    1.0f,     // mScale
    800.0f,   // mShadowDepth
    255.0f,   // mCcWeight
    230.0f,   // mCylH
    0.0f,     // mWallH
    40.0f,    // mWallR
    30.0f,    // mBodyUpAngle
    -20.0f,   // mBodyDownAngle
    30.0f,    // mBodyLeftAngle
    -30.0f,   // mBodyRightAngle
    15.0f,    // mHeadUpAngle
    0.0f,     // mHeadDownAngle
    0.0f,     // mHeadLeftAngle
    0.0f,     // mHeadRightAngle
    0.6f,     // mNeckAngleScl
    12.0f,    // mMorfFrames
    3,        // mSpeakDistIdx
    6,        // mSpeakAngleIdx
    5,        // mTalkDistIdx
    6,        // mTalkAngleIdx
    80.0f,    // mAttnFovY
    500.0f,   // mAttnRadius
    300.0f,   // mAttnUpperY
    -300.0f,  // mAttnLowerY
    60,
    8,        // mDamageTimer
    0,        // mTestExpression
    0,        // mTestMotion
    0,        // mTestLookMode
    false,    // mTest
    20.0f,    // mSwimSpeed
    0.5f,     // mMinSwimSpeedScale
    0x580,    // mSwimAngleSpeed
    15.0f,    // mSwimAnmRate
    0.0f,
    0.0f,
    1.5f,     // mMaxScaleFactor
    150.0f,   // mMinDepth
    100.0f,
    20.0f,
    4.0f,     // mWalkSpeed
    0x800,    // mWalkAngleSpeed
    2,        // mWalkAngleScale
    6.0f,     // mWalkAnmRate
    140.0f,
    350.0f,
    5000.0f,
    3000.0f,
};

/* 80B8C508-80B8C510 0000B0 0004+04 9/48 0/0 0/0 .rodata          @3939 */
SECTION_RODATA static u8 const lit_3939[4 + 4 /* padding */] = {
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
COMPILER_STRIP_GATE(0x80B8C508, &lit_3939);

/* 80B8C510-80B8C518 0000B8 0008+00 0/17 0/0 0/0 .rodata          @3940 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3940[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C510, &lit_3940);
#pragma pop

/* 80B8C518-80B8C520 0000C0 0008+00 0/17 0/0 0/0 .rodata          @3941 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3941[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C518, &lit_3941);
#pragma pop

/* 80B8C520-80B8C528 0000C8 0008+00 0/17 0/0 0/0 .rodata          @3942 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3942[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C520, &lit_3942);
#pragma pop

/* 80B7850C-80B78730 0000EC 0224+00 8/8 0/0 0/0 .text
 * getDstPosDst2__16daNpc_zrA_Path_cF4cXyzR4cXyz                */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_Path_c::getDstPosDst2(cXyz i_pos, cXyz& o_pnt) {
    BOOL ret = false;
    o_pnt = getPntPos(getIdx());
    if (chkPassedDst(i_pos)) {
        ret = true;
        if (!setNextIdx()) {
            o_pnt = getPntPos(getIdx());
            mPosDst = (i_pos - o_pnt).abs();
            mPosition = i_pos;
        }
    }
    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_Path_c::getDstPosDst2(cXyz param_0, cXyz& param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/getDstPosDst2__16daNpc_zrA_Path_cF4cXyzR4cXyz.s"
}
#pragma pop
#endif

/* 80B78730-80B7876C 000310 003C+00 6/6 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__4cXyzFv.s"
}
#pragma pop

/* 80B7876C-80B788F8 00034C 018C+00 4/4 0/0 0/0 .text setNextIdxDst__16daNpc_zrA_Path_cF4cXyz */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrA_Path_c::setNextIdxDst(cXyz param_0) {
    if (!setNextIdx()) {
        mPosDst = (param_0 - getPntPos(getIdx())).abs();
        mPosition = param_0;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_Path_c::setNextIdxDst(cXyz param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/setNextIdxDst__16daNpc_zrA_Path_cF4cXyz.s"
}
#pragma pop
#endif

/* 80B788F8-80B78A60 0004D8 0168+00 1/1 0/0 0/0 .text chkPassedDstXZ__16daNpc_zrA_Path_cF4cXyz */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_Path_c::chkPassedDstXZ(cXyz i_pos) {
    return mPosDst + field_0x10 <= (mPosition - i_pos).absXZ();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_Path_c::chkPassedDstXZ(cXyz param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/chkPassedDstXZ__16daNpc_zrA_Path_cF4cXyz.s"
}
#pragma pop
#endif

/* 80B78A60-80B78CA0 000640 0240+00 1/1 0/0 0/0 .text
 * getDstPosDstXZ__16daNpc_zrA_Path_cF4cXyzR4cXyz               */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_Path_c::getDstPosDstXZ(cXyz i_pos, cXyz& o_pnt) {
    BOOL ret = false;
    o_pnt = getPntPos(getIdx());
    if (chkPassedDstXZ(i_pos)) {
        if (setNextIdx()) {
            ret = true;
        } else {
            o_pnt = getPntPos(getIdx());
            mPosDst = (i_pos - o_pnt).absXZ();
            mPosition = i_pos;
        }
    }
    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_Path_c::getDstPosDstXZ(cXyz param_0, cXyz& param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/getDstPosDstXZ__16daNpc_zrA_Path_cF4cXyzR4cXyz.s"
}
#pragma pop
#endif

/* 80B78CA0-80B78CFC 000880 005C+00 1/1 0/0 0/0 .text chkPassedChase__16daNpc_zrA_Path_cFUs4cXyz
 */
#ifdef NONMATCHING
// matches with weak functions
BOOL daNpc_zrA_Path_c::chkPassedChase(u16 i_idx, cXyz i_pos) {
    return daNpcF_chkPassed(i_pos, (dPnt*)mpRoomPath->m_points, i_idx,
                            mpRoomPath->m_num, mIsClosed, mIsReversed);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_Path_c::chkPassedChase(u16 param_0, cXyz param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/chkPassedChase__16daNpc_zrA_Path_cFUs4cXyz.s"
}
#pragma pop
#endif

/* 80B78CFC-80B78E08 0008DC 010C+00 1/1 0/0 0/0 .text
 * getDstPosChase__16daNpc_zrA_Path_cFUs4cXyzR4cXyz             */
#ifdef NONMATCHING
// matches with weak functions
int daNpc_zrA_Path_c::getDstPosChase(u16 i_idx, cXyz i_pos, cXyz& o_pnt) {
    BOOL done = false;
    while (!done) {
        o_pnt = getPntPos(i_idx);
        if (!chkPassedChase(i_idx, i_pos)) {
            break;
        }

        if (mIsReversed) {
            if (i_idx == 0) {
                done = true;
            } else {
                i_idx--;
            }
        } else {
            if (i_idx == getEndIdx()) {
                done = true;
            } else {
                i_idx++;
            }
        }
    }
    return i_idx;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_Path_c::getDstPosChase(u16 param_0, cXyz param_1, cXyz& param_2) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/getDstPosChase__16daNpc_zrA_Path_cFUs4cXyzR4cXyz.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8C528-80B8C52C 0000D0 0004+00 10/33 0/0 0/0 .rodata          @4437 */
SECTION_RODATA static f32 const lit_4437 = -1.0f;
COMPILER_STRIP_GATE(0x80B8C528, &lit_4437);

/* 80B8C52C-80B8C530 0000D4 0004+00 0/8 0/0 0/0 .rodata          @4438 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4438 = 2.0f;
COMPILER_STRIP_GATE(0x80B8C52C, &lit_4438);
#pragma pop

/* 80B8C530-80B8C534 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4439 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4439 = -2.0f;
COMPILER_STRIP_GATE(0x80B8C530, &lit_4439);
#pragma pop

/* 80B8C534-80B8C538 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4440 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4440 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80B8C534, &lit_4440);
#pragma pop

/* 80B78E08-80B7956C 0009E8 0764+00 1/1 0/0 0/0 .text chkPassDst__16daNpc_zrA_Path_cFUs4cXyz */
#ifdef NONMATCHING
// matches with literals
f32 daNpc_zrA_Path_c::chkPassDst(u16 i_idx, cXyz i_pos) {
    u16 prev_idx, next_idx;
    dStage_dPnt_c* points = mpRoomPath->m_points;
    u16 idx = mIdx;
    u8 reversed = mIsReversed;
    mIdx = i_idx;
    mIsReversed = false;
    next_idx = getNextIdx();
    mIdx = i_idx;
    prev_idx = getBeforeIdx();
    mIdx = idx;
    mIsReversed = reversed;

    cXyz prev_pos, cur_pos, next_pos, pos;
    prev_pos.set(points[prev_idx].m_position.x,
                 points[prev_idx].m_position.y,
                 points[prev_idx].m_position.z);
    cur_pos.set(points[i_idx].m_position.x,
                points[i_idx].m_position.y,
                points[i_idx].m_position.z);
    next_pos.set(points[next_idx].m_position.x,
                 points[next_idx].m_position.y,
                 points[next_idx].m_position.z);

    f32 dist;
    s16 angle;
    if (prev_idx != i_idx || next_idx != i_idx) {
        if (prev_idx < i_idx && i_idx < next_idx) {
            dist = (next_pos - prev_pos).absXZ();
            angle = cM_atan2s(next_pos.x - prev_pos.x, next_pos.z - prev_pos.z);
            pos = prev_pos;
            prev_pos.x = pos.x + dist * -1.0f * cM_ssin(angle);
            prev_pos.z = pos.z + dist * -1.0f * cM_scos(angle);
            next_pos.x = pos.x + dist * 2.0f * cM_ssin(angle);
            next_pos.z = pos.z + dist * 2.0f * cM_scos(angle);
        } else if (prev_idx < i_idx) {
            dist = (cur_pos - prev_pos).absXZ();
            angle = cM_atan2s(cur_pos.x - prev_pos.x, cur_pos.z - prev_pos.z);
            pos = cur_pos;
            prev_pos.x = pos.x + dist * -2.0f * cM_ssin(angle);
            prev_pos.z = pos.z + dist * -2.0f * cM_scos(angle);
            next_pos.x = pos.x + dist * 2.0f * cM_ssin(angle);
            next_pos.z = pos.z + dist * 2.0f * cM_scos(angle);
        } else if (i_idx < next_idx) {
            dist = (next_pos - cur_pos).absXZ();
            angle = cM_atan2s(next_pos.x - cur_pos.x, next_pos.z - cur_pos.z);
            pos = cur_pos;
            prev_pos.x = pos.x + dist * -2.0f * cM_ssin(angle);
            prev_pos.z = pos.z + dist * -2.0f * cM_scos(angle);
            next_pos.x = pos.x + dist * 2.0f * cM_ssin(angle);
            next_pos.z = pos.z + dist * 2.0f * cM_scos(angle);
        }

        f32 proj_x, proj_z, proj2_x, proj2_z;
        daNpcF_pntVsLineSegmentLengthSquare2D(i_pos.x, i_pos.z, prev_pos.x, prev_pos.z,
                                              next_pos.x, next_pos.z, &proj_x, &proj_z, &dist);
        if (cM3d_IsZero(dist)) {
            return -1e9f;
        } else {
            daNpcF_pntVsLineSegmentLengthSquare2D(cur_pos.x, cur_pos.z, prev_pos.x, prev_pos.z,
                                                next_pos.x, next_pos.z, &proj2_x, &proj2_z, &dist);
            s16 angle2;
            if (mIsReversed) {
                angle2 = cM_atan2s(prev_pos.x - next_pos.x, prev_pos.z - next_pos.z);
            } else {
                angle2 = cM_atan2s(next_pos.x - prev_pos.x, next_pos.z - prev_pos.z);
            }
            s16 angle_diff = angle2 - cM_atan2s(proj2_x - proj_x, proj2_z - proj_z);
            dist = JMAFastSqrt((proj2_x - proj_x) * (proj2_x - proj_x)
                                + (proj2_z - proj_z) * (proj2_z - proj_z));
            if ((u16)abs(angle_diff) > 0x4000) {
                return dist;
            } else {
                return -dist;
            }
        }
    } else {
        return -1e9f;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm f32 daNpc_zrA_Path_c::chkPassDst(u16 param_0, cXyz param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/chkPassDst__16daNpc_zrA_Path_cFUs4cXyz.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8CD30-80B8CD30 0008D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B8CD30 = "TALK_SWIM";
SECTION_DEAD static char const* const stringBase_80B8CD3A = "BEFORE_BLAST_ZRR";
SECTION_DEAD static char const* const stringBase_80B8CD4B = "AFTER_BLAST_ZRR";
SECTION_DEAD static char const* const stringBase_80B8CD5B = "THANKS_BLAST";
SECTION_DEAD static char const* const stringBase_80B8CD68 = "RESULT_ANNOUNCE";
SECTION_DEAD static char const* const stringBase_80B8CD78 = "CARRY_WATERFALL";
SECTION_DEAD static char const* const stringBase_80B8CD88 = "CARRY_WATERFALL_NIGHT";
SECTION_DEAD static char const* const stringBase_80B8CD9E = "CARRY_WATERFALL_SKIP";
SECTION_DEAD static char const* const stringBase_80B8CDB3 = "CARRY_WATERFALL_NIGHT_SKIP";
SECTION_DEAD static char const* const stringBase_80B8CDCE = "SEARCH_PRINCE";
SECTION_DEAD static char const* const stringBase_80B8CDDC = "TALK_MULTI";
SECTION_DEAD static char const* const stringBase_80B8CDE7 = "TALK_MULTI2";
SECTION_DEAD static char const* const stringBase_80B8CDF3 = "zrA";
SECTION_DEAD static char const* const stringBase_80B8CDF7 = "zrA_nml";
SECTION_DEAD static char const* const stringBase_80B8CDFF = "zrA_nml2";
SECTION_DEAD static char const* const stringBase_80B8CE08 = "zrA_sp";
SECTION_DEAD static char const* const stringBase_80B8CE0F = "zrA_MDL";
SECTION_DEAD static char const* const stringBase_80B8CE17 = "zrA_TW";
SECTION_DEAD static char const* const stringBase_80B8CE1E = "zrA_sad";
SECTION_DEAD static char const* const stringBase_80B8CE26 = "zrA_obj";
SECTION_DEAD static char const* const stringBase_80B8CE2E = "zrA_tobi";
SECTION_DEAD static char const* const stringBase_80B8CE37 = "zrA2";
SECTION_DEAD static char const* const stringBase_80B8CE3C = "zrA_objTW";
SECTION_DEAD static char const* const stringBase_80B8CE46 = "zrA_talk";
SECTION_DEAD static char const* const stringBase_80B8CE4F = "zrR";
SECTION_DEAD static char const* const stringBase_80B8CE53 = "zrWF";
SECTION_DEAD static char const* const stringBase_80B8CE58 = "";
SECTION_DEAD static char const* const stringBase_80B8CE59 = "SEARCH_PRINCE1";
SECTION_DEAD static char const* const stringBase_80B8CE68 = "SEARCH_PRINCE2";
#pragma pop

/* 80B8CE90-80B8CE9C 000000 000C+00 10/10 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B8CE9C-80B8CEB4 00000C 0004+14 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
SECTION_DATA static u32 lit_1787[1 + 5 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
    0x00000000,
};
#pragma pop

/* 80B8CEB4-80B8CEE4 000024 0030+00 0/1 0/0 0/0 .data            l_bmdGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static daNpc_GetParam1 l_bmdGetParamList[6] = {
    {3, 4},   // zra
    {13, 5},  // zra_tw
    {3, 7},   // zra_met
    {4, 7},   // zra_sp
    {3, 10},  // zra_met_tw
    {4, 10},  // zra_sp_tw
};
#pragma pop

/* 80B8CEE4-80B8D0DC 000054 01F8+00 1/2 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static daNpc_GetParam1 l_bckGetParamList[63] = {
    {-1, 0},
    {8, 0},   // zra_f_talk_a
    {9, 0},   // zra_f_talk_a_sp
    {11, 0},  // zra_f_wait_swim
    {10, 0},  // zra_f_talk_nomal
    {13, 0},  // zra_fh_talk_nomal
    {5, 5},   // zra_fh_sadsit_a
    {4, 6},   // zra_fh_sadsit_b
    {5, 6},   // zra_fh_sadsit_c
    {6, 5},   // zra_fh_sadsit_d
    {7, 5},   // zra_fh_sadsit_e
    {5, 3},   // zra_f_looking_sp
    {8, 3},   // zra_fh_looking_sp
    {4, 9},   // zra_f_lookup
    {7, 9},   // zra_fh_lookup
    {7, 3},   // zra_f_talk_swim_sp
    {6, 3},   // zra_f_talk_b_sp
    {5, 9},   // zra_f_spa_talk_a
    {8, 9},   // zra_fh_spa_wait_a
    {6, 9},   // zra_f_spa_talk_b
    {9, 9},   // zra_fh_spa_wait_b
    {17, 0},  // zra_swim_turn
    {14, 0},  // zra_still
    {12, 0},  // zra_fallswim
    {16, 0},  // zra_swim_talk
    {8, 5},   // zra_sadsit_a
    {6, 6},   // zra_sadsit_b
    {7, 6},   // zra_sadsit_c
    {9, 5},   // zra_sadsit_d
    {10, 5},  // zra_sadsit_e
    {4, 8},   // zra_tobikomi_s
    {5, 8},   // zra_tobikomi_t
    {3, 8},   // zra_tobikomi_e
    {11, 3},  // zra_looking_sp
    {17, 3},  // zra_talk_swim_sp
    {16, 3},  // zra_talk_b_sp
    {10, 9},  // zra_lookup
    {14, 9},  // zra_spa_wait_b
    {12, 9},  // zra_spa_talk_b
    {13, 9},  // zra_spa_wait_a
    {11, 9},  // zra_spa_talk_a
    {5, 2},   // zra_wait_a
    {10, 1},  // zra_walk_a
    {4, 2},   // zra_talk_a
    {7, 1},   // zra_swim_a
    {8, 1},   // zra_swim_b
    {9, 1},   // zra_wait_swim
    {3, 1},   // zra_dive
    {4, 1},   // zra_dive_b
    {5, 1},   // zra_float
    {6, 1},   // zra_float_b
    {3, 2},   // zra_step
    {18, 3},  // zra_wait_sp
    {20, 3},  // zra_walk_a_sp
    {15, 3},  // zra_talk_a_sp
    {13, 3},  // zra_swim_a_sp
    {14, 3},  // zra_swim_b_sp
    {19, 3},  // zra_wait_swim_sp
    {4, 3},   // zra_dive_sp
    {3, 3},   // zra_dive_b_sp
    {10, 3},  // zra_float_sp
    {9, 3},   // zra_float_b_sp
    {12, 3},  // zra_step_sp
};

/* 80B8D0DC-80B8D11C 00024C 0040+00 1/1 0/0 0/0 .data            l_btpGetParamList */
SECTION_DATA static daNpc_GetParam1 l_btpGetParamList[8] = {
    {34, 0},  // zra
    {16, 5},  // zra_fh_sadsit_a
    {10, 6},  // zra_fh_sadsit_b
    {11, 6},  // zra_fh_sadsit_c
    {17, 5},  // zra_fh_sadsit_d
    {18, 5},  // zra_fh_sadsit_e
    {17, 9},  // zra_f_spa_talk_b
    {18, 9},  // zra_fh_spa_wait_b
};

/* 80B8D11C-80B8D13C 00028C 0020+00 1/3 0/0 0/0 .data            l_btkGetParamList */
SECTION_DATA static daNpc_GetParam1 l_btkGetParamList[4] = {
    {28, 0},  // zra
    {31, 0},  // zra_water02
    {29, 0},  // zra_reset
    {30, 0},  // zra_w_eyeball
};

/* 80B8D13C-80B8D14C 0002AC 0010+00 0/1 0/0 0/0 .data            l_brkGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static daNpc_GetParam1 l_brkGetParamList[2] = {
    {24, 0},  // zra
    {25, 0},  // zra_water02
};
#pragma pop

/* 80B8D14C-80B8D15C 0002BC 0010+00 0/1 0/0 0/0 .data            l_bpkGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static daNpc_GetParam1 l_bpkGetParamList[2] = {
    {20, 0},  // zra
    {21, 0},  // zra_water02
};
#pragma pop

/* 80B8D15C-80B8D1C4 0002CC 0068+00 0/3 0/0 0/0 .data            l_evtGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static daNpc_GetParam1 l_evtGetParamList[13] = {
    {0, 0},
    {1, 0},
    {2, 0},
    {3, 0},
    {4, 0},
    {5, 0},
    {6, 0},
    {7, 0},
    {8, 0},
    {9, 0},
    {10, 0},
    {11, 0},
    {12, 0},
};
#pragma pop

/* 80B8D1C4-80B8D1F8 -00001 0034+00 1/4 0/0 0/0 .data            l_evtNames */
SECTION_DATA static char* l_evtNames[13] = {
    NULL,
    "TALK_SWIM",
    "BEFORE_BLAST_ZRR",
    "AFTER_BLAST_ZRR",
    "THANKS_BLAST",
    "RESULT_ANNOUNCE",
    "CARRY_WATERFALL",
    "CARRY_WATERFALL_NIGHT",
    "CARRY_WATERFALL_SKIP",
    "CARRY_WATERFALL_NIGHT_SKIP",
    "SEARCH_PRINCE",
    "TALK_MULTI",
    "TALK_MULTI2",
};

/* 80B8D1F8-80B8D21C 000368 0024+00 0/1 0/0 0/0 .data            l_loadObj_list */
#pragma push
#pragma force_active on
SECTION_DATA static int l_loadObj_list[3][3] = {
    {2, 3, -1},
    {2, -1, -1},
    {-1, -1, -1},
};
#pragma pop

/* 80B8D21C-80B8D240 00038C 0024+00 0/1 0/0 0/0 .data            l_loadObj_listTW */
#pragma push
#pragma force_active on
SECTION_DATA static int l_loadObj_listTW[3][3] = {
    {4, 5, -1},
    {4, -1, -1},
    {-1, -1, -1},
};
#pragma pop

/* 80B8D240-80B8D260 0003B0 0020+00 1/0 0/0 0/0 .data            l_loadRes_ZRAa */
static int l_loadRes_ZRAa[8] = {0, 1, 2, 4, 6, -1, -1, -1};

/* 80B8D260-80B8D280 0003D0 0020+00 1/0 0/0 0/0 .data            l_loadRes_Swim */
static int l_loadRes_Swim[8] = {0, 1, 2, 4, -1, -1, -1, -1};

/* 80B8D280-80B8D2A0 0003F0 0020+00 1/0 0/0 0/0 .data            l_loadRes_Tobi */
static int l_loadRes_Tobi[8] = {0, 1, 2, 4, 8, -1, -1, -1};

/* 80B8D2A0-80B8D2C0 000410 0020+00 1/0 0/0 0/0 .data            l_loadRes_Spa */
static int l_loadRes_Spa[8] = {0, 2, 4, 9, -1, -1, -1, -1};

/* 80B8D2C0-80B8D2E0 000430 0020+00 1/0 0/0 0/0 .data            l_loadRes_ZRA0 */
static int l_loadRes_ZRA0[8] = {0, 1, 2, 4, -1, -1, -1, -1};

/* 80B8D2E0-80B8D300 -00001 0020+00 2/2 0/0 0/0 .data            l_loadRes_list */
static int* l_loadRes_list[8] = {
    l_loadRes_ZRAa, l_loadRes_Swim, l_loadRes_Swim, l_loadRes_Swim,
    l_loadRes_Tobi, l_loadRes_Tobi, l_loadRes_Spa,  l_loadRes_ZRA0,
};

/* 80B8D300-80B8D32C -00001 002C+00 5/11 0/0 0/0 .data            l_resNames */
#ifdef NONMATCHING
static char* l_resNames[11] = {
    "zrA",
    "zrA_nml",
    "zrA_nml2",
    "zrA_sp",
    "zrA_MDL",
    "zrA_TW",
    "zrA_sad",
    "zrA_obj",
    "zrA_tobi",
    "zrA2",
    "zrA_objTW",
};
#else
SECTION_DATA static void* l_resNames[11] = {
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0xC3),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0xC7),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0xCF),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0xD8),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0xDF),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0xE7),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0xEE),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0xF6),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0xFE),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0x107),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0x10C),
};
#endif

/* 80B8D32C-80B8D33C -00001 0010+00 1/2 0/0 0/0 .data            l_myName */
#ifdef NONMATCHING
static char* l_myName[4] = {
    "zrA",
    "zrA_talk",
    "zrR",
    "zrWF",
};
#else
SECTION_DATA static void* l_myName[4] = {
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0xC3),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0x116),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0x11F),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0x123),
};
#endif

/* 80B8D33C-80B8D368 -00001 002C+00 0/1 0/0 0/0 .data            mEvtCutNameList__11daNpc_zrA_c */
#ifdef NONMATCHING
char* daNpc_zrA_c::mEvtCutNameList[11] = {
    "",
    "TALK_SWIM",
    "BEFORE_BLAST_ZRR",
    "AFTER_BLAST_ZRR",
    "THANKS_BLAST",
    "RESULT_ANNOUNCE",
    "CARRY_WATERFALL",
    "CARRY_WATERFALL_SKIP",
    "SEARCH_PRINCE1",
    "SEARCH_PRINCE2",
    "TALK_MULTI",
};
#else
#pragma push
#pragma force_active on
SECTION_DATA void* daNpc_zrA_c::mEvtCutNameList[11] = {
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0x128),
    (void*)&d_a_npc_zra__stringBase0,
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0xA),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0x1B),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0x2B),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0x38),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0x48),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0x6E),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0x129),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0x138),
    (void*)(((char*)&d_a_npc_zra__stringBase0) + 0xAC),
};
#pragma pop
#endif

#ifdef NONMATCHING
daNpc_zrA_c::EventFn daNpc_zrA_c::mEvtCutList[11] = {
    NULL,
    &ECut_talkSwim,
    &ECut_beforeBlastzrR,
    &ECut_afterBlastzrR,
    &ECut_thanksBlast,
    &ECut_resultAnnounce,
    &ECut_carryWaterfall,
    &ECut_carryWaterfallSkip,
    &ECut_searchPrince1,
    &ECut_searchPrince2,
    &ECut_talkMulti,
};
#else
/* 80B8D368-80B8D374 -00001 000C+00 0/1 0/0 0/0 .data            @4442 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4442[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_talkSwim__11daNpc_zrA_cFi,
};
#pragma pop

/* 80B8D374-80B8D380 -00001 000C+00 0/1 0/0 0/0 .data            @4443 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4443[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_beforeBlastzrR__11daNpc_zrA_cFi,
};
#pragma pop

/* 80B8D380-80B8D38C -00001 000C+00 0/1 0/0 0/0 .data            @4444 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4444[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_afterBlastzrR__11daNpc_zrA_cFi,
};
#pragma pop

/* 80B8D38C-80B8D398 -00001 000C+00 0/1 0/0 0/0 .data            @4445 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4445[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_thanksBlast__11daNpc_zrA_cFi,
};
#pragma pop

/* 80B8D398-80B8D3A4 -00001 000C+00 0/1 0/0 0/0 .data            @4446 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4446[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_resultAnnounce__11daNpc_zrA_cFi,
};
#pragma pop

/* 80B8D3A4-80B8D3B0 -00001 000C+00 0/1 0/0 0/0 .data            @4447 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4447[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_carryWaterfall__11daNpc_zrA_cFi,
};
#pragma pop

/* 80B8D3B0-80B8D3BC -00001 000C+00 0/1 0/0 0/0 .data            @4448 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4448[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_carryWaterfallSkip__11daNpc_zrA_cFi,
};
#pragma pop

/* 80B8D3BC-80B8D3C8 -00001 000C+00 0/1 0/0 0/0 .data            @4449 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4449[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_searchPrince1__11daNpc_zrA_cFi,
};
#pragma pop

/* 80B8D3C8-80B8D3D4 -00001 000C+00 0/1 0/0 0/0 .data            @4450 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4450[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_searchPrince2__11daNpc_zrA_cFi,
};
#pragma pop

/* 80B8D3D4-80B8D3E0 -00001 000C+00 0/1 0/0 0/0 .data            @4451 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4451[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_talkMulti__11daNpc_zrA_cFi,
};
#pragma pop

/* 80B8D3E0-80B8D464 000550 0084+00 0/2 0/0 0/0 .data            mEvtCutList__11daNpc_zrA_c */
#pragma push
#pragma force_active on
SECTION_DATA u8 daNpc_zrA_c::mEvtCutList[132] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop
#endif

/* 80B8D464-80B8D4B8 -00001 0054+00 1/1 0/0 0/0 .data            @5840 */
SECTION_DATA static void* lit_5840[21] = {
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0x90),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0xAC),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0xC8),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0xE4),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0x100),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0x11C),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0x13C),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0x15C),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0x17C),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0x19C),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0x1BC),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0x1DC),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0x1F8),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0x218),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0x234),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0x254),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0x270),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0x28C),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0x2A8),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0x2C8),
    (void*)(((char*)setExpressionAnm__11daNpc_zrA_cFib) + 0x2E4),
};

/* 80B8D4B8-80B8D560 -00001 00A8+00 1/1 0/0 0/0 .data            @5957 */
SECTION_DATA static void* lit_5957[42] = {
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xF0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpc_zrA_cFif) + 0xE0),
};

/* 80B8D560-80B8D57C -00001 001C+00 1/1 0/0 0/0 .data            @6094 */
SECTION_DATA static void* lit_6094[7] = {
    (void*)(((char*)getTypeFromArgument__11daNpc_zrA_cFv) + 0x28),
    (void*)(((char*)getTypeFromArgument__11daNpc_zrA_cFv) + 0x30),
    (void*)(((char*)getTypeFromArgument__11daNpc_zrA_cFv) + 0x38),
    (void*)(((char*)getTypeFromArgument__11daNpc_zrA_cFv) + 0x40),
    (void*)(((char*)getTypeFromArgument__11daNpc_zrA_cFv) + 0x48),
    (void*)(((char*)getTypeFromArgument__11daNpc_zrA_cFv) + 0x50),
    (void*)(((char*)getTypeFromArgument__11daNpc_zrA_cFv) + 0x58),
};

/* 80B8D57C-80B8D588 -00001 000C+00 0/1 0/0 0/0 .data            @6527 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6527[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D588-80B8D594 -00001 000C+00 0/1 0/0 0/0 .data            @6531 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6531[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)swim__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D594-80B8D5A0 -00001 000C+00 0/0 0/0 0/0 .data            @6535 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6535[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitWaterfall__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D5A0-80B8D5AC -00001 000C+00 0/0 0/0 0/0 .data            @6537 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6537[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)swimWaterfall__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D5AC-80B8D5B8 -00001 000C+00 0/0 0/0 0/0 .data            @6539 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6539[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)diveWaterfall__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D5B8-80B8D5C4 -00001 000C+00 0/0 0/0 0/0 .data            @6543 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6543[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitRiverDescend__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D5C4-80B8D5D0 -00001 000C+00 0/0 0/0 0/0 .data            @6545 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6545[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)swimRiverDescend__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D5D0-80B8D5DC -00001 000C+00 0/0 0/0 0/0 .data            @6547 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6547[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)swimRiverDescend2__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D5DC-80B8D5E8 -00001 000C+00 0/0 0/0 0/0 .data            @6549 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6549[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)diveRiverDescend__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D5E8-80B8D5F4 -00001 000C+00 0/0 0/0 0/0 .data            @6551 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6551[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)swimGoalRiverDescend__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D5F4-80B8D600 -00001 000C+00 0/0 0/0 0/0 .data            @6553 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6553[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)returnRiverDescend__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D600-80B8D60C -00001 000C+00 0/0 0/0 0/0 .data            @6557 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6557[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tobiSearch__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D60C-80B8D618 -00001 000C+00 0/0 0/0 0/0 .data            @6559 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6559[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tobiWait__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D618-80B8D624 -00001 000C+00 0/0 0/0 0/0 .data            @6561 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6561[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tobikomi1__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D624-80B8D630 -00001 000C+00 0/0 0/0 0/0 .data            @6563 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6563[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tobikomi2__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D630-80B8D63C -00001 000C+00 0/0 0/0 0/0 .data            @6565 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6565[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tobikomi3__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D63C-80B8D648 -00001 000C+00 0/0 0/0 0/0 .data            @6567 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6567[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tobiJump__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D648-80B8D654 -00001 000C+00 0/0 0/0 0/0 .data            @6569 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6569[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tobiEnd__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D654-80B8D660 -00001 000C+00 0/0 0/0 0/0 .data            @6573 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6573[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitSearch__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D660-80B8D66C -00001 000C+00 0/0 0/0 0/0 .data            @6575 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6575[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitSpa__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D66C-80B8D678 -00001 000C+00 0/0 0/0 0/0 .data            @6579 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6579[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitLake__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D678-80B8D684 -00001 000C+00 0/0 0/0 0/0 .data            @6581 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6581[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D684-80B8D690 -00001 000C+00 0/1 0/0 0/0 .data            @6583 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6583[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D690-80B8D6AC -00001 001C+00 1/1 0/0 0/0 .data            @6588 */
SECTION_DATA static void* lit_6588[7] = {
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x208),
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x224),
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x240),
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x25C),
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x278),
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x294),
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x2B0),
};

/* 80B8D6AC-80B8D6C8 -00001 001C+00 1/1 0/0 0/0 .data            @6587 */
SECTION_DATA static void* lit_6587[7] = {
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x13C),
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x158),
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x1C8),
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x190),
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x1AC),
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x1C8),
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x174),
};

/* 80B8D6C8-80B8D6E4 -00001 001C+00 1/1 0/0 0/0 .data            @6586 */
SECTION_DATA static void* lit_6586[7] = {
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x314),
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x7C),
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x98),
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x118),
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x1E4),
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x2CC),
    (void*)(((char*)selectAction__11daNpc_zrA_cFv) + 0x2F8),
};

/* 80B8D6E4-80B8D6F0 -00001 000C+00 0/1 0/0 0/0 .data            @6608 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6608[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkSwim__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D6F0-80B8D6FC -00001 000C+00 0/1 0/0 0/0 .data            @6616 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6616[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkSwim__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D6FC-80B8D708 -00001 000C+00 0/1 0/0 0/0 .data            @6629 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6629[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D708-80B8D714 -00001 000C+00 0/1 0/0 0/0 .data            @6646 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6646[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D714-80B8D720 -00001 000C+00 0/1 0/0 0/0 .data            @6650 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6650[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D720-80B8D72C -00001 000C+00 0/1 0/0 0/0 .data            @6666 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6666[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)swim__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D72C-80B8D738 -00001 000C+00 0/1 0/0 0/0 .data            @6670 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6670[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)returnRiverDescend__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D738-80B8D744 -00001 000C+00 0/1 0/0 0/0 .data            @6674 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6674[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)diveWaterfall__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D744-80B8D750 -00001 000C+00 1/1 0/0 0/0 .data            @7129 */
SECTION_DATA static void* lit_7129[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_zrA_cFPv,
};

/* 80B8D750-80B8D75C -00001 000C+00 1/1 0/0 0/0 .data            @8131 */
SECTION_DATA static void* lit_8131[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitWaterfall__11daNpc_zrA_cFPv,
};

/* 80B8D75C-80B8D768 -00001 000C+00 1/1 0/0 0/0 .data            @8299 */
SECTION_DATA static void* lit_8299[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)swimWaterfall__11daNpc_zrA_cFPv,
};

/* 80B8D768-80B8D774 -00001 000C+00 0/1 0/0 0/0 .data            @8349 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8349[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitWaterfall__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D774-80B8D780 -00001 000C+00 0/1 0/0 0/0 .data            @8636 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8636[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)swimGoalRiverDescend__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D780-80B8D78C -00001 000C+00 0/1 0/0 0/0 .data            @8661 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8661[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)diveRiverDescend__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D78C-80B8D798 -00001 000C+00 0/1 0/0 0/0 .data            @8678 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8678[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)diveRiverDescend__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D798-80B8D7A4 -00001 000C+00 0/1 0/0 0/0 .data            @8683 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8683[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)diveRiverDescend__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D7A4-80B8D7B0 -00001 000C+00 1/1 0/0 0/0 .data            @9347 */
SECTION_DATA static void* lit_9347[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitRiverDescend__11daNpc_zrA_cFPv,
};

/* 80B8D7B0-80B8D7BC -00001 000C+00 1/1 0/0 0/0 .data            @9351 */
SECTION_DATA static void* lit_9351[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitRiverDescend__11daNpc_zrA_cFPv,
};

/* 80B8D7BC-80B8D7C8 -00001 000C+00 0/1 0/0 0/0 .data            @9479 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_9479[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitRiverDescend__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D7C8-80B8D7D4 -00001 000C+00 0/1 0/0 0/0 .data            @9487 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_9487[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)swimRiverDescend2__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D7D4-80B8D7E0 -00001 000C+00 0/1 0/0 0/0 .data            @9490 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_9490[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)swimRiverDescend__11daNpc_zrA_cFPv,
};
#pragma pop

/* 80B8D7E0-80B8D834 -00001 0054+00 1/1 0/0 0/0 .data            @9940 */
SECTION_DATA static void* lit_9940[21] = {
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x114),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x324),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x324),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x324),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x324),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x324),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x324),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x324),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x324),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x324),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x154),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x324),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x324),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x324),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x324),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x1F0),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x324),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x324),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x324),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x324),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0x2B4),
};

/* 80B8D834-80B8D888 -00001 0054+00 1/1 0/0 0/0 .data            @9939 */
SECTION_DATA static void* lit_9939[21] = {
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xC4),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xF4),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xF4),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xF4),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xF4),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xF4),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xF4),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xF4),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xF4),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xF4),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xD0),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xF4),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xF4),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xF4),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xF4),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xF4),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xF4),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xF4),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xF4),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xF4),
    (void*)(((char*)ECut_beforeBlastzrR__11daNpc_zrA_cFi) + 0xE4),
};

/* 80B8D888-80B8D894 -00001 000C+00 1/1 0/0 0/0 .data            @11290 */
SECTION_DATA static void* lit_11290[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tobiWait__11daNpc_zrA_cFPv,
};

/* 80B8D894-80B8D8A0 -00001 000C+00 1/1 0/0 0/0 .data            @11309 */
SECTION_DATA static void* lit_11309[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tobikomi1__11daNpc_zrA_cFPv,
};

/* 80B8D8A0-80B8D8AC -00001 000C+00 1/1 0/0 0/0 .data            @11325 */
SECTION_DATA static void* lit_11325[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tobikomi2__11daNpc_zrA_cFPv,
};

/* 80B8D8AC-80B8D8B8 -00001 000C+00 1/1 0/0 0/0 .data            @11372 */
SECTION_DATA static void* lit_11372[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tobikomi3__11daNpc_zrA_cFPv,
};

/* 80B8D8B8-80B8D8C4 -00001 000C+00 1/1 0/0 0/0 .data            @11420 */
SECTION_DATA static void* lit_11420[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tobiJump__11daNpc_zrA_cFPv,
};

/* 80B8D8C4-80B8D8D0 -00001 000C+00 1/1 0/0 0/0 .data            @11423 */
SECTION_DATA static void* lit_11423[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tobiEnd__11daNpc_zrA_cFPv,
};

/* 80B8D8D0-80B8D8DC -00001 000C+00 1/1 0/0 0/0 .data            @11468 */
SECTION_DATA static void* lit_11468[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tobiEnd__11daNpc_zrA_cFPv,
};

/* 80B8D8DC-80B8D8FC -00001 0020+00 1/0 0/0 0/0 .data            daNpc_zrA_MethodTable */
static actor_method_class daNpc_zrA_MethodTable = {
    (process_method_func)daNpc_zrA_Create,
    (process_method_func)daNpc_zrA_Delete,
    (process_method_func)daNpc_zrA_Execute,
    (process_method_func)daNpc_zrA_IsDelete,
    (process_method_func)daNpc_zrA_Draw,
};

/* 80B8D8FC-80B8D92C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_ZRA */
extern actor_process_profile_definition g_profile_NPC_ZRA = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_NPC_ZRA,
    &g_fpcLf_Method.mBase,
    sizeof(daNpc_zrA_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x183,
    &daNpc_zrA_MethodTable,
    0x44100,
    fopAc_NPC_e,
    fopAc_CULLBOX_CUSTOM_e,
};

/* 80B8D92C-80B8D938 000A9C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGLin */
SECTION_DATA extern void* __vt__8cM3dGLin[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGLinFv,
};

/* 80B8D938-80B8D944 000AA8 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80B8D944-80B8D98C 000AB4 0048+00 2/2 0/0 0/0 .data            __vt__11daNpc_zrA_c */
SECTION_DATA extern void* __vt__11daNpc_zrA_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_zrA_cFv,
    (void*)setParam__11daNpc_zrA_cFv,
    (void*)main__11daNpc_zrA_cFv,
    (void*)ctrlBtk__11daNpc_zrA_cFv,
    (void*)adjustShapeAngle__11daNpc_zrA_cFv,
    (void*)setMtx__11daNpc_zrA_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__11daNpc_zrA_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__11daNpc_zrA_cFib,
    (void*)setExpressionBtp__11daNpc_zrA_cFi,
    (void*)setExpression__11daNpc_zrA_cFif,
    (void*)setMotionAnm__11daNpc_zrA_cFif,
    (void*)setMotion__11daNpc_zrA_cFifi,
    (void*)drawDbgInfo__11daNpc_zrA_cFv,
    (void*)drawOtherMdls__11daNpc_zrA_cFv,
};

/* 80B8D98C-80B8D9B0 000AFC 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B8C43C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B8C434,
};

/* 80B8D9B0-80B8D9BC 000B20 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B8D9BC-80B8D9C8 000B2C 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B8D9C8-80B8D9D4 000B38 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B8D9D4-80B8D9E0 000B44 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80B8D9E0-80B8D9EC 000B50 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B8D9EC-80B8D9F8 000B5C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B8D9F8-80B8DA04 000B68 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 80B8DA04-80B8DA10 000B74 000C+00 3/3 0/0 0/0 .data            __vt__16daNpc_zrA_Path_c */
SECTION_DATA extern void* __vt__16daNpc_zrA_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daNpc_zrA_Path_cFv,
};

/* 80B8DA10-80B8DA1C 000B80 000C+00 5/5 0/0 0/0 .data            __vt__16daNpcF_SPCurve_c */
SECTION_DATA extern void* __vt__16daNpcF_SPCurve_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daNpcF_SPCurve_cFv,
};

/* 80B8DA1C-80B8DA28 000B8C 000C+00 4/4 0/0 0/0 .data            __vt__13daNpcF_Path_c */
SECTION_DATA extern void* __vt__13daNpcF_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcF_Path_cFv,
};

/* 80B8DA28-80B8DA34 000B98 000C+00 5/5 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B7956C-80B79798 00114C 022C+00 1/1 0/0 0/0 .text            __ct__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// daNpcF_c needs to not be inlined
daNpc_zrA_c::daNpc_zrA_c() {
    /* empty function */
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_zrA_c::daNpc_zrA_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__ct__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B79798-80B797E0 001378 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80B797E0-80B79828 0013C0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80B79828-80B79B58 001408 0330+00 1/0 0/0 0/0 .text            __dt__11daNpc_zrA_cFv */
#ifdef NONMATCHING
daNpc_zrA_c::~daNpc_zrA_c() {
    int i;
    for (i = 0; l_loadRes_list[mType][i] >= 0; i++) {
        int res_no = l_loadRes_list[mType][i];
        if (res_no == 4) {
            if (mTwilight) {
                res_no = 5;
            }
        } else if (res_no == 1) {
            if (mSoldierType == SOLDIER_SPEAR) {
                res_no = 3;
            }
        }
        dComIfG_resDelete(&mPhase[i], l_resNames[res_no]);
    }

    if (mSoldierType != SOLDIER_NONE) {
        if (mTwilight) {
            dComIfG_resDelete(&mPhase[i], l_resNames[10]);
        } else {
            dComIfG_resDelete(&mPhase[i], l_resNames[7]);
        }
    }

    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpc_zrA_c::~daNpc_zrA_c() {
extern "C" asm void __dt__11daNpc_zrA_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8C538-80B8C53C 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4964 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4964 = -300.0f;
COMPILER_STRIP_GATE(0x80B8C538, &lit_4964);
#pragma pop

/* 80B8C53C-80B8C540 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4965 = -50.0f;
COMPILER_STRIP_GATE(0x80B8C53C, &lit_4965);
#pragma pop

/* 80B8C540-80B8C544 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4966 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4966 = 300.0f;
COMPILER_STRIP_GATE(0x80B8C540, &lit_4966);
#pragma pop

/* 80B8C544-80B8C548 0000EC 0004+00 0/3 0/0 0/0 .rodata          @4967 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4967 = 450.0f;
COMPILER_STRIP_GATE(0x80B8C544, &lit_4967);
#pragma pop

/* 80B79B58-80B79F38 001738 03E0+00 1/1 0/0 0/0 .text            create__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals
cPhs__Step daNpc_zrA_c::create() {
    fopAcM_SetupActor(this, daNpc_zrA_c);

    mType = getTypeFromArgument();
    if (home.angle.x != 0xffff) {
        mFlowID = home.angle.x;
    } else {
        mFlowID = -1;
    }
    mSoldierType = getSoldierTypeFromParam();
    mGameMode = getGameModeFromParam();
    mSwitch1 = (u8)home.angle.z;
    mSwitch2 = (u8)((u16)home.angle.z >> 8);
    mTwilight = dKy_darkworld_check();

    if (isDelete()) {
        return cPhs_ERROR_e;
    }

    int res_count = 0;
    cPhs__Step step;
    int i;
    for (i = 0; l_loadRes_list[mType][i] >= 0; i++) {
        int res_no = l_loadRes_list[mType][i];
        if (res_no == 4) {
            if (mTwilight) {
                res_no = 5;
            }
        } else if (res_no == 1) {
            if (mSoldierType == SOLDIER_SPEAR) {
                res_no = 3;
            }
        }
        
        step = (cPhs__Step)dComIfG_resLoad(&mPhase[i], l_resNames[res_no]);

        if (step == cPhs_ERROR_e || step == cPhs_UNK3_e) {
            return cPhs_ERROR_e;
        }
        if (step == cPhs_COMPLEATE_e) {
            res_count++;
        }
    }

    if (mSoldierType != SOLDIER_NONE) {
        if (mTwilight) {
            step = (cPhs__Step)dComIfG_resLoad(&mPhase[i], l_resNames[10]);
        } else {
            step = (cPhs__Step)dComIfG_resLoad(&mPhase[i], l_resNames[7]);
        }

        if (step == cPhs_ERROR_e || step == cPhs_UNK3_e) {
            return cPhs_ERROR_e;
        }
        if (step == cPhs_COMPLEATE_e) {
            res_count++;
        }

        i++;
    }

    if (res_count == i) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x80007280)) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);
        mCreatureSound.init(&current.pos, &eyePos, 3, 1);
        mAcchCir.SetWall(daNpc_zrA_Param_c::m.mWallR, daNpc_zrA_Param_c::m.mWallH);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mPaPo.init(&mAcch, daNpc_zrA_Param_c::m.mCylH, daNpc_zrA_Param_c::m.mCylH);
        mCcStts.Init(daNpc_zrA_Param_c::m.mCcWeight, 0, this);
        mCcCyl.Set(mCcDCyl);
        mCcCyl.SetStts(&mCcStts);
        mCcCyl.SetTgHitCallback(tgHitCallBack);
        mAcch.SetWtrChkMode(2);
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cPhs__Step daNpc_zrA_c::create() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/create__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8C548-80B8C54C 0000F0 0004+00 7/28 0/0 0/0 .rodata          @5070 */
SECTION_RODATA static f32 const lit_5070 = 1.0f;
COMPILER_STRIP_GATE(0x80B8C548, &lit_5070);

/* 80B79F38-80B7A360 001B18 0428+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals
int daNpc_zrA_c::CreateHeap() {
    J3DModelData* model_data = NULL;
    u32 model_flag;
    if (mTwilight) {
        if (l_bmdGetParamList[1].fileIdx >= 0) {
            model_data = static_cast<J3DModelData*>(
                dComIfG_getObjectRes(l_resNames[l_bmdGetParamList[1].arcIdx],
                                     l_bmdGetParamList[1].fileIdx));
        }
        model_flag = 0x80000;
    } else {
        if (l_bmdGetParamList[0].fileIdx >= 0) {
            model_data = static_cast<J3DModelData*>(
                dComIfG_getObjectRes(l_resNames[l_bmdGetParamList[0].arcIdx],
                                     l_bmdGetParamList[0].fileIdx));
        }
        model_flag = 0;
    }
    mpMorf = new mDoExt_McaMorfSO(model_data, NULL, NULL, NULL, -1, 1.0f, 0, -1,
                                  &mCreatureSound, model_flag, 0x11020285);
    if (mpMorf != NULL && mpMorf->getModel() == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }
    if (mpMorf == NULL) {
        return 0;
    }

    J3DModel* model = mpMorf->getModel();
    for (u16 i = 0; i < model_data->getJointNum(); i++) {
        switch (i) {
        case 0:
        case 1:
        case 3:
        case 4:
        case 5:
        case 14:
        case 29:
            model_data->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
            break;
        default:
            model_data->getJointNodePointer(i)->setCallBack(NULL);
        }
    }
    model->setUserArea((u32)this);

    mpMatAnm = new daNpcF_MatAnm_c();
    if (mpMatAnm == NULL) {
        return 0;
    }

    setMotionWaterAnm(1);
    if (!setExpressionAnm(ANM_F_TALK_A, false)) {
        return 0;
    }
    setMotionAnm(ANM_WAIT_A, 0.0f);

    if (mSoldierType != SOLDIER_NONE) {
        for (int i = 0; i < 3; i++) {
            int index;
            if (mTwilight) {
                index = l_loadObj_listTW[mSoldierType][i];
            } else {
                index = l_loadObj_list[mSoldierType][i];
            }

            if (index > 0) {
                model_data = static_cast<J3DModelData*>(
                    dComIfG_getObjectRes(l_resNames[l_bmdGetParamList[index].arcIdx],
                                        l_bmdGetParamList[index].fileIdx));
                if (model_data != NULL) {
                    mpObjectModel[i] = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
                    if (mpObjectModel[i] == NULL) {
                        return 0;
                    }
                } else {
                    return 0;
                }
            } else {
                mpObjectModel[i] = NULL;
            }
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpc_zrA_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/CreateHeap__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B7A360-80B7A39C 001F40 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" asm void __dt__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80B7A39C-80B7A3B4 001F7C 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" asm void __ct__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__ct__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80B7A3B4-80B7A3F0 001F94 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" asm void __dt__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 80B7A3F0-80B7A408 001FD0 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::J3DTevColorAnm() {
extern "C" asm void __ct__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__ct__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 80B7A408-80B7A450 001FE8 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" asm void __dt__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80B7A450-80B7A474 002030 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::J3DTexNoAnm() {
extern "C" asm void __ct__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__ct__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80B7A474-80B7A4B0 002054 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" asm void __dt__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80B7A4B0-80B7A4C8 002090 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" asm void __ct__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__ct__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80B7A4C8-80B7A504 0020A8 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" asm void __dt__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 80B7A504-80B7A51C 0020E4 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::J3DMatColorAnm() {
extern "C" asm void __ct__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__ct__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 80B7A51C-80B7A550 0020FC 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_zrA_cFv */
int daNpc_zrA_c::Delete() {
    this->~daNpc_zrA_c();
    return 1;
}

/* 80B7A550-80B7A570 002130 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_zrA_cFv */
int daNpc_zrA_c::Execute() {
    return execute();
}

/* ############################################################################################## */
/* 80B8C54C-80B8C550 0000F4 0004+00 0/8 0/0 0/0 .rodata          @5218 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5218 = 20.0f;
COMPILER_STRIP_GATE(0x80B8C54C, &lit_5218);
#pragma pop

/* 80B7A570-80B7A864 002150 02F4+00 1/1 0/0 0/0 .text            Draw__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals
int daNpc_zrA_c::Draw() {
    BOOL bvar2 = false;
    J3DModel* model = mpMorf->getModel();
    J3DModelData* model_data = model->getModelData();
    model_data->getMaterialNodePointer(1)->setMaterialAnm(mpMatAnm);

    if (!mHide) {
        if (mTwilight) {
            bvar2 = false;
        } else {
            bvar2 = true;
        }
    }

    if (!checkHide()) {
        if (mTwilight) {
            g_env_light.settingTevStruct(4, &current.pos, &tevStr);
        } else {
            g_env_light.settingTevStruct(0, &current.pos, &tevStr);
        }
        g_env_light.setLightTevColorType_MAJI(model, &tevStr);

        if (!drawDbgInfo()) {
            if (mWaterAnmFlags & ANM_PLAY_BTK) {
                mWaterBtkAnm.entry(model_data);
            }
            if (mWaterAnmFlags & ANM_PLAY_BPK) {
                mWaterBpkAnm.entry(model_data);
            }
            if (mAnmFlags & ANM_PLAY_BTP) {
                mBtpAnm.entry(model_data);
            }
            if (mAnmFlags & ANM_PLAY_BTK) {
                mBtkAnm.entry(model_data);
            }
            if (mAnmFlags & ANM_PLAY_BRK) {
                mBrkAnm.entry(model_data);
            }

            if (bvar2) {
                fopAcM_setEffectMtx(this, model_data);
            }

            if (mTwilight) {
                dComIfGd_setListDark();
                mpMorf->entryDL();
                dComIfGd_setList();
            } else {
                mpMorf->entryDL();
            }

            if (mAnmFlags & ANM_PLAY_BTP) {
                mBtpAnm.remove(model_data);
            }
            if (mAnmFlags & ANM_PLAY_BTK) {
                mBtkAnm.remove(model_data);
            }
            if (mAnmFlags & ANM_PLAY_BRK) {
                mBrkAnm.remove(model_data);
            }
            if (mWaterAnmFlags & ANM_PLAY_BPK) {
                mWaterBpkAnm.remove(model_data);
            }
            if (mWaterAnmFlags & ANM_PLAY_BTK) {
                mWaterBtkAnm.remove(model_data);
            }

            mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model, &current.pos,
                                            daNpc_zrA_Param_c::m.mShadowDepth, 20.0f,
                                            current.pos.y, mGroundH, mGndChk, &tevStr,
                                            0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
            
            drawOtherMdls();
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpc_zrA_c::Draw() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/Draw__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8C550-80B8C55C 0000F8 000C+00 0/1 0/0 0/0 .rodata          @5227 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5227[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80B8C550, &lit_5227);
#pragma pop

/* 80B7A864-80B7AB9C 002444 0338+00 1/1 0/0 0/0 .text
 * ctrlJoint__11daNpc_zrA_cFP8J3DJointP8J3DModel                */
#ifdef NONMATCHING
// matches with literals
int daNpc_zrA_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jnt_no = i_joint->getJntNo();
    Mtx mtx1, mtx2;
    cXyz pos;

    if (mSwimMode != SWIM_WAIT) {
        mDoMtx_stack_c::copy(i_model->getAnmMtx(jnt_no));

        switch (jnt_no) {
        case 29:
            calcWaistAngle();
            MTXCopy(mDoMtx_stack_c::get(), mtx1);
            pos.set(mtx1[0][3], mtx1[1][3], mtx1[2][3]);
            mtx1[0][3] = mtx1[1][3] = mtx1[2][3] = 0.0f;

            mDoMtx_stack_c::ZXYrotS(mCurAngle);
            mDoMtx_stack_c::inverse();
            MTXCopy(mDoMtx_stack_c::get(), mtx2);

            mDoMtx_stack_c::transS(pos);
            mDoMtx_stack_c::ZXYrotM(mCurAngle);
            mDoMtx_stack_c::ZXYrotM(mWaistAngle);
            mDoMtx_stack_c::concat(mtx2);
            mDoMtx_stack_c::concat(mtx1);
            break;
        }

        i_model->setAnmMtx(jnt_no, mDoMtx_stack_c::get());
        MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
        return 1;
    }

    int lookat_joints[3] = {1, 3, 4};

    if (jnt_no == 0) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jnt_no));

    switch (jnt_no) {
    case 1:
    case 3:
    case 4:
        setLookatMtx(jnt_no, lookat_joints, daNpc_zrA_Param_c::m.mNeckAngleScl);
        break;
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

    if ((jnt_no == 4 || jnt_no == 14) && (mAnmFlags & ANM_PLAY_BCK)) {
        J3DAnmTransform* bck_anm = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mpMorf->getAnm());
        mpMorf->changeAnm(bck_anm);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpc_zrA_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/ctrlJoint__11daNpc_zrA_cFP8J3DJointP8J3DModel.s"
}
#pragma pop
#endif

/* 80B7AB9C-80B7ABBC 00277C 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_zrA_cFP10fopAc_ac_c              */
int daNpc_zrA_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpc_zrA_c*>(i_this)->CreateHeap();
}

/* 80B7ABBC-80B7AC08 00279C 004C+00 2/2 0/0 0/0 .text ctrlJointCallBack__11daNpc_zrA_cFP8J3DJointi
 */
int daNpc_zrA_c::ctrlJointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_zrA_c* _this = (daNpc_zrA_c*)model->getUserArea();
        if (_this != NULL) {
            _this->ctrlJoint(i_joint, model);
        }
    }
    return 1;
}

/* 80B7AC08-80B7ADF0 0027E8 01E8+00 1/0 0/0 0/0 .text            setParam__11daNpc_zrA_cFv */
void daNpc_zrA_c::setParam() {
    u32 attn_flags = 0xa;
    BOOL in_water = mAcch.ChkWaterIn();
    if (mTwilight) {
        attn_flags = 0x80000a;
    }

    selectAction();

    if (!mTwilight && daPy_py_c::i_checkNowWolf()) {
        attn_flags = 0;
    }

    if (field_0x1521) {
        field_0x14d0 = 0;
        field_0x14d4 = 0;

        attn_flags = 2;
        if (daPy_getPlayerActorClass()->checkSwimUp()) {
            attn_flags = 0;
        }
        if (field_0x153c == true || mSwimMode == SWIM_TURN) {
            attn_flags = 0;
        }
        
        attention_info.distances[fopAc_attn_LOCK_e] = 64;
        attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
        attention_info.distances[fopAc_attn_SPEAK_e] = 63;
    } else {
        if (mType != TYPE_WAIT && mType != TYPE_SPA && mType != TYPE_SEARCH
            && (mType != TYPE_WATERFALL || mActionSelect != 0))
        {
            attn_flags = 0;
        }

        field_0x14d0 = 0;
        field_0x14d4 = 0;

        attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(5, 6);
        attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
        attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(3, 6);
    }

    attention_info.flags = attn_flags;

    scale.set(daNpc_zrA_Param_c::m.mScale,
              daNpc_zrA_Param_c::m.mScale,
              daNpc_zrA_Param_c::m.mScale);
    if (mSwimMode != SWIM_WAIT) {
        scale *= mScaleFactor;
    }

    mAcchCir.SetWallR(daNpc_zrA_Param_c::m.mWallR);
    mAcchCir.SetWallH(daNpc_zrA_Param_c::m.mWallH);

    if ((mType == TYPE_WAIT && !in_water) || mType == TYPE_SPA) {
        gravity = daNpc_zrA_Param_c::m.mGravity;
    }
}

/* 80B7ADF0-80B7B0A4 0029D0 02B4+00 1/0 0/0 0/0 .text            main__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::main() {
    if (!doEvent()) {
        mOrderEvtNo = EVT_NONE;
        if (mpNextActionFn != NULL) {
            if (mpActionFn == mpNextActionFn) {
                (this->*mpActionFn)(NULL);
            } else {
                setAction(mpNextActionFn);
            }
        }
    }

    if (checkHide()) {
        attention_info.flags = 0;
    }

    if (!daNpc_zrA_Param_c::m.mTest
        && (!dComIfGp_event_runCheck() || (mOrderNewEvt && dComIfGp_getEvent().isOrderOK())))
    {
        if (mOrderEvtNo != EVT_NONE) {
            eventInfo.setArchiveName(l_resNames[l_evtGetParamList[mOrderEvtNo].arcIdx]);
        }
        orderEvent(mOrderSpeakEvt, l_evtNames[l_evtGetParamList[mOrderEvtNo].fileIdx],
                   0xffff, 4, 0xff, 2);
        if (!mTwilight && mType == TYPE_WAIT && !field_0x1550) {
            eventInfo.i_onCondition(dEvtCnd_CANTALKITEM_e);
        }
    }

    if (field_0x9ee) {
        mExpressionMorfOverride = 0.0f;
        mMotionMorfOverride = 0.0f;
        field_0x9ee = false;
    }

    playExpression();
    playMotion();

    if (mAcch.ChkWaterIn()) {
        setMotionWaterAnm(1);
    } else {
        setMotionWaterAnm(0);
    }

    if (mWaterAnmFlags & ANM_PLAY_BTK) {
        f32 speed = mWaterBtkAnm.getPlaySpeed();
        if (mWaterAnmFlags & ANM_PAUSE_BTK) {
            mWaterBtkAnm.setPlaySpeed(0.0f);
        }
        mWaterBtkAnm.play();
        mWaterBtkAnm.setPlaySpeed(speed);
    }

    if (mWaterAnmFlags & ANM_PLAY_BPK) {
        f32 speed = mWaterBpkAnm.getPlaySpeed();
        if (mWaterAnmFlags & ANM_PAUSE_BPK) {
            mWaterBpkAnm.setPlaySpeed(0.0f);
        }
        mWaterBpkAnm.play();
        mWaterBpkAnm.setPlaySpeed(speed);
    }

    mWaterAnmFlags &= ~(ANM_PAUSE_ALL | ANM_PAUSE_BPK);

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::main() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/main__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8C55C-80B8C560 000104 0004+00 0/12 0/0 0/0 .rodata          @5527 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5527 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B8C55C, &lit_5527);
#pragma pop

/* 80B8C560-80B8C564 000108 0004+00 0/1 0/0 0/0 .rodata          @5528 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5528 = 3.0f / 25.0f;
COMPILER_STRIP_GATE(0x80B8C560, &lit_5528);
#pragma pop

/* 80B7B0A4-80B7B1DC 002C84 0138+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::ctrlBtk() {
    if (mpMatAnm != NULL) {
        J3DAnmTextureSRTKey* btk_anm = NULL;
        if (l_btkGetParamList[mBtkID].fileIdx >= 0) {
            btk_anm = getTexSRTKeyAnmP(l_resNames[l_btkGetParamList[mBtkID].arcIdx],
                                       l_btkGetParamList[mBtkID].fileIdx);
        }

        if (btk_anm == mBtkAnm.getBtkAnm()) {
            if (mBtkID == 0) {
                mpMatAnm->setNowOffsetX(cM_ssin(mEyeAngle.y) * 0.2f * -1.0f);
            } else {
                mpMatAnm->setNowOffsetX(cM_ssin(mEyeAngle.y) * 0.2f);
            }
            mpMatAnm->setNowOffsetY(cM_ssin(mEyeAngle.x) * 0.12f);
            mpMatAnm->onEyeMoveFlag();
            return true;
        }
        mpMatAnm->offEyeMoveFlag();
    }

    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::ctrlBtk() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/ctrlBtk__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8C564-80B8C568 00010C 0004+00 0/1 0/0 0/0 .rodata          @5769 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5769 = -20.0f;
COMPILER_STRIP_GATE(0x80B8C564, &lit_5769);
#pragma pop

/* 80B8C568-80B8C56C 000110 0004+00 0/5 0/0 0/0 .rodata          @5770 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5770 = 10.0f;
COMPILER_STRIP_GATE(0x80B8C568, &lit_5770);
#pragma pop

/* 80B8C56C-80B8C570 000114 0004+00 0/9 0/0 0/0 .rodata          @5771 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5771 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B8C56C, &lit_5771);
#pragma pop

/* 80B8C570-80B8C574 000118 0004+00 0/1 0/0 0/0 .rodata          @5772 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5772 = 125.0f;
COMPILER_STRIP_GATE(0x80B8C570, &lit_5772);
#pragma pop

/* 80B8C574-80B8C578 00011C 0004+00 0/1 0/0 0/0 .rodata          @5773 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5773 = 70.0f;
COMPILER_STRIP_GATE(0x80B8C574, &lit_5773);
#pragma pop

/* 80B8C578-80B8C57C 000120 0004+00 0/4 0/0 0/0 .rodata          @5774 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5774 = 40.0f;
COMPILER_STRIP_GATE(0x80B8C578, &lit_5774);
#pragma pop

/* 80B8C57C-80B8C580 000124 0004+00 0/1 0/0 0/0 .rodata          @5775 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5775 = 700.0f;
COMPILER_STRIP_GATE(0x80B8C57C, &lit_5775);
#pragma pop

/* 80B8C580-80B8C584 000128 0004+00 0/1 0/0 0/0 .rodata          @5776 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5776 = 800.0f;
COMPILER_STRIP_GATE(0x80B8C580, &lit_5776);
#pragma pop

/* 80B8C584-80B8C588 00012C 0004+00 0/1 0/0 0/0 .rodata          @5777 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5777 = -150.0f;
COMPILER_STRIP_GATE(0x80B8C584, &lit_5777);
#pragma pop

/* 80B8DA48-80B8DA4C 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80B8DA4C-80B8DA50 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80B8DA50-80B8DA54 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80B8DA54-80B8DA58 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80B8DA58-80B8DA5C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80B8DA5C-80B8DA60 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80B8DA60-80B8DA64 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80B8DA64-80B8DA68 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80B8DA68-80B8DA6C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80B8DA6C-80B8DA70 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80B8DA70-80B8DA74 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80B8DA74-80B8DA78 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80B8DA78-80B8DA7C 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80B8DA7C-80B8DA80 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80B8DA80-80B8DA84 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80B8DA84-80B8DA88 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80B8DA88-80B8DA94 000048 000C+00 1/1 0/0 0/0 .bss             @3887 */
static u8 lit_3887[12];

/* 80B8DA94-80B8DA98 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

#ifndef NONMATCHING
/* 80B8DA98-80B8DAA8 000058 000C+04 0/1 0/0 0/0 .bss             @5533 */
#pragma push
#pragma force_active on
static u8 lit_5533[12 + 4 /* padding */];
#pragma pop

/* 80B8DAA8-80B8DAB4 000068 000C+00 0/1 0/0 0/0 .bss             eyeOffset$5532 */
#pragma push
#pragma force_active on
static u8 eyeOffset[12];
#pragma pop
#endif

/* 80B7B1DC-80B7B91C 002DBC 0740+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrA_c::setAttnPos() {
    static cXyz eyeOffset(-20.0f, 10.0f, 0.0f);
    f32 offset = daNpc_zrA_Param_c::m.mAttnOffsetY;
    cXyz center, vec2, vec3, vec4, vec5;

    mDoMtx_stack_c::YrotS(field_0x990);

    cLib_addCalc2(&field_0x984[0], 0.0f, 0.1f, 125.0f);
    cLib_addCalc2(&field_0x984[2], 0.0f, 0.1f, 125.0f);

    for (int i = 0; i < 3; i++) {
        vec3.set(0.0f, 0.0f, field_0x984[i] * cM_ssin(field_0x992));
        mDoMtx_stack_c::multVec(&vec3, &vec4);
        field_0x908[i].x = -vec4.z;
        field_0x908[i].z = -vec4.x;
    }

    cLib_chaseS(&field_0x992, 0, 0x555);

    if (mLookMode == LOOK_RESET) {
        for (int i = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    J3DModelData* model_data = mpMorf->getModel()->getModelData();

    for (u16 i = 0; i < model_data->getJointNum(); i++) {
        switch (i) {
        case 0:
        case 1:
        case 3:
        case 4:
        case 5:
        case 14:
        case 29:
            model_data->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
            break;
        default:
            model_data->getJointNodePointer(i)->setCallBack(NULL);
            break;
        }
    }

    setMtx();
    lookat();
    setPrtcl();

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&eyeOffset, &eyePos);
    eyeOffset.y = 0.0f;
    mDoMtx_stack_c::multVec(&eyeOffset, &vec3);
    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &vec3);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &vec3);

    cXyz* attn_pos = mLookat.getAttnPos();
    if (attn_pos != NULL) {
        vec2 = *attn_pos - eyePos;
        mEyeAngle.y = -(mLookatAngle[2].y + mCurAngle.y);
        mEyeAngle.y += cM_atan2s(vec2.x, vec2.z);
        mEyeAngle.x = -cM_atan2s(vec2.y, vec2.absXZ());
        mEyeAngle.x += mHeadAngle.x;
    } else {
        mEyeAngle.x = mEyeAngle.y = 0;
    }

    f32 extra_height = 0.0f;
    f32 extra_radius = 0.0f;
    vec2.set(0.0f, 0.0f, 0.0f);
    if ((mType == TYPE_WAIT || mType == TYPE_SPA) && mActionType != ACT_TYPE_0) {
        if (mType == TYPE_SPA || (mType == TYPE_WAIT
                                && (mActionType == ACT_TYPE_1
                                    || mActionType == ACT_TYPE_2
                                    || mActionType == ACT_TYPE_3)))
        {
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(29));
            mDoMtx_stack_c::multVecZero(&center);
            center.y = current.pos.y;
            extra_radius = 70.0f;
        } else {
            center = current.pos;
        }

        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&vec5);
        attention_info.position.set(vec5.x, vec5.y + 40.0f, vec5.z);
    } else {
        if (mType == TYPE_TOBIKOMI) {
            extra_height = 700.0f;
            extra_radius = 800.0f;
        } else if (mType == TYPE_SWIM && mPath.getPathInfo() != NULL) {
            extra_height = -150.0f;
        }
        
        center = current.pos;
        attention_info.position.set(center.x, center.y + offset, center.z);
    }

    if (!mHide) {
        if (mDamageTimer == 0) {
            if (mType == TYPE_TOBIKOMI) {
                mCcCyl.SetTgType(0x2020);
                mCcCyl.SetTgSPrm(0x3f);
                mCcCyl.OnTgNoHitMark();
            } else {
                mCcCyl.SetTgType(0xd8fbfdff);
                mCcCyl.SetTgSPrm(0x1f);
                mCcCyl.OnTgNoHitMark();
            }
        } else {
            mCcCyl.SetTgType(0);
            mCcCyl.SetTgSPrm(0);
        }

        if (mType == TYPE_TOBIKOMI) {
            mCcCyl.SetCoSPrm(0x379);
        } else {
            switch (mOrderEvtNo) {
            case EVT_CARRY_WATERFALL:
            case EVT_CARRY_WATERFALL_NIGHT:
                mCcCyl.SetCoSPrm(0x179);
                break;
            default:
                mCcCyl.SetCoSPrm(0x79);
                break;
            }
        }

        mCcCyl.SetC(center);
        mCcCyl.SetH(daNpc_zrA_Param_c::m.mCylH + extra_height);
        mCcCyl.SetR(daNpc_zrA_Param_c::m.mWallR + extra_radius);
        dComIfG_Ccsp()->Set(&mCcCyl);
    }

    mCcCyl.ClrAtHit();
    mCcCyl.ClrTgHit();
    mCcCyl.ClrCoHit();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::setAttnPos() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/setAttnPos__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B7B91C-80B7B9D4 0034FC 00B8+00 1/0 0/0 0/0 .text            setMtx__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with weak functions
void daNpc_zrA_c::setMtx() {
    J3DModel* model = mpMorf->getModel();
    cXyz pos = current.pos;
    pos += mModulationOffset;
    mDoMtx_stack_c::transS(pos);
    mDoMtx_stack_c::ZXYrotM(mCurAngle);
    mDoMtx_stack_c::scaleM(scale);
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    model->setUserArea((u32)this);

    if (mAnmFlags & ANM_PLAY_BCK) {
        mBckAnm.getBckAnm()->setFrame(mBckAnm.getFrame());
        mpMorf->modelCalc();
    } else {
        mpMorf->modelCalc();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::setMtx() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/setMtx__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B7B9D4-80B7BD60 0035B4 038C+00 2/0 0/0 0/0 .text            setExpressionAnm__11daNpc_zrA_cFib
 */
#ifdef NONMATCHING
// matches with literals
bool daNpc_zrA_c::setExpressionAnm(int i_idx, bool i_modify) {
    J3DAnmTransform* bck_anm = NULL;
    int attr = J3DFrameCtrl::LOOP_ONCE_e;
    mAnmFlags &= ~ANM_EXPRESSION_FLAGS;

    if (l_bckGetParamList[i_idx].fileIdx >= 0) {
        bck_anm = getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[i_idx].arcIdx],
                                    l_bckGetParamList[i_idx].fileIdx);
    }

    bool res = false;
    switch (i_idx) {
    case ANM_NONE:
        res = setExpressionBtp(0);
        break;
    case ANM_F_TALK_A:
        res = setExpressionBtp(0);
        break;
    case ANM_F_TALK_A_SP:
        res = setExpressionBtp(0);
        break;
    case ANM_F_WAIT_SWIM:
        res = setExpressionBtp(0);
        break;
    case ANM_F_TALK_NOMAL:
        res = setExpressionBtp(0);
        break;
    case ANM_FH_TALK_NOMAL:
        res = setExpressionBtp(0);
        attr = J3DFrameCtrl::LOOP_REPEAT_e;
        break;
    case ANM_FH_SADSIT_A:
        res = setExpressionBtp(1);
        attr = J3DFrameCtrl::LOOP_REPEAT_e;
        break;
    case ANM_FH_SADSIT_B:
        res = setExpressionBtp(2);
        attr = J3DFrameCtrl::LOOP_REPEAT_e;
        break;
    case ANM_FH_SADSIT_C:
        res = setExpressionBtp(3);
        attr = J3DFrameCtrl::LOOP_REPEAT_e;
        break;
    case ANM_FH_SADSIT_D:
        res = setExpressionBtp(4);
        attr = J3DFrameCtrl::LOOP_REPEAT_e;
        break;
    case ANM_FH_SADSIT_E:
        res = setExpressionBtp(5);
        attr = J3DFrameCtrl::LOOP_REPEAT_e;
        break;
    case ANM_F_LOOKING_SP:
        res = setExpressionBtp(0);
        break;
    case ANM_FH_LOOKING_SP:
        res = setExpressionBtp(0);
        attr = J3DFrameCtrl::LOOP_REPEAT_e;
        break;
    case ANM_F_LOOKUP:
        res = setExpressionBtp(0);
        break;
    case ANM_FH_LOOKUP:
        res = setExpressionBtp(0);
        attr = J3DFrameCtrl::LOOP_REPEAT_e;
        break;
    case ANM_F_TALK_SWIM_SP:
        res = setExpressionBtp(0);
        break;
    case ANM_F_TALK_B_SP:
        res = setExpressionBtp(0);
        break;
    case ANM_F_SPA_TALK_A:
        res = setExpressionBtp(0);
        break;
    case ANM_FH_SPA_WAIT_A:
        res = setExpressionBtp(0);
        attr = J3DFrameCtrl::LOOP_REPEAT_e;
        break;
    case ANM_F_SPA_TALK_B:
        res = setExpressionBtp(6);
        break;
    case ANM_FH_SPA_WAIT_B:
        res = setExpressionBtp(7);
        attr = J3DFrameCtrl::LOOP_REPEAT_e;
        break;
    default:
        bck_anm = NULL;
        break;
    }

    if (!res) {
        return false;
    }

    if (bck_anm == NULL) {
        return true;
    }

    if (setBckAnm(bck_anm, 1.0f, attr, 0, -1, i_modify)) {
        mAnmFlags |= ANM_PLAY_BCK | ANM_PAUSE_BCK;
        mExpressionLoops = 0;
        return true;
    }

    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daNpc_zrA_c::setExpressionAnm(int param_0, bool param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/setExpressionAnm__11daNpc_zrA_cFib.s"
}
#pragma pop
#endif

/* 80B7BD60-80B7BE74 003940 0114+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpc_zrA_cFi
 */
#ifdef NONMATCHING
// matches with literals
bool daNpc_zrA_c::setExpressionBtp(int i_idx) {
    J3DAnmTexPattern* btp_anm = NULL;
    int attr = J3DFrameCtrl::LOOP_ONCE_e;
    mAnmFlags &= ~(ANM_PLAY_BTP | ANM_PAUSE_BTP | ANM_FLAG_800);

    if (l_btpGetParamList[i_idx].fileIdx >= 0) {
        btp_anm = getTexPtrnAnmP(l_resNames[l_btpGetParamList[i_idx].arcIdx],
                                 l_btpGetParamList[i_idx].fileIdx);
    }

    switch (i_idx) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
        attr = J3DFrameCtrl::LOOP_REPEAT_e;
        break;
    case 6:
        break;
    default:
        btp_anm = NULL;
        break;
    }

    if (btp_anm == NULL) {
        return true;
    }

    if (setBtpAnm(btp_anm, mpMorf->getModel()->getModelData(), 1.0f, attr)) {
        mAnmFlags |= ANM_PLAY_BTP | ANM_PAUSE_BTP;
        if (i_idx == 0) {
            mAnmFlags |= ANM_FLAG_800;
        }
        return true;
    }

    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daNpc_zrA_c::setExpressionBtp(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/setExpressionBtp__11daNpc_zrA_cFi.s"
}
#pragma pop
#endif

/* 80B7BE74-80B7BEA0 003A54 002C+00 1/0 0/0 0/0 .text            setExpression__11daNpc_zrA_cFif */
void daNpc_zrA_c::setExpression(int i_expression, f32 i_morf) {
    if (i_expression >= 0 && i_expression < 0x15) {
        mExpression = i_expression;
        mExpressionMorfOverride = i_morf;
        mExpressionPrevPhase = -1;
        mExpressionPhase = 0;
    }
}

/* 80B7BEA0-80B7C070 003A80 01D0+00 2/0 0/0 0/0 .text            setMotionAnm__11daNpc_zrA_cFif */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrA_c::setMotionAnm(int i_idx, f32 i_morf) {
    J3DAnmTransformKey* bck_anm = NULL;
    J3DAnmTextureSRTKey* btk_anm = NULL;
    int btk_idx = 0;
    int attr = J3DFrameCtrl::LOOP_REPEAT_e;
    mBaseMotionAnm = i_idx;
    
    if (mAcch.ChkWaterIn()) {
        btk_idx = 3;
    }
    
    if (mSoldierType == SOLDIER_SPEAR && mBaseMotionAnm >= 0x29 && mBaseMotionAnm <= 0x33) {
        i_idx += 0xb;
    }
    
    mAnmFlags &= ~(ANM_PLAY_MORF | ANM_PLAY_BTK | ANM_PAUSE_MORF | ANM_PAUSE_BTK);

    if (l_bckGetParamList[i_idx].fileIdx >= 0) {
        bck_anm = getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[i_idx].arcIdx],
                                    l_bckGetParamList[i_idx].fileIdx);
    }

    switch (i_idx) {
    case ANM_SWIM_TURN:
    case ANM_STILL:
    case ANM_SWIM_TALK:
    case ANM_TOBIKOMI_S:
    case ANM_TOBIKOMI_E:
    case ANM_SPA_TALK_B:
    case ANM_SPA_TALK_A:
    case ANM_TALK_A:
    case ANM_DIVE:
    case ANM_DIVE_B:
    case ANM_FLOAT:
    case ANM_FLOAT_B:
    case ANM_STEP:
    case ANM_TALK_A_SP:
    case ANM_DIVE_SP:
    case ANM_DIVE_B_SP:
    case ANM_FLOAT_SP:
    case ANM_FLOAT_B_SP:
    case ANM_STEP_SP:
        attr = J3DFrameCtrl::LOOP_ONCE_e;
        break;
    case ANM_FALLSWIM:
    case ANM_SADSIT_A:
    case ANM_SADSIT_B:
    case ANM_SADSIT_C:
    case ANM_SADSIT_D:
    case ANM_SADSIT_E:
    case ANM_TOBIKOMI_T:
    case ANM_LOOKING_SP:
    case ANM_TALK_SWIM_SP:
    case ANM_TALK_B_SP:
    case ANM_LOOKUP:
    case ANM_SPA_WAIT_B:
    case ANM_SPA_WAIT_A:
    case ANM_WAIT_A:
    case ANM_WALK_A:
    case ANM_SWIM_A:
    case ANM_SWIM_B:
    case ANM_WAIT_SWIM:
    case ANM_WAIT_SP:
    case ANM_WALK_A_SP:
    case ANM_SWIM_A_SP:
    case ANM_SWIM_B_SP:
    case ANM_WAIT_SWIM_SP:
        break;
    default:
        bck_anm = NULL;
        btk_anm = NULL;
        break;
    }

    if (l_btkGetParamList[btk_idx].fileIdx >= 0) {
        btk_anm = getTexSRTKeyAnmP(l_resNames[l_btkGetParamList[btk_idx].arcIdx],
                                   l_btkGetParamList[btk_idx].fileIdx);
    }

    if (btk_anm != NULL && setBtkAnm(btk_anm, mpMorf->getModel()->getModelData(), 1.0f, 2)) {
        mAnmFlags |= ANM_PLAY_BTK | ANM_PAUSE_BTK;
    }
    
    mBtkID = btk_idx;

    if (bck_anm != NULL && setMcaMorfAnm(bck_anm, 1.0f, i_morf, attr, 0, -1)) {
        mAnmFlags |= ANM_PLAY_MORF | ANM_PAUSE_MORF;
        mMotionLoops = 0;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::setMotionAnm(int param_0, f32 param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/setMotionAnm__11daNpc_zrA_cFif.s"
}
#pragma pop
#endif

/* 80B7C070-80B7C308 003C50 0298+00 2/2 0/0 0/0 .text            setMotionWaterAnm__11daNpc_zrA_cFi
 */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrA_c::setMotionWaterAnm(int i_idx) {
    J3DAnmTevRegKey* brk_anm = NULL;
    J3DAnmTextureSRTKey* btk_anm = NULL;
    J3DAnmColor* bpk_anm = NULL;
    int btk_idx = 0;
    int bpk_idx = 0;
    mAnmFlags &= ~(ANM_PLAY_BRK | ANM_PAUSE_BRK);
    mWaterAnmFlags &= ~(ANM_PLAY_BTK | ANM_PAUSE_BTK | ANM_PLAY_BPK | ANM_PAUSE_BPK);

    if (!mTwilight) {
        if (l_brkGetParamList[i_idx].fileIdx >= 0) {
            brk_anm = getTevRegKeyAnmP(l_resNames[l_brkGetParamList[i_idx].arcIdx],
                                       l_brkGetParamList[i_idx].fileIdx);
        }
    }

    switch (i_idx) {
    case 0:
        btk_idx = 2;
        bpk_idx = i_idx;
        break;
    case 1:
        btk_idx = i_idx;
        bpk_idx = i_idx;
        break;
    default:
        brk_anm = NULL;
    }

    mBpkID = bpk_idx;

    if (brk_anm != NULL) {
        if (mBrkAnm.getBrkAnm() == brk_anm) {
            mAnmFlags |= ANM_PLAY_BRK;
        } else if (setBrkAnm(brk_anm, mpMorf->getModel()->getModelData(), 1.0f, 2)) {
            mAnmFlags |= ANM_PLAY_BRK | ANM_PAUSE_BRK;
        }
    }

    if (!mTwilight) {
        if (l_btkGetParamList[btk_idx].fileIdx >= 0) {
            btk_anm = getTexSRTKeyAnmP(l_resNames[l_btkGetParamList[btk_idx].arcIdx],
                                       l_btkGetParamList[btk_idx].fileIdx);
        }
    }

    if (btk_anm != NULL) {
        if (mWaterBtkAnm.getBtkAnm() == btk_anm) {
            mWaterAnmFlags |= ANM_PLAY_BTK;
        } else if (mWaterBtkAnm.init(mpMorf->getModel()->getModelData(),
                                     btk_anm, 1, 2, 1.0f, 0, -1)) {
            mWaterAnmFlags |= ANM_PLAY_BTK | ANM_PAUSE_BTK;
        }
    }

    if (l_bpkGetParamList[bpk_idx].fileIdx >= 0) {
        bpk_anm = static_cast<J3DAnmColor*>(
            dComIfG_getObjectRes(l_resNames[l_bpkGetParamList[bpk_idx].arcIdx],
                                 l_bpkGetParamList[bpk_idx].fileIdx));
    }

    if (bpk_anm != NULL) {
        if (mWaterBpkAnm.getBpkAnm() == bpk_anm) {
            mWaterAnmFlags |= ANM_PLAY_BPK;
        } else if (mWaterBpkAnm.init(mpMorf->getModel()->getModelData(),
                                     bpk_anm, 1, 2, 1.0f, 0, -1)) {
            mWaterAnmFlags |= ANM_PLAY_BPK | ANM_PAUSE_BPK;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::setMotionWaterAnm(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/setMotionWaterAnm__11daNpc_zrA_cFi.s"
}
#pragma pop
#endif

/* 80B7C308-80B7C34C 003EE8 0044+00 1/0 0/0 0/0 .text            setMotion__11daNpc_zrA_cFifi */
void daNpc_zrA_c::setMotion(int i_motion, f32 i_morf, BOOL i_restart) {
    s16 motion = i_motion;
    if (i_restart || mMotion != motion) {
        if (i_motion >= 0 && i_motion < 0x24) {
            mMotion = motion;
            mMotionMorfOverride = i_morf;
            mMotionPrevPhase = -1;
            mMotionPhase = 0;
        }
    }
}

/* 80B7C34C-80B7C354 003F2C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_zrA_cFv */
BOOL daNpc_zrA_c::drawDbgInfo() {
    return false;
}

/* ############################################################################################## */
/* 80B8C588-80B8C5AC 000130 0024+00 1/1 0/0 0/0 .rodata          l_jntNumTbl$6051 */
SECTION_RODATA static u8 const l_jntNumTbl[36] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x19, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0x00, 0x00, 0x04, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B8C588, &l_jntNumTbl);

/* 80B7C354-80B7C44C 003F34 00F8+00 1/0 0/0 0/0 .text            drawOtherMdls__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrA_c::drawOtherMdls() {
    static int const l_jntNumTbl[3][3] = {
        {4, 25, -1},
        {4, -1, -1},
        {-1, -1, -1},
    };

    if (mSoldierType != SOLDIER_NONE) {
        for (int i = 0; i < 3; i++) {
            int jnt_no = l_jntNumTbl[mSoldierType][i];
            J3DModel* model = mpObjectModel[i];
            if (model != NULL && jnt_no >= 0) {
                g_env_light.setLightTevColorType_MAJI(model, &tevStr);
                mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jnt_no));
                mDoMtx_stack_c::scaleM(scale);
                model->setBaseTRMtx(mDoMtx_stack_c::get());
                mDoExt_modelUpdateDL(model);
                dComIfGd_addRealShadow(mShadowKey, model);
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::drawOtherMdls() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/drawOtherMdls__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B7C44C-80B7C4B4 00402C 0068+00 2/1 0/0 0/0 .text getTypeFromArgument__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with data
daNpc_zrA_c::Type daNpc_zrA_c::getTypeFromArgument() {
    switch (subtype) {
    case 0:
        return TYPE_WAIT;
    case 1:
        return TYPE_SWIM;
    case 2:
        return TYPE_WATERFALL;
    case 3:
        return TYPE_RIVER;
    case 4:
        return TYPE_TOBIKOMI;
    case 5:
        return TYPE_SEARCH;
    case 6:
        return TYPE_SPA;
    default:
        return TYPE_WAIT;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_zrA_c::Type daNpc_zrA_c::getTypeFromArgument() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/getTypeFromArgument__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B7C4B4-80B7C500 004094 004C+00 1/1 0/0 0/0 .text getSoldierTypeFromParam__11daNpc_zrA_cFv */
daNpc_zrA_c::SoldierType daNpc_zrA_c::getSoldierTypeFromParam() {
    if (mType == TYPE_WATERFALL || mType == TYPE_SEARCH) {
        return SOLDIER_NOSPEAR;
    }

    if (mType == TYPE_TOBIKOMI) {
        return SOLDIER_NONE;
    }

    switch (fopAcM_GetParam(this) & 0xff) {
    case 0:
        return SOLDIER_SPEAR;
    default:
        return SOLDIER_NONE;
    }
}

/* 80B7C500-80B7C524 0040E0 0024+00 1/1 0/0 0/0 .text getGameModeFromParam__11daNpc_zrA_cFv */
daNpc_zrA_c::GameMode daNpc_zrA_c::getGameModeFromParam() {
    switch ((fopAcM_GetParam(this) >> 0x14) & 0xf) {
    case 1:
        return GAME_MODE_3;
    default:
        return GAME_MODE_0;
    }
}

/* 80B7C524-80B7C5E4 004104 00C0+00 1/1 0/0 0/0 .text getActionTypeFromParam__11daNpc_zrA_cFv */
daNpc_zrA_c::ActionType daNpc_zrA_c::getActionTypeFromParam() {
    u8 param = (fopAcM_GetParam(this) >> 0x10) & 0xf;
    if (mType == TYPE_WAIT) {
        switch (param) {
        case 1:
            return ACT_TYPE_1;
        case 2:
            return ACT_TYPE_2;
        case 3:
            return ACT_TYPE_3;
        case 4:
            return ACT_TYPE_4;
        case 5:
            return ACT_TYPE_5;
        case 6:
            return ACT_TYPE_6;
        default:
            return ACT_TYPE_0;
        }
    } else if (mType == TYPE_SPA) {
        switch (param) {
        case 1:
            return ACT_TYPE_2;
        case 2:
            return ACT_TYPE_3;
        default:
            return ACT_TYPE_0;
        }
    } else {
        return (ActionType)param;
    }
}

/* 80B7C5E4-80B7C614 0041C4 0030+00 3/3 0/0 0/0 .text getMultiModeFromParam__11daNpc_zrA_cFv */
u8 daNpc_zrA_c::getMultiModeFromParam() {
    u8 param = (fopAcM_GetParam(this) >> 0x14) & 0xf;
    if (mType != 0) {
        return 0;
    }
    if (param == 0xf) {
        param = 0;
    }
    return param;
}

/* 80B7C614-80B7C644 0041F4 0030+00 2/2 0/0 0/0 .text getMultiNoFromParam__11daNpc_zrA_cFv */
u8 daNpc_zrA_c::getMultiNoFromParam() {
    u8 param = (fopAcM_GetParam(this) >> 0x18) & 0xf;
    if (mType != 0) {
        return 0;
    }
    return param == 0xf ? (u8)0 : param;
}

/* ############################################################################################## */
/* 80B8CD30-80B8CD30 0008D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B8CE77 = "F_SP115";
#pragma pop

/* 80B7C644-80B7C71C 004224 00D8+00 1/1 0/0 0/0 .text            isDelete__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::isDelete() {
    if ((mType == TYPE_SEARCH && dComIfGs_isSwitch(mSwitch1, fopAcM_GetRoomNo(this)))
        || (mType == TYPE_SPA && !daNpcF_chkEvtBit(0x10a))
        || (mType == TYPE_RIVER && mGameMode == GAME_MODE_3
            && (strcmp(dComIfGp_getStartStageName(), "F_SP115") || fopAcM_GetRoomNo(this) != 0
                || dComIfGs_getStartPoint() != 2)))
    {
        return true;
    }
    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::isDelete() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/isDelete__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8C5AC-80B8C5B0 000154 0004+00 0/5 0/0 0/0 .rodata          @6278 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6278 = 100.0f;
COMPILER_STRIP_GATE(0x80B8C5AC, &lit_6278);
#pragma pop

/* 80B7C71C-80B7CA8C 0042FC 0370+00 1/1 0/0 0/0 .text            reset__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrA_c::reset() {
    initialize();
    mpMatAnm->initialize();
    mPath.initialize();
    if (mType != TYPE_TOBIKOMI
        && mPath.setPathInfo(getPathNoFromParam(), fopAcM_GetRoomNo(this), 0))
    {
        mPath.setRange(100.0f);
    }
    mLookat.initialize();
    for (int i = 0; i < 3; i++) {
        mActorMngr[i].initialize();
    }

    mpNextActionFn = NULL;
    mpActionFn = NULL;
    field_0x14d0 = 0;
    field_0x14d4 = 0;
    mSwimTurnTimer = 0;
    field_0x14dc = 0;
    mLookMode = -1;
    mMode = 0;
    mHide = false;
    mItemID = -1;

    current.pos = home.pos;
    old.pos = current.pos;
    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;
    speedF = 0.0f;
    speed.setall(0.0f);

    if ((mType == TYPE_SWIM && mPath.getPathInfo() != NULL) || mType == TYPE_WATERFALL) {
        fopAcM_OnStatus(this, 0x8000000);
    }

    mBtkID = 0;
    field_0x1510 = 0;

    if (mType == TYPE_RIVER) {
        mStaffName = l_myName[2];
    } else if (mType == TYPE_WATERFALL) {
        mStaffName = l_myName[3];
    } else {
        mStaffName = l_myName[0];
    }

    mSpinAngle = 0;
    mSpinTimer = 0;
    mSwimSpeedScale = 1.0f;
    mSwimSpeedF = mSwimSpeedScale * daNpc_zrA_Param_c::m.mSwimSpeed;
    mSwimMode = SWIM_WAIT;
    field_0x1521 = false;
    mWaistAngle.set(0, 0, 0);
    mSwimAngleCalc = current.angle;
    field_0x153c = false;
    field_0x153d = false;
    field_0x153e = false;
    mSwimFastTurnTimer = 0;
    mSwimSpeed.set(0.0f, 0.0f, 0.0f);
    mEvasionTimer = 0;
    mCheckSwimTurnTimer = 0;
    mCheckSwimTurn = false;
    mResetWaistAngle = false;
    field_0x1550 = false;
    field_0x1554 = 0;
    mModulationOffset.set(0.0f, 0.0f, 0.0f);
    mModulationParam = 210;
    mActionType = getActionTypeFromParam();
    mIsAboveWater = false;
    mIsTurning = false;
    mActionSelect = 0;
    mMeterCount = 0;
    mRiverPathIdx = 0;
    field_0x15c0 = 0;
    field_0x15c1 = false;
    mWaterAnmFlags = 0;

    if (mType == TYPE_SEARCH) {
        if (getNoFromParam() == 0) {
            eventInfo.setIdx(1);
        } else {
            eventInfo.setIdx(2);
        }
    } else if (mType == TYPE_WAIT && getMultiModeFromParam() != 0) {
        eventInfo.setIdx(getMultiNoFromParam());
    }

    field_0x9ee = 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::reset() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/reset__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8C5B0-80B8C5BC 000158 000C+00 0/1 0/0 0/0 .rodata          @6282 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6282[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8C5B0, &lit_6282);
#pragma pop

/* 80B8C5BC-80B8C5C8 000164 000C+00 0/1 0/0 0/0 .rodata          @6283 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6283[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C5BC, &lit_6283);
#pragma pop

/* 80B8C5C8-80B8C5D0 000170 0008+00 0/1 0/0 0/0 .rodata          @6284 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6284[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C5C8, &lit_6284);
#pragma pop

/* 80B8C5D0-80B8C5DC 000178 000C+00 0/1 0/0 0/0 .rodata          @6285 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6285[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C5D0, &lit_6285);
#pragma pop

/* 80B8C5DC-80B8C5E0 000184 0004+00 0/1 0/0 0/0 .rodata          @6286 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6286[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C5DC, &lit_6286);
#pragma pop

/* 80B8C5E0-80B8C5EC 000188 000C+00 0/1 0/0 0/0 .rodata          @6287 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6287[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C5E0, &lit_6287);
#pragma pop

/* 80B8C5EC-80B8C5F0 000194 0004+00 0/1 0/0 0/0 .rodata          @6288 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6288[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C5EC, &lit_6288);
#pragma pop

/* 80B8C5F0-80B8C5FC 000198 000C+00 0/1 0/0 0/0 .rodata          @6289 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6289[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C5F0, &lit_6289);
#pragma pop

/* 80B8C5FC-80B8C600 0001A4 0004+00 0/1 0/0 0/0 .rodata          @6290 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6290[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C5FC, &lit_6290);
#pragma pop

/* 80B8C600-80B8C60C 0001A8 000C+00 0/1 0/0 0/0 .rodata          @6291 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6291[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C600, &lit_6291);
#pragma pop

/* 80B8C60C-80B8C610 0001B4 0004+00 0/1 0/0 0/0 .rodata          @6292 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6292[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C60C, &lit_6292);
#pragma pop

/* 80B8C610-80B8C61C 0001B8 000C+00 0/1 0/0 0/0 .rodata          @6293 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6293[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C610, &lit_6293);
#pragma pop

/* 80B8C61C-80B8C620 0001C4 0004+00 0/1 0/0 0/0 .rodata          @6294 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6294[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C61C, &lit_6294);
#pragma pop

/* 80B8C620-80B8C62C 0001C8 000C+00 0/1 0/0 0/0 .rodata          @6295 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6295[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8C620, &lit_6295);
#pragma pop

/* 80B8C62C-80B8C638 0001D4 000C+00 0/1 0/0 0/0 .rodata          @6296 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6296[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C62C, &lit_6296);
#pragma pop

/* 80B8C638-80B8C640 0001E0 0008+00 0/1 0/0 0/0 .rodata          @6297 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6297[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C638, &lit_6297);
#pragma pop

/* 80B8C640-80B8C64C 0001E8 000C+00 0/1 0/0 0/0 .rodata          @6298 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6298[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8C640, &lit_6298);
#pragma pop

/* 80B8C64C-80B8C658 0001F4 000C+00 0/1 0/0 0/0 .rodata          @6299 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6299[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C64C, &lit_6299);
#pragma pop

/* 80B8C658-80B8C660 000200 0008+00 0/1 0/0 0/0 .rodata          @6300 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6300[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C658, &lit_6300);
#pragma pop

/* 80B8C660-80B8C66C 000208 000C+00 0/1 0/0 0/0 .rodata          @6301 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6301[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8C660, &lit_6301);
#pragma pop

/* 80B8C66C-80B8C678 000214 000C+00 0/1 0/0 0/0 .rodata          @6302 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6302[12] = {
    0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C66C, &lit_6302);
#pragma pop

/* 80B8C678-80B8C680 000220 0008+00 0/1 0/0 0/0 .rodata          @6303 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6303[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C678, &lit_6303);
#pragma pop

/* 80B8C680-80B8C68C 000228 000C+00 0/1 0/0 0/0 .rodata          @6304 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6304[12] = {
    0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8C680, &lit_6304);
#pragma pop

/* 80B8C68C-80B8C698 000234 000C+00 0/1 0/0 0/0 .rodata          @6305 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6305[12] = {
    0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C68C, &lit_6305);
#pragma pop

/* 80B8C698-80B8C6A0 000240 0008+00 0/1 0/0 0/0 .rodata          @6306 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6306[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C698, &lit_6306);
#pragma pop

/* 80B8C6A0-80B8C6AC 000248 000C+00 0/1 0/0 0/0 .rodata          @6307 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6307[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8C6A0, &lit_6307);
#pragma pop

/* 80B8C6AC-80B8C6B8 000254 000C+00 0/1 0/0 0/0 .rodata          @6308 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6308[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C6AC, &lit_6308);
#pragma pop

/* 80B8C6B8-80B8C6C0 000260 0008+00 0/1 0/0 0/0 .rodata          @6309 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6309[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C6B8, &lit_6309);
#pragma pop

/* 80B8C6C0-80B8C6CC 000268 000C+00 0/1 0/0 0/0 .rodata          @6310 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6310[12] = {
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8C6C0, &lit_6310);
#pragma pop

/* 80B8C6CC-80B8C6D8 000274 000C+00 0/1 0/0 0/0 .rodata          @6311 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6311[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C6CC, &lit_6311);
#pragma pop

/* 80B8C6D8-80B8C6E0 000280 0008+00 0/1 0/0 0/0 .rodata          @6312 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6312[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C6D8, &lit_6312);
#pragma pop

/* 80B8C6E0-80B8C6EC 000288 000C+00 0/1 0/0 0/0 .rodata          @6313 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6313[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8C6E0, &lit_6313);
#pragma pop

/* 80B8C6EC-80B8C6F8 000294 000C+00 0/1 0/0 0/0 .rodata          @6314 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6314[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C6EC, &lit_6314);
#pragma pop

/* 80B8C6F8-80B8C700 0002A0 0008+00 0/1 0/0 0/0 .rodata          @6315 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6315[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C6F8, &lit_6315);
#pragma pop

/* 80B8C700-80B8C70C 0002A8 000C+00 0/1 0/0 0/0 .rodata          @6316 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6316[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8C700, &lit_6316);
#pragma pop

/* 80B8C70C-80B8C718 0002B4 000C+00 0/1 0/0 0/0 .rodata          @6317 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6317[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C70C, &lit_6317);
#pragma pop

/* 80B8C718-80B8C720 0002C0 0008+00 0/1 0/0 0/0 .rodata          @6318 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6318[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C718, &lit_6318);
#pragma pop

/* 80B8C720-80B8C72C 0002C8 000C+00 0/1 0/0 0/0 .rodata          @6319 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6319[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8C720, &lit_6319);
#pragma pop

/* 80B8C72C-80B8C738 0002D4 000C+00 0/1 0/0 0/0 .rodata          @6320 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6320[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C72C, &lit_6320);
#pragma pop

/* 80B8C738-80B8C740 0002E0 0008+00 0/1 0/0 0/0 .rodata          @6321 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6321[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C738, &lit_6321);
#pragma pop

/* 80B8C740-80B8C74C 0002E8 000C+00 0/1 0/0 0/0 .rodata          @6322 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6322[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C740, &lit_6322);
#pragma pop

/* 80B8C74C-80B8C750 0002F4 0004+00 0/1 0/0 0/0 .rodata          @6323 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6323[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C74C, &lit_6323);
#pragma pop

/* 80B8C750-80B8C75C 0002F8 000C+00 0/1 0/0 0/0 .rodata          @6324 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6324[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C750, &lit_6324);
#pragma pop

/* 80B8C75C-80B8C760 000304 0004+00 0/1 0/0 0/0 .rodata          @6325 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6325[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C75C, &lit_6325);
#pragma pop

/* 80B8C760-80B8C76C 000308 000C+00 0/1 0/0 0/0 .rodata          @6326 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6326[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C760, &lit_6326);
#pragma pop

/* 80B8C76C-80B8C770 000314 0004+00 0/1 0/0 0/0 .rodata          @6327 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6327[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C76C, &lit_6327);
#pragma pop

/* 80B8C770-80B8C77C 000318 000C+00 0/1 0/0 0/0 .rodata          @6328 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6328[12] = {
    0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C770, &lit_6328);
#pragma pop

/* 80B8C77C-80B8C780 000324 0004+00 0/1 0/0 0/0 .rodata          @6329 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6329[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C77C, &lit_6329);
#pragma pop

/* 80B8C780-80B8C78C 000328 000C+00 0/1 0/0 0/0 .rodata          @6330 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6330[12] = {
    0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C780, &lit_6330);
#pragma pop

/* 80B8C78C-80B8C790 000334 0004+00 0/1 0/0 0/0 .rodata          @6331 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6331[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C78C, &lit_6331);
#pragma pop

/* 80B8C790-80B8C79C 000338 000C+00 0/1 0/0 0/0 .rodata          @6332 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6332[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C790, &lit_6332);
#pragma pop

/* 80B8C79C-80B8C7A0 000344 0004+00 0/1 0/0 0/0 .rodata          @6333 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6333[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C79C, &lit_6333);
#pragma pop

/* 80B7CA8C-80B7D0FC 00466C 0670+00 1/1 0/0 0/0 .text            playExpression__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrA_c::playExpression() {
    daNpcF_anmPlayData dat0a = {ANM_F_TALK_NOMAL, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat0b = {ANM_FH_TALK_NOMAL, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat0[2] = {&dat0a, &dat0b};
    daNpcF_anmPlayData dat1 = {ANM_FH_SADSIT_A, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};
    daNpcF_anmPlayData dat2 = {ANM_FH_SADSIT_B, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};
    daNpcF_anmPlayData dat3 = {ANM_FH_SADSIT_C, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat3[1] = {&dat3};
    daNpcF_anmPlayData dat4 = {ANM_FH_SADSIT_D, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4};
    daNpcF_anmPlayData dat5 = {ANM_FH_SADSIT_E, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5};
    daNpcF_anmPlayData dat6a = {ANM_F_LOOKING_SP, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat6b = {ANM_FH_LOOKING_SP, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat6[2] = {&dat6a, &dat6b};
    daNpcF_anmPlayData dat7a = {ANM_F_LOOKUP, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat7b = {ANM_FH_LOOKUP, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat7[2] = {&dat7a, &dat7b};
    daNpcF_anmPlayData dat8a = {ANM_F_SPA_TALK_A, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat8b = {ANM_FH_SPA_WAIT_A, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat8[2] = {&dat8a, &dat8b};
    daNpcF_anmPlayData dat9a = {ANM_F_SPA_TALK_B, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat9b = {ANM_FH_SPA_WAIT_B, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat9[2] = {&dat9a, &dat9b};
    daNpcF_anmPlayData dat10a = {ANM_F_TALK_SWIM_SP, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat10b = {ANM_NONE, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat10[2] = {&dat10a, &dat10b};
    daNpcF_anmPlayData dat11a = {ANM_F_TALK_B_SP, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat11b = {ANM_NONE, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat11[2] = {&dat11a, &dat11b};
    daNpcF_anmPlayData dat12a = {ANM_F_TALK_A, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat12b = {ANM_NONE, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat12[2] = {&dat12a, &dat12b};
    daNpcF_anmPlayData dat13a = {ANM_F_WAIT_SWIM, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat13b = {ANM_NONE, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat13[2] = {&dat13a, &dat13b};
    daNpcF_anmPlayData dat14a = {ANM_F_TALK_A_SP, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat14b = {ANM_NONE, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat14[2] = {&dat14a, &dat14b};
    daNpcF_anmPlayData dat15 = {ANM_FH_TALK_NOMAL, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat15[1] = {&dat15};
    daNpcF_anmPlayData dat16 = {ANM_FH_LOOKING_SP, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat16[1] = {&dat16};
    daNpcF_anmPlayData dat17 = {ANM_FH_LOOKUP, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat17[1] = {&dat17};
    daNpcF_anmPlayData dat18 = {ANM_FH_SPA_WAIT_A, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat18[1] = {&dat18};
    daNpcF_anmPlayData dat19 = {ANM_FH_SPA_WAIT_B, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat19[1] = {&dat19};
    daNpcF_anmPlayData dat20 = {ANM_NONE, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat20[1] = {&dat20};
    daNpcF_anmPlayData** ppDat[21] = {
        pDat0, pDat1, pDat2, pDat3, pDat4, pDat5, pDat6, pDat7, pDat8, pDat9, pDat10, pDat11,
        pDat12, pDat13, pDat14, pDat15, pDat16, pDat17, pDat18, pDat19, pDat20,
    };
    if (mExpression >= 0 && mExpression < 0x15) {
        playExpressionAnm(ppDat);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::playExpression() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/playExpression__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8C7A0-80B8C7F4 000348 0054+00 0/0 0/0 0/0 .rodata          @6334 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6334[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C7A0, &lit_6334);
#pragma pop

/* 80B8C7F4-80B8C800 00039C 000C+00 0/1 0/0 0/0 .rodata          @6375 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6375[12] = {
    0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C7F4, &lit_6375);
#pragma pop

/* 80B8C800-80B8C804 0003A8 0004+00 0/1 0/0 0/0 .rodata          @6376 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6376[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C800, &lit_6376);
#pragma pop

/* 80B8C804-80B8C810 0003AC 000C+00 0/1 0/0 0/0 .rodata          @6377 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6377[12] = {
    0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C804, &lit_6377);
#pragma pop

/* 80B8C810-80B8C814 0003B8 0004+00 0/1 0/0 0/0 .rodata          @6378 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6378[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C810, &lit_6378);
#pragma pop

/* 80B8C814-80B8C820 0003BC 000C+00 0/1 0/0 0/0 .rodata          @6379 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6379[12] = {
    0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8C814, &lit_6379);
#pragma pop

/* 80B8C820-80B8C82C 0003C8 000C+00 0/1 0/0 0/0 .rodata          @6380 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6380[12] = {
    0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C820, &lit_6380);
#pragma pop

/* 80B8C82C-80B8C834 0003D4 0008+00 0/1 0/0 0/0 .rodata          @6381 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6381[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C82C, &lit_6381);
#pragma pop

/* 80B8C834-80B8C840 0003DC 000C+00 0/1 0/0 0/0 .rodata          @6382 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6382[12] = {
    0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C834, &lit_6382);
#pragma pop

/* 80B8C840-80B8C844 0003E8 0004+00 0/1 0/0 0/0 .rodata          @6383 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6383[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C840, &lit_6383);
#pragma pop

/* 80B8C844-80B8C850 0003EC 000C+00 0/1 0/0 0/0 .rodata          @6384 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6384[12] = {
    0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C844, &lit_6384);
#pragma pop

/* 80B8C850-80B8C854 0003F8 0004+00 0/1 0/0 0/0 .rodata          @6385 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6385[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C850, &lit_6385);
#pragma pop

/* 80B8C854-80B8C860 0003FC 000C+00 0/1 0/0 0/0 .rodata          @6386 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6386[12] = {
    0x00, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8C854, &lit_6386);
#pragma pop

/* 80B8C860-80B8C86C 000408 000C+00 0/1 0/0 0/0 .rodata          @6387 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6387[12] = {
    0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C860, &lit_6387);
#pragma pop

/* 80B8C86C-80B8C874 000414 0008+00 0/1 0/0 0/0 .rodata          @6388 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6388[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C86C, &lit_6388);
#pragma pop

/* 80B8C874-80B8C880 00041C 000C+00 0/1 0/0 0/0 .rodata          @6389 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6389[12] = {
    0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C874, &lit_6389);
#pragma pop

/* 80B8C880-80B8C884 000428 0004+00 0/1 0/0 0/0 .rodata          @6390 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6390[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C880, &lit_6390);
#pragma pop

/* 80B8C884-80B8C890 00042C 000C+00 0/1 0/0 0/0 .rodata          @6391 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6391[12] = {
    0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C884, &lit_6391);
#pragma pop

/* 80B8C890-80B8C894 000438 0004+00 0/1 0/0 0/0 .rodata          @6392 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6392[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C890, &lit_6392);
#pragma pop

/* 80B8C894-80B8C8A0 00043C 000C+00 0/1 0/0 0/0 .rodata          @6393 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6393[12] = {
    0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C894, &lit_6393);
#pragma pop

/* 80B8C8A0-80B8C8A4 000448 0004+00 0/1 0/0 0/0 .rodata          @6394 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6394[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C8A0, &lit_6394);
#pragma pop

/* 80B8C8A4-80B8C8B0 00044C 000C+00 0/1 0/0 0/0 .rodata          @6395 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6395[12] = {
    0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C8A4, &lit_6395);
#pragma pop

/* 80B8C8B0-80B8C8B4 000458 0004+00 0/1 0/0 0/0 .rodata          @6396 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6396[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C8B0, &lit_6396);
#pragma pop

/* 80B8C8B4-80B8C8C0 00045C 000C+00 0/1 0/0 0/0 .rodata          @6397 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6397[12] = {
    0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C8B4, &lit_6397);
#pragma pop

/* 80B8C8C0-80B8C8C4 000468 0004+00 0/1 0/0 0/0 .rodata          @6398 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6398[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C8C0, &lit_6398);
#pragma pop

/* 80B8C8C4-80B8C8D0 00046C 000C+00 0/1 0/0 0/0 .rodata          @6399 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6399[12] = {
    0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C8C4, &lit_6399);
#pragma pop

/* 80B8C8D0-80B8C8D4 000478 0004+00 0/1 0/0 0/0 .rodata          @6400 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6400[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C8D0, &lit_6400);
#pragma pop

/* 80B8C8D4-80B8C8E0 00047C 000C+00 0/1 0/0 0/0 .rodata          @6401 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6401[12] = {
    0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C8D4, &lit_6401);
#pragma pop

/* 80B8C8E0-80B8C8E4 000488 0004+00 0/1 0/0 0/0 .rodata          @6402 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6402[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C8E0, &lit_6402);
#pragma pop

/* 80B8C8E4-80B8C8F0 00048C 000C+00 0/1 0/0 0/0 .rodata          @6403 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6403[12] = {
    0x00, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8C8E4, &lit_6403);
#pragma pop

/* 80B8C8F0-80B8C8FC 000498 000C+00 0/1 0/0 0/0 .rodata          @6404 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6404[12] = {
    0x00, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C8F0, &lit_6404);
#pragma pop

/* 80B8C8FC-80B8C904 0004A4 0008+00 0/1 0/0 0/0 .rodata          @6405 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6405[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C8FC, &lit_6405);
#pragma pop

/* 80B8C904-80B8C910 0004AC 000C+00 0/1 0/0 0/0 .rodata          @6406 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6406[12] = {
    0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8C904, &lit_6406);
#pragma pop

/* 80B8C910-80B8C91C 0004B8 000C+00 0/1 0/0 0/0 .rodata          @6407 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6407[12] = {
    0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C910, &lit_6407);
#pragma pop

/* 80B8C91C-80B8C924 0004C4 0008+00 0/1 0/0 0/0 .rodata          @6408 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6408[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C91C, &lit_6408);
#pragma pop

/* 80B8C924-80B8C930 0004CC 000C+00 0/1 0/0 0/0 .rodata          @6409 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6409[12] = {
    0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8C924, &lit_6409);
#pragma pop

/* 80B8C930-80B8C93C 0004D8 000C+00 0/1 0/0 0/0 .rodata          @6410 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6410[12] = {
    0x00, 0x39, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C930, &lit_6410);
#pragma pop

/* 80B8C93C-80B8C944 0004E4 0008+00 0/1 0/0 0/0 .rodata          @6411 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6411[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C93C, &lit_6411);
#pragma pop

/* 80B8C944-80B8C950 0004EC 000C+00 0/1 0/0 0/0 .rodata          @6412 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6412[12] = {
    0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8C944, &lit_6412);
#pragma pop

/* 80B8C950-80B8C95C 0004F8 000C+00 0/1 0/0 0/0 .rodata          @6413 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6413[12] = {
    0x00, 0x34, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C950, &lit_6413);
#pragma pop

/* 80B8C95C-80B8C964 000504 0008+00 0/1 0/0 0/0 .rodata          @6414 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6414[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C95C, &lit_6414);
#pragma pop

/* 80B8C964-80B8C970 00050C 000C+00 0/1 0/0 0/0 .rodata          @6415 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6415[12] = {
    0x00, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8C964, &lit_6415);
#pragma pop

/* 80B8C970-80B8C97C 000518 000C+00 0/1 0/0 0/0 .rodata          @6416 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6416[12] = {
    0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C970, &lit_6416);
#pragma pop

/* 80B8C97C-80B8C984 000524 0008+00 0/1 0/0 0/0 .rodata          @6417 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6417[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C97C, &lit_6417);
#pragma pop

/* 80B8C984-80B8C990 00052C 000C+00 0/1 0/0 0/0 .rodata          @6418 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6418[12] = {
    0x00, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C984, &lit_6418);
#pragma pop

/* 80B8C990-80B8C994 000538 0004+00 0/1 0/0 0/0 .rodata          @6419 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6419[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C990, &lit_6419);
#pragma pop

/* 80B8C994-80B8C9A0 00053C 000C+00 0/1 0/0 0/0 .rodata          @6420 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6420[12] = {
    0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C994, &lit_6420);
#pragma pop

/* 80B8C9A0-80B8C9A4 000548 0004+00 0/1 0/0 0/0 .rodata          @6421 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6421[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C9A0, &lit_6421);
#pragma pop

/* 80B8C9A4-80B8C9B0 00054C 000C+00 0/1 0/0 0/0 .rodata          @6422 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6422[12] = {
    0x00, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C9A4, &lit_6422);
#pragma pop

/* 80B8C9B0-80B8C9B4 000558 0004+00 0/1 0/0 0/0 .rodata          @6423 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6423[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C9B0, &lit_6423);
#pragma pop

/* 80B8C9B4-80B8C9C0 00055C 000C+00 0/1 0/0 0/0 .rodata          @6424 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6424[12] = {
    0x00, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C9B4, &lit_6424);
#pragma pop

/* 80B8C9C0-80B8C9C4 000568 0004+00 0/1 0/0 0/0 .rodata          @6425 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6425[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C9C0, &lit_6425);
#pragma pop

/* 80B8C9C4-80B8C9D0 00056C 000C+00 0/1 0/0 0/0 .rodata          @6426 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6426[12] = {
    0x00, 0x2D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C9C4, &lit_6426);
#pragma pop

/* 80B8C9D0-80B8C9D4 000578 0004+00 0/1 0/0 0/0 .rodata          @6427 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6427[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8C9D0, &lit_6427);
#pragma pop

/* 80B8C9D4-80B8C9E0 00057C 000C+00 0/1 0/0 0/0 .rodata          @6428 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6428[12] = {
    0x00, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8C9D4, &lit_6428);
#pragma pop

/* 80B8C9E0-80B8C9EC 000588 000C+00 0/1 0/0 0/0 .rodata          @6429 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6429[12] = {
    0x00, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C9E0, &lit_6429);
#pragma pop

/* 80B8C9EC-80B8C9F4 000594 0008+00 0/1 0/0 0/0 .rodata          @6430 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6430[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8C9EC, &lit_6430);
#pragma pop

/* 80B8C9F4-80B8CA00 00059C 000C+00 0/1 0/0 0/0 .rodata          @6431 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6431[12] = {
    0x00, 0x30, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8C9F4, &lit_6431);
#pragma pop

/* 80B8CA00-80B8CA0C 0005A8 000C+00 0/1 0/0 0/0 .rodata          @6432 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6432[12] = {
    0x00, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CA00, &lit_6432);
#pragma pop

/* 80B8CA0C-80B8CA14 0005B4 0008+00 0/1 0/0 0/0 .rodata          @6433 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6433[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CA0C, &lit_6433);
#pragma pop

/* 80B8CA14-80B8CA20 0005BC 000C+00 0/1 0/0 0/0 .rodata          @6434 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6434[12] = {
    0x00, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8CA14, &lit_6434);
#pragma pop

/* 80B8CA20-80B8CA2C 0005C8 000C+00 0/1 0/0 0/0 .rodata          @6435 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6435[12] = {
    0x00, 0x2D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CA20, &lit_6435);
#pragma pop

/* 80B8CA2C-80B8CA34 0005D4 0008+00 0/1 0/0 0/0 .rodata          @6436 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6436[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CA2C, &lit_6436);
#pragma pop

/* 80B8CA34-80B8CA40 0005DC 000C+00 0/1 0/0 0/0 .rodata          @6437 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6437[12] = {
    0x00, 0x30, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8CA34, &lit_6437);
#pragma pop

/* 80B8CA40-80B8CA4C 0005E8 000C+00 0/1 0/0 0/0 .rodata          @6438 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6438[12] = {
    0x00, 0x2D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CA40, &lit_6438);
#pragma pop

/* 80B8CA4C-80B8CA54 0005F4 0008+00 0/1 0/0 0/0 .rodata          @6439 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6439[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CA4C, &lit_6439);
#pragma pop

/* 80B8CA54-80B8CA60 0005FC 000C+00 0/1 0/0 0/0 .rodata          @6440 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6440[12] = {
    0x00, 0x33, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CA54, &lit_6440);
#pragma pop

/* 80B8CA60-80B8CA64 000608 0004+00 0/1 0/0 0/0 .rodata          @6441 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6441[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8CA60, &lit_6441);
#pragma pop

/* 80B8CA64-80B8CA70 00060C 000C+00 0/1 0/0 0/0 .rodata          @6442 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6442[12] = {
    0x00, 0x31, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8CA64, &lit_6442);
#pragma pop

/* 80B8CA70-80B8CA7C 000618 000C+00 0/1 0/0 0/0 .rodata          @6443 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6443[12] = {
    0x00, 0x2E, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CA70, &lit_6443);
#pragma pop

/* 80B8CA7C-80B8CA84 000624 0008+00 0/1 0/0 0/0 .rodata          @6444 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6444[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CA7C, &lit_6444);
#pragma pop

/* 80B8CA84-80B8CA90 00062C 000C+00 0/1 0/0 0/0 .rodata          @6445 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6445[12] = {
    0x00, 0x32, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8CA84, &lit_6445);
#pragma pop

/* 80B8CA90-80B8CA9C 000638 000C+00 0/1 0/0 0/0 .rodata          @6446 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6446[12] = {
    0x00, 0x2E, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CA90, &lit_6446);
#pragma pop

/* 80B8CA9C-80B8CAA4 000644 0008+00 0/1 0/0 0/0 .rodata          @6447 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6447[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CA9C, &lit_6447);
#pragma pop

/* 80B8CAA4-80B8CAB0 00064C 000C+00 0/1 0/0 0/0 .rodata          @6448 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6448[12] = {
    0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8CAA4, &lit_6448);
#pragma pop

/* 80B8CAB0-80B8CABC 000658 000C+00 0/1 0/0 0/0 .rodata          @6449 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6449[12] = {
    0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CAB0, &lit_6449);
#pragma pop

/* 80B8CABC-80B8CAC4 000664 0008+00 0/1 0/0 0/0 .rodata          @6450 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6450[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CABC, &lit_6450);
#pragma pop

/* 80B8CAC4-80B8CAD0 00066C 000C+00 0/1 0/0 0/0 .rodata          @6451 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6451[12] = {
    0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CAC4, &lit_6451);
#pragma pop

/* 80B8CAD0-80B8CAD4 000678 0004+00 0/1 0/0 0/0 .rodata          @6452 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6452[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8CAD0, &lit_6452);
#pragma pop

/* 80B8CAD4-80B8CAE0 00067C 000C+00 0/1 0/0 0/0 .rodata          @6453 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6453[12] = {
    0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CAD4, &lit_6453);
#pragma pop

/* 80B8CAE0-80B8CAE4 000688 0004+00 0/1 0/0 0/0 .rodata          @6454 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6454[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8CAE0, &lit_6454);
#pragma pop

/* 80B8CAE4-80B8CAF0 00068C 000C+00 0/1 0/0 0/0 .rodata          @6455 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6455[12] = {
    0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B8CAE4, &lit_6455);
#pragma pop

/* 80B8CAF0-80B8CAFC 000698 000C+00 0/1 0/0 0/0 .rodata          @6456 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6456[12] = {
    0x00, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CAF0, &lit_6456);
#pragma pop

/* 80B8CAFC-80B8CB04 0006A4 0008+00 0/1 0/0 0/0 .rodata          @6457 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6457[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CAFC, &lit_6457);
#pragma pop

/* 80B8CB04-80B8CB10 0006AC 000C+00 0/1 0/0 0/0 .rodata          @6458 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6458[12] = {
    0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CB04, &lit_6458);
#pragma pop

/* 80B8CB10-80B8CB14 0006B8 0004+00 0/1 0/0 0/0 .rodata          @6459 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6459[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B8CB10, &lit_6459);
#pragma pop

/* 80B8CB14-80B8CBA4 0006BC 0090+00 0/0 0/0 0/0 .rodata          @6460 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6460[144] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CB14, &lit_6460);
#pragma pop

/* 80B8CBA4-80B8CBA8 00074C 0004+00 1/6 0/0 0/0 .rodata          @6507 */
SECTION_RODATA static f32 const lit_6507 = 0.5f;
COMPILER_STRIP_GATE(0x80B8CBA4, &lit_6507);

/* 80B7D0FC-80B7DAF4 004CDC 09F8+00 1/1 0/0 0/0 .text            playMotion__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrA_c::playMotion() {
    daNpcF_anmPlayData dat0 = {ANM_WAIT_A, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1 = {ANM_WAIT_SWIM, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};
    daNpcF_anmPlayData dat2a = {ANM_SWIM_TALK, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat2b = {ANM_WAIT_SWIM, 0.0f, 0};
    daNpcF_anmPlayData* pDat2[2] = {&dat2a, &dat2b};
    daNpcF_anmPlayData dat3 = {ANM_WAIT_A, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat3[1] = {&dat3};
    daNpcF_anmPlayData dat4 = {ANM_WAIT_SWIM, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4};
    daNpcF_anmPlayData dat5a = {ANM_TALK_A, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat5b = {ANM_WAIT_A, 0.0f, 0};
    daNpcF_anmPlayData* pDat5[2] = {&dat5a, &dat5b};
    daNpcF_anmPlayData dat6 = {ANM_SADSIT_A, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat6[1] = {&dat6};
    daNpcF_anmPlayData dat7 = {ANM_SADSIT_B, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};
    daNpcF_anmPlayData dat8 = {ANM_SADSIT_C, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat8[1] = {&dat8};
    daNpcF_anmPlayData dat9 = {ANM_SADSIT_D, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat9[1] = {&dat9};
    daNpcF_anmPlayData dat10 = {ANM_SADSIT_E, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat10[1] = {&dat10};
    daNpcF_anmPlayData dat11 = {ANM_LOOKING_SP, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat11[1] = {&dat11};
    daNpcF_anmPlayData dat12 = {ANM_LOOKUP, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat12[1] = {&dat12};
    daNpcF_anmPlayData dat13a = {ANM_SPA_TALK_A, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat13b = {ANM_SPA_WAIT_A, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat13[2] = {&dat13a, &dat13b};
    daNpcF_anmPlayData dat14a = {ANM_SPA_TALK_B, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat14b = {ANM_SPA_WAIT_B, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat14[2] = {&dat14a, &dat14b};
    daNpcF_anmPlayData dat15a = {ANM_TALK_SWIM_SP, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat15b = {ANM_WAIT_SWIM_SP, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat15[2] = {&dat15a, &dat15b};
    daNpcF_anmPlayData dat16a = {ANM_TALK_B_SP, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat16b = {ANM_WAIT_SP, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat16[2] = {&dat16a, &dat16b};
    daNpcF_anmPlayData dat17a = {ANM_TALK_A, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat17b = {ANM_WAIT_A, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat17[2] = {&dat17a, &dat17b};
    daNpcF_anmPlayData dat18 = {ANM_SPA_WAIT_A, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat18[1] = {&dat18};
    daNpcF_anmPlayData dat19 = {ANM_SPA_WAIT_B, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat19[1] = {&dat19};
    daNpcF_anmPlayData dat20 = {ANM_WALK_A, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat20[1] = {&dat20};
    daNpcF_anmPlayData dat22 = {ANM_SWIM_A, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat22[1] = {&dat22};
    daNpcF_anmPlayData dat23 = {ANM_SWIM_B, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat23[1] = {&dat23};
    daNpcF_anmPlayData dat24a = {ANM_DIVE, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat24b = {ANM_SWIM_A, 0.0f, 0};
    daNpcF_anmPlayData* pDat24[2] = {&dat24a, &dat24b};
    daNpcF_anmPlayData dat25a = {ANM_DIVE_B, 3.0f, 1};
    daNpcF_anmPlayData dat25b = {ANM_SWIM_A, 0.0f, 0};
    daNpcF_anmPlayData* pDat25[2] = {&dat25a, &dat25b};
    daNpcF_anmPlayData dat26a = {ANM_DIVE, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat26b = {ANM_SWIM_B, 0.5f * daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat26[2] = {&dat26a, &dat26b};
    daNpcF_anmPlayData dat27a = {ANM_DIVE_B, 3.0f, 1};
    daNpcF_anmPlayData dat27b = {ANM_SWIM_B, 0.5f * daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat27[2] = {&dat27a, &dat27b};
    daNpcF_anmPlayData dat28 = {ANM_STEP, 2.0f, 0};
    daNpcF_anmPlayData* pDat28[1] = {&dat28};
    daNpcF_anmPlayData dat29a = {ANM_FLOAT, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat29b = {ANM_WAIT_SWIM, 2.0f, 0};
    daNpcF_anmPlayData* pDat29[2] = {&dat29a, &dat29b};
    daNpcF_anmPlayData dat30a = {ANM_FLOAT_B, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat30b = {ANM_WAIT_SWIM, 2.0f, 0};
    daNpcF_anmPlayData* pDat30[2] = {&dat30a, &dat30b};
    daNpcF_anmPlayData dat31a = {ANM_SWIM_TURN, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat31b = {ANM_STILL, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat31[2] = {&dat31a, &dat31b};
    daNpcF_anmPlayData dat32 = {ANM_TOBIKOMI_S, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat32[1] = {&dat32};
    daNpcF_anmPlayData dat33 = {ANM_TOBIKOMI_T, 0.0f, 0};
    daNpcF_anmPlayData* pDat33[1] = {&dat33};
    daNpcF_anmPlayData dat34a = {ANM_TOBIKOMI_E, daNpc_zrA_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat34b = {ANM_SWIM_A, 0.0f, 0};
    daNpcF_anmPlayData* pDat34[2] = {&dat34a, &dat34b};
    daNpcF_anmPlayData dat35 = {ANM_FALLSWIM, daNpc_zrA_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat35[1] = {&dat35};
    daNpcF_anmPlayData** ppDat[36] = {
        pDat0, pDat1, pDat2, pDat3, pDat4, pDat5, pDat6, pDat7, pDat8, pDat9, pDat10, pDat11,
        pDat12, pDat13, pDat14, pDat15, pDat16, pDat17, pDat18, pDat19, pDat20, NULL, pDat22,
        pDat23, pDat24, pDat25, pDat26, pDat27, pDat28, pDat29, pDat30, pDat31, pDat32,
        pDat33, pDat34, pDat35,
    };
    if (mMotion >= 0 && mMotion < 0x24) {
        playMotionAnm(ppDat);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::playMotion() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/playMotion__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B7DAF4-80B7DB20 0056D4 002C+00 1/1 0/0 0/0 .text
 * chkAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i            */
BOOL daNpc_zrA_c::chkAction(ActionFn i_action) {
    return mpActionFn == i_action;
}

/* 80B7DB20-80B7DBC8 005700 00A8+00 15/15 0/0 0/0 .text
 * setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i            */
bool daNpc_zrA_c::setAction(ActionFn i_action) {
    mMode = 3;
    if (mpActionFn != NULL) {
        (this->*mpActionFn)(NULL);
    }
    mMode = 0;
    mpActionFn = i_action;
    if (mpActionFn != NULL) {
        (this->*mpActionFn)(NULL);
    }
    return true;
}

/* 80B7DBC8-80B7DF40 0057A8 0378+00 4/1 0/0 0/0 .text            selectAction__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with data
bool daNpc_zrA_c::selectAction() {
    mpNextActionFn = NULL;
    if (daNpc_zrA_Param_c::m.mTest) {
        mpNextActionFn = &test;
    } else {
        switch (mType) {
        case TYPE_SWIM:
            mpNextActionFn = &swim;
            break;
        case TYPE_WATERFALL:
            switch (mActionSelect) {
            case 0:
                mpNextActionFn = &waitWaterfall;
                break;
            case 1:
                mpNextActionFn = &swimWaterfall;
                break;
            case 2:
                break;
            case 3:
                mpNextActionFn = &diveWaterfall;
                break;
            }
            break;
        case TYPE_RIVER:
            switch (mActionSelect) {
            case 0:
                mpNextActionFn = &waitRiverDescend;
                break;
            case 1:
                mpNextActionFn = &swimRiverDescend;
                break;
            case 6:
                mpNextActionFn = &returnRiverDescend;
                break;
            case 3:
                mpNextActionFn = &diveRiverDescend;
                break;
            case 4:
                mpNextActionFn = &swimGoalRiverDescend;
                break;
            default:
                mpNextActionFn = &swimRiverDescend2;
                break;
            }
            break;
        case TYPE_TOBIKOMI:
            switch (mActionSelect) {
            case 0:
                mpNextActionFn = &tobiSearch;
                break;
            case 1:
                mpNextActionFn = &tobiWait;
                break;
            case 2:
                mpNextActionFn = &tobikomi1;
                break;
            case 3:
                mpNextActionFn = &tobikomi2;
                break;
            case 4:
                mpNextActionFn = &tobikomi3;
                break;
            case 5:
                mpNextActionFn = &tobiJump;
                break;
            case 6:
                mpNextActionFn = &tobiEnd;
                break;
            }
            break;
        case TYPE_SEARCH:
            switch (mActionSelect) {
            case 0:
                mpNextActionFn = &waitSearch;
                break;
            }
            break;
        case TYPE_SPA:
            mpNextActionFn = &waitSpa;
            break;
        case TYPE_WAIT:
            if (mActionType == ACT_TYPE_6) {
                mpNextActionFn = &waitLake;
            } else {
                mpNextActionFn = &wait;
            }
            break;
        default:
            mpNextActionFn = &waitLake;
            break;
        }
    }
    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daNpc_zrA_c::selectAction() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/selectAction__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8CD30-80B8CD30 0008D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B8CE7F = "NO_RESPONSE";
#pragma pop

/* 80B7DF40-80B7E668 005B20 0728+00 1/1 0/0 0/0 .text            doEvent__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// regalloc
BOOL daNpc_zrA_c::doEvent() {
    BOOL ret = false;

    if (dComIfGp_event_runCheck() != false) {
        dEvent_manager_c& event_manager = dComIfGp_getEventManager();
        if (eventInfo.checkCommandTalk() || eventInfo.i_checkCommandDemoAccrpt()) {
            mOrderNewEvt = false;
        }

        if (eventInfo.checkCommandTalk()) {
            if (field_0x1521 == true && mType == TYPE_SWIM) {
                mOrderEvtNo = EVT_TALK_SWIM;
                changeEvent(l_resNames[l_evtGetParamList[mOrderEvtNo].arcIdx],
                            l_evtNames[l_evtGetParamList[mOrderEvtNo].fileIdx], 1, 0xffff);
                mStaffName = l_myName[1];
            } else if (mType == TYPE_WATERFALL) {
                if (chkAction(&talkSwim)) {
                    (this->*mpActionFn)(NULL);
                } else if (dComIfGp_event_chkTalkXY() == false || dComIfGp_evmng_ChkPresentEnd()) {
                    setAction(&talkSwim);
                }
            } else if (mType == TYPE_SEARCH) {
                mOrderEvtNo = EVT_SEARCH_PRINCE;
                changeEvent(l_resNames[l_evtGetParamList[mOrderEvtNo].arcIdx],
                            l_evtNames[l_evtGetParamList[mOrderEvtNo].fileIdx], 1, 0xffff);
            } else if (mType == TYPE_WAIT && getMultiModeFromParam() != 0) {
                if (getMultiModeFromParam() == 1) {
                    mOrderEvtNo = EVT_TALK_MULTI;
                } else {
                    mOrderEvtNo = EVT_TALK_MULTI2;
                }
                changeEvent(l_resNames[l_evtGetParamList[mOrderEvtNo].arcIdx],
                            l_evtNames[l_evtGetParamList[mOrderEvtNo].fileIdx], 1, 0xffff);
            } else {
                if (chkAction(&talk)) {
                    (this->*mpActionFn)(NULL);
                } else if (dComIfGp_event_chkTalkXY()) {
                    if (dComIfGp_evmng_ChkPresentEnd()) {
                        if (dComIfGp_event_getPreItemNo() == 0x91) {
                            if (mSoldierType != SOLDIER_NONE) {
                                if (home.angle.x == 0x6d) {
                                    mFlowID = 4;
                                } else {
                                    mFlowID = 5;
                                }
                            } else {
                                mFlowID = 6;
                            }
                            setAction(&talk);
                        } else {
                            s16 event_idx =
                                dComIfGp_getEventManager().getEventIdx(this, "NO_RESPONSE", 0xff);
                            dComIfGp_getEvent().reset(this);
                            fopAcM_orderChangeEventId(this, event_idx, 1, 0xffff);
                            field_0x9ec = true;
                        }
                    }
                } else {
                    setAction(&talk);
                }
            }
            ret = true;
        } else {
            if (mItemID != -1) {
                dComIfGp_event_setItemPartnerId(mItemID);
                mItemID = -1;
            }

            int staff_id = event_manager.getMyStaffId(mStaffName, this, 0);
            if (staff_id != -1) {
                mStaffID = staff_id;
                int act_idx = event_manager.getMyActIdx(staff_id, mEvtCutNameList,
                                                        ARRAY_SIZE(mEvtCutNameList), 0, 0);
                if ((this->*mEvtCutList[act_idx])(staff_id)) {
                    event_manager.cutEnd(staff_id);
                }
                ret = true;
            }

            if (eventInfo.i_checkCommandDemoAccrpt()) {
                if (mEventIdx != -1 && event_manager.endCheck(mEventIdx)) {
                    switch (mOrderEvtNo) {
                    case EVT_TALK_SWIM:
                        dComIfGp_event_reset();
                        setAction(&swim);
                        mOrderEvtNo = 0;
                        mEventIdx = -1;
                        mStaffName = l_myName[0];
                        break;
                    case EVT_THANKS_BLAST:
                    case EVT_RESULT_ANNOUNCE:
                        dComIfGp_event_reset();
                        mActionSelect = 5;
                        setAction(&returnRiverDescend);
                        mOrderEvtNo = 0;
                        mEventIdx = -1;
                        dComIfGs_offSwitch(mSwitch1, fopAcM_GetRoomNo(this));
                        dComIfGs_offSwitch(mSwitch2, fopAcM_GetRoomNo(this));
                        break;
                    case EVT_CARRY_WATERFALL:
                    case EVT_CARRY_WATERFALL_NIGHT:
                        dComIfGp_event_reset();
                        mActionSelect = 3;
                        setAction(&diveWaterfall);
                        mOrderEvtNo = 0;
                        mEventIdx = -1;
                        break;
                    default:
                        dComIfGp_event_reset();
                        mOrderEvtNo = 0;
                        mEventIdx = -1;
                        break;
                    }
                } else {
                    switch (mOrderEvtNo) {
                    case EVT_CARRY_WATERFALL:
                        setSkipZev(EVT_CARRY_WATERFALL, EVT_CARRY_WATERFALL_SKIP);
                        break;
                    case EVT_CARRY_WATERFALL_NIGHT:
                        setSkipZev(EVT_CARRY_WATERFALL_NIGHT, EVT_CARRY_WATERFALL_NIGHT_SKIP);
                        break;
                    }
                }
            }
        }

        int prev_msg_timer = mMsgTimer;
        int expression, motion;
        if (ctrlMsgAnm(expression, motion, this, false)) {
            if (!field_0x9eb) {
                setExpression(expression, -1.0f);
                setMotion(motion, -1.0f, false);
            }
        } else {
            if (!field_0x9eb && prev_msg_timer != 0 && mMsgTimer == 0) {
                setExpressionTalkAfter();
            }
        }
    }

    if (!ret) {
        if (mStaffID != -1) {
            mpActionFn = NULL;
            mStaffID = -1;
        }
        mMsgTimer = 0;
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::doEvent() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/doEvent__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B7E668-80B7E6F4 006248 008C+00 1/1 0/0 0/0 .text            setSkipZev__11daNpc_zrA_cFii */
BOOL daNpc_zrA_c::setSkipZev(int i_idx1, int i_idx2) {
    if (!strcmp(dComIfGp_getEventManager().getRunEventName(), l_evtNames[i_idx1])) {
        dComIfGp_getEvent().setSkipZev(this, l_evtNames[i_idx2]);
        return true;
    }
    return false;
}

/* 80B7E6F4-80B7E718 0062D4 0024+00 27/27 0/0 0/0 .text            setLookMode__11daNpc_zrA_cFi */
void daNpc_zrA_c::setLookMode(int i_lookMode) {
    if (i_lookMode >= 0 && i_lookMode < 6 && i_lookMode != mLookMode) {
        mLookMode = i_lookMode;
    }
}

/* ############################################################################################## */
/* 80B8CBA8-80B8CBB4 000750 000C+00 0/1 0/0 0/0 .rodata          @6771 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6771[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CBA8, &lit_6771);
#pragma pop

/* 80B8CBB4-80B8CBB8 00075C 0004+00 0/1 0/0 0/0 .rodata          @6831 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6831 = -80.0f;
COMPILER_STRIP_GATE(0x80B8CBB4, &lit_6831);
#pragma pop

/* 80B8CBB8-80B8CBBC 000760 0004+00 0/1 0/0 0/0 .rodata          @6832 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6832 = 80.0f;
COMPILER_STRIP_GATE(0x80B8CBB8, &lit_6832);
#pragma pop

/* 80B7E718-80B7E9E0 0062F8 02C8+00 1/1 0/0 0/0 .text            lookat__11daNpc_zrA_cFv */
#ifdef NONMATCHING
void daNpc_zrA_c::lookat() {
    fopAc_ac_c* attn_actor = NULL;
    J3DModel* model = mpMorf->getModel();
    BOOL snap = false;
    f32 body_down_angle = daNpc_zrA_Param_c::m.mBodyDownAngle;
    f32 body_up_angle = daNpc_zrA_Param_c::m.mBodyUpAngle;
    f32 body_right_angle = daNpc_zrA_Param_c::m.mBodyRightAngle;
    f32 body_left_angle = daNpc_zrA_Param_c::m.mBodyLeftAngle;
    f32 head_down_angle = daNpc_zrA_Param_c::m.mHeadDownAngle;
    f32 head_up_angle = daNpc_zrA_Param_c::m.mHeadUpAngle;
    f32 head_right_angle = daNpc_zrA_Param_c::m.mHeadRightAngle;
    f32 head_left_angle = daNpc_zrA_Param_c::m.mHeadLeftAngle;
    s16 angle_delta = mCurAngle.y - mOldAngle.y;
    cXyz lookat_pos[3] = {mLookatPos[0], mLookatPos[1], mLookatPos[2]};
    csXyz* lookat_angle[3] = {&mLookatAngle[0], &mLookatAngle[1], &mLookatAngle[2]};

    switch (mLookMode) {
    case LOOK_RESET:
        snap = true;
        break;
    case LOOK_PLAYER:
    case LOOK_PLAYER_TALK:
        attn_actor = daPy_getPlayerActorClass();
        if (mLookMode == LOOK_PLAYER_TALK) {
            head_right_angle = -80.0f;
            head_left_angle = 80.0f;
        }
        break;
    case LOOK_ACTOR:
        attn_actor = mActorMngr[2].getActorP();
        break;
    case LOOK_ATTN:
        attn_actor = mActorMngr[1].getActorP();
        break;
    }

    if (attn_actor != NULL) {
        mLookPos = attn_actor->attention_info.position;
        if (mLookMode != LOOK_PLAYER && mLookMode != LOOK_PLAYER_TALK && mLookMode != LOOK_ATTN) {
            mLookPos.y -= 40.0f;
        }
        mLookat.setAttnPos(&mLookPos);
        if (mBaseMotionAnm != ANM_WAIT_SWIM && mBaseMotionAnm != ANM_SWIM_TALK
            && mBaseMotionAnm != ANM_TALK_SWIM_SP && mBaseMotionAnm != ANM_WAIT_SWIM_SP)
        {
            body_up_angle = body_down_angle = 0.0f;
        }
    } else {
        mLookat.setAttnPos(NULL);
    }

    mLookat.setParam(body_down_angle, body_up_angle, body_right_angle, body_left_angle,
                     0.0f, 0.0f, 0.0f, 0.0f,
                     head_down_angle, head_up_angle, head_right_angle, head_left_angle,
                     mCurAngle.y, lookat_pos);
    mLookat.calc(this, model->getBaseTRMtx(), lookat_angle, snap, angle_delta, false);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::lookat() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/lookat__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B7E9E0-80B7EA90 0065C0 00B0+00 1/1 0/0 0/0 .text            chkFindPlayer__11daNpc_zrA_cFv */
BOOL daNpc_zrA_c::chkFindPlayer() {
    BOOL check;
    if (mActorMngr[0].getActorP() == NULL) {
        check = chkPlayerInSpeakArea(this);
    } else {
        check = chkPlayerInTalkArea(this);
    }

    if (check) {
        mActorMngr[0].entry(daPy_getPlayerActorClass());
    } else {
        mActorMngr[0].remove();
    }

    return check;
}

/* 80B7EA90-80B7EBA0 006670 0110+00 1/1 0/0 0/0 .text setExpressionTalkAfter__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrA_c::setExpressionTalkAfter() {
    switch (mExpression) {
    case EXPR_TALK_NOMAL:
        setExpression(EXPR_TALK_NOMAL_2, -1.0f);
        break;
    case EXPR_LOOKING_SP:
        setExpression(EXPR_LOOKING_SP_2, -1.0f);
        break;
    case EXPR_LOOKUP:
        setExpression(EXPR_LOOKUP_2, -1.0f);
        break;
    case EXPR_SPA_TALK_A:
        setExpression(EXPR_SPA_WAIT_A, -1.0f);
        break;
    case EXPR_SPA_TALK_B:
        setExpression(EXPR_SPA_WAIT_B, -1.0f);
        break;
    default:
        setExpression(EXPR_NONE, -1.0f);
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::setExpressionTalkAfter() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/setExpressionTalkAfter__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8CBBC-80B8CBC0 000764 0004+00 1/7 0/0 0/0 .rodata          @6920 */
SECTION_RODATA static f32 const lit_6920 = 1.5f;
COMPILER_STRIP_GATE(0x80B8CBBC, &lit_6920);

/* 80B7EBA0-80B7EC54 006780 00B4+00 1/1 0/0 0/0 .text            setPrtcl__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrA_c::setPrtcl() {
    u32 flags = 0x40002;
    cXyz ptcl_scale(1.5f, 1.5f, 1.5f);
    if (field_0x1550) {
        if (cLib_calcTimer(&field_0x1554) != 0) {
            flags |= 0x20000;
        } else {
            field_0x1554 = 10;
        }
    }
    mPaPo.setEffectCenter(&tevStr, &current.pos, 1, flags, NULL, NULL, &ptcl_scale,
                          fopAcM_GetRoomNo(this), 1.0f, speedF);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::setPrtcl() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/setPrtcl__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B7EC54-80B7ED38 006834 00E4+00 1/0 0/0 0/0 .text            test__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::test(void* param_0) {
    switch (mMode) {
    case 0:
        speedF = 0.0f;
        speed.setall(0.0f);
        mMode = 2;
        // fallthrough

    case 2:
        if (daNpc_zrA_Param_c::m.mTestExpression != mExpression) {
            setExpression(daNpc_zrA_Param_c::m.mTestExpression, daNpc_zrA_Param_c::m.mMorfFrames);
        }
        setMotion(daNpc_zrA_Param_c::m.mTestMotion, daNpc_zrA_Param_c::m.mMorfFrames, false);
        setLookMode(daNpc_zrA_Param_c::m.mTestLookMode);
        mOrderEvtNo = EVT_NONE;
        attention_info.flags = 0;
        break;

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::test(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/test__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* 80B7ED38-80B7ED58 006918 0020+00 1/0 0/0 0/0 .text            daNpc_zrA_Create__FPv */
static cPhs__Step daNpc_zrA_Create(void* i_this) {
    return static_cast<daNpc_zrA_c*>(i_this)->create();
}

/* 80B7ED58-80B7ED78 006938 0020+00 1/0 0/0 0/0 .text            daNpc_zrA_Delete__FPv */
static int daNpc_zrA_Delete(void* i_this) {
    return static_cast<daNpc_zrA_c*>(i_this)->Delete();
}

/* 80B7ED78-80B7ED98 006958 0020+00 1/0 0/0 0/0 .text            daNpc_zrA_Execute__FPv */
static int daNpc_zrA_Execute(void* i_this) {
    return static_cast<daNpc_zrA_c*>(i_this)->Execute();
}

/* 80B7ED98-80B7EDB8 006978 0020+00 1/0 0/0 0/0 .text            daNpc_zrA_Draw__FPv */
static int daNpc_zrA_Draw(void* i_this) {
    return static_cast<daNpc_zrA_c*>(i_this)->Draw();
}

/* 80B7EDB8-80B7EDC0 006998 0008+00 1/0 0/0 0/0 .text            daNpc_zrA_IsDelete__FPv */
static int daNpc_zrA_IsDelete(void* i_this) {
    return 1;
}

/* 80B7EDC0-80B7EDF0 0069A0 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" asm void calc__11J3DTexNoAnmCFPUs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/calc__11J3DTexNoAnmCFPUs.s"
}
#pragma pop

/* 80B7EDF0-80B7EE38 0069D0 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" asm void __dt__18daNpcF_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__18daNpcF_ActorMngr_cFv.s"
}
#pragma pop

/* 80B7EE38-80B7EE74 006A18 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" asm void __ct__18daNpcF_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__ct__18daNpcF_ActorMngr_cFv.s"
}
#pragma pop

/* 80B7EE74-80B7EF44 006A54 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" asm void __dt__15daNpcF_Lookat_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__15daNpcF_Lookat_cFv.s"
}
#pragma pop

/* 80B7EF44-80B7EF80 006B24 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__5csXyzFv.s"
}
#pragma pop

/* 80B7EF80-80B7EF84 006B60 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80B7EF84-80B7EF88 006B64 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80B7EF88-80B7EFF8 006B68 0070+00 1/0 0/0 0/0 .text            __dt__16daNpc_zrA_Path_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpc_zrA_Path_c::~daNpc_zrA_Path_c() {
extern "C" asm void __dt__16daNpc_zrA_Path_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__16daNpc_zrA_Path_cFv.s"
}
#pragma pop

/* 80B7EFF8-80B7F058 006BD8 0060+00 1/0 0/0 0/0 .text            __dt__13daNpcF_Path_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_Path_c::~daNpcF_Path_c() {
extern "C" asm void __dt__13daNpcF_Path_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__13daNpcF_Path_cFv.s"
}
#pragma pop

/* 80B7F058-80B7F0A0 006C38 0048+00 1/0 0/0 0/0 .text            __dt__16daNpcF_SPCurve_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_SPCurve_c::~daNpcF_SPCurve_c() {
extern "C" asm void __dt__16daNpcF_SPCurve_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__16daNpcF_SPCurve_cFv.s"
}
#pragma pop

/* 80B7F0A0-80B7F0E8 006C80 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80B7F0E8-80B7F334 006CC8 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_c::~daNpcF_c() {
extern "C" asm void __dt__8daNpcF_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__8daNpcF_cFv.s"
}
#pragma pop

/* 80B7F334-80B7F524 006F14 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_c::daNpcF_c() {
extern "C" asm void __ct__8daNpcF_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__ct__8daNpcF_cFv.s"
}
#pragma pop

/* 80B7F524-80B7F594 007104 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80B7F594-80B7F5F0 007174 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80B7F5F0-80B7F660 0071D0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80B7F660-80B7F664 007240 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" asm void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80B7F664-80B7F6AC 007244 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80B7F6AC-80B7F6C8 00728C 001C+00 8/8 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80B7F6AC(void* _this, int* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/func_80B7F6AC.s"
}
#pragma pop

/* 80B7F6C8-80B7F6E4 0072A8 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80B7F6C8(void* _this, u8* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/func_80B7F6C8.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B8CBC0-80B8CBC8 000768 0008+00 1/1 0/0 0/0 .rodata          @7164 */
SECTION_RODATA static u8 const lit_7164[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CBC0, &lit_7164);

/* 80B8CBC8-80B8CBCC 000770 0004+00 0/2 0/0 0/0 .rodata          @7224 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7224 = 60.0f;
COMPILER_STRIP_GATE(0x80B8CBC8, &lit_7224);
#pragma pop

/* 80B8CBCC-80B8CBD0 000774 0004+00 0/7 0/0 0/0 .rodata          @7597 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7597 = 13.0f;
COMPILER_STRIP_GATE(0x80B8CBCC, &lit_7597);
#pragma pop

/* 80B8CBD0-80B8CBD4 000778 0004+00 0/1 0/0 0/0 .rodata          @7598 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7598 = 21.0f;
COMPILER_STRIP_GATE(0x80B8CBD0, &lit_7598);
#pragma pop

/* 80B8CBD4-80B8CBD8 00077C 0004+00 0/4 0/0 0/0 .rodata          @7599 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7599 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B8CBD4, &lit_7599);
#pragma pop

/* 80B8CBD8-80B8CBDC 000780 0004+00 0/5 0/0 0/0 .rodata          @7600 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7600 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B8CBD8, &lit_7600);
#pragma pop

/* 80B8CBDC-80B8CBE0 000784 0004+00 0/1 0/0 0/0 .rodata          @7601 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7601 = 11.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B8CBDC, &lit_7601);
#pragma pop

/* 80B8CBE0-80B8CBE4 000788 0004+00 0/9 0/0 0/0 .rodata          @7602 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7602 = 2.5f;
COMPILER_STRIP_GATE(0x80B8CBE0, &lit_7602);
#pragma pop

/* 80B8CBE4-80B8CBE8 00078C 0004+00 0/3 0/0 0/0 .rodata          @7603 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7603 = 17.0f;
COMPILER_STRIP_GATE(0x80B8CBE4, &lit_7603);
#pragma pop

/* 80B8CBE8-80B8CBEC 000790 0004+00 0/6 0/0 0/0 .rodata          @7604 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7604 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B8CBE8, &lit_7604);
#pragma pop

/* 80B8CBEC-80B8CBF0 000794 0004+00 0/4 0/0 0/0 .rodata          @7605 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7605 = 14.0f;
COMPILER_STRIP_GATE(0x80B8CBEC, &lit_7605);
#pragma pop

/* 80B8CBF0-80B8CBF4 000798 0004+00 0/7 0/0 0/0 .rodata          @7606 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7606 = 4.0f;
COMPILER_STRIP_GATE(0x80B8CBF0, &lit_7606);
#pragma pop

/* 80B8CBF4-80B8CBF8 00079C 0004+00 0/3 0/0 0/0 .rodata          @7607 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7607 = 16.0f;
COMPILER_STRIP_GATE(0x80B8CBF4, &lit_7607);
#pragma pop

/* 80B8CBF8-80B8CBFC 0007A0 0004+00 0/3 0/0 0/0 .rodata          @7608 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7608 = 18.0f;
COMPILER_STRIP_GATE(0x80B8CBF8, &lit_7608);
#pragma pop

/* 80B8CBFC-80B8CC00 0007A4 0004+00 0/1 0/0 0/0 .rodata          @7609 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7609 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B8CBFC, &lit_7609);
#pragma pop

/* 80B8CC00-80B8CC04 0007A8 0004+00 0/3 0/0 0/0 .rodata          @7735 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7735 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B8CC00, &lit_7735);
#pragma pop

/* 80B8CC04-80B8CC08 0007AC 0004+00 0/2 0/0 0/0 .rodata          @7804 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7804 = 10000.0f;
COMPILER_STRIP_GATE(0x80B8CC04, &lit_7804);
#pragma pop

/* 80B8CC08-80B8CC0C 0007B0 0004+00 0/2 0/0 0/0 .rodata          @7805 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7805 = 500.0f;
COMPILER_STRIP_GATE(0x80B8CC08, &lit_7805);
#pragma pop

/* 80B8CC0C-80B8CC10 0007B4 0004+00 0/1 0/0 0/0 .rodata          @7914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7914 = 220.0f;
COMPILER_STRIP_GATE(0x80B8CC0C, &lit_7914);
#pragma pop

/* 80B8CC10-80B8CC14 0007B8 0004+00 0/4 0/0 0/0 .rodata          @7915 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7915 = 5.0f;
COMPILER_STRIP_GATE(0x80B8CC10, &lit_7915);
#pragma pop

/* 80B8CC14-80B8CC18 0007BC 0004+00 0/1 0/0 0/0 .rodata          @7916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7916 = 8.0f;
COMPILER_STRIP_GATE(0x80B8CC14, &lit_7916);
#pragma pop

/* 80B8CC18-80B8CC1C 0007C0 0004+00 0/9 0/0 0/0 .rodata          @7959 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7959 = 30.0f;
COMPILER_STRIP_GATE(0x80B8CC18, &lit_7959);
#pragma pop

/* 80B8CC1C-80B8CC20 0007C4 0004+00 0/1 0/0 0/0 .rodata          @8074 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8074 = 21.0f / 20.0f;
COMPILER_STRIP_GATE(0x80B8CC1C, &lit_8074);
#pragma pop

/* 80B8CC20-80B8CC24 0007C8 0004+00 0/2 0/0 0/0 .rodata          @8075 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8075 = 50.0f;
COMPILER_STRIP_GATE(0x80B8CC20, &lit_8075);
#pragma pop

/* 80B8CC24-80B8CC28 0007CC 0004+00 0/11 0/0 0/0 .rodata          @8287 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8287 = 3.0f;
COMPILER_STRIP_GATE(0x80B8CC24, &lit_8287);
#pragma pop

/* 80B8CC28-80B8CC30 0007D0 0008+00 1/2 0/0 0/0 .rodata          @8289 */
SECTION_RODATA static u8 const lit_8289[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CC28, &lit_8289);

/* 80B7F6E4-80B7F760 0072C4 007C+00 3/3 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80B7F6E4(void* _this, int param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/func_80B7F6E4.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B8DA34-80B8DA40 000BA4 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_zrA_Param_c */
SECTION_DATA extern void* __vt__17daNpc_zrA_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_zrA_Param_cFv,
};

/* 80B7F760-80B7F8C4 007340 0164+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_zra_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_npc_zra_cpp() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__sinit_d_a_npc_zra_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80B7F760, __sinit_d_a_npc_zra_cpp);
#pragma pop

/* 80B7F8C4-80B7FD10 0074A4 044C+00 3/0 0/0 0/0 .text            wait__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::wait(void* param_0) {
    switch (mMode) {
    case 0:
        if (field_0x1510 == 0) {
            if (mPath.getPathInfo() == NULL) {
                if (mAcch.ChkWaterIn()) {
                    gravity = 0.0f;
                    speed.setall(0.0f);
                    speedF = 0.0f;
                } else {
                    switch (mActionType) {
                    case ACT_TYPE_1:
                        setExpression(EXPR_SADSIT_A, -1.0f);
                        setMotion(MOT_SADSIT_A, -1.0f, false);
                        break;
                    case ACT_TYPE_2:
                        setExpression(EXPR_SADSIT_B, -1.0f);
                        setMotion(MOT_SADSIT_B, -1.0f, false);
                        break;
                    case ACT_TYPE_3:
                        setExpression(EXPR_SADSIT_C, -1.0f);
                        setMotion(MOT_SADSIT_C, -1.0f, false);
                        break;
                    case ACT_TYPE_4:
                        setExpression(EXPR_SADSIT_D, -1.0f);
                        setMotion(MOT_SADSIT_D, -1.0f, false);
                        break;
                    case ACT_TYPE_5:
                        setExpression(EXPR_SADSIT_E, -1.0f);
                        setMotion(MOT_SADSIT_E, -1.0f, false);
                        break;
                    default:
                        setExpression(EXPR_NONE, -1.0f);
                        setMotion(MOT_WAIT_A, -1.0f, false);
                        break;
                    }
                }
            } else {
                setExpression(EXPR_NONE, -1.0f);
                setMotion(MOT_WALK_A, -1.0f, false);
                field_0x1510 = 1;
            }
        } else {
            setMotion(MOT_WALK_A, -1.0f, false);
        }
        setLookMode(LOOK_NONE);
        mAttnChangeTimer = 0;
        mTurnMode = 0;
        mMode = 2;
        // fallthrough

    case 2:
        if (field_0x1510 != 0) {
            walkCalc();
        } else {
            waitCalc();
        }

        if (mDamageTimer == 0 && !mTwilight) {
            BOOL player_attn = mActorMngr[0].getActorP() != NULL;
            if (chkFindPlayer2(player_attn, shape_angle.y)) {
                if (!player_attn) {
                    mActorMngr[0].entry(daPy_getPlayerActorClass());
                    mTurnMode = 0;
                }
            } else {
                if (player_attn) {
                    mActorMngr[0].remove();
                    mTurnMode = 0;
                }
            }

            if (mActorMngr[0].getActorP() != NULL) {
                setLookMode(LOOK_PLAYER);
            } else {
                setLookMode(LOOK_NONE);
                if (field_0x1510 == 0 && home.angle.y != mCurAngle.y) {
                    if (mAcch.ChkWaterIn()) {
                        if (step(home.angle.y, -1, -1, 15)) {
                            mMode = 0;
                        }
                    } else {
                        if (step(home.angle.y, EXPR_NONE, MOT_STEP, 15)) {
                            mMode = 0;
                        }
                    }
                }
            }
        }
        break;

    case 3:
        speedF = 0.0f;
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::wait(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/wait__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* 80B7FD10-80B7FE18 0078F0 0108+00 1/1 0/0 0/0 .text            walkCalc__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with weak functions
void daNpc_zrA_c::walkCalc() {
    field_0x1550 = false;
    cXyz next_pnt;
    if (mPath.getDstPosDstXZ(current.pos, next_pnt)) {
        mPath.reverse();
        mPath.getDstPosDstXZ(current.pos, next_pnt);
    }
    s16 target_angle = cLib_targetAngleY(&current.pos, &next_pnt);
    speedF = daNpc_zrA_Param_c::m.mWalkSpeed;
    mpMorf->setPlaySpeed(daNpc_zrA_Param_c::m.mWalkSpeed / daNpc_zrA_Param_c::m.mWalkAnmRate);
    cLib_addCalcAngleS2(&current.angle.y, target_angle,
                        daNpc_zrA_Param_c::m.mWalkAngleScale, daNpc_zrA_Param_c::m.mWalkAngleSpeed);
    mCurAngle = current.angle;
    shape_angle = mCurAngle;
    mOldAngle.y = mCurAngle.y;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::walkCalc() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/walkCalc__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B7FE18-80B800A4 0079F8 028C+00 1/1 0/0 0/0 .text            waitCalc__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrA_c::waitCalc() {
    if (mAcch.ChkWaterIn()) {
        if (mMotion != MOT_WAIT_SWIM) {
            setExpression(EXPR_NONE, -1.0f);
            setMotion(MOT_WAIT_SWIM, -1.0f, false);
            gravity = 0.0f;
            speed.setall(0.0f);
            speedF = 0.0f;
        }
        field_0x1550 = true;
        calcModulation();
    } else {
        field_0x1550 = false;
        if (mMotion == MOT_WAIT_SWIM) {
            switch (mActionType) {
            case ACT_TYPE_1:
                setExpression(EXPR_SADSIT_A, -1.0f);
                setMotion(MOT_SADSIT_A, -1.0f, false);
                break;
            case ACT_TYPE_2:
                setExpression(EXPR_SADSIT_B, -1.0f);
                setMotion(MOT_SADSIT_B, -1.0f, false);
                break;
            case ACT_TYPE_3:
                setExpression(EXPR_SADSIT_C, -1.0f);
                setMotion(MOT_SADSIT_C, -1.0f, false);
                break;
            case ACT_TYPE_4:
                setExpression(EXPR_SADSIT_D, -1.0f);
                setMotion(MOT_SADSIT_D, -1.0f, false);
                break;
            case ACT_TYPE_5:
                setExpression(EXPR_SADSIT_E, -1.0f);
                setMotion(MOT_SADSIT_E, -1.0f, false);
                break;
            default:
                setExpression(EXPR_NONE, -1.0f);
                setMotion(MOT_WAIT_A, -1.0f, false);
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::waitCalc() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/waitCalc__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B800A4-80B80228 007C84 0184+00 1/0 0/0 0/0 .text            waitSpa__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::waitSpa(void* param_0) {
    switch (mMode) {
    case 0:
        switch (mActionType) {
        case ACT_TYPE_2:
            setExpression(EXPR_SPA_WAIT_A, -1.0f);
            setMotion(MOT_SPA_WAIT_A, -1.0f, false);
            field_0x9ea = true;
            break;
        case ACT_TYPE_3:
            setExpression(EXPR_SPA_WAIT_B, -1.0f);
            setMotion(MOT_SPA_WAIT_B, -1.0f, false);
            field_0x9ea = true;
            break;
        default:
            setExpression(EXPR_LOOKUP_2, -1.0f);
            setMotion(MOT_LOOKUP, -1.0f, false);
            field_0x9ea = true;
            break;
        }

        setLookMode(LOOK_NONE);
        mAttnChangeTimer = 0;
        mTurnMode = 0;
        mMode = 2;
        break;

    case 2:
        break;

    case 3:
        speedF = 0.0f;
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::waitSpa(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/waitSpa__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* 80B80228-80B80418 007E08 01F0+00 1/0 0/0 0/0 .text            waitLake__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::waitLake(void* param_0) {
    switch (mMode) {
    case 0:
        setExpression(EXPR_LOOKING_SP_2, -1.0f);
        setMotion(MOT_LOOKING_SP, -1.0f, false);
        setLookMode(LOOK_NONE);
        mTurnMode = 0;
        mMode = 2;
        // fallthrough

    case 2:
        if (mDamageTimer == 0 && !mTwilight) {
            if (mActorMngr[0].getActorP() != NULL) {
                if (!chkFindPlayer()) {
                    mTurnMode = 0;
                }
            } else {
                if (chkFindPlayer()) {
                    mTurnMode = 0;
                }
            }

            if (mActorMngr[0].getActorP() != NULL) {
                setLookMode(LOOK_PLAYER);
                setExpression(EXPR_NONE, -1.0f);
                setMotion(MOT_WAIT_A, -1.0f, false);
            } else {
                setLookMode(LOOK_NONE);
                if (home.angle.y != mCurAngle.y) {
                    if (step(home.angle.y, EXPR_NONE, MOT_STEP, 15)) {
                        mMode = 0;
                    }
                } else {
                    setExpression(EXPR_LOOKING_SP_2, -1.0f);
                    setMotion(MOT_LOOKING_SP, -1.0f, false);
                }
            }
        }

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::waitLake(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/waitLake__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* 80B80418-80B8064C 007FF8 0234+00 3/0 0/0 0/0 .text            talk__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::talk(void* param_0) {
    BOOL ret = false;
    BOOL bvar2 = false;

    switch (mMode) {
    case 0:
        if (mDamageTimer != 0) {
            break;
        }

        initTalk(mFlowID, NULL);
        mTurnMode = 0;
        mMode = 2;
        // fallthrough

    case 2:
        if (mType != TYPE_SPA) {
            calcModulation();
        }

        if (field_0x9ea || mTwilight) {
            bvar2 = true;
        } else {
            setLookMode(LOOK_PLAYER_TALK);
            mActorMngr[0].entry(daPy_getPlayerActorClass());
            if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                bvar2 = true;
            } else if (mAcch.ChkWaterIn()) {
                if (step(fopAcM_searchPlayerAngleY(this), -1, -1, 15)) {
                    mTurnMode = 0;
                }
            } else {
                if (step(fopAcM_searchPlayerAngleY(this), EXPR_NONE, MOT_STEP, 15)) {
                    setMotion(MOT_WAIT_A, -1.0f, false);
                    mTurnMode = 0;
                }
            }
        }

        if (bvar2 && talkProc(NULL, true, NULL)) {
            ret = true;
        }

        if (ret) {
            mMode = 3;
            if (!field_0x9ec) {
                dComIfGp_event_reset();
                setAction(&wait);
            }
            field_0x9ec = false;
        }
        break;

    case 3:
        mFlowID = home.angle.x;
        break;
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::talk(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/talk__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* 80B8064C-80B806FC 00822C 00B0+00 1/1 0/0 0/0 .text            s_subMulti__FPvPv */
static void* s_subMulti(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_NPC_ZRA) {
        daNpc_zrA_c* _this = static_cast<daNpc_zrA_c*>(i_this);
        daNpc_zrA_c* other = static_cast<daNpc_zrA_c*>(i_proc);
        if (other != _this && other->getType() == daNpc_zrA_c::TYPE_WAIT
            && other->getMultiModeFromParam() != 0
            && other->getMultiModeFromParam() == _this->getMultiModeFromParam()
            && other->getMultiNoFromParam() == 2)
        {
            return other;
        }
    }
    return NULL;
}

/* ############################################################################################## */
/* 80B8CD30-80B8CD30 0008D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B8CE8B = "prm";
#pragma pop

/* 80B806FC-80B80860 0082DC 0164+00 1/0 0/0 0/0 .text            ECut_talkMulti__11daNpc_zrA_cFi */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::ECut_talkMulti(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    
    fopAc_ac_c* actors[2] = {NULL, NULL};
    actors[0] = this;
    actors[1] = mActorMngr[2].getActorP();
    
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            mActorMngr[2].remove();
            break;
        case 10:
            initTalk(mFlowID, actors);
            break;
        }
    }

    switch (prm) {
    case 0:
        if (mActorMngr[2].getActorP() == NULL) {
            fopAc_ac_c* other = (fopAc_ac_c*)(fpcM_Search(s_subMulti, this));
            if (other != NULL) {
                mActorMngr[2].entry(other);
                ret = true;
            }
        } else {
            ret = true;
        }
        break;

    case 10:
        if (talkProc(NULL, false, actors)) {
            ret = true;
        }
        break;

    default:
        ret = true;
        break;
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::ECut_talkMulti(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/ECut_talkMulti__11daNpc_zrA_cFi.s"
}
#pragma pop
#endif

/* 80B80860-80B80A94 008440 0234+00 2/0 0/0 0/0 .text            swim__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::swim(void* param_0) {
    switch (mMode) {
    case 0:
        mAcch.SetGrndNone();
        mAcch.SetWallNone();
        gravity = 0.0f;
        speed.setall(0.0f);
        speedF = 0.0f;
        field_0x153d = false;
        setExpression(EXPR_NONE, -1.0f);

        if (mSwimMode == SWIM_WAIT) {
            if (mPath.getPathInfo() == NULL) {
                setMotion(MOT_WAIT_SWIM, -1.0f, false);
                field_0x1550 = true;
            } else {
                if (mActionType == ACT_TYPE_0) {
                    setMotion(MOT_SWIM_B, -1.0f, false);
                } else {
                    setMotion(MOT_SWIM_A, -1.0f, false);
                }

                mCheckSwimTurnTimer = cLib_getRndValue(3, 3);
                mSpinTimer = (int)(cM_rnd() * 60.0f) + 90;
                mSwimMode = SWIM_RAIL;
                field_0x1521 = true;
                mScaleFactor = daNpc_zrA_Param_c::m.mMaxScaleFactor;
                mCcStts.SetWeight(0);
            }
        } else {
            mSwimMode = SWIM_RAIL;
        }

        setLookMode(LOOK_NONE);
        mAttnChangeTimer = 0;
        mTurnMode = 0;
        mMode = 2;
        field_0x153e = false;
        mSwimAngleCalc = current.angle;
        if (mSwimMode != SWIM_WAIT) {
            calcWaistAngleInit();
        }
        // fallthrough

    case 2:
        switch (mSwimMode) {
        case SWIM_WAIT:
            waitSwim();
            break;
        case SWIM_RAIL:
            railSwim();
            break;
        case SWIM_TURN:
            turnSwim();
            break;
        }
        break;

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::swim(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/swim__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* 80B80A94-80B81788 008674 0CF4+00 1/1 0/0 0/0 .text            railSwim__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals and generics
BOOL daNpc_zrA_c::railSwim() {
    s16 ang_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
    s16 ang_scale = 8;
    f32 fvar15 = 0.1f;
    f32 fvar2 = 1.0f;
    f32 fvar3 = mSwimSpeedScale;
    f32 water_height = mAcch.m_wtr.GetHeight();
    gravity = 0.0f;
    cXyz vec0, swim_speed, vec1, vec2;
    csXyz angle;

    if (field_0x153c) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::scaleM(scale);
        mDoMtx_stack_c::multVecZero(&vec1);
        mPath.getDstPosDst2(current.pos, vec2);

        if (field_0x153e) {
            if (mpMorf->getFrame() > 13.0f && mpMorf->getFrame() < 21.0f) {
                f32 play_speed = mpMorf->getPlaySpeed();
                cLib_addCalc2(&play_speed, 0.3f, 0.7f, 0.3f);
                mpMorf->setPlaySpeed(play_speed);
            }

            calcBank(ang_step, 8, current.angle.y, current.angle.z);
            mSwimSpeed.y -= 2.2f;
            current.pos += mSwimSpeed;

            if (current.angle.x < 0x2800) {
                current.angle.x = -cM_atan2s(mSwimSpeed.y, mSwimSpeed.absXZ());
            }

            mCurAngle = current.angle;
            shape_angle = mCurAngle;

            if (mIsAboveWater && vec1.y + mSwimSpeed.y <= water_height) {
                cXyz water_pos = vec1;
                water_pos.y = water_height;
                fopKyM_createWpillar(&water_pos, 2.5f, 0);
                mIsAboveWater = false;
                mCreatureSound.startCreatureSound(Z2SE_ZRA_DIVE_SPLASH, 0, -1);
            }

            if (current.pos.y <= water_height - daNpc_zrA_Param_c::m.mMinDepth) {
                field_0x153e = false;
                field_0x153c = false;
                mSwimSpeedScale = 1.0f;
                mSwimSpeedF = mSwimSpeed.absXZ();
                mpMorf->setPlaySpeed(1.0f);
            }

            return true;
        }

        angle.x = -0x3000;
        angle.y = current.angle.y;
        angle.z = current.angle.z;
        mSpinTimer = 90;

        if (!(vec1.y < water_height)) {
            if (!mIsAboveWater) {
                cXyz pos = vec1;
                pos.y = water_height;
                fopKyM_createWpillar(&pos, 2.5f, 0);
                mIsAboveWater = true;
                mCreatureSound.startCreatureSound(Z2SE_ZRA_DIVE_SPLASH_OUT, 0, -1);
            } else {
                if (mpMorf->getFrame() > 13.0f && mpMorf->getFrame() < 17.0f) {
                    f32 play_speed = mpMorf->getPlaySpeed();
                    cLib_addCalc2(&play_speed, 0.3f, 0.7f, 0.5f);
                    mpMorf->setPlaySpeed(play_speed);
                }

                if (current.pos.y > water_height && current.angle.x < -0x2000
                    && mSwimSpeedF > 20.0f)
                {
                    swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
                    calcSwimPos(swim_speed);
                    mSwimSpeed = swim_speed;
                    field_0x153e = true;
                    calcBank(ang_step, 8, angle.y, angle.z);
                    current.angle.z = angle.z;
                    mCurAngle = current.angle;
                    shape_angle = mCurAngle;
                    return true;
                }
            }
        }
    } else {
        BOOL ivar9 = mPath.getDstPosDst2(current.pos, vec0);
        angle.x = cLib_targetAngleX(&vec0, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &vec0);
        angle.z = current.angle.z;
        evasionCalc(vec0, angle);

        if (ivar9) {
            cXyz next_pos;
            mPath.getNextPos(next_pos);
            s16 ang_x = cLib_targetAngleX(&next_pos, &vec0);
            s16 ang_y = cLib_targetAngleY(&vec0, &next_pos);
            u32 arg0 = mPath.getArg0(mPath.getIdx());
            if (((arg0 == 0 && cM_rnd() < 0.5f) || (u8)arg0 == 1) && mSpinTimer != 0) {
                mSwimSpeedScale = 1.5f;
                fvar3 = mSwimSpeedScale;
                mSpinTimer = 90;
                field_0x153d = true;
            } else if (field_0x153d) {
                field_0x153d = false;
                field_0x153c = true;
                angle.x = -0x3000;
                angle.y = current.angle.y;
                mCheckSwimTurn = false;
            } else if ((abs(angle.x - ang_x) > 0x4000 || abs(angle.x - ang_y) > 0x4000)
                                && cM_rnd() < 0.2f && mSpinTimer != 0) {
                field_0x153c = false;
                mSwimFastTurnTimer = 60;
                mSwimSpeedScale = 1.2f;
                fvar3 = mSwimSpeedScale;
                mSpinTimer = 90;
            } else {
                field_0x153c = false;
                cLib_calcTimer(&mCheckSwimTurnTimer);
            }
        }

        if (turnSwimCheck()) {
            return true;
        }
    }

    if (cLib_calcTimer(&mSwimFastTurnTimer) != 0) {
        ang_scale = 4;
        ang_step *= 2;
    }

    s16 ang_diff_x = angle.x - current.angle.x;
    s16 ang_diff_y = angle.y - current.angle.y;
    bool bvar6 = false;
    if (mActionType != ACT_TYPE_0 && mSpinAngle == 0 && !field_0x153c && !field_0x153d
        && (abs(ang_diff_x) > 0x3000 || abs(ang_diff_y) > 0x3000) && mSwimSpeedF > 14.0f)
    {
        f32 frame = mpMorf->getFrame();
        if ((angle.z <= 0x2000 || ang_diff_y >= 0) && (angle.z >= -0x2000 || ang_diff_y <= 0)) {
            if (ang_diff_x < -0x3000) {
                if (frame >= 2.0f && frame <= 4.0f) {
                    bvar6 = true;
                }
            } else {
                if (frame >= 16.0f && frame <= 18.0f) {
                    bvar6 = true;
                }
            }
        }

        if (bvar6) {
            calcSwimAngle(angle, mSwimAngleCalc, ang_scale / 2, ang_step);
        } else {
            calcSwimAngle(angle, mSwimAngleCalc, ang_scale, ang_step / 2);
        }
    } else {
        calcSwimAngle(angle, mSwimAngleCalc, ang_scale, ang_step);
    }

    if (mSwimSpeedF > fvar3 * daNpc_zrA_Param_c::m.mSwimSpeed) {
        fvar15 *= 2.0f;
        fvar2 *= 0.5f;
    }
    cLib_addCalc2(&mSwimSpeedF, fvar3 * daNpc_zrA_Param_c::m.mSwimSpeed, fvar15, fvar2);

    if (field_0x153c == true && mIsAboveWater == true) {
        if (mpMorf->getFrame() > 13.0f && mpMorf->getFrame() < 21.0f) {
            f32 play_speed = mpMorf->getPlaySpeed();
            cLib_addCalc2(&play_speed, 0.3f, 0.7f, 0.3f);
            mpMorf->setPlaySpeed(play_speed);
        }
    } else if (!bvar6) {
        f32 play_speed = mpMorf->getPlaySpeed();
        cLib_addCalc2(&play_speed, mSwimSpeedF / daNpc_zrA_Param_c::m.mSwimAnmRate, 0.2f, 0.1f);
        mpMorf->setPlaySpeed(play_speed);
    }

    swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
    calcSwimPos(swim_speed);

    if (!field_0x153c && mAcch.ChkWaterHit()
        && current.pos.y > water_height - daNpc_zrA_Param_c::m.mMinDepth)
    {
        current.pos.y = water_height - daNpc_zrA_Param_c::m.mMinDepth;
    }

    if (cLib_calcTimer(&mSpinTimer) == 0) {
        if (mSpinAngle != 0) {
            cLib_addCalcAngleS2(&field_0x1518, ang_step, 8, 0x200);
            if (mSpinAngle > 0) {
                angle.z += ang_step;
                mSpinAngle += ang_step;
            } else {
                angle.z -= ang_step;
                mSpinAngle -= ang_step;
            }
            if (abs(mSpinAngle) > 0x10000) {
                mSpinAngle = 0;
                mSpinTimer = (int)(cM_rnd() * 60.0f) + 90;
            }
        } else if (cM_rnd() > 0.9f) {
            calcBank(ang_step, ang_scale, angle.y, angle.z);
            field_0x1518 = abs(angle.z - current.angle.z);
            cLib_addCalcAngleS2(&field_0x1518, ang_step, 8, 0x200);
            if (angle.z > 0) {
                angle.z += ang_step;
                mSpinAngle += ang_step;
            } else {
                angle.z -= ang_step;
                mSpinAngle -= ang_step;
            }
            mSwimSpeedScale = 1.0f;
        } else {
            mSpinTimer = (int)(cM_rnd() * 60.0f) + 90;
            mSpinAngle = 0;
            mSwimSpeedScale = cM_rnd() * (1.0f - daNpc_zrA_Param_c::m.mMinSwimSpeedScale)
                + daNpc_zrA_Param_c::m.mMinSwimSpeedScale;
        }
    }

    if (mSpinAngle == 0) {
        calcBank(ang_step, ang_scale, angle.y, angle.z);
    }
    current.angle.z = angle.z;
    mCurAngle = current.angle;
    shape_angle = mCurAngle;

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::railSwim() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/railSwim__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B81788-80B81918 009368 0190+00 1/1 0/0 0/0 .text            waitSwim__11daNpc_zrA_cFv */
BOOL daNpc_zrA_c::waitSwim() {
    calcModulation();

    if (mDamageTimer == 0) {
        BOOL player_attn = mActorMngr[0].getActorP() != NULL;
        if (chkFindPlayer2(player_attn, shape_angle.y)) {
            if (!player_attn) {
                mActorMngr[0].entry(daPy_getPlayerActorClass());
                mTurnMode = 0;
            }
        } else {
            if (player_attn) {
                mActorMngr[0].remove();
                mTurnMode = 0;
            }
        }

        if (mActorMngr[0].getActorP() != NULL) {
            setLookMode(LOOK_PLAYER);
        } else {
            setLookMode(LOOK_NONE);
            if (home.angle.y != mCurAngle.y && step(home.angle.y, -1, -1, 15)) {
                mMode = 0;
            }
        }

        if (home.angle.y == mCurAngle.y) {
            fopAc_ac_c* actor =
                getAttnActorP(mActorMngr[0].getActorP() != NULL, srchAttnActor1,
                              daNpc_zrA_Param_c::m.mAttnRadius, daNpc_zrA_Param_c::m.mAttnUpperY,
                              daNpc_zrA_Param_c::m.mAttnLowerY, daNpc_zrA_Param_c::m.mAttnFovY,
                              shape_angle.y, 120, true);
            if (actor != NULL) {
                mActorMngr[1].entry(actor);
                setLookMode(LOOK_ATTN);
            }
        } else {
            mAttnChangeTimer = 0;
        }
    }

    return true;
}

/* 80B81918-80B81A18 0094F8 0100+00 1/1 0/0 0/0 .text            turnSwimInit__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::turnSwimInit() {
    mPath.reverse();
    mPath.setNextIdxDst(current.pos);
    
    mSwimSpeed.set(0.0f, 0.0f, mSwimSpeedF);
    mDoMtx_stack_c::ZXYrotS(current.angle);
    mDoMtx_stack_c::multVec(&mSwimSpeed, &mSwimSpeed);

    mSwimSpeedF = 0.0f;
    mIsTurning = true;
    mSwimMode = SWIM_TURN;
    
    if (mActionType == ACT_TYPE_0) {
        setMotion(MOT_SWIM_TURN, -1.0f, false);
    } else {
        setMotion(MOT_SWIM_TURN, 4.0f, false);
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::turnSwimInit() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/turnSwimInit__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B81A18-80B81CC8 0095F8 02B0+00 2/2 0/0 0/0 .text            turnSwim__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals and generics
BOOL daNpc_zrA_c::turnSwim() {
    s16 ang_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
    cXyz pos;
    csXyz angle;
    mPath.getDstPosDst2(current.pos, pos);
    angle.x = cLib_targetAngleX(&pos, &current.pos);
    angle.y = cLib_targetAngleY(&current.pos, &pos);
    angle.z = current.angle.z;
    calcSwimAngle(angle, mSwimAngleCalc, 8, ang_step);
    calcBank(ang_step, 8, current.angle.y, angle.z);
    current.angle.z = angle.z;
    mCurAngle = current.angle;
    shape_angle = mCurAngle;

    if (mBaseMotionAnm == ANM_SWIM_TURN) {
        if (mpMorf->getFrame() < 40.0f) {
            cXyz zero(0.0f, 0.0f, 0.0f);
            cLib_chasePos(&mSwimSpeed, zero, 0.7f);
            current.pos += mSwimSpeed;
            mpMorf->setPlaySpeed(0.8f);
        } else {
            cXyz swim_speed;
            mSwimSpeedF = 1.5f * daNpc_zrA_Param_c::m.mSwimSpeed;
            swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);
            mpMorf->setPlaySpeed(1.0f);
        }
    } else if (mBaseMotionAnm == ANM_STILL) {
        cXyz swim_speed;
        mSwimSpeedF = 1.5f * daNpc_zrA_Param_c::m.mSwimSpeed;
        swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
        calcSwimPos(swim_speed);
        mpMorf->setPlaySpeed(1.0f);

        if (mIsTurning) {
            mSwimTurnTimer = 10;
            mIsTurning = false;
        } else if (cLib_calcTimer(&mSwimTurnTimer) == 0) {
            mSwimMode = SWIM_RAIL;
            if (mActionType == ACT_TYPE_0) {
                setMotion(MOT_SWIM_B, -1.0f, false);
            } else {
                setMotion(MOT_SWIM_A, -1.0f, false);
            }
            mSpinTimer = 90;
            mCheckSwimTurn = false;
        }
    }

    if (mAcch.ChkWaterHit()
        && current.pos.y > mAcch.m_wtr.GetHeight() - daNpc_zrA_Param_c::m.mMinDepth)
    {
        current.pos.y = mAcch.m_wtr.GetHeight() - daNpc_zrA_Param_c::m.mMinDepth;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::turnSwim() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/turnSwim__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B81CC8-80B81D68 0098A8 00A0+00 1/1 0/0 0/0 .text            turnSwimCheck__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals and generics
BOOL daNpc_zrA_c::turnSwimCheck() {
    if (mSoldierType != SOLDIER_SPEAR) {
        if (mCheckSwimTurn) {
            if (mpMorf->isLoop()) {
                turnSwimInit();
                turnSwim();
                return true;
            }
        } else if (mCheckSwimTurnTimer == 0) {
            mCheckSwimTurnTimer = cLib_getRndValue(6, 6);
            if (cM_rnd() < 0.5f) {
                mCheckSwimTurn = true;
            }
        }
    }
    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::turnSwimCheck() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/turnSwimCheck__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B81D68-80B81F70 009948 0208+00 1/1 0/0 0/0 .text evasionCalc__11daNpc_zrA_cFR4cXyzR5csXyz */
#ifdef NONMATCHING
// matches with literals and generics
BOOL daNpc_zrA_c::evasionCalc(cXyz& param_0, csXyz& param_1) {
    BOOL ret;
    daPy_py_c* player = daPy_getPlayerActorClass();
    cM3dGLin line;
    cXyz proj;
    f32 dist;
    line.SetStartEnd(current.pos, param_0);
    if (cM3d_Len3dSqPntAndSegLine(&line, &player->current.pos, &proj, &dist) && dist <= 10000.0f) {
        fopAcM_searchPlayerAngleY(this);
        if ((s16)(param_1.y - current.angle.y) > 0) {
            mEvasionAngle = -0x1800;
        } else {
            mEvasionAngle = 0x1800;
        }
        param_1.y += mEvasionAngle;
        mEvasionTimer = 60;
        mSwimFastTurnTimer = 60;
        ret = true;
    } else {
        cXyz vec(0.0f, 0.0f, 500.0f);
        csXyz angle(current.angle.x, current.angle.y, 0);
        mDoMtx_stack_c::ZXYrotS(angle);
        mDoMtx_stack_c::multVec(&vec, &vec);
        vec += current.pos;
        line.SetStartEnd(current.pos, vec);
        if (cM3d_Len3dSqPntAndSegLine(&line, &player->current.pos, &proj, &dist)
                                                            && dist <= 10000.0f) {
            if ((s16)(fopAcM_searchPlayerAngleY(this) - current.angle.y) > 0) {
                mEvasionAngle = -0x1800;
            } else {
                mEvasionAngle = 0x1800;
            }
            param_1.y += mEvasionAngle;
            mEvasionTimer = 60;
            mSwimFastTurnTimer = 60;
            ret = true;
        } else {
            if (cLib_calcTimer(&mEvasionTimer) != 0) {
                param_1.y += mEvasionAngle;
            }
            ret = true;
        }
    }
    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::evasionCalc(cXyz& param_0, csXyz& param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/evasionCalc__11daNpc_zrA_cFR4cXyzR5csXyz.s"
}
#pragma pop
#endif

/* 80B81F70-80B81FB8 009B50 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGLinFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGLin::~cM3dGLin() {
extern "C" asm void __dt__8cM3dGLinFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__8cM3dGLinFv.s"
}
#pragma pop

/* 80B81FB8-80B8204C 009B98 0094+00 13/13 0/0 0/0 .text            calcBank__11daNpc_zrA_cFssRsRs */
void daNpc_zrA_c::calcBank(s16 i_step, s16 i_scale, s16& i_angY, s16& o_angZ) {
    s16 ang_diff_y = i_angY - current.angle.y;
    if (ang_diff_y >= 0x4000) {
        ang_diff_y = 0x4000;
    } else if (ang_diff_y <= -0x4000) {
        ang_diff_y = -0x4000;
    }
    cLib_addCalcAngleS2(&mSwimAngleCalc.z, ang_diff_y, i_scale * 2, i_step);
    cLib_addCalcAngleS2(&o_angZ, mSwimAngleCalc.z, (s16)i_scale, i_step);
}

/* 80B8204C-80B82238 009C2C 01EC+00 1/1 0/0 0/0 .text            calcWaistAngle__11daNpc_zrA_cFv */
#ifdef NONMATCHING
void daNpc_zrA_c::calcWaistAngle() {
    if (mResetWaistAngle) {
        cLib_chaseAngleS(&mWaistAngle.x, 0, daNpc_zrA_Param_c::m.mSwimAngleSpeed / 2);
        cLib_chaseAngleS(&mWaistAngle.y, 0, daNpc_zrA_Param_c::m.mSwimAngleSpeed / 2);
        cLib_chaseAngleS(&mWaistAngle.z, 0, daNpc_zrA_Param_c::m.mSwimAngleSpeed / 2);
    } else {
        mDoMtx_stack_c::push();

        csXyz angle;
        angle.x = cLib_targetAngleX(&field_0x1578, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &field_0x1578);
        angle.z = 0;
        cXyz vec(0.0f, 0.0f, daNpc_zrA_Param_c::m.field_0x8c);
        mDoMtx_stack_c::ZXYrotS(angle);
        mDoMtx_stack_c::multVec(&vec, &field_0x1578);

        if (mIsTurning) {
            vec.set(0.0f, 0.0f, daNpc_zrA_Param_c::m.field_0x90);
            cXyz vec2;
            mDoMtx_stack_c::ZXYrotS(current.angle);
            mDoMtx_stack_c::multVec(&vec, &vec2);
            field_0x1578 -= vec2;
            field_0x1578.normalize();
            field_0x1578 *= daNpc_zrA_Param_c::m.field_0x8c;
        }

        mDoMtx_stack_c::ZXYrotS(current.angle);
        mDoMtx_stack_c::inverse();
        mDoMtx_stack_c::multVec(&field_0x1578, &field_0x1584);
        field_0x1578 += current.pos;
        
        mWaistAngle.x = cM_atan2s(field_0x1584.y, -field_0x1584.z);
        mWaistAngle.y = cM_atan2s(-field_0x1584.x, -field_0x1584.z);
        mWaistAngle.z = 0;

        mDoMtx_stack_c::pop();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::calcWaistAngle() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/calcWaistAngle__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B82238-80B822CC 009E18 0094+00 9/9 0/0 0/0 .text            calcWaistAngleInit__11daNpc_zrA_cFv
 */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrA_c::calcWaistAngleInit() {
    cXyz vec(0.0f, 0.0f, -daNpc_zrA_Param_c::m.field_0x8c);
    mDoMtx_stack_c::ZXYrotS(mCurAngle);
    mDoMtx_stack_c::transM(vec);
    mDoMtx_stack_c::multVecZero(&field_0x1578);
    field_0x1578 += current.pos;
    mResetWaistAngle = false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::calcWaistAngleInit() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/calcWaistAngleInit__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B822CC-80B822D8 009EAC 000C+00 8/8 0/0 0/0 .text            calcWaistAngleStop__11daNpc_zrA_cFv
 */
void daNpc_zrA_c::calcWaistAngleStop() {
    mResetWaistAngle = true;
}

/* 80B822D8-80B82300 009EB8 0028+00 3/3 0/0 0/0 .text calcWaistAngleCheck__11daNpc_zrA_cFv */
BOOL daNpc_zrA_c::calcWaistAngleCheck() {
    if (mSwimMode != SWIM_WAIT && !mResetWaistAngle) {
        return true;
    } else {
        return false;
    }
}

/* 80B82300-80B8247C 009EE0 017C+00 6/6 0/0 0/0 .text            calcModulation__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrA_c::calcModulation() {
    if (mAcch.ChkWaterIn()) {
        if (mAcch.ChkWaterIn() && current.pos.y < mAcch.m_wtr.GetHeight() - 220.0f) {
            cLib_chaseF(&mModulationOffset.x,
                        5.0f - cM_scos(mModulationParam * 0x10000 / 42) * 5.0f, 1.0f);
            cLib_chaseF(&mModulationOffset.y,
                        8.0f - cM_scos(mModulationParam * 0x10000 / 70) * 8.0f, 1.0f);
            cLib_chaseF(&mModulationOffset.z,
                        4.0f - cM_scos(mModulationParam * 0x10000 / 105) * 4.0f, 1.0f);
        } else {
            cLib_chaseF(&mModulationOffset.y,
                        5.0f - cM_scos(mModulationParam * 0x10000 / 35) * 5.0f, 1.0f);
            cLib_chaseF(&mModulationOffset.x, 0.0f, 1.0f);
            cLib_chaseF(&mModulationOffset.z, 0.0f, 1.0f);
        }
        mModulationParam--;
        if (mModulationParam <= 0) {
            mModulationParam = 210;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::calcModulation() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/calcModulation__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B8247C-80B824F4 00A05C 0078+00 2/2 0/0 0/0 .text            resetModulation__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrA_c::resetModulation() {
    cLib_chaseF(&mModulationOffset.y, 0.0f, 1.0f);
    cLib_chaseF(&mModulationOffset.x, 0.0f, 1.0f);
    cLib_chaseF(&mModulationOffset.z, 0.0f, 1.0f);
    mModulationParam = 210;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::resetModulation() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/resetModulation__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* 80B824F4-80B82584 00A0D4 0090+00 17/17 0/0 0/0 .text
 * calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss                */
void daNpc_zrA_c::calcSwimAngle(csXyz& i_target, csXyz& i_calc, s16 i_scale, s16 i_step) {
    cLib_addCalcAngleS2(&i_calc.x, i_target.x, i_scale, i_step);
    cLib_addCalcAngleS2(&current.angle.x, i_calc.x, i_scale, i_step);
    cLib_addCalcAngleS2(&i_calc.y, i_target.y, i_scale, i_step);
    cLib_addCalcAngleS2(&current.angle.y, i_calc.y, i_scale, i_step);
}

/* 80B82584-80B825FC 00A164 0078+00 15/15 0/0 0/0 .text            calcSwimPos__11daNpc_zrA_cFR4cXyz
 */
#ifdef NONMATCHING
// matches with weak functions
void daNpc_zrA_c::calcSwimPos(cXyz& i_speed) {
    csXyz angle = current.angle;
    angle.z = 0;
    mDoMtx_stack_c::ZXYrotS(angle);
    mDoMtx_stack_c::multVec(&i_speed, &i_speed);
    current.pos += i_speed;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::calcSwimPos(cXyz& param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/calcSwimPos__11daNpc_zrA_cFR4cXyz.s"
}
#pragma pop
#endif

/* 80B825FC-80B826F0 00A1DC 00F4+00 8/8 0/0 0/0 .text            calcWaitSwim__11daNpc_zrA_cFi */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrA_c::calcWaitSwim(BOOL param_0) {
    cLib_chaseAngleS(&current.angle.x, 0, daNpc_zrA_Param_c::m.mSwimAngleSpeed);
    cLib_chaseAngleS(&current.angle.z, 0, daNpc_zrA_Param_c::m.mSwimAngleSpeed);
    mCurAngle = current.angle;
    shape_angle = mCurAngle;
    cLib_chaseF(&mSwimSpeedF, 0.0f, 2.0f);
    cLib_chaseF(&mScaleFactor, 1.0f, (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
    calcModulation();
    if (param_0 && mAcch.ChkWaterHit()
        && current.pos.y > mAcch.m_wtr.GetHeight() - daNpc_zrA_Param_c::m.mMinDepth)
    {
        current.pos.y = mAcch.m_wtr.GetHeight() - daNpc_zrA_Param_c::m.mMinDepth;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::calcWaitSwim(BOOL param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/calcWaitSwim__11daNpc_zrA_cFi.s"
}
#pragma pop
#endif

/* 80B826F0-80B82C54 00A2D0 0564+00 1/0 0/0 0/0 .text            ECut_talkSwim__11daNpc_zrA_cFi */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::ECut_talkSwim(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            mAcch.ClrGrndNone();
            mAcch.ClrWallNone();
            setExpression(EXPR_NONE, -1.0f);
            setMotion(MOT_FLOAT, daNpc_zrA_Param_c::m.mMorfFrames, true);
            mTurnMode = 0;
            mMode = 2;
            mSwimSpeed.set(0.0f, 0.0f, mSwimSpeedF);
            mDoMtx_stack_c::ZXYrotS(current.angle);
            mDoMtx_stack_c::multVec(&mSwimSpeed, &mSwimSpeed);
            mSwimSpeedF = 0.0f;
            calcWaistAngleStop();
            break;

        case 1:
            initTalk(mFlowID, NULL);
            break;

        case 2:
            mSwimAngleCalc = current.angle;
            break;
        }
    }

    switch (prm) {
    case 0: {
        calcModulation();
        if (current.angle.x == 0 && current.angle.z == 0 && mSwimSpeed.abs2() < 0.1f
            && mScaleFactor <= 1.05f && mBaseMotionAnm != ANM_FLOAT)
        {
            ret = true;
            setLookMode(LOOK_PLAYER);
            break;
        }

        cLib_chaseAngleS(&current.angle.x, 0, daNpc_zrA_Param_c::m.mSwimAngleSpeed);
        cLib_chaseAngleS(&current.angle.z, 0, daNpc_zrA_Param_c::m.mSwimAngleSpeed);
        cLib_chaseAngleS(&current.angle.y, fopAcM_searchPlayerAngleY(this),
                         daNpc_zrA_Param_c::m.mSwimAngleSpeed);
        cLib_chaseF(&mScaleFactor, 1.0f, (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
        cXyz zero(0.0f, 0.0f, 0.0f);
        cLib_chasePos(&mSwimSpeed, zero, 0.5f);
        current.pos += mSwimSpeed;
        f32 water_y;
        if (fopAcM_getWaterY(&current.pos, &water_y)
            && current.pos.y > water_y - daNpc_zrA_Param_c::m.mMinDepth - 50.0f)
        {
            cLib_chaseF(&current.pos.y, water_y - daNpc_zrA_Param_c::m.mMinDepth - 50.0f, 20.0f);
        }
        mCurAngle = current.angle;
        shape_angle = mCurAngle;
        break;
    }

    case 1:
        calcModulation();
        if (talkProc(NULL, true, NULL)) {
            if (mActionType == ACT_TYPE_0) {
                setMotion(MOT_DIVE_SWIM_B, daNpc_zrA_Param_c::m.mMorfFrames / 2.0f, true);
            } else {
                setMotion(MOT_DIVE_SWIM_A, daNpc_zrA_Param_c::m.mMorfFrames / 2.0f, true);
            }
            mSwimAngleCalc = current.angle;
            mSwimSpeedScale = 1.0f;
            mSwimSpeedF = mSwimSpeedScale * daNpc_zrA_Param_c::m.mSwimSpeed;
            setLookMode(LOOK_NONE);
            ret = true;
        }
        break;

    case 2: {
        resetModulation();
        s16 swim_angle_speed = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
        cLib_chaseF(&mScaleFactor, daNpc_zrA_Param_c::m.mMaxScaleFactor,
                    (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
        cXyz vec;
        csXyz angle;
        mPath.getDstPosDst2(current.pos, vec);
        angle.x = cLib_targetAngleX(&vec, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &vec);
        angle.z = current.angle.z;
        calcSwimAngle(angle, mSwimAngleCalc, 8, swim_angle_speed);
        mCurAngle = current.angle;
        shape_angle = mCurAngle;

        if (mBaseMotionAnm != ANM_DIVE) {
            ret = true;
            if (!calcWaistAngleCheck()) {
                calcWaistAngleInit();
                mSwimSpeedScale = 1.0f;
                mSwimSpeedF = mSwimSpeedScale * daNpc_zrA_Param_c::m.mSwimSpeed;
            }
            cXyz swim_speed(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);
            mAcch.SetGrndNone();
            mAcch.SetWallNone();
        }

        if (mAcch.ChkWaterHit()
            && current.pos.y > mAcch.m_wtr.GetHeight() - daNpc_zrA_Param_c::m.mMinDepth)
        {
            current.pos.y = mAcch.m_wtr.GetHeight() - daNpc_zrA_Param_c::m.mMinDepth;
        }
        break;
    }

    default:
        ret = true;
        break;
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::ECut_talkSwim(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/ECut_talkSwim__11daNpc_zrA_cFi.s"
}
#pragma pop
#endif

/* 80B82C54-80B82E88 00A834 0234+00 3/0 0/0 0/0 .text            waitWaterfall__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::waitWaterfall(void* param_0) {
    switch (mMode) {
    case 0:
        setExpressionAnm(ANM_NONE, false);
        if (mMotion != MOT_FLOAT && mMotion != MOT_FLOAT_B) {
            setMotion(MOT_WAIT_SWIM, -1.0f, false);
        }
        gravity = 0.0f;
        speed.setall(0.0f);
        speedF = 0.0f;
        mAcch.SetGrndNone();
        mAcch.SetWallNone();
        setLookMode(LOOK_NONE);
        mAttnChangeTimer = 0;
        mTurnMode = 0;
        mSwimMode = SWIM_RAIL;
        calcWaistAngleStop();
        field_0x1550 = true;
        mCcStts.SetWeight(0xff);
        mMode = 2;
        // fallthrough

    case 2:
        calcWaitSwim(false);
        if (mScaleFactor == 1.0f) {
            mSwimMode = SWIM_WAIT;
        }

        if (mDamageTimer == 0 && !mTwilight) {
            BOOL player_attn = mActorMngr[0].getActorP() != NULL;
            if (chkFindPlayer2(player_attn, shape_angle.y)) {
                if (!player_attn) {
                    mActorMngr[0].entry(daPy_getPlayerActorClass());
                    mTurnMode = 0;
                }
            } else {
                if (player_attn) {
                    mActorMngr[0].remove();
                    mTurnMode = 0;
                }
            }

            if (mActorMngr[0].getActorP() != NULL) {
                setLookMode(LOOK_PLAYER);
            } else {
                setLookMode(LOOK_NONE);
                if (home.angle.y != mCurAngle.y && step(home.angle.y, -1, -1, 15)) {
                    mMode = 0;
                }
            }
        }
        break;

    case 3:
        speedF = 0.0f;
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::waitWaterfall(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/waitWaterfall__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* 80B82E88-80B833C8 00AA68 0540+00 2/0 0/0 0/0 .text            swimWaterfall__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::swimWaterfall(void* param_0) {
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed * 2;
    s16 angle_scale = 2;
    cXyz point, swim_speed;

    switch (mMode) {
    case 0:
        mAcch.SetGrndNone();
        mAcch.SetWallNone();
        gravity = 0.0f;
        speed.setall(0.0f);
        speedF = 0.0f;
        field_0x153d = false;
        setExpressionAnm(ANM_NONE, false);
        if (mActionType == ACT_TYPE_0) {
            setMotion(MOT_SWIM_B, -1.0f, false);
        } else {
            setMotion(MOT_SWIM_A, -1.0f, false);
        }
        mSwimMode = SWIM_RAIL;
        mScaleFactor = daNpc_zrA_Param_c::m.mMaxScaleFactor;
        mCcStts.SetWeight(0);
        setLookMode(LOOK_NONE);
        mAttnChangeTimer = 0;
        mTurnMode = 0;
        mMode = 2;
        field_0x153e = false;
        mSwimAngleCalc = current.angle;
        calcWaistAngleInit();
        // fallthrough

    case 2: {
        int idx = mPath.getIdx();
        if (mPath.getDstPosDst2(current.pos, point) && idx == 0 && mPath.chkReverse()) {
            mPath.reverse();
            mActionSelect = 0;
            mSwimSpeedScale = 1.0f;
            setMotion(MOT_FLOAT_B, -1.0f, false);
            setAction(&waitWaterfall);
            return false;
        }

        csXyz angle;
        angle.x = cLib_targetAngleX(&point, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &point);
        angle.z = current.angle.z;

        cXyz prev_point;
        mPath.getBeforePos(prev_point);
        if (cLib_targetAngleX(&point, &prev_point) > 0x3000) {
            angle.x = 0x4000;
            angle.y = 0;
            mSwimSpeedScale = 3.0f;
        } else {
            mSwimSpeedScale = 1.0f;
        }

        s16 ang_diff_x = angle.x - current.angle.x;
        s16 ang_diff_y = angle.y - current.angle.y;
        bool bvar5 = false;

        if (mActionType != ACT_TYPE_0 && (abs(ang_diff_x) > 0x3000 || abs(ang_diff_y) > 0x3000)
                                      && mSwimSpeedF > 14.0f) {
            f32 frame = mpMorf->getFrame();
            if ((angle.z <= 0x2000 || ang_diff_y >= 0) && (angle.z >= -0x2000 || ang_diff_y <= 0)) {
                if (ang_diff_x < -0x3000) {
                    if (frame >= 2.0f && frame <= 4.0f) {
                        bvar5 = true;
                    }
                } else {
                    if (frame >= 16.0f && frame <= 18.0f) {
                        mpMorf->setFrame(18.0f);
                        mpMorf->setMorf(4.0f);
                        mpMorf->setPlaySpeed(0.1f);
                        bvar5 = true;
                    }
                }
            }

            if (bvar5) {
                calcSwimAngle(angle, mSwimAngleCalc, 1, angle_step);
            } else {
                calcSwimAngle(angle, mSwimAngleCalc, 2, angle_step / 2);
            }
        } else {
            calcSwimAngle(angle, mSwimAngleCalc, 2, angle_step);
        }

        if (current.angle.x > 0x2000) {
            mSwimSpeedScale = 3.0f;
            angle_step *= 2.0f;
            angle_scale = 2;
        } else {
            mSwimSpeedScale = 1.0f;
        }
        cLib_addCalc2(&mSwimSpeedF, mSwimSpeedScale * daNpc_zrA_Param_c::m.mSwimSpeed, 0.1f, 1.0f);
        swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
        calcSwimPos(swim_speed);

        if (!bvar5) {
            f32 play_speed = mpMorf->getPlaySpeed();
            f32 target_speed =
                cLib_minMaxLimit(mSwimSpeedF / daNpc_zrA_Param_c::m.mSwimAnmRate, 0.0f, 1.5f);
            cLib_addCalc2(&play_speed, target_speed, 0.2f, 0.1f);
            mpMorf->setPlaySpeed(play_speed);
        }

        calcBank(angle_step, angle_scale, angle.y, angle.z);
        current.angle.z = angle.z;
        mCurAngle = current.angle;
        shape_angle = mCurAngle;
        break;
    }

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::swimWaterfall(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/swimWaterfall__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* 80B833C8-80B83548 00AFA8 0180+00 2/0 0/0 0/0 .text            diveWaterfall__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::diveWaterfall(void* param_0) {
    switch (mMode) {
    case 0:
        mPath.onReverse();
        mPath.setIdx(mPath.getEndIdx() - 1);
        mPath.setNextIdxDst(current.pos);
        setExpressionAnm(ANM_NONE, false);
        setMotion(MOT_DIVE_B_SWIM_A, -1.0f, false);
        mSwimAngleCalc = current.angle;
        mSwimSpeedScale = 1.0f;
        mSwimSpeedF = mSwimSpeedScale * daNpc_zrA_Param_c::m.mSwimSpeed;
        setLookMode(LOOK_NONE);
        mSwimMode = SWIM_RAIL;
        mActionSelect = 3;
        mMode = 2;
        // fallthrough

    case 2:
        if (diveCalc(daNpc_zrA_Param_c::m.mSwimAngleSpeed, 4, false)) {
            mActionSelect = 1;
            setAction(&swimWaterfall);
        }
        break;

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::diveWaterfall(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/diveWaterfall__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* 80B83548-80B837E8 00B128 02A0+00 2/0 0/0 0/0 .text            talkSwim__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::talkSwim(void* param_0) {
    BOOL bvar2 = false;
    int flow_id;

    switch (mMode) {
    case 0:
        if (mDamageTimer != 0) {
            break;
        }
        setExpression(EXPR_NONE, -1.0f);
        flow_id = mFlowID;
        mTurnMode = 0;
        mMode = 2;
        initTalk(flow_id, NULL);
        field_0x1558 = 0;
        // fallthrough

    case 2:
        switch (field_0x1558) {
        case 0:
            calcModulation();
            if (field_0x9ea) {
                bvar2 = true;
            } else {
                setLookMode(LOOK_NONE);
                if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                    bvar2 = true;
                } else if (step(fopAcM_searchPlayerAngleY(this), -1, -1, 15)) {
                    mTurnMode = 0;
                }
            }

            if (bvar2 && talkProc(NULL, 1, NULL)) {
                if (mFlow.getChoiceNo() == 0) {
                    field_0x1558 = 1;
                    mSwimAngleCalc = current.angle;
                    mSwimSpeedScale = 1.0f;
                    mSwimSpeedF = mSwimSpeedScale * daNpc_zrA_Param_c::m.mSwimSpeed;
                    setLookMode(LOOK_NONE);
                } else {
                    mMode = 3;
                    dComIfGp_event_reset();
                    setAction(&waitWaterfall);
                    field_0x9ec = false;
                }
            }
            break;

        case 1:
            mMode = 3;
            dComIfGp_event_reset();
            mActionSelect = 1;
            if (!dKy_daynight_check()) {
                mOrderEvtNo = EVT_CARRY_WATERFALL;
            } else {
                mOrderEvtNo = EVT_CARRY_WATERFALL_NIGHT;
            }
            changeEvent(l_resNames[l_evtGetParamList[mOrderEvtNo].arcIdx],
                        l_evtNames[l_evtGetParamList[mOrderEvtNo].fileIdx], 1, 0xffff);
        }
        break;

    case 3:
        break;
    }

    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::talkSwim(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/talkSwim__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* 80B837E8-80B83D08 00B3C8 0520+00 1/0 0/0 0/0 .text ECut_carryWaterfall__11daNpc_zrA_cFi */
#ifdef NONMATCHING
// matches with literals and generics
BOOL daNpc_zrA_c::ECut_carryWaterfall(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            dComIfGp_getEvent().setSkipProc(this, dEv_defaultSkipProc, 0);
            Z2GetAudioMgr()->subBgmStart(Z2BGM_ZORA_D01);
            break;

        case 10:
            setExpression(EXPR_NONE, -1.0f);
            setMotion(MOT_FALLSWIM, -1.0f, false);
            current.angle.y = -0x8000;
            setAngle(current.angle.y);
            mPath.setNextIdxDst(current.pos);
            mAcch.SetGrndNone();
            mAcch.SetWallNone();
            field_0x153d = false;
            mSwimMode = SWIM_RAIL;
            mScaleFactor = daNpc_zrA_Param_c::m.mMaxScaleFactor;
            mCcStts.SetWeight(0);
            setLookMode(LOOK_NONE);
            mAttnChangeTimer = 0;
            mTurnMode = 0;
            field_0x153e = false;
            mSwimAngleCalc = current.angle;
            calcWaistAngleInit();
            break;

        case 20:
            mPath.setIdx(5);
            current.pos = mPath.getPntPos(5);
            mPath.setNextIdxDst(current.pos);
            current.angle.y = -0x8000;
            current.angle.x = -0x4000;
            mCurAngle.x = -0x4000;
            shape_angle.x = -0x4000;
            setAngle(current.angle.y);
            break;

        case 30:
            mEventTimer = 60;
            break;

        case 40:
            break;
        }
    }

    switch (prm) {
    case 0:
        calcWaitSwim(false);
        ret = true;
        break;

    case 10:
        ret = true;
        // fallthrough

    case 20:
        resetModulation();
        if (mMotion != MOT_FALLSWIM) {
            calcWaitSwim(false);
            if (mScaleFactor == 1.0f) {
                mSwimMode = SWIM_WAIT;
            }
            ret = true;
        } else {
            s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed * 2;
            cXyz pos, swim_speed;
            f32 speed_scale = mSwimSpeedScale;
            if (mPath.getDstPosDst2(current.pos, pos) && mPath.getIdx() == mPath.getNextIdx()) {
                mPath.reverse();
                mSwimMode = SWIM_RAIL;
                mActionSelect = 3;
                setMotion(MOT_FLOAT_B, -1.0f, false);
                calcWaistAngleStop();
                ret = true;
            } else {
                csXyz angle;
                angle.x = cLib_targetAngleX(&pos, &current.pos);
                angle.y = cLib_targetAngleY(&current.pos, &pos);
                angle.z = current.angle.z;
                calcSwimAngle(angle, mSwimAngleCalc, 4, angle_step);
                cLib_addCalc2(&mSwimSpeedF, speed_scale * daNpc_zrA_Param_c::m.mSwimSpeed,
                            0.1f, 1.0f);
                swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
                calcSwimPos(swim_speed);
                current.angle.z = angle.z;
                shape_angle.x = mCurAngle.x = current.angle.x;
                shape_angle.z = mCurAngle.z = current.angle.z;
                if (current.angle.x < -0x2000) {
                    cLib_addCalcAngleS2(&mCurAngle.y, -0x8000, 4, angle_step);
                } else {
                    cLib_addCalcAngleS2(&mCurAngle.y, current.angle.y, 4, angle_step);
                }
                shape_angle.y = mCurAngle.y;
            }
        }
        break;

    case 30:
        if (cLib_calcTimer(&mEventTimer) == 0) {
            ret = true;
        }
        calcWaitSwim(false);
        if (mScaleFactor == 1.0f) {
            mSwimMode = SWIM_WAIT;
        }
        cLib_chaseAngleS(&mCurAngle.y, fopAcM_searchPlayerAngleY(this),
                         daNpc_zrA_Param_c::m.mSwimAngleSpeed);
        setAngle(mCurAngle.y);
        break;

    case 40:
        ret = true;
        break;

    default:
        ret = true;
        break;
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::ECut_carryWaterfall(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/ECut_carryWaterfall__11daNpc_zrA_cFi.s"
}
#pragma pop
#endif

/* 80B83D08-80B83FA4 00B8E8 029C+00 1/0 0/0 0/0 .text ECut_carryWaterfallSkip__11daNpc_zrA_cFi */
#ifdef NONMATCHING
// matches with literals and generics
BOOL daNpc_zrA_c::ECut_carryWaterfallSkip(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            Z2GetAudioMgr()->subBgmStop();
            break;
        
        case 10:
            mPath.onReverse();
            mPath.setIdx(mPath.getEndIdx() - 1);
            current.pos = mPath.getPntPos(mPath.getEndIdx() - 1);
            old.pos = current.pos;
            current.angle.set(0, -0x8000, 0);
            shape_angle = mCurAngle = current.angle;
            setLookMode(LOOK_NONE);
            setMotion(MOT_FLOAT_B, -1.0f, false);
            mSwimMode = SWIM_RAIL;
            mActionSelect = 3;
            calcWaistAngleStop();
            mAttnChangeTimer = 0;
            mTurnMode = 0;
            mSwimAngleCalc = current.angle;
            mEventTimer = 60;
            break;

        case 20:
            break;

        default:
            break;
        }
    }

    switch (prm) {
    case 0:
        ret = true;
        break;

    case 10:
        if (cLib_calcTimer(&mEventTimer) == 0) {
            ret = true;
        }
        calcWaitSwim(false);
        if (mScaleFactor == 1.0f) {
            mSwimMode = SWIM_WAIT;
        }
        cLib_chaseAngleS(&mCurAngle.y, fopAcM_searchPlayerAngleY(this),
                         daNpc_zrA_Param_c::m.mSwimAngleSpeed);
        setAngle(mCurAngle.y);
        break;

    case 20:
        ret = true;
        break;

    default:
        ret = true;
        break;
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::ECut_carryWaterfallSkip(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/ECut_carryWaterfallSkip__11daNpc_zrA_cFi.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8CC30-80B8CC34 0007D8 0004+00 0/1 0/0 0/0 .rodata          @8591 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8591 = -6.0f;
COMPILER_STRIP_GATE(0x80B8CC30, &lit_8591);
#pragma pop

/* 80B8CC34-80B8CC38 0007DC 0004+00 0/4 0/0 0/0 .rodata          @8592 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8592 = 6.0f;
COMPILER_STRIP_GATE(0x80B8CC34, &lit_8592);
#pragma pop

/* 80B8CC38-80B8CC3C 0007E0 0004+00 0/1 0/0 0/0 .rodata          @8593 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8593 = -9.0f;
COMPILER_STRIP_GATE(0x80B8CC38, &lit_8593);
#pragma pop

/* 80B8CC3C-80B8CC40 0007E4 0004+00 0/4 0/0 0/0 .rodata          @8594 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8594 = 9.0f;
COMPILER_STRIP_GATE(0x80B8CC3C, &lit_8594);
#pragma pop

/* 80B8CC40-80B8CC44 0007E8 0004+00 0/4 0/0 0/0 .rodata          @8595 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8595 = 8.5f;
COMPILER_STRIP_GATE(0x80B8CC40, &lit_8595);
#pragma pop

/* 80B8CC44-80B8CC48 0007EC 0004+00 0/1 0/0 0/0 .rodata          @8596 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8596 = 57.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B8CC44, &lit_8596);
#pragma pop

/* 80B8CC48-80B8CC4C 0007F0 0004+00 0/1 0/0 0/0 .rodata          @8597 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8597 = 12.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B8CC48, &lit_8597);
#pragma pop

/* 80B8CC4C-80B8CC50 0007F4 0004+00 0/2 0/0 0/0 .rodata          @8598 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8598 = 36.0f;
COMPILER_STRIP_GATE(0x80B8CC4C, &lit_8598);
#pragma pop

/* 80B8CC50-80B8CC54 0007F8 0004+00 0/1 0/0 0/0 .rodata          @8599 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8599 = 6.5f;
COMPILER_STRIP_GATE(0x80B8CC50, &lit_8599);
#pragma pop

/* 80B83FA4-80B84200 00BB84 025C+00 1/1 0/0 0/0 .text            diveCalc__11daNpc_zrA_cFssi */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::diveCalc(s16 i_angleStep, s16 i_angleScale, BOOL param_2) {
    cLib_chaseF(&mScaleFactor, daNpc_zrA_Param_c::m.mMaxScaleFactor,
                (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
    cXyz pos;
    mPath.getDstPosDst2(current.pos, pos);
    csXyz angle;
    angle.x = cLib_targetAngleX(&pos, &current.pos);
    angle.y = cLib_targetAngleY(&current.pos, &pos);
    angle.z = current.angle.z;
    calcSwimAngle(angle, mSwimAngleCalc, i_angleScale, i_angleStep);
    shape_angle = mCurAngle = current.angle;

    f32 frame = mpMorf->getFrame();
    cXyz dive_speed(0.0f, 0.0f, 0.0f);
    if (frame < 3.0f) {
        dive_speed.set(0.0f, -6.0f, 0.0f);
    } else if (frame < 6.0f) {
        dive_speed.set(0.0f, -9.0f, 0.0f);
    } else if (frame < 9.0f) {
        dive_speed.set(0.0f, -9.0f, 8.5f);
    } else if (frame < 13.0f) {
        dive_speed.set(0.0f, -9.0f, 5.7f);
    } else if (frame < 20.0f) {
        dive_speed.set(0.0f, 3.0f, 2.4f);
    } else if (frame < 36.0f) {
        dive_speed.set(2.0f, 3.0f, 6.5f);
    }
    mDoMtx_stack_c::ZXYrotS(current.angle);
    mDoMtx_stack_c::multVec(&dive_speed, &dive_speed);
    current.pos += dive_speed;

    if (param_2 && mAcch.ChkWaterIn()
        && current.pos.y > mAcch.m_wtr.GetHeight() - daNpc_zrA_Param_c::m.mMinDepth)
    {
        current.pos.y = mAcch.m_wtr.GetHeight() - daNpc_zrA_Param_c::m.mMinDepth;
    }

    if (mBaseMotionAnm == ANM_SWIM_A || mBaseMotionAnm == ANM_SWIM_B) {
        return true;
    } else {
        return false;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::diveCalc(s16 param_0, s16 param_1, int param_2) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/diveCalc__11daNpc_zrA_cFssi.s"
}
#pragma pop
#endif

/* 80B84200-80B8424C 00BDE0 004C+00 1/1 0/0 0/0 .text            s_subHoz__FPvPv */
static void* s_subHoz(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_NPC_HOZ) {
        return i_proc;
    }
    return NULL;
}

/* 80B8424C-80B84298 00BE2C 004C+00 3/3 0/0 0/0 .text            s_sub__FPvPv */
static void* s_sub(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_CANOE) {
        return i_proc;
    }
    return NULL;
}

/* ############################################################################################## */
/* 80B8CC54-80B8CC58 0007FC 0004+00 0/1 0/0 0/0 .rodata          @8871 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8871 = 1000.0f;
COMPILER_STRIP_GATE(0x80B8CC54, &lit_8871);
#pragma pop

/* 80B8CC58-80B8CC5C 000800 0004+00 0/3 0/0 0/0 .rodata          @8872 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8872 = 0x4705FD72;
COMPILER_STRIP_GATE(0x80B8CC58, &lit_8872);
#pragma pop

/* 80B8CC5C-80B8CC60 000804 0004+00 0/3 0/0 0/0 .rodata          @8873 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8873 = 0xC5CC6EE9;
COMPILER_STRIP_GATE(0x80B8CC5C, &lit_8873);
#pragma pop

/* 80B8CC60-80B8CC64 000808 0004+00 0/3 0/0 0/0 .rodata          @8874 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8874 = 0xC6BD673C;
COMPILER_STRIP_GATE(0x80B8CC60, &lit_8874);
#pragma pop

/* 80B84298-80B84B74 00BE78 08DC+00 4/0 0/0 0/0 .text            waitRiverDescend__11daNpc_zrA_cFPv
 */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::waitRiverDescend(void* param_0) {
    switch (mMode) {
    case 0:
        setExpressionAnm(ANM_NONE, false);
        if (mMotion != MOT_FLOAT_B) {
            setMotion(MOT_WAIT_SWIM, -1.0f, false);
        }
        gravity = 0.0f;
        speed.setall(0.0f);
        speedF = 0.0f;
        setLookMode(LOOK_NONE);
        mAttnChangeTimer = 0;
        mTurnMode = 0;
        calcWaistAngleStop();
        field_0x1550 = true;
        mSwimSpeedF = 0.0f;
        field_0x1500 = daPy_getPlayerActorClass()->current.pos;
        mIsTurning = true;
        mMode = 2;
        // fallthrough

    case 2: {
        daPy_py_c* player = daPy_getPlayerActorClass();
        calcWaitSwim(true);
        cXyz pos;
        moveRiverPosCalc(pos);

        if (mGameMode == GAME_MODE_3) {
            if (mActorMngr[2].getActorP() == NULL) {
                fopAc_ac_c* canoe = (fopAc_ac_c*)fpcM_Search(s_sub, this);
                if (canoe != NULL
                    && !((player->current.pos - this->current.pos).absXZ() > 1000.0f))
                {
                    mActorMngr[2].entry(canoe);
                    if (!player->checkCanoeSlider()) {
                        player->setCanoeSlider();
                        mActionSelect = 4;
                        setAction(&swimGoalRiverDescend);
                        break;
                    }
                }
            }
        } else if (mGameMode == GAME_MODE_0) {
            if (mActorMngr[2].getActorP() == NULL) {
                daNpc_Hoz_c* iza = (daNpc_Hoz_c*)fpcM_Search(s_subHoz, this);
                if (iza != NULL) {
                    mActorMngr[2].entry(iza);
                    if (iza->getType() == daNpc_Hoz_c::TYPE_1
                        || iza->getType() == daNpc_Hoz_c::TYPE_5)
                    {
                        mGameMode = GAME_MODE_1;
                        if (dComIfGs_isSwitch(mSwitch1, fopAcM_GetRoomNo(this))) {
                            field_0x15c0 = 2;
                        }
                    } else {
                        mGameMode = GAME_MODE_2;
                        if (!daNpcF_chkEvtBit(0x60)) {
                            daNpcF_onEvtBit(0x60);
                        }
                    }
                }
            }
        }

        if (player->checkCanoeRide()) {
            if (mGameMode == GAME_MODE_2) {
                daNpc_Hoz_c* iza = static_cast<daNpc_Hoz_c*>(mActorMngr[2].getActorP());
                if (iza != NULL && iza->getGameStartFlag()) {
                    mActionSelect = 3;
                    mPath.setNextIdx();
                    setAction(&diveRiverDescend);
                    break;
                }
            } else if (mGameMode == GAME_MODE_1) {
                if (field_0x15c0 == 0) {
                    if ((player->current.pos - current.pos).absXZ()
                                                < daNpc_zrA_Param_c::m.field_0xa8) {
                        field_0x15c0 = 1;
                        mOrderEvtNo = EVT_BEFORE_BLAST_ZRR;
                    }
                } else if (field_0x15c0 == 1) {
                    cXyz vec2(34301.45f, -6541.864f, -24243.62f);
                    if (dComIfGs_isSwitch(mSwitch1, fopAcM_GetRoomNo(this))) {
                        mOrderEvtNo = EVT_AFTER_BLAST_ZRR;
                        mOrderNewEvt = true;
                    } else {
                        if ((current.pos - vec2).absXZ() >= 100.0f) {
                            mActionSelect = 3;
                            setAction(&diveRiverDescend);
                        }
                    }
                } else {
                    cXyz vec3 = player->current.pos;
                    vec3 -= current.pos;
                    if (vec3.absXZ() < 10000.0f) {
                        mPath.setNextIdxDst(current.pos);
                        mActionSelect = 3;
                        setAction(&diveRiverDescend);
                        break;
                    }
                }
            }

            cLib_addCalcAngleS2(&mCurAngle.y, fopAcM_searchPlayerAngleY(this), 2, 0x800);
            setAngle(mCurAngle.y);
        }

        break;
    }

    case 3:
        speedF = 0.0f;
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::waitRiverDescend(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/waitRiverDescend__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8CC64-80B8CC68 00080C 0004+00 0/1 0/0 0/0 .rodata          @9323 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9323 = 9.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B8CC64, &lit_9323);
#pragma pop

/* 80B8CC68-80B8CC6C 000810 0004+00 0/1 0/0 0/0 .rodata          @9324 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9324 = 7.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B8CC68, &lit_9324);
#pragma pop

/* 80B8CC6C-80B8CC70 000814 0004+00 0/1 0/0 0/0 .rodata          @9325 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9325 = 5000.0f;
COMPILER_STRIP_GATE(0x80B8CC6C, &lit_9325);
#pragma pop

/* 80B8CC70-80B8CC74 000818 0004+00 0/1 0/0 0/0 .rodata          @9326 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9326 = 3500.0f;
COMPILER_STRIP_GATE(0x80B8CC70, &lit_9326);
#pragma pop

/* 80B8CC74-80B8CC78 00081C 0004+00 0/1 0/0 0/0 .rodata          @9327 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9327 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B8CC74, &lit_9327);
#pragma pop

/* 80B8CC78-80B8CC7C 000820 0004+00 0/1 0/0 0/0 .rodata          @9328 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9328 = 3000.0f;
COMPILER_STRIP_GATE(0x80B8CC78, &lit_9328);
#pragma pop

/* 80B8CC7C-80B8CC80 000824 0004+00 0/2 0/0 0/0 .rodata          @9329 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9329 = 0.25f;
COMPILER_STRIP_GATE(0x80B8CC7C, &lit_9329);
#pragma pop

/* 80B8CC80-80B8CC84 000828 0004+00 0/5 0/0 0/0 .rodata          @9330 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9330 = 25.0f;
COMPILER_STRIP_GATE(0x80B8CC80, &lit_9330);
#pragma pop

/* 80B8CC84-80B8CC88 00082C 0004+00 0/2 0/0 0/0 .rodata          @9331 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9331 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B8CC84, &lit_9331);
#pragma pop

/* 80B8CC88-80B8CC8C 000830 0004+00 0/2 0/0 0/0 .rodata          @9332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9332 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80B8CC88, &lit_9332);
#pragma pop

/* 80B8CC8C-80B8CC90 000834 0004+00 0/2 0/0 0/0 .rodata          @9333 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9333 = 17.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B8CC8C, &lit_9333);
#pragma pop

/* 80B84B74-80B85B14 00C754 0FA0+00 2/2 0/0 0/0 .text            swimRiverDescend__11daNpc_zrA_cFPv
 */
#ifdef NONMATCHING
// stack problems
BOOL daNpc_zrA_c::swimRiverDescend(void* param_0) {
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
    s16 angle_scale = 6;
    f32 water_height = mAcch.m_wtr.GetHeight();

    switch (mMode) {
    case 0:
        gravity = 0.0f;
        speed.setall(0.0f);
        speedF = 0.0f;
        field_0x153d = false;
        setExpressionAnm(ANM_NONE, false);
        if (mActionType == ACT_TYPE_0) {
            setMotion(MOT_SWIM_B, -1.0f, false);
        } else {
            setMotion(MOT_SWIM_A, -1.0f, false);
        }
        mSwimMode = SWIM_RAIL;
        mCcStts.SetWeight(0);
        setLookMode(LOOK_NONE);
        mAttnChangeTimer = 0;
        mTurnMode = 0;
        mMode = 2;
        field_0x153e = false;
        mSwimAngleCalc = current.angle;
        calcWaistAngleInit();
        field_0x1500 = daPy_getPlayerActorClass()->current.pos;
        // fallthrough

    case 2: {
        csXyz angle;
        daPy_py_c* player = daPy_getPlayerActorClass();
        cLib_chaseF(&mScaleFactor, daNpc_zrA_Param_c::m.mMaxScaleFactor,
                    (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
        int ivar8 = mRiverPathIdx;
        cXyz pos, swim_speed;
        moveRiverPosCalc(pos);

        if (field_0x153c) {
            mMeterCount = dMeter2Info_getNowCount();
            cXyz head_pos;
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
            mDoMtx_stack_c::scaleM(scale);
            mDoMtx_stack_c::multVecZero(&head_pos);

            if (field_0x153e) {
                if (mIsAboveWater && mpMorf->getFrame() > 13.0f && mpMorf->getFrame() < 17.0f) {
                    f32 play_speed = mpMorf->getPlaySpeed();
                    cLib_addCalc2(&play_speed, 0.3f, 0.7f, 0.5f);
                    mpMorf->setPlaySpeed(play_speed);
                }

                angle.y = cLib_targetAngleY(&current.pos, &pos);
                cLib_addCalcAngleS2(&mSwimAngleCalc.y, angle.y, angle_scale, angle_step);
                cLib_addCalcAngleS2(&current.angle.y, mSwimAngleCalc.y, angle_scale, angle_step);

                f32 swim_speed_f = mSwimSpeed.absXZ();
                mSwimSpeed.x = 0.0f;
                mSwimSpeed.z = swim_speed_f;
                mDoMtx_stack_c::YrotS(current.angle.y);
                mDoMtx_stack_c::multVec(&mSwimSpeed, &mSwimSpeed);
                calcBank(angle_step / 2, angle_scale * 2, current.angle.y, current.angle.z);
                mSwimSpeed.y -= 1.0f;
                current.pos += mSwimSpeed;

                if (current.angle.x < 0x3000) {
                    current.angle.x = -cM_atan2s(mSwimSpeed.y, mSwimSpeed.absXZ());
                }
                shape_angle = mCurAngle = current.angle;

                if (mAcch.ChkWaterHit()) {
                    if (mIsAboveWater
                        && mSwimSpeed.y <= 0.0f && head_pos.y + mSwimSpeed.y <= water_height)
                    {
                        cXyz wpillar_pos = head_pos;
                        wpillar_pos.y = water_height;
                        fopKyM_createWpillar(&wpillar_pos, 2.5f, 0);
                        mIsAboveWater = false;
                        mCreatureSound.startCreatureSound(Z2SE_ZRA_DIVE_SPLASH, 0, -1);
                        mpMorf->setPlaySpeed(1.0f);
                    }

                    if (current.pos.y <= water_height - daNpc_zrA_Param_c::m.mMinDepth) {
                        field_0x153e = false;
                        field_0x153c = false;
                        mSwimSpeedF = mSwimSpeed.abs();
                    }
                }

                return true;
            }

            angle.y = cLib_targetAngleY(&current.pos, &pos);
            angle.z = current.angle.z;
            if (mSwimSpeedF > 40.0f) {
                angle.x = -0x3000;
                if (mAcch.ChkWaterHit()) {
                    if (head_pos.y < water_height) {
                        angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed * 2;
                        angle_scale = 2;
                    } else if (!mIsAboveWater) {
                        cXyz wpillar_pos = head_pos;
                        wpillar_pos.y = water_height;
                        fopKyM_createWpillar(&wpillar_pos, 2.5f, 0);
                        mIsAboveWater = true;
                        mCreatureSound.startCreatureSound(Z2SE_ZRA_DIVE_SPLASH_OUT, 0, -1);
                    } else {
                        if (mpMorf->getFrame() > 13.0f && mpMorf->getFrame() < 17.0f) {
                            f32 play_speed = mpMorf->getPlaySpeed();
                            cLib_addCalc2(&play_speed, 0.3f, 0.7f, 0.8f);
                            mpMorf->setPlaySpeed(play_speed);
                        }
                        if (current.pos.y > water_height && current.angle.x < -0x2000) {
                            swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
                            calcSwimPos(swim_speed);
                            mSwimSpeed = swim_speed;
                            field_0x153e = true;
                            if (mSwimSpeed.y > 20.0f) {
                                mSwimSpeed.y = 20.0f;
                            }
                            calcBank(angle_step, angle_scale, angle.y, angle.z);
                            current.angle.z = angle.z;
                            return true;
                        }
                    }
                }
            } else {
                angle.x = cLib_targetAngleX(&pos, &current.pos);
            }
        } else {
            u8 meter_count = dMeter2Info_getNowCount();
            if (mGameMode != GAME_MODE_1 && meter_count > mMeterCount) {
                field_0x153c = true;
            }
            mMeterCount = meter_count;

            if (mRiverPathIdx == mPath.getEndIdx()) {
                angle.x = 0x1000;
                angle.y = -0x4000;
                angle.z = current.angle.z;
            } else {
                angle.x = cLib_targetAngleX(&pos, &current.pos);
                angle.y = cLib_targetAngleY(&current.pos, &pos);
                angle.z = current.angle.z;
            }

            if (mGameMode == GAME_MODE_1 && ivar8 != mRiverPathIdx) {
                createRuppi();
            }
        }

        cXyz vec = field_0x1500 - player->current.pos;
        f32 target_speed = vec.abs();
        if (target_speed < daNpc_zrA_Param_c::m.mSwimSpeed) {
            target_speed = daNpc_zrA_Param_c::m.mSwimSpeed;
        } else {
            target_speed *= 1.4f;
        }

        if ((player->current.pos - current.pos).absXZ() < 500.0f) {
            angle.x += 0x1000;
        }

        if (field_0x153c) {
            if (target_speed < 3.0f * daNpc_zrA_Param_c::m.mSwimSpeed) {
                target_speed = 3.0f * daNpc_zrA_Param_c::m.mSwimSpeed;
            }
            target_speed *= 1.2f;
        } else if (mRiverPathIdx >= mPath.getIdx()) {
            f32 player_dst = mPath.chkPassDst(mRiverPathIdx, player->current.pos);
            f32 dst = mPath.chkPassDst(mRiverPathIdx, current.pos);
            if (dst - player_dst > 5000.0f) {
                target_speed = 0.0f;
            } else if (dst - player_dst > 3500.0f) {
                target_speed *= 0.4f;
            } else if (dst - player_dst > 3000.0f) {
                target_speed *= 0.8f;
            }

            if (target_speed == 0.0f) {
                angle.x = cLib_targetAngleX(&player->current.pos, &current.pos);
                angle.y = cLib_targetAngleY(&current.pos, &player->current.pos);
            }
        }

        field_0x1500 = player->current.pos;
        cLib_addCalc2(&mSwimSpeedF, target_speed, 0.25f, 4.0f);
        calcSwimAngle(angle, mSwimAngleCalc, angle_scale, angle_step);
        swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
        calcSwimPos(swim_speed);

        f32 play_speed = mpMorf->getPlaySpeed();
        if (target_speed != 0.0f) {
            f32 target_play_speed =
                cLib_minMaxLimit((mSwimSpeedF - vec.abs()) / 25.0f, 0.0f, 1.3f) + 0.7f;
            cLib_addCalc2(&play_speed, target_play_speed, 0.2f, 0.05f);
        } else {
            cLib_addCalc2(&play_speed, 1.7f, 0.2f, 0.05f);
        }
        mpMorf->setPlaySpeed(play_speed);

        if (!field_0x153c && mAcch.ChkWaterHit()
            && current.pos.y > water_height - daNpc_zrA_Param_c::m.mMinDepth)
        {
            current.pos.y = water_height - daNpc_zrA_Param_c::m.mMinDepth;
        }

        calcBank(angle_step, angle_scale, angle.y, angle.z);
        current.angle.z = angle.z;
        shape_angle = mCurAngle = current.angle;
        break;
    }

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::swimRiverDescend(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/swimRiverDescend__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* 80B85B14-80B8601C 00D6F4 0508+00 2/0 0/0 0/0 .text            swimRiverDescend2__11daNpc_zrA_cFPv
 */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::swimRiverDescend2(void* param_0) {
    cXyz pos, swim_speed;
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
    f32 water_height = mAcch.m_wtr.GetHeight();

    switch (mMode) {
    case 0:
        gravity = 0.0f;
        speed.setall(0.0f);
        speedF = 0.0f;
        field_0x153d = false;
        setExpressionAnm(ANM_NONE, false);
        if (mActionType == ACT_TYPE_0) {
            setMotion(MOT_SWIM_B, -1.0f, false);
        } else {
            setMotion(MOT_SWIM_A, -1.0f, false);
        }
        mSwimMode = SWIM_RAIL;
        mCcStts.SetWeight(0);
        setLookMode(LOOK_NONE);
        mAttnChangeTimer = 0;
        mTurnMode = 0;
        field_0x153e = false;
        mSwimAngleCalc = current.angle;
        calcWaistAngleInit();
        mMode = 2;
        // fallthrough

    case 2: {
        moveRiverPosCalc(pos);
        cXyz vec(3401.45f, -6541.864f, -24243.62f);
        if ((current.pos - vec).absXZ() < 100.0f) {
            if (mMotion != MOT_FLOAT_B) {
                setExpressionAnm(ANM_NONE, false);
                setMotion(MOT_FLOAT_B, -1.0f, false);
                mActionSelect = 0;
                setAction(&waitRiverDescend);
            }
        } else if (dComIfGs_isSwitch(mSwitch1, fopAcM_GetRoomNo(this))) {
            mOrderEvtNo = EVT_AFTER_BLAST_ZRR;
            mOrderNewEvt = true;
            setExpressionAnm(ANM_NONE, false);
            setMotion(MOT_FLOAT_B, -1.0f, false);
            mActionSelect = 0;
            setAction(&waitRiverDescend);
        } else {
            csXyz angle;
            cLib_chaseF(&mScaleFactor, daNpc_zrA_Param_c::m.mMaxScaleFactor,
                        (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
            
            angle.x = cLib_targetAngleX(&vec, &current.pos);
            angle.y = cLib_targetAngleY(&current.pos, &vec);
            angle.z = current.angle.z;
            cLib_addCalc2(&mSwimSpeedF, 2.0f * daNpc_zrA_Param_c::m.mSwimSpeed, 0.25f, 4.0f);
            calcSwimAngle(angle, mSwimAngleCalc, 6, angle_step);
            
            swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);
            
            f32 play_speed = mpMorf->getPlaySpeed();
            cLib_addCalc2(&play_speed, 1.7f, 0.2f, 0.05f);
            mpMorf->setPlaySpeed(play_speed);

            if (mAcch.ChkWaterHit()
                && current.pos.y > water_height - daNpc_zrA_Param_c::m.mMinDepth)
            {
                current.pos.y = water_height - daNpc_zrA_Param_c::m.mMinDepth;
            }

            calcBank(angle_step, 6, angle.y, angle.z);
            current.angle.z = angle.z;
            shape_angle = mCurAngle = current.angle;
        }

        break;
    }

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::swimRiverDescend2(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/swimRiverDescend2__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8CC90-80B8CC94 000838 0004+00 0/3 0/0 0/0 .rodata          @9558 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9558 = -9.25f;
COMPILER_STRIP_GATE(0x80B8CC90, &lit_9558);
#pragma pop

/* 80B8CC94-80B8CC98 00083C 0004+00 0/3 0/0 0/0 .rodata          @9559 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9559 = 4.5f;
COMPILER_STRIP_GATE(0x80B8CC94, &lit_9559);
#pragma pop

/* 80B8CC98-80B8CC9C 000840 0004+00 0/3 0/0 0/0 .rodata          @9560 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9560 = -14.0f;
COMPILER_STRIP_GATE(0x80B8CC98, &lit_9560);
#pragma pop

/* 80B8CC9C-80B8CCA0 000844 0004+00 0/3 0/0 0/0 .rodata          @9561 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9561 = 6.25f;
COMPILER_STRIP_GATE(0x80B8CC9C, &lit_9561);
#pragma pop

/* 80B8601C-80B86440 00DBFC 0424+00 4/0 0/0 0/0 .text            diveRiverDescend__11daNpc_zrA_cFPv
 */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::diveRiverDescend(void* param_0) {
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed * 2;

    switch (mMode) {
    case 0:
        setExpressionAnm(ANM_NONE, false);
        if (mActionType == ACT_TYPE_0) {
            setMotion(MOT_DIVE_B_SWIM_B, -1.0f, false);
        } else {
            setMotion(MOT_DIVE_B_SWIM_A, -1.0f, false);
        }
        mSwimMode = SWIM_3;
        mCcStts.SetWeight(0);
        setLookMode(LOOK_NONE);
        mSwimAngleCalc = current.angle;
        mMode = 2;
        // fallthrough

    case 2: {
        cLib_chaseF(&mScaleFactor, daNpc_zrA_Param_c::m.mMaxScaleFactor,
                    (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
        cXyz pos;
        csXyz angle;
        mPath.getDstPos(current.pos, pos);
        angle.x = cLib_targetAngleX(&pos, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &pos);
        angle.z = current.angle.z;
        calcSwimAngle(angle, mSwimAngleCalc, 3, angle_step);
        shape_angle = mCurAngle = current.angle;

        f32 frame = mpMorf->getFrame();
        cXyz dive_speed(0.0f, 0.0f, 0.0f);
        if (mBaseMotionAnm == ANM_DIVE_B) {
            if (frame <= 3.0f) {
                dive_speed.set(0.0f, 0.0f, 0.0f);
            } else if (frame <= 6.0f) {
                dive_speed.set(0.0f, 14.0f, 0.0f);
            } else if (frame <= 9.0f) {
                dive_speed.set(0.0f, 3.0f, 8.5f);
            } else if (frame <= 13.0f) {
                dive_speed.set(0.0f, -9.25f, 4.5f);
            } else if (frame <= 20.0f) {
                dive_speed.set(0.0f, -14.0f, 2.5f);
            } else {
                dive_speed.set(0.0f, 0.0f, 6.25f);
            }
        }
        mDoMtx_stack_c::ZXYrotS(current.angle);
        mDoMtx_stack_c::multVec(&dive_speed, &dive_speed);
        current.pos += dive_speed;

        if (mGameMode == GAME_MODE_1 && field_0x15c0 == 1
            && dComIfGs_isSwitch(mSwitch1, fopAcM_GetRoomNo(this)))
        {
            setExpressionAnm(ANM_NONE, false);
            setMotion(MOT_FLOAT_B, -1.0f, false);
            mOrderEvtNo = EVT_AFTER_BLAST_ZRR;
            mOrderNewEvt = true;
            mActionSelect = 0;
            setAction(&waitRiverDescend);
        } else if (mBaseMotionAnm == ANM_SWIM_A || mBaseMotionAnm == ANM_SWIM_B) {
            if (mGameMode == GAME_MODE_1 && field_0x15c0 == 1) {
                mActionSelect = 6;
                setAction(&swimRiverDescend2);
            } else {
                mActionSelect = 1;
                setAction(&swimRiverDescend);
            }
        }

        break;
    }

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::diveRiverDescend(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/diveRiverDescend__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8CCA0-80B8CCA4 000848 0004+00 0/1 0/0 0/0 .rodata          @9719 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9719 = -14100.0f;
COMPILER_STRIP_GATE(0x80B8CCA0, &lit_9719);
#pragma pop

/* 80B86440-80B86A2C 00E020 05EC+00 2/0 0/0 0/0 .text swimGoalRiverDescend__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// stack ordering
BOOL daNpc_zrA_c::swimGoalRiverDescend(void* param_0) {
    daPy_py_c* player;
    cXyz pos, swim_speed;
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;

    switch (mMode) {
    case 0:
        setExpressionAnm(ANM_NONE, false);
        if (mActionType == ACT_TYPE_0) {
            setMotion(MOT_SWIM_B, -1.0f, false);
        } else {
            setMotion(MOT_SWIM_A, -1.0f, false);
        }
        mSwimMode = SWIM_RAIL;
        mCcStts.SetWeight(0);
        setLookMode(LOOK_NONE);
        mSwimAngleCalc = current.angle;
        calcWaistAngleInit();
        field_0x1500 = daPy_getPlayerActorClass()->current.pos;
        mSwimSpeedF = daNpc_zrA_Param_c::m.mSwimSpeed;
        mMode = 2;
        // fallthrough

    case 2:
        player = daPy_getPlayerActorClass();
        cLib_chaseF(&mScaleFactor, daNpc_zrA_Param_c::m.mMaxScaleFactor,
                    (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
        if (player->current.pos.y < -14100.0f) {
            if (!daNpcF_chkEvtBit(0x60)) {
                mOrderEvtNo = EVT_THANKS_BLAST;
            } else if (dMeter2Info_getNowCount() >= 30) {
                dComIfGs_onSwitch(mSwitch1, fopAcM_GetRoomNo(this));
                dComIfGs_onSwitch(mSwitch2, fopAcM_GetRoomNo(this));
                mOrderEvtNo = EVT_THANKS_BLAST;
            } else if (dMeter2Info_getNowCount() >= 25) {
                dComIfGs_onSwitch(mSwitch1, fopAcM_GetRoomNo(this));
                mOrderEvtNo = EVT_THANKS_BLAST;
            } else {
                mOrderEvtNo = EVT_RESULT_ANNOUNCE;
            }
        } else {
            mPath.getDstPos(current.pos, pos);
            f32 target_speed;
            cXyz vec;
            if (mPath.getIdx() != mPath.getNextIdx()) {
                vec = field_0x1500 - player->current.pos;
                target_speed = vec.abs() * 1.2f;
                if (target_speed < daNpc_zrA_Param_c::m.mSwimSpeed) {
                    target_speed = daNpc_zrA_Param_c::m.mSwimSpeed;
                }
            } else {
                target_speed = 0.0f;
                if (mSwimSpeedF < 10.0f) {
                    pos = player->current.pos;
                }
            }
            field_0x1500 = player->current.pos;
            cLib_addCalc2(&mSwimSpeedF, target_speed, 0.3f, 5.0f);

            csXyz angle;
            angle.x = cLib_targetAngleX(&pos, &current.pos);
            angle.y = cLib_targetAngleY(&current.pos, &pos);
            angle.z = current.angle.z;
            calcSwimAngle(angle, mSwimAngleCalc, 3, angle_step);

            swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);

            f32 play_speed = mpMorf->getPlaySpeed();
            //!@bug vec is used here despite not being initialized in all code paths
            f32 target_play_speed =
                cLib_minMaxLimit((mSwimSpeedF - vec.abs()) / 25.0f, 0.0f, 1.3f) + 0.7f;
            cLib_addCalc2(&play_speed, target_play_speed, 0.2f, 0.1f);
            mpMorf->setPlaySpeed(play_speed);

            calcBank(angle_step, 3, angle.y, angle.z);
            current.angle.z = angle.z;
            shape_angle = mCurAngle = current.angle;
        }
        
        break;

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::swimGoalRiverDescend(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/swimGoalRiverDescend__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* 80B86A2C-80B86D9C 00E60C 0370+00 2/0 0/0 0/0 .text returnRiverDescend__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::returnRiverDescend(void* param_0) {
    cXyz pos, swim_speed;
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
    f32 swim_speed_scale = mSwimSpeedScale;

    switch (mMode) {
    case 0:
        mMode = 2;
        // fallthrough

    case 2:
        if (mPath.getDstPos(current.pos, pos) && mPath.getIdx() == mPath.getNextIdx()) {
            mPath.reverse();
            fopAcM_delete(mActorMngr[2].getActorP());
            fopAcM_delete(this);
            return true;
        } else {
            csXyz angle;
            angle.x = cLib_targetAngleX(&pos, &current.pos);
            angle.y = cLib_targetAngleY(&current.pos, &pos);
            angle.z = current.angle.z;
            s16 angle_diff_x = angle.x - current.angle.x;
            s16 angle_diff_y = angle.y - current.angle.y;
            bool bvar4 = false;

            if (mActionType != ACT_TYPE_0
                && (abs(angle_diff_x) > 0x3000 || abs(angle_diff_y) > 0x3000)
                && mSwimSpeedF > 14.0f)
            {
                f32 frame = mpMorf->getFrame();
                if ((angle.z <= 0x2000 || angle_diff_y >= 0)
                    && (angle.z >= -0x2000 || angle_diff_y <= 0))
                {
                    if (angle_diff_x < -0x3000) {
                        if (frame >= 2.0f && frame <= 4.0f) {
                            bvar4 = true;
                        }
                    } else {
                        if (frame >= 16.0f && frame <= 18.0f) {
                            mpMorf->setFrame(18.0f);
                            mpMorf->setMorf(2.0f);
                            mpMorf->setPlaySpeed(0.1f);
                            bvar4 = true;
                        }
                    }
                }

                if (bvar4) {
                    calcSwimAngle(angle, mSwimAngleCalc, 4, angle_step);
                } else {
                    calcSwimAngle(angle, mSwimAngleCalc, 8, angle_step / 2);
                }
            } else {
                calcSwimAngle(angle, mSwimAngleCalc, 8, angle_step);
            }

            cLib_addCalc2(&mSwimSpeedF, swim_speed_scale * daNpc_zrA_Param_c::m.mSwimSpeed,
                          0.2f, 3.0f);
            swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);

            if (mAcch.ChkWaterHit()) {
                current.pos.y = mAcch.m_wtr.GetHeight() - daNpc_zrA_Param_c::m.mMinDepth;
            }

            if (!bvar4) {
                f32 play_speed = mpMorf->getPlaySpeed();
                cLib_addCalc2(&play_speed, mSwimSpeedF / daNpc_zrA_Param_c::m.mSwimAnmRate,
                              0.2f, 0.1f);
                mpMorf->setPlaySpeed(play_speed);
            }

            calcBank(angle_step, 8, angle.y, angle.z);
            current.angle.z = angle.z;
            shape_angle = mCurAngle = current.angle;
            calcCanoeMove(true);
        }

        break;

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::returnRiverDescend(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/returnRiverDescend__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8CCA4-80B8CCA8 00084C 0004+00 1/1 0/0 0/0 .rodata          @9834 */
SECTION_RODATA static f32 const lit_9834 = 130.0f;
COMPILER_STRIP_GATE(0x80B8CCA4, &lit_9834);

/* 80B86D9C-80B86E78 00E97C 00DC+00 3/3 0/0 0/0 .text moveRiverPosCalc__11daNpc_zrA_cFR4cXyz */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrA_c::moveRiverPosCalc(cXyz& o_pos) {
    cXyz pos;
    mPath.getDstPos(daPy_getPlayerActorClass()->current.pos, pos);
    mRiverPathIdx = mPath.getDstPosChase(mRiverPathIdx, current.pos, o_pos);
    f32 water_y;
    if (fopAcM_getWaterY(&o_pos, &water_y)) {
        o_pos.y = water_y - 130.0f;
    } else {
        o_pos.y -= 130.0f;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::moveRiverPosCalc(cXyz& param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/moveRiverPosCalc__11daNpc_zrA_cFR4cXyz.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8CCA8-80B8CCAC 000850 0004+00 0/1 0/0 0/0 .rodata          @9860 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9860 = -100.0f;
COMPILER_STRIP_GATE(0x80B8CCA8, &lit_9860);
#pragma pop

/* 80B86E78-80B86FAC 00EA58 0134+00 1/1 0/0 0/0 .text            createRuppi__11daNpc_zrA_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrA_c::createRuppi() {
    int item;
    if (cLib_getRndValue(0, 5) < 4) {
        item = GREEN_RUPEE;
    } else {
        item = BLUE_RUPEE;
    }
    cXyz pos(0.0f, 0.0f, -100.0f);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(mCurAngle.x, mCurAngle.y, mCurAngle.z);
    mDoMtx_stack_c::multVec(&pos, &pos);
    f32 water_y;
    if (fopAcM_getWaterY(&pos, &water_y)) {
        pos.y = water_y + 50.0f;
    }
    csXyz angle(0, current.angle.y, 0);
    cXyz scl(1.0f, 1.0f, 1.0f);
    f32 speed_f = 0.0f;
    f32 speed_y = 50.0f;
    fopAcM_fastCreateItem(&pos, item, fopAcM_GetRoomNo(this),
                          &angle, &scl, &speed_f, &speed_y, -1, 0, NULL);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::createRuppi() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/createRuppi__11daNpc_zrA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8CCAC-80B8CCB0 000854 0004+00 0/1 0/0 0/0 .rodata          @9933 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9933 = 0x472310EB;
COMPILER_STRIP_GATE(0x80B8CCAC, &lit_9933);
#pragma pop

/* 80B8CCB0-80B8CCB4 000858 0004+00 0/2 0/0 0/0 .rodata          @9934 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9934 = 0xC5CB15B8;
COMPILER_STRIP_GATE(0x80B8CCB0, &lit_9934);
#pragma pop

/* 80B8CCB4-80B8CCB8 00085C 0004+00 0/2 0/0 0/0 .rodata          @9935 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9935 = 0xC6915348;
COMPILER_STRIP_GATE(0x80B8CCB4, &lit_9935);
#pragma pop

/* 80B86FAC-80B872F0 00EB8C 0344+00 3/0 0/0 0/0 .text ECut_beforeBlastzrR__11daNpc_zrA_cFi */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::ECut_beforeBlastzrR(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    cXyz player_pos = daPy_getPlayerActorClass()->current.pos;
    cXyz canoe_pos(41744.92f, -6498.715f, -18601.64f);
    daCanoe_c* canoe;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            daNpcF_offTmpBit(0xb);
            break;
        case 10:
            initTalk(mFlowID, NULL);
            break;
        case 15:
            break;
        case 20:
            initTalk(mFlowID, NULL);
            break;
        }
    }

    switch (prm) {
    case 0:
        calcWaitSwim(true);
        cLib_addCalcAngleS2(&mCurAngle.y, fopAcM_searchPlayerAngleY(this), 0x20, 0x200);
        setAngle(mCurAngle.y);
        ret = true;
        break;

    case 10:
        if (talkProc(NULL, 1, NULL)) {
            ret = true;
        }
        canoe = (daCanoe_c*)fpcM_Search(s_sub, this);
        if (canoe != NULL) {
            canoe->setPosAndAngle(&canoe_pos, -0x35e8);
        }
        calcWaitSwim(true);
        cLib_addCalcAngleS2(&mCurAngle.y, fopAcM_searchPlayerAngleY(this), 0x20, 0x200);
        setAngle(mCurAngle.y);
        break;

    case 15: {
        canoe = (daCanoe_c*)fpcM_Search(s_sub, this);
        if (canoe != NULL) {
            canoe->setPosAndAngle(&canoe_pos, -0x35e8);
        }
        cXyz target_pos(30895.56f, -6592.85f, -23170.2f);
        calcWaitSwim(true);
        s16 target_angle = cLib_targetAngleY(&current.pos, &target_pos);
        if (mCurAngle.y != target_angle) {
            if (abs((s16)(mCurAngle.y - target_angle)) > 0x400) {
                mCurAngle.y -= 0x400;
            } else {
                mCurAngle.y = target_angle;
            }
            setAngle(mCurAngle.y);
        } else {
            ret = true;
        }
        break;
    }

    case 20:
        if (talkProc(NULL, 1, NULL)) {
            ret = true;
        }
        canoe = (daCanoe_c*)fpcM_Search(s_sub, this);
        if (canoe != NULL) {
            canoe->setPosAndAngle(&canoe_pos, -0x35e8);
        }
        calcWaitSwim(true);
        break;
    
    default:
        ret = true;
        break;
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::ECut_beforeBlastzrR(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/ECut_beforeBlastzrR__11daNpc_zrA_cFi.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8CCB8-80B8CCBC 000860 0004+00 0/0 0/0 0/0 .rodata          @9936 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9936 = 0x46F15F1E;
COMPILER_STRIP_GATE(0x80B8CCB8, &lit_9936);
#pragma pop

/* 80B8CCBC-80B8CCC0 000864 0004+00 0/0 0/0 0/0 .rodata          @9937 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9937 = 0xC5CE06CC;
COMPILER_STRIP_GATE(0x80B8CCBC, &lit_9937);
#pragma pop

/* 80B8CCC0-80B8CCC4 000868 0004+00 0/0 0/0 0/0 .rodata          @9938 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9938 = 0xC6B50464;
COMPILER_STRIP_GATE(0x80B8CCC0, &lit_9938);
#pragma pop

/* 80B8CCC4-80B8CCC8 00086C 0004+00 0/1 0/0 0/0 .rodata          @9988 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9988 = 0x471FF0EB;
COMPILER_STRIP_GATE(0x80B8CCC4, &lit_9988);
#pragma pop

/* 80B8CCC8-80B8CCCC 000870 0004+00 0/1 0/0 0/0 .rodata          @9989 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9989 = 0x46FF16FF;
COMPILER_STRIP_GATE(0x80B8CCC8, &lit_9989);
#pragma pop

/* 80B8CCCC-80B8CCD0 000874 0004+00 0/1 0/0 0/0 .rodata          @9990 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9990 = 0xC5B861C1;
COMPILER_STRIP_GATE(0x80B8CCCC, &lit_9990);
#pragma pop

/* 80B8CCD0-80B8CCD4 000878 0004+00 0/1 0/0 0/0 .rodata          @9991 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9991 = 0xC6AF810D;
COMPILER_STRIP_GATE(0x80B8CCD0, &lit_9991);
#pragma pop

/* 80B872F0-80B87510 00EED0 0220+00 1/0 0/0 0/0 .text            ECut_afterBlastzrR__11daNpc_zrA_cFi
 */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::ECut_afterBlastzrR(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    cXyz player_pos = daPy_getPlayerActorClass()->current.pos;
    cXyz canoe_pos(40944.92f, -6498.715f, -18601.64f);
    daCanoe_c* canoe;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0: {
            cXyz target_pos(32651.5f, -5900.219f, -22464.53f);
            setLookMode(LOOK_NONE);
            mTurnMode = 0;
            calcWaistAngleStop();
            field_0x1550 = true;
            mSwimSpeedF = 0.0f;
            mIsTurning = true;
            current.pos.set(34301.45f, -6541.864f, -24243.62f);
            old.pos = current.pos;
            setAngle(cLib_targetAngleY(&current.pos, &target_pos));
            field_0x15c0 = 2;
            break;
        }

        case 10:
            initTalk(mFlowID, NULL);
            break;
        }
    }

    switch (prm) {
    case 0:
    case 10:
        calcWaitSwim(true);
        canoe = (daCanoe_c*)fpcM_Search(s_sub, this);
        if (canoe != NULL) {
            canoe->setPosAndAngle(&canoe_pos, -0x35e8);
        }
        if (prm == 0) {
            ret = true;
        } else {
            if (talkProc(NULL, 1, NULL)) {
                ret = true;
            }
        }
        break;

    default:
        ret = true;
        break;
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::ECut_afterBlastzrR(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/ECut_afterBlastzrR__11daNpc_zrA_cFi.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8CCD4-80B8CCD8 00087C 0004+00 0/2 0/0 0/0 .rodata          @10576 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_10576 = 0xC7983ADA;
COMPILER_STRIP_GATE(0x80B8CCD4, &lit_10576);
#pragma pop

/* 80B8CCD8-80B8CCDC 000880 0004+00 0/2 0/0 0/0 .rodata          @10577 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10577 = -18800.0f;
COMPILER_STRIP_GATE(0x80B8CCD8, &lit_10577);
#pragma pop

/* 80B8CCDC-80B8CCE0 000884 0004+00 0/2 0/0 0/0 .rodata          @10578 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_10578 = 0x471ADD4D;
COMPILER_STRIP_GATE(0x80B8CCDC, &lit_10578);
#pragma pop

/* 80B8CCE0-80B8CCE4 000888 0004+00 0/2 0/0 0/0 .rodata          @10579 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_10579 = 0xC79A2EDA;
COMPILER_STRIP_GATE(0x80B8CCE0, &lit_10579);
#pragma pop

/* 80B8CCE4-80B8CCE8 00088C 0004+00 0/2 0/0 0/0 .rodata          @10580 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10580 = -18640.0f;
COMPILER_STRIP_GATE(0x80B8CCE4, &lit_10580);
#pragma pop

/* 80B8CCE8-80B8CCEC 000890 0004+00 0/2 0/0 0/0 .rodata          @10581 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10581 = 350.0f;
COMPILER_STRIP_GATE(0x80B8CCE8, &lit_10581);
#pragma pop

/* 80B8CCEC-80B8CCF0 000894 0004+00 0/2 0/0 0/0 .rodata          @10582 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10582 = 15.0f;
COMPILER_STRIP_GATE(0x80B8CCEC, &lit_10582);
#pragma pop

/* 80B8CCF0-80B8CCF4 000898 0004+00 0/2 0/0 0/0 .rodata          @10583 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10583 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x80B8CCF0, &lit_10583);
#pragma pop

/* 80B8CCF4-80B8CCF8 00089C 0004+00 0/2 0/0 0/0 .rodata          @10584 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10584 = 400.0f;
COMPILER_STRIP_GATE(0x80B8CCF4, &lit_10584);
#pragma pop

/* 80B8CCF8-80B8CCFC 0008A0 0004+00 0/2 0/0 0/0 .rodata          @10585 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10585 = 22.0f;
COMPILER_STRIP_GATE(0x80B8CCF8, &lit_10585);
#pragma pop

/* 80B87510-80B88B04 00F0F0 15F4+00 1/0 0/0 0/0 .text            ECut_thanksBlast__11daNpc_zrA_cFi
 */
#ifdef NONMATCHING
// matches with literals and generics
BOOL daNpc_zrA_c::ECut_thanksBlast(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
    f32 water_height = mAcch.m_wtr.GetHeight();
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz player_pos = player->current.pos;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            daNpcF_offTmpBit(0xb);
            daNpcF_offTmpBit(0xc);
            if (mActionType == ACT_TYPE_0) {
                setMotion(MOT_SWIM_B, -1.0f, false);
            } else {
                setMotion(MOT_SWIM_A, -1.0f, false);
            }
            mTurnMode = 0;
            break;

        case 1:
            if (mActorMngr[2].getActorP() != NULL
                && fopAcM_GetName(mActorMngr[2].getActorP()) == PROC_CANOE)
            {
                static_cast<daCanoe_c*>(mActorMngr[2].getActorP())->setWaterFallDownSe();
            }
            daPy_getPlayerActorClass()->offCanoeSlider();
            if (daNpcF_chkEvtBit(0x60)) {
                dComIfG_TimerDeleteRequest(4);
            } else {
                dComIfG_TimerDeleteRequest(3);
            }
            dMeter2Info_resetMiniGameItem(false);
            break;

        case 10:
            initTalk(mFlowID, NULL);
            break;

        case 20: {
            mPath.onReverse();
            mPath.setIdx(mPath.getEndIdx() - 1);
            cXyz pos1(-77941.7f, -18800.0f - daNpc_zrA_Param_c::m.mMinDepth - 30.0f, 39645.3f);
            cXyz pos2(-78941.7f, -18800.0f - daNpc_zrA_Param_c::m.mMinDepth - 30.0f, 39645.3f);
            current.pos = pos1;
            current.angle.y = cLib_targetAngleY(&pos1, &player_pos);
            setAngle(current.angle.y);
            
            cXyz water_pos = current.pos;
            f32 water_y;
            if (fopAcM_getWaterY(&water_pos, &water_y)) {
                water_pos.y = water_y;
            }

            cXyz offset(0.0f, 0.0f, daNpc_zrA_Param_c::m.field_0xa0);
            csXyz angle(0, cLib_targetAngleY(&pos1, &pos2), 0);
            mDoMtx_stack_c::ZXYrotS(angle);
            mDoMtx_stack_c::transM(offset);
            mDoMtx_stack_c::multVecZero(&field_0x159c[0]);
            field_0x159c[0] += water_pos;
            
            offset.set(0.0f, 0.0f, daNpc_zrA_Param_c::m.field_0xa4);
            mDoMtx_stack_c::ZXYrotS(angle);
            mDoMtx_stack_c::transM(offset);
            mDoMtx_stack_c::multVecZero(&field_0x159c[1]);
            field_0x159c[1] += field_0x159c[0];
            field_0x159c[2] = field_0x159c[1];

            cLib_targetAngleY(&pos2, &pos1);
            static_cast<daCanoe_c*>(mActorMngr[2].getActorP())
                ->setPosAndAngle(&field_0x159c[1], angle.y + 0x8000);
            break;
        }

        case 30:
            initTalk(mFlowID, NULL);
            break;

        case 31: {
            int item_id = 0;
            if (mFlow.getEventId(&item_id) == 1) {
                mItemID = fopAcM_createItemForPresentDemo(&current.pos, item_id,
                                                          0, -1, -1, NULL, NULL);
            }
            field_0x9eb = true;
            break;
        }

        case 40:
            field_0x9eb = false;
            initTalk(mFlowID, NULL);
            break;

        case 50:
            if (mActionType == ACT_TYPE_0) {
                setMotion(MOT_DIVE_B_SWIM_B, -1.0f, false);
            } else {
                setMotion(MOT_DIVE_B_SWIM_A, -1.0f, false);
            }
            break;

        case 60:
            calcWaistAngleInit();
            mEventTimer = 120;
            mSwimAngleCalc = current.angle;
            break;
        }
    }

    switch (prm) {
    case 0:
        if (player_pos.y < -18640.0f) {
            ret = true;
        }
        // fallthrough

    case 1:
        if (mMotion == MOT_SWIM_A || mMotion == MOT_SWIM_B) {
            if (mBaseMotionAnm != ANM_SWIM_A && mBaseMotionAnm != ANM_SWIM_B) {
                break;
            }

            cXyz pos;
            f32 target_speed;
            if (mPath.getIdx() != mPath.getNextIdx()) {
                mPath.getDstPos(current.pos, pos);
                cXyz vec = field_0x1500 - player->current.pos;
                target_speed = vec.abs() * 1.2f;
                if (target_speed < daNpc_zrA_Param_c::m.mSwimSpeed) {
                    target_speed = daNpc_zrA_Param_c::m.mSwimSpeed;
                }
            } else {
                if ((field_0x1500 - player->current.pos).absXZ() < 5.0f) {
                    cXyz vec1(350.0f, 0.0f, 0.0f);
                    cXyz vec2, vec3;
                    mDoMtx_stack_c::YrotS(player->current.angle.y);
                    mDoMtx_stack_c::multVec(&vec1, &vec2);
                    vec3 = player->current.pos - vec2;
                    vec2 += player->current.pos;
                    if ((vec2 - current.pos).absXZ() < (vec3 - current.pos).absXZ()) {
                        pos = vec2;
                    } else {
                        pos = vec3;
                    }
                    if ((player_pos - current.pos).absXZ() > 450.0f) {
                        target_speed = daNpc_zrA_Param_c::m.mSwimSpeed * 1.5f * 1.5f;
                    } else {
                        target_speed = 15.0f;
                        pos = player_pos;
                    }
                } else {
                    target_speed = 0.0f;
                    if (mSwimSpeedF < 10.0f) {
                        pos = player_pos;
                    } else {
                        mPath.getDstPos(current.pos, pos);
                    }
                }
            }

            cLib_addCalc2(&mSwimSpeedF, target_speed, 0.2f, 3.0f);
            f32 play_speed = mpMorf->getPlaySpeed();
            cLib_addCalc2(&play_speed, 1.0f, 0.2f, 0.03f);
            mpMorf->setPlaySpeed(play_speed);

            csXyz angle;
            angle.x = cLib_targetAngleX(&pos, &current.pos);
            angle.y = cLib_targetAngleY(&current.pos, &pos);
            angle.z = current.angle.z;
            current.angle.z = 0;
            calcSwimAngle(angle, mSwimAngleCalc, 8, angle_step);
            calcBank(angle_step, 8, angle.y, angle.z);
            current.angle.z = angle.z;
            shape_angle = mCurAngle = current.angle;
            cXyz swim_speed(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);
            if (mAcch.ChkWaterHit()
                && current.pos.y > water_height - daNpc_zrA_Param_c::m.mMinDepth)
            {
                current.pos.y = water_height - daNpc_zrA_Param_c::m.mMinDepth;
            }

            if ((field_0x1500 - player->current.pos).absXZ() < 10.0f
                && (player_pos - current.pos).absXZ() < 400.0f)
            {
                setMotion(MOT_FLOAT_B, -1.0f, false);
                calcWaistAngleStop();
            }
            field_0x1500 = player->current.pos;
        } else {
            calcWaitSwim(true);
            if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                if (mBaseMotionAnm == ANM_WAIT_SWIM) {
                    if (prm == 1) {
                        ret = true;
                    }
                    mTurnMode = 0;
                }
            } else {
                cLib_chaseAngleS(&mCurAngle.y, fopAcM_searchPlayerAngleY(this),
                                 daNpc_zrA_Param_c::m.mSwimAngleSpeed);
                setAngle(mCurAngle.y);
            }
        }

        break;

    case 10:
        calcWaitSwim(true);
        if (talkProc(NULL, 1, NULL)) {
            ret = true;
        }
        break;

    case 20:
        calcWaitSwim(true);
        calcCanoeMove(false);
        current.angle.y = cLib_targetAngleY(&current.pos, &player_pos);
        setAngle(current.angle.y);
        ret = true;
        break;

    case 30:
    case 40:
        calcWaitSwim(true);
        calcCanoeMove(false);
        if (talkProc(NULL, 1, NULL)) {
            ret = true;
            mSwimAngleCalc = current.angle;
            mSwimSpeedScale = 1.0f;
            mSwimSpeedF = mSwimSpeedScale * daNpc_zrA_Param_c::m.mSwimSpeed;
            setLookMode(LOOK_NONE);
        }
        break;

    case 31:
        field_0x9eb = true;
        ret = true;
        calcWaitSwim(true);
        calcCanoeMove(false);
        break;

    case 50: {
        s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
        cLib_chaseF(&mScaleFactor, daNpc_zrA_Param_c::m.mMaxScaleFactor,
                    (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
        cXyz pos;
        csXyz angle;
        mPath.getDstPosDst2(current.pos, pos);
        angle.x = cLib_targetAngleX(&pos, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &pos);
        angle.z = current.angle.z;
        calcSwimAngle(angle, mSwimAngleCalc, 4, angle_step);
        shape_angle = mCurAngle = current.angle;
        
        f32 frame = mpMorf->getFrame();
        cXyz dive_speed(0.0f, 0.0f, 0.0f);
        if (mBaseMotionAnm == ANM_DIVE_B) {
            if (frame <= 3.0f) {
                dive_speed.set(0.0f, 0.0f, 0.0f);
            } else if (frame <= 6.0f) {
                dive_speed.set(0.0f, 22.0f, 0.0f);
            } else if (frame <= 9.0f) {
                dive_speed.set(0.0f, 6.0f, 8.5f);
            } else if (frame <= 13.0f) {
                dive_speed.set(0.0f, -9.25f, 4.5f);
            } else if (frame <= 20.0f) {
                dive_speed.set(0.0f, -14.0f, 2.5f);
            } else {
                dive_speed.set(0.0f, 0.0f, 6.25f);
            }
        }
        mDoMtx_stack_c::ZXYrotS(current.angle);
        mDoMtx_stack_c::multVec(&dive_speed, &dive_speed);
        current.pos += dive_speed;

        if (mBaseMotionAnm == ANM_SWIM_A || mBaseMotionAnm == ANM_SWIM_B) {
            ret = true;
            if (!calcWaistAngleCheck()) {
                calcWaistAngleInit();
                mSwimSpeedScale = 1.0f;
                mSwimSpeedF = mSwimSpeedScale * daNpc_zrA_Param_c::m.mSwimSpeed;
            }
            cXyz swim_speed(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);
        }

        calcCanoeMove(true);
        break;
    }

    case 60: {
        cXyz pos;
        mPath.getDstPos(current.pos, pos);
        f32 water_y;
        if (fopAcM_getWaterY(&current.pos, &water_y) && pos.y > water_y) {
            pos.y = water_y;
        }
        csXyz angle;
        angle.x = cLib_targetAngleX(&pos, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &pos);
        angle.z = current.angle.z;
        current.angle.z = 0;
        calcSwimAngle(angle, mSwimAngleCalc, 8, angle_step);
        calcBank(angle_step, 8, angle.y, angle.z);
        current.angle.z = angle.z;
        shape_angle = mCurAngle = current.angle;
        cXyz swim_speed(0.0f, 0.0f, mSwimSpeedF);
        calcSwimPos(swim_speed);
        if (mAcch.ChkWaterHit() && current.pos.y > water_y - daNpc_zrA_Param_c::m.mMinDepth) {
            current.pos.y = water_y - daNpc_zrA_Param_c::m.mMinDepth;
        }
        calcCanoeMove(true);
        if (cLib_calcTimer(&mEventTimer) == 0) {
            ret = true;
        }
        break;
    }

    default:
        ret = true;
        break;
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::ECut_thanksBlast(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/ECut_thanksBlast__11daNpc_zrA_cFi.s"
}
#pragma pop
#endif

/* 80B88B04-80B8A064 0106E4 1560+00 1/0 0/0 0/0 .text ECut_resultAnnounce__11daNpc_zrA_cFi */
#ifdef NONMATCHING
// matches with literals and generics
BOOL daNpc_zrA_c::ECut_resultAnnounce(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
    f32 water_height = mAcch.m_wtr.GetHeight();
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz player_pos = player->current.pos;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            daNpcF_offTmpBit(0xb);
            daNpcF_offTmpBit(0xc);
            if (mActionType == ACT_TYPE_0) {
                setMotion(MOT_SWIM_B, -1.0f, false);
            } else {
                setMotion(MOT_SWIM_A, -1.0f, false);
            }
            mTurnMode = 0;
            break;

        case 1:
            if (mActorMngr[2].getActorP() != NULL
                && fopAcM_GetName(mActorMngr[2].getActorP()) == PROC_CANOE)
            {
                static_cast<daCanoe_c*>(mActorMngr[2].getActorP())->setWaterFallDownSe();
            }
            daPy_getPlayerActorClass()->offCanoeSlider();
            dComIfG_TimerDeleteRequest(4);
            dMeter2Info_resetMiniGameItem(false);
            break;

        case 10:
            initTalk(mFlowID, NULL);
            break;

        case 20: {
            mPath.onReverse();
            mPath.setIdx(mPath.getEndIdx() - 1);
            cXyz pos1(-77941.7f, -18800.0f - daNpc_zrA_Param_c::m.mMinDepth - 30.0f, 39645.3f);
            cXyz pos2(-78941.7f, -18800.0f - daNpc_zrA_Param_c::m.mMinDepth - 30.0f, 39645.3f);
            current.pos = pos1;
            current.angle.y = cLib_targetAngleY(&pos1, &player_pos);
            setAngle(current.angle.y);
            
            cXyz water_pos = current.pos;
            f32 water_y;
            if (fopAcM_getWaterY(&water_pos, &water_y)) {
                water_pos.y = water_y;
            }

            cXyz offset(0.0f, 0.0f, daNpc_zrA_Param_c::m.field_0xa0);
            csXyz angle(0, cLib_targetAngleY(&pos1, &pos2), 0);
            mDoMtx_stack_c::ZXYrotS(angle);
            mDoMtx_stack_c::transM(offset);
            mDoMtx_stack_c::multVecZero(&field_0x159c[0]);
            field_0x159c[0] += water_pos;
            
            offset.set(0.0f, 0.0f, daNpc_zrA_Param_c::m.field_0xa4);
            mDoMtx_stack_c::ZXYrotS(angle);
            mDoMtx_stack_c::transM(offset);
            mDoMtx_stack_c::multVecZero(&field_0x159c[1]);
            field_0x159c[1] += field_0x159c[0];
            field_0x159c[2] = field_0x159c[1];

            cLib_targetAngleY(&pos2, &pos1);
            static_cast<daCanoe_c*>(mActorMngr[2].getActorP())
                ->setPosAndAngle(&field_0x159c[1], angle.y + 0x8000);
            dComIfGp_event_offHindFlag(0x80);
            break;
        }

        case 30:
            initTalk(mFlowID, NULL);
            break;

        case 40:
            if (mActionType == ACT_TYPE_0) {
                setMotion(MOT_DIVE_B_SWIM_B, -1.0f, false);
            } else {
                setMotion(MOT_DIVE_B_SWIM_A, -1.0f, false);
            }
            break;

        case 50:
            calcWaistAngleInit();
            mEventTimer = 120;
            mSwimAngleCalc = current.angle;
            break;
        }
    }

    switch (prm) {
    case 0:
        if (player_pos.y < -18640.0f) {
            ret = true;
        }
        // fallthrough

    case 1:
        if (mMotion == MOT_SWIM_A || mMotion == MOT_SWIM_B) {
            if (mBaseMotionAnm != ANM_SWIM_A && mBaseMotionAnm != ANM_SWIM_B) {
                break;
            }

            cXyz pos;
            f32 target_speed;
            if (mPath.getIdx() != mPath.getNextIdx()) {
                mPath.getDstPos(current.pos, pos);
                cXyz vec = field_0x1500 - player->current.pos;
                target_speed = vec.abs() * 1.2f;
                if (target_speed < daNpc_zrA_Param_c::m.mSwimSpeed) {
                    target_speed = daNpc_zrA_Param_c::m.mSwimSpeed;
                }
            } else {
                if ((field_0x1500 - player->current.pos).absXZ() < 5.0f) {
                    cXyz vec1(350.0f, 0.0f, 0.0f);
                    cXyz vec2, vec3;
                    mDoMtx_stack_c::YrotS(player->current.angle.y);
                    mDoMtx_stack_c::multVec(&vec1, &vec2);
                    vec3 = player->current.pos - vec2;
                    vec2 += player->current.pos;
                    if ((vec2 - current.pos).absXZ() < (vec3 - current.pos).absXZ()) {
                        pos = vec2;
                    } else {
                        pos = vec3;
                    }
                    if ((player_pos - current.pos).absXZ() > 450.0f) {
                        target_speed = daNpc_zrA_Param_c::m.mSwimSpeed * 1.5f * 1.5f;
                    } else {
                        target_speed = 15.0f;
                        pos = player_pos;
                    }
                } else {
                    target_speed = 0.0f;
                    if (mSwimSpeedF < 10.0f) {
                        pos = player_pos;
                    } else {
                        mPath.getDstPos(current.pos, pos);
                    }
                }
            }

            cLib_addCalc2(&mSwimSpeedF, target_speed, 0.2f, 3.0f);
            f32 play_speed = mpMorf->getPlaySpeed();
            cLib_addCalc2(&play_speed, 1.0f, 0.2f, 0.03f);
            mpMorf->setPlaySpeed(play_speed);

            csXyz angle;
            angle.x = cLib_targetAngleX(&pos, &current.pos);
            angle.y = cLib_targetAngleY(&current.pos, &pos);
            angle.z = current.angle.z;
            current.angle.z = 0;
            calcSwimAngle(angle, mSwimAngleCalc, 8, angle_step);
            calcBank(angle_step, 8, angle.y, angle.z);
            current.angle.z = angle.z;
            shape_angle = mCurAngle = current.angle;
            cXyz swim_speed(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);
            if (mAcch.ChkWaterHit()
                && current.pos.y > water_height - daNpc_zrA_Param_c::m.mMinDepth)
            {
                current.pos.y = water_height - daNpc_zrA_Param_c::m.mMinDepth;
            }

            if ((field_0x1500 - player->current.pos).absXZ() < 10.0f
                && (player_pos - current.pos).absXZ() < 400.0f)
            {
                setMotion(MOT_FLOAT_B, -1.0f, false);
                calcWaistAngleStop();
            }
            field_0x1500 = player->current.pos;
        } else {
            calcWaitSwim(true);
            if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                if (mBaseMotionAnm == ANM_WAIT_SWIM) {
                    if (prm == 1) {
                        ret = true;
                    }
                    mTurnMode = 0;
                }
            } else {
                cLib_chaseAngleS(&mCurAngle.y, fopAcM_searchPlayerAngleY(this),
                                 daNpc_zrA_Param_c::m.mSwimAngleSpeed);
                setAngle(mCurAngle.y);
            }
        }

        break;

    case 10:
        calcWaitSwim(true);
        if (talkProc(NULL, 1, NULL)) {
            ret = true;
        }
        break;

    case 20:
        calcWaitSwim(true);
        calcCanoeMove(false);
        current.angle.y = cLib_targetAngleY(&current.pos, &player_pos);
        setAngle(current.angle.y);
        ret = true;
        break;

    case 30:
        calcWaitSwim(true);
        calcCanoeMove(false);
        if (talkProc(NULL, 1, NULL)) {
            if (dComIfGs_isSaveDunSwitch(0x3e)) {
                dStage_changeScene(0xf, 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
            } else {
                ret = true;
                mSwimAngleCalc = current.angle;
                mSwimSpeedScale = 1.0f;
                mSwimSpeedF = mSwimSpeedScale * daNpc_zrA_Param_c::m.mSwimSpeed;
                setLookMode(LOOK_NONE);
            }
        }
        break;

    case 40: {
        s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
        cLib_chaseF(&mScaleFactor, daNpc_zrA_Param_c::m.mMaxScaleFactor,
                    (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
        cXyz pos;
        csXyz angle;
        mPath.getDstPosDst2(current.pos, pos);
        angle.x = cLib_targetAngleX(&pos, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &pos);
        angle.z = current.angle.z;
        calcSwimAngle(angle, mSwimAngleCalc, 4, angle_step);
        shape_angle = mCurAngle = current.angle;
        
        f32 frame = mpMorf->getFrame();
        cXyz dive_speed(0.0f, 0.0f, 0.0f);
        if (mBaseMotionAnm == ANM_DIVE_B) {
            if (frame <= 3.0f) {
                dive_speed.set(0.0f, 0.0f, 0.0f);
            } else if (frame <= 6.0f) {
                dive_speed.set(0.0f, 22.0f, 0.0f);
            } else if (frame <= 9.0f) {
                dive_speed.set(0.0f, 6.0f, 8.5f);
            } else if (frame <= 13.0f) {
                dive_speed.set(0.0f, -9.25f, 4.5f);
            } else if (frame <= 20.0f) {
                dive_speed.set(0.0f, -14.0f, 2.5f);
            } else {
                dive_speed.set(0.0f, 0.0f, 6.25f);
            }
        }
        mDoMtx_stack_c::ZXYrotS(current.angle);
        mDoMtx_stack_c::multVec(&dive_speed, &dive_speed);
        current.pos += dive_speed;

        if (mBaseMotionAnm == ANM_SWIM_A || mBaseMotionAnm == ANM_SWIM_B) {
            ret = true;
            if (!calcWaistAngleCheck()) {
                calcWaistAngleInit();
                mSwimSpeedScale = 1.0f;
                mSwimSpeedF = mSwimSpeedScale * daNpc_zrA_Param_c::m.mSwimSpeed;
            }
            cXyz swim_speed(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);
        }

        calcCanoeMove(true);
        break;
    }

    case 50: {
        cXyz pos;
        mPath.getDstPos(current.pos, pos);
        f32 water_y;
        if (fopAcM_getWaterY(&current.pos, &water_y) && pos.y > water_y) {
            pos.y = water_y;
        }
        csXyz angle;
        angle.x = cLib_targetAngleX(&pos, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &pos);
        angle.z = current.angle.z;
        current.angle.z = 0;
        calcSwimAngle(angle, mSwimAngleCalc, 8, angle_step);
        calcBank(angle_step, 8, angle.y, angle.z);
        current.angle.z = angle.z;
        shape_angle = mCurAngle = current.angle;
        cXyz swim_speed(0.0f, 0.0f, mSwimSpeedF);
        calcSwimPos(swim_speed);
        if (mAcch.ChkWaterHit() && current.pos.y > water_y - daNpc_zrA_Param_c::m.mMinDepth) {
            current.pos.y = water_y - daNpc_zrA_Param_c::m.mMinDepth;
        }
        calcCanoeMove(true);
        if (cLib_calcTimer(&mEventTimer) == 0) {
            ret = true;
        }
        break;
    }

    default:
        ret = true;
        break;
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::ECut_resultAnnounce(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/ECut_resultAnnounce__11daNpc_zrA_cFi.s"
}
#pragma pop
#endif

/* 80B8A064-80B8A3CC 011C44 0368+00 3/3 0/0 0/0 .text            calcCanoeMove__11daNpc_zrA_cFi */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrA_c::calcCanoeMove(BOOL param_0) {
    csXyz angle;
    cXyz vec;
    cXyz water_pos = current.pos;
    f32 water_y;
    if (fopAcM_getWaterY(&water_pos, &water_y)) {
        water_pos.y = water_y;
    }
    
    angle.x = cLib_targetAngleX(&field_0x159c[0], &water_pos);
    angle.y = cLib_targetAngleY(&water_pos, &field_0x159c[0]);
    angle.z = 0;

    vec.set(0.0f, 0.0f, daNpc_zrA_Param_c::m.field_0xa0);
    mDoMtx_stack_c::ZXYrotS(angle);
    mDoMtx_stack_c::multVec(&vec, &field_0x159c[0]);
    field_0x159c[0] += water_pos;
    if (fopAcM_getWaterY(&field_0x159c[0], &water_y)) {
        field_0x159c[0].y = water_y;
    }

    angle.x = cLib_targetAngleX(&field_0x159c[1], &field_0x159c[0]);
    angle.y = cLib_targetAngleY(&field_0x159c[0], &field_0x159c[1]);

    vec.set(0.0f, 0.0f, daNpc_zrA_Param_c::m.field_0xa4);
    mDoMtx_stack_c::ZXYrotS(angle);
    mDoMtx_stack_c::multVec(&vec, &field_0x159c[1]);
    field_0x159c[1] += field_0x159c[0];
    if (fopAcM_getWaterY(&field_0x159c[1], &water_y)) {
        field_0x159c[1].y = water_y;
    }

    if (param_0) {
        f32 fvar2 = (water_pos - field_0x159c[2]).abs();
        (water_pos - field_0x159c[1]).abs();
        if (fvar2 > daNpc_zrA_Param_c::m.field_0xa0 + daNpc_zrA_Param_c::m.field_0xa4)
        {
            cLib_addCalcPos2(&field_0x159c[2], field_0x159c[1], 0.2f, mSwimSpeedF * 1.2f);
            if (fopAcM_getWaterY(&field_0x159c[2], &water_y)) {
                field_0x159c[2].y = water_y;
            }
        }
    } else {
        field_0x159c[2] = field_0x159c[1];
    }

    static_cast<daCanoe_c*>(mActorMngr[2].getActorP())
        ->setPosAndAngle(&field_0x159c[2], angle.y + 0x8000);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrA_c::calcCanoeMove(BOOL param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/calcCanoeMove__11daNpc_zrA_cFi.s"
}
#pragma pop
#endif

/* 80B8A3CC-80B8A43C 011FAC 0070+00 1/1 0/0 0/0 .text            s_subMark__FPvPv */
static void* s_subMark(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_ZRA_MARK) {
        daObjZraMark_c* zra_mark = static_cast<daObjZraMark_c*>(i_proc);
        daNpc_zrA_c* _this = static_cast<daNpc_zrA_c*>(i_this);
        if (zra_mark->getMarkNo() == _this->getNoFromParam()) {
            return i_proc;
        }
    }
    return NULL;
}

/* 80B8A43C-80B8A54C 01201C 0110+00 1/0 0/0 0/0 .text            tobiSearch__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::tobiSearch(void* param_0) {
    daObjZraMark_c* zra_mark;
    
    switch (mMode) {
    case 0:
        mAcch.SetGrndNone();
        mAcch.SetWallNone();
        setExpression(EXPR_NONE, -1.0f);
        setMotion(MOT_WAIT_A, -1.0f, false);
        setLookMode(LOOK_NONE);
        mActionSelect = 0;
        mCcStts.SetWeight(0);
        mMode = 2;
        // fallthrough

    case 2:
        zra_mark = (daObjZraMark_c*)fpcM_Search(s_subMark, this);
        if (zra_mark != NULL) {
            zra_mark->entryPointer(this);
            setAction(&tobiWait);
        }
        break;

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::tobiSearch(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/tobiSearch__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* 80B8A54C-80B8A648 01212C 00FC+00 2/0 0/0 0/0 .text            tobiWait__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::tobiWait(void* param_0) {
    switch (mMode) {
    case 0:
        setExpression(EXPR_NONE, -1.0f);
        setMotion(MOT_WAIT_A, -1.0f, false);
        setLookMode(LOOK_NONE);
        mAttnChangeTimer = 0;
        mTurnMode = 0;
        mActionSelect = 1;
        mMode = 2;
        // fallthrough

    case 2:
        if (mCcCyl.ChkTgHit() || field_0x15c1) {
            setAction(&tobikomi1);
        }
        break;

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::tobiWait(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/tobiWait__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8CCFC-80B8CD00 0008A4 0004+00 0/3 0/0 0/0 .rodata          @11359 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11359 = -42.0f / 25.0f;
COMPILER_STRIP_GATE(0x80B8CCFC, &lit_11359);
#pragma pop

/* 80B8CD00-80B8CD04 0008A8 0004+00 0/1 0/0 0/0 .rodata          @11360 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_11360 = 0xC0FFAE14;
COMPILER_STRIP_GATE(0x80B8CD00, &lit_11360);
#pragma pop

/* 80B8CD04-80B8CD08 0008AC 0004+00 0/1 0/0 0/0 .rodata          @11361 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_11361 = 0x434E5EB8;
COMPILER_STRIP_GATE(0x80B8CD04, &lit_11361);
#pragma pop

/* 80B8A648-80B8A7F8 012228 01B0+00 2/0 0/0 0/0 .text            tobikomi1__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::tobikomi1(void* param_0) {
    switch (mMode) {
    case 0:
        setExpression(EXPR_NONE, -1.0f);
        setMotion(MOT_TOBIKOMI_S, -1.0f, false);
        mActionSelect = 2;
        mMode = 2;
        // fallthrough

    case 2:
        if (mBaseMotionAnm == MOT_FLOAT_B) {
            if (mpMorf->isStop()) {
                cXyz vec(-1.68f, -7.99f, 206.37f);
                mDoMtx_stack_c::YrotS(mCurAngle.y);
                mDoMtx_stack_c::multVec(&vec, &vec);
                current.pos += vec;
                old.pos = current.pos;
                setAction(&tobikomi2);
            } else {
                s16 angle_y = home.angle.y;
                if (getAngleNoFromParam() == 1) {
                    angle_y -= 0x2000;
                } else if (getAngleNoFromParam() == 2) {
                    angle_y += 0x2000;
                }
                cLib_chaseAngleS(&mCurAngle.y, angle_y, 0x800);
                setAngle(mCurAngle.y);
            }
        }
        break;

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::tobikomi1(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/tobikomi1__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8CD08-80B8CD0C 0008B0 0004+00 0/1 0/0 0/0 .rodata          @11409 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11409 = -47.0f;
COMPILER_STRIP_GATE(0x80B8CD08, &lit_11409);
#pragma pop

/* 80B8A7F8-80B8AA1C 0123D8 0224+00 2/0 0/0 0/0 .text            tobikomi2__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::tobikomi2(void* param_0) {
    f32 water_y;

    switch (mMode) {
    case 0:
        setExpression(EXPR_NONE, -1.0f);
        setMotion(MOT_TOBIKOMI_T, -1.0f, false);
        mActionSelect = 3;
        mSwimSpeed.set(0.0f, -47.0f, 36.0f);
        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&mSwimSpeed, &mSwimSpeed);
        mMode = 2;
        // fallthrough

    case 2:
        if (fopAcM_getWaterY(&current.pos, &water_y)) {
            cXyz head_pos;
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
            mDoMtx_stack_c::scaleM(scale);
            mDoMtx_stack_c::multVecZero(&head_pos);
            if (head_pos.y <= water_y) {
                cXyz water_pos = head_pos;
                water_pos.y = water_y;
                fopKyM_createWpillar(&water_pos, 2.5f, 0);
                mCreatureSound.startCreatureSound(Z2SE_ZRA_DIVE_SPLASH, 0, -1);
                setExpression(EXPR_NONE, -1.0f);
                setMotion(MOT_TOBIKOMI_E, -1.0f, false);
                setAction(&tobikomi3);
                break;
            }
        }
        mSwimSpeed.y -= 3.0f;
        current.pos += mSwimSpeed;
        break;

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::tobikomi2(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/tobikomi2__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* 80B8AA1C-80B8AB78 0125FC 015C+00 2/0 0/0 0/0 .text            tobikomi3__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::tobikomi3(void* param_0) {
    switch (mMode) {
    case 0:
        mActionSelect = 4;
        mSwimAngleCalc = current.angle;
        mMode = 2;
        // fallthrough

    case 2: {
        cXyz vec(0.0f, 0.0f, daNpc_zrA_Param_c::m.mSwimSpeed * 1.5f);
        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&vec, &vec);
        cLib_chasePos(&mSwimSpeed, vec, 25.0f);
        current.pos += mSwimSpeed;
        if (mBaseMotionAnm == ANM_SWIM_A) {
            if (field_0x15c1) {
                setAction(&tobiJump);
            } else {
                setAction(&tobiEnd);
            }
        }
        break;
    }

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::tobikomi3(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/tobikomi3__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* 80B8AB78-80B8B1FC 012758 0684+00 2/0 0/0 0/0 .text            tobiJump__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::tobiJump(void* param_0) {
    cXyz swim_speed;
    csXyz angle;
    f32 water_y;
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed * 2;
    s16 angle_scale = 4;

    switch (mMode) {
    case 0:
        mActionSelect = 5;
        mSwimAngleCalc = current.angle;
        mMode = 2;
        // fallthrough

    case 2: {
        cXyz head_pos;
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::scaleM(scale);
        mDoMtx_stack_c::multVecZero(&head_pos);

        if (field_0x153e) {
            if (mpMorf->getFrame() > 13.0f && mpMorf->getFrame() < 17.0f) {
                f32 play_speed = mpMorf->getPlaySpeed();
                cLib_addCalc2(&play_speed, 0.3f, 0.5f, 0.8f);
                mpMorf->setPlaySpeed(play_speed);
            }

            calcBank(angle_step, angle_scale, current.angle.y, current.angle.z);
            mSwimSpeed.y -= 2.0f;
            current.pos += mSwimSpeed;
            if (current.angle.x < 0x3a00) {
                current.angle.x = -cM_atan2s(mSwimSpeed.y, mSwimSpeed.absXZ());
            }
            shape_angle = mCurAngle = current.angle;

            if (fopAcM_getWaterY(&current.pos, &water_y)) {
                if (mIsAboveWater && head_pos.y + mSwimSpeed.y <= water_y) {
                    cXyz water_pos = head_pos;
                    water_pos.y = water_y;
                    fopKyM_createWpillar(&water_pos, 2.5f, 0);
                    mCreatureSound.startCreatureSound(Z2SE_ZRA_DIVE_SPLASH, 0, -1);
                    mIsAboveWater = false;
                }

                if (current.pos.y <= water_y - daNpc_zrA_Param_c::m.mMinDepth) {
                    setAction(&tobiEnd);
                    mSwimSpeedF = mSwimSpeed.absXZ();
                }
            }
            
            return true;
        } else {
            angle.x = -0x3b00;
            angle.y = current.angle.y;
            angle.z = current.angle.z;

            if (fopAcM_getWaterY(&current.pos, &water_y)) {
                angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed * 2;
                angle_scale = 2;
                if (!(head_pos.y < water_y)) {
                    if (!mIsAboveWater) {
                        cXyz water_pos = head_pos;
                        water_pos.y = water_y;
                        fopKyM_createWpillar(&water_pos, 2.5f, 0);
                        mIsAboveWater = true;
                        mCreatureSound.startCreatureSound(Z2SE_ZRA_DIVE_SPLASH_OUT, 0, -1);
                    }

                    if (current.pos.y > water_y) {
                        swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
                        calcSwimPos(swim_speed);
                        mSwimSpeed = swim_speed;
                        field_0x153e = true;
                        return true;
                    }
                }
            }

            calcSwimAngle(angle, mSwimAngleCalc, angle_scale, angle_step);
            cLib_addCalc2(&mSwimSpeedF, 2.0f * daNpc_zrA_Param_c::m.mSwimSpeed, 0.7f, 10.0f);
            swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);
            f32 play_speed = mpMorf->getPlaySpeed();
            cLib_addCalc2(&play_speed, mSwimSpeedF / daNpc_zrA_Param_c::m.mSwimAnmRate, 0.2f, 0.1f);
            mpMorf->setPlaySpeed(play_speed);
            shape_angle = mCurAngle = current.angle;
        }

        break;
    }

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::tobiJump(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/tobiJump__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* 80B8B1FC-80B8B3A0 012DDC 01A4+00 3/0 0/0 0/0 .text            tobiEnd__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::tobiEnd(void* param_0) {
    cXyz swim_speed;
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;

    switch (mMode) {
    case 0:
        mActionSelect = 6;
        mMode = 2;
        // fallthrough

    case 2: {
        if (fopAcM_otherBgCheck(this, dComIfGp_getPlayer(0))
            || fopAcM_CheckCondition(this, fopAcCnd_NODRAW_e))
        {
            fopAcM_delete(this);
            return true;
        }

        csXyz angle;
        angle.x = 0x3000;
        angle.y = current.angle.y;
        angle.z = current.angle.z;
        calcSwimAngle(angle, mSwimAngleCalc, 8, angle_step);
        cLib_chaseF(&mSwimSpeedF, daNpc_zrA_Param_c::m.mSwimSpeed,
                    daNpc_zrA_Param_c::m.mSwimSpeed / 3.0f);
        swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
        calcSwimPos(swim_speed);
        f32 play_speed = mpMorf->getPlaySpeed();
        cLib_addCalc2(&play_speed, mSwimSpeedF / daNpc_zrA_Param_c::m.mSwimAnmRate, 0.2f, 0.1f);
        mpMorf->setPlaySpeed(play_speed);
        calcBank(angle_step, 8, angle.y, angle.z);
        current.angle.z = angle.z;
        shape_angle = mCurAngle = current.angle;
    }

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::tobiEnd(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/tobiEnd__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* 80B8B3A0-80B8B420 012F80 0080+00 1/1 0/0 0/0 .text            s_subSP__FPvPv */
static void* s_subSP(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_NPC_ZRA) {
        daNpc_zrA_c* other = static_cast<daNpc_zrA_c*>(i_proc);
        daNpc_zrA_c* _this = static_cast<daNpc_zrA_c*>(i_this);
        if (other->getType() == _this->getType()
            && other->getNoFromParam() != _this->getNoFromParam())
        {
            return other;
        }
    }
    return NULL;
}

/* 80B8B420-80B8B530 013000 0110+00 1/0 0/0 0/0 .text            waitSearch__11daNpc_zrA_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::waitSearch(void* param_0) {
    switch (mMode) {
    case 0:
        setExpression(EXPR_NONE, -1.0f);
        setMotion(MOT_WAIT_A, -1.0f, false);
        setLookMode(LOOK_NONE);
        mAcch.SetGrndNone();
        mAcch.SetWallNone();
        mMode = 2;
        // fallthrough

    case 2:
        if (mActorMngr[2].getActorP() == NULL) {
            fopAc_ac_c* other = (fopAc_ac_c*)fpcM_Search(s_subSP, this);
            if (other != NULL) {
                mActorMngr[2].entry(other);
            }
        }

        if (dComIfGs_isSwitch(mSwitch1, fopAcM_GetRoomNo(this))) {
            fopAcM_delete(this);
        }
        break;

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::waitSearch(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/waitSearch__11daNpc_zrA_cFPv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B8CD0C-80B8CD14 0008B4 0008+00 0/1 0/0 0/0 .rodata          @11740 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_11740[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B8CD0C, &lit_11740);
#pragma pop

/* 80B8CD14-80B8CD18 0008BC 0004+00 0/2 0/0 0/0 .rodata          @11931 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_11931 = 0xC1F9999A;
COMPILER_STRIP_GATE(0x80B8CD14, &lit_11931);
#pragma pop

/* 80B8CD18-80B8CD1C 0008C0 0004+00 0/2 0/0 0/0 .rodata          @11932 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_11932 = 0x416B3333;
COMPILER_STRIP_GATE(0x80B8CD18, &lit_11932);
#pragma pop

/* 80B8CD1C-80B8CD20 0008C4 0004+00 0/2 0/0 0/0 .rodata          @11933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11933 = -30.0f;
COMPILER_STRIP_GATE(0x80B8CD1C, &lit_11933);
#pragma pop

/* 80B8CD20-80B8CD24 0008C8 0004+00 0/2 0/0 0/0 .rodata          @11934 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_11934 = 0x43525EB8;
COMPILER_STRIP_GATE(0x80B8CD20, &lit_11934);
#pragma pop

/* 80B8CD24-80B8CD28 0008CC 0004+00 0/2 0/0 0/0 .rodata          @11935 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_11935 = 0xC5963D9A;
COMPILER_STRIP_GATE(0x80B8CD24, &lit_11935);
#pragma pop

/* 80B8CD28-80B8CD2C 0008D0 0004+00 0/2 0/0 0/0 .rodata          @11936 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_11936 = 0xC34F71AA;
COMPILER_STRIP_GATE(0x80B8CD28, &lit_11936);
#pragma pop

/* 80B8CD2C-80B8CD30 0008D4 0004+00 0/2 0/0 0/0 .rodata          @11937 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_11937 = 0x459FAED5;
COMPILER_STRIP_GATE(0x80B8CD2C, &lit_11937);
#pragma pop

/* 80B8B530-80B8BCE8 013110 07B8+00 1/0 0/0 0/0 .text            ECut_searchPrince1__11daNpc_zrA_cFi
 */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::ECut_searchPrince1(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    fopAc_ac_c* talk_actors[2] = {this, mActorMngr[2].getActorP()};
    f32 water_y;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            dComIfGs_onSwitch(mSwitch1, fopAcM_GetRoomNo(this));
            setLookMode(LOOK_ACTOR);
            break;

        case 10:
            initTalk(mFlowID, talk_actors);
            break;

        case 20:
            setLookMode(LOOK_NONE);
            setExpression(EXPR_NONE, -1.0f);
            setMotion(MOT_TOBIKOMI_S, -1.0f, false);
            break;

        case 30:
            mSwimSpeed.set(0.0f, -31.2f, 14.7f);
            mDoMtx_stack_c::YrotS(mCurAngle.y);
            mDoMtx_stack_c::multVec(&mSwimSpeed, &mSwimSpeed);
            break;

        case 40:
            setExpression(EXPR_NONE, -1.0f);
            setMotion(MOT_TOBIKOMI_E, -1.0f, false);
            mSwimAngleCalc = current.angle;
            break;

        case 50:
            break;
        }
    }

    switch (prm) {
    case 0:
        ret = true;
        break;

    case 10:
        if (talkProc(NULL, 0, talk_actors)) {
            ret = true;
        }
        break;

    case 20: {
        if (mBaseMotionAnm == ANM_TOBIKOMI_S) {
            if (mpMorf->isStop()) {
                cXyz dive_speed(-1.68f, -30.0f, 210.37f);
                mDoMtx_stack_c::YrotS(mCurAngle.y);
                mDoMtx_stack_c::multVec(&dive_speed, &dive_speed);
                current.pos += dive_speed;
                old.pos = current.pos;
                setExpression(EXPR_NONE, -1.0f);
                setMotion(MOT_TOBIKOMI_T, -1.0f, false);
                ret = true;
            } else {
                cLib_chaseAngleS(&mCurAngle.y, 0x2dca, 0x200);
                setAngle(mCurAngle.y);
            }
        } else if (mBaseMotionAnm == ANM_TOBIKOMI_T) {
            ret = true;
        }
        cXyz head_pos;
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::scaleM(scale);
        mDoMtx_stack_c::multVecZero(&head_pos);
        break;
    }

    case 30:
        if (mBaseMotionAnm == ANM_TOBIKOMI_E) {
            ret = true;
        } else if (fopAcM_getWaterY(&current.pos, &water_y)) {
            cXyz head_pos;
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
            mDoMtx_stack_c::scaleM(scale);
            mDoMtx_stack_c::multVecZero(&head_pos);
            if (head_pos.y <= water_y) {
                cXyz water_pos = head_pos;
                water_pos.y = water_y;
                fopKyM_createWpillar(&water_pos, 2.5f, 0);
                mCreatureSound.startCreatureSound(Z2SE_ZRA_DIVE_SPLASH, 0, -1);
                setExpression(EXPR_NONE, -1.0f);
                setMotion(MOT_TOBIKOMI_E, -1.0f, false);
                ret = true;
                break;
            }
        }
        mSwimSpeed.y -= 3.0f;
        current.pos += mSwimSpeed;
        break;

    case 40: {
        if (mBaseMotionAnm == ANM_SWIM_A) {
            ret = true;
        }
        cXyz swim_speed(0.0f, 0.0f, daNpc_zrA_Param_c::m.mSwimSpeed);
        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&swim_speed, &swim_speed);
        cLib_chasePos(&mSwimSpeed, swim_speed, 25.0f);
        current.pos += mSwimSpeed;
        break;
    }

    case 50: {
        cXyz pos(-4807.7f, -207.444f, 5109.854f);
        cXyz swim_speed(0.0f, 0.0f, daNpc_zrA_Param_c::m.mSwimSpeed);
        csXyz angle;
        angle.x = cLib_targetAngleX(&pos, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &pos);
        angle.z = current.angle.z;
        mpMorf->setPlaySpeed(daNpc_zrA_Param_c::m.mSwimSpeed / daNpc_zrA_Param_c::m.mSwimAnmRate);
        calcSwimAngle(angle, mSwimAngleCalc, 23, daNpc_zrA_Param_c::m.mSwimAngleSpeed / 2);
        calcSwimPos(swim_speed);
        calcBank(daNpc_zrA_Param_c::m.mSwimAngleSpeed / 2, 16, angle.y, angle.z);
        current.angle.z = angle.z;
        shape_angle = mCurAngle = current.angle;
        if ((pos - current.pos).absXZ() < 100.0f) {
            ret = true;
        }
        break;
    }

    default:
        ret = true;
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::ECut_searchPrince1(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/ECut_searchPrince1__11daNpc_zrA_cFi.s"
}
#pragma pop
#endif

/* 80B8BCE8-80B8C3E8 0138C8 0700+00 1/0 0/0 0/0 .text            ECut_searchPrince2__11daNpc_zrA_cFi
 */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrA_c::ECut_searchPrince2(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    f32 water_y;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            setLookMode(LOOK_ACTOR);
            break;

        case 10:
            break;

        case 20:
            setLookMode(LOOK_NONE);
            setExpression(EXPR_NONE, -1.0f);
            setMotion(MOT_TOBIKOMI_S, -1.0f, false);
            break;

        case 30:
            mSwimSpeed.set(0.0f, -31.2f, 14.7f);
            mDoMtx_stack_c::YrotS(mCurAngle.y);
            mDoMtx_stack_c::multVec(&mSwimSpeed, &mSwimSpeed);
            break;

        case 40:
            setExpression(EXPR_NONE, -1.0f);
            setMotion(MOT_TOBIKOMI_E, -1.0f, false);
            mSwimAngleCalc = current.angle;
            break;

        case 50:
            break;
        }
    }

    switch (prm) {
    case 0:
        ret = true;
        break;

    case 10:
        ret = true;
        break;

    case 20:
        if (mBaseMotionAnm == ANM_TOBIKOMI_S) {
            if (mpMorf->isStop()) {
                cXyz dive_speed(-1.68f, -30.0f, 210.37f);
                mDoMtx_stack_c::YrotS(mCurAngle.y);
                mDoMtx_stack_c::multVec(&dive_speed, &dive_speed);
                current.pos += dive_speed;
                old.pos = current.pos;
                setExpression(EXPR_NONE, -1.0f);
                setMotion(MOT_TOBIKOMI_T, -1.0f, false);
                ret = true;
            } else {
                cLib_chaseAngleS(&mCurAngle.y, 0x2dca, 0x200);
                setAngle(mCurAngle.y);
            }
        } else if (mBaseMotionAnm == ANM_TOBIKOMI_T) {
            ret = true;
        }
        break;

    case 30:
        if (mBaseMotionAnm == ANM_TOBIKOMI_E) {
            ret = true;
        } else if (fopAcM_getWaterY(&current.pos, &water_y)) {
            cXyz head_pos;
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
            mDoMtx_stack_c::scaleM(scale);
            mDoMtx_stack_c::multVecZero(&head_pos);
            if (head_pos.y <= water_y) {
                cXyz water_pos = head_pos;
                water_pos.y = water_y;
                fopKyM_createWpillar(&water_pos, 2.5f, 0);
                setExpression(EXPR_NONE, -1.0f);
                setMotion(MOT_TOBIKOMI_E, -1.0f, false);
                ret = true;
                mCreatureSound.startCreatureSound(Z2SE_ZRA_DIVE_SPLASH, 0, -1);
                break;
            }
        }
        mSwimSpeed.y -= 3.0f;
        current.pos += mSwimSpeed;
        break;

    case 40: {
        if (mBaseMotionAnm == ANM_SWIM_A) {
            ret = true;
        }
        cXyz swim_speed(0.0f, 0.0f, daNpc_zrA_Param_c::m.mSwimSpeed);
        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&swim_speed, &swim_speed);
        cLib_chasePos(&mSwimSpeed, swim_speed, 25.0f);
        current.pos += mSwimSpeed;
        break;
    }

    case 50: {
        cXyz pos(-4807.7f, -207.444f, 5109.854f);
        cXyz swim_speed(0.0f, 0.0f, daNpc_zrA_Param_c::m.mSwimSpeed);
        csXyz angle;
        angle.x = cLib_targetAngleX(&pos, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &pos);
        angle.z = current.angle.z;
        mpMorf->setPlaySpeed(daNpc_zrA_Param_c::m.mSwimSpeed / daNpc_zrA_Param_c::m.mSwimAnmRate);
        calcSwimAngle(angle, mSwimAngleCalc, 23, daNpc_zrA_Param_c::m.mSwimAngleSpeed / 2);
        calcSwimPos(swim_speed);
        calcBank(daNpc_zrA_Param_c::m.mSwimAngleSpeed / 2, 16, angle.y, angle.z);
        current.angle.z = angle.z;
        shape_angle = mCurAngle = current.angle;
        if ((pos - current.pos).absXZ() < 100.0f) {
            ret = true;
        }
        break;
    }

    default:
        ret = true;
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrA_c::ECut_searchPrince2(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/ECut_searchPrince2__11daNpc_zrA_cFi.s"
}
#pragma pop
#endif

/* 80B8C3E8-80B8C3EC 013FC8 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__11daNpc_zrA_cFv
 */
void daNpc_zrA_c::adjustShapeAngle() {
    /* empty function */
}

/* 80B8C3EC-80B8C434 013FCC 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_zrA_Param_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_zrA_Param_c::~daNpc_zrA_Param_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/__dt__17daNpc_zrA_Param_cFv.s"
}
#pragma pop

/* 80B8C434-80B8C43C 014014 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80B8C434() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/func_80B8C434.s"
}
#pragma pop

/* 80B8C43C-80B8C444 01401C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80B8C43C() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zra/d_a_npc_zra/func_80B8C43C.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B8DAB4-80B8DAB8 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80B8DAB4[4];
#pragma pop

/* 80B8DAB8-80B8DABC 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80B8DAB8[4];
#pragma pop

/* 80B8DABC-80B8DAC0 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80B8DABC[4];
#pragma pop

/* 80B8DAC0-80B8DAC4 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80B8DAC0[4];
#pragma pop

/* 80B8DAC4-80B8DAC8 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B8DAC4[4];
#pragma pop

/* 80B8DAC8-80B8DACC 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B8DAC8[4];
#pragma pop

/* 80B8DACC-80B8DAD0 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80B8DACC[4];
#pragma pop

/* 80B8DAD0-80B8DAD4 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80B8DAD0[4];
#pragma pop

/* 80B8DAD4-80B8DAD8 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80B8DAD4[4];
#pragma pop

/* 80B8DAD8-80B8DADC 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80B8DAD8[4];
#pragma pop

/* 80B8DADC-80B8DAE0 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80B8DADC[4];
#pragma pop

/* 80B8DAE0-80B8DAE4 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80B8DAE0[4];
#pragma pop

/* 80B8DAE4-80B8DAE8 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80B8DAE4[4];
#pragma pop

/* 80B8DAE8-80B8DAEC 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B8DAE8[4];
#pragma pop

/* 80B8DAEC-80B8DAF0 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80B8DAEC[4];
#pragma pop

/* 80B8DAF0-80B8DAF4 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80B8DAF0[4];
#pragma pop

/* 80B8DAF4-80B8DAF8 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80B8DAF4[4];
#pragma pop

/* 80B8DAF8-80B8DAFC 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80B8DAF8[4];
#pragma pop

/* 80B8DAFC-80B8DB00 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80B8DAFC[4];
#pragma pop

/* 80B8DB00-80B8DB04 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80B8DB00[4];
#pragma pop

/* 80B8DB04-80B8DB08 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80B8DB04[4];
#pragma pop

/* 80B8DB08-80B8DB0C 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B8DB08[4];
#pragma pop

/* 80B8DB0C-80B8DB10 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B8DB0C[4];
#pragma pop

/* 80B8DB10-80B8DB14 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B8DB10[4];
#pragma pop

/* 80B8DB14-80B8DB18 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80B8DB14[4];
#pragma pop

/* 80B8CD30-80B8CD30 0008D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
