/**
 * @file d_a_obj_gra2.cpp
 * 
*/

#include "d/actor/d_a_obj_gra2.h"
#include "dol2asm.h"
#include "d/d_camera.h"

//
// Forward References:
//

extern "C" static void jointCtrlCallBack__FP8J3DJointi();
extern "C" void rideCallBack__11daObj_GrA_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void __ct__11daObj_GrA_cFv();
extern "C" void __dt__11daObj_GrA_cFv();
extern "C" void create__11daObj_GrA_cFv();
extern "C" void CreateHeap__11daObj_GrA_cFv();
extern "C" void Delete__11daObj_GrA_cFv();
extern "C" void Execute__11daObj_GrA_cFPPA3_A4_f();
extern "C" void Draw__11daObj_GrA_cFv();
extern "C" void jointCtrl__11daObj_GrA_cFP8J3DJointP8J3DModel();
extern "C" void getResName__11daObj_GrA_cFv();
extern "C" void getMode__11daObj_GrA_cFv();
extern "C" void getPathNo__11daObj_GrA_cFv();
extern "C" void getTagNo__11daObj_GrA_cFv();
extern "C" void getJumpType__11daObj_GrA_cFv();
extern "C" void isDelete__11daObj_GrA_cFv();
extern "C" void restart__11daObj_GrA_cFv();
extern "C" void init__11daObj_GrA_cFv();
extern "C" void setBaseAnm__11daObj_GrA_cFif();
extern "C" void setFaceAnm__11daObj_GrA_cFibf();
extern "C" void setFaceBtp__11daObj_GrA_cFi();
extern "C" void setBaseMotion__11daObj_GrA_cFif();
extern "C" void setFaceMotion__11daObj_GrA_cFif();
extern "C" void calcMotion__11daObj_GrA_cFv();
extern "C" void checkProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i();
extern "C" void setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i();
extern "C" static void getDistTableIdx__Fii();
extern "C" void setParam__11daObj_GrA_cFv();
extern "C" void checkEvent__11daObj_GrA_cFv();
extern "C" void mainProc__11daObj_GrA_cFv();
extern "C" void adjustShapeAngle__11daObj_GrA_cFv();
extern "C" void setMtx__11daObj_GrA_cFi();
extern "C" void setCollisions__11daObj_GrA_cFv();
extern "C" void setAttnPos__11daObj_GrA_cFv();
extern "C" void drawOtherMdls__11daObj_GrA_cFv();
extern "C" bool dbgDraw__11daObj_GrA_cFv();
extern "C" void ppMoveInit__11daObj_GrA_cFv();
extern "C" void setLookMode__11daObj_GrA_cFi();
extern "C" void lookat__11daObj_GrA_cFv();
extern "C" void hitChk__11daObj_GrA_cFv();
extern "C" void wait__11daObj_GrA_cFPv();
extern "C" void talk__11daObj_GrA_cFPv();
extern "C" void ctrlMsgAnm__11daObj_GrA_cFRiRiP10fopAc_ac_c();
extern "C" static void s_sub__FPvPv();
extern "C" void checkTagGraSub__11daObj_GrA_cFP10fopAc_ac_c();
extern "C" void fallAbyssCheck__11daObj_GrA_cFv();
extern "C" void setPrtcl__11daObj_GrA_cFv();
extern "C" void base000__11daObj_GrA_cFi();
extern "C" void base001__11daObj_GrA_cFi();
extern "C" void base003__11daObj_GrA_cFi();
extern "C" void base004__11daObj_GrA_cFi();
extern "C" void base005__11daObj_GrA_cFi();
extern "C" void base006__11daObj_GrA_cFi();
extern "C" void base007__11daObj_GrA_cFi();
extern "C" void base008__11daObj_GrA_cFi();
extern "C" void base009__11daObj_GrA_cFi();
extern "C" void base010__11daObj_GrA_cFi();
extern "C" void base013__11daObj_GrA_cFi();
extern "C" void base016__11daObj_GrA_cFi();
extern "C" void base017__11daObj_GrA_cFi();
extern "C" void base018__11daObj_GrA_cFi();
extern "C" void base019__11daObj_GrA_cFi();
extern "C" void base020__11daObj_GrA_cFi();
extern "C" void base021__11daObj_GrA_cFi();
extern "C" void base022__11daObj_GrA_cFi();
extern "C" void base023__11daObj_GrA_cFi();
extern "C" void base024__11daObj_GrA_cFi();
extern "C" void base025__11daObj_GrA_cFi();
extern "C" void base026__11daObj_GrA_cFi();
extern "C" void face000__11daObj_GrA_cFi();
extern "C" void face003__11daObj_GrA_cFi();
extern "C" void face004__11daObj_GrA_cFi();
extern "C" void face005__11daObj_GrA_cFi();
extern "C" void face006__11daObj_GrA_cFi();
extern "C" void face007__11daObj_GrA_cFi();
extern "C" void face008__11daObj_GrA_cFi();
extern "C" void face009__11daObj_GrA_cFi();
extern "C" void face010__11daObj_GrA_cFi();
extern "C" void face011__11daObj_GrA_cFi();
extern "C" void face012__11daObj_GrA_cFi();
extern "C" void face016__11daObj_GrA_cFi();
extern "C" void face017__11daObj_GrA_cFi();
extern "C" void face999__11daObj_GrA_cFi();
extern "C" void evtcutTalk__11daObj_GrA_cFii();
extern "C" void setFaceTalkAfter__11daObj_GrA_cFv();
extern "C" static void daObj_GrA_Create__FPv();
extern "C" static void daObj_GrA_Delete__FPv();
extern "C" static void daObj_GrA_Execute__FPv();
extern "C" static void daObj_GrA_Draw__FPv();
extern "C" static bool daObj_GrA_IsDelete__FPv();
extern "C" void __dt__17daObj_GrA_Param_cFv();
extern "C" void __dt__16daBaseNpc_path_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__Q211daObj_GrA_c21daObj_GrA_prtclMngr_cFv();
extern "C" void __ct__Q211daObj_GrA_c21daObj_GrA_prtclMngr_cFv();
extern "C" void __dt__18daBaseNpc_acMngr_cFv();
extern "C" void __dt__23daBaseNpc_moveBgActor_cFv();
extern "C" bool Draw__23daBaseNpc_moveBgActor_cFv();
extern "C" bool Create__23daBaseNpc_moveBgActor_cFv();
extern "C" bool IsDelete__23daBaseNpc_moveBgActor_cFv();
extern "C" bool ToFore__23daBaseNpc_moveBgActor_cFv();
extern "C" bool ToBack__23daBaseNpc_moveBgActor_cFv();
extern "C" bool CreateHeap__23daBaseNpc_moveBgActor_cFv();
extern "C" bool Execute__23daBaseNpc_moveBgActor_cFPPA3_A4_f();
extern "C" bool Delete__23daBaseNpc_moveBgActor_cFv();
extern "C" void func_80C04F3C(void* _this, int*);
extern "C" void func_80C04F58(void* _this, s16*);
extern "C" void __sinit_d_a_obj_gra2_cpp();
extern "C" void getSrchCircleR__11daObj_GrA_cFv();
extern "C" void standWait__11daObj_GrA_cFPv();
extern "C" void walk__11daObj_GrA_cFPv();
extern "C" void defence__11daObj_GrA_cFPv();
extern "C" void toStone__11daObj_GrA_cFPv();
extern "C" void step__11daObj_GrA_cFPv();
extern "C" void rollReturn__11daObj_GrA_cFPv();
extern "C" void soldierDemoSkip__11daObj_GrA_cFv();
extern "C" void soldierDemo__11daObj_GrA_cFPv();
extern "C" void getSrchLinkR__11daObj_GrA_cFv();
extern "C" void getSrchGraR__11daObj_GrA_cFv();
extern "C" void getSpeed__11daObj_GrA_cFv();
extern "C" void standRoll__11daObj_GrA_cFPv();
extern "C" void rollDemo__11daObj_GrA_cFPv();
extern "C" void rollAttack__11daObj_GrA_cFPv();
extern "C" void rollAttacked__11daObj_GrA_cFPv();
extern "C" void rollEscape__11daObj_GrA_cFPv();
extern "C" void rollLanding__11daObj_GrA_cFv();
extern "C" void thrown__11daObj_GrA_cFPv();
extern "C" void demo_camera__11daObj_GrA_cFv();
extern "C" void rollAttackedDemo__11daObj_GrA_cFv();
extern "C" void graThrowDemo__11daObj_GrA_cFv();
extern "C" void setCarryStatus__11daObj_GrA_cFv();
extern "C" void checkThrow__11daObj_GrA_cFv();
extern "C" void calcCatchPos__11daObj_GrA_cFfi();
extern "C" void initCrazyBeforeCatch__11daObj_GrA_cFi();
extern "C" void executeCrazyBeforeCatch__11daObj_GrA_cFv();
extern "C" void initCrazyCatch__11daObj_GrA_cFi();
extern "C" void executeCrazyCatch__11daObj_GrA_cFv();
extern "C" void initCrazyThrow__11daObj_GrA_cFi();
extern "C" void executeCrazyThrow__11daObj_GrA_cFv();
extern "C" void initCrazyAttack__11daObj_GrA_cFv();
extern "C" void executeCrazyJumping__11daObj_GrA_cFv();
extern "C" void modeChangeCheck__11daObj_GrA_cFv();
extern "C" void getGraPos__10daTagGra_cFv();
extern "C" static void s_sub2__FPvPv();
extern "C" void checkGraSub__11daObj_GrA_cFP10fopAc_ac_c();
extern "C" void waitDemo__11daObj_GrA_cFPv();
extern "C" void skipDemoGra__11daObj_GrA_cFv();
extern "C" static void skipCallBack__FPvi();
extern "C" void startDemo__11daObj_GrA_cFPv();
extern "C" void turn__11daObj_GrA_cFsfi();
extern "C" void turn_step__11daObj_GrA_cFsiii();
extern "C" void chkFindPlayer2__11daObj_GrA_cFis();
extern "C" void getDistTable__12dAttention_cFi();
extern "C" void chkPointInArea__11daObj_GrA_cF4cXyz4cXyzfffs();
extern "C" void chkPointInArea__11daObj_GrA_cF4cXyz4cXyz4cXyzs();
extern "C" void chkActorInSight2__11daObj_GrA_cFP10fopAc_ac_cfs();
extern "C" void getAttentionPos__11daObj_GrA_cFP10fopAc_ac_c();
extern "C" void standWaitJump__11daObj_GrA_cFPv();
extern "C" u8 const m__17daObj_GrA_Param_c[192];
extern "C" extern char const* const d_a_obj_gra2__stringBase0;
extern "C" u8 mBaseMotionList__11daObj_GrA_c[264];
extern "C" u8 mFaceMotionList__11daObj_GrA_c[168];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotS__14mDoMtx_stack_cFRC5csXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void setMorf__13mDoExt_morf_cFf();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void onSwitch__12dSv_danBit_cFi();
extern "C" void isSwitch__12dSv_danBit_cCFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void onSkipFade__14dEvt_control_cFv();
extern "C" void endCheck__16dEvent_manager_cFs();
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
extern "C" void CheckQuake__12dVibration_cFv();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GetActorPointer__4cBgSCFi();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void __ct__15dBgS_LinkLinChkFv();
extern "C" void __dt__15dBgS_LinkLinChkFv();
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void __ct__18daBaseNpc_acMngr_cFv();
extern "C" void entry__18daBaseNpc_acMngr_cFP10fopAc_ac_c();
extern "C" void getActor__18daBaseNpc_acMngr_cFv();
extern "C" void __ct__16daBaseNpc_path_cFv();
extern "C" void isPath__16daBaseNpc_path_cFv();
extern "C" void setPathInfo__16daBaseNpc_path_cFUcScSc();
extern "C" void reverseDir__16daBaseNpc_path_cFv();
extern "C" void chkPnt__16daBaseNpc_path_cF4cXyz();
extern "C" void setNextPnt__16daBaseNpc_path_cFv();
extern "C" void getIdx__16daBaseNpc_path_cFv();
extern "C" void setIdx__16daBaseNpc_path_cFUs();
extern "C" void getPntPos__16daBaseNpc_path_cFUs();
extern "C" void calc__18daBaseNpc_lookat_cFP10fopAc_ac_cPA4_fs();
extern "C" void setMaxJntLmt__18daBaseNpc_lookat_cF5csXyzi();
extern "C" void setMinJntLmt__18daBaseNpc_lookat_cF5csXyzi();
extern "C" void setJntPos__18daBaseNpc_lookat_cF4cXyzi();
extern "C" void setAttnPos__18daBaseNpc_lookat_cFP4cXyz();
extern "C" void getRot__18daBaseNpc_lookat_cFi();
extern "C" void __dt__11daBaseNpc_cFv();
extern "C" void execute__11daBaseNpc_cFv();
extern "C" void draw__11daBaseNpc_cFf();
extern "C" bool getResName__11daBaseNpc_cFv();
extern "C" void getTrnsfrmKeyAnmP__11daBaseNpc_cFPci();
extern "C" void setMcaMorfAnm__11daBaseNpc_cFP18J3DAnmTransformKeyffiii();
extern "C" void setBckAnm__11daBaseNpc_cFP15J3DAnmTransformfiiib();
extern "C" void getTexPtrnAnmP__11daBaseNpc_cFPci();
extern "C" void setBtpAnm__11daBaseNpc_cFP16J3DAnmTexPatternP12J3DModelDatafi();
extern "C" void attnSttsOn__11daBaseNpc_cFii();
extern "C" void setParam__11daBaseNpc_cFv();
extern "C" void orderEvent__11daBaseNpc_cFiPc();
extern "C" void mainProc__11daBaseNpc_cFv();
extern "C" void setEnvTevColor__11daBaseNpc_cFv();
extern "C" void setRoomNo__11daBaseNpc_cFv();
extern "C" bool btkCtrl__11daBaseNpc_cFv();
extern "C" void allAnmPlay__11daBaseNpc_cFv();
extern "C" void adjustShapeAngle__11daBaseNpc_cFv();
extern "C" void setMtx__11daBaseNpc_cFi();
extern "C" void setCollisions__11daBaseNpc_cFv();
extern "C" void setAttnPos__11daBaseNpc_cFv();
extern "C" void drawOtherMdls__11daBaseNpc_cFv();
extern "C" bool dbgDraw__11daBaseNpc_cFv();
extern "C" void __ct__23daBaseNpc_moveBgActor_cFv();
extern "C" void
MoveBGCreate__23daBaseNpc_moveBgActor_cFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUl();
extern "C" void MoveBGDelete__23daBaseNpc_moveBgActor_cFv();
extern "C" void MoveBGExecute__23daBaseNpc_moveBgActor_cFv();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void daNpcF_onEvtBit__FUl();
extern "C" void daNpcF_chkPointInArea__F4cXyz4cXyz4cXyzs();
extern "C" void getAttentionOffsetY__9daPy_py_cFv();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void dCam_getBody__Fv();
extern "C" void Eye__9dCamera_cFv();
extern "C" void Center__9dCamera_cFv();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void getActor__12dMsgObject_cFv();
extern "C" void isMouthCheck__12dMsgObject_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __dv__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcPos2__FP4cXyzRC4cXyzff();
extern "C" void cLib_addCalcPosXZ2__FP4cXyzRC4cXyzff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void cLib_chasePosXZ__FP4cXyzRC4cXyzf();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void __ct__7cSAngleFRC7cSAngle();
extern "C" void __ct__7cSAngleFs();
extern "C" void Inv__7cSAngleCFv();
extern "C" void __mi__7cSAngleCFs();
extern "C" void __ct__7cSGlobeFRC4cXyz();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
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
extern "C" u8 dist_table__12dAttention_c[6552];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" u8 mCcDCyl__11daBaseNpc_c[68];
extern "C" u8 mCcDSph__11daBaseNpc_c[64];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u8 g_dComIfGoat_gameInfo[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 80BFFF0C-80BFFF58 0000EC 004C+00 2/2 0/0 0/0 .text            jointCtrlCallBack__FP8J3DJointi */
static void jointCtrlCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80BFFF58-80BFFF70 000138 0018+00 1/1 0/0 0/0 .text
 * rideCallBack__11daObj_GrA_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c */
void daObj_GrA_c::rideCallBack(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C0FE14-80C0FE14 000398 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C0FE14 = "grA";
SECTION_DEAD static char const* const stringBase_80C0FE18 = "grA_base";
SECTION_DEAD static char const* const stringBase_80C0FE21 = "grA_mdl";
SECTION_DEAD static char const* const stringBase_80C0FE29 = "grA_demo";
SECTION_DEAD static char const* const stringBase_80C0FE32 = "grA_Look";
SECTION_DEAD static char const* const stringBase_80C0FE3B = "GRA_THROWN";
#pragma pop

/* 80C0FE68-80C0FE74 000000 000C+00 9/9 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C0FE74-80C0FE88 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80C0FE88-80C0FE98 -00001 0010+00 1/1 0/0 0/0 .data            l_resFileNameList */
SECTION_DATA static void* l_resFileNameList[4] = {
    (void*)&d_a_obj_gra2__stringBase0,
    (void*)&d_a_obj_gra2__stringBase0,
    (void*)&d_a_obj_gra2__stringBase0,
    (void*)&d_a_obj_gra2__stringBase0,
};

/* 80C0FE98-80C0FEA8 000030 0010+00 1/0 0/0 0/0 .data            l_exLoadRes_GRAa */
SECTION_DATA static u8 l_exLoadRes_GRAa[16] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80C0FEA8-80C0FEB8 000040 0010+00 1/0 0/0 0/0 .data            l_exLoadRes_GRA_jump */
SECTION_DATA static u8 l_exLoadRes_GRA_jump[16] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80C0FEB8-80C0FEC8 000050 0010+00 1/0 0/0 0/0 .data            l_exLoadRes_GRA_demo */
SECTION_DATA static u8 l_exLoadRes_GRA_demo[16] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80C0FEC8-80C0FED8 -00001 0010+00 2/2 0/0 0/0 .data            l_exloadRes_list */
SECTION_DATA static void* l_exloadRes_list[4] = {
    (void*)&l_exLoadRes_GRAa,
    (void*)&l_exLoadRes_GRA_jump,
    (void*)&l_exLoadRes_GRAa,
    (void*)&l_exLoadRes_GRA_demo,
};

/* 80C0FED8-80C0FEEC -00001 0014+00 5/6 0/0 0/0 .data            l_resNames */
SECTION_DATA static void* l_resNames[5] = {
    (void*)&d_a_obj_gra2__stringBase0,
    (void*)(((char*)&d_a_obj_gra2__stringBase0) + 0x4),
    (void*)(((char*)&d_a_obj_gra2__stringBase0) + 0xD),
    (void*)(((char*)&d_a_obj_gra2__stringBase0) + 0x15),
    (void*)(((char*)&d_a_obj_gra2__stringBase0) + 0x1E),
};

/* 80C0FEEC-80C0FEF4 000084 0008+00 0/1 0/0 0/0 .data            l_bmdGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_bmdGetParamList[8] = {
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02,
};
#pragma pop

/* 80C0FEF4-80C1000C 00008C 0118+00 2/2 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[280] = {
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00,
};

/* 80C1000C-80C1002C 0001A4 0020+00 1/1 0/0 0/0 .data            l_btpGetParamList */
SECTION_DATA static u8 l_btpGetParamList[32] = {
    0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00,
};

/* 80C1002C-80C10044 0001C4 0016+02 1/2 0/0 0/0 .data            l_eventMotionChangeTable */
SECTION_DATA static u8 l_eventMotionChangeTable[22 + 2 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x01,
    0x00,
    0x00,
    0x00,
    0x02,
    0x00,
    0x03,
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
};

/* 80C10044-80C1004C 0001DC 0008+00 1/2 0/0 0/0 .data            l_eventFaceChangeTable */
SECTION_DATA static u8 l_eventFaceChangeTable[8] = {
    0x00, 0x01, 0x00, 0x02, 0x00, 0x06, 0x00, 0x07,
};

/* 80C1004C-80C10054 -00001 0008+00 1/1 0/0 0/0 .data            l_evtNameList */
SECTION_DATA static void* l_evtNameList[2] = {
    (void*)NULL,
    (void*)(((char*)&d_a_obj_gra2__stringBase0) + 0x27),
};

/* 80C10054-80C1005C 0001EC 0008+00 0/1 0/0 0/0 .data            l_entryJntNoList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_entryJntNoList[8] = {
    0x00, 0x05, 0x00, 0x06, 0x00, 0x07, 0xFF, 0xFF,
};
#pragma pop

/* 80C1005C-80C10068 -00001 000C+00 1/1 0/0 0/0 .data            @4591 */
SECTION_DATA static void* lit_4591[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daObj_GrA_cFPv,
};

/* 80C10068-80C100C0 -00001 0058+00 1/1 0/0 0/0 .data            @4762 */
SECTION_DATA static void* lit_4762[22] = {
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xD4),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xD4),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xD4),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0x98),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xA0),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xA0),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xA8),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xD4),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xB0),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xD4),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xB8),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xB8),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xB8),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xB8),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xA8),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xC0),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xC8),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xC8),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xD4),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xD4),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xA8),
    (void*)(((char*)setBaseAnm__11daObj_GrA_cFif) + 0xD4),
};

/* 80C100C0-80C100F4 -00001 0034+00 1/1 0/0 0/0 .data            @4792 */
SECTION_DATA static void* lit_4792[13] = {
    (void*)(((char*)setFaceAnm__11daObj_GrA_cFibf) + 0xB0),
    (void*)(((char*)setFaceAnm__11daObj_GrA_cFibf) + 0xB0),
    (void*)(((char*)setFaceAnm__11daObj_GrA_cFibf) + 0xB0),
    (void*)(((char*)setFaceAnm__11daObj_GrA_cFibf) + 0xB0),
    (void*)(((char*)setFaceAnm__11daObj_GrA_cFibf) + 0xC4),
    (void*)(((char*)setFaceAnm__11daObj_GrA_cFibf) + 0xC4),
    (void*)(((char*)setFaceAnm__11daObj_GrA_cFibf) + 0xC4),
    (void*)(((char*)setFaceAnm__11daObj_GrA_cFibf) + 0xD4),
    (void*)(((char*)setFaceAnm__11daObj_GrA_cFibf) + 0xE4),
    (void*)(((char*)setFaceAnm__11daObj_GrA_cFibf) + 0xF4),
    (void*)(((char*)setFaceAnm__11daObj_GrA_cFibf) + 0x104),
    (void*)(((char*)setFaceAnm__11daObj_GrA_cFibf) + 0x114),
    (void*)(((char*)setFaceAnm__11daObj_GrA_cFibf) + 0x124),
};

/* 80C100F4-80C10100 -00001 000C+00 0/1 0/0 0/0 .data            @4873 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4873[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)standWait__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C10100-80C1010C -00001 000C+00 0/1 0/0 0/0 .data            @4875 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4875[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C1010C-80C10118 -00001 000C+00 0/1 0/0 0/0 .data            @4877 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4877[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rollReturn__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C10118-80C10124 -00001 000C+00 0/1 0/0 0/0 .data            @4879 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4879[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)toStone__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C10124-80C10130 -00001 000C+00 0/1 0/0 0/0 .data            @4891 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4891[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)standWaitJump__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C10130-80C1013C -00001 000C+00 1/1 0/0 0/0 .data            @4933 */
SECTION_DATA static void* lit_4933[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daObj_GrA_cFPv,
};

/* 80C1013C-80C10148 -00001 000C+00 1/1 0/0 0/0 .data            @4941 */
SECTION_DATA static void* lit_4941[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daObj_GrA_cFPv,
};

/* 80C10148-80C10154 -00001 000C+00 1/1 0/0 0/0 .data            @5310 */
SECTION_DATA static void* lit_5310[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)step__11daObj_GrA_cFPv,
};

/* 80C10154-80C10160 -00001 000C+00 1/1 0/0 0/0 .data            @5987 */
SECTION_DATA static void* lit_5987[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rollReturn__11daObj_GrA_cFPv,
};

/* 80C10160-80C1016C -00001 000C+00 1/1 0/0 0/0 .data            @5992 */
SECTION_DATA static void* lit_5992[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)defence__11daObj_GrA_cFPv,
};

/* 80C1016C-80C10178 -00001 000C+00 0/1 0/0 0/0 .data            @6065 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6065[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)standWait__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C10178-80C10184 -00001 000C+00 0/1 0/0 0/0 .data            @6068 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6068[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)standWaitJump__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C10184-80C10190 -00001 000C+00 0/1 0/0 0/0 .data            @6071 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6071[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)standRoll__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C10190-80C1019C -00001 000C+00 0/1 0/0 0/0 .data            @6074 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6074[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitDemo__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C1019C-80C101A8 -00001 000C+00 0/1 0/0 0/0 .data            @6107 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6107[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rollReturn__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C101A8-80C101B4 -00001 000C+00 0/1 0/0 0/0 .data            @6110 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6110[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C101B4-80C101C0 -00001 000C+00 1/1 0/0 0/0 .data            @6363 */
SECTION_DATA static void* lit_6363[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__11daObj_GrA_cFPv,
};

/* 80C101C0-80C101CC -00001 000C+00 1/1 0/0 0/0 .data            @6502 */
SECTION_DATA static void* lit_6502[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)step__11daObj_GrA_cFPv,
};

/* 80C101CC-80C101D8 -00001 000C+00 1/1 0/0 0/0 .data            @6507 */
SECTION_DATA static void* lit_6507[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daObj_GrA_cFPv,
};

/* 80C101D8-80C101E4 -00001 000C+00 1/1 0/0 0/0 .data            @6661 */
SECTION_DATA static void* lit_6661[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__11daObj_GrA_cFPv,
};

/* 80C101E4-80C101F0 -00001 000C+00 1/1 0/0 0/0 .data            @6763 */
SECTION_DATA static void* lit_6763[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daObj_GrA_cFPv,
};

/* 80C101F0-80C101FC -00001 000C+00 0/1 0/0 0/0 .data            @6888 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6888[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C101FC-80C10208 -00001 000C+00 0/1 0/0 0/0 .data            @6894 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6894[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C10208-80C10214 -00001 000C+00 0/1 0/0 0/0 .data            @6910 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6910[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C10214-80C10220 -00001 000C+00 0/1 0/0 0/0 .data            @6921 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6921[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C10220-80C1022C -00001 000C+00 0/1 0/0 0/0 .data            @7031 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7031[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)toStone__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C1022C-80C10238 -00001 000C+00 0/1 0/0 0/0 .data            @7045 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7045[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)toStone__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C10238-80C10244 -00001 000C+00 0/1 0/0 0/0 .data            @7055 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7055[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)toStone__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C10244-80C10250 -00001 000C+00 1/1 0/0 0/0 .data            @7324 */
SECTION_DATA static void* lit_7324[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daObj_GrA_cFPv,
};

/* 80C10250-80C1025C -00001 000C+00 0/1 0/0 0/0 .data            @7471 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7471[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rollDemo__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C1025C-80C10268 -00001 000C+00 0/1 0/0 0/0 .data            @7481 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7481[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rollDemo__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C10268-80C10274 -00001 000C+00 0/1 0/0 0/0 .data            @7489 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7489[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rollDemo__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C10274-80C10280 -00001 000C+00 1/1 0/0 0/0 .data            @7645 */
SECTION_DATA static void* lit_7645[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rollAttack__11daObj_GrA_cFPv,
};

/* 80C10280-80C1028C -00001 000C+00 1/1 0/0 0/0 .data            @7653 */
SECTION_DATA static void* lit_7653[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rollAttack__11daObj_GrA_cFPv,
};

/* 80C1028C-80C10298 -00001 000C+00 1/1 0/0 0/0 .data            @7744 */
SECTION_DATA static void* lit_7744[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rollAttacked__11daObj_GrA_cFPv,
};

/* 80C10298-80C102A4 -00001 000C+00 1/1 0/0 0/0 .data            @7836 */
SECTION_DATA static void* lit_7836[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rollAttacked__11daObj_GrA_cFPv,
};

/* 80C102A4-80C102B0 -00001 000C+00 0/0 0/0 0/0 .data            @8025 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8025[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C102B0-80C102BC -00001 000C+00 0/0 0/0 0/0 .data            @8037 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8037[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C102BC-80C102C8 -00001 000C+00 0/0 0/0 0/0 .data            @8042 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_8042[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rollAttack__11daObj_GrA_cFPv,
};
#pragma pop

/* 80C102C8-80C102E4 -00001 001C+00 1/1 0/0 0/0 .data            @8138 */
SECTION_DATA static void* lit_8138[7] = {
    (void*)(((char*)rollAttacked__11daObj_GrA_cFPv) + 0xAC),
    (void*)(((char*)rollAttacked__11daObj_GrA_cFPv) + 0xD8),
    (void*)(((char*)rollAttacked__11daObj_GrA_cFPv) + 0x25C),
    (void*)(((char*)rollAttacked__11daObj_GrA_cFPv) + 0x30C),
    (void*)(((char*)rollAttacked__11daObj_GrA_cFPv) + 0x338),
    (void*)(((char*)rollAttacked__11daObj_GrA_cFPv) + 0x38C),
    (void*)(((char*)rollAttacked__11daObj_GrA_cFPv) + 0x464),
};

/* 80C102E4-80C10300 -00001 001C+00 1/1 0/0 0/0 .data            @8707 */
SECTION_DATA static void* lit_8707[7] = {
    (void*)(((char*)demo_camera__11daObj_GrA_cFv) + 0xDFC),
    (void*)(((char*)demo_camera__11daObj_GrA_cFv) + 0x6C),
    (void*)(((char*)demo_camera__11daObj_GrA_cFv) + 0x150),
    (void*)(((char*)demo_camera__11daObj_GrA_cFv) + 0x2C0),
    (void*)(((char*)demo_camera__11daObj_GrA_cFv) + 0x430),
    (void*)(((char*)demo_camera__11daObj_GrA_cFv) + 0x740),
    (void*)(((char*)demo_camera__11daObj_GrA_cFv) + 0xA84),
};

/* 80C10300-80C10320 -00001 0020+00 1/1 0/0 0/0 .data            @8960 */
SECTION_DATA static void* lit_8960[8] = {
    (void*)(((char*)rollAttackedDemo__11daObj_GrA_cFv) + 0x9A0),
    (void*)(((char*)rollAttackedDemo__11daObj_GrA_cFv) + 0x6C),
    (void*)(((char*)rollAttackedDemo__11daObj_GrA_cFv) + 0x144),
    (void*)(((char*)rollAttackedDemo__11daObj_GrA_cFv) + 0x9A0),
    (void*)(((char*)rollAttackedDemo__11daObj_GrA_cFv) + 0x284),
    (void*)(((char*)rollAttackedDemo__11daObj_GrA_cFv) + 0x438),
    (void*)(((char*)rollAttackedDemo__11daObj_GrA_cFv) + 0x660),
    (void*)(((char*)rollAttackedDemo__11daObj_GrA_cFv) + 0x924),
};

/* 80C10320-80C1032C -00001 000C+00 1/1 0/0 0/0 .data            @8967 */
SECTION_DATA static void* lit_8967[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)thrown__11daObj_GrA_cFPv,
};

/* 80C1032C-80C10338 -00001 000C+00 1/1 0/0 0/0 .data            @9077 */
SECTION_DATA static void* lit_9077[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)thrown__11daObj_GrA_cFPv,
};

/* 80C10338-80C10344 -00001 000C+00 1/1 0/0 0/0 .data            @9082 */
SECTION_DATA static void* lit_9082[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)thrown__11daObj_GrA_cFPv,
};

/* 80C10344-80C10350 -00001 000C+00 1/1 0/0 0/0 .data            @9348 */
SECTION_DATA static void* lit_9348[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rollAttacked__11daObj_GrA_cFPv,
};

/* 80C10350-80C1035C -00001 000C+00 1/1 0/0 0/0 .data            @9351 */
SECTION_DATA static void* lit_9351[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rollAttack__11daObj_GrA_cFPv,
};

/* 80C1035C-80C10368 -00001 000C+00 1/1 0/0 0/0 .data            @9393 */
SECTION_DATA static void* lit_9393[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rollEscape__11daObj_GrA_cFPv,
};

/* 80C10368-80C10374 -00001 000C+00 1/1 0/0 0/0 .data            @9399 */
SECTION_DATA static void* lit_9399[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rollEscape__11daObj_GrA_cFPv,
};

/* 80C10374-80C10380 -00001 000C+00 1/1 0/0 0/0 .data            @9472 */
SECTION_DATA static void* lit_9472[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)toStone__11daObj_GrA_cFPv,
};

/* 80C10380-80C1038C -00001 000C+00 1/1 0/0 0/0 .data            @9541 */
SECTION_DATA static void* lit_9541[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)startDemo__11daObj_GrA_cFPv,
};

/* 80C1038C-80C10398 -00001 000C+00 1/1 0/0 0/0 .data            @9635 */
SECTION_DATA static void* lit_9635[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)soldierDemo__11daObj_GrA_cFPv,
};

/* 80C10398-80C103A4 -00001 000C+00 1/1 0/0 0/0 .data            @9691 */
SECTION_DATA static void* lit_9691[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daObj_GrA_cFPv,
};

/* 80C103A4-80C103D4 -00001 0030+00 1/1 0/0 0/0 .data            @10259 */
SECTION_DATA static void* lit_10259[12] = {
    (void*)(((char*)startDemo__11daObj_GrA_cFPv) + 0x1B68),
    (void*)(((char*)startDemo__11daObj_GrA_cFPv) + 0xE8),
    (void*)(((char*)startDemo__11daObj_GrA_cFPv) + 0x270),
    (void*)(((char*)startDemo__11daObj_GrA_cFPv) + 0x444),
    (void*)(((char*)startDemo__11daObj_GrA_cFPv) + 0x7C8),
    (void*)(((char*)startDemo__11daObj_GrA_cFPv) + 0xBCC),
    (void*)(((char*)startDemo__11daObj_GrA_cFPv) + 0xED8),
    (void*)(((char*)startDemo__11daObj_GrA_cFPv) + 0x11BC),
    (void*)(((char*)startDemo__11daObj_GrA_cFPv) + 0x1238),
    (void*)(((char*)startDemo__11daObj_GrA_cFPv) + 0x12B8),
    (void*)(((char*)startDemo__11daObj_GrA_cFPv) + 0x1644),
    (void*)(((char*)startDemo__11daObj_GrA_cFPv) + 0x1840),
};

/* 80C103D4-80C103E0 -00001 000C+00 0/1 0/0 0/0 .data            @10566 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10566[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base000__11daObj_GrA_cFi,
};
#pragma pop

/* 80C103E0-80C103EC -00001 000C+00 0/1 0/0 0/0 .data            @10567 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10567[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base001__11daObj_GrA_cFi,
};
#pragma pop

/* 80C103EC-80C103F8 -00001 000C+00 0/1 0/0 0/0 .data            @10568 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10568[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base003__11daObj_GrA_cFi,
};
#pragma pop

/* 80C103F8-80C10404 -00001 000C+00 0/1 0/0 0/0 .data            @10569 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10569[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base004__11daObj_GrA_cFi,
};
#pragma pop

/* 80C10404-80C10410 -00001 000C+00 0/1 0/0 0/0 .data            @10570 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10570[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base005__11daObj_GrA_cFi,
};
#pragma pop

/* 80C10410-80C1041C -00001 000C+00 0/1 0/0 0/0 .data            @10571 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10571[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base006__11daObj_GrA_cFi,
};
#pragma pop

/* 80C1041C-80C10428 -00001 000C+00 0/1 0/0 0/0 .data            @10572 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10572[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base007__11daObj_GrA_cFi,
};
#pragma pop

/* 80C10428-80C10434 -00001 000C+00 0/1 0/0 0/0 .data            @10573 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10573[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base008__11daObj_GrA_cFi,
};
#pragma pop

/* 80C10434-80C10440 -00001 000C+00 0/1 0/0 0/0 .data            @10574 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10574[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base009__11daObj_GrA_cFi,
};
#pragma pop

/* 80C10440-80C1044C -00001 000C+00 0/1 0/0 0/0 .data            @10575 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10575[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base010__11daObj_GrA_cFi,
};
#pragma pop

/* 80C1044C-80C10458 -00001 000C+00 0/1 0/0 0/0 .data            @10576 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10576[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base013__11daObj_GrA_cFi,
};
#pragma pop

/* 80C10458-80C10464 -00001 000C+00 0/1 0/0 0/0 .data            @10577 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10577[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base016__11daObj_GrA_cFi,
};
#pragma pop

/* 80C10464-80C10470 -00001 000C+00 0/1 0/0 0/0 .data            @10578 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10578[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base017__11daObj_GrA_cFi,
};
#pragma pop

/* 80C10470-80C1047C -00001 000C+00 0/1 0/0 0/0 .data            @10579 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10579[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base018__11daObj_GrA_cFi,
};
#pragma pop

/* 80C1047C-80C10488 -00001 000C+00 0/1 0/0 0/0 .data            @10580 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10580[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base019__11daObj_GrA_cFi,
};
#pragma pop

/* 80C10488-80C10494 -00001 000C+00 0/1 0/0 0/0 .data            @10581 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10581[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base020__11daObj_GrA_cFi,
};
#pragma pop

/* 80C10494-80C104A0 -00001 000C+00 0/1 0/0 0/0 .data            @10582 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10582[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base021__11daObj_GrA_cFi,
};
#pragma pop

/* 80C104A0-80C104AC -00001 000C+00 0/1 0/0 0/0 .data            @10583 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10583[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base022__11daObj_GrA_cFi,
};
#pragma pop

/* 80C104AC-80C104B8 -00001 000C+00 0/1 0/0 0/0 .data            @10584 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10584[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base023__11daObj_GrA_cFi,
};
#pragma pop

/* 80C104B8-80C104C4 -00001 000C+00 0/1 0/0 0/0 .data            @10585 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10585[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base024__11daObj_GrA_cFi,
};
#pragma pop

/* 80C104C4-80C104D0 -00001 000C+00 0/1 0/0 0/0 .data            @10586 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10586[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base025__11daObj_GrA_cFi,
};
#pragma pop

/* 80C104D0-80C104DC -00001 000C+00 0/1 0/0 0/0 .data            @10587 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10587[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)base026__11daObj_GrA_cFi,
};
#pragma pop

/* 80C104DC-80C105E4 000674 0108+00 1/2 0/0 0/0 .data            mBaseMotionList__11daObj_GrA_c */
SECTION_DATA u8 daObj_GrA_c::mBaseMotionList[264] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C105E4-80C105F0 -00001 000C+00 0/1 0/0 0/0 .data            @10849 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10849[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)face000__11daObj_GrA_cFi,
};
#pragma pop

/* 80C105F0-80C105FC -00001 000C+00 0/1 0/0 0/0 .data            @10850 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10850[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)face003__11daObj_GrA_cFi,
};
#pragma pop

/* 80C105FC-80C10608 -00001 000C+00 0/1 0/0 0/0 .data            @10851 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10851[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)face004__11daObj_GrA_cFi,
};
#pragma pop

/* 80C10608-80C10614 -00001 000C+00 0/1 0/0 0/0 .data            @10852 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10852[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)face005__11daObj_GrA_cFi,
};
#pragma pop

/* 80C10614-80C10620 -00001 000C+00 0/1 0/0 0/0 .data            @10853 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10853[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)face006__11daObj_GrA_cFi,
};
#pragma pop

/* 80C10620-80C1062C -00001 000C+00 0/1 0/0 0/0 .data            @10854 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10854[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)face007__11daObj_GrA_cFi,
};
#pragma pop

/* 80C1062C-80C10638 -00001 000C+00 0/1 0/0 0/0 .data            @10855 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10855[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)face008__11daObj_GrA_cFi,
};
#pragma pop

/* 80C10638-80C10644 -00001 000C+00 0/1 0/0 0/0 .data            @10856 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10856[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)face009__11daObj_GrA_cFi,
};
#pragma pop

/* 80C10644-80C10650 -00001 000C+00 0/1 0/0 0/0 .data            @10857 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10857[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)face010__11daObj_GrA_cFi,
};
#pragma pop

/* 80C10650-80C1065C -00001 000C+00 0/1 0/0 0/0 .data            @10858 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10858[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)face011__11daObj_GrA_cFi,
};
#pragma pop

/* 80C1065C-80C10668 -00001 000C+00 0/1 0/0 0/0 .data            @10859 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10859[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)face012__11daObj_GrA_cFi,
};
#pragma pop

/* 80C10668-80C10674 -00001 000C+00 0/1 0/0 0/0 .data            @10860 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10860[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)face016__11daObj_GrA_cFi,
};
#pragma pop

/* 80C10674-80C10680 -00001 000C+00 0/1 0/0 0/0 .data            @10861 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10861[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)face017__11daObj_GrA_cFi,
};
#pragma pop

/* 80C10680-80C1068C -00001 000C+00 0/1 0/0 0/0 .data            @10862 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_10862[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)face999__11daObj_GrA_cFi,
};
#pragma pop

/* 80C1068C-80C10734 000824 00A8+00 1/2 0/0 0/0 .data            mFaceMotionList__11daObj_GrA_c */
SECTION_DATA u8 daObj_GrA_c::mFaceMotionList[168] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C10734-80C10754 -00001 0020+00 1/0 0/0 0/0 .data            daObj_GrA_MethodTable */
static actor_method_class daObj_GrA_MethodTable = {
    (process_method_func)daObj_GrA_Create__FPv,
    (process_method_func)daObj_GrA_Delete__FPv,
    (process_method_func)daObj_GrA_Execute__FPv,
    (process_method_func)daObj_GrA_IsDelete__FPv,
    (process_method_func)daObj_GrA_Draw__FPv,
};

/* 80C10754-80C10784 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_GRA */
extern actor_process_profile_definition g_profile_OBJ_GRA = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_OBJ_GRA,           // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObj_GrA_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  19,                     // mPriority
  &daObj_GrA_MethodTable, // sub_method
  0x00040100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C10784-80C107E8 00091C 0064+00 2/2 0/0 0/0 .data            __vt__11daObj_GrA_c */
SECTION_DATA extern void* __vt__11daObj_GrA_c[25] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daObj_GrA_cFv,
    (void*)execute__11daBaseNpc_cFv,
    (void*)draw__11daBaseNpc_cFf,
    (void*)getResName__11daObj_GrA_cFv,
    (void*)attnSttsOn__11daBaseNpc_cFii,
    (void*)setParam__11daObj_GrA_cFv,
    (void*)mainProc__11daObj_GrA_cFv,
    (void*)btkCtrl__11daBaseNpc_cFv,
    (void*)allAnmPlay__11daBaseNpc_cFv,
    (void*)adjustShapeAngle__11daObj_GrA_cFv,
    (void*)setMtx__11daObj_GrA_cFi,
    (void*)setCollisions__11daObj_GrA_cFv,
    (void*)setAttnPos__11daObj_GrA_cFv,
    (void*)drawOtherMdls__11daObj_GrA_cFv,
    (void*)dbgDraw__11daObj_GrA_cFv,
    (void*)CreateHeap__11daObj_GrA_cFv,
    (void*)Create__23daBaseNpc_moveBgActor_cFv,
    (void*)Execute__11daObj_GrA_cFPPA3_A4_f,
    (void*)Draw__11daObj_GrA_cFv,
    (void*)Delete__11daObj_GrA_cFv,
    (void*)IsDelete__23daBaseNpc_moveBgActor_cFv,
    (void*)ToFore__23daBaseNpc_moveBgActor_cFv,
    (void*)ToBack__23daBaseNpc_moveBgActor_cFv,
};

/* 80C107E8-80C1084C 000980 0064+00 2/2 0/0 0/0 .data            __vt__23daBaseNpc_moveBgActor_c */
SECTION_DATA extern void* __vt__23daBaseNpc_moveBgActor_c[25] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__23daBaseNpc_moveBgActor_cFv,
    (void*)execute__11daBaseNpc_cFv,
    (void*)draw__11daBaseNpc_cFf,
    (void*)getResName__11daBaseNpc_cFv,
    (void*)attnSttsOn__11daBaseNpc_cFii,
    (void*)setParam__11daBaseNpc_cFv,
    (void*)mainProc__11daBaseNpc_cFv,
    (void*)btkCtrl__11daBaseNpc_cFv,
    (void*)allAnmPlay__11daBaseNpc_cFv,
    (void*)adjustShapeAngle__11daBaseNpc_cFv,
    (void*)setMtx__11daBaseNpc_cFi,
    (void*)setCollisions__11daBaseNpc_cFv,
    (void*)setAttnPos__11daBaseNpc_cFv,
    (void*)drawOtherMdls__11daBaseNpc_cFv,
    (void*)dbgDraw__11daBaseNpc_cFv,
    (void*)CreateHeap__23daBaseNpc_moveBgActor_cFv,
    (void*)Create__23daBaseNpc_moveBgActor_cFv,
    (void*)Execute__23daBaseNpc_moveBgActor_cFPPA3_A4_f,
    (void*)Draw__23daBaseNpc_moveBgActor_cFv,
    (void*)Delete__23daBaseNpc_moveBgActor_cFv,
    (void*)IsDelete__23daBaseNpc_moveBgActor_cFv,
    (void*)ToFore__23daBaseNpc_moveBgActor_cFv,
    (void*)ToBack__23daBaseNpc_moveBgActor_cFv,
};

/* 80C1084C-80C10858 0009E4 000C+00 2/2 0/0 0/0 .data            __vt__18daBaseNpc_acMngr_c */
SECTION_DATA extern void* __vt__18daBaseNpc_acMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daBaseNpc_acMngr_cFv,
};

/* 80C10858-80C10864 0009F0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80C10864-80C10870 0009FC 000C+00 2/2 0/0 0/0 .data            __vt__16daBaseNpc_path_c */
SECTION_DATA extern void* __vt__16daBaseNpc_path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daBaseNpc_path_cFv,
};

/* 80C10870-80C1087C 000A08 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C1087C-80C10888 000A14 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BFFF70-80C0011C 000150 01AC+00 1/1 0/0 0/0 .text            __ct__11daObj_GrA_cFv */
daObj_GrA_c::daObj_GrA_c() {
    // NONMATCHING
}

/* 80C0011C-80C003CC 0002FC 02B0+00 1/0 0/0 0/0 .text            __dt__11daObj_GrA_cFv */
daObj_GrA_c::~daObj_GrA_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C0FE14-80C0FE14 000398 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C0FE46 = "grA_stone_col.dzb";
#pragma pop

/* 80C003CC-80C00614 0005AC 0248+00 1/1 0/0 0/0 .text            create__11daObj_GrA_cFv */
void daObj_GrA_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C0FA7C-80C0FB3C 000000 00C0+00 54/54 0/0 0/0 .rodata          m__17daObj_GrA_Param_c */
SECTION_RODATA u8 const daObj_GrA_Param_c::m[192] = {
    0x42, 0xAA, 0x00, 0x00, 0xC0, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x41, 0x40, 0x00, 0x00,
    0x00, 0x01, 0x00, 0x00, 0x43, 0x8C, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
    0xC1, 0xA0, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
    0xC2, 0x20, 0x00, 0x00, 0x3E, 0xCC, 0xCC, 0xCD, 0x42, 0xAA, 0x00, 0x00, 0x42, 0xAA, 0x00, 0x00,
    0x42, 0x48, 0x00, 0x00, 0x00, 0x03, 0x00, 0x10, 0x00, 0x3C, 0x00, 0x04, 0x00, 0x1E, 0x00, 0x00,
    0x43, 0x0C, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00,
    0x41, 0x70, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x44, 0x7A, 0x00, 0x00, 0x45, 0x3B, 0x80, 0x00,
    0x41, 0x70, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00,
    0x41, 0x20, 0x00, 0x00, 0x43, 0x66, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x41, 0xC8, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x0A,
    0x00, 0x1E, 0x00, 0x28, 0x00, 0x14, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C0FA7C, &daObj_GrA_Param_c::m);

/* 80C0FB3C-80C0FB8C 0000C0 0050+00 0/0 0/0 0/0 .rodata          l_bgcParam */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_bgcParam[80] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xBF, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0xBF, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0xBF, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00,
    0xBF, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C0FB3C, &l_bgcParam);
#pragma pop

/* 80C0FB8C-80C0FB94 000110 0008+00 0/0 0/0 0/0 .rodata          l_dirToAngleTBL */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_dirToAngleTBL[8] = {
    0x00, 0x00, 0x40, 0x00, 0x80, 0x00, 0xC0, 0x00,
};
COMPILER_STRIP_GATE(0x80C0FB8C, &l_dirToAngleTBL);
#pragma pop

/* 80C0FB94-80C0FB98 000118 0004+00 4/18 0/0 0/0 .rodata          @4332 */
SECTION_RODATA static f32 const lit_4332 = 1.0f;
COMPILER_STRIP_GATE(0x80C0FB94, &lit_4332);

/* 80C0FB98-80C0FB9C 00011C 0004+00 13/45 0/0 0/0 .rodata          @4333 */
SECTION_RODATA static u8 const lit_4333[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C0FB98, &lit_4333);

/* 80C00614-80C00790 0007F4 017C+00 1/0 0/0 0/0 .text            CreateHeap__11daObj_GrA_cFv */
void daObj_GrA_c::CreateHeap() {
    // NONMATCHING
}

/* 80C00790-80C00804 000970 0074+00 1/0 0/0 0/0 .text            Delete__11daObj_GrA_cFv */
void daObj_GrA_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C0FB9C-80C0FBA0 000120 0004+00 2/2 0/0 0/0 .rodata          @4399 */
SECTION_RODATA static f32 const lit_4399 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80C0FB9C, &lit_4399);

/* 80C00804-80C00A44 0009E4 0240+00 1/0 0/0 0/0 .text            Execute__11daObj_GrA_cFPPA3_A4_f */
void daObj_GrA_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C0FBA0-80C0FBA4 000124 0004+00 1/2 0/0 0/0 .rodata          @4409 */
SECTION_RODATA static f32 const lit_4409 = 800.0f;
COMPILER_STRIP_GATE(0x80C0FBA0, &lit_4409);

/* 80C0FBA4-80C0FBAC 000128 0004+04 1/1 0/0 0/0 .rodata          @4410 */
SECTION_RODATA static f32 const lit_4410[1 + 1 /* padding */] = {
    900.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C0FBA4, &lit_4410);

/* 80C00A44-80C00ACC 000C24 0088+00 1/0 0/0 0/0 .text            Draw__11daObj_GrA_cFv */
void daObj_GrA_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C0FBAC-80C0FBB4 000130 0008+00 5/14 0/0 0/0 .rodata          @4501 */
SECTION_RODATA static u8 const lit_4501[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C0FBAC, &lit_4501);

/* 80C00ACC-80C00D5C 000CAC 0290+00 1/1 0/0 0/0 .text
 * jointCtrl__11daObj_GrA_cFP8J3DJointP8J3DModel                */
void daObj_GrA_c::jointCtrl(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 80C00D5C-80C00D74 000F3C 0018+00 1/0 0/0 0/0 .text            getResName__11daObj_GrA_cFv */
void daObj_GrA_c::getResName() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C0FE14-80C0FE14 000398 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C0FE58 = "Obj_grA";
#pragma pop

/* 80C00D74-80C00DF8 000F54 0084+00 1/1 0/0 0/0 .text            getMode__11daObj_GrA_cFv */
void daObj_GrA_c::getMode() {
    // NONMATCHING
}

/* 80C00DF8-80C00E04 000FD8 000C+00 1/1 0/0 0/0 .text            getPathNo__11daObj_GrA_cFv */
void daObj_GrA_c::getPathNo() {
    // NONMATCHING
}

/* 80C00E04-80C00E10 000FE4 000C+00 4/4 0/0 0/0 .text            getTagNo__11daObj_GrA_cFv */
void daObj_GrA_c::getTagNo() {
    // NONMATCHING
}

/* 80C00E10-80C00E1C 000FF0 000C+00 1/1 0/0 0/0 .text            getJumpType__11daObj_GrA_cFv */
void daObj_GrA_c::getJumpType() {
    // NONMATCHING
}

/* 80C00E1C-80C00EFC 000FFC 00E0+00 1/1 0/0 0/0 .text            isDelete__11daObj_GrA_cFv */
void daObj_GrA_c::isDelete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C0FBB4-80C0FBB8 000138 0004+00 8/19 0/0 0/0 .rodata          @4618 */
SECTION_RODATA static f32 const lit_4618 = -1.0f;
COMPILER_STRIP_GATE(0x80C0FBB4, &lit_4618);

/* 80C00EFC-80C010D4 0010DC 01D8+00 1/1 0/0 0/0 .text            restart__11daObj_GrA_cFv */
void daObj_GrA_c::restart() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C108A0-80C108A4 000008 0001+03 4/4 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80C108A4-80C108A8 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80C108A8-80C108AC 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80C108AC-80C108B0 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80C108B0-80C108B4 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80C108B4-80C108B8 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80C108B8-80C108BC 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80C108BC-80C108C0 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80C108C0-80C108C4 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80C108C4-80C108C8 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80C108C8-80C108CC 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80C108CC-80C108D0 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80C108D0-80C108D4 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80C108D4-80C108D8 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80C108D8-80C108DC 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80C108DC-80C108E0 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80C108E0-80C108EC 000048 000C+00 0/1 0/0 0/0 .bss             @4026 */
#pragma push
#pragma force_active on
static u8 lit_4026[12];
#pragma pop

/* 80C108EC-80C108F8 000054 000C+00 0/2 0/0 0/0 .bss             l_centerOfst */
#pragma push
#pragma force_active on
static u8 l_centerOfst[12];
#pragma pop

/* 80C108F8-80C10904 000060 000C+00 0/1 0/0 0/0 .bss             @4027 */
#pragma push
#pragma force_active on
static u8 lit_4027[12];
#pragma pop

/* 80C10904-80C10908 00006C 0004+00 1/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80C010D4-80C013B0 0012B4 02DC+00 1/1 0/0 0/0 .text            init__11daObj_GrA_cFv */
void daObj_GrA_c::init() {
    // NONMATCHING
}

/* 80C013B0-80C014F4 001590 0144+00 24/23 0/0 0/0 .text            setBaseAnm__11daObj_GrA_cFif */
void daObj_GrA_c::setBaseAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80C014F4-80C01698 0016D4 01A4+00 15/14 0/0 0/0 .text            setFaceAnm__11daObj_GrA_cFibf */
void daObj_GrA_c::setFaceAnm(int param_0, bool param_1, f32 param_2) {
    // NONMATCHING
}

/* 80C01698-80C0178C 001878 00F4+00 2/2 0/0 0/0 .text            setFaceBtp__11daObj_GrA_cFi */
void daObj_GrA_c::setFaceBtp(int param_0) {
    // NONMATCHING
}

/* 80C0178C-80C017AC 00196C 0020+00 22/22 0/0 0/0 .text            setBaseMotion__11daObj_GrA_cFif
 */
void daObj_GrA_c::setBaseMotion(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80C017AC-80C017F0 00198C 0044+00 25/25 0/0 0/0 .text            setFaceMotion__11daObj_GrA_cFif
 */
void daObj_GrA_c::setFaceMotion(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80C017F0-80C018C0 0019D0 00D0+00 7/7 0/0 0/0 .text            calcMotion__11daObj_GrA_cFv */
void daObj_GrA_c::calcMotion() {
    // NONMATCHING
}

/* 80C018C0-80C018F4 001AA0 0034+00 4/4 0/0 0/0 .text
 * checkProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i         */
void daObj_GrA_c::checkProcess(int (daObj_GrA_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80C018F4-80C019A4 001AD4 00B0+00 22/22 0/0 0/0 .text
 * setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i           */
void daObj_GrA_c::setProcess(int (daObj_GrA_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80C019A4-80C019B8 001B84 0014+00 2/2 0/0 0/0 .text            getDistTableIdx__Fii */
static void getDistTableIdx(int param_0, int param_1) {
    // NONMATCHING
}

/* 80C019B8-80C01C18 001B98 0260+00 1/0 0/0 0/0 .text            setParam__11daObj_GrA_cFv */
void daObj_GrA_c::setParam() {
    // NONMATCHING
}

/* 80C01C18-80C01D7C 001DF8 0164+00 1/1 0/0 0/0 .text            checkEvent__11daObj_GrA_cFv */
void daObj_GrA_c::checkEvent() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C0FBB8-80C0FBBC 00013C 0004+00 0/1 0/0 0/0 .rodata          @5022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5022 = -160.0f;
COMPILER_STRIP_GATE(0x80C0FBB8, &lit_5022);
#pragma pop

/* 80C0FBBC-80C0FBC0 000140 0004+00 0/1 0/0 0/0 .rodata          @5023 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5023 = -100.0f;
COMPILER_STRIP_GATE(0x80C0FBBC, &lit_5023);
#pragma pop

/* 80C0FBC0-80C0FBC4 000144 0004+00 0/1 0/0 0/0 .rodata          @5024 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5024 = 160.0f;
COMPILER_STRIP_GATE(0x80C0FBC0, &lit_5024);
#pragma pop

/* 80C0FBC4-80C0FBCC 000148 0004+04 0/1 0/0 0/0 .rodata          @5025 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5025[1 + 1 /* padding */] = {
    240.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C0FBC4, &lit_5025);
#pragma pop

/* 80C0FBCC-80C0FBD4 000150 0008+00 0/13 0/0 0/0 .rodata          @5026 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5026[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C0FBCC, &lit_5026);
#pragma pop

/* 80C0FBD4-80C0FBDC 000158 0008+00 0/13 0/0 0/0 .rodata          @5027 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5027[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C0FBD4, &lit_5027);
#pragma pop

/* 80C0FBDC-80C0FBE4 000160 0008+00 0/13 0/0 0/0 .rodata          @5028 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5028[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C0FBDC, &lit_5028);
#pragma pop

/* 80C01D7C-80C01FE4 001F5C 0268+00 1/0 0/0 0/0 .text            mainProc__11daObj_GrA_cFv */
void daObj_GrA_c::mainProc() {
    // NONMATCHING
}

/* 80C01FE4-80C01FE8 0021C4 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__11daObj_GrA_cFv
 */
void daObj_GrA_c::adjustShapeAngle() {
    /* empty function */
}

/* ############################################################################################## */
/* 80C0FBE4-80C0FBE8 000168 0004+00 0/1 0/0 0/0 .rodata          @5241 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5241 = 0x3F93C86D;
COMPILER_STRIP_GATE(0x80C0FBE4, &lit_5241);
#pragma pop

/* 80C0FBE8-80C0FBEC 00016C 0004+00 0/1 0/0 0/0 .rodata          @5242 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5242 = 0xBD57EFE1;
COMPILER_STRIP_GATE(0x80C0FBE8, &lit_5242);
#pragma pop

/* 80C0FBEC-80C0FBF0 000170 0004+00 0/1 0/0 0/0 .rodata          @5243 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5243 = 0x3F826D0D;
COMPILER_STRIP_GATE(0x80C0FBEC, &lit_5243);
#pragma pop

/* 80C0FBF0-80C0FBF4 000174 0004+00 0/1 0/0 0/0 .rodata          @5244 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5244 = 0x3F38E2A0;
COMPILER_STRIP_GATE(0x80C0FBF0, &lit_5244);
#pragma pop

/* 80C0FBF4-80C0FBF8 000178 0004+00 0/1 0/0 0/0 .rodata          @5245 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5245 = 0xBE0F6406;
COMPILER_STRIP_GATE(0x80C0FBF4, &lit_5245);
#pragma pop

/* 80C0FBF8-80C0FBFC 00017C 0004+00 0/1 0/0 0/0 .rodata          @5246 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5246 = 0x3FAAA68F;
COMPILER_STRIP_GATE(0x80C0FBF8, &lit_5246);
#pragma pop

/* 80C0FBFC-80C0FC00 000180 0004+00 0/1 0/0 0/0 .rodata          @5247 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5247 = 0xBFAF2D4D;
COMPILER_STRIP_GATE(0x80C0FBFC, &lit_5247);
#pragma pop

/* 80C0FC00-80C0FC04 000184 0004+00 0/1 0/0 0/0 .rodata          @5248 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5248 = 0xBE7F6901;
COMPILER_STRIP_GATE(0x80C0FC00, &lit_5248);
#pragma pop

/* 80C0FC04-80C0FC08 000188 0004+00 0/1 0/0 0/0 .rodata          @5249 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5249 = 0x3DBC31DF;
COMPILER_STRIP_GATE(0x80C0FC04, &lit_5249);
#pragma pop

/* 80C0FC08-80C0FC0C 00018C 0004+00 0/1 0/0 0/0 .rodata          @5250 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5250 = 0x3EFC15F4;
COMPILER_STRIP_GATE(0x80C0FC08, &lit_5250);
#pragma pop

/* 80C0FC0C-80C0FC10 000190 0004+00 0/1 0/0 0/0 .rodata          @5251 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5251 = 0xBEBC9E88;
COMPILER_STRIP_GATE(0x80C0FC0C, &lit_5251);
#pragma pop

/* 80C0FC10-80C0FC14 000194 0004+00 0/1 0/0 0/0 .rodata          @5252 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5252 = 0xBF932064;
COMPILER_STRIP_GATE(0x80C0FC10, &lit_5252);
#pragma pop

/* 80C0FC14-80C0FC18 000198 0004+00 0/1 0/0 0/0 .rodata          @5253 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5253 = 0x3EE0F8E8;
COMPILER_STRIP_GATE(0x80C0FC14, &lit_5253);
#pragma pop

/* 80C0FC18-80C0FC1C 00019C 0004+00 0/1 0/0 0/0 .rodata          @5254 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5254 = 0xBEF809F6;
COMPILER_STRIP_GATE(0x80C0FC18, &lit_5254);
#pragma pop

/* 80C0FC1C-80C0FC20 0001A0 0004+00 0/1 0/0 0/0 .rodata          @5255 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5255 = 0x3FEB5F4E;
COMPILER_STRIP_GATE(0x80C0FC1C, &lit_5255);
#pragma pop

/* 80C0FC20-80C0FC24 0001A4 0004+00 0/1 0/0 0/0 .rodata          @5256 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5256 = 0xBFC9527E;
COMPILER_STRIP_GATE(0x80C0FC20, &lit_5256);
#pragma pop

/* 80C0FC24-80C0FC28 0001A8 0004+00 0/1 0/0 0/0 .rodata          @5257 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5257 = 0xBF15C7BD;
COMPILER_STRIP_GATE(0x80C0FC24, &lit_5257);
#pragma pop

/* 80C0FC28-80C0FC2C 0001AC 0004+00 0/1 0/0 0/0 .rodata          @5258 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5258 = 0x3EDF3472;
COMPILER_STRIP_GATE(0x80C0FC28, &lit_5258);
#pragma pop

/* 80C0FC2C-80C0FC30 0001B0 0004+00 0/1 0/0 0/0 .rodata          @5259 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5259 = 0x3F96655A;
COMPILER_STRIP_GATE(0x80C0FC2C, &lit_5259);
#pragma pop

/* 80C0FC30-80C0FC34 0001B4 0004+00 0/1 0/0 0/0 .rodata          @5260 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5260 = 0xBF2863BF;
COMPILER_STRIP_GATE(0x80C0FC30, &lit_5260);
#pragma pop

/* 80C0FC34-80C0FC38 0001B8 0004+00 0/1 0/0 0/0 .rodata          @5261 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5261 = 0xBF93F783;
COMPILER_STRIP_GATE(0x80C0FC34, &lit_5261);
#pragma pop

/* 80C0FC38-80C0FC3C 0001BC 0004+00 0/1 0/0 0/0 .rodata          @5262 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5262 = 0x3FAB3355;
COMPILER_STRIP_GATE(0x80C0FC38, &lit_5262);
#pragma pop

/* 80C0FC3C-80C0FC40 0001C0 0004+00 0/1 0/0 0/0 .rodata          @5263 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5263 = 0xBF30A601;
COMPILER_STRIP_GATE(0x80C0FC3C, &lit_5263);
#pragma pop

/* 80C0FC40-80C0FC44 0001C4 0004+00 0/1 0/0 0/0 .rodata          @5264 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5264 = 0x3F89BE7F;
COMPILER_STRIP_GATE(0x80C0FC40, &lit_5264);
#pragma pop

/* 80C0FC44-80C0FC48 0001C8 0004+00 0/1 0/0 0/0 .rodata          @5265 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5265 = 0xBF7226F6;
COMPILER_STRIP_GATE(0x80C0FC44, &lit_5265);
#pragma pop

/* 80C0FC48-80C0FC4C 0001CC 0004+00 0/1 0/0 0/0 .rodata          @5266 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5266 = 0xBF2B5AFB;
COMPILER_STRIP_GATE(0x80C0FC48, &lit_5266);
#pragma pop

/* 80C0FC4C-80C0FC50 0001D0 0004+00 0/1 0/0 0/0 .rodata          @5267 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5267 = 0xBCF7A4E8;
COMPILER_STRIP_GATE(0x80C0FC4C, &lit_5267);
#pragma pop

/* 80C0FC50-80C0FC54 0001D4 0004+00 0/1 0/0 0/0 .rodata          @5268 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5268 = 0x3D86809D;
COMPILER_STRIP_GATE(0x80C0FC50, &lit_5268);
#pragma pop

/* 80C0FC54-80C0FC58 0001D8 0004+00 0/1 0/0 0/0 .rodata          @5269 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5269 = 0xBF154F05;
COMPILER_STRIP_GATE(0x80C0FC54, &lit_5269);
#pragma pop

/* 80C0FC58-80C0FC5C 0001DC 0004+00 0/1 0/0 0/0 .rodata          @5270 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5270 = 0xBF917B8D;
COMPILER_STRIP_GATE(0x80C0FC58, &lit_5270);
#pragma pop

/* 80C0FC5C-80C0FC60 0001E0 0004+00 0/1 0/0 0/0 .rodata          @5271 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5271 = 0x3F89E397;
COMPILER_STRIP_GATE(0x80C0FC5C, &lit_5271);
#pragma pop

/* 80C0FC60-80C0FC64 0001E4 0004+00 0/1 0/0 0/0 .rodata          @5272 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5272 = 0xBEE0B0F2;
COMPILER_STRIP_GATE(0x80C0FC60, &lit_5272);
#pragma pop

/* 80C0FC64-80C0FC68 0001E8 0004+00 0/1 0/0 0/0 .rodata          @5273 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5273 = 0x3E3D7A9A;
COMPILER_STRIP_GATE(0x80C0FC64, &lit_5273);
#pragma pop

/* 80C0FC68-80C0FC6C 0001EC 0004+00 0/1 0/0 0/0 .rodata          @5274 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5274 = 0xBBC77DD8;
COMPILER_STRIP_GATE(0x80C0FC68, &lit_5274);
#pragma pop

/* 80C0FC6C-80C0FC70 0001F0 0004+00 0/1 0/0 0/0 .rodata          @5275 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5275 = 0xBE8C79F6;
COMPILER_STRIP_GATE(0x80C0FC6C, &lit_5275);
#pragma pop

/* 80C0FC70-80C0FC74 0001F4 0004+00 0/1 0/0 0/0 .rodata          @5276 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5276 = 0x3FBAC122;
COMPILER_STRIP_GATE(0x80C0FC70, &lit_5276);
#pragma pop

/* 80C0FC74-80C0FC78 0001F8 0004+00 0/1 0/0 0/0 .rodata          @5277 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5277 = 0xBF9D1740;
COMPILER_STRIP_GATE(0x80C0FC74, &lit_5277);
#pragma pop

/* 80C0FC78-80C0FC7C 0001FC 0004+00 0/1 0/0 0/0 .rodata          @5278 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5278 = 0xBDFD701E;
COMPILER_STRIP_GATE(0x80C0FC78, &lit_5278);
#pragma pop

/* 80C0FC7C-80C0FC80 000200 0004+00 0/1 0/0 0/0 .rodata          @5279 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5279 = 0x3E3ADFF8;
COMPILER_STRIP_GATE(0x80C0FC7C, &lit_5279);
#pragma pop

/* 80C0FC80-80C0FC84 000204 0004+00 0/1 0/0 0/0 .rodata          @5280 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5280 = 0xBF445D10;
COMPILER_STRIP_GATE(0x80C0FC80, &lit_5280);
#pragma pop

/* 80C0FC84-80C0FC88 000208 0004+00 0/1 0/0 0/0 .rodata          @5281 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5281 = 0xBCABCF92;
COMPILER_STRIP_GATE(0x80C0FC84, &lit_5281);
#pragma pop

/* 80C0FC88-80C0FC8C 00020C 0004+00 0/1 0/0 0/0 .rodata          @5282 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5282 = 0xBF914092;
COMPILER_STRIP_GATE(0x80C0FC88, &lit_5282);
#pragma pop

/* 80C10908-80C10918 000070 000C+04 0/1 0/0 0/0 .bss             @5037 */
#pragma push
#pragma force_active on
static u8 lit_5037[12 + 4 /* padding */];
#pragma pop

/* 80C10918-80C10924 000080 000C+00 0/1 0/0 0/0 .bss             @5040 */
#pragma push
#pragma force_active on
static u8 lit_5040[12];
#pragma pop

/* 80C10924-80C10930 00008C 000C+00 0/1 0/0 0/0 .bss             @5041 */
#pragma push
#pragma force_active on
static u8 lit_5041[12];
#pragma pop

/* 80C10930-80C1093C 000098 000C+00 0/1 0/0 0/0 .bss             @5042 */
#pragma push
#pragma force_active on
static u8 lit_5042[12];
#pragma pop

/* 80C1093C-80C10948 0000A4 000C+00 0/1 0/0 0/0 .bss             @5043 */
#pragma push
#pragma force_active on
static u8 lit_5043[12];
#pragma pop

/* 80C10948-80C10954 0000B0 000C+00 0/1 0/0 0/0 .bss             @5044 */
#pragma push
#pragma force_active on
static u8 lit_5044[12];
#pragma pop

/* 80C10954-80C10960 0000BC 000C+00 0/1 0/0 0/0 .bss             @5045 */
#pragma push
#pragma force_active on
static u8 lit_5045[12];
#pragma pop

/* 80C10960-80C1096C 0000C8 000C+00 0/1 0/0 0/0 .bss             @5046 */
#pragma push
#pragma force_active on
static u8 lit_5046[12];
#pragma pop

/* 80C1096C-80C10978 0000D4 000C+00 0/1 0/0 0/0 .bss             @5047 */
#pragma push
#pragma force_active on
static u8 lit_5047[12];
#pragma pop

/* 80C10978-80C10984 0000E0 000C+00 0/1 0/0 0/0 .bss             @5048 */
#pragma push
#pragma force_active on
static u8 lit_5048[12];
#pragma pop

/* 80C10984-80C10990 0000EC 000C+00 0/1 0/0 0/0 .bss             @5049 */
#pragma push
#pragma force_active on
static u8 lit_5049[12];
#pragma pop

/* 80C10990-80C1099C 0000F8 000C+00 0/1 0/0 0/0 .bss             @5050 */
#pragma push
#pragma force_active on
static u8 lit_5050[12];
#pragma pop

/* 80C1099C-80C109A8 000104 000C+00 0/1 0/0 0/0 .bss             @5051 */
#pragma push
#pragma force_active on
static u8 lit_5051[12];
#pragma pop

/* 80C109A8-80C109B4 000110 000C+00 0/1 0/0 0/0 .bss             @5052 */
#pragma push
#pragma force_active on
static u8 lit_5052[12];
#pragma pop

/* 80C109B4-80C109C0 00011C 000C+00 0/1 0/0 0/0 .bss             @5053 */
#pragma push
#pragma force_active on
static u8 lit_5053[12];
#pragma pop

/* 80C109C0-80C10A74 000128 00B4+00 0/1 0/0 0/0 .bss             aTrembleTrans$5036 */
#pragma push
#pragma force_active on
static u8 aTrembleTrans[180];
#pragma pop

/* 80C01FE8-80C02614 0021C8 062C+00 1/0 0/0 0/0 .text            setMtx__11daObj_GrA_cFi */
void daObj_GrA_c::setMtx(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C0FC8C-80C0FC90 000210 0004+00 0/11 0/0 0/0 .rodata          @5397 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5397 = 20.0f;
COMPILER_STRIP_GATE(0x80C0FC8C, &lit_5397);
#pragma pop

/* 80C0FC90-80C0FC94 000214 0004+00 0/3 0/0 0/0 .rodata          @5398 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5398 = 200.0f;
COMPILER_STRIP_GATE(0x80C0FC90, &lit_5398);
#pragma pop

/* 80C0FC94-80C0FC98 000218 0004+00 0/4 0/0 0/0 .rodata          @5399 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5399 = 40.0f;
COMPILER_STRIP_GATE(0x80C0FC94, &lit_5399);
#pragma pop

/* 80C10A74-80C10A84 0001DC 000C+04 0/1 0/0 0/0 .bss             @5298 */
#pragma push
#pragma force_active on
static u8 lit_5298[12 + 4 /* padding */];
#pragma pop

/* 80C10A84-80C10A90 0001EC 000C+00 0/1 0/0 0/0 .bss             aOfst$5297 */
#pragma push
#pragma force_active on
static u8 aOfst[12];
#pragma pop

/* 80C02614-80C02970 0027F4 035C+00 1/0 0/0 0/0 .text            setCollisions__11daObj_GrA_cFv */
void daObj_GrA_c::setCollisions() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C0FC98-80C0FC9C 00021C 0004+00 0/6 0/0 0/0 .rodata          @5431 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5431 = 15.0f;
COMPILER_STRIP_GATE(0x80C0FC98, &lit_5431);
#pragma pop

/* 80C0FC9C-80C0FCA0 000220 0004+00 0/6 0/0 0/0 .rodata          @5432 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5432 = 25.0f;
COMPILER_STRIP_GATE(0x80C0FC9C, &lit_5432);
#pragma pop

/* 80C10A90-80C10AA0 0001F8 000C+04 0/1 0/0 0/0 .bss             @5404 */
#pragma push
#pragma force_active on
static u8 lit_5404[12 + 4 /* padding */];
#pragma pop

/* 80C10AA0-80C10AAC 000208 000C+00 0/1 0/0 0/0 .bss             aEyeOfst$5403 */
#pragma push
#pragma force_active on
static u8 aEyeOfst[12];
#pragma pop

/* 80C02970-80C02A5C 002B50 00EC+00 1/0 0/0 0/0 .text            setAttnPos__11daObj_GrA_cFv */
void daObj_GrA_c::setAttnPos() {
    // NONMATCHING
}

/* 80C02A5C-80C02A60 002C3C 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__11daObj_GrA_cFv */
void daObj_GrA_c::drawOtherMdls() {
    /* empty function */
}

/* 80C02A60-80C02A68 002C40 0008+00 1/0 0/0 0/0 .text            dbgDraw__11daObj_GrA_cFv */
bool daObj_GrA_c::dbgDraw() {
    return true;
}

/* 80C02A68-80C02AD4 002C48 006C+00 2/2 0/0 0/0 .text            ppMoveInit__11daObj_GrA_cFv */
void daObj_GrA_c::ppMoveInit() {
    // NONMATCHING
}

/* 80C02AD4-80C02AE8 002CB4 0014+00 17/17 0/0 0/0 .text            setLookMode__11daObj_GrA_cFi */
void daObj_GrA_c::setLookMode(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C0FCA0-80C0FCA4 000224 0004+00 1/8 0/0 0/0 .rodata          @5568 */
SECTION_RODATA static f32 const lit_5568 = 0.5f;
COMPILER_STRIP_GATE(0x80C0FCA0, &lit_5568);

/* 80C0FCA4-80C0FCA8 000228 0004+00 0/0 0/0 0/0 .rodata          @5582 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5582 = 149.0f;
COMPILER_STRIP_GATE(0x80C0FCA4, &lit_5582);
#pragma pop

/* 80C0FCA8-80C0FCAC 00022C 0004+00 0/0 0/0 0/0 .rodata          @5583 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5583 = 74.0f;
COMPILER_STRIP_GATE(0x80C0FCA8, &lit_5583);
#pragma pop

/* 80C0FCAC-80C0FCB0 000230 0004+00 0/0 0/0 0/0 .rodata          @5725 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5725 = 75.0f;
COMPILER_STRIP_GATE(0x80C0FCAC, &lit_5725);
#pragma pop

/* 80C0FCB0-80C0FCB4 000234 0004+00 2/11 0/0 0/0 .rodata          @5726 */
SECTION_RODATA static f32 const lit_5726 = 100.0f;
COMPILER_STRIP_GATE(0x80C0FCB0, &lit_5726);

/* 80C0FCB4-80C0FCC0 000238 000C+00 0/0 0/0 0/0 .rodata          @5756 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5756[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C0FCB4, &lit_5756);
#pragma pop

/* 80C0FCC0-80C0FCC4 000244 0004+00 1/4 0/0 0/0 .rodata          @5966 */
SECTION_RODATA static u32 const lit_5966 = 0x43360B61;
COMPILER_STRIP_GATE(0x80C0FCC0, &lit_5966);

/* 80C0FCC4-80C0FCC8 000248 0004+00 0/1 0/0 0/0 .rodata          @5967 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5967 = 32.0f;
COMPILER_STRIP_GATE(0x80C0FCC4, &lit_5967);
#pragma pop

/* 80C02AE8-80C0308C 002CC8 05A4+00 1/1 0/0 0/0 .text            lookat__11daObj_GrA_cFv */
void daObj_GrA_c::lookat() {
    // NONMATCHING
}

/* 80C0308C-80C031E4 00326C 0158+00 1/1 0/0 0/0 .text            hitChk__11daObj_GrA_cFv */
void daObj_GrA_c::hitChk() {
    // NONMATCHING
}

/* 80C031E4-80C0335C 0033C4 0178+00 12/0 0/0 0/0 .text            wait__11daObj_GrA_cFPv */
void daObj_GrA_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80C0335C-80C035B8 00353C 025C+00 2/0 0/0 0/0 .text            talk__11daObj_GrA_cFPv */
void daObj_GrA_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80C035B8-80C036B4 003798 00FC+00 2/2 0/0 0/0 .text ctrlMsgAnm__11daObj_GrA_cFRiRiP10fopAc_ac_c
 */
void daObj_GrA_c::ctrlMsgAnm(int& param_0, int& param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* 80C036B4-80C03720 003894 006C+00 2/2 0/0 0/0 .text            s_sub__FPvPv */
static void s_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80C03720-80C03764 003900 0044+00 1/1 0/0 0/0 .text checkTagGraSub__11daObj_GrA_cFP10fopAc_ac_c
 */
void daObj_GrA_c::checkTagGraSub(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C03764-80C03830 003944 00CC+00 1/1 0/0 0/0 .text            fallAbyssCheck__11daObj_GrA_cFv */
void daObj_GrA_c::fallAbyssCheck() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C0FCC8-80C0FCCC 00024C 0004+00 0/7 0/0 0/0 .rodata          @6054 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6054 = 0.25f;
COMPILER_STRIP_GATE(0x80C0FCC8, &lit_6054);
#pragma pop

/* 80C0FCCC-80C0FCD0 000250 0004+00 0/6 0/0 0/0 .rodata          @6055 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6055 = 3.5f;
COMPILER_STRIP_GATE(0x80C0FCCC, &lit_6055);
#pragma pop

/* 80C0FCD0-80C0FCD8 000254 0006+02 0/1 0/0 0/0 .rodata          l_prticles_id$6229 */
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
COMPILER_STRIP_GATE(0x80C0FCD0, &l_prticles_id);
#pragma pop

/* 80C0FCD8-80C0FCDC 00025C 0004+00 0/1 0/0 0/0 .rodata          @6320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6320 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C0FCD8, &lit_6320);
#pragma pop

/* 80C0FCDC-80C0FCE0 000260 0004+00 1/8 0/0 0/0 .rodata          @6321 */
SECTION_RODATA static f32 const lit_6321 = 2.0f;
COMPILER_STRIP_GATE(0x80C0FCDC, &lit_6321);

/* 80C03830-80C03B14 003A10 02E4+00 1/1 0/0 0/0 .text            setPrtcl__11daObj_GrA_cFv */
void daObj_GrA_c::setPrtcl() {
    // NONMATCHING
}

/* 80C03B14-80C03B48 003CF4 0034+00 1/0 0/0 0/0 .text            base000__11daObj_GrA_cFi */
void daObj_GrA_c::base000(int param_0) {
    // NONMATCHING
}

/* 80C03B48-80C03B7C 003D28 0034+00 1/0 0/0 0/0 .text            base001__11daObj_GrA_cFi */
void daObj_GrA_c::base001(int param_0) {
    // NONMATCHING
}

/* 80C03B7C-80C03C1C 003D5C 00A0+00 1/0 0/0 0/0 .text            base003__11daObj_GrA_cFi */
void daObj_GrA_c::base003(int param_0) {
    // NONMATCHING
}

/* 80C03C1C-80C03CBC 003DFC 00A0+00 1/0 0/0 0/0 .text            base004__11daObj_GrA_cFi */
void daObj_GrA_c::base004(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C0FCE0-80C0FCE4 000264 0004+00 1/1 0/0 0/0 .rodata          @6330 */
SECTION_RODATA static f32 const lit_6330 = 10.0f;
COMPILER_STRIP_GATE(0x80C0FCE0, &lit_6330);

/* 80C0FCE4-80C0FCE8 000268 0004+00 0/2 0/0 0/0 .rodata          @6478 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6478 = 4.0f;
COMPILER_STRIP_GATE(0x80C0FCE4, &lit_6478);
#pragma pop

/* 80C0FCE8-80C0FCEC 00026C 0004+00 0/1 0/0 0/0 .rodata          @6479 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6479 = 0xBEE568FF;
COMPILER_STRIP_GATE(0x80C0FCE8, &lit_6479);
#pragma pop

/* 80C0FCEC-80C0FCF0 000270 0004+00 0/1 0/0 0/0 .rodata          @6480 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6480 = 0xBF2C65D1;
COMPILER_STRIP_GATE(0x80C0FCEC, &lit_6480);
#pragma pop

/* 80C0FCF0-80C0FCF4 000274 0004+00 0/1 0/0 0/0 .rodata          @6481 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6481 = 0x3FE597C7;
COMPILER_STRIP_GATE(0x80C0FCF0, &lit_6481);
#pragma pop

/* 80C0FCF4-80C0FCF8 000278 0004+00 0/1 0/0 0/0 .rodata          @6482 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6482 = 0xBF67A157;
COMPILER_STRIP_GATE(0x80C0FCF4, &lit_6482);
#pragma pop

/* 80C0FCF8-80C0FCFC 00027C 0004+00 0/5 0/0 0/0 .rodata          @6483 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6483 = 300.0f;
COMPILER_STRIP_GATE(0x80C0FCF8, &lit_6483);
#pragma pop

/* 80C0FCFC-80C0FD00 000280 0004+00 0/3 0/0 0/0 .rodata          @6651 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6651 = 50.0f;
COMPILER_STRIP_GATE(0x80C0FCFC, &lit_6651);
#pragma pop

/* 80C0FD00-80C0FD04 000284 0004+00 0/1 0/0 0/0 .rodata          @6722 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6722 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C0FD00, &lit_6722);
#pragma pop

/* 80C0FD04-80C0FD08 000288 0004+00 0/2 0/0 0/0 .rodata          @6723 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6723 = 45.0f;
COMPILER_STRIP_GATE(0x80C0FD04, &lit_6723);
#pragma pop

/* 80C0FD08-80C0FD0C 00028C 0004+00 0/1 0/0 0/0 .rodata          @6873 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6873 = 95.0f;
COMPILER_STRIP_GATE(0x80C0FD08, &lit_6873);
#pragma pop

/* 80C0FD0C-80C0FD10 000290 0004+00 1/3 0/0 0/0 .rodata          @6874 */
SECTION_RODATA static f32 const lit_6874 = 12.0f;
COMPILER_STRIP_GATE(0x80C0FD0C, &lit_6874);

/* 80C0FD10-80C0FD14 000294 0004+00 1/2 0/0 0/0 .rodata          @7003 */
SECTION_RODATA static f32 const lit_7003 = 3.0f;
COMPILER_STRIP_GATE(0x80C0FD10, &lit_7003);

/* 80C0FD14-80C0FD18 000298 0004+00 0/1 0/0 0/0 .rodata          @7004 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7004 = 9.0f;
COMPILER_STRIP_GATE(0x80C0FD14, &lit_7004);
#pragma pop

/* 80C0FD18-80C0FD1C 00029C 0004+00 0/1 0/0 0/0 .rodata          @7005 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7005 = 24.0f;
COMPILER_STRIP_GATE(0x80C0FD18, &lit_7005);
#pragma pop

/* 80C0FD1C-80C0FD20 0002A0 0004+00 0/5 0/0 0/0 .rodata          @7312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7312 = 150.0f;
COMPILER_STRIP_GATE(0x80C0FD1C, &lit_7312);
#pragma pop

/* 80C0FD20-80C0FD24 0002A4 0004+00 0/3 0/0 0/0 .rodata          @7313 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7313 = 14.0f;
COMPILER_STRIP_GATE(0x80C0FD20, &lit_7313);
#pragma pop

/* 80C0FD24-80C0FD28 0002A8 0004+00 0/2 0/0 0/0 .rodata          @7314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7314 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C0FD24, &lit_7314);
#pragma pop

/* 80C0FD28-80C0FD2C 0002AC 0004+00 0/6 0/0 0/0 .rodata          @7315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7315 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C0FD28, &lit_7315);
#pragma pop

/* 80C0FD2C-80C0FD34 0002B0 0008+00 1/1 0/0 0/0 .rodata          @7443 */
SECTION_RODATA static u8 const lit_7443[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C0FD2C, &lit_7443);

/* 80C0FD34-80C0FD38 0002B8 0004+00 0/2 0/0 0/0 .rodata          @7613 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7613 = -30.0f;
COMPILER_STRIP_GATE(0x80C0FD34, &lit_7613);
#pragma pop

/* 80C0FD38-80C0FD3C 0002BC 0004+00 0/2 0/0 0/0 .rodata          @7996 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7996 = 1800.0f;
COMPILER_STRIP_GATE(0x80C0FD38, &lit_7996);
#pragma pop

/* 80C0FD3C-80C0FD40 0002C0 0004+00 0/2 0/0 0/0 .rodata          @7997 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7997 = 2000.0f;
COMPILER_STRIP_GATE(0x80C0FD3C, &lit_7997);
#pragma pop

/* 80C0FD40-80C0FD44 0002C4 0004+00 0/2 0/0 0/0 .rodata          @7998 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7998 = -4500.0f;
COMPILER_STRIP_GATE(0x80C0FD40, &lit_7998);
#pragma pop

/* 80C0FD44-80C0FD48 0002C8 0004+00 1/4 0/0 0/0 .rodata          @7999 */
SECTION_RODATA static f32 const lit_7999 = 30.0f;
COMPILER_STRIP_GATE(0x80C0FD44, &lit_7999);

/* 80C0FD48-80C0FD4C 0002CC 0004+00 0/2 0/0 0/0 .rodata          @8701 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8701 = 250.0f;
COMPILER_STRIP_GATE(0x80C0FD48, &lit_8701);
#pragma pop

/* 80C0FD4C-80C0FD50 0002D0 0004+00 0/2 0/0 0/0 .rodata          @8702 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8702 = 500.0f;
COMPILER_STRIP_GATE(0x80C0FD4C, &lit_8702);
#pragma pop

/* 80C0FD50-80C0FD54 0002D4 0004+00 0/1 0/0 0/0 .rodata          @8703 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8703 = 55.0f;
COMPILER_STRIP_GATE(0x80C0FD50, &lit_8703);
#pragma pop

/* 80C0FD54-80C0FD58 0002D8 0004+00 0/1 0/0 0/0 .rodata          @8704 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8704 = 210.0f;
COMPILER_STRIP_GATE(0x80C0FD54, &lit_8704);
#pragma pop

/* 80C0FD58-80C0FD5C 0002DC 0004+00 0/1 0/0 0/0 .rodata          @8705 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8705 = -335.0f;
COMPILER_STRIP_GATE(0x80C0FD58, &lit_8705);
#pragma pop

/* 80C0FD5C-80C0FD60 0002E0 0004+00 0/1 0/0 0/0 .rodata          @8706 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8706 = 17.0f;
COMPILER_STRIP_GATE(0x80C0FD5C, &lit_8706);
#pragma pop

/* 80C0FD60-80C0FD64 0002E4 0004+00 0/1 0/0 0/0 .rodata          @8956 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8956 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C0FD60, &lit_8956);
#pragma pop

/* 80C0FD64-80C0FD68 0002E8 0004+00 0/3 0/0 0/0 .rodata          @8957 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8957 = 60.0f;
COMPILER_STRIP_GATE(0x80C0FD64, &lit_8957);
#pragma pop

/* 80C0FD68-80C0FD6C 0002EC 0004+00 0/2 0/0 0/0 .rodata          @8958 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8958 = -300.0f;
COMPILER_STRIP_GATE(0x80C0FD68, &lit_8958);
#pragma pop

/* 80C0FD6C-80C0FD70 0002F0 0004+00 0/2 0/0 0/0 .rodata          @8959 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8959 = 90.0f;
COMPILER_STRIP_GATE(0x80C0FD6C, &lit_8959);
#pragma pop

/* 80C0FD70-80C0FD74 0002F4 0004+00 0/1 0/0 0/0 .rodata          @9046 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9046 = -200.0f;
COMPILER_STRIP_GATE(0x80C0FD70, &lit_9046);
#pragma pop

/* 80C0FD74-80C0FD78 0002F8 0004+00 0/3 0/0 0/0 .rodata          @9047 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9047 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C0FD74, &lit_9047);
#pragma pop

/* 80C0FD78-80C0FD7C 0002FC 0004+00 0/1 0/0 0/0 .rodata          @9205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9205 = 5.0f;
COMPILER_STRIP_GATE(0x80C0FD78, &lit_9205);
#pragma pop

/* 80C0FD7C-80C0FD80 000300 0004+00 1/2 0/0 0/0 .rodata          @9223 */
SECTION_RODATA static f32 const lit_9223 = -120.0f;
COMPILER_STRIP_GATE(0x80C0FD7C, &lit_9223);

/* 80C0FD80-80C0FD84 000304 0004+00 1/3 0/0 0/0 .rodata          @9280 */
SECTION_RODATA static f32 const lit_9280 = -110.0f;
COMPILER_STRIP_GATE(0x80C0FD80, &lit_9280);

/* 80C0FD84-80C0FD8C 000308 0008+00 0/1 0/0 0/0 .rodata          @9333 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_9333[8] = {
    0x3F, 0xC9, 0x99, 0x99, 0x99, 0x99, 0x99, 0x9A,
};
COMPILER_STRIP_GATE(0x80C0FD84, &lit_9333);
#pragma pop

/* 80C0FD8C-80C0FD90 000310 0004+00 0/2 0/0 0/0 .rodata          @9334 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9334 = -7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C0FD8C, &lit_9334);
#pragma pop

/* 80C0FD90-80C0FD94 000314 0004+00 0/2 0/0 0/0 .rodata          @9385 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9385 = -4.0f;
COMPILER_STRIP_GATE(0x80C0FD90, &lit_9385);
#pragma pop

/* 80C0FD94-80C0FD98 000318 0004+00 0/1 0/0 0/0 .rodata          @9464 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9464 = -1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C0FD94, &lit_9464);
#pragma pop

/* 80C0FD98-80C0FD9C 00031C 0004+00 0/1 0/0 0/0 .rodata          @10241 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10241 = 700.0f;
COMPILER_STRIP_GATE(0x80C0FD98, &lit_10241);
#pragma pop

/* 80C0FD9C-80C0FDA0 000320 0004+00 0/1 0/0 0/0 .rodata          @10242 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10242 = 3.0f / 50.0f;
COMPILER_STRIP_GATE(0x80C0FD9C, &lit_10242);
#pragma pop

/* 80C0FDA0-80C0FDA4 000324 0004+00 0/1 0/0 0/0 .rodata          @10243 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10243 = 70.0f;
COMPILER_STRIP_GATE(0x80C0FDA0, &lit_10243);
#pragma pop

/* 80C0FDA4-80C0FDA8 000328 0004+00 0/1 0/0 0/0 .rodata          @10244 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10244 = 230.0f;
COMPILER_STRIP_GATE(0x80C0FDA4, &lit_10244);
#pragma pop

/* 80C0FDA8-80C0FDAC 00032C 0004+00 0/1 0/0 0/0 .rodata          @10245 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10245 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80C0FDA8, &lit_10245);
#pragma pop

/* 80C0FDAC-80C0FDB0 000330 0004+00 0/1 0/0 0/0 .rodata          @10246 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10246 = 280.0f;
COMPILER_STRIP_GATE(0x80C0FDAC, &lit_10246);
#pragma pop

/* 80C0FDB0-80C0FDB4 000334 0004+00 0/1 0/0 0/0 .rodata          @10247 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10247 = -50.0f;
COMPILER_STRIP_GATE(0x80C0FDB0, &lit_10247);
#pragma pop

/* 80C0FDB4-80C0FDB8 000338 0004+00 0/1 0/0 0/0 .rodata          @10248 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10248 = -800.0f;
COMPILER_STRIP_GATE(0x80C0FDB4, &lit_10248);
#pragma pop

/* 80C0FDB8-80C0FDBC 00033C 0004+00 0/1 0/0 0/0 .rodata          @10249 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10249 = 35.0f;
COMPILER_STRIP_GATE(0x80C0FDB8, &lit_10249);
#pragma pop

/* 80C0FDBC-80C0FDC0 000340 0004+00 0/1 0/0 0/0 .rodata          @10250 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10250 = 7.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C0FDBC, &lit_10250);
#pragma pop

/* 80C0FDC0-80C0FDC4 000344 0004+00 0/0 0/0 0/0 .rodata          @10251 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10251 = 80.0f;
COMPILER_STRIP_GATE(0x80C0FDC0, &lit_10251);
#pragma pop

/* 80C0FDC4-80C0FDC8 000348 0004+00 0/0 0/0 0/0 .rodata          @10252 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_10252 = 0x4312170A;
COMPILER_STRIP_GATE(0x80C0FDC4, &lit_10252);
#pragma pop

/* 80C0FDC8-80C0FDCC 00034C 0004+00 0/0 0/0 0/0 .rodata          @10253 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_10253 = 0x4321F852;
COMPILER_STRIP_GATE(0x80C0FDC8, &lit_10253);
#pragma pop

/* 80C0FDCC-80C0FDD0 000350 0004+00 1/1 0/0 0/0 .rodata          @10254 */
SECTION_RODATA static f32 const lit_10254 = 6.0f;
COMPILER_STRIP_GATE(0x80C0FDCC, &lit_10254);

/* 80C0FDD0-80C0FDD4 000354 0004+00 0/0 0/0 0/0 .rodata          @10255 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10255 = 13.0f;
COMPILER_STRIP_GATE(0x80C0FDD0, &lit_10255);
#pragma pop

/* 80C0FDD4-80C0FDD8 000358 0004+00 0/0 0/0 0/0 .rodata          @10256 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10256 = -1482.0f;
COMPILER_STRIP_GATE(0x80C0FDD4, &lit_10256);
#pragma pop

/* 80C0FDD8-80C0FDDC 00035C 0004+00 0/0 0/0 0/0 .rodata          @10257 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10257 = 3650.0f;
COMPILER_STRIP_GATE(0x80C0FDD8, &lit_10257);
#pragma pop

/* 80C0FDDC-80C0FDE0 000360 0004+00 0/0 0/0 0/0 .rodata          @10258 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10258 = -4459.0f;
COMPILER_STRIP_GATE(0x80C0FDDC, &lit_10258);
#pragma pop

/* 80C0FDE0-80C0FDE4 000364 0004+00 1/2 0/0 0/0 .rodata          @10292 */
SECTION_RODATA static u32 const lit_10292 = 0x3BB40000;
COMPILER_STRIP_GATE(0x80C0FDE0, &lit_10292);

/* 80C0FDE4-80C0FDE8 000368 0004+00 1/3 0/0 0/0 .rodata          @10293 */
SECTION_RODATA static f32 const lit_10293 = 180.0f;
COMPILER_STRIP_GATE(0x80C0FDE4, &lit_10293);

/* 80C0FDE8-80C0FDEC 00036C 0004+00 0/1 0/0 0/0 .rodata          @10294 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10294 = 8.0f;
COMPILER_STRIP_GATE(0x80C0FDE8, &lit_10294);
#pragma pop

/* 80C0FDEC-80C0FDF0 000370 0004+00 0/1 0/0 0/0 .rodata          @10295 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10295 = 16384.0f;
COMPILER_STRIP_GATE(0x80C0FDEC, &lit_10295);
#pragma pop

/* 80C0FDF0-80C0FDF4 000374 0004+00 0/1 0/0 0/0 .rodata          @10406 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10406 = 110.0f;
COMPILER_STRIP_GATE(0x80C0FDF0, &lit_10406);
#pragma pop

/* 80C0FDF4-80C0FDF8 000378 0004+00 0/1 0/0 0/0 .rodata          @10407 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10407 = 135.0f;
COMPILER_STRIP_GATE(0x80C0FDF4, &lit_10407);
#pragma pop

/* 80C0FDF8-80C0FDFC 00037C 0004+00 1/1 0/0 0/0 .rodata          @10650 */
SECTION_RODATA static f32 const lit_10650 = 4.5f;
COMPILER_STRIP_GATE(0x80C0FDF8, &lit_10650);

/* 80C0FDFC-80C0FE00 000380 0004+00 1/1 0/0 0/0 .rodata          @10651 */
SECTION_RODATA static f32 const lit_10651 = 5.5f;
COMPILER_STRIP_GATE(0x80C0FDFC, &lit_10651);

/* 80C03CBC-80C03D54 003E9C 0098+00 1/0 0/0 0/0 .text            base005__11daObj_GrA_cFi */
void daObj_GrA_c::base005(int param_0) {
    // NONMATCHING
}

/* 80C03D54-80C03D88 003F34 0034+00 1/0 0/0 0/0 .text            base006__11daObj_GrA_cFi */
void daObj_GrA_c::base006(int param_0) {
    // NONMATCHING
}

/* 80C03D88-80C03DF0 003F68 0068+00 1/0 0/0 0/0 .text            base007__11daObj_GrA_cFi */
void daObj_GrA_c::base007(int param_0) {
    // NONMATCHING
}

/* 80C03DF0-80C03E74 003FD0 0084+00 1/0 0/0 0/0 .text            base008__11daObj_GrA_cFi */
void daObj_GrA_c::base008(int param_0) {
    // NONMATCHING
}

/* 80C03E74-80C03F14 004054 00A0+00 1/0 0/0 0/0 .text            base009__11daObj_GrA_cFi */
void daObj_GrA_c::base009(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C0FE00-80C0FE04 000384 0004+00 0/1 0/0 0/0 .rodata          @10705 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10705 = 18.5f;
COMPILER_STRIP_GATE(0x80C0FE00, &lit_10705);
#pragma pop

/* 80C0FE04-80C0FE08 000388 0004+00 0/1 0/0 0/0 .rodata          @10706 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10706 = 19.5f;
COMPILER_STRIP_GATE(0x80C0FE04, &lit_10706);
#pragma pop

/* 80C03F14-80C03FC0 0040F4 00AC+00 1/0 0/0 0/0 .text            base010__11daObj_GrA_cFi */
void daObj_GrA_c::base010(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C0FE08-80C0FE0C 00038C 0004+00 0/1 0/0 0/0 .rodata          @10768 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10768 = 127.0f;
COMPILER_STRIP_GATE(0x80C0FE08, &lit_10768);
#pragma pop

/* 80C03FC0-80C04118 0041A0 0158+00 1/0 0/0 0/0 .text            base013__11daObj_GrA_cFi */
void daObj_GrA_c::base013(int param_0) {
    // NONMATCHING
}

/* 80C04118-80C04180 0042F8 0068+00 1/0 0/0 0/0 .text            base016__11daObj_GrA_cFi */
void daObj_GrA_c::base016(int param_0) {
    // NONMATCHING
}

/* 80C04180-80C041E8 004360 0068+00 1/0 0/0 0/0 .text            base017__11daObj_GrA_cFi */
void daObj_GrA_c::base017(int param_0) {
    // NONMATCHING
}

/* 80C041E8-80C04260 0043C8 0078+00 1/0 0/0 0/0 .text            base018__11daObj_GrA_cFi */
void daObj_GrA_c::base018(int param_0) {
    // NONMATCHING
}

/* 80C04260-80C042D4 004440 0074+00 1/0 0/0 0/0 .text            base019__11daObj_GrA_cFi */
void daObj_GrA_c::base019(int param_0) {
    // NONMATCHING
}

/* 80C042D4-80C04308 0044B4 0034+00 1/0 0/0 0/0 .text            base020__11daObj_GrA_cFi */
void daObj_GrA_c::base020(int param_0) {
    // NONMATCHING
}

/* 80C04308-80C0433C 0044E8 0034+00 1/0 0/0 0/0 .text            base021__11daObj_GrA_cFi */
void daObj_GrA_c::base021(int param_0) {
    // NONMATCHING
}

/* 80C0433C-80C04370 00451C 0034+00 1/0 0/0 0/0 .text            base022__11daObj_GrA_cFi */
void daObj_GrA_c::base022(int param_0) {
    // NONMATCHING
}

/* 80C04370-80C043A4 004550 0034+00 1/0 0/0 0/0 .text            base023__11daObj_GrA_cFi */
void daObj_GrA_c::base023(int param_0) {
    // NONMATCHING
}

/* 80C043A4-80C043D8 004584 0034+00 1/0 0/0 0/0 .text            base024__11daObj_GrA_cFi */
void daObj_GrA_c::base024(int param_0) {
    // NONMATCHING
}

/* 80C043D8-80C0440C 0045B8 0034+00 1/0 0/0 0/0 .text            base025__11daObj_GrA_cFi */
void daObj_GrA_c::base025(int param_0) {
    // NONMATCHING
}

/* 80C0440C-80C04440 0045EC 0034+00 1/0 0/0 0/0 .text            base026__11daObj_GrA_cFi */
void daObj_GrA_c::base026(int param_0) {
    // NONMATCHING
}

/* 80C04440-80C04478 004620 0038+00 1/0 0/0 0/0 .text            face000__11daObj_GrA_cFi */
void daObj_GrA_c::face000(int param_0) {
    // NONMATCHING
}

/* 80C04478-80C04518 004658 00A0+00 1/0 0/0 0/0 .text            face003__11daObj_GrA_cFi */
void daObj_GrA_c::face003(int param_0) {
    // NONMATCHING
}

/* 80C04518-80C045B8 0046F8 00A0+00 1/0 0/0 0/0 .text            face004__11daObj_GrA_cFi */
void daObj_GrA_c::face004(int param_0) {
    // NONMATCHING
}

/* 80C045B8-80C045F0 004798 0038+00 1/0 0/0 0/0 .text            face005__11daObj_GrA_cFi */
void daObj_GrA_c::face005(int param_0) {
    // NONMATCHING
}

/* 80C045F0-80C04628 0047D0 0038+00 1/0 0/0 0/0 .text            face006__11daObj_GrA_cFi */
void daObj_GrA_c::face006(int param_0) {
    // NONMATCHING
}

/* 80C04628-80C04660 004808 0038+00 1/0 0/0 0/0 .text            face007__11daObj_GrA_cFi */
void daObj_GrA_c::face007(int param_0) {
    // NONMATCHING
}

/* 80C04660-80C04700 004840 00A0+00 1/0 0/0 0/0 .text            face008__11daObj_GrA_cFi */
void daObj_GrA_c::face008(int param_0) {
    // NONMATCHING
}

/* 80C04700-80C047A0 0048E0 00A0+00 1/0 0/0 0/0 .text            face009__11daObj_GrA_cFi */
void daObj_GrA_c::face009(int param_0) {
    // NONMATCHING
}

/* 80C047A0-80C047D8 004980 0038+00 1/0 0/0 0/0 .text            face010__11daObj_GrA_cFi */
void daObj_GrA_c::face010(int param_0) {
    // NONMATCHING
}

/* 80C047D8-80C04810 0049B8 0038+00 1/0 0/0 0/0 .text            face011__11daObj_GrA_cFi */
void daObj_GrA_c::face011(int param_0) {
    // NONMATCHING
}

/* 80C04810-80C04848 0049F0 0038+00 1/0 0/0 0/0 .text            face012__11daObj_GrA_cFi */
void daObj_GrA_c::face012(int param_0) {
    // NONMATCHING
}

/* 80C04848-80C04880 004A28 0038+00 1/0 0/0 0/0 .text            face016__11daObj_GrA_cFi */
void daObj_GrA_c::face016(int param_0) {
    // NONMATCHING
}

/* 80C04880-80C048B8 004A60 0038+00 1/0 0/0 0/0 .text            face017__11daObj_GrA_cFi */
void daObj_GrA_c::face017(int param_0) {
    // NONMATCHING
}

/* 80C048B8-80C048F8 004A98 0040+00 1/0 0/0 0/0 .text            face999__11daObj_GrA_cFi */
void daObj_GrA_c::face999(int param_0) {
    // NONMATCHING
}

/* 80C048F8-80C04A0C 004AD8 0114+00 2/2 0/0 0/0 .text            evtcutTalk__11daObj_GrA_cFii */
void daObj_GrA_c::evtcutTalk(int param_0, int param_1) {
    // NONMATCHING
}

/* 80C04A0C-80C04A88 004BEC 007C+00 2/2 0/0 0/0 .text            setFaceTalkAfter__11daObj_GrA_cFv
 */
void daObj_GrA_c::setFaceTalkAfter() {
    // NONMATCHING
}

/* 80C04A88-80C04AA8 004C68 0020+00 1/0 0/0 0/0 .text            daObj_GrA_Create__FPv */
static void daObj_GrA_Create(void* param_0) {
    // NONMATCHING
}

/* 80C04AA8-80C04AC8 004C88 0020+00 1/0 0/0 0/0 .text            daObj_GrA_Delete__FPv */
static void daObj_GrA_Delete(void* param_0) {
    // NONMATCHING
}

/* 80C04AC8-80C04AE8 004CA8 0020+00 1/0 0/0 0/0 .text            daObj_GrA_Execute__FPv */
static void daObj_GrA_Execute(void* param_0) {
    // NONMATCHING
}

/* 80C04AE8-80C04B14 004CC8 002C+00 1/0 0/0 0/0 .text            daObj_GrA_Draw__FPv */
static void daObj_GrA_Draw(void* param_0) {
    // NONMATCHING
}

/* 80C04B14-80C04B1C 004CF4 0008+00 1/0 0/0 0/0 .text            daObj_GrA_IsDelete__FPv */
static bool daObj_GrA_IsDelete(void* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80C10888-80C10894 000A20 000C+00 2/2 0/0 0/0 .data            __vt__17daObj_GrA_Param_c */
SECTION_DATA extern void* __vt__17daObj_GrA_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daObj_GrA_Param_cFv,
};

/* 80C04B1C-80C04B64 004CFC 0048+00 2/1 0/0 0/0 .text            __dt__17daObj_GrA_Param_cFv */
daObj_GrA_Param_c::~daObj_GrA_Param_c() {
    // NONMATCHING
}

/* 80C04B64-80C04BAC 004D44 0048+00 1/0 0/0 0/0 .text            __dt__16daBaseNpc_path_cFv */
// daBaseNpc_path_c::~daBaseNpc_path_c() {
extern "C" void __dt__16daBaseNpc_path_cFv() {
    // NONMATCHING
}

/* 80C04BAC-80C04BB0 004D8C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80C04BB0-80C04BF8 004D90 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80C04BF8-80C04C40 004DD8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C04C40-80C04C7C 004E20 003C+00 6/6 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80C04C7C-80C04D48 004E5C 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80C04D48-80C04DCC 004F28 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80C04DCC-80C04E14 004FAC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80C04E14-80C04E50 004FF4 003C+00 2/2 0/0 0/0 .text
 * __dt__Q211daObj_GrA_c21daObj_GrA_prtclMngr_cFv               */
daObj_GrA_c::daObj_GrA_prtclMngr_c::~daObj_GrA_prtclMngr_c() {
    // NONMATCHING
}

/* 80C04E50-80C04E54 005030 0004+00 1/1 0/0 0/0 .text
 * __ct__Q211daObj_GrA_c21daObj_GrA_prtclMngr_cFv               */
daObj_GrA_c::daObj_GrA_prtclMngr_c::daObj_GrA_prtclMngr_c() {
    /* empty function */
}

/* 80C04E54-80C04E9C 005034 0048+00 1/0 0/0 0/0 .text            __dt__18daBaseNpc_acMngr_cFv */
// daBaseNpc_acMngr_c::~daBaseNpc_acMngr_c() {
extern "C" void __dt__18daBaseNpc_acMngr_cFv() {
    // NONMATCHING
}

/* 80C04E9C-80C04EFC 00507C 0060+00 1/0 0/0 0/0 .text            __dt__23daBaseNpc_moveBgActor_cFv
 */
// daBaseNpc_moveBgActor_c::~daBaseNpc_moveBgActor_c() {
extern "C" void __dt__23daBaseNpc_moveBgActor_cFv() {
    // NONMATCHING
}

/* 80C04EFC-80C04F04 0050DC 0008+00 1/0 0/0 0/0 .text            Draw__23daBaseNpc_moveBgActor_cFv
 */
// bool daBaseNpc_moveBgActor_c::Draw() {
extern "C" bool Draw__23daBaseNpc_moveBgActor_cFv() {
    return true;
}

/* 80C04F04-80C04F0C 0050E4 0008+00 2/0 0/0 0/0 .text            Create__23daBaseNpc_moveBgActor_cFv
 */
// bool daBaseNpc_moveBgActor_c::Create() {
extern "C" bool Create__23daBaseNpc_moveBgActor_cFv() {
    return true;
}

/* 80C04F0C-80C04F14 0050EC 0008+00 2/0 0/0 0/0 .text IsDelete__23daBaseNpc_moveBgActor_cFv */
// bool daBaseNpc_moveBgActor_c::IsDelete() {
extern "C" bool IsDelete__23daBaseNpc_moveBgActor_cFv() {
    return true;
}

/* 80C04F14-80C04F1C 0050F4 0008+00 2/0 0/0 0/0 .text            ToFore__23daBaseNpc_moveBgActor_cFv
 */
// bool daBaseNpc_moveBgActor_c::ToFore() {
extern "C" bool ToFore__23daBaseNpc_moveBgActor_cFv() {
    return true;
}

/* 80C04F1C-80C04F24 0050FC 0008+00 2/0 0/0 0/0 .text            ToBack__23daBaseNpc_moveBgActor_cFv
 */
// bool daBaseNpc_moveBgActor_c::ToBack() {
extern "C" bool ToBack__23daBaseNpc_moveBgActor_cFv() {
    return true;
}

/* 80C04F24-80C04F2C 005104 0008+00 1/0 0/0 0/0 .text CreateHeap__23daBaseNpc_moveBgActor_cFv */
// bool daBaseNpc_moveBgActor_c::CreateHeap() {
extern "C" bool CreateHeap__23daBaseNpc_moveBgActor_cFv() {
    return true;
}

/* 80C04F2C-80C04F34 00510C 0008+00 1/0 0/0 0/0 .text Execute__23daBaseNpc_moveBgActor_cFPPA3_A4_f
 */
// bool daBaseNpc_moveBgActor_c::Execute(f32 (**param_0)[3][4]) {
extern "C" bool Execute__23daBaseNpc_moveBgActor_cFPPA3_A4_f() {
    return true;
}

/* 80C04F34-80C04F3C 005114 0008+00 1/0 0/0 0/0 .text            Delete__23daBaseNpc_moveBgActor_cFv
 */
// bool daBaseNpc_moveBgActor_c::Delete() {
extern "C" bool Delete__23daBaseNpc_moveBgActor_cFv() {
    return true;
}

/* 80C04F3C-80C04F58 00511C 001C+00 5/5 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80C04F3C(void* _this, int* param_0) {
    // NONMATCHING
}

/* 80C04F58-80C04F74 005138 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<s>__FPs */
extern "C" void func_80C04F58(void* _this, s16* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C0FE0C-80C0FE10 000390 0004+00 0/1 0/0 0/0 .rodata          @11071 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11071 = 67.0f;
COMPILER_STRIP_GATE(0x80C0FE0C, &lit_11071);
#pragma pop

/* 80C0FE10-80C0FE14 000394 0004+00 0/1 0/0 0/0 .rodata          @11072 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11072 = 26.0f;
COMPILER_STRIP_GATE(0x80C0FE10, &lit_11072);
#pragma pop

/* 80C04F74-80C0536C 005154 03F8+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_gra2_cpp */
void __sinit_d_a_obj_gra2_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C04F74, __sinit_d_a_obj_gra2_cpp);
#pragma pop

/* 80C0536C-80C053C4 00554C 0058+00 4/4 0/0 0/0 .text            getSrchCircleR__11daObj_GrA_cFv */
void daObj_GrA_c::getSrchCircleR() {
    // NONMATCHING
}

/* 80C053C4-80C05920 0055A4 055C+00 2/0 0/0 0/0 .text            standWait__11daObj_GrA_cFPv */
void daObj_GrA_c::standWait(void* param_0) {
    // NONMATCHING
}

/* 80C05920-80C05F64 005B00 0644+00 3/0 0/0 0/0 .text            walk__11daObj_GrA_cFPv */
void daObj_GrA_c::walk(void* param_0) {
    // NONMATCHING
}

/* 80C05F64-80C061F4 006144 0290+00 1/0 0/0 0/0 .text            defence__11daObj_GrA_cFPv */
void daObj_GrA_c::defence(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C0FE14-80C0FE14 000398 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C0FE60 = "F_SP109";
#pragma pop

/* 80C061F4-80C067D8 0063D4 05E4+00 5/0 0/0 0/0 .text            toStone__11daObj_GrA_cFPv */
void daObj_GrA_c::toStone(void* param_0) {
    // NONMATCHING
}

/* 80C067D8-80C06CDC 0069B8 0504+00 2/0 0/0 0/0 .text            step__11daObj_GrA_cFPv */
void daObj_GrA_c::step(void* param_0) {
    // NONMATCHING
}

/* 80C06CDC-80C0780C 006EBC 0B30+00 3/0 0/0 0/0 .text            rollReturn__11daObj_GrA_cFPv */
void daObj_GrA_c::rollReturn(void* param_0) {
    // NONMATCHING
}

/* 80C0780C-80C078A8 0079EC 009C+00 1/1 0/0 0/0 .text            soldierDemoSkip__11daObj_GrA_cFv */
void daObj_GrA_c::soldierDemoSkip() {
    // NONMATCHING
}

/* 80C078A8-80C07C40 007A88 0398+00 1/0 0/0 0/0 .text            soldierDemo__11daObj_GrA_cFPv */
void daObj_GrA_c::soldierDemo(void* param_0) {
    // NONMATCHING
}

/* 80C07C40-80C07C98 007E20 0058+00 1/1 0/0 0/0 .text            getSrchLinkR__11daObj_GrA_cFv */
void daObj_GrA_c::getSrchLinkR() {
    // NONMATCHING
}

/* 80C07C98-80C07CF0 007E78 0058+00 1/1 0/0 0/0 .text            getSrchGraR__11daObj_GrA_cFv */
void daObj_GrA_c::getSrchGraR() {
    // NONMATCHING
}

/* 80C07CF0-80C07D38 007ED0 0048+00 3/3 0/0 0/0 .text            getSpeed__11daObj_GrA_cFv */
void daObj_GrA_c::getSpeed() {
    // NONMATCHING
}

/* 80C07D38-80C083F0 007F18 06B8+00 1/0 0/0 0/0 .text            standRoll__11daObj_GrA_cFPv */
void daObj_GrA_c::standRoll(void* param_0) {
    // NONMATCHING
}

/* 80C083F0-80C08804 0085D0 0414+00 3/0 0/0 0/0 .text            rollDemo__11daObj_GrA_cFPv */
void daObj_GrA_c::rollDemo(void* param_0) {
    // NONMATCHING
}

/* 80C08804-80C09298 0089E4 0A94+00 4/0 0/0 0/0 .text            rollAttack__11daObj_GrA_cFPv */
void daObj_GrA_c::rollAttack(void* param_0) {
    // NONMATCHING
}

/* 80C09298-80C09918 009478 0680+00 4/0 0/0 0/0 .text            rollAttacked__11daObj_GrA_cFPv */
void daObj_GrA_c::rollAttacked(void* param_0) {
    // NONMATCHING
}

/* 80C09918-80C09F08 009AF8 05F0+00 2/0 0/0 0/0 .text            rollEscape__11daObj_GrA_cFPv */
void daObj_GrA_c::rollEscape(void* param_0) {
    // NONMATCHING
}

/* 80C09F08-80C0A018 00A0E8 0110+00 2/2 0/0 0/0 .text            rollLanding__11daObj_GrA_cFv */
void daObj_GrA_c::rollLanding() {
    // NONMATCHING
}

/* 80C0A018-80C0A120 00A1F8 0108+00 3/0 0/0 0/0 .text            thrown__11daObj_GrA_cFPv */
void daObj_GrA_c::thrown(void* param_0) {
    // NONMATCHING
}

/* 80C0A120-80C0AF94 00A300 0E74+00 2/1 0/0 0/0 .text            demo_camera__11daObj_GrA_cFv */
void daObj_GrA_c::demo_camera() {
    // NONMATCHING
}

/* 80C0AF94-80C0B9AC 00B174 0A18+00 2/1 0/0 0/0 .text            rollAttackedDemo__11daObj_GrA_cFv
 */
void daObj_GrA_c::rollAttackedDemo() {
    // NONMATCHING
}

/* 80C0B9AC-80C0BD90 00BB8C 03E4+00 2/2 0/0 0/0 .text            graThrowDemo__11daObj_GrA_cFv */
void daObj_GrA_c::graThrowDemo() {
    // NONMATCHING
}

/* 80C0BD90-80C0BE5C 00BF70 00CC+00 1/1 0/0 0/0 .text            setCarryStatus__11daObj_GrA_cFv */
void daObj_GrA_c::setCarryStatus() {
    // NONMATCHING
}

/* 80C0BE5C-80C0BF34 00C03C 00D8+00 1/1 0/0 0/0 .text            checkThrow__11daObj_GrA_cFv */
void daObj_GrA_c::checkThrow() {
    // NONMATCHING
}

/* 80C0BF34-80C0C348 00C114 0414+00 5/5 0/0 0/0 .text            calcCatchPos__11daObj_GrA_cFfi */
void daObj_GrA_c::calcCatchPos(f32 param_0, int param_1) {
    // NONMATCHING
}

/* 80C0C348-80C0C364 00C528 001C+00 1/1 0/0 0/0 .text initCrazyBeforeCatch__11daObj_GrA_cFi */
void daObj_GrA_c::initCrazyBeforeCatch(int param_0) {
    // NONMATCHING
}

/* 80C0C364-80C0C3E0 00C544 007C+00 1/1 0/0 0/0 .text executeCrazyBeforeCatch__11daObj_GrA_cFv */
void daObj_GrA_c::executeCrazyBeforeCatch() {
    // NONMATCHING
}

/* 80C0C3E0-80C0C478 00C5C0 0098+00 2/2 0/0 0/0 .text            initCrazyCatch__11daObj_GrA_cFi */
void daObj_GrA_c::initCrazyCatch(int param_0) {
    // NONMATCHING
}

/* 80C0C478-80C0C5F0 00C658 0178+00 1/1 0/0 0/0 .text            executeCrazyCatch__11daObj_GrA_cFv
 */
void daObj_GrA_c::executeCrazyCatch() {
    // NONMATCHING
}

/* 80C0C5F0-80C0C690 00C7D0 00A0+00 1/1 0/0 0/0 .text            initCrazyThrow__11daObj_GrA_cFi */
void daObj_GrA_c::initCrazyThrow(int param_0) {
    // NONMATCHING
}

/* 80C0C690-80C0C84C 00C870 01BC+00 1/1 0/0 0/0 .text            executeCrazyThrow__11daObj_GrA_cFv
 */
void daObj_GrA_c::executeCrazyThrow() {
    // NONMATCHING
}

/* 80C0C84C-80C0CA64 00CA2C 0218+00 3/3 0/0 0/0 .text            initCrazyAttack__11daObj_GrA_cFv */
void daObj_GrA_c::initCrazyAttack() {
    // NONMATCHING
}

/* 80C0CA64-80C0CDBC 00CC44 0358+00 2/2 0/0 0/0 .text executeCrazyJumping__11daObj_GrA_cFv */
void daObj_GrA_c::executeCrazyJumping() {
    // NONMATCHING
}

/* 80C0CDBC-80C0CF10 00CF9C 0154+00 2/2 0/0 0/0 .text            modeChangeCheck__11daObj_GrA_cFv */
void daObj_GrA_c::modeChangeCheck() {
    // NONMATCHING
}

/* 80C0CF10-80C0CF2C 00D0F0 001C+00 2/2 0/0 0/0 .text            getGraPos__10daTagGra_cFv */
// void daTagGra_c::getGraPos() {
extern "C" void getGraPos__10daTagGra_cFv() {
    // NONMATCHING
}

/* 80C0CF2C-80C0CF98 00D10C 006C+00 1/1 0/0 0/0 .text            s_sub2__FPvPv */
static void s_sub2(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80C0CF98-80C0D000 00D178 0068+00 1/1 0/0 0/0 .text checkGraSub__11daObj_GrA_cFP10fopAc_ac_c */
void daObj_GrA_c::checkGraSub(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C0D000-80C0D2FC 00D1E0 02FC+00 1/0 0/0 0/0 .text            waitDemo__11daObj_GrA_cFPv */
void daObj_GrA_c::waitDemo(void* param_0) {
    // NONMATCHING
}

/* 80C0D2FC-80C0D3A8 00D4DC 00AC+00 1/1 0/0 0/0 .text            skipDemoGra__11daObj_GrA_cFv */
void daObj_GrA_c::skipDemoGra() {
    // NONMATCHING
}

/* 80C0D3A8-80C0D3E0 00D588 0038+00 1/1 0/0 0/0 .text            skipCallBack__FPvi */
static void skipCallBack(void* param_0, int param_1) {
    // NONMATCHING
}

/* 80C0D3E0-80C0EFC4 00D5C0 1BE4+00 2/0 0/0 0/0 .text            startDemo__11daObj_GrA_cFPv */
void daObj_GrA_c::startDemo(void* param_0) {
    // NONMATCHING
}

/* 80C0EFC4-80C0F17C 00F1A4 01B8+00 1/1 0/0 0/0 .text            turn__11daObj_GrA_cFsfi */
void daObj_GrA_c::turn(s16 param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 80C0F17C-80C0F330 00F35C 01B4+00 2/2 0/0 0/0 .text            turn_step__11daObj_GrA_cFsiii */
void daObj_GrA_c::turn_step(s16 param_0, int param_1, int param_2, int param_3) {
    // NONMATCHING
}

/* 80C0F330-80C0F590 00F510 0260+00 1/1 0/0 0/0 .text            chkFindPlayer2__11daObj_GrA_cFis */
void daObj_GrA_c::chkFindPlayer2(int param_0, s16 param_1) {
    // NONMATCHING
}

/* 80C0F590-80C0F5A4 00F770 0014+00 1/1 0/0 0/0 .text            getDistTable__12dAttention_cFi */
// void dAttention_c::getDistTable(int param_0) {
extern "C" void getDistTable__12dAttention_cFi() {
    // NONMATCHING
}

/* 80C0F5A4-80C0F668 00F784 00C4+00 1/1 0/0 0/0 .text chkPointInArea__11daObj_GrA_cF4cXyz4cXyzfffs
 */
void daObj_GrA_c::chkPointInArea(cXyz param_0, cXyz param_1, f32 param_2, f32 param_3,
                                     f32 param_4, s16 param_5) {
    // NONMATCHING
}

/* 80C0F668-80C0F6E0 00F848 0078+00 1/1 0/0 0/0 .text
 * chkPointInArea__11daObj_GrA_cF4cXyz4cXyz4cXyzs               */
void daObj_GrA_c::chkPointInArea(cXyz param_0, cXyz param_1, cXyz param_2, s16 param_3) {
    // NONMATCHING
}

/* 80C0F6E0-80C0F7EC 00F8C0 010C+00 1/1 0/0 0/0 .text
 * chkActorInSight2__11daObj_GrA_cFP10fopAc_ac_cfs              */
void daObj_GrA_c::chkActorInSight2(fopAc_ac_c* param_0, f32 param_1, s16 param_2) {
    // NONMATCHING
}

/* 80C0F7EC-80C0F860 00F9CC 0074+00 2/2 0/0 0/0 .text getAttentionPos__11daObj_GrA_cFP10fopAc_ac_c
 */
void daObj_GrA_c::getAttentionPos(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C0F860-80C0FA68 00FA40 0208+00 2/0 0/0 0/0 .text            standWaitJump__11daObj_GrA_cFPv */
void daObj_GrA_c::standWaitJump(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C10AAC-80C10ABC 000214 000C+04 0/0 0/0 0/0 .bss             @5648 */
#pragma push
#pragma force_active on
static u8 lit_5648[12 + 4 /* padding */];
#pragma pop

/* 80C10ABC-80C10AC8 000224 000C+00 0/0 0/0 0/0 .bss             @5651 */
#pragma push
#pragma force_active on
static u8 lit_5651[12];
#pragma pop

/* 80C10AC8-80C10AD4 000230 000C+00 0/0 0/0 0/0 .bss             @5652 */
#pragma push
#pragma force_active on
static u8 lit_5652[12];
#pragma pop

/* 80C10AD4-80C10AE0 00023C 000C+00 0/0 0/0 0/0 .bss             @5653 */
#pragma push
#pragma force_active on
static u8 lit_5653[12];
#pragma pop

/* 80C10AE0-80C10B10 000248 0030+00 0/0 0/0 0/0 .bss             aVec$5647 */
#pragma push
#pragma force_active on
static u8 aVec[48];
#pragma pop

/* 80C10B10-80C10B14 000278 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80C10B10[4];
#pragma pop

/* 80C10B14-80C10B18 00027C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80C10B14[4];
#pragma pop

/* 80C10B18-80C10B1C 000280 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80C10B18[4];
#pragma pop

/* 80C10B1C-80C10B20 000284 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80C10B1C[4];
#pragma pop

/* 80C10B20-80C10B24 000288 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C10B20[4];
#pragma pop

/* 80C10B24-80C10B28 00028C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C10B24[4];
#pragma pop

/* 80C10B28-80C10B2C 000290 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80C10B28[4];
#pragma pop

/* 80C10B2C-80C10B30 000294 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80C10B2C[4];
#pragma pop

/* 80C10B30-80C10B34 000298 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80C10B30[4];
#pragma pop

/* 80C10B34-80C10B38 00029C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80C10B34[4];
#pragma pop

/* 80C10B38-80C10B3C 0002A0 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80C10B38[4];
#pragma pop

/* 80C10B3C-80C10B40 0002A4 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80C10B3C[4];
#pragma pop

/* 80C10B40-80C10B44 0002A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80C10B40[4];
#pragma pop

/* 80C10B44-80C10B48 0002AC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C10B44[4];
#pragma pop

/* 80C10B48-80C10B4C 0002B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80C10B48[4];
#pragma pop

/* 80C10B4C-80C10B50 0002B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80C10B4C[4];
#pragma pop

/* 80C10B50-80C10B54 0002B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80C10B50[4];
#pragma pop

/* 80C10B54-80C10B58 0002BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80C10B54[4];
#pragma pop

/* 80C10B58-80C10B5C 0002C0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80C10B58[4];
#pragma pop

/* 80C10B5C-80C10B60 0002C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80C10B5C[4];
#pragma pop

/* 80C10B60-80C10B64 0002C8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80C10B60[4];
#pragma pop

/* 80C10B64-80C10B68 0002CC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C10B64[4];
#pragma pop

/* 80C10B68-80C10B6C 0002D0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C10B68[4];
#pragma pop

/* 80C10B6C-80C10B70 0002D4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C10B6C[4];
#pragma pop

/* 80C10B70-80C10B74 0002D8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80C10B70[4];
#pragma pop

/* 80C0FE14-80C0FE14 000398 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */