/**
 * @file d_a_npc_hanjo.cpp
 * 
*/

#include "d/actor/d_a_npc_hanjo.h"
#include "d/actor/d_a_npc_tk.h"
#include "d/actor/d_a_player.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "SSystem/SComponent/c_counter.h"
#include "d/actor/d_a_tag_evtarea.h"
#include "d/d_cc_uty.h"
#include "Z2AudioLib/Z2Instances.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__13daNpc_Hanjo_cFv();
extern "C" void create__13daNpc_Hanjo_cFv();
extern "C" void CreateHeap__13daNpc_Hanjo_cFv();
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
extern "C" void Delete__13daNpc_Hanjo_cFv();
extern "C" void Execute__13daNpc_Hanjo_cFv();
extern "C" void Draw__13daNpc_Hanjo_cFv();
extern "C" void createHeapCallBack__13daNpc_Hanjo_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__13daNpc_Hanjo_cFP8J3DJointi();
extern "C" void getType__13daNpc_Hanjo_cFv();
extern "C" void isDelete__13daNpc_Hanjo_cFv();
extern "C" void reset__13daNpc_Hanjo_cFv();
extern "C" void afterJntAnm__13daNpc_Hanjo_cFi();
extern "C" void setParam__13daNpc_Hanjo_cFv();
extern "C" void checkChangeEvt__13daNpc_Hanjo_cFv();
extern "C" void setAfterTalkMotion__13daNpc_Hanjo_cFv();
extern "C" void srchActors__13daNpc_Hanjo_cFv();
extern "C" void evtTalk__13daNpc_Hanjo_cFv();
extern "C" void evtCutProc__13daNpc_Hanjo_cFv();
extern "C" void action__13daNpc_Hanjo_cFv();
extern "C" void beforeMove__13daNpc_Hanjo_cFv();
extern "C" void afterMoved__13daNpc_Hanjo_cFv();
extern "C" void setAttnPos__13daNpc_Hanjo_cFv();
extern "C" void setCollision__13daNpc_Hanjo_cFv();
extern "C" bool drawDbgInfo__13daNpc_Hanjo_cFv();
extern "C" void drawOtherMdl__13daNpc_Hanjo_cFv();
extern "C" void selectAction__13daNpc_Hanjo_cFv();
extern "C" void chkAction__13daNpc_Hanjo_cFM13daNpc_Hanjo_cFPCvPvPv_i();
extern "C" void setAction__13daNpc_Hanjo_cFM13daNpc_Hanjo_cFPCvPvPv_i();
extern "C" void initShoot__13daNpc_Hanjo_cFi();
extern "C" void shoot__13daNpc_Hanjo_cFi();
extern "C" void initDive__13daNpc_Hanjo_cFv();
extern "C" void dive__13daNpc_Hanjo_cFv();
extern "C" void lookround__13daNpc_Hanjo_cFs();
extern "C" void commandToHawk__13daNpc_Hanjo_cFv();
extern "C" void cutConversationAboutSaru__13daNpc_Hanjo_cFi();
extern "C" void cutConversation__13daNpc_Hanjo_cFi();
extern "C" void cutPursuitBee__13daNpc_Hanjo_cFi();
extern "C" void cutAppearHawker__13daNpc_Hanjo_cFi();
extern "C" void cutDive__13daNpc_Hanjo_cFi();
extern "C" void wait__13daNpc_Hanjo_cFPv();
extern "C" void throwStone__13daNpc_Hanjo_cFPv();
extern "C" void takayose__13daNpc_Hanjo_cFPv();
extern "C" void talk__13daNpc_Hanjo_cFPv();
extern "C" static void daNpc_Hanjo_Create__FPv();
extern "C" static void daNpc_Hanjo_Delete__FPv();
extern "C" static void daNpc_Hanjo_Execute__FPv();
extern "C" static void daNpc_Hanjo_Draw__FPv();
extern "C" static bool daNpc_Hanjo_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__13daNpcT_Path_cFv();
extern "C" void __ct__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void
__ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__15daNpcT_JntAnm_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs();
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs();
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_809FFE6C(void* _this, int*);
extern "C" void func_809FFE88(void* _this, f32, f32);
extern "C" void __sinit_d_a_npc_hanjo_cpp();
extern "C" void __dt__18daNpc_HanjoStone_cFv();
extern "C" void
__ct__13daNpc_Hanjo_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __ct__18daNpc_HanjoStone_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" s32 getEyeballMaterialNo__13daNpc_Hanjo_cFv();
extern "C" void getPos__18daNpc_HanjoStone_cFv();
extern "C" void getOld__18daNpc_HanjoStone_cFv();
extern "C" void posMoveF__18daNpc_HanjoStone_cFP10fopAc_ac_c();
extern "C" void setPos__18daNpc_HanjoStone_cF4cXyz();
extern "C" s32 getHeadJointNo__13daNpc_Hanjo_cFv();
extern "C" s32 getNeckJointNo__13daNpc_Hanjo_cFv();
extern "C" bool getBackboneJointNo__13daNpc_Hanjo_cFv();
extern "C" void setAngle__18daNpc_HanjoStone_cF5csXyz();
extern "C" void checkChangeJoint__13daNpc_Hanjo_cFi();
extern "C" void checkRemoveJoint__13daNpc_Hanjo_cFi();
extern "C" s32 getFootLJointNo__13daNpc_Hanjo_cFv();
extern "C" s32 getFootRJointNo__13daNpc_Hanjo_cFv();
extern "C" void __dt__19daNpc_Hanjo_Param_cFv();
extern "C" static void func_80A0057C();
extern "C" static void func_80A00584();
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz();
extern "C" u8 const m__19daNpc_Hanjo_Param_c[180];
extern "C" u8 const mStoneCcDObjInfo__13daNpc_Hanjo_c[48];
extern "C" extern char const* const d_a_npc_hanjo__stringBase0;
extern "C" void* mCutNameList__13daNpc_Hanjo_c[6];
extern "C" u8 mCutList__13daNpc_Hanjo_c[72];
extern "C" u8 mStoneCcDSph__13daNpc_Hanjo_c[64];

//
// External References:
//

extern "C" void mDoMtx_XYZrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_getWaterY__FPC4cXyzPf();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isCollect__20dSv_player_collect_cCFiUc();
extern "C" void onSwitch__12dSv_memBit_cFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setSkipZev__14dEvt_control_cFPvPc();
extern "C" void onSkipFade__14dEvt_control_cFv();
extern "C" void setPt2__14dEvt_control_cFPv();
extern "C" void setPtT__14dEvt_control_cFPv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void setGoal__16dEvent_manager_cFP4cXyz();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcT_ActorMngr_cFv();
extern "C" void getActorP__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void checkEndSequence__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__13daNpcT_Path_cFv();
extern "C" void setPathInfo__13daNpcT_Path_cFUcScUc();
extern "C" void getDstPosH__13daNpcT_Path_cF4cXyzP4cXyzii();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz();
extern "C" void calcJntRad__15daNpcT_JntAnm_cFfff();
extern "C" void setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs();
extern "C" void calc__19daNpcT_DmgStagger_cFi();
extern "C" void tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void getTrnsfrmKeyAnmP__8daNpcT_cFPCci();
extern "C" void loadRes__8daNpcT_cFPCScPPCc();
extern "C" void deleteRes__8daNpcT_cFPCScPPCc();
extern "C" void execute__8daNpcT_cFv();
extern "C" void draw__8daNpcT_cFiifP11_GXColorS10fiii();
extern "C" void setEnvTevColor__8daNpcT_cFv();
extern "C" void setRoomNo__8daNpcT_cFv();
extern "C" void ctrlBtk__8daNpcT_cFv();
extern "C" void setMtx__8daNpcT_cFv();
extern "C" void ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel();
extern "C" void evtProc__8daNpcT_cFv();
extern "C" void setFootPos__8daNpcT_cFv();
extern "C" void setFootPrtcl__8daNpcT_cFP4cXyzff();
extern "C" bool checkCullDraw__8daNpcT_cFv();
extern "C" void twilight__8daNpcT_cFv();
extern "C" void evtOrder__8daNpcT_cFv();
extern "C" void evtChange__8daNpcT_cFv();
extern "C" void clrParam__8daNpcT_cFv();
extern "C" void setFaceMotionAnm__8daNpcT_cFib();
extern "C" void setMotionAnm__8daNpcT_cFifi();
extern "C" void setPos__8daNpcT_cF4cXyz();
extern "C" void setAngle__8daNpcT_cF5csXyz();
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void hitChk__8daNpcT_cFP12dCcD_GObjInfUl();
extern "C" void setDamage__8daNpcT_cFiii();
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void getEvtAreaTagP__8daNpcT_cFii();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_onEvtBit__FUl();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_onTmpBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_set_actcol_ratio__Ff();
extern "C" void dKy_set_bgcol_ratio__Ff();
extern "C" void dKy_set_fogcol_ratio__Ff();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void remove__10dMsgFlow_cFv();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
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
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcT_c[68];
extern "C" extern void* __vt__8daNpcT_c[49];
extern "C" extern void* __vt__15daNpcT_MatAnm_c[4 + 1 /* padding */];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz();
extern "C" void __register_global_object();

//
// Declarations:
//



/* 80A00940-80A0094C 000000 000C+00 3/3 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A0094C-80A00960 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80A00960-80A00980 000020 0020+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[4][2] = {
    {14, 1}, {26, 2},
    {25, 2}, {3, 4},
};

/* 80A00980-80A009D8 -00001 0058+00 1/2 0/0 0/0 .data            l_evtList */
SECTION_DATA static daNpcT_evtData_c l_evtList[11] = {
    {"", 0},
    {"NO_RESPONSE", 0},
    {"CONVERSATION_ABOUT_SARU01", 5},
    {"CONVERSATION_ABOUT_SARU02", 5},
    {"CONVERSATION_ABOUT_HONEYCOMB1", 2},
    {"CONVERSATION_ABOUT_HONEYCOMB2", 2},
    {"CONVERSATION_ABOUT_HONEYCOMB3", 2},
    {"CONVERSATION_ABOUT_HONEYCOMB4", 2},
    {"PURSUIT_BEE", 2},
    {"APPEAR_HAWKER", 3},
    {"DIVE", 3},
};



/* 80A009D8-80A009F0 -00001 0018+00 3/4 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[6] = {
    "",
    "Hanjo",
    "Hanjo1",
    "Hanjo2",
    "J_Tobi",
    "Sera",
};

/* ############################################################################################## */
/* 80A007F8-80A007F8 0001F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A008F0 = "CONVERSATION_ABOUT_SARU";
SECTION_DEAD static char const* const stringBase_80A00908 = "CONVERSATION";
#pragma pop

/* 80A009F0-80A009F4 0000B0 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[3] = {
    1,
    2,
    -1,
};

/* 80A009F4-80A009FC 0000B4 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn1 */
static s8 l_loadResPtrn1[5] = {
    1,
    2,
    3,
    4,
    -1,
};

/* 80A009FC-80A00A00 0000BC 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn2 */
static s8 l_loadResPtrn2[2] = {
    1, -1
};

/* 80A00A00-80A00A08 0000C0 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn9 */
static s8 l_loadResPtrn9[5] = {
    1,
    2,
    3,
    4,
    -1,
};

/* 80A00A08-80A00A1C -00001 0014+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[5] = {
    l_loadResPtrn0, l_loadResPtrn1, l_loadResPtrn1,
    l_loadResPtrn2, l_loadResPtrn9,
};

/* 80A00A1C-80A00B34 0000DC 0118+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[10] = {
    {-1, 0, 0, 20, 2, 1, 1}, 
    {7, 0, 1, 20, 2, 1, 1}, 
    {7, 0, 2, 34, 0, 2, 0},
     {8, 2, 2, 35, 2, 2, 0},
     {10, 2, 2, 37, 2, 2, 0},
     {12, 2, 2, 39, 2, 2, 0}, 
     {5, 0, 3, 16, 0, 3, 0},
     {6, 2, 3, 17, 2, 3, 0}, 
     {9, 0, 2, 36, 0, 2, 0},
     { 11, 2, 2, 38, 2, 2, 0},
};
#pragma pop

/* 80A00B34-80A00DB8 0001F4 0284+00 1/2 0/0 0/0 .data            l_motionAnmData */
SECTION_DATA static int l_motionAnmData[161] = {
    11, 2, 1, 17, 0, 1, 65536, 22, 2, 2, 17, 0, 1, 65536, 16, 2, 2, 17, 0, 1, 65536,
    13, 2, 2, 17, 0, 1, 65536, 21, 2, 2, 31, 2, 2, 0,     20, 0, 2, 30, 0, 2, 0,
    14, 0, 2, 29, 0, 2, 0,     8,  2, 1, 17, 0, 1, 65536, 6,  0, 1, 17, 0, 1, 65536,
    17, 2, 2, 17, 0, 1, 65536, 18, 2, 2, 17, 0, 1, 65536, 19, 0, 2, 17, 0, 1, 65536,
    15, 0, 2, 17, 0, 1, 65536, 13, 2, 3, 17, 0, 1, 65536, 9,  2, 3, 17, 0, 1, 65536,
    12, 2, 3, 17, 0, 1, 65536, 7,  0, 3, 17, 0, 1, 65536, 8,  2, 3, 17, 0, 1, 65536,
    10, 0, 3, 17, 0, 1, 65536, 9,  0, 1, 17, 0, 1, 65536, 11, 0, 3, 17, 0, 1, 65536,
    10, 0, 1, 17, 0, 1, 65536, -1, 0, 0, 17, 0, 1, 65536};

/* 80A00DB8-80A00E38 000478 0080+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[32] = {
    {1, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {2, -1, 1}, {4, 0, 0},  {-1, 0, 0}, {-1, 0, 0},
    {8, -1, 1}, {9, 0, 0},  {-1, 0, 0}, {-1, 0, 0}, {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 1}, {7, 0, 0},  {-1, 0, 0}, {-1, 0, 0}, {4, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}};

/* 80A00E38-80A00F78 0004F8 0140+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[80] = {
    {0, -1, 0},  {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {21, -1, 1}, {0, 0, 0},   {-1, 0, 0},
    {-1, 0, 0},  {4, -1, 0},  {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {11, -1, 1}, {9, 0, 0},
    {-1, 0, 0},  {-1, 0, 0},  {12, -1, 1}, {2, 0, 0},   {-1, 0, 0},  {-1, 0, 0},  {1, -1, 0},
    {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {3, -1, 0},  {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},
    {10, -1, 0}, {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {16, -1, 1}, {17, 0, 0},  {-1, 0, 0},
    {-1, 0, 0},  {18, -1, 1}, {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {20, 4, 1},  {-1, 0, 0},
    {-1, 0, 0},  {-1, 0, 0},  {13, -1, 0}, {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {14, -1, 0},
    {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {15, -1, 0}, {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},
    {19, 4, 1},  {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {6, -1, 1},  {5, 0, 1},   {-1, 0, 0},
    {-1, 0, 0},  {6, -1, 1},  {5, 0, 1},   {4, 0, 0},   {-1, 0, 0},  {7, -1, 0},  {-1, 0, 0},
    {-1, 0, 0},  {-1, 0, 0},  {8, -1, 0},  {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {9, -1, 0},
    {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0}};

/* 80A00F78-80A00F90 -00001 0018+00 1/1 0/0 0/0 .data            mCutNameList__13daNpc_Hanjo_c */
SECTION_DATA char* daNpc_Hanjo_c::mCutNameList[6] = {
    "",
    "CONVERSATION_ABOUT_SARU",
    "CONVERSATION",
    "PURSUIT_BEE",
    "APPEAR_HAWKER",
    "DIVE",
};

// /* 80A00F90-80A00F9C -00001 000C+00 0/1 0/0 0/0 .data            @3854 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_3854[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)cutConversationAboutSaru__13daNpc_Hanjo_cFi,
// };
// #pragma pop

// /* 80A00F9C-80A00FA8 -00001 000C+00 0/1 0/0 0/0 .data            @3855 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_3855[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)cutConversation__13daNpc_Hanjo_cFi,
// };
// #pragma pop

// /* 80A00FA8-80A00FB4 -00001 000C+00 0/1 0/0 0/0 .data            @3856 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_3856[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)cutPursuitBee__13daNpc_Hanjo_cFi,
// };
// #pragma pop

// /* 80A00FB4-80A00FC0 -00001 000C+00 0/1 0/0 0/0 .data            @3857 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_3857[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)cutAppearHawker__13daNpc_Hanjo_cFi,
// };
// #pragma pop

// /* 80A00FC0-80A00FCC -00001 000C+00 0/1 0/0 0/0 .data            @3858 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_3858[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)cutDive__13daNpc_Hanjo_cFi,
// };
// #pragma pop

/* 80A00FCC-80A01014 00068C 0048+00 1/2 0/0 0/0 .data            mCutList__13daNpc_Hanjo_c */
daNpc_Hanjo_c::cutFunc daNpc_Hanjo_c::mCutList[6] = {
    &daNpc_Hanjo_c::cutConversationAboutSaru,
    &daNpc_Hanjo_c::cutConversation,
    &daNpc_Hanjo_c::cutPursuitBee,
    &daNpc_Hanjo_c::cutAppearHawker,
    &daNpc_Hanjo_c::cutDive,
    NULL,
};

/* 80A01014-80A01054 0006D4 0040+00 0/1 0/0 0/0 .data            mStoneCcDSph__13daNpc_Hanjo_c */
#pragma push
#pragma force_active on
SECTION_DATA u8 daNpc_Hanjo_c::mStoneCcDSph[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop


// /* 80A010F8-80A01104 0007B8 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
// SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)calc__11J3DTexNoAnmCFPUs,
// };

// /* 80A01104-80A01110 0007C4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
// SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__8cM3dGSphFv,
// };

// /* 80A01110-80A0111C 0007D0 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
// SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__12J3DFrameCtrlFv,
// };

// /* 80A0111C-80A01140 0007DC 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
// SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__12dBgS_ObjAcchFv,
//     (void*)NULL,
//     (void*)NULL,
//     (void*)func_80A00584,
//     (void*)NULL,
//     (void*)NULL,
//     (void*)func_80A0057C,
// };

// /* 80A01140-80A0114C 000800 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
// SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__12dBgS_AcchCirFv,
// };

// /* 80A0114C-80A01158 00080C 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
// SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__10cCcD_GSttsFv,
// };

// /* 80A01158-80A01164 000818 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
// SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__10dCcD_GSttsFv,
// };

// /* 80A01164-80A01170 000824 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
// SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
// };

// /* 80A01170-80A0117C 000830 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
// SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__18daNpcT_ActorMngr_cFv,
// };

// /* 80A0117C-80A01188 00083C 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
// SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__15daNpcT_JntAnm_cFv,
// };

// /* 80A01188-80A01194 000848 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGAab */
// SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__8cM3dGAabFv,
// };

// /* 80A01194-80A011A0 000854 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
// SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__8cM3dGCylFv,
// };

// /* 80A011A0-80A011AC 000860 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
// SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__13daNpcT_Path_cFv,
// };

// /* 80A011AC-80A01270 00086C 00C4+00 2/2 0/0 0/0 .data            __vt__13daNpc_Hanjo_c */
// SECTION_DATA extern void* __vt__13daNpc_Hanjo_c[49] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__13daNpc_Hanjo_cFv,
//     (void*)ctrlBtk__8daNpcT_cFv,
//     (void*)ctrlSubFaceMotion__8daNpcT_cFi,
//     (void*)checkChangeJoint__13daNpc_Hanjo_cFi,
//     (void*)checkRemoveJoint__13daNpc_Hanjo_cFi,
//     (void*)getBackboneJointNo__13daNpc_Hanjo_cFv,
//     (void*)getNeckJointNo__13daNpc_Hanjo_cFv,
//     (void*)getHeadJointNo__13daNpc_Hanjo_cFv,
//     (void*)getFootLJointNo__13daNpc_Hanjo_cFv,
//     (void*)getFootRJointNo__13daNpc_Hanjo_cFv,
//     (void*)getEyeballLMaterialNo__8daNpcT_cFv,
//     (void*)getEyeballRMaterialNo__8daNpcT_cFv,
//     (void*)getEyeballMaterialNo__13daNpc_Hanjo_cFv,
//     (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
//     (void*)afterJntAnm__13daNpc_Hanjo_cFi,
//     (void*)setParam__13daNpc_Hanjo_cFv,
//     (void*)checkChangeEvt__13daNpc_Hanjo_cFv,
//     (void*)evtTalk__13daNpc_Hanjo_cFv,
//     (void*)evtEndProc__8daNpcT_cFv,
//     (void*)evtCutProc__13daNpc_Hanjo_cFv,
//     (void*)setAfterTalkMotion__13daNpc_Hanjo_cFv,
//     (void*)evtProc__8daNpcT_cFv,
//     (void*)action__13daNpc_Hanjo_cFv,
//     (void*)beforeMove__13daNpc_Hanjo_cFv,
//     (void*)afterMoved__13daNpc_Hanjo_cFv,
//     (void*)setAttnPos__13daNpc_Hanjo_cFv,
//     (void*)setFootPos__8daNpcT_cFv,
//     (void*)setCollision__13daNpc_Hanjo_cFv,
//     (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
//     (void*)checkCullDraw__8daNpcT_cFv,
//     (void*)twilight__8daNpcT_cFv,
//     (void*)chkXYItems__8daNpcT_cFv,
//     (void*)evtOrder__8daNpcT_cFv,
//     (void*)decTmr__8daNpcT_cFv,
//     (void*)clrParam__8daNpcT_cFv,
//     (void*)drawDbgInfo__13daNpc_Hanjo_cFv,
//     (void*)drawOtherMdl__13daNpc_Hanjo_cFv,
//     (void*)drawGhost__8daNpcT_cFv,
//     (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
//     (void*)afterSetMotionAnm__8daNpcT_cFiifi,
//     (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
//     (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
//     (void*)changeAnm__8daNpcT_cFPiPi,
//     (void*)changeBck__8daNpcT_cFPiPi,
//     (void*)changeBtp__8daNpcT_cFPiPi,
//     (void*)changeBtk__8daNpcT_cFPiPi,
//     (void*)setMotionAnm__8daNpcT_cFifi,
// };

/* 809F908C-809F9278 0000EC 01EC+00 1/0 0/0 0/0 .text            __dt__13daNpc_Hanjo_cFv */
daNpc_Hanjo_c::~daNpc_Hanjo_c() {
    OS_REPORT("|%06d:%x|daNpc_Hanjo_c -> デストラクト\n", g_Counter, this);
    if (mpMorf[0] != 0) {
        mpMorf[0]->stopZelAnime();
    }
    deleteRes(l_loadResPtrnList[mType], (char const**)l_resNameList);
}

/* ############################################################################################## */
/* 80A00600-80A006B4 000000 00B4+00 19/19 0/0 0/0 .rodata          m__19daNpc_Hanjo_Param_c */
daNpc_Hanjo_Param_c::Data const daNpc_Hanjo_Param_c::m = {
    160.0f, -3.0f, 1.0f, 400.0f, 
    255.0f, 160.0f, 35.0f, 30.0f, 0.0f, 0.0f, 10.0f, -10.0f, 30.0f, -10.0f, 45.0f,
    -45.0f, 0.6f, 12.0f, 3, 6, 5, 6, 110.0f, 500.0f, 300.0f, -300.0f, 60, 8, 0, 0, 
    4.0f, 0.0f, 0.0f,
    0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 24.0f, 16.0f, 4.0f,
     80.0f, 65.0f, 4.0f, 600.0f, 136.0f, 0x500, 90, 90, 2,
};

/* 80A006B4-80A006E4 0000B4 0030+00 1/1 0/0 0/0 .rodata          mStoneCcDObjInfo__13daNpc_Hanjo_c
 */
dCcD_SrcGObjInf const daNpc_Hanjo_c::mStoneCcDObjInfo = {
    {0, {{0, 0, 0}, {0, 0}, {0x79}}},
    {0, 0, 0, 0, {0}},
    {0, 0, 0, 0, {0}},
    {{0}},
};

/* 80A006E4-80A006F8 0000E4 0014+00 0/1 0/0 0/0 .rodata          heapSize$4058 */
static int const heapSize[5] = {
    0x61B0, 0x41D0, 0x39D0, 0x39C0, 0,
};

/* 809F9278-809F9578 0002D8 0300+00 1/1 0/0 0/0 .text            create__13daNpc_Hanjo_cFv */
int daNpc_Hanjo_c::create() {
    fopAcM_SetupActor2(this, daNpc_Hanjo_c, l_faceMotionAnmData,
                       (daNpcT_motionAnmData_c*)l_motionAnmData, l_faceMotionSequenceData, 4,
                       l_motionSequenceData, 4, l_evtList, l_resNameList);
    mType = getType();
    field_0xa7c = getFlowNodeNo();
    mTwilight = 0;
    int rv = loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (rv == cPhs_COMPLEATE_e) {
        OS_REPORT("\t(%s:%d) flowNo:%d, PathID:%02x<%08x> ", fopAcM_getProcNameString(this), (uint)mType,
                              field_0xa7c, getPathID(), fopAcM_GetParam(this));
        if (isDelete()) {
            return cPhs_ERROR_e;
        }
        OS_REPORT("\n");
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize[mType])) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        } 
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, modelData);
        mSound.init(&current.pos, &eyePos, 3, 1);
        field_0x9c0.init(&mAcch, 60.0f, 0.0f);
        reset();
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1,
                        &field_0x8a0, fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this),
                        fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_Hanjo_Param_c::m.field_0x10, 0, this);
        mCyl1.Set(mCcDCyl);
        mCyl1.SetStts(&mCcStts);
        mCyl1.SetTgHitCallback(tgHitCallBack);
        mCyl2.Set(mCcDCyl);
        mCyl2.SetStts(&mCcStts);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        if (mGroundH != -1e9f) {
            setEnvTevColor();
            setRoomNo();
        }
        for (int i = 0; i < 4; i ++) {
            mStones[i].getSphP()->Set(*(dCcD_SrcSph*)&mStoneCcDSph);
            mStones[i].getSphP()->SetStts(&mCcStts);
        }
        field_0xa88 = 1;
        Execute();
        field_0xa88 = 0;
    }
    return rv;
}

/* 80A00710-80A00718 000110 0008+00 0/1 0/0 0/0 .rodata          bmdTypeList$4495 */
static int const bmdTypeList[2] = {
    2, 3,
};
COMPILER_STRIP_GATE(0x80A00710, &bmdTypeList);

// /* 80A00718-80A0071C 000118 0004+00 1/9 0/0 0/0 .rodata          @4593 */
// SECTION_RODATA static f32 const lit_4593 = 1.0f;
// COMPILER_STRIP_GATE(0x80A00718, &lit_4593);

/* 809F9578-809F997C 0005D8 0404+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_Hanjo_cFv */
int daNpc_Hanjo_c::CreateHeap() {
    J3DModelData* modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(
        l_resNameList[l_bmdData[0][1]], l_bmdData[0][0]));
    if (modelData == NULL) {
        return 0;
    }
    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound,
                                     0x80000, 0x11020284);
    if (mpMorf[0] == NULL || mpMorf[0]->getModel() == NULL) {
        return 0;
    }
    J3DModel* model = mpMorf[0]->getModel();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);
    mpMatAnm = new daNpcT_MatAnm_c();
    if (mpMatAnm == NULL) {
        return 0;
    }
    switch (mType) {
    case TYPE_0:
        for (int i = 0; i < 1; i++) {
            if (l_bmdData[bmdTypeList[i]][0] >= 0) {
                modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[bmdTypeList[i]][1]],
                                                                l_bmdData[bmdTypeList[i]][0]);
            } else {
                modelData = 0;
            }
            if (modelData != NULL) {
                mModel1 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
            } else {
                mModel1 = NULL;
            }
        }
        for (int i = 0; i < 4; i++) {
            if (l_bmdData[bmdTypeList[1]][0] >= 0) {
                modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[1][1]], l_bmdData[1][0]);
            } else {
                modelData = NULL;
            }
            if (modelData != NULL) {
                model = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
            } else {
                model = NULL;
            }
            mStones[i].setModel(model);
        }
        break;
    case TYPE_1:
        for (int i = 1; i < 2; i++) {
            if (l_bmdData[bmdTypeList[i]][0] >= 0) {
                modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[bmdTypeList[i]][1]],
                                                                l_bmdData[bmdTypeList[i]][0]);
            } else {
                modelData = NULL;
            }
            if (modelData != NULL) {
                mModel2 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
            } else {
                mModel2 = NULL;
            }
        }
        break;
    }
    
    if (setFaceMotionAnm(1, false) && setMotionAnm(0, 0.0f, 0))
    {
        return 1;
    }
    return 0;
}

/* 809F9B38-809F9B6C 000B98 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_Hanjo_cFv */
int daNpc_Hanjo_c::Delete() {
    OS_REPORT("|%06d:%x|daNpc_Hanjo_c -> Delete\n", g_Counter, this);
    fopAcM_GetID(this);
    this->~daNpc_Hanjo_c();
    return 1;
}

/* 809F9B6C-809F9B8C 000BCC 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_Hanjo_cFv */
int daNpc_Hanjo_c::Execute() {
    return daNpcT_c::execute();
}

/* 809F9B8C-809F9C20 000BEC 0094+00 1/1 0/0 0/0 .text            Draw__13daNpc_Hanjo_cFv */
int daNpc_Hanjo_c::Draw() {
    if (mpMatAnm != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm);
    }
    return daNpcT_c::draw(0, 0, field_0xde8, NULL, 100.0f, 0, 0, 0);
}

/* 809F9C20-809F9C40 000C80 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_Hanjo_cFP10fopAc_ac_c            */
int daNpc_Hanjo_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpc_Hanjo_c*>(i_this)->CreateHeap();
}

/* 809F9C40-809F9C98 000CA0 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_Hanjo_cFP8J3DJointi               */
int daNpc_Hanjo_c::ctrlJointCallBack(J3DJoint* param_1, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Hanjo_c* i_this = reinterpret_cast<daNpc_Hanjo_c*>(model->getUserArea());
        if (i_this != 0) {
            i_this->ctrlJoint(param_1, model);
        }
    }
    return 1;
}

/* 809F9C98-809F9CF0 000CF8 0058+00 1/1 0/0 2/2 .text            getType__13daNpc_Hanjo_cFv */
u8 daNpc_Hanjo_c::getType() {
    switch ((u8)fopAcM_GetParam(this)) {
    case 0:
        return TYPE_0;
    case 1:
        return TYPE_1;
    case 2:
        return TYPE_2;
    case 3:
        return TYPE_3;
    default:
        return TYPE_4;
    }
}

/* 809F9CF0-809F9D9C 000D50 00AC+00 1/1 0/0 0/0 .text            isDelete__13daNpc_Hanjo_cFv */
int daNpc_Hanjo_c::isDelete() {
    switch (mType) {
    case TYPE_0:
        return FALSE;
    case TYPE_1: {
        bool rv = true;
        if (!daNpcT_chkEvtBit(0xd0) && !dComIfGs_isCollectShield(0)) {
            rv = false;
        }
        return rv;
    }
    case TYPE_2:
        return FALSE;
    case TYPE_3:
        return FALSE;
    default:
        return FALSE;
    }
}

/* 809F9D9C-809F9FCC 000DFC 0230+00 1/1 0/0 0/0 .text            reset__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::reset() {
    csXyz acStack_20;
    int iVar1 = (u8*)&field_0x1728 - (u8*)&field_0x16e0;
    if (mpMatAnm != NULL) {
        mpMatAnm->initialize();
    }
    initialize();
    for (int i = 0; i < 4; i++) {
        field_0x10c8[i].initialize();
    }
    memset(&field_0x16e0, 0, iVar1);
    if (getPathID() != 0xff) {
        field_0x10e8.initialize();
        field_0x10e8.setPathInfo(getPathID(), fopAcM_GetRoomNo(this), 0);
    }
    acStack_20.setall(0);
    acStack_20.y = home.angle.y;
    switch(mType) {
    case TYPE_0:
        if (daNpcT_chkEvtBit(0xad)) {
            field_0x1718 = 1.0f;
        }
        break;
    case TYPE_1:
        if (daNpcT_chkEvtBit(0xcf)) {
            home.angle.y += 0x8000;
            acStack_20.y = home.angle.y;
        }
        break;
    case TYPE_2:
        break;
    }
    daNpcT_offTmpBit(0xac);
    if (daNpcT_chkEvtBit(0xb1)) {
        daNpcT_onTmpBit(0xac);
    }
    setAngle(acStack_20);
}

/* 809F9FCC-809FA050 00102C 0084+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_Hanjo_cFi */
void daNpc_Hanjo_c::afterJntAnm(int param_1) {
    if (param_1 == 1) {
        mDoMtx_stack_c::YrotM(field_0xd08.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(-field_0xd08.getAngleX(1));
    } else if (param_1 == 4) {
        mDoMtx_stack_c::YrotM(field_0xd08.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(field_0xd08.getAngleX(0));
    }
}

/* 809FA050-809FA1C4 0010B0 0174+00 1/0 0/0 0/0 .text            setParam__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::setParam() {
    selectAction();
    srchActors();
    s16 sVar6 = daNpc_Hanjo_Param_c::m.field_0x48;
    s16 sVar5 = daNpc_Hanjo_Param_c::m.field_0x4a;
    s16 sVar4 = daNpc_Hanjo_Param_c::m.field_0x4c;
    s16 sVar1 = daNpc_Hanjo_Param_c::m.field_0x4e;
    if (field_0x1721 != 0) {
        sVar6 = 6;
        sVar5 = 6;
    } else if (mType == TYPE_2) {
        sVar6 = 4;
        sVar5 = 6;
    }
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (player->checkHorseRide() != 0) {
        if (sVar6 < 7) {
            sVar6 = 7;
        }
        if (sVar4 < 9) {
            sVar4 = 9;
        }
    }
    attention_info.distances[0] = daNpcT_getDistTableIdx(sVar4, sVar1);
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = daNpcT_getDistTableIdx(sVar6, sVar5);
    attention_info.flags = 0xa;
    scale.set(daNpc_Hanjo_Param_c::m.field_0x08, daNpc_Hanjo_Param_c::m.field_0x08,
              daNpc_Hanjo_Param_c::m.field_0x08);
    mCcStts.SetWeight(daNpc_Hanjo_Param_c::m.field_0x10);
    field_0xdec = daNpc_Hanjo_Param_c::m.field_0x14;
    field_0xdf0 = daNpc_Hanjo_Param_c::m.field_0x1c;
    field_0xdf8 = daNpc_Hanjo_Param_c::m.field_0x50;
    field_0x8a0.SetWallR(field_0xdf0);
    field_0x8a0.SetWallH(daNpc_Hanjo_Param_c::m.field_0x18);
    field_0xde8 = daNpc_Hanjo_Param_c::m.field_0x0c;
    field_0xa80 = daNpc_Hanjo_Param_c::m.field_0x6c;
    field_0xa84 = daNpc_Hanjo_Param_c::m.field_0x44;
    gravity = daNpc_Hanjo_Param_c::m.field_0x04;
}

/* 809FA1C4-809FA3B8 001224 01F4+00 1/0 0/0 0/0 .text            checkChangeEvt__13daNpc_Hanjo_cFv
 */
BOOL daNpc_Hanjo_c::checkChangeEvt() {
    if (!chkAction(&daNpc_Hanjo_c::talk)) {
        field_0xe2e[0] = 0;
        if (dComIfGp_event_chkTalkXY()) {
            if (dComIfGp_evmng_ChkPresentEnd()) {
                mEvtNo = 1;
                evtChange();
            }
            return true;
        }
        u16 sVar3 = 0;
        switch (mType) {
        case TYPE_0:
            if (field_0x1723 == 0 &&
                !daNpcT_chkEvtBit(0xac) && !daNpcT_chkEvtBit(0xab) &&
                !daNpcT_chkEvtBit(0xb7))
            {
                if (daNpcT_chkEvtBit(0x235)) {
                    if (!daNpcT_chkEvtBit(0x243) && !daNpcT_chkEvtBit(0x26f)) {
                        sVar3 = 7;
                    }
                } else {
                    if (daNpcT_chkEvtBit(0x18)) {
                        if (!daNpcT_chkEvtBit(0x243)) {
                            sVar3 = 5;
                        } else {
                            if (!daNpcT_chkEvtBit(0x8b)) {
                                sVar3 = 6;
                            }
                        }
                    } else {
                        if (!daNpcT_chkEvtBit(0x243)) {
                            sVar3 = 4;
                        }
                    }
                    
                }
                if (sVar3 != 0) {
                    mEvtNo = sVar3;
                    evtChange();
                    return true;
                }
            }
            break;
        case TYPE_3:
            if (daNpcT_chkEvtBit(0x24d)) {
                mEvtNo = 3;
            } else {
                mEvtNo = 2;
            }
            evtChange();
            return 1;
        }
    }
    return false;
}


/* 809FA3B8-809FA45C 001418 00A4+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::setAfterTalkMotion() {
    int iVar2 = 7;
    switch(mFaceMotionSeqMngr.getNo()) {
    case 1:
        iVar2 = 5;
        break;
    case 2:
        iVar2 = 3;
        break;
    case 3:
        break;
    case 4:
        iVar2 = 6;
        break;
    }
    mFaceMotionSeqMngr.setNo(iVar2, -1.0f, 0, 0);
}

/* 809FA45C-809FA55C 0014BC 0100+00 1/1 0/0 0/0 .text            srchActors__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::srchActors() {
    switch(mType) {
    case TYPE_0:
        if (field_0x10c8[0].getActorP() == NULL) {
            field_0x10c8[0].entry(getNearestActorP(0x1e8));
        }
        break;
    case TYPE_1:
        if (field_0x10c8[2].getActorP() == NULL) {
            field_0x10c8[2].entry(getNearestActorP(0x100));
        }
        if (field_0x10c8[3].getActorP() == NULL) {
            field_0x10c8[3].entry(getEvtAreaTagP(0x16, 0));
        }
        break;
    case TYPE_2:
        break;
    case TYPE_3:
        if (field_0x10c8[1].getActorP() == NULL) {
            field_0x10c8[1].entry(getNearestActorP(0x245));
        }
        break;
    }
}

/* 809FA55C-809FA5FC 0015BC 00A0+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_Hanjo_cFv */
BOOL daNpc_Hanjo_c::evtTalk() {
    if (chkAction(&daNpc_Hanjo_c::talk)) {
        (this->*field_0x16ec)(NULL);
    } else {
        setAction(&daNpc_Hanjo_c::talk);
    }
    return 1;
}

/* 809FA5FC-809FA6C4 00165C 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_Hanjo_cFv */
BOOL daNpc_Hanjo_c::evtCutProc() {
    int staffId = dComIfGp_getEventManager().getMyStaffId("Hanjo", this, -1);
    if (staffId != -1) {
        field_0xdac = staffId;
        int actIdx =
            dComIfGp_getEventManager().getMyActIdx(field_0xdac, (char**)mCutNameList, 6, 0, 0);
        if ((this->*(mCutList[actIdx]))(field_0xdac) != 0) {
            dComIfGp_getEventManager().cutEnd(field_0xdac);
        }
        return true;
    } 
    return false;
}

/* 809FA6C4-809FA88C 001724 01C8+00 1/0 0/0 0/0 .text            action__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::action() {
    fopAc_ac_c* hitActor = hitChk(&mCyl1, 0xffffffff);
    if (hitActor != NULL) {
        cCcD_Obj* hitObj = mCyl1.GetTgHitObj();
        if (hitObj->ChkAtType(AT_TYPE_THROW_OBJ) && (fopAcM_GetName(hitActor) != PROC_NPC_TK || mType != TYPE_1))
        {
            field_0xd08.setParam(this,
                                            hitActor, mCurAngle.y);
            setDamage(0, 7, 0);
            mDamageTimerStart = 0;
            mJntAnm.lookNone(1);
        }
    }
    if (field_0xd08.checkRebirth()) {
        field_0xd08.initialize();
        field_0xe22 = 1;
    }
    if (field_0x16e0) {
        if (field_0x16ec == field_0x16e0) {
            (this->*field_0x16ec)(NULL);
        } else {
            setAction(field_0x16e0);
        }
    }
    if ((mType != TYPE_0) && field_0x1721 != 0) {
        fopAcM_delete(this);
    }
}

/* 809FA88C-809FAABC 0018EC 0230+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::beforeMove() {
    cXyz oldPos;
    cXyz pos;
    fopAcM_OffStatus(this, 0x8000000);
    if (checkHide()) {
        fopAcM_OnStatus(this, 0x8000000);
    }
    if (checkHide() || mNoDraw != 0) {
        attention_info.flags = 0;
    }
    for (int i = 0; i < 4; i++) {
        if (mStones[i].chkActive()) {
            if (cM3d_IsZero(mStones[i].getSpeedF()) == false) {
                oldPos = mStones[i].getOld();
                pos = mStones[i].getPos();
                mLinChk.Set(&oldPos, &pos, this);
                if (!dComIfG_Bgsp().LineCross(&mLinChk)) {
                    if (!mStones[i].getSphP()->ChkCoHit()) {
                        continue;
                    }
                }
                mStones[i].initialize();
            }
        }
    }

    if (field_0x1721 != 0) {
        dive();
    }
}

/* 809FAABC-809FABB8 001B1C 00FC+00 1/0 0/0 0/0 .text            afterMoved__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::afterMoved() {
    cXyz cStack_1c;
    for (int i = 0; i < 4; i++) {
        if (mStones[i].chkActive()) {
            if (cM3d_IsZero(mStones[i].getSpeedF())) {
                mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(18));
                mDoMtx_stack_c::multVecZero((Vec*)&cStack_1c);
                mStones[i].setPos(cStack_1c);
            } else {
                mStones[i].posMoveF(this);
            }
        }
    }
}

/* 80A01288-80A0128C 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80A0128C-80A01290 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80A01290-80A01294 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80A01294-80A01298 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80A01298-80A0129C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80A0129C-80A012A0 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80A012A0-80A012A4 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80A012A4-80A012A8 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80A012A8-80A012AC 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80A012AC-80A012B0 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80A012B0-80A012B4 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80A012B4-80A012B8 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80A012B8-80A012BC 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80A012BC-80A012C0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80A012C0-80A012C4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80A012C4-80A012C8 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80A012C8-80A012D4 000048 000C+00 1/1 0/0 0/0 .bss             @3859 */
static u8 lit_3859[12];

/* 80A012D4-80A012D8 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 809FABB8-809FAF90 001C18 03D8+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::setAttnPos() {
    cXyz cStack_38(-10.0f, 10.0f, 0.0f);
    cXyz cStack_44;
    field_0xd08.calc(0);
    f32 dVar8 = cM_s2rad(mCurAngle.y - field_0xd7e.y);
    J3DModel* model = mpMorf[0]->getModel();
    mJntAnm.setParam(this, model, &cStack_38, getBackboneJointNo(), getNeckJointNo(),
        getHeadJointNo(), daNpc_Hanjo_Param_c::m.field_0x24, daNpc_Hanjo_Param_c::m.field_0x20,
        daNpc_Hanjo_Param_c::m.field_0x2c, daNpc_Hanjo_Param_c::m.field_0x28,
        daNpc_Hanjo_Param_c::m.field_0x34, daNpc_Hanjo_Param_c::m.field_0x30,
        daNpc_Hanjo_Param_c::m.field_0x3c, daNpc_Hanjo_Param_c::m.field_0x38,
        daNpc_Hanjo_Param_c::m.field_0x40, dVar8, NULL);
    mJntAnm.calcJntRad(0.2f, 1.0f, dVar8);
    setMtx();
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&cStack_38, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, 1, 1.0f, 0);
    cStack_38.set(0.0f, 0.0f, 20.0f);
    cStack_38.y = daNpc_Hanjo_Param_c::m.field_0x00;
    if (field_0x1721 != 0) {
        cStack_38.set(0.0f, 170.0f, -10.0f);
    } else if (mMotionSeqMngr.getNo() == 2) {
        cStack_38.set(0.0f, 170.0f, -20.0f);
    }
    if (1.0f <= mpMorf[0]->getMorfRatio()) {
        field_0x16f8 = cStack_38;
    } else {
        cStack_44 = field_0x16f8 - cStack_38;
        cStack_44 *= 1.0f - mpMorf[0]->getMorfRatio();
        cStack_38 = cStack_38 + cStack_44;
    }
    mDoMtx_stack_c::YrotS(mCurAngle.y);
    mDoMtx_stack_c::multVec(&cStack_38, &cStack_38);
    attention_info.position = current.pos + cStack_38;
    static cXyz prtclScl(1.0f, 1.0f, 1.0f);
    setFootPos();
    if (3.0f < speedF) {
        setFootPrtcl(&prtclScl, 17.0f, 2.0f);
    }
}

/* 809FAF90-809FB2C4 001FF0 0334+00 1/0 0/0 0/0 .text            setCollision__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::setCollision() {
    cXyz cStack_4c;
    if (field_0xe25 == 0) {
        u32 tgType = 0xd8fbfdff;
        u32 tgSPrm = 0x1f;
        if (mTwilight != 0) {
            tgType = 0;
            tgSPrm = 0;
        } else {
            if (field_0xd08.checkStagger()) {
                tgType = 0;
                tgSPrm = 0;
            }
        }
        mCyl1.SetCoSPrm(0x79);
        mCyl1.SetTgType(tgType);
        mCyl1.SetTgSPrm(tgSPrm);
        mCyl1.OnTgNoHitMark();
        cStack_4c.set(0.0f, 0.0f, 0.0f);
        f32 cylHeight = field_0xdec;
        f32 cylRadius = field_0xdf0;
        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&cStack_4c, &cStack_4c);
        cStack_4c += current.pos;
        mCyl1.SetH(cylHeight);
        mCyl1.SetR(cylRadius);
        mCyl1.SetC(cStack_4c);
        dComIfG_Ccsp()->Set(&mCyl1);
        if (mType == 1 || mType == 2) {
            switch(mType) {
            case TYPE_1:
                cylRadius = 320.0f;
                cStack_4c.set(-140.0f, 40.0f, -240.0f);
                break;
            case TYPE_2:
                cylRadius = 320.0f;
                cStack_4c.set(0.0f, 40.0f, -200.0f);
                break;
            default:
                cylRadius = 0.0f;
                cStack_4c.set(0.0f, 0.0f, 0.0f);
                break;
            }
            if (cM3d_IsZero(cylRadius) == false) {
                mDoMtx_stack_c::YrotS(0);
                mDoMtx_stack_c::multVec(&cStack_4c, &cStack_4c);
                cStack_4c += current.pos;
                mCyl2.SetCoSPrm(0x19);
                mCyl2.OnCoNoCrrBit();
                mCyl2.SetH(cylHeight);
                mCyl2.SetR(cylRadius);
                mCyl2.SetC(cStack_4c);
                dComIfG_Ccsp()->Set(&mCyl2);
            }
        }
    }
    for (int i = 0; i < 4; i++) {
        if (mStones[i].chkActive()) {
            mStones[i].getSphP()->SetC(mStones[i].getPos());
            mStones[i].getSphP()->SetR(3.0f);
            dComIfG_Ccsp()->Set(mStones[i].getSphP());
            mStones[i].getSphP()->ClrCoHit();
        }
    }
    mCyl1.ClrCoHit();
    mCyl2.ClrCoHit();
    mCyl1.ClrTgHit();
}

/* 809FB2C4-809FB2CC 002324 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_Hanjo_cFv */
int daNpc_Hanjo_c::drawDbgInfo() {
    return 0;
}

/* 809FB2CC-809FB59C 00232C 02D0+00 1/0 0/0 0/0 .text            drawOtherMdl__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::drawOtherMdl() {
    Mtx mtx;
    J3DModel* model = mpMorf[0]->getModel();
    for (int i = 0; i < 4; i++) {
        if (mStones[i].chkActive()) {
            g_env_light.setLightTevColorType_MAJI(mStones[i].getModelP(), &tevStr);
            mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(18));
            cMtx_copy(mDoMtx_stack_c::get(), mtx);
            mStones[i].setMtx(mtx);
            mDoExt_modelUpdateDL(mStones[i].getModelP());
        }
    }
    if (mModel2 != NULL && (mType == TYPE_1 || mType == TYPE_2)) {
        J3DAnmTransformKey* transformKey = getTrnsfrmKeyAnmP(
            l_resNameList[l_motionAnmData[100]], l_motionAnmData[98]);
        if (transformKey == mpMorf[0]->getAnm()) {
            g_env_light.setLightTevColorType_MAJI(mModel2,
                &tevStr);
            mDoMtx_stack_c::copy(model->getAnmMtx(18));
            mDoMtx_stack_c::XYZrotM(cM_deg2s(32.602f), cM_deg2s(23.207f),
                                    cM_deg2s(49.943f));
            mDoMtx_stack_c::transM(0.009f, -0.18f, -0.145f);
            cMtx_copy(mDoMtx_stack_c::get(), mtx);
            mModel2->setBaseTRMtx(mtx);
            mDoExt_modelUpdateDL(mModel2);
        }
    }
    if (mModel1 != NULL && cM3d_IsZero(field_0x1718) == false) {
        g_env_light.setLightTevColorType_MAJI(mModel1, &tevStr);
        mDoMtx_stack_c::copy(model->getAnmMtx(4));
        mDoMtx_stack_c::scaleM(field_0x1718, field_0x1718, field_0x1718);
        cMtx_copy(mDoMtx_stack_c::get(), mtx);
        mModel1->setBaseTRMtx(mtx);
        mDoExt_modelUpdateDL(mModel1);
        cLib_chaseF(&field_0x1718, 1.0f, 0.15f);
    }
}

/* 809FB59C-809FB6CC 0025FC 0130+00 1/1 0/0 0/0 .text            selectAction__13daNpc_Hanjo_cFv */
int daNpc_Hanjo_c::selectAction() {
    field_0x16e0 = NULL;
    switch(mType) {
    case TYPE_0:
        field_0x16e0 = &daNpc_Hanjo_c::wait;
        if (!daNpcT_chkEvtBit(0xad) && !daNpcT_chkEvtBit(0xab) && !daNpcT_chkEvtBit(0xb7) &&
            (daNpcT_chkEvtBit(0x235) || daNpcT_chkEvtBit(0x18)))
        {
            field_0x16e0 = &daNpc_Hanjo_c::throwStone;
        }
        break;
    case TYPE_1:
        field_0x16e0 = &daNpc_Hanjo_c::takayose;
        break;
    default:
        field_0x16e0 = &daNpc_Hanjo_c::wait;
        break;
    }
   
    return 1;
}

/* 809FB6CC-809FB6F8 00272C 002C+00 2/2 0/0 0/0 .text
 * chkAction__13daNpc_Hanjo_cFM13daNpc_Hanjo_cFPCvPvPv_i        */
int daNpc_Hanjo_c::chkAction(int (daNpc_Hanjo_c::*action)(void*)) {
    return field_0x16ec == action;
}

/* 809FB6F8-809FB7A0 002758 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpc_Hanjo_cFM13daNpc_Hanjo_cFPCvPvPv_i        */
int daNpc_Hanjo_c::setAction(int (daNpc_Hanjo_c::*action)(void*)) {
    field_0xe22 = 3;
    if (field_0x16ec != NULL) {
        (this->*field_0x16ec)(NULL);
    }
    field_0xe22 = 0;
    field_0x16ec = action;
    if (field_0x16ec != NULL) {
        (this->*field_0x16ec)(NULL);
    }
    return 1;
}

/* 809FB7A0-809FB90C 002800 016C+00 2/2 0/0 0/0 .text            initShoot__13daNpc_Hanjo_cFi */
void daNpc_Hanjo_c::initShoot(int param_1) {
    if (param_1 != 0) {
        mFaceMotionSeqMngr.setNo( 7, -1.0f, 0, 0);
        mMotionSeqMngr.setNo( 16, 0.0f, 1, 0);
        mJntAnm.lookNone(1);
    } else {
        mFaceMotionSeqMngr.setNo(7, -1.0f, 0, 0);
        mMotionSeqMngr.setNo(15, -1.0f, 0, 0);
        mJntAnm.lookNone(0);
    }
}

/* 809FB90C-809FBB94 00296C 0288+00 2/2 0/0 0/0 .text            shoot__13daNpc_Hanjo_cFi */
int daNpc_Hanjo_c::shoot(int param_1) {
    csXyz cStack_60;
    f32 dVar13 = daNpc_Hanjo_Param_c::m.field_0x98;
    s16 sVar9 = cM_deg2s(daNpc_Hanjo_Param_c::m.field_0x9c);
    if (mMotionSeqMngr.getNo() == 16 || mMotionSeqMngr.getNo() == 15) {
        switch(mMotionSeqMngr.getStepNo()) {
        case 0:
            dVar13 = mpMorf[0]->getFrame();
            if (36.0f < dVar13 && field_0x170c == -1) {
                int i = 0;
                for (; i < 4; i = i + 1) {
                    if (!mStones[i].chkActive())
                        break;
                }
                if (i < 4) {
                    mStones[i].initialize();
                    mStones[i].setTmr(0x708);
                    cStack_60 = current.angle;
                    cStack_60.y += daNpc_Hanjo_Param_c::m.field_0xac;
                    mStones[i].setAngle(cStack_60);
                    field_0x170c = i;
                }
            }
            break;
        case 1:
            if ((mpMorf[0]->checkFrame(21.0f)) && field_0x170c >= 0) {
                if (param_1 != 0) {
                    dVar13 = 110.0f;
                    sVar9 = cM_deg2s(78.0f);
                }
                f32 dVar12 = dVar13 * cM_ssin(sVar9);
                f32 dVar11 = dVar13 * cM_scos(sVar9);
                f32 fVar1 = ((cM_rnd() - 0.5f) / 0.5f) * 0.1f;
                if (param_1 != 0) {
                    fVar1 = 0.0;
                }
                mStones[field_0x170c].setVSpeed(dVar12 - (dVar12 * fVar1));
                mStones[field_0x170c].setSpeedF(dVar11 + (dVar11 * fVar1));
            }
            break;
        default:
            return 1;
        }
    }
    return 0;
}

/* 809FBB94-809FBC3C 002BF4 00A8+00 2/2 0/0 0/0 .text            initDive__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::initDive() {
    mFaceMotionSeqMngr.setNo(6, -1.0f, 0, 0);
    mMotionSeqMngr.setNo(18, -1.0f, 0, 0);
    speed.y = daNpc_Hanjo_Param_c::m.field_0x8c;
    field_0x1721 = 1;
}

/* 809FBC3C-809FC06C 002C9C 0430+00 1/1 0/0 0/0 .text            dive__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::dive() {
    f32 local_34;
    if (fopAcM_getWaterY(&current.pos, &local_34) != 0) {
        if (local_34 <= current.pos.y) {
            cLib_chaseF(&speedF, 0.0f, 0.1f);
        } else {
            if (field_0x1720 == 0) {
                mSound.startCreatureSound(Z2SE_CM_BODYFALL_WATER_M, 0, 0xffffffff);
                speedF *= 0.5f;
                field_0x1720 = 1;
            } else if (field_0x171f == 0) {
                if (current.pos.y + field_0xdec < local_34) {
                    if (0.0f < speed.y) {
                        cLib_addCalc(&speed.y, 2.0f, 0.5f, 0.5f, 0.5f);
                    } else {
                        cLib_addCalc(&speed.y, 2.0f, 0.5f, 5.5f, 0.5f);
                    }
                }
                if (0.0f < speed.y && local_34 < current.pos.y + daNpc_Hanjo_Param_c::m.field_0xa8)
                {
                    field_0x171f = 1;
                    if (mMotionSeqMngr.getNo() == 18) {
                        mFaceMotionSeqMngr.setNo(7, -1.0f, 0, 0);
                        mMotionSeqMngr.setNo(19, -1.0f, 0, 0);
                    }
                    field_0x171c = 0;
                    speed.y = 0;
                }
            }
            if (field_0x171f != 0) {
                s16 sVar1 = field_0x171c;
                field_0x171c += 2100;
                f32 dVar7 = cM_ssin(field_0x171c & 0x7fff);
                if ((sVar1 < 0 && 0 <= field_0x171c) ||
                    (sVar1 >= 0 && field_0x171c < 0))
                {
                    cXyz cStack_30(current.pos);
                    cStack_30.y = local_34;
                    dComIfGp_particle_set(0xffffffff, 0x8363, &cStack_30, 0, 0);
                    dComIfGp_particle_set(0xffffffff, 0x8364, &cStack_30, 0, 0);
                    dComIfGp_particle_set(0xffffffff, 0x8365, &cStack_30, 0, 0);
                }
                current.pos.y = local_34 - daNpc_Hanjo_Param_c::m.field_0xa8;
                current.pos.y += dVar7 * -20.0f;
            }
            cLib_chaseF(&speedF, 0.0f, 0.3f);
            gravity = 0;
        }
    }
    if (mMotionSeqMngr.getNo() == 18) {
        if (field_0x1720 != 0 && field_0x171f == 0 && 0.0f < speed.y) {
            if (local_34 - current.pos.y < 260.0f && mMotionSeqMngr.getNo() == 18) {
                if (cM3d_IsZero(mpMorf[0]->getPlaySpeed())) {
                    mpMorf[0]->setPlaySpeed(1.0f);
                }
            }
        } else if ((mMotionSeqMngr.getNo() == 18) && mpMorf[0]->checkFrame(18.0f)) {
            mpMorf[0]->setPlaySpeed(0.0f);
        }
    }
}

/* 809FC06C-809FC1BC 0030CC 0150+00 1/1 0/0 0/0 .text            lookround__13daNpc_Hanjo_cFs */
int daNpc_Hanjo_c::lookround(s16 param_1) {
    if (field_0x171e != 0) {
        cLib_addCalcAngleS2(&current.angle.y, param_1, 4, 0x800);
        shape_angle.y = current.angle.y;
        mCurAngle.y = shape_angle.y;
        if (mMotionSeqMngr.getNo() != 14) {
            mMotionSeqMngr.setNo(14, -1.0f, 0, 0);
        } else {
            if (mMotionSeqMngr.checkEndSequence()) {
                s16 angleDiff = param_1 - mCurAngle.y;
                s16 absDiff = abs(angleDiff);
                if (absDiff <= cM_deg2s(4.0f)) {
                    mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                    field_0x171e = 0;
                } else {
                    mMotionSeqMngr.setNo(14, 0.0f, 1, 0);
                }
            }
        }
    } else {
        s16 angleDiff = param_1 - mCurAngle.y;
        s16 absDiff = abs(angleDiff);
        if (absDiff > cM_deg2s(90.0f)) {
            field_0x171e = 1;
        }
    }
    return 1;
}

/* 809FC1BC-809FC2E4 00321C 0128+00 1/1 0/0 0/0 .text            commandToHawk__13daNpc_Hanjo_cFv */
int daNpc_Hanjo_c::commandToHawk() {
    daNPC_TK_c* pTkNpc = (daNPC_TK_c*)field_0x10c8[2].getActorP();
    int rv = 0;
    if (pTkNpc != NULL) {
        cXyz acStack_30(0.0f, 0.0f, 0.0f);
        int iVar1 = field_0x1722;
        if (iVar1) {
            acStack_30.setall(50.0f);
        }
        rv = 0;
        daTag_EvtArea_c* pEvtArea =
            (daTag_EvtArea_c*)field_0x10c8[3].getActorP();
        if (pEvtArea != NULL) {
            daPy_py_c* player = daPy_getPlayerActorClass();
            if (pEvtArea->chkPointInArea(player->current.pos, acStack_30)) {
                rv = 1;
            }
            if (rv != 0) {
                if (!pTkNpc->isAttackLink()) {
                    pTkNpc->setAttackLink();
                }
            } else {
                if (pTkNpc->isAttackLink()) {
                    pTkNpc->setBackHanjo();
                }
            }
        }
    }
    return rv == 1;
}

/* 809FC2E4-809FC438 003344 0154+00 1/0 0/0 0/0 .text cutConversationAboutSaru__13daNpc_Hanjo_cFi
 */
int daNpc_Hanjo_c::cutConversationAboutSaru(int staffIdx) {
    int rv = 0;
    int iVar4 = -1;
    int* piVar1 = (int*)dComIfGp_evmng_getMyIntegerP(staffIdx, "prm");
    if (piVar1 != NULL) {
        iVar4 = *piVar1;
    }
    if (dComIfGp_getEventManager().getIsAddvance(staffIdx)) { 
        switch(iVar4) {
        case 0:
            field_0xdc8 = fopAcM_searchPlayerAngleY(this);
            if (checkStep()) {
                mStepMode = 0;
            }
            break;
        case 1:
            break;
        }
    }
    switch (iVar4) {
    case 0:
        rv = 1;
        break;
    case 1:
        mJntAnm.lookPlayer(0);
        if (field_0xdc8 != mCurAngle.y) {
            step(field_0xdc8, 7, 14, 15, 0);
        } else {
            rv = 1;
        }

    }
    return rv;
}

/* 809FC438-809FC80C 003498 03D4+00 1/0 0/0 0/0 .text            cutConversation__13daNpc_Hanjo_cFi
 */
int daNpc_Hanjo_c::cutConversation(int param_1) {
    int rv = 0;
    int iVar9 = -1;
    int iVar6 = -1;
    int iVar7 = 0;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(param_1, "prm0");
    if (piVar1 != NULL) {
        iVar9 = *piVar1;
    }
    piVar1 = dComIfGp_evmng_getMyIntegerP(param_1, "prm1");
    if (piVar1 != NULL) {
        iVar6 = *piVar1;
    }
    piVar1 = dComIfGp_evmng_getMyIntegerP(param_1, "msgNo");
    if (piVar1 != NULL) {
        iVar7 = *piVar1;
    }
    if (dComIfGp_getEventManager().getIsAddvance(param_1)) {
        switch(iVar9) {
        case 0:
            mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
            initTalk(field_0xa7c, NULL);
            mPlayerActorMngr.entry(daPy_getPlayerActorClass());
            break;
        case 1:
        case 2:
        case 3:
            if (iVar9 == 2) {
                initTalk(field_0xa7c, NULL);
                mPlayerActorMngr.entry(daPy_getPlayerActorClass());
            }
            if (iVar6 == 1) {
                fopAc_ac_c* actor_p =field_0x10c8[0].getActorP();
                JUT_ASSERT(2650, 0 != actor_p);
                dComIfGp_getEvent().setPt2(actor_p);
            }
            break;
        }
    }
    int local_38[2] = {-1, -1};
    switch(iVar9) {
    case 0:
        mJntAnm.lookPlayer(0);
        if (field_0xdc8 == mCurAngle.y) {
            rv = 1;
        } else if (step(field_0xdc8, 7, 0xe, 0xf, 0)) {
            mFaceMotionSeqMngr.setNo(7, -1.0f, 0, 0);
            mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
        }
        break;
    case 1:
    case 2:
    case 3:
        mJntAnm.lookPlayer(0);
        if (iVar9 == 2) {
            mJntAnm.lookNone(0);
        }
        if ((iVar9 == 3 && field_0xdc8 != mCurAngle.y) &&
            step(field_0xdc8, -1, -1, 15, 0))
        {
            mFaceMotionSeqMngr.setNo(7, -1.0f, 0, 0);
            mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
        }
        local_38[0] = iVar7;
        if (talkProc(local_38, 0, NULL, 0)) {
            if (iVar7 == 0) {
                if (mFlow.checkEndFlow()) {
                    rv = 1;
                }
            } else {
                rv = 1;
            }
        }
        break;
    }

    return rv;
}

/* 809FC80C-809FCDC4 00386C 05B8+00 1/0 0/0 0/0 .text            cutPursuitBee__13daNpc_Hanjo_cFi */
// NONMATCHING
// One instruction out of order
int daNpc_Hanjo_c::cutPursuitBee(int param_1) {
    cXyz cStack_6c;
    int rv = 0;
    int* local_88 = NULL;
    int local_8c = -1;
    local_88 = dComIfGp_evmng_getMyIntegerP(param_1, "prm");
    if (local_88 != NULL) {
        local_8c = *local_88;
    }
    if (dComIfGp_getEventManager().getIsAddvance(param_1)) {
        fopAc_ac_c* actor_p;
        switch(local_8c) {
        case 0:
            setAngle(home.angle.y);
            actor_p = field_0x10c8[0].getActorP();
            JUT_ASSERT(2748, 0 != actor_p);
            dComIfGp_getEvent().setPt2(actor_p);
            for (int i = 0; i < 4; i++) {
                if (mStones[i].chkActive()) {
                    mStones[i].initialize();
                }
            }
            initShoot(1);
            field_0x170c = 0xffffffff;
            break;
        case 1:
            field_0xdc4 = 0;
            break;
        case 3:
            mFaceMotionSeqMngr.setNo(6, -1.0f, 0,
                                            0);
            mMotionSeqMngr.setNo(17, -1.0f,
                                            0, 0);
            field_0xdc4 = 1;
            mSound.startCreatureVoice(Z2SE_M077_HANJO_05, -1);
            break;
        case 4:
            field_0x1724 = 0;
            initDive();
            break;
        case 5:
            break;
        case 99:
            cStack_6c.set(1074.0f, -100.0f, -443.0f);
            setPos(cStack_6c);
            setAngle(home.angle.y);
            speedF = 0;
            speed.setall(0.0f);
            field_0x171f = 1;
            field_0x1720 = 1;
            field_0x1721 = 1;
            daNpcT_onEvtBit(0xad);
            daNpcT_onEvtBit(0xb1);
            field_0x1718 = 0.15f;
            mFlow.remove();
            break;
        }
    }
    switch(local_8c) {
    case 0:
        if (shoot(1)) {
            rv = 1;
        }
        break;
    case 1:
        if (field_0xdc4 != 0) {
            rv = 1;
        } else {
            for (int i = 0; i < 4; i++) {
                if (mStones[i].getSphP()->ChkCoHit()) {
                    fopAc_ac_c* hitActor = mStones[i].getSphP()->GetCoHitObj()->GetAc();
                    fopAc_ac_c* hitActor2 = dCc_GetAc(hitActor);
                    if (hitActor2 != NULL && fopAcM_GetName(hitActor2) == PROC_E_NEST) {
                        field_0xdc4 = daNpc_Hanjo_Param_c::m.field_0xb0;
                    }
                    mStones[i].initialize();
                }
            }
        }
        break;
    case 2:
        if (cLib_calcTimer(&field_0xdc4) == 0) {
            rv = 1;
        }
        break;
    case 3:
        mJntAnm.lookNone(0);
        if (field_0x10e8.getDstPosH(current.pos, &cStack_6c, field_0x10e8.mpRoomPath->m_num, 4)) {
            rv = 1;
        } else {
            cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &cStack_6c), 4, 0x800);
            shape_angle.y = current.angle.y;
            mCurAngle.y = current.angle.y;
            field_0xd7e.y = mCurAngle.y;
            cLib_chaseF(&speedF,
                                        daNpc_Hanjo_Param_c::m.field_0x90, 0.5f);
            if (field_0xdc4 != 0 &&
                mCyl1.ChkCoHit())
            {
                fopAc_ac_c* hitActor = mCyl1.GetCoHitAc();
                if (daPy_getPlayerActorClass() == hitActor) {
                    f32 dVar17 = 40.0f;
                    s16 sVar11 = cM_deg2s(50.0f);
                    s16 actorAngle = fopAcM_searchActorAngleY(this, daPy_getPlayerActorClass()) - current.angle.y;
                    s16 angle2;
                    if (actorAngle > 0) {
                        angle2 = current.angle.y + 0x2000;
                    } else {
                        angle2 = current.angle.y - 0x2000;
                    }
                    daPy_getPlayerActorClass()->setThrowDamage(angle2, dVar17 * cM_scos(sVar11), dVar17 * cM_ssin(sVar11), 0, 1, 0);
                    field_0x1724 = 1;
                    field_0xdc4 = 0;
                }
            }
        }
        break;
    case 4:
        if (field_0x171f != 0) {
            field_0x1718 = 0.15f;
            daNpcT_onEvtBit(0xad);
            daNpcT_onEvtBit(0xb1);
            rv = 1;
        }
        break;
    case 5:
        rv = 1;
        break;
    case 99:
        rv = 1;
        break;
    }
    return rv;
}

/* 809FCDC4-809FD3C0 003E24 05FC+00 1/0 0/0 0/0 .text            cutAppearHawker__13daNpc_Hanjo_cFi
 */
int daNpc_Hanjo_c::cutAppearHawker(int param_1) {
    cXyz cStack_a4;
    int rv = 0;
    int local_b4 = -1;
    int iVar7 = 0;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(param_1, "prm");
    fopAc_ac_c* actor_p;
    if (piVar1 != NULL) {
        local_b4 = *piVar1;
    }
    piVar1 = dComIfGp_evmng_getMyIntegerP(param_1, "timer");
    if (piVar1 != NULL) {
        iVar7 = *piVar1;
    }
    if (dComIfGp_getEventManager().getIsAddvance(param_1)) {
        char acStack_98 [100];
        switch (local_b4) {
        case 0:
            daNpcT_offTmpBit(0x27);
            mFaceMotionSeqMngr.setNo(7, 0.0f, 0, 0);
            mMotionSeqMngr.setNo(11, 0.0f, 1, 0);
            mJntAnm.lookNone(1);
            home.angle.y += 0x8000;
            setAngle(home.angle.y);
            initTalk(0xcf, NULL);
            strcpy(acStack_98, l_evtList[9].eventName);
            strcat(acStack_98, "@");
            dComIfGp_getEvent().setSkipZev(this, acStack_98);
            dComIfGp_getEvent().onSkipFade();
            dComIfGp_getVibration().StartShock( 9, 15, cXyz(0.0f, 1.0f, 0.0f));
            break;
        case 1:
            field_0xdc4 = iVar7;
            break;
        case 2:
            initTalk(0xcf, NULL);
            break;
        case 3:
            if (iVar7 < 1) {
                iVar7 = 1;
            }
            field_0xdc4 = iVar7;
            break;
        case 4:
            mMotionSeqMngr.setNo(13, -1.0f, 0, 0);
            break;
        case 5:
            field_0xdc4 = iVar7;
            break;
        case 6:
            field_0xdc4 = iVar7;
            fopAc_ac_c* actor_p = field_0x10c8[2].getActorP();
            JUT_ASSERT(3005, 0 != actor_p);
            ((daNPC_TK_c*)actor_p)->setAttackLink();
            field_0x1722 = 1;
            break;
        case 99:
            mMotionSeqMngr.setNo(13, 0.0, 1,
                                            0);
            dComIfGs_onSaveSwitch(0x2b);
            actor_p = field_0x10c8[2].getActorP();
            JUT_ASSERT(3014, 0 != actor_p);
            ((daNPC_TK_c*)actor_p)->setQuickHanjoHand();
            field_0x1722 = 1;
            daNpcT_onTmpBit(0x27);
            daNpcT_onEvtBit(0xcf);
            mFlow.remove();
            break;
        }
    }
    switch (local_b4) {
    case 0:
        if (talkProc(NULL, 0, NULL, 0) && mFlow.checkEndFlow()) {
            daNpcT_onTmpBit(0x27);
            rv = 1;
        }
        break;
    case 1:
        if (cLib_calcTimer(&field_0xdc4) == 0) {
            rv = 1;
        }
        break;
    case 2:
        mJntAnm.lookCamera(0);
        if (talkProc(NULL, 0, NULL, 0) && mFlow.checkEndFlow()) {
            rv = 1;
        }
        break;
    case 3:
        if (field_0xdc4 != 0) {
            if (cLib_calcTimer(&field_0xdc4) == 0) {
                mMotionSeqMngr.setNo(12, 8.0f, 0, 0);
                actor_p = field_0x10c8[2].getActorP();
                JUT_ASSERT(3068, 0 != actor_p);
                ((daNPC_TK_c*)actor_p)->setHanjoHand();
            }
        } else if (mMotionSeqMngr.checkEndSequence()) {
            rv = 1;
        } else if (mpMorf[0]->checkFrame(8.0f)) {
            Z2GetAudioMgr()->seStart(Z2SE_PLAY_REED_TOBIKUSA, &current.pos, 0, 0, 1.0f, 1.0f,
                                        -1.0f, -1.0f, 0);
        }
        break;
    case 4:
        mJntAnm.lookNone(0);
        actor_p = field_0x10c8[2].getActorP();
        JUT_ASSERT(3090, 0 != actor_p);
        if (((daNPC_TK_c*)actor_p)->isHanjoHand()) {
            rv = 1;
        }
        break;
    case 5:
        mJntAnm.lookCamera(0);
        if (cLib_calcTimer(&field_0xdc4) == 0) {
            rv = 1;
        }
        break;
    case 6:
        if (cLib_calcTimer(&field_0xdc4) == 0) {
            daNpcT_onEvtBit(0xcf);
            rv = 1;
        }
        break;
    case 99:
        rv = 1;
        break;
    }
    
    if ((local_b4 == 1 && rv == 1) || 1 < local_b4) {
        dKy_set_actcol_ratio(1.0f);
        dKy_set_bgcol_ratio(1.0f);
        dKy_set_fogcol_ratio(1.0f);
    }
    return rv;
}

/* 809FD3C0-809FD86C 004420 04AC+00 1/0 0/0 0/0 .text            cutDive__13daNpc_Hanjo_cFi */
int daNpc_Hanjo_c::cutDive(int param_1) {
    cXyz cStack_2c;
    csXyz cStack_34;
    int rv = 0;
    int iVar5 = -1;
    int uVar4 = 0;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(param_1, "prm");
    if (piVar1 != NULL) {
        iVar5 = *piVar1;
    }
    int* puVar2 = dComIfGp_evmng_getMyIntegerP(param_1, "timer");
    if (puVar2 != NULL) {
        uVar4 = *puVar2;
    }
    if (dComIfGp_getEventManager().getIsAddvance(param_1)) {
        switch(iVar5) {
        case 0:
            cStack_2c.set(1400.0f, 600.0f, 180.0f);
            if (daPy_getPlayerActorClass()->checkPlayerFly()) {
                cStack_2c.y += 200.0f;
            }
            cStack_34.y = cLib_targetAngleY(&cStack_2c, &current.pos);
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&cStack_2c, cStack_34.y, 0);
            dComIfGp_evmng_setGoal(&cStack_2c);
            initTalk(0xd0, NULL);
            field_0xdc4 = uVar4;
            break;
        case 1:
            fopAc_ac_c* actor_p = field_0x10c8[2].getActorP();
            if (actor_p != NULL){
                ((daNPC_TK_c*)actor_p)->setAway();
            }
            break;
        case 2:
            mFaceMotionSeqMngr.setNo(6, -1.0f, 0, 0);
            mMotionSeqMngr.setNo(17, -1.0f, 0,
                                            0);
            mJntAnm.lookNone(1);
            mSound.startCreatureVoice(Z2SE_M077_HANJO_05, -1);
            break;
        case 3:
            initDive();
            break;
        }
    }
    switch(iVar5) {
    case 0:
        if (cLib_calcTimer(&field_0xdc4) == 0) {
            mJntAnm.lookPlayer(0);
            if (field_0xdc8 == mCurAngle.y) {
                rv = 1;
            } else if (mType == TYPE_1) {
                step(field_0xdc8, 7, 10, 0xf, 0);
            } else {
                step(field_0xdc8, 7, 0xe, 0xf, 0);
            }
        }
        break;
    case 1:
        if (talkProc(NULL, 0, NULL, 0) && mFlow.checkEndFlow()) {
            rv = 1;
        }
        break;
    case 2:
        cStack_2c.set(0.0f, 0.0f, 50.0f);
        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&cStack_2c, &cStack_2c);
        cStack_2c += current.pos;
        cStack_2c.y = attention_info.position.y;
        mGndChk.SetPos(&cStack_2c);
        f32 dVar7 = dComIfG_Bgsp().GroundCross(&mGndChk);
        if ((dVar7 - mGroundH) < -daNpc_Hanjo_Param_c::m.field_0x18) {
            rv = 1;
        }
        if (mType == TYPE_1) {
            cStack_34.y = home.angle.y - 0x8000;
            if (daNpcT_chkEvtBit(0xcf)) {
                cStack_34.y = home.angle.y + 0x4000;
            } else {
                cStack_34.y = home.angle.y - 0x4000;
            }
        } else {
            cStack_34.y = home.angle.y;
        }
        cLib_addCalcAngleS2(&current.angle.y, cStack_34.y, 4, 0x800);
        shape_angle.y = current.angle.y;
        mCurAngle.y = current.angle.y;
        cLib_chaseF(&speedF, daNpc_Hanjo_Param_c::m.field_0x90, 1.0f);
        break;
    case 3:
        if (field_0x1720) {
            if (mType == TYPE_1) {
                daNpcT_onEvtBit(0xd0);
            }
            rv = 1;
        }
        break;
    }
    return rv;
}

/* 809FD86C-809FDEFC 0048CC 0690+00 2/0 0/0 0/0 .text            wait__13daNpc_Hanjo_cFPv */
int daNpc_Hanjo_c::wait(void* param_0) {
    switch(field_0xe22) {
    case 0:
    case 1:
        if (!field_0xd08.checkStagger()) {
            switch (mType) {
            case TYPE_0: 
                if (field_0x1721 != 0) {
                    mFaceMotionSeqMngr.setNo(7, -1.0f, 0, 0);
                    mMotionSeqMngr.setNo(19, -1.0f, 0, 0);
                } else {
                    mFaceMotionSeqMngr.setNo(7, -1.0f, 0, 0);
                    if (mPlayerActorMngr.getActorP() != NULL || daNpcT_chkEvtBit(0xab) ||
                        daNpcT_chkEvtBit(0xb7))
                    {
                        mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                    } else {
                        mMotionSeqMngr.setNo(2, -1.0f, 0, 0);
                    }
                }
                break;
            default:
                mFaceMotionSeqMngr.setNo(7, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                break;
            }
            field_0xe22 = 2;
        }
    case 2:
        switch(mType) {
        case TYPE_0:
            if (chkPointInArea(daPy_getPlayerActorClass()->current.pos, current.pos,
                                                daNpc_Hanjo_Param_c::m.field_0x54, 150.0f,
                                                -150.0f, 0)) {
                if (daPy_getPlayerActorClass()->checkBeeChildDrink()) {
                    mSpeakEvent = 1;
                    field_0x1723 = 1;
                }
            }
            break;
        case TYPE_1:
            break;
        case TYPE_2:
            if (daPy_py_c::i_checkNowWolf() && mCyl2.ChkCoHit()) {
                if (!daPy_getPlayerActorClass()->checkPlayerFly() ||
                    daPy_getPlayerActorClass()->checkAutoJump() ||
                    daPy_getPlayerActorClass()->checkWolfTriggerJump())
                {
                    mEvtNo = 10;
                }
            }
        }

        if (!field_0xd08.checkStagger()) {
            if (mType == TYPE_0) {
                if ((daNpcT_chkEvtBit(0xab) ||
                    daNpcT_chkEvtBit(0xb7)) && field_0x1721 == 0 && mMotionSeqMngr.getNo() == 2)
                {
                    mMotionSeqMngr.setNo(0, -1.0, 0, 0);
                }
            } else if (mType == TYPE_3) {
                mPlayerActorMngr.remove();
            }
            if (mPlayerActorMngr.getActorP() != NULL) {
                mJntAnm.lookPlayer(0);
                if (!chkActorInSight(mPlayerActorMngr.getActorP(), field_0xdf8,
                                                    mCurAngle.y)) {
                    mJntAnm.lookNone(0);
                }
                if (!srchPlayerActor() && home.angle.y == mCurAngle.y) {
                    field_0xe22 = 1;
                }
            } else {
                mJntAnm.lookNone(0);
                if (home.angle.y != mCurAngle.y) {
                    if (field_0xe34 != 0) {
                        if (field_0x1721 != 0) {
                            if (step(home.angle.y, -1, -1, 15, 0)) {
                                field_0xe22 = 1;
                            }
                        } else {
                            if (step(home.angle.y, 7, 14, 15, 0)) {
                                field_0xe22 = 1;
                            }
                        }
                    } else {
                        setAngle(home.angle.y);
                        field_0xe22 = 1;
                    }
                    attention_info.flags = 0;
                } else {
                    srchPlayerActor();
                }
            }
            switch(mJntAnm.getMode()) {
            case 1:
                switch (mType) {
                case TYPE_0:
                    if (field_0x1721 == 0 && mMotionSeqMngr.getNo() == 2) {
                        mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                    }
                    break;
                }
                break;
            case 0:
                switch (mType) {
                case TYPE_3:
                    fopAc_ac_c* actor_p = field_0x10c8[1].getActorP();
                    if (actor_p != NULL) {
                        mJntAnm.lookActor(actor_p, -40.0f, 0);
                    }
                    break;
                }
                break;
            }
        }
    case 3:
    default:
        break;
    }
    return 1;
}

/* 809FDEFC-809FE2E0 004F5C 03E4+00 1/0 0/0 0/0 .text            throwStone__13daNpc_Hanjo_cFPv */
int daNpc_Hanjo_c::throwStone(void* param_0) {
    int sVar4 = daNpc_Hanjo_Param_c::m.field_0xae;
    switch(field_0xe22) {
    case 0:
    case 1:
        if (!field_0xd08.checkStagger()) {
            if (daNpcT_chkEvtBit(0x8b)) {
                mFaceMotionSeqMngr.setNo(7, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
            } else {
                mFaceMotionSeqMngr.setNo(7, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(2, -1.0f, 0, 0);
                field_0x1704 = cLib_getRndValue(sVar4 * 0.5f, sVar4 * 1.5f);
            }
            field_0xe22 = 2;
        }
    case 2:
        if (daNpcT_chkEvtBit(0x8b) && !daNpcT_chkEvtBit(0xad) && !daNpcT_chkEvtBit(0xb7)) {
            if (chkPointInArea(daPy_getPlayerActorClass()->current.pos, current.pos,
                               daNpc_Hanjo_Param_c::m.field_0xa4, 1000.0f, -1000.0f, 0) == false)
            {
                mEvtNo = 8;
            }
        }
        if (!field_0xd08.checkStagger()) {
            if (daNpcT_chkEvtBit(0x8b)) {
                mJntAnm.lookPlayer(0);
                lookround(fopAcM_searchPlayerAngleY(this));
            } else {
                mJntAnm.lookNone(0);
                if (home.angle.y != mCurAngle.y) {
                    if (field_0xe34 != 0) {
                        if (step(home.angle.y, 7, 14, 15, 0)) {
                            field_0xe22 = 1;
                        }
                    } else {
                        setAngle(home.angle.y);
                        field_0xe22 = 1;
                    }
                    attention_info.flags = 0;
                } else {
                    if (field_0x1704 != 0) {
                        if (cLib_calcTimer(&field_0x1704) == 0) {
                            field_0x1708 = (g_Counter.mCounter0 & 1) + 1;
                            initShoot(0);
                            field_0x170c = 0xffffffff;
                        }
                    } else {
                        if (shoot(0)) {
                            if (field_0x1708 != 0) {
                                mMotionSeqMngr.setNo(15, -1.0f, 1, 0);
                                cLib_calcTimer(&field_0x1708);
                                field_0x170c = 0xffffffff;
                            } else {
                                field_0xe22 = 1;
                            }
                        }
                    }
                }
                
            }
        }
        break;
    case 3:
    default:
        break;
    }
    
    return 1;
}

/* 809FE2E0-809FEAEC 005340 080C+00 1/0 0/0 0/0 .text            takayose__13daNpc_Hanjo_cFPv */
int daNpc_Hanjo_c::takayose(void* param_0) {
    f32 dVar8 = daNpc_Hanjo_Param_c::m.field_0xae;
    cXyz cStack_50;
    cXyz cStack_5c;
    switch (field_0xe22) {
    case 0:
    case 1:
        if (!field_0xd08.checkStagger()) {
            if (mType == 1) {
                if (daNpcT_chkEvtBit(0xcf)) {
                    mFaceMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                    mMotionSeqMngr.setNo(13, -1.0f, 0, 0);
                    field_0x1714 = 0;
                } else {
                    if (field_0x1714 != 0) {
                        mFaceMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                        mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                    } else {
                        mFaceMotionSeqMngr.setNo(7, -1.0f, 0, 0);
                        mMotionSeqMngr.setNo(2, -1.0f, 0, 0);
                    }
                }
            } else {
                mFaceMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
            }
            field_0x1710 = cLib_getRndValue(dVar8 * 0.5f, dVar8 * 1.5f);
            field_0xe22 = 2;
        }
    case 2:
        field_0xe2d = 0;
        dComIfG_play_c& play = g_dComIfG_gameInfo.play;
        if (play.getEvent().runCheck()) {
            if (strcmp("toal_enter01", play.getEvtManager().getRunEventName()) == 0) {
                dComIfGp_event_setTalkPartner(this);
                field_0xe2d = 1;
            }
        }
        if (mType == TYPE_1 && !daNpcT_chkEvtBit(0xcf) && field_0x10c8[2].getActorP() != NULL) {
            if (!daPy_getPlayerActorClass()->checkPlayerFly()) {
                daTag_EvtArea_c* evtArea = (daTag_EvtArea_c*)field_0x10c8[3].getActorP();
                if (evtArea != NULL) {
                    if (evtArea->chkPointInArea(daPy_getPlayerActorClass()->current.pos)) {
                        mEvtNo = 9;
                    }
                }
            }
        }
        if (daPy_py_c::i_checkNowWolf() && mCyl2.ChkCoHit() != NULL) {
            if (!daPy_getPlayerActorClass()->checkPlayerFly() ||
                daPy_getPlayerActorClass()->checkAutoJump() ||
                daPy_getPlayerActorClass()->checkWolfTriggerJump())
            {
                mEvtNo = 10;
            }
        }
        if (!field_0xd08.checkStagger()) {
            if (mType == 1) {
                mPlayerActorMngr.remove();
            }
            if (mPlayerActorMngr.getActorP() != NULL) {
                mJntAnm.lookPlayer(0);
                if (!chkActorInSight(mPlayerActorMngr.getActorP(), field_0xdf8, mCurAngle.y)) {
                    mJntAnm.lookNone(0);
                }
                if (!srchPlayerActor() && home.angle.y == mCurAngle.y) {
                    field_0xe22 = 1;
                }
            } else {
                mJntAnm.lookNone(0);
                if (home.angle.y != mCurAngle.y) {
                    if (field_0xe34 != 0) {
                        if (step(home.angle.y, 7, 14, 15, 0)) {
                            field_0xe22 = 1;
                        }
                    } else {
                        setAngle(home.angle.y);
                        field_0xe22 = 1;
                    }
                    attention_info.flags = 0;
                } else {
                    if (mType == 1) {
                        if (daNpcT_chkEvtBit(0xcf)) {
                            u8 dVar1 = field_0x1722;
                            fopAc_ac_c* actor_p = field_0x10c8[2].getActorP();
                            if (actor_p != NULL) {
                                field_0x1722 = commandToHawk();
                                if (field_0x1722 != 0) {
                                    mJntAnm.lookPlayer(0);
                                    if (mMotionSeqMngr.getNo() != 11) {
                                        mFaceMotionSeqMngr.setNo(7, -1.0f, 0, 0);
                                        mMotionSeqMngr.setNo(11, -1.0f, 0, 0);
                                    }
                                } else {
                                    if (dVar1 != 0) {
                                        field_0x1714 = 0;
                                        field_0xe22 = 1;
                                    } else {
                                        if (field_0x1714 != 0) {
                                            mJntAnm.lookNone(0);
                                            if (mMotionSeqMngr.getStepNo() > 0) {
                                                field_0x1714++;
                                                field_0x1714 &= 1;
                                                field_0xe22 = 1;
                                            }
                                        } else {
                                            mJntAnm.lookActor(actor_p, 0.0, 0);
                                            if (((daNPC_TK_c*)actor_p)->isHanjoHand() &&
                                                cLib_calcTimer(&field_0x1710) == 0)
                                            {
                                                mMotionSeqMngr.setNo(9, -1.0, 0, 0);
                                                field_0x1714 = field_0x1714 + 1;
                                                field_0x1714 &= 1;
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            if (!g_dComIfG_gameInfo.play.getEvent().mEventStatus &&
                                cLib_calcTimer(&field_0x1710) == 0)
                            {
                                field_0x1714++;
                                field_0x1714 &= 1;
                                field_0xe22 = 1;
                            }
                        }
                    }
                    srchPlayerActor();
                }
            }
        }
        break;
    case 3:
    default:
        break;
    }
    return 1;
}

/* 809FEAEC-809FED58 005B4C 026C+00 3/0 0/0 0/0 .text            talk__13daNpc_Hanjo_cFPv */
int daNpc_Hanjo_c::talk(void* param_0) {
    switch(field_0xe22) {
    case 0:
    case 1:
        if (!field_0xd08.checkStagger()) {
            if (mType == TYPE_0 && mMotionSeqMngr.getNo() == 2) {
                mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
            }
            if (field_0x1723 != 0) {
                initTalk(44, NULL);
                field_0x1723 = 0;
            } else {
                initTalk(field_0xa7c, NULL);
            }
            field_0xe22 = 2;
        }
    case 2:
        if (!field_0xd08.checkStagger()) {
            if (mTwilight != 0 || field_0xdc8 == mCurAngle.y) {
                if (talkProc(NULL, 0, NULL, 0) && mFlow.checkEndFlow()) {
                    mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                    dComIfGp_event_reset();
                    field_0xe22 = 3;
                }
                mJntAnm.lookPlayer(0);
                if (mTwilight != 0) {
                    mJntAnm.lookNone(0);
                }
            } else {
                mJntAnm.lookPlayer(0);
                if (field_0x1721 != 0) {
                    step(field_0xdc8, -1, -1, 15, 0);
                } else {
                    step(field_0xdc8, 7, 14, 15, 0);
                }
            }
        }
        break;
    case 3:
    default:
        break;
    }
    return 0;
}

/* 809FED58-809FED78 005DB8 0020+00 1/0 0/0 0/0 .text            daNpc_Hanjo_Create__FPv */
static int daNpc_Hanjo_Create(void* i_this) {
    return static_cast<daNpc_Hanjo_c*>(i_this)->create();
}

/* 809FED78-809FED98 005DD8 0020+00 1/0 0/0 0/0 .text            daNpc_Hanjo_Delete__FPv */
static int daNpc_Hanjo_Delete(void* i_this) {
    return static_cast<daNpc_Hanjo_c*>(i_this)->Delete();
}

/* 809FED98-809FEDB8 005DF8 0020+00 1/0 0/0 0/0 .text            daNpc_Hanjo_Execute__FPv */
static int daNpc_Hanjo_Execute(void* i_this) {
    return static_cast<daNpc_Hanjo_c*>(i_this)->Execute();
}

/* 809FEDB8-809FEDD8 005E18 0020+00 1/0 0/0 0/0 .text            daNpc_Hanjo_Draw__FPv */
static int daNpc_Hanjo_Draw(void* i_this) {
    return static_cast<daNpc_Hanjo_c*>(i_this)->Draw();
}

/* 809FEDD8-809FEDE0 005E38 0008+00 1/0 0/0 0/0 .text            daNpc_Hanjo_IsDelete__FPv */
static int daNpc_Hanjo_IsDelete(void* i_this) {
    return 1;
}

AUDIO_INSTANCES;

/* 80A010A8-80A010C8 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Hanjo_MethodTable */
static actor_method_class daNpc_Hanjo_MethodTable = {
    (process_method_func)daNpc_Hanjo_Create,
    (process_method_func)daNpc_Hanjo_Delete,
    (process_method_func)daNpc_Hanjo_Execute,
    (process_method_func)daNpc_Hanjo_IsDelete,
    (process_method_func)daNpc_Hanjo_Draw,
};

/* 80A010C8-80A010F8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_HANJO */
extern actor_process_profile_definition g_profile_NPC_HANJO = {
  fpcLy_CURRENT_e,            // mLayerID
  7,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_NPC_HANJO,             // mProcName
  &g_fpcLf_Method.base,      // sub_method
  sizeof(daNpc_Hanjo_c),      // mSize
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  341,                        // mPriority
  &daNpc_Hanjo_MethodTable,   // sub_method
  0x00040107,                 // mStatus
  fopAc_NPC_e,                // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};


/* 80A007F8-80A007F8 0001F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
