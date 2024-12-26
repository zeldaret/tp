/**
 * @file d_a_npc_kn.cpp
 * 
*/

#include "d/actor/d_a_npc_kn.h"
#include "d/actor/d_a_npc.h"
#include "d/actor/d_a_npc_gwolf.h"
#include "d/actor/d_a_obj_knBullet.h"
#include "JSystem//J3DGraphBase/J3DMaterial.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__10daNpc_Kn_cFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __dt__Q210daNpc_Kn_c20daNpc_Kn_prtclMngr_cFv();
extern "C" void create__10daNpc_Kn_cFv();
extern "C" void CreateHeap__10daNpc_Kn_cFv();
extern "C" void Delete__10daNpc_Kn_cFv();
extern "C" void Execute__10daNpc_Kn_cFv();
extern "C" void Draw__10daNpc_Kn_cFv();
extern "C" void createHeapCallBack__10daNpc_Kn_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__10daNpc_Kn_cFP8J3DJointi();
extern "C" void getType__10daNpc_Kn_cFv();
extern "C" void getDivideNo__10daNpc_Kn_cFv();
extern "C" void getFlowNodeNo__10daNpc_Kn_cFv();
extern "C" void getPath__10daNpc_Kn_cFv();
extern "C" void isDelete__10daNpc_Kn_cFv();
extern "C" void resetCol__10daNpc_Kn_cFv();
extern "C" void reset__10daNpc_Kn_cFv();
extern "C" void resetType__10daNpc_Kn_cFv();
extern "C" void setParam__10daNpc_Kn_cFv();
extern "C" void setParamTeach03__10daNpc_Kn_cFv();
extern "C" void setParamTeach04__10daNpc_Kn_cFv();
extern "C" void setParamTeach05__10daNpc_Kn_cFv();
extern "C" void setParamTeach06__10daNpc_Kn_cFv();
extern "C" void setParamTeach07__10daNpc_Kn_cFv();
extern "C" void setAfterTalkMotion__10daNpc_Kn_cFv();
extern "C" void srchActors__10daNpc_Kn_cFv();
extern "C" void evtTalk__10daNpc_Kn_cFv();
extern "C" void evtCutProc__10daNpc_Kn_cFv();
extern "C" void action__10daNpc_Kn_cFv();
extern "C" void beforeMove__10daNpc_Kn_cFv();
extern "C" void afterMoved__10daNpc_Kn_cFv();
extern "C" void setAttnPos__10daNpc_Kn_cFv();
extern "C" void setCollision__10daNpc_Kn_cFv();
extern "C" void setCollisionSword__10daNpc_Kn_cFv();
extern "C" void checkCollisionSword__10daNpc_Kn_cFv();
extern "C" void setCollisionTeach03__10daNpc_Kn_cFv();
extern "C" void setCollisionTeach04__10daNpc_Kn_cFv();
extern "C" void setCollisionTeach05__10daNpc_Kn_cFv();
extern "C" void setCollisionTeach06__10daNpc_Kn_cFv();
extern "C" void setCollisionTeach07__10daNpc_Kn_cFv();
extern "C" bool drawDbgInfo__10daNpc_Kn_cFv();
extern "C" void drawOtherMdl__10daNpc_Kn_cFv();
extern "C" void drawGhost__10daNpc_Kn_cFv();
extern "C" void afterSetMotionAnm__10daNpc_Kn_cFiifi();
extern "C" void selectAction__10daNpc_Kn_cFv();
extern "C" void teach03_selectAction__10daNpc_Kn_cFv();
extern "C" void teach04_selectAction__10daNpc_Kn_cFv();
extern "C" void teach05_selectAction__10daNpc_Kn_cFv();
extern "C" void teach06_selectAction__10daNpc_Kn_cFv();
extern "C" void teach07_selectAction__10daNpc_Kn_cFv();
extern "C" void chkAction__10daNpc_Kn_cFM10daNpc_Kn_cFPCvPvPv_i();
extern "C" void setAction__10daNpc_Kn_cFM10daNpc_Kn_cFPCvPvPv_i();
extern "C" void wait__10daNpc_Kn_cFPv();
extern "C" void talk__10daNpc_Kn_cFPv();
extern "C" void test__10daNpc_Kn_cFPv();
extern "C" void setSceneChange__10daNpc_Kn_cFi();
extern "C" void ECut_noneEquipChangeTalk__10daNpc_Kn_cFi();
extern "C" void ECut_noneEquipChangeTalkStand__10daNpc_Kn_cFi();
extern "C" void ECut_largeDamageTalk__10daNpc_Kn_cFi();
extern "C" void teach02_start__10daNpc_Kn_cFPv();
extern "C" void teach03_attackWait__10daNpc_Kn_cFPv();
extern "C" void teach04_attackWait__10daNpc_Kn_cFPv();
extern "C" void teach04_headBreakWait__10daNpc_Kn_cFPv();
extern "C" void teach04_finishWait__10daNpc_Kn_cFPv();
extern "C" void teach05_surpriseAttackWait__10daNpc_Kn_cFPv();
extern "C" static void s_sub6__FPvPv();
extern "C" static void s_subEnd6__FPvPv();
extern "C" void teach06_superJumpWait__10daNpc_Kn_cFPv();
extern "C" void teach06_divideMove__10daNpc_Kn_cFPv();
extern "C" void teach06_waitDivide__10daNpc_Kn_cFPv();
extern "C" void teach06_superJumpWaitDivide__10daNpc_Kn_cFPv();
extern "C" void teach06_superJumpedDivide__10daNpc_Kn_cFPv();
extern "C" void teach06_warpDelete__10daNpc_Kn_cFPv();
extern "C" static void s_sub7__FPvPv();
extern "C" static void s_subEnd7__FPvPv();
extern "C" void teach07_superTurnAttackWait__10daNpc_Kn_cFPv();
extern "C" void teach07_divideMove__10daNpc_Kn_cFPv();
extern "C" void teach07_waitDivide__10daNpc_Kn_cFPv();
extern "C" void teach07_superTurnAttackWaitDivide__10daNpc_Kn_cFPv();
extern "C" void teach07_superTurnAttackedDivide__10daNpc_Kn_cFPv();
extern "C" void teach07_warpDelete__10daNpc_Kn_cFPv();
extern "C" void ECut_secondEncount__10daNpc_Kn_cFi();
extern "C" void ECut_thirdSkillExplain__10daNpc_Kn_cFi();
extern "C" void ECut_thirdSkillGet__10daNpc_Kn_cFi();
extern "C" void ECut_fourthSkillExplain__10daNpc_Kn_cFi();
extern "C" void ECut_fourthSkillGet__10daNpc_Kn_cFi();
extern "C" void ECut_fifthSkillExplain__10daNpc_Kn_cFi();
extern "C" void ECut_fifthSkillGet__10daNpc_Kn_cFi();
extern "C" void ECut_sixthSkillExplain__10daNpc_Kn_cFi();
extern "C" void ECut_sixthSkillGet__10daNpc_Kn_cFi();
extern "C" void ECut_seventhSkillExplain__10daNpc_Kn_cFi();
extern "C" void ECut_seventhSkillGet__10daNpc_Kn_cFi();
extern "C" void setPrtcl__10daNpc_Kn_cFv();
extern "C" void setSlipPrtcl__10daNpc_Kn_cFv();
extern "C" void setLandingPrtcl__10daNpc_Kn_cFv();
extern "C" void calcMagicBallPos__10daNpc_Kn_cFv();
extern "C" void setSwordChargePtcl__10daNpc_Kn_cFv();
extern "C" void calcSlip__10daNpc_Kn_cFv();
extern "C" void calcSwordAttackMove__10daNpc_Kn_cFi();
extern "C" void setSe__10daNpc_Kn_cFv();
extern "C" static void daNpc_Kn_Create__FPv();
extern "C" static void daNpc_Kn_Delete__FPv();
extern "C" static void daNpc_Kn_Execute__FPv();
extern "C" static void daNpc_Kn_Draw__FPv();
extern "C" static bool daNpc_Kn_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void
tgHitCallBack__10daNpc_Kn_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void getTrnsfrmAnmP__10daNpc_Kn_cFPCci();
extern "C" void getTrnsfrmKeyAnmP__10daNpc_Kn_cFPCci();
extern "C" void getTexPtrnAnmP__10daNpc_Kn_cFPCci();
extern "C" void getTexSRTKeyAnmP__10daNpc_Kn_cFPCci();
extern "C" void setBckAnm__10daNpc_Kn_cFP15J3DAnmTransformfiiib();
extern "C" void setMcaMorfAnm__10daNpc_Kn_cFP18J3DAnmTransformKeyffiii();
extern "C" void setBtpAnm__10daNpc_Kn_cFP16J3DAnmTexPatternP12J3DModelDatafi();
extern "C" void setBtkAnm__10daNpc_Kn_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi();
extern "C" void loadRes__10daNpc_Kn_cFPCScPPCc();
extern "C" void deleteRes__10daNpc_Kn_cFPCScPPCc();
extern "C" void execute__10daNpc_Kn_cFv();
extern "C" void draw__10daNpc_Kn_cFiifP11_GXColorS10fiii();
extern "C" void setEnvTevColor__10daNpc_Kn_cFv();
extern "C" void setRoomNo__10daNpc_Kn_cFv();
extern "C" void checkEndAnm__10daNpc_Kn_cFf();
extern "C" void checkEndAnm__10daNpc_Kn_cFP12J3DFrameCtrlf();
extern "C" void playAllAnm__10daNpc_Kn_cFv();
extern "C" void ctrlBtk__10daNpc_Kn_cFv();
extern "C" void setMtx__10daNpc_Kn_cFv();
extern "C" void ctrlFaceMotion__10daNpc_Kn_cFv();
extern "C" void ctrlMotion__10daNpc_Kn_cFv();
extern "C" void ctrlMsgAnm__10daNpc_Kn_cFPiPiP10fopAc_ac_ci();
extern "C" void ctrlJoint__10daNpc_Kn_cFP8J3DJointP8J3DModel();
extern "C" void evtProc__10daNpc_Kn_cFv();
extern "C" void setFootPos__10daNpc_Kn_cFv();
extern "C" void setFootPrtcl__10daNpc_Kn_cFP4cXyzf();
extern "C" bool checkCullDraw__10daNpc_Kn_cFv();
extern "C" void twilight__10daNpc_Kn_cFv();
extern "C" void evtOrder__10daNpc_Kn_cFv();
extern "C" void evtChange__10daNpc_Kn_cFv();
extern "C" void clrParam__10daNpc_Kn_cFv();
extern "C" void setFaceMotionAnm__10daNpc_Kn_cFib();
extern "C" void setMotionAnm__10daNpc_Kn_cFifi();
extern "C" void setPos__10daNpc_Kn_cF4cXyz();
extern "C" void setAngle__10daNpc_Kn_cFs();
extern "C" void chkActorInSight__10daNpc_Kn_cFP10fopAc_ac_cfs();
extern "C" void chkPointInArea__10daNpc_Kn_cF4cXyz4cXyzfffs();
extern "C" void chkPointInArea__10daNpc_Kn_cF4cXyz4cXyz4cXyzs();
extern "C" void chkFindPlayer__10daNpc_Kn_cFis();
extern "C" void getDistTable__12dAttention_cFi();
extern "C" void srchPlayerActor__10daNpc_Kn_cFv();
extern "C" void getAttnPos__10daNpc_Kn_cFP10fopAc_ac_c();
extern "C" void turn__10daNpc_Kn_cFsii();
extern "C" void step__10daNpc_Kn_cFsiiii();
extern "C" void initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c();
extern "C" void talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci();
extern "C" void setHitodamaPrtcl__10daNpc_Kn_cFv();
extern "C" void decTmr__10daNpc_Kn_cFv();
extern "C" void afterJntAnm__10daNpc_Kn_cFi();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" bool evtEndProc__10daNpc_Kn_cFv();
extern "C" bool checkChangeEvt__10daNpc_Kn_cFv();
extern "C" s32 getFootRJointNo__10daNpc_Kn_cFv();
extern "C" s32 getFootLJointNo__10daNpc_Kn_cFv();
extern "C" bool chkXYItems__10daNpc_Kn_cFv();
extern "C" bool afterSetFaceMotionAnm__10daNpc_Kn_cFiifi();
extern "C" void getFaceMotionAnm__10daNpc_Kn_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__10daNpc_Kn_cF22daNpcT_motionAnmData_c();
extern "C" void
__ct__10daNpc_Kn_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" s32 getEyeballMaterialNo__10daNpc_Kn_cFv();
extern "C" bool getEyeballLMaterialNo__10daNpc_Kn_cFv();
extern "C" bool getEyeballRMaterialNo__10daNpc_Kn_cFv();
extern "C" void func_80A3BD2C(void* _this, s16*);
extern "C" void func_80A3BD48(void* _this, int*);
extern "C" void func_80A3BD64(void* _this, s16, s16);
extern "C" void func_80A3BDE8(void* _this, int, int);
extern "C" void __sinit_d_a_npc_kn_cpp();
extern "C" void __dt__16daNpc_Kn_Param_cFv();
extern "C" static void func_80A3C16C();
extern "C" static void func_80A3C174();
extern "C" void __dt__13daNpcT_Path_cFv();
extern "C" void __ct__Q210daNpc_Kn_c20daNpc_Kn_prtclMngr_cFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __ct__11J3DLightObjFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__15daNpcT_JntAnm_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs();
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs();
extern "C" void setParamTeach01__10daNpc_Kn_cFv();
extern "C" void setCollisionTeach01__10daNpc_Kn_cFv();
extern "C" void teach01_selectAction__10daNpc_Kn_cFv();
extern "C" void teach01_start__10daNpc_Kn_cFPv();
extern "C" void teach01_attackWait__10daNpc_Kn_cFPv();
extern "C" void teach01_swordAttackWait__10daNpc_Kn_cFPv();
extern "C" void teach01_swordFinishWait__10daNpc_Kn_cFPv();
extern "C" void ctrlWarp__10daNpc_Kn_cFv();
extern "C" void ECut_firstEncount__10daNpc_Kn_cFi();
extern "C" void ECut_attackFailed__10daNpc_Kn_cFi();
extern "C" void ECut_firstSkillGet__10daNpc_Kn_cFi();
extern "C" void setParamTeach02__10daNpc_Kn_cFv();
extern "C" void setCollisionTeach02__10daNpc_Kn_cFv();
extern "C" void teach02_selectAction__10daNpc_Kn_cFv();
extern "C" void teach02_shieldBashWait__10daNpc_Kn_cFPv();
extern "C" void teach02_finishWait__10daNpc_Kn_cFPv();
extern "C" void teach02_shieldReflectWait__10daNpc_Kn_cFPv();
extern "C" void ECut_secondSkillExplain__10daNpc_Kn_cFi();
extern "C" void ECut_reflectExplain__10daNpc_Kn_cFi();
extern "C" void ECut_secondSkillGet__10daNpc_Kn_cFi();
extern "C" u8 const mCcDObjData__10daNpc_Kn_c[48];
extern "C" u8 const m__16daNpc_Kn_Param_c[180];
extern "C" extern char const* const d_a_npc_kn__stringBase0;
extern "C" u8 mCcDCyl__10daNpc_Kn_c[68];
extern "C" u8 mCcDSph__10daNpc_Kn_c[64];
extern "C" void* mCutNameList__10daNpc_Kn_c[21];
extern "C" u8 mCutList__10daNpc_Kn_c[252];
extern "C" u8 mFindActorPtrs__10daNpc_Kn_c[200];
extern "C" u8 mFindCount__10daNpc_Kn_c[4];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotS__FPA4_fsss();
extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void entry__13mDoExt_bpkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void create__21mDoExt_invisibleModelFP8J3DModelUc();
extern "C" void entryDL__21mDoExt_invisibleModelFP4cXyz();
extern "C" void setMorf__13mDoExt_morf_cFf();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMove__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs();
extern "C" void fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void fopAcM_getPolygonAngle__FRC13cBgS_PolyInfos();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fopKyM_create__FsiP4cXyzP4cXyzPFPv_i();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcEx_SearchByID__FUi();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void convPId__14dEvt_control_cFUi();
extern "C" void setPtT__14dEvt_control_cFPv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void setObjectArchive__16dEvent_manager_cFPc();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
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
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff();
extern "C" void
setEffectTwo__8dPaPoT_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC4cXyzPC4cXyzPC5csXyzPC4cXyzScff();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void LockonTruth__12dAttention_cFv();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
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
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcT_ActorMngr_cFv();
extern "C" void getActorP__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void play__22daNpcT_MotionSeqMngr_cFUsPiPf();
extern "C" void initialize__13daNpcT_Path_cFv();
extern "C" void setPathInfo__13daNpcT_Path_cFUcScUc();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz();
extern "C" void calcJntRad__15daNpcT_JntAnm_cFfff();
extern "C" void daNpcT_chkPointInArea__F4cXyz4cXyz4cXyzsi();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_onEvtBit__FUl();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
extern "C" void getAttentionOffsetY__9daPy_py_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_tevstr_init__FP12dKy_tevstr_cScUc();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void dMeter2Info_getNowLifeGauge__Fv();
extern "C" void getActor__12dMsgObject_cFv();
extern "C" void offMsgSendControl__12dMsgObject_cFv();
extern "C" void isMsgSendControl__12dMsgObject_cFv();
extern "C" void isMouthCheck__12dMsgObject_cFv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void checkEventRender__10dMsgFlow_cFPiPiPiPi();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void getMsgNo__10dMsgFlow_cFv();
extern "C" void getMsg__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void __dv__4cXyzCFf();
extern "C" void cM_rad2s__Ff();
extern "C" void cM_atan2s__Fff();
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
extern "C" void cLib_addCalcPos2__FP4cXyzRC4cXyzff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void __ct__7cSAngleFRC7cSAngle();
extern "C" void __ct__7cSAngleFs();
extern "C" void Inv__7cSAngleCFv();
extern "C" void __mi__7cSAngleCFs();
extern "C" void __ct__7cSGlobeFRC4cXyz();
extern "C" void func_802807E0();
extern "C" void bgmStart__8Z2SeqMgrFUlUll();
extern "C" void bgmStop__8Z2SeqMgrFUll();
extern "C" void bgmStreamPrepare__8Z2SeqMgrFUl();
extern "C" void bgmStreamPlay__8Z2SeqMgrFv();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __as__12J3DLightInfoFRC12J3DLightInfo();
extern "C" void init__12J3DFrameCtrlFs();
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
extern "C" u8 dist_table__12dAttention_c[6552];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" extern u8 g_meter2_info[248];
extern "C" u8 BaseX__4cXyz[12];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80A40AF8-80A40AF8 000230 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
// #pragma push
// #pragma force_active on
// SECTION_DEAD static char const* const stringBase_80A40AF8 = "DEFAULT_GETITEM";
// SECTION_DEAD static char const* const stringBase_80A40B08 = "";
// SECTION_DEAD static char const* const stringBase_80A40B09 = "NONE_EQUIP_CHANGE_TALK";
// SECTION_DEAD static char const* const stringBase_80A40B20 = "NONE_EQUIP_CHANGE_TALK_WAIT";
// SECTION_DEAD static char const* const stringBase_80A40B3C = "NO_EQ_CHNGE_TLK_STD";
// SECTION_DEAD static char const* const stringBase_80A40B50 = "LARGE_DAMAGE_TALK";
// SECTION_DEAD static char const* const stringBase_80A40B62 = "FIRST_ENCOUNT";
// SECTION_DEAD static char const* const stringBase_80A40B70 = "ATTACK_FAILED";
// SECTION_DEAD static char const* const stringBase_80A40B7E = "FIRST_SKILL_GET";
// SECTION_DEAD static char const* const stringBase_80A40B8E = "SECOND_ENCOUNT";
// SECTION_DEAD static char const* const stringBase_80A40B9D = "SECOND_SKILL_EXPLAIN";
// SECTION_DEAD static char const* const stringBase_80A40BB2 = "REFLECT_EXPLAIN";
// SECTION_DEAD static char const* const stringBase_80A40BC2 = "SECOND_SKILL_GET";
// SECTION_DEAD static char const* const stringBase_80A40BD3 = "THIRD_SKILL_EXPLAIN";
// SECTION_DEAD static char const* const stringBase_80A40BE7 = "THIRD_SKILL_FIRST";
// SECTION_DEAD static char const* const stringBase_80A40BF9 = "THIRD_SKILL_GET";
// SECTION_DEAD static char const* const stringBase_80A40C09 = "FOURTH_SKILL_EXPLAIN";
// SECTION_DEAD static char const* const stringBase_80A40C1E = "FOURTH_SKILL_GET";
// SECTION_DEAD static char const* const stringBase_80A40C2F = "FIFTH_SKILL_EXPLAIN";
// SECTION_DEAD static char const* const stringBase_80A40C43 = "FIFTH_SKILL_FIRST";
// SECTION_DEAD static char const* const stringBase_80A40C55 = "FIFTH_SKILL_GET";
// SECTION_DEAD static char const* const stringBase_80A40C65 = "SIXTH_SKILL_EXPLAIN";
// SECTION_DEAD static char const* const stringBase_80A40C79 = "SIXTH_SKILL_GET";
// SECTION_DEAD static char const* const stringBase_80A40C89 = "SIXTH_SKILL_GET_STAND";
// SECTION_DEAD static char const* const stringBase_80A40C9F = "SEVENTH_SKILL_EXPLAIN";
// SECTION_DEAD static char const* const stringBase_80A40CB5 = "SEVENTH_SKILL_GET";
// SECTION_DEAD static char const* const stringBase_80A40CC7 = "SEVENTH_SKILL_GET_STAND";
// SECTION_DEAD static char const* const stringBase_80A40CDF = "KN_a";
// SECTION_DEAD static char const* const stringBase_80A40CE4 = "KN_tch01D";
// SECTION_DEAD static char const* const stringBase_80A40CEE = "KN_tch02D";
// SECTION_DEAD static char const* const stringBase_80A40CF8 = "KN_tch03D";
// SECTION_DEAD static char const* const stringBase_80A40D02 = "KN_tch04D";
// SECTION_DEAD static char const* const stringBase_80A40D0C = "KN_tch05D";
// SECTION_DEAD static char const* const stringBase_80A40D16 = "KN_tch06D";
// SECTION_DEAD static char const* const stringBase_80A40D20 = "KN_tch07D";
// #pragma pop

/* 80A40D34-80A40D40 000000 000C+00 10/10 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
};

// /* 80A40D40-80A40D54 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static u32 lit_1787[1 + 4 /* padding */] = {
//     0x02000201,
//     /* padding */
//     0x40080000,
//     0x00000000,
//     0x3FE00000,
//     0x00000000,
// };
// #pragma pop

/* 80A40D54-80A40D98 000020 0044+00 1/1 0/0 0/0 .data            mCcDCyl__10daNpc_Kn_c */
dCcD_SrcCyl daNpc_Kn_c::mCcDCyl = {
    {
        {0, {{0, 0, 0}, {0, 0}, {0}}},
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0},
        {0},
    },
    {{0.0f, 0.0f, 0.0f}, 0.0f, 0.0f},
};

/* 80A40D98-80A40DD8 000064 0040+00 1/1 0/0 0/0 .data            mCcDSph__10daNpc_Kn_c */
dCcD_SrcSph daNpc_Kn_c::mCcDSph = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x0}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},         // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},         // mGObjTg
        {0x0},                                      // mGObjCo
    },                                              // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 0.0f}  // mSph
    }  
};

/* 80A40DD8-80A40DF0 0000A4 0018+00 0/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[3][2] = {
    {47, 1}, 
    {48, 1},
    {49, 1}
};

/* 80A40DF0-80A40EC0 -00001 00D0+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[52] = {
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x10),  (void*)NULL,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x11),  (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x28),  (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x44),  (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x58),  (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x6A),  (void*)0x00000002,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x78),  (void*)0x00000002,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x86),  (void*)0x00000002,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x96),  (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0xA5),  (void*)0x00000003,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0xBA),  (void*)0x00000003,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0xCA),  (void*)0x00000003,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0xDB),  (void*)0x00000004,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0xEF),  (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x101), (void*)0x00000004,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x111), (void*)0x00000005,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x126), (void*)0x00000005,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x137), (void*)0x00000006,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x14B), (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x15D), (void*)0x00000006,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x16D), (void*)0x00000007,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x181), (void*)0x00000007,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x191), (void*)0x00000007,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x1A7), (void*)0x00000008,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x1BD), (void*)0x00000008,
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x1CF), (void*)0x00000008,
};
#pragma pop

/* 80A40EC0-80A40EE4 -00001 0024+00 2/4 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[9] = {
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x10),
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x1E7),
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x1EC),
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x1F6),
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x200),
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x20A),
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x214),
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x21E),
    (void*)(((char*)&d_a_npc_kn__stringBase0) + 0x228),
};

/* 80A40EE4-80A40EE8 0001B0 0003+01 1/0 0/0 0/0 .data            l_loadResPtrnTeach01 */
SECTION_DATA static u8 l_loadResPtrnTeach01[3 + 1 /* padding */] = {
    0x01,
    0x02,
    0xFF,
    /* padding */
    0x00,
};

/* 80A40EE8-80A40EEC 0001B4 0004+00 1/0 0/0 0/0 .data            l_loadResPtrnTeach02 */
SECTION_DATA static u32 l_loadResPtrnTeach02 = 0x010203FF;

/* 80A40EEC-80A40EF0 0001B8 0004+00 1/0 0/0 0/0 .data            l_loadResPtrnTeach03 */
SECTION_DATA static u32 l_loadResPtrnTeach03 = 0x010304FF;

/* 80A40EF0-80A40EF4 0001BC 0004+00 1/0 0/0 0/0 .data            l_loadResPtrnTeach04 */
SECTION_DATA static u32 l_loadResPtrnTeach04 = 0x010405FF;

/* 80A40EF4-80A40EF8 0001C0 0004+00 1/0 0/0 0/0 .data            l_loadResPtrnTeach05 */
SECTION_DATA static u32 l_loadResPtrnTeach05 = 0x010506FF;

/* 80A40EF8-80A40EFC 0001C4 0004+00 1/0 0/0 0/0 .data            l_loadResPtrnTeach06 */
SECTION_DATA static u32 l_loadResPtrnTeach06 = 0x010607FF;

/* 80A40EFC-80A40F00 0001C8 0003+01 1/0 0/0 0/0 .data            l_loadResPtrnTeach07 */
SECTION_DATA static u8 l_loadResPtrnTeach07[3 + 1 /* padding */] = {
    0x01,
    0x08,
    0xFF,
    /* padding */
    0x00,
};

/* 80A40F00-80A40F04 0001CC 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80A40F04-80A40F24 -00001 0020+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[8] = {
    (void*)&l_loadResPtrnTeach01, (void*)&l_loadResPtrnTeach02, (void*)&l_loadResPtrnTeach03,
    (void*)&l_loadResPtrnTeach04, (void*)&l_loadResPtrnTeach05, (void*)&l_loadResPtrnTeach06,
    (void*)&l_loadResPtrnTeach07, (void*)&l_loadResPtrn0,
};

/* 80A40F24-80A40F5C 0001F0 0038+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[2] = {
    {-1, 0, 0, -1, 0, 0, 0},
     {21, 0, 1, -1, 0, 0, 0}

};

/* 80A40F5C-80A41330 000228 03D4+00 0/1 0/0 0/0 .data            l_motionAnmData */
static int l_motionAnmData[245] = {
    43,2, 1, -1,0, 0, 0, 38,2, 1, -1,0, 0, 0, 39,2, 1, -1,0, 0, 
    0, 41,0, 1, -1,0, 0, 0, 16,0, 1, -1,0, 0, 0, 11,0, 1, -1,0, 
    0, 0, 7, 0, 1, -1,0, 0, 0, 8, 0, 1, -1,0, 0, 0, 9, 2, 1, -1,
    0,0,0, 14,0, 1, -1,0, 0, 0, 13,2, 1, -1,0, 0, 0, 12,0, 1, 
    -1,0, 0, 0, 30,0, 1, -1,0, 0, 0, 17,2, 1, -1,0, 0, 0, 26,0, 
    1, -1,0, 0, 0, 28,2, 1, -1,0, 0, 0, 35,0, 1, -1,0, 0, 0, 36,
    2, 1, -1,0, 0, 0, 10,0, 1, -1,0, 0, 0, 19,0, 1, -1,0, 0, 0, 
    40,0, 1, -1,0, 0, 0, 37,0, 1, -1,0, 0, 0, 5, 0, 1, -1,0, 0, 
    0, 18,2, 1, -1,0, 0, 0, 27,0, 1, -1,0, 0, 0, 29,2, 1, -1,0, 
    0, 0, 20,0, 1, -1,0, 0, 0, 15,0, 1, -1,0, 0, 0, 24,0, 1, -1,
    0, 0, 0, 25,2, 1, -1,0, 0, 0, 44,2, 1, -1,0, 0, 0, 42,0, 1, 
    -1,0, 0, 0, 22,0, 1, -1,0, 0, 0, 23,2, 1, -1,0, 0, 0, 6, 0, 
    1, -1,0, 0, 0
};

/* 80A41330-80A41358 0005FC 0028+00 1/2 0/0 0/0 .data            l_podBckData */
SECTION_DATA static u8 l_podBckData[40] = {
    0xFF, 0xFF, 0xFF, 0xFF, 
    0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x22,
    0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x21,
    0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x1F,
    0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x20,
    0x00, 0x00, 0x00, 0x01,
};

/* 80A41358-80A41378 000624 0020+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[8] = {
    {1, -1, 0},
    {-1, 0, 0}, 
    {-1, 0, 0}, 
    {-1, 0, 0},
    {0, -1, 0}, 
    {-1, 0, 0}, 
    {-1, 0, 0}, 
    {-1, 0, 0},
};

/* 80A41378-80A41588 000644 0210+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[132] = {
    {0, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {3, -1, 1},
    {0, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {15, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {30, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {31, -1, 1},
    {30, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {29, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {33, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {5, 0, 1}, 
    {4, 3, 1}, 
    {0, -1, 0},
    {-1, 0, 0},
    {2, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {34, 3, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {7, 0, 1}, 
    {8, 0, 0}, 
    {-1, 0, 0},
    {-1, 0, 0},
    {32, 3, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {28, 3, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {23, 6, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {24, 3, 1},
    {25, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {26, -1, 1},
    {0, 0, 0}, 
    {-1, 0, 0},
    {-1, 0, 0},
    {20, 3, 1},
    {21, 3, 1},
    {22, 3, 1},
    {0, 3, 0}, 
    {13, 6, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {14, 3, 1},
    {15, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {16, -1, 1},
    {17, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {18, -1, 1},
    {15, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {19, -1, 1},
    {0, 0, 0}, 
    {-1, 0, 0},
    {-1, 0, 0},
    {5, 0, 1}, 
    {0, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {27, -1, 1},
    {2, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {12, 3, 1},
    {2, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {4, 3, 1}, 
    {0, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {5, 0, 1}, 
    {2, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {6, 0, 1}, 
    {0, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {7,  0, 1},
    {0, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {7, 0, 1}, 
    {2, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {7, 0, 1}, 
    {1, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {1, 3, 0}, 
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0}
};

/* 80A41588-80A415DC -00001 0054+00 1/1 0/0 0/0 .data            mCutNameList__10daNpc_Kn_c */
char* daNpc_Kn_c::mCutNameList[21] = {
    "",
    "NONE_EQUIP_CHANGE_TALK",
    "NO_EQ_CHNGE_TLK_STD",
    "LARGE_DAMAGE_TALK",
    "FIRST_ENCOUNT",
    "ATTACK_FAILED",
    "FIRST_SKILL_GET",
    "SECOND_ENCOUNT",
    "SECOND_SKILL_EXPLAIN",
    "REFLECT_EXPLAIN",
    "SECOND_SKILL_GET",
    "THIRD_SKILL_EXPLAIN",
    "THIRD_SKILL_GET",
    "FOURTH_SKILL_EXPLAIN",
    "FOURTH_SKILL_GET",
    "FIFTH_SKILL_EXPLAIN",
    "FIFTH_SKILL_GET",
    "SIXTH_SKILL_EXPLAIN",
    "SIXTH_SKILL_GET",
    "SEVENTH_SKILL_EXPLAIN",
    "SEVENTH_SKILL_GETT",
};

// /* 80A415DC-80A415E8 -00001 000C+00 0/1 0/0 0/0 .data            @5884 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5884[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_noneEquipChangeTalk__10daNpc_Kn_cFi,
// };
// #pragma pop

// /* 80A415E8-80A415F4 -00001 000C+00 0/1 0/0 0/0 .data            @5885 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5885[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_noneEquipChangeTalkStand__10daNpc_Kn_cFi,
// };
// #pragma pop

// /* 80A415F4-80A41600 -00001 000C+00 0/1 0/0 0/0 .data            @5886 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5886[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_largeDamageTalk__10daNpc_Kn_cFi,
// };
// #pragma pop

// /* 80A41600-80A4160C -00001 000C+00 0/1 0/0 0/0 .data            @5887 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5887[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_firstEncount__10daNpc_Kn_cFi,
// };
// #pragma pop

// /* 80A4160C-80A41618 -00001 000C+00 0/1 0/0 0/0 .data            @5888 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5888[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_attackFailed__10daNpc_Kn_cFi,
// };
// #pragma pop

// /* 80A41618-80A41624 -00001 000C+00 0/1 0/0 0/0 .data            @5889 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5889[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_firstSkillGet__10daNpc_Kn_cFi,
// };
// #pragma pop

// /* 80A41624-80A41630 -00001 000C+00 0/1 0/0 0/0 .data            @5890 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5890[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_secondEncount__10daNpc_Kn_cFi,
// };
// #pragma pop

// /* 80A41630-80A4163C -00001 000C+00 0/1 0/0 0/0 .data            @5891 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5891[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_secondSkillExplain__10daNpc_Kn_cFi,
// };
// #pragma pop

// /* 80A4163C-80A41648 -00001 000C+00 0/1 0/0 0/0 .data            @5892 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5892[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_reflectExplain__10daNpc_Kn_cFi,
// };
// #pragma pop

// /* 80A41648-80A41654 -00001 000C+00 0/1 0/0 0/0 .data            @5893 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5893[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_secondSkillGet__10daNpc_Kn_cFi,
// };
// #pragma pop

// /* 80A41654-80A41660 -00001 000C+00 0/1 0/0 0/0 .data            @5894 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5894[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_thirdSkillExplain__10daNpc_Kn_cFi,
// };
// #pragma pop

// /* 80A41660-80A4166C -00001 000C+00 0/1 0/0 0/0 .data            @5895 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5895[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_thirdSkillGet__10daNpc_Kn_cFi,
// };
// #pragma pop

// /* 80A4166C-80A41678 -00001 000C+00 0/1 0/0 0/0 .data            @5896 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5896[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_fourthSkillExplain__10daNpc_Kn_cFi,
// };
// #pragma pop

// /* 80A41678-80A41684 -00001 000C+00 0/1 0/0 0/0 .data            @5897 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5897[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_fourthSkillGet__10daNpc_Kn_cFi,
// };
// #pragma pop

// /* 80A41684-80A41690 -00001 000C+00 0/1 0/0 0/0 .data            @5898 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5898[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_fifthSkillExplain__10daNpc_Kn_cFi,
// };
// #pragma pop

// /* 80A41690-80A4169C -00001 000C+00 0/1 0/0 0/0 .data            @5899 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5899[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_fifthSkillGet__10daNpc_Kn_cFi,
// };
// #pragma pop

// /* 80A4169C-80A416A8 -00001 000C+00 0/1 0/0 0/0 .data            @5900 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5900[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_sixthSkillExplain__10daNpc_Kn_cFi,
// };
// #pragma pop

// /* 80A416A8-80A416B4 -00001 000C+00 0/1 0/0 0/0 .data            @5901 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5901[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_sixthSkillGet__10daNpc_Kn_cFi,
// };
// #pragma pop

// /* 80A416B4-80A416C0 -00001 000C+00 0/1 0/0 0/0 .data            @5902 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5902[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_seventhSkillExplain__10daNpc_Kn_cFi,
// };
// #pragma pop

// /* 80A416C0-80A416CC -00001 000C+00 0/1 0/0 0/0 .data            @5903 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_5903[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)ECut_seventhSkillGet__10daNpc_Kn_cFi,
// };
// #pragma pop

/* 80A416CC-80A417C8 000998 00FC+00 1/2 0/0 0/0 .data            mCutList__10daNpc_Kn_c */
daNpc_Kn_c::cutFunc daNpc_Kn_c::mCutList[21] = {
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
};

// /* 80A417C8-80A417E8 -00001 0020+00 1/1 0/0 0/0 .data            @6623 */
// SECTION_DATA static void* lit_6623[8] = {
//     (void*)(((char*)getType__10daNpc_Kn_cFv) + 0x60),
//     (void*)(((char*)getType__10daNpc_Kn_cFv) + 0x28),
//     (void*)(((char*)getType__10daNpc_Kn_cFv) + 0x30),
//     (void*)(((char*)getType__10daNpc_Kn_cFv) + 0x38),
//     (void*)(((char*)getType__10daNpc_Kn_cFv) + 0x40),
//     (void*)(((char*)getType__10daNpc_Kn_cFv) + 0x48),
//     (void*)(((char*)getType__10daNpc_Kn_cFv) + 0x50),
//     (void*)(((char*)getType__10daNpc_Kn_cFv) + 0x58),
// };

/* 80A417E8-80A417F8 000AB4 000E+02 1/1 0/0 0/0 .data            l_appearFlag$6644 */
SECTION_DATA static u8 l_appearFlag[14 + 2 /* padding */] = {
    0xFF,
    0xFF,
    0x01,
    0x53,
    0x01,
    0x52,
    0x01,
    0x54,
    0x01,
    0x55,
    0x01,
    0x56,
    0x01,
    0x57,
    /* padding */
    0x00,
    0x00,
};

/* 80A417F8-80A41808 000AC4 000E+02 1/1 0/0 0/0 .data            l_delFlag$6645 */
SECTION_DATA static u8 l_delFlag[14 + 2 /* padding */] = {
    0x01,
    0x53,
    0x01,
    0x52,
    0x01,
    0x54,
    0x01,
    0x55,
    0x01,
    0x56,
    0x01,
    0x57,
    0x01,
    0x58,
    /* padding */
    0x00,
    0x00,
};

// /* 80A41808-80A41824 -00001 001C+00 1/1 0/0 0/0 .data            @6752 */
// SECTION_DATA static void* lit_6752[7] = {
//     (void*)(((char*)resetType__10daNpc_Kn_cFv) + 0x24),
//     (void*)(((char*)resetType__10daNpc_Kn_cFv) + 0x30),
//     (void*)(((char*)resetType__10daNpc_Kn_cFv) + 0x3C),
//     (void*)(((char*)resetType__10daNpc_Kn_cFv) + 0x48),
//     (void*)(((char*)resetType__10daNpc_Kn_cFv) + 0x54),
//     (void*)(((char*)resetType__10daNpc_Kn_cFv) + 0x60),
//     (void*)(((char*)resetType__10daNpc_Kn_cFv) + 0x94),
// };

// /* 80A41824-80A41840 -00001 001C+00 1/1 0/0 0/0 .data            @6810 */
// SECTION_DATA static void* lit_6810[7] = {
//     (void*)(((char*)setParam__10daNpc_Kn_cFv) + 0x60),
//     (void*)(((char*)setParam__10daNpc_Kn_cFv) + 0x90),
//     (void*)(((char*)setParam__10daNpc_Kn_cFv) + 0xE0),
//     (void*)(((char*)setParam__10daNpc_Kn_cFv) + 0x110),
//     (void*)(((char*)setParam__10daNpc_Kn_cFv) + 0x140),
//     (void*)(((char*)setParam__10daNpc_Kn_cFv) + 0x170),
//     (void*)(((char*)setParam__10daNpc_Kn_cFv) + 0x180),
// };

// /* 80A41840-80A4184C -00001 000C+00 1/1 0/0 0/0 .data            @6873 */
// SECTION_DATA static void* lit_6873[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)talk__10daNpc_Kn_cFPv,
// };

// /* 80A4184C-80A41858 -00001 000C+00 1/1 0/0 0/0 .data            @6881 */
// SECTION_DATA static void* lit_6881[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)talk__10daNpc_Kn_cFPv,
// };

// /* 80A41858-80A41874 -00001 001C+00 1/1 0/0 0/0 .data            @7116 */
// SECTION_DATA static void* lit_7116[7] = {
//     (void*)(((char*)setCollision__10daNpc_Kn_cFv) + 0x70),
//     (void*)(((char*)setCollision__10daNpc_Kn_cFv) + 0x7C),
//     (void*)(((char*)setCollision__10daNpc_Kn_cFv) + 0xA4),
//     (void*)(((char*)setCollision__10daNpc_Kn_cFv) + 0xCC),
//     (void*)(((char*)setCollision__10daNpc_Kn_cFv) + 0xF4),
//     (void*)(((char*)setCollision__10daNpc_Kn_cFv) + 0x11C),
//     (void*)(((char*)setCollision__10daNpc_Kn_cFv) + 0x128),
// };

/* 80A41874-80A4187C 000B40 0008+00 1/1 0/0 0/0 .data            l_swordOffset$7120 */
static f32 l_swordOffset[2] = {
    60.0f,
    120.0f
};

// /* 80A4187C-80A41888 -00001 000C+00 0/1 0/0 0/0 .data            @7398 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7398[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)test__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41888-80A41894 -00001 000C+00 0/0 0/0 0/0 .data            @7413 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7413[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach02_start__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41894-80A418A0 -00001 000C+00 0/0 0/0 0/0 .data            @7421 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7421[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach02_start__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A418A0-80A418AC -00001 000C+00 0/0 0/0 0/0 .data            @7429 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7429[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach02_start__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A418AC-80A418B8 -00001 000C+00 0/0 0/0 0/0 .data            @7437 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7437[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach02_start__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A418B8-80A418C4 -00001 000C+00 0/1 0/0 0/0 .data            @7443 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7443[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)wait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A418C4-80A418E0 -00001 001C+00 1/1 0/0 0/0 .data            @7450 */
// SECTION_DATA static void* lit_7450[7] = {
//     (void*)(((char*)selectAction__10daNpc_Kn_cFv) + 0x88),
//     (void*)(((char*)selectAction__10daNpc_Kn_cFv) + 0x90),
//     (void*)(((char*)selectAction__10daNpc_Kn_cFv) + 0xB0),
//     (void*)(((char*)selectAction__10daNpc_Kn_cFv) + 0xD0),
//     (void*)(((char*)selectAction__10daNpc_Kn_cFv) + 0x114),
//     (void*)(((char*)selectAction__10daNpc_Kn_cFv) + 0x158),
//     (void*)(((char*)selectAction__10daNpc_Kn_cFv) + 0x19C),
// };

// /* 80A418E0-80A418EC -00001 000C+00 1/1 0/0 0/0 .data            @7456 */
// SECTION_DATA static void* lit_7456[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach03_attackWait__10daNpc_Kn_cFPv,
// };

// /* 80A418EC-80A418F8 -00001 000C+00 1/1 0/0 0/0 .data            @7458 */
// SECTION_DATA static void* lit_7458[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)wait__10daNpc_Kn_cFPv,
// };

// /* 80A418F8-80A41904 -00001 000C+00 0/1 0/0 0/0 .data            @7465 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7465[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach04_attackWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41904-80A41910 -00001 000C+00 0/1 0/0 0/0 .data            @7467 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7467[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach04_headBreakWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41910-80A4191C -00001 000C+00 0/1 0/0 0/0 .data            @7469 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7469[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach04_finishWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A4191C-80A41928 -00001 000C+00 0/1 0/0 0/0 .data            @7471 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7471[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)wait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41928-80A41934 -00001 000C+00 1/1 0/0 0/0 .data            @7478 */
// SECTION_DATA static void* lit_7478[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach05_surpriseAttackWait__10daNpc_Kn_cFPv,
// };

// /* 80A41934-80A41940 -00001 000C+00 1/1 0/0 0/0 .data            @7480 */
// SECTION_DATA static void* lit_7480[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)wait__10daNpc_Kn_cFPv,
// };

// /* 80A41940-80A4194C -00001 000C+00 0/1 0/0 0/0 .data            @7487 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7487[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach06_superJumpWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A4194C-80A41958 -00001 000C+00 0/1 0/0 0/0 .data            @7489 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7489[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach06_divideMove__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41958-80A41964 -00001 000C+00 0/1 0/0 0/0 .data            @7491 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7491[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach06_superJumpWaitDivide__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41964-80A41970 -00001 000C+00 0/1 0/0 0/0 .data            @7493 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7493[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach06_superJumpedDivide__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41970-80A4197C -00001 000C+00 0/1 0/0 0/0 .data            @7495 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7495[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach06_warpDelete__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A4197C-80A41988 -00001 000C+00 0/1 0/0 0/0 .data            @7497 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7497[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach06_waitDivide__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41988-80A41994 -00001 000C+00 0/1 0/0 0/0 .data            @7499 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7499[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)wait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41994-80A419A0 -00001 000C+00 0/1 0/0 0/0 .data            @7506 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7506[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach07_superTurnAttackWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A419A0-80A419AC -00001 000C+00 0/1 0/0 0/0 .data            @7508 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7508[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach07_divideMove__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A419AC-80A419B8 -00001 000C+00 0/1 0/0 0/0 .data            @7510 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7510[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach07_superTurnAttackWaitDivide__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A419B8-80A419C4 -00001 000C+00 0/1 0/0 0/0 .data            @7512 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7512[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach07_superTurnAttackedDivide__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A419C4-80A419D0 -00001 000C+00 0/1 0/0 0/0 .data            @7514 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7514[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach07_warpDelete__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A419D0-80A419DC -00001 000C+00 0/1 0/0 0/0 .data            @7516 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7516[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach07_waitDivide__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A419DC-80A419E8 -00001 000C+00 0/1 0/0 0/0 .data            @7518 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7518[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)wait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A419E8-80A41A3C -00001 0054+00 1/1 0/0 0/0 .data            @9731 */
// SECTION_DATA static void* lit_9731[21] = {
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x21C),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x224),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x22C),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x234),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x3D4),
// };

// /* 80A41A3C-80A41A90 -00001 0054+00 1/1 0/0 0/0 .data            @9730 */
// SECTION_DATA static void* lit_9730[21] = {
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x88),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0xEC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x124),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x144),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1F4),
// };

// /* 80A41A90-80A41BAC -00001 011C+00 1/1 0/0 0/0 .data            @9985 */
// SECTION_DATA static void* lit_9985[71] = {
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x3A4),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x4AC),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x568),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x590),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x688),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x688),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x6B0),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x7FC),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x590),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x824),
// };

// /* 80A41BAC-80A41CC8 -00001 011C+00 1/1 0/0 0/0 .data            @9984 */
// SECTION_DATA static void* lit_9984[71] = {
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x120),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x13C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x264),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x278),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x294),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x2E4),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x2F0),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x160),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x304),
// };

// /* 80A41CC8-80A41D44 -00001 007C+00 1/1 0/0 0/0 .data            @10163 */
// SECTION_DATA static void* lit_10163[31] = {
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2E8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x3B4),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x40C),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x434),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x4F0),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x548),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x5A4),
// };

// /* 80A41D44-80A41DC0 -00001 007C+00 1/1 0/0 0/0 .data            @10162 */
// SECTION_DATA static void* lit_10162[31] = {
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0xA4),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x134),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x16C),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x24C),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x270),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2A4),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2B8),
// };

// /* 80A41DC0-80A41EDC -00001 011C+00 1/1 0/0 0/0 .data            @10496 */
// SECTION_DATA static void* lit_10496[71] = {
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x4AC),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x578),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x5D0),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x6B4),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x6DC),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x820),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x828),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x828),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x850),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x9C0),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x6DC),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x9E8),
// };

// /* 80A41EDC-80A41FF8 -00001 011C+00 1/1 0/0 0/0 .data            @10495 */
// SECTION_DATA static void* lit_10495[71] = {
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x9C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x12C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x168),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x184),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x344),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x358),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x3F8),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x1A8),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x40C),
// };

// /* 80A41FF8-80A42074 -00001 007C+00 1/1 0/0 0/0 .data            @10672 */
// SECTION_DATA static void* lit_10672[31] = {
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2E8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x3B4),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x40C),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x434),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x4F0),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x548),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x5A4),
// };

// /* 80A42074-80A420F0 -00001 007C+00 1/1 0/0 0/0 .data            @10671 */
// SECTION_DATA static void* lit_10671[31] = {
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0xA4),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x134),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x16C),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x24C),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x270),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2A4),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2B8),
// };

// /* 80A420F0-80A4220C -00001 011C+00 1/1 0/0 0/0 .data            @11023 */
// SECTION_DATA static void* lit_11023[71] = {
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x4A8),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x574),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x5CC),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x5F4),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x6B0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x6D8),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x7D0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x7D0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x7F8),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9A0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x6D8),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9C8),
// };

// /* 80A4220C-80A42328 -00001 011C+00 1/1 0/0 0/0 .data            @11022 */
// SECTION_DATA static void* lit_11022[71] = {
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x120),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x15C),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x178),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x340),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x354),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x370),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x19C),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x408),
// };

// /* 80A42328-80A423A4 -00001 007C+00 1/1 0/0 0/0 .data            @11199 */
// SECTION_DATA static void* lit_11199[31] = {
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2E8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x3B4),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x40C),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x434),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x4F0),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x548),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x5A4),
// };

// /* 80A423A4-80A42420 -00001 007C+00 1/1 0/0 0/0 .data            @11198 */
// SECTION_DATA static void* lit_11198[31] = {
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0xA4),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x134),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x16C),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x24C),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x270),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2A4),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2B8),
// };

// /* 80A42420-80A42564 -00001 0144+00 1/1 0/0 0/0 .data            @11518 */
// SECTION_DATA static void* lit_11518[81] = {
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x414),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x4E0),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x538),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x560),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x61C),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x644),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x73C),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x73C),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x764),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x8C8),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x644),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x8F0),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x968),
// };

// /* 80A42564-80A426A8 -00001 0144+00 1/1 0/0 0/0 .data            @11517 */
// SECTION_DATA static void* lit_11517[81] = {
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x120),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x15C),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x178),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x2A0),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x2B4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x2D0),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x354),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x19C),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x368),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3EC),
// };

// /* 80A426A8-80A42724 -00001 007C+00 1/1 0/0 0/0 .data            @11696 */
// SECTION_DATA static void* lit_11696[31] = {
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2F8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x3C4),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x41C),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x444),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x500),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x558),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x5B4),
// };

// /* 80A42724-80A427A0 -00001 007C+00 1/1 0/0 0/0 .data            @11695 */
// SECTION_DATA static void* lit_11695[31] = {
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0xA4),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x144),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x17C),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x25C),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x280),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2B4),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
// };

// /* 80A427A0-80A428E4 -00001 0144+00 1/1 0/0 0/0 .data            @11977 */
// SECTION_DATA static void* lit_11977[81] = {
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3F0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x4BC),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x514),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x53C),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x620),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x718),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x718),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x740),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x768),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x780),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x7A8),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x820),
// };

// /* 80A428E4-80A42A28 -00001 0144+00 1/1 0/0 0/0 .data            @11974 */
// SECTION_DATA static void* lit_11974[81] = {
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x120),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x15C),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x178),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x2A0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x2B4),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x2D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x324),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x330),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x344),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3C8),
// };

// /* 80A42A28-80A42ACC -00001 00A4+00 1/1 0/0 0/0 .data            @12160 */
// SECTION_DATA static void* lit_12160[41] = {
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x314),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x3E0),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x438),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x460),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x51C),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x574),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x5D0),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x62C),
// };

// /* 80A42ACC-80A42B70 -00001 00A4+00 1/1 0/0 0/0 .data            @12159 */
// SECTION_DATA static void* lit_12159[41] = {
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0xAC),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x14C),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x184),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x264),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x288),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2BC),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2D0),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2E4),
// };

// /* 80A42B70-80A42BFC -00001 008C+00 1/1 0/0 0/0 .data            @12828 */
// SECTION_DATA static void* lit_12828[35] = {
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x19C),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x6C),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x104),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0xB8),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x1E8),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x150),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x2B8),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x304),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x350),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x39C),
// };

// /* 80A42BFC-80A42C08 -00001 000C+00 0/1 0/0 0/0 .data            @12903 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_12903[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach01_start__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A42C08-80A42C14 -00001 000C+00 0/1 0/0 0/0 .data            @12905 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_12905[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach01_attackWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A42C14-80A42C20 -00001 000C+00 0/1 0/0 0/0 .data            @12907 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_12907[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach01_swordAttackWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A42C20-80A42C2C -00001 000C+00 0/1 0/0 0/0 .data            @12909 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_12909[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach01_swordFinishWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A42C2C-80A42C38 -00001 000C+00 0/1 0/0 0/0 .data            @12911 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_12911[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)wait__10daNpc_Kn_cFPv,
// };
// #pragma pop

/* 80A42C38-80A42C74 001F04 003C+00 0/1 0/0 0/0 .data            l_checkOffset$13216 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_checkOffset[60] = {
    0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x42, 0x48, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0xC2, 0x48, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x42, 0x48, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0xC2, 0x48, 0x00, 0x00,
};
#pragma pop

/* 80A42C74-80A42CD4 001F40 0060+00 0/1 0/0 0/0 .data            l_WarpInScaleTable$13228 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_WarpInScaleTable[96] = {
    0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x3F, 0xCC, 0x08, 0x31,
    0x3F, 0x52, 0xF1, 0xAA,
    0x3F, 0xD5, 0xC2, 0x8F,
    0x3F, 0xF4, 0x7A, 0xE1,
    0x3F, 0x38, 0x51, 0xEC,
    0x3F, 0xE5, 0x1E, 0xB8,
    0x3F, 0xCC, 0x08, 0x31,
    0x3F, 0x51, 0x26, 0xE9,
    0x3F, 0xD5, 0xC2, 0x8F,
    0x3E, 0xCC, 0xCC, 0xCD,
    0x3F, 0xC0, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x3F, 0xA6, 0x66, 0x66,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A42CD4-80A42CDC 001FA0 0008+00 0/1 0/0 0/0 .data            l_warpInTimeTable$13229 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_warpInTimeTable[8] = {
    0x01,
    0x04,
    0x08,
    0x0B,
    0x0D,
    0x0E,
    0x0F,
    0x10,
};
#pragma pop

/* 80A42CDC-80A42D0C 001FA8 0030+00 0/1 0/0 0/0 .data            l_WarpOutScaleTable$13245 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_WarpOutScaleTable[48] = {
    0x00, 0x00, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00,
    0x3F, 0xA8, 0xF5, 0xC3, 
    0x00, 0x00, 0x00, 0x00, 
    0x3F, 0x18, 0x10, 0x62,
    0x3F, 0xC0, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
};
#pragma pop

/* 80A42D0C-80A42D10 001FD8 0004+00 0/1 0/0 0/0 .data            l_warpOutTimeTable$13246 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_warpOutTimeTable[4] = {
    0x01,
    0x03,
    0x05,
    0x06,
};
#pragma pop

// /* 80A42D10-80A42E04 -00001 00F4+00 1/1 0/0 0/0 .data            @13764 */
// SECTION_DATA static void* lit_13764[61] = {
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x36C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x3B0),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x4E4),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x540),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x59C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x5C4),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x5EC),
// };

// /* 80A42E04-80A42EF8 -00001 00F4+00 1/1 0/0 0/0 .data            @13763 */
// SECTION_DATA static void* lit_13763[61] = {
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0xC4),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x120),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x17C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x1B4),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x294),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x2B8),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x2EC),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x300),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x314),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x328),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x33C),
// };

// /* 80A42EF8-80A42F04 -00001 000C+00 0/1 0/0 0/0 .data            @13890 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_13890[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach02_start__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A42F04-80A42F10 -00001 000C+00 0/1 0/0 0/0 .data            @13892 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_13892[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach02_shieldBashWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A42F10-80A42F1C -00001 000C+00 0/1 0/0 0/0 .data            @13894 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_13894[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach02_finishWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A42F1C-80A42F28 -00001 000C+00 0/1 0/0 0/0 .data            @13896 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_13896[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach02_shieldReflectWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A42F28-80A42F34 -00001 000C+00 0/1 0/0 0/0 .data            @13898 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_13898[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)wait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A42F34-80A43000 -00001 00CC+00 1/1 0/0 0/0 .data            @14387 */
// SECTION_DATA static void* lit_14387[51] = {
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x394),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x3AC),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x3D8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x3F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x4B4),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x4DC),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x598),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x598),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5C0),
// };

// /* 80A43000-80A430CC -00001 00CC+00 1/1 0/0 0/0 .data            @14386 */
// SECTION_DATA static void* lit_14386[51] = {
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x9C),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0xF8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x154),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x18C),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x1A8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x2CC),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x2E0),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x2F4),
// };

// /* 80A430CC-80A43148 -00001 007C+00 1/1 0/0 0/0 .data            @14591 */
// SECTION_DATA static void* lit_14591[31] = {
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x130),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x210),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x234),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x268),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x27C),
// };

/* 80A43148-80A43168 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Kn_MethodTable */
static actor_method_class daNpc_Kn_MethodTable = {
    (process_method_func)daNpc_Kn_Create__FPv,
    (process_method_func)daNpc_Kn_Delete__FPv,
    (process_method_func)daNpc_Kn_Execute__FPv,
    (process_method_func)daNpc_Kn_IsDelete__FPv,
    (process_method_func)daNpc_Kn_Draw__FPv,
};

/* 80A43168-80A43198 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KN */
extern actor_process_profile_definition g_profile_NPC_KN = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_KN,            // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_Kn_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  347,                    // mPriority
  &daNpc_Kn_MethodTable,  // sub_method
  0x00044107,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

// /* 80A43198-80A431A4 002464 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
// SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__8cM3dGSphFv,
// };

// /* 80A431A4-80A431C8 002470 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
// SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__12dBgS_ObjAcchFv,
//     (void*)NULL,
//     (void*)NULL,
//     (void*)func_80A3C174,
//     (void*)NULL,
//     (void*)NULL,
//     (void*)func_80A3C16C,
// };

// /* 80A431C8-80A431D4 002494 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
// SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__12dBgS_AcchCirFv,
// };

// /* 80A431D4-80A431E0 0024A0 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
// SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__10cCcD_GSttsFv,
// };

// /* 80A431E0-80A431EC 0024AC 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
// SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__10dCcD_GSttsFv,
// };

// /* 80A431EC-80A431F8 0024B8 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
// SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
// };

// /* 80A431F8-80A43204 0024C4 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
// SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__18daNpcT_ActorMngr_cFv,
// };

// /* 80A43204-80A43210 0024D0 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
// SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__15daNpcT_JntAnm_cFv,
// };

// /* 80A43210-80A4321C 0024DC 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGAab */
// SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__8cM3dGAabFv,
// };

// /* 80A4321C-80A43228 0024E8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
// SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__8cM3dGCylFv,
// };

// /* 80A43228-80A43234 0024F4 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
// SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__12J3DFrameCtrlFv,
// };

// /* 80A43234-80A43240 002500 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
// SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__13daNpcT_Path_cFv,
// };

/* 80A43240-80A432A8 00250C 0068+00 2/2 0/0 0/0 .data            __vt__10daNpc_Kn_c */
// SECTION_DATA extern void* __vt__10daNpc_Kn_c[26] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)ctrlBtk__10daNpc_Kn_cFv,
//     (void*)getFootLJointNo__10daNpc_Kn_cFv,
//     (void*)getFootRJointNo__10daNpc_Kn_cFv,
//     (void*)getEyeballLMaterialNo__10daNpc_Kn_cFv,
//     (void*)getEyeballRMaterialNo__10daNpc_Kn_cFv,
//     (void*)getEyeballMaterialNo__10daNpc_Kn_cFv,
//     (void*)ctrlJoint__10daNpc_Kn_cFP8J3DJointP8J3DModel,
//     (void*)afterJntAnm__10daNpc_Kn_cFi,
//     (void*)checkChangeEvt__10daNpc_Kn_cFv,
//     (void*)evtEndProc__10daNpc_Kn_cFv,
//     (void*)evtProc__10daNpc_Kn_cFv,
//     (void*)setFootPos__10daNpc_Kn_cFv,
//     (void*)setFootPrtcl__10daNpc_Kn_cFP4cXyzf,
//     (void*)checkCullDraw__10daNpc_Kn_cFv,
//     (void*)twilight__10daNpc_Kn_cFv,
//     (void*)chkXYItems__10daNpc_Kn_cFv,
//     (void*)evtOrder__10daNpc_Kn_cFv,
//     (void*)decTmr__10daNpc_Kn_cFv,
//     (void*)clrParam__10daNpc_Kn_cFv,
//     (void*)afterSetFaceMotionAnm__10daNpc_Kn_cFiifi,
//     (void*)getFaceMotionAnm__10daNpc_Kn_cF26daNpcT_faceMotionAnmData_c,
//     (void*)getMotionAnm__10daNpc_Kn_cF22daNpcT_motionAnmData_c,
//     (void*)__dt__10daNpc_Kn_cFv,
//     (void*)afterSetMotionAnm__10daNpc_Kn_cFiifi,
// };

/* 80A2AA0C-80A2AECC 0000EC 04C0+00 1/0 0/0 0/0 .text            __dt__10daNpc_Kn_cFv */
daNpc_Kn_c::~daNpc_Kn_c() {
    // NONMATCHING
}

/* 80A2AECC-80A2AF98 0005AC 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
// extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
// }

/* 80A2AF98-80A2AFD4 000678 003C+00 2/2 0/0 0/0 .text __dt__Q210daNpc_Kn_c20daNpc_Kn_prtclMngr_cFv
 */
// daNpc_Kn_c::daNpc_Kn_prtclMngr_c::~daNpc_Kn_prtclMngr_c() {
//     // NONMATCHING
// }

/* ############################################################################################## */
/* 80A408C8-80A408F8 000000 0030+00 50/50 0/0 0/0 .rodata          mCcDObjData__10daNpc_Kn_c */
SECTION_RODATA u8 const daNpc_Kn_c::mCcDObjData[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A408C8, &daNpc_Kn_c::mCcDObjData);

// /* 80A408F8-80A40900 000030 0008+00 6/11 0/0 0/0 .rodata          @4095 */
// SECTION_RODATA static u8 const lit_4095[8] = {
//     0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x80A408F8, &lit_4095);

// /* 80A40900-80A40904 000038 0004+00 26/59 0/0 0/0 .rodata          @4204 */
// SECTION_RODATA static u8 const lit_4204[4] = {
//     0x00,
//     0x00,
//     0x00,
//     0x00,
// };
// COMPILER_STRIP_GATE(0x80A40900, &lit_4204);

// /* 80A40904-80A40908 00003C 0004+00 2/2 0/0 0/0 .rodata          @4205 */
// SECTION_RODATA static f32 const lit_4205 = -1000000000.0f;
// COMPILER_STRIP_GATE(0x80A40904, &lit_4205);

// /* 80A40908-80A4090C 000040 0004+00 2/5 0/0 0/0 .rodata          @4326 */
// SECTION_RODATA static f32 const lit_4326 = 20.0f;
// COMPILER_STRIP_GATE(0x80A40908, &lit_4326);

// /* 80A4090C-80A40910 000044 0004+00 9/16 0/0 0/0 .rodata          @4327 */
// SECTION_RODATA static f32 const lit_4327 = 1.0f;
// COMPILER_STRIP_GATE(0x80A4090C, &lit_4327);

// /* 80A40910-80A40914 000048 0004+00 1/2 0/0 0/0 .rodata          @4561 */
// SECTION_RODATA static f32 const lit_4561 = 1.0f / 5.0f;
// COMPILER_STRIP_GATE(0x80A40910, &lit_4561);

// /* 80A40914-80A40918 00004C 0004+00 16/45 0/0 0/0 .rodata          @4613 */
// SECTION_RODATA static f32 const lit_4613 = -1.0f;
// COMPILER_STRIP_GATE(0x80A40914, &lit_4613);

// /* 80A40918-80A4091C 000050 0004+00 1/3 0/0 0/0 .rodata          @5160 */
// SECTION_RODATA static f32 const lit_5160 = 500.0f;
// COMPILER_STRIP_GATE(0x80A40918, &lit_5160);

// /* 80A4091C-80A40920 000054 0004+00 1/4 0/0 0/0 .rodata          @5255 */
// SECTION_RODATA static f32 const lit_5255 = 180.0f;
// COMPILER_STRIP_GATE(0x80A4091C, &lit_5255);

// /* 80A40920-80A40924 000058 0004+00 1/1 0/0 0/0 .rodata          @5256 */
// SECTION_RODATA static u32 const lit_5256 = 0x43360B61;
// COMPILER_STRIP_GATE(0x80A40920, &lit_5256);

// /* 80A40924-80A40928 00005C 0004+00 0/4 0/0 0/0 .rodata          @5390 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5390 = 30.0f;
// COMPILER_STRIP_GATE(0x80A40924, &lit_5390);
// #pragma pop

// /* 80A40928-80A4092C 000060 0004+00 0/1 0/0 0/0 .rodata          @5391 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5391 = 45.0f;
// COMPILER_STRIP_GATE(0x80A40928, &lit_5391);
// #pragma pop

// /* 80A4092C-80A40930 000064 0004+00 0/1 0/0 0/0 .rodata          @5392 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5392 = 60.0f;
// COMPILER_STRIP_GATE(0x80A4092C, &lit_5392);
// #pragma pop

// /* 80A40930-80A40934 000068 0004+00 0/1 0/0 0/0 .rodata          @5393 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5393 = 90.0f;
// COMPILER_STRIP_GATE(0x80A40930, &lit_5393);
// #pragma pop

// /* 80A40934-80A40938 00006C 0004+00 0/1 0/0 0/0 .rodata          @5394 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5394 = 110.0f;
// COMPILER_STRIP_GATE(0x80A40934, &lit_5394);
// #pragma pop

// /* 80A40938-80A4093C 000070 0004+00 5/6 0/0 0/0 .rodata          @5395 */
// SECTION_RODATA static f32 const lit_5395 = 135.0f;
// COMPILER_STRIP_GATE(0x80A40938, &lit_5395);

// /* 80A4093C-80A40940 000074 0004+00 1/2 0/0 0/0 .rodata          @5560 */
// SECTION_RODATA static u32 const lit_5560 = 0x3BB40000;
// COMPILER_STRIP_GATE(0x80A4093C, &lit_5560);

// /* 80A40940-80A40944 000078 0004+00 0/1 0/0 0/0 .rodata          @5561 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5561 = 8.0f;
// COMPILER_STRIP_GATE(0x80A40940, &lit_5561);
// #pragma pop

// /* 80A40944-80A40948 00007C 0004+00 0/1 0/0 0/0 .rodata          @5562 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5562 = 16384.0f;
// COMPILER_STRIP_GATE(0x80A40944, &lit_5562);
// #pragma pop

// /* 80A40948-80A40950 000080 0008+00 0/5 0/0 0/0 .rodata          @5687 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_5687[8] = {
//     0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x80A40948, &lit_5687);
// #pragma pop

// /* 80A40950-80A40958 000088 0008+00 0/5 0/0 0/0 .rodata          @5688 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_5688[8] = {
//     0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x80A40950, &lit_5688);
// #pragma pop

// /* 80A40958-80A40960 000090 0008+00 0/5 0/0 0/0 .rodata          @5689 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_5689[8] = {
//     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x80A40958, &lit_5689);
// #pragma pop

// /* 80A40960-80A40964 000098 0004+00 0/0 0/0 0/0 .rodata          @5690 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5690 = 17.0f / 20.0f;
// COMPILER_STRIP_GATE(0x80A40960, &lit_5690);
// #pragma pop

// /* 80A40964-80A40968 00009C 0004+00 0/1 0/0 0/0 .rodata          @5710 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5710 = 6.0f;
// COMPILER_STRIP_GATE(0x80A40964, &lit_5710);
// #pragma pop

// /* 80A40968-80A4096C 0000A0 0004+00 0/0 0/0 0/0 .rodata          @5787 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5787 = 1000000000.0f;
// COMPILER_STRIP_GATE(0x80A40968, &lit_5787);
// #pragma pop

/* 80A4096C-80A40970 0000A4 0004+00 1/1 0/0 0/0 .rodata          id$5838 */
SECTION_RODATA static u8 const id[4] = {
    0x84,
    0x97,
    0x84,
    0x98,
};
COMPILER_STRIP_GATE(0x80A4096C, &id);

/* 80A40970-80A40A24 0000A8 00B4+00 8/29 0/0 0/0 .rodata          m__16daNpc_Kn_Param_c */
    daNpc_Kn_Param_c::param const daNpc_Kn_Param_c::m = {
    50.0f,
    -5.0f,
    1.0f,
    1250.0f,
    245.0f,
    270.0f,
    0.0f,
    55.0f,
    0.0f,
    0.0f,
    40.0f,
    -40.0f,
    30.0f,
    -30.0f,
    60.0f,
    -60.0f,
    0.6f,
    12.0f,
    6,
    6,
    8,
    6,
    0,
    0,
    0,
    0,
    0x3c,
    8,
    0,
    0,
    0,
    4.0f,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    -1,
    255,
    300,
    90,
    0,
    100.0f,
    240.0f,
    1100.0f,
    27.0f,
    50.0f,
    16,
    512,
    120,
    90,
    2.0f
};

/* 80A40A24-80A40A44 00015C 0020+00 0/1 0/0 0/0 .rodata          heapSize$6094 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[32] = {
    0x00, 0x00, 0x4B, 0x10, 
    0x00, 0x00, 0x4B, 0x20, 
    0x00, 0x00, 0x4B, 0x10, 
    0x00, 0x00, 0x4B, 0x10,
    0x00, 0x00, 0x5A, 0x00, 
    0x00, 0x00, 0x4B, 0x10, 
    0x00, 0x00, 0x4B, 0x20, 
    0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A40A24, &heapSize);
#pragma pop

// /* 80A40A44-80A40A48 00017C 0004+00 0/1 0/0 0/0 .rodata          @6139 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_6139 = -300.0f;
// COMPILER_STRIP_GATE(0x80A40A44, &lit_6139);
// #pragma pop

// /* 80A40A48-80A40A4C 000180 0004+00 0/1 0/0 0/0 .rodata          @6140 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_6140 = -50.0f;
// COMPILER_STRIP_GATE(0x80A40A48, &lit_6140);
// #pragma pop

// /* 80A40A4C-80A40A50 000184 0004+00 0/1 0/0 0/0 .rodata          @6141 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_6141 = 300.0f;
// COMPILER_STRIP_GATE(0x80A40A4C, &lit_6141);
// #pragma pop

// /* 80A40A50-80A40A54 000188 0004+00 0/1 0/0 0/0 .rodata          @6142 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_6142 = 450.0f;
// COMPILER_STRIP_GATE(0x80A40A50, &lit_6142);
// #pragma pop

/* 80A2AFD4-80A2B278 0006B4 02A4+00 1/1 0/0 0/0 .text            create__10daNpc_Kn_cFv */
void daNpc_Kn_c::create() {
    // NONMATCHING
}

/* 80A2B278-80A2B620 000958 03A8+00 1/1 0/0 0/0 .text            CreateHeap__10daNpc_Kn_cFv */
void daNpc_Kn_c::CreateHeap() {
    // NONMATCHING
}

/* 80A2B620-80A2B654 000D00 0034+00 1/1 0/0 0/0 .text            Delete__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::Delete() {
    // NONMATCHING
    return 1;
}

/* 80A2B654-80A2B6B0 000D34 005C+00 2/2 0/0 0/0 .text            Execute__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::Execute() {
    s32 ret = execute();
    setPrtcl();
    calcMagicBallPos();
    setSwordChargePtcl();
    setSe();
    return ret;
}

/* 80A2B6B0-80A2B764 000D90 00B4+00 1/1 0/0 0/0 .text            Draw__10daNpc_Kn_cFv */
void daNpc_Kn_c::Draw() {
    if (mpMatAnm) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm);
    }

    _GXColorS10 local_28;
    local_28.r = 0;
    local_28.g = 0;
    local_28.b = 0;
    local_28.a = daNpc_Kn_Param_c::m.mAlpha;
    draw(0,0,1250.0f,&local_28,0.0f,1,0,0);
}

/* 80A2B764-80A2B784 000E44 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__10daNpc_Kn_cFP10fopAc_ac_c               */
void daNpc_Kn_c::createHeapCallBack(fopAc_ac_c* param_0) {
    CreateHeap();
}

/* 80A2B784-80A2B7DC 000E64 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__10daNpc_Kn_cFP8J3DJointi
 */
int daNpc_Kn_c::ctrlJointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Kn_c* _this = reinterpret_cast<daNpc_Kn_c*>(model->getUserArea());

        if (_this) {
            _this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80A2B7DC-80A2B844 000EBC 0068+00 2/1 0/0 0/0 .text            getType__10daNpc_Kn_cFv */
u8 daNpc_Kn_c::getType() {
    switch (fopAcM_GetParam(this) & 0xFF) {
    case 1:
        return 0;
    case 2:
        return 1;
    case 3:
        return 2;
    case 4:
        return 3;
    case 5:
        return 4;
    case 6:
        return 5;
    case 7:
        return 6;
    default:
        return 7;
    };
}

/* 80A2B844-80A2B850 000F24 000C+00 1/1 0/0 0/0 .text            getDivideNo__10daNpc_Kn_cFv */
u8 daNpc_Kn_c::getDivideNo() {
    return (fopAcM_GetParam(this) & 0xFF00) >> 8;
}

/* 80A2B850-80A2B86C 000F30 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::getFlowNodeNo() {
    u16 node_no = home.angle.x;

    if (node_no == 0xFFFF) {
        return 0xFFFFFFFF;
    }

    return node_no;
}

/* 80A2B86C-80A2B878 000F4C 000C+00 1/1 0/0 0/0 .text            getPath__10daNpc_Kn_cFv */
u8 daNpc_Kn_c::getPath() {
    return (fopAcM_GetParam(this) & 0xFF00) >> 8;
}

/* 80A2B878-80A2B91C 000F58 00A4+00 1/1 0/0 0/0 .text            isDelete__10daNpc_Kn_cFv */
bool daNpc_Kn_c::isDelete() {
    switch (mType) {
    case 0:
        if (daNpcT_chkEvtBit(0x153) == 0) {
            return 0;
        }

        break;
    case 7:
        if (daNpcT_chkEvtBit(l_appearFlag[mType] != 0) || daNpcT_chkEvtBit(l_delFlag[mType] != 0)) {
            return 0;
        }
    }
    
    return 1;
}

/* 80A2B91C-80A2B9E0 000FFC 00C4+00 1/1 0/0 0/0 .text            resetCol__10daNpc_Kn_cFv */
void daNpc_Kn_c::resetCol() {

    field_0x11DC.Set(mCcDCyl);
    field_0x11DC.SetStts(&mCcStts);
    field_0x11DC.SetTgHitCallback(tgHitCallBack);

    for (int i = 0; i < 2; i++) {
        field_0x1318[i].Set(mCcDSph);
        field_0x1318[i].SetStts(&mCcStts);
        field_0x1318[i].SetAtSe(dCcD_SE_HARD_BODY);
        field_0x1318[i].SetAtSpl(dCcG_At_Spl_UNK_1);
        field_0x1318[i].SetAtType(0x800);
        field_0x1318[i].OnAtSPrmBit(0xc);
        field_0x1318[i].OffAtNoConHit();
        field_0x1318[i].OffCoSetBit();
    }
}

/* 80A2B9E0-80A2BC5C 0010C0 027C+00 1/1 0/0 0/0 .text            reset__10daNpc_Kn_cFv */
// NONMATCHING -- issue with memset
void daNpc_Kn_c::reset() {
    initialize();
    // memset(&field_0x1714, 0, 0xe3c - 0x); // figure this out later

    if (mpMatAnm) {
        mpMatAnm->initialize();
    }

    if (getPath() != 0xFF) {
        mPath.initialize();
        mPath.setPathInfo(getPath(), fopAcM_GetRoomNo(this), 0);
    }

    mStaffId = -1;
    setAngle(home.angle.y);
    field_0x15bd = 0;
    field_0x15be = 0;
    field_0x15cc = 0;
    field_0x15cd = 0;
    field_0x15ce = 0;
    field_0x15bc = 0;
    field_0x15af = 1;

    for (int i = 0; i < 3; i++) {
        mParticleMngr[i].field_0x24.init(&mAcch, 0.0f, 0.0f);
    }

    for (int i = 0; i < 3; i++) {
        field_0x15d4[i] = -1;
    }

    field_0x170c = 0;
    field_0x16f4.set(1.0f,1.0f,1.0f);
    field_0x170d = 1;
    field_0x170e = 0;

    field_0x15c0 = current.pos;

    if (mType <= 6 && (field_0x15ad == 0 || field_0x15ad > 2)) {
        field_0xe2c = 1;
        parentActorID = fopAcM_createChild(PROC_NPC_GWOLF, fopAcM_GetID(this), 0xffffff02, &current.pos, fopAcM_GetRoomNo(this), &current.angle, 0, -1, 0);
    }

    resetType();
}

/* 80A2BC5C-80A2BD30 00133C 00D4+00 2/1 0/0 0/0 .text            resetType__10daNpc_Kn_cFv */
void daNpc_Kn_c::resetType() {
    switch (mType) {
        case 0:
            field_0x15ae = 0;
            return;
        case 1:
            field_0x15ae = 4;
            return;
        case 2:
            field_0x15ae = 4;
            return;
        case 3:
            field_0x15ae = 4;
            return;
        case 4:
            field_0x15ae = 4;
            return;
        case 5:
            if (field_0x15ad != 0 && field_0x15ad <= 2) {
                field_0x15ae = 0xe;
                field_0x15af = 0;
            } else {
                field_0x15ae = 0x4;
            }
            break;
        case 6:
            if (field_0x15ad != 0 && field_0x15ad <= 2) {
                field_0x15ae = 0x14;
                field_0x15af = 0;
                return;
            }
            field_0x15ae = 4;
            return;
        default:
            field_0x15ae = -1;
    }
}

/* 80A2BD30-80A2BFB0 001410 0280+00 2/1 0/0 0/0 .text            setParam__10daNpc_Kn_cFv */
// NONMATCHING - small issue accessing daNpc_Kn_Param_c::m.mRadius in case 0/1 ?
void daNpc_Kn_c::setParam() {
    selectAction();
    srchActors();

    s16 field48 = daNpc_Kn_Param_c::m.field_0x48;
    s16 field4a = daNpc_Kn_Param_c::m.field_0x4a;
    s16 field4c = daNpc_Kn_Param_c::m.field_0x4c;
    s16 field4e = daNpc_Kn_Param_c::m.field_0x4e;
    f32 radius = daNpc_Kn_Param_c::m.mRadius;
    f32 height = daNpc_Kn_Param_c::m.mHeight;

    switch (mType) {
    case 0:
        attention_info.flags = setParamTeach01();
        mAcchCir.SetWallR(daNpc_Kn_Param_c::m.mRadius);
        mAcchCir.SetWallH(daNpc_Kn_Param_c::m.mHeight);
        break;
    case 1:
        if (field_0x15ae < 4) {
            attention_info.flags = setParamTeach01();
            mAcchCir.SetWallR(daNpc_Kn_Param_c::m.mRadius);
            mAcchCir.SetWallH(daNpc_Kn_Param_c::m.mHeight);
        } else {
            attention_info.flags = setParamTeach02();
        }
        break;
    case 2:
        if (field_0x15ae < 8) {
            attention_info.flags = setParamTeach02();
        } else {
            attention_info.flags = setParamTeach03();
        }
        break;
    case 3:
        if (field_0x15ae < 9) {
            attention_info.flags = setParamTeach03();
        } else {
            attention_info.flags = setParamTeach04();
        }
        break;
    case 4:
        if (field_0x15ae < 12) {
            attention_info.flags = setParamTeach04();
        } else {
            attention_info.flags = setParamTeach05();
        }
        break;
    case 5:
        attention_info.flags = setParamTeach06();
        break;
    case 6:
        attention_info.flags = setParamTeach07();
        break;
    default:
        attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
        attention_info.distances[2] = daNpcT_getDistTableIdx(field4c, field4e);
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
        attention_info.flags = 10;
        mAcchCir.SetWallR(daNpc_Kn_Param_c::m.mRadius);
        mAcchCir.SetWallH(daNpc_Kn_Param_c::m.mHeight);
    }

    scale.set(daNpc_Kn_Param_c::m.mScale * field_0x16f4.x, daNpc_Kn_Param_c::m.mScale * field_0x16f4.y, daNpc_Kn_Param_c::m.mScale * field_0x16f4.z);
    mCcStts.SetWeight(daNpc_Kn_Param_c::m.mWeight);
    field_0xe0c = daNpc_Kn_Param_c::m.field_0x14;
    mRadius = daNpc_Kn_Param_c::m.mRadius;
    gravity = daNpc_Kn_Param_c::m.mGravity;
    field_0xab4 = daNpc_Kn_Param_c::m.field_0x6C;
    field_0xab8 = daNpc_Kn_Param_c::m.field_0x44;
};

/* 80A2BFB0-80A2C044 001690 0094+00 1/1 0/0 0/0 .text            setParamTeach03__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach03() {
    s16 field48 = daNpc_Kn_Param_c::m.field_0x48;
    s16 field4a = daNpc_Kn_Param_c::m.field_0x4a;
    s16 field4c = daNpc_Kn_Param_c::m.field_0x4c;
    s16 field4e = daNpc_Kn_Param_c::m.field_0x4e;
    attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
    attention_info.distances[2] = 0xe4;
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
    mAcchCir.SetWallR(135.0f);
    mAcchCir.SetWallH(daNpc_Kn_Param_c::m.mHeight);
    return 4;
}

/* 80A2C044-80A2C0FC 001724 00B8+00 1/1 0/0 0/0 .text            setParamTeach04__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach04() {
    s16 field48 = daNpc_Kn_Param_c::m.field_0x48;
    s16 field4a = daNpc_Kn_Param_c::m.field_0x4a;
    s16 field4c = daNpc_Kn_Param_c::m.field_0x4c;
    s16 field4e = daNpc_Kn_Param_c::m.field_0x4e;
    attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
    attention_info.distances[2] = 0xe4;
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
    if (field_0x15ae == 10 || field_0x15ae == 11) {
        mAcchCir.SetWallR(135.0f);
        mAcchCir.SetWallH(daNpc_Kn_Param_c::m.mHeight);
        return 4;
    }

    return 0x200004;    
}

/* 80A2C0FC-80A2C190 0017DC 0094+00 3/3 0/0 0/0 .text            setParamTeach05__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach05() {
    s16 field48 = daNpc_Kn_Param_c::m.field_0x48;
    s16 field4a = daNpc_Kn_Param_c::m.field_0x4a;
    s16 field4c = daNpc_Kn_Param_c::m.field_0x4c;
    s16 field4e = daNpc_Kn_Param_c::m.field_0x4e;
    attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
    attention_info.distances[2] = 0xe4;
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
    mAcchCir.SetWallR(135.0f);
    mAcchCir.SetWallH(daNpc_Kn_Param_c::m.mHeight);
    return 4;
}

/* 80A2C190-80A2C1B0 001870 0020+00 1/1 0/0 0/0 .text            setParamTeach06__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach06() {
    setParamTeach05();
}

/* 80A2C1B0-80A2C1D0 001890 0020+00 1/1 0/0 0/0 .text            setParamTeach07__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach07() {
    setParamTeach05();
}

/* 80A2C1D0-80A2C230 0018B0 0060+00 1/1 0/0 0/0 .text            setAfterTalkMotion__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setAfterTalkMotion() {
    mMotionSeqMngr1.getNo();
    mMotionSeqMngr1.setNo(1, -1.0, 0, 0);
}

/* 80A2C230-80A2C234 001910 0004+00 1/1 0/0 0/0 .text            srchActors__10daNpc_Kn_cFv */
void daNpc_Kn_c::srchActors() {}

/* 80A2C234-80A2C318 001914 00E4+00 1/1 0/0 0/0 .text            evtTalk__10daNpc_Kn_cFv */
bool daNpc_Kn_c::evtTalk() {
    if (chkAction(&daNpc_Kn_c::talk)) {
        (this->*mpActionFunc)(0);
    } else {
        if (dComIfGp_event_chkTalkXY() == 0 || dComIfGp_evmng_ChkPresentEnd()) {
            setAction(&daNpc_Kn_c::talk);
            // return true;
        }
    }

    return true;
}

/* 80A2C318-80A2C3FC 0019F8 00E4+00 1/1 0/0 0/0 .text            evtCutProc__10daNpc_Kn_cFv */
bool daNpc_Kn_c::evtCutProc() {
    bool ret;
    if (field_0x15ad != 0 && field_0x15ad <= 2) {
        return false;
    } else {
        ret = false;
        int staff_id = dComIfGp_getEventManager().getMyStaffId("Kn", this, -1);
        if (staff_id != -1) {
            mStaffId = staff_id;
            int act_idx = dComIfGp_getEventManager().getMyActIdx(mStaffId, &mCutNameList[0], 21, 0, 0);
            
            if ((this->*mCutList[act_idx])(mStaffId)) {
                dComIfGp_getEventManager().cutEnd(mStaffId);    
            }

            ret = true;
        }
    }
    
    return ret;
}

/* 80A2C3FC-80A2C484 001ADC 0088+00 1/1 0/0 0/0 .text            action__10daNpc_Kn_cFv */
void daNpc_Kn_c::action() {
    // NONMATCHING
}

/* 80A2C484-80A2C4FC 001B64 0078+00 1/1 0/0 0/0 .text            beforeMove__10daNpc_Kn_cFv */
void daNpc_Kn_c::beforeMove() {
    if (checkHide() || field_0xe32 != 0) {
        attention_info.flags = 0;
    }
}

/* 80A2C4FC-80A2C56C 001BDC 0070+00 1/1 0/0 0/0 .text            afterMoved__10daNpc_Kn_cFv */
void daNpc_Kn_c::afterMoved() {
    if (field_0xe14 != 1e+09f) {
        mTevStr.mEnvrIdxOverride = dComIfG_Bgsp().GetPolyColor(mGndChk);
        mTevStr.mRoomNo = dComIfG_Bgsp().GetRoomId(mGndChk);
    }
}

/* ############################################################################################## */
/* 80A40A54-80A40A58 00018C 0004+00 0/1 0/0 0/0 .rodata          @7002 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u32 const lit_7002 = 0x38C90FDB;
// COMPILER_STRIP_GATE(0x80A40A54, &lit_7002);
// #pragma pop

/* 80A2C56C-80A2C77C 001C4C 0210+00 1/1 0/0 0/0 .text            setAttnPos__10daNpc_Kn_cFv */
// NONMATCHING -- float literal and float loading issue
void daNpc_Kn_c::setAttnPos() {
    cXyz pos(30.0f, 0.0f, 0.0f);
    int head_joint_no = getHeadJointNo();
    int neck_joint_no = getNeckJointNo();
    int backbone_joint_no = getBackboneJointNo();
    J3DModel* model = mpMorf[0]->getModel();

    mJntAnm.setParam(this, model, &pos, backbone_joint_no, neck_joint_no, head_joint_no, 
        daNpc_Kn_Param_c::m.field_0x24, daNpc_Kn_Param_c::m.field_0x20, 
        daNpc_Kn_Param_c::m.field_0x2c, daNpc_Kn_Param_c::m.field_0x28, 
        daNpc_Kn_Param_c::m.field_0x34, daNpc_Kn_Param_c::m.field_0x30,
        daNpc_Kn_Param_c::m.field_0x3c, daNpc_Kn_Param_c::m.field_0x38,
        0.0f, daNpc_Kn_Param_c::m.field_0x40,
        0);
    
    mJntAnm.calcJntRad(0.2f, 1.0f,cM_s2rad(field_0xDAC.y - field_0xDB2.y));
    setMtx();
    model = mpMorf[1]->getModel();
    J3DModelData* modelData = model->getModelData();
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(field_0xDAC);
    mDoMtx_stack_c::scaleM(scale);
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    model->setUserArea((u32)modelData);
    mpMorf[1]->modelCalc();
    mDoMtx_stack_c::copy(mpMorf[1]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&pos, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, field_0xDAC.y, 1, 1.0f, 0);
    mDoMtx_stack_c::copy(mpMorf[1]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVecZero(&attention_info.position);
    attention_info.position.y += daNpc_Kn_Param_c::m.field_0x00;
}

/* 80A2C77C-80A2C984 001E5C 0208+00 2/1 0/0 0/0 .text            setCollision__10daNpc_Kn_cFv */
void daNpc_Kn_c::setCollision() {
    cXyz centerPos;

    if (field_0xe2c == 0 && field_0x15af != 0) {
        u32 param;

        if (field_0xABD == 1) {
            param = 0x69;
        } else {
            param = 0x79;
        }

        field_0x11DC.SetCoSPrm(param);

        switch (mType) {
        case 0:
            setCollisionTeach01();
            break;
        case 1:
            if (field_0x15ae < 4) {
                setCollisionTeach01();
            } else {
                setCollisionTeach02();
            }
            break;
        case 2:
            if (field_0x15ae < 8) {
                setCollisionTeach02();
            } else {
                setCollisionTeach03();
            }
            break;
        case 3:
            if (field_0x15ae < 9) {
                setCollisionTeach03();
            } else {
                setCollisionTeach04();
            }
            break;
        case 4:
            if (field_0x15ae < 12) {
                setCollisionTeach04();
            } else {
                setCollisionTeach05();
            }
            break;
        case 5:
            setCollisionTeach06();
            break;
        case 6:
            setCollisionTeach07();
        }

        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getBackboneJointNo()));
        mDoMtx_stack_c::multVecZero(&centerPos);
        centerPos.y = current.pos.y;
        f32 radius = daNpc_Kn_Param_c::m.mRadius;
        field_0x11DC.SetH(daNpc_Kn_Param_c::m.field_0x14);
        field_0x11DC.SetR(radius);
        field_0x11DC.SetC(centerPos);
        dComIfG_Ccsp()->Set(&field_0x11DC);
    }

    field_0x11DC.ClrCoHit();
    field_0x11DC.ClrTgHit();
    setCollisionSword();
}

// /* ############################################################################################## */
// /* 80A40A58-80A40A5C 000190 0004+00 0/1 0/0 0/0 .rodata          @7177 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_7177 = 40.0f;
// COMPILER_STRIP_GATE(0x80A40A58, &lit_7177);
// #pragma pop

/* 80A2C984-80A2CB30 002064 01AC+00 1/1 0/0 0/0 .text            setCollisionSword__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionSword() {
    // NONMATCHING
}

/* 80A2CB30-80A2CBEC 002210 00BC+00 9/9 0/0 0/0 .text            checkCollisionSword__10daNpc_Kn_cFv
 */
BOOL daNpc_Kn_c::checkCollisionSword() {
    int iVar2 = false;  // Status variable
    
    // Main collision check loop
    for (int iVar3 = 0; iVar3 < 2; iVar3++) {
        // Check shield hit
        
        if (field_0x1318[iVar3].ChkAtShieldHit()) {
            iVar2 = 1;
            break;
        }
        
        // Check regular hit
        if (field_0x1318[iVar3].ChkAtHit()) {
            iVar2 = 2;
        }
    }
    
    // If shield was hit, clear hit
    if (iVar2 == 1) {
        for (int iVar3 = 0; iVar3 < 2; iVar3++) {
            field_0x1318[iVar3].ClrAtHit();
        }
    }
    
    return iVar2 == 2;
}

/* 80A2CBEC-80A2CC24 0022CC 0038+00 1/1 0/0 0/0 .text            setCollisionTeach03__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach03() {
    field_0x11DC.SetTgType(-1);
    field_0x11DC.SetTgSPrm(19);
    field_0x11DC.OffTgNoAtHitInfSet();
    field_0x11DC.OnTgNoConHit();
    field_0x11DC.OnCoSetBit();
}

/* 80A2CC24-80A2CD00 002304 00DC+00 1/1 0/0 0/0 .text            setCollisionTeach04__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach04() {
    switch (field_0x15ae) {
    case 9:
        if (dComIfGp_event_runCheck() && eventInfo.i_checkCommandDemoAccrpt()) {
            field_0x11DC.OffTgSetBit();
            field_0x11DC.OffCoSetBit();
        } else {
            field_0x11DC.SetTgType(-1);
            field_0x11DC.SetTgHitMark(CcG_Tg_UNK_MARK_2);
            field_0x11DC.SetTgSPrm(19);
            field_0x11DC.OnTgShield();
            field_0x11DC.OffTgNoAtHitInfSet();
            field_0x11DC.OnTgNoConHit();
        }
        break;
    case 11:
    case 10:
       field_0x11DC.SetTgType(-1);
       field_0x11DC.SetTgHitMark(CcG_Tg_UNK_MARK_1);
       field_0x11DC.SetTgSPrm(19);
       field_0x11DC.OffTgShield();
       field_0x11DC.OffTgNoAtHitInfSet();
       field_0x11DC.OnTgNoConHit();
    }
}

/* 80A2CD00-80A2CD38 0023E0 0038+00 3/3 0/0 0/0 .text            setCollisionTeach05__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach05() {
    field_0x11DC.SetTgType(-1);
    field_0x11DC.SetTgSPrm(19);
    field_0x11DC.OffTgNoAtHitInfSet();
    field_0x11DC.OnTgNoConHit();
    field_0x11DC.OnCoSetBit();
}

/* 80A2CD38-80A2CD58 002418 0020+00 1/1 0/0 0/0 .text            setCollisionTeach06__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach06() {
    setCollisionTeach05();
}

/* 80A2CD58-80A2CD78 002438 0020+00 1/1 0/0 0/0 .text            setCollisionTeach07__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach07() {
    setCollisionTeach05();
}

/* 80A2CD78-80A2CD80 002458 0008+00 1/1 0/0 0/0 .text            drawDbgInfo__10daNpc_Kn_cFv */
int daNpc_Kn_c::drawDbgInfo() {
    return false;
}

/* 80A2CD80-80A2CF9C 002460 021C+00 1/1 0/0 0/0 .text            drawOtherMdl__10daNpc_Kn_cFv */
void daNpc_Kn_c::drawOtherMdl() {
    // NONMATCHING
}

/* 80A2CF9C-80A2D060 00267C 00C4+00 1/1 0/0 0/0 .text            drawGhost__10daNpc_Kn_cFv */
void daNpc_Kn_c::drawGhost() {
    J3DModel* model = mpMorf[0]->getModel();
    g_env_light.settingTevStruct(7, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);

    if (dKy_darkworld_check()) {
        dComIfGd_setListDark();
        mInvisModel.entryDL(0);
        dComIfGd_setList();
    } else {
        mInvisModel.entryDL(0);
    }
}

/* 80A2D060-80A2D198 002740 0138+00 1/0 0/0 0/0 .text afterSetMotionAnm__10daNpc_Kn_cFiifi */
bool daNpc_Kn_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    // NONMATCHING
}

/* 80A2D198-80A2D3A4 002878 020C+00 2/1 0/0 0/0 .text            selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::selectAction() {
    // NONMATCHING
}

/* 80A2D3A4-80A2D3FC 002A84 0058+00 1/1 0/0 0/0 .text teach03_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach03_selectAction() {
    switch(field_0x15ae) {
    case 8:
        mpTeachAction = &daNpc_Kn_c::teach03_attackWait;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
}

/* 80A2D3FC-80A2D4A0 002ADC 00A4+00 1/1 0/0 0/0 .text teach04_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach04_selectAction() {
    switch (field_0x15ae) {
    case 9:
        mpTeachAction = &daNpc_Kn_c::teach04_headBreakWait;
        return;
    case 10:
        mpTeachAction = &daNpc_Kn_c::teach04_attackWait;
        return;
    case 11: 
        mpTeachAction = &daNpc_Kn_c::teach04_finishWait;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
}

/* 80A2D4A0-80A2D4F8 002B80 0058+00 1/1 0/0 0/0 .text teach05_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach05_selectAction() {
    switch (field_0x15ae) {
    case 12:
        mpTeachAction = &daNpc_Kn_c::teach05_surpriseAttackWait;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
}

/* 80A2D4F8-80A2D600 002BD8 0108+00 1/1 0/0 0/0 .text teach06_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach06_selectAction() {
    switch (field_0x15ae) {
    case 13:
        mpTeachAction = &daNpc_Kn_c::teach06_superJumpedDivide;
        return;
    case 14:
        mpTeachAction = &daNpc_Kn_c::teach06_divideMove;
        return;
    case 15:
        mpTeachAction = &daNpc_Kn_c::teach06_superJumpWaitDivide;
        return;
    case 16:
        mpTeachAction = &daNpc_Kn_c::teach06_superJumpWait;
        return;
    case 17:
        mpTeachAction = &daNpc_Kn_c::teach06_waitDivide;
        return;
    case 18:
        mpTeachAction = &daNpc_Kn_c::teach06_warpDelete;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
}

/* 80A2D600-80A2D708 002CE0 0108+00 1/1 0/0 0/0 .text teach07_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach07_selectAction() {
    switch (field_0x15ae) {
    case 19:
        mpTeachAction = &daNpc_Kn_c::teach07_superTurnAttackedDivide;
        return;
    case 20:
        mpTeachAction = &daNpc_Kn_c::teach07_divideMove;
        return;
    case 21:
        mpTeachAction = &daNpc_Kn_c::teach07_superTurnAttackWaitDivide;
        return;
    case 22:
        mpTeachAction = &daNpc_Kn_c::teach07_superTurnAttackWait;
        return;
    case 23:
        mpTeachAction = &daNpc_Kn_c::teach07_waitDivide;
        return;
    case 24:
        mpTeachAction = &daNpc_Kn_c::teach07_warpDelete;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
}

/* 80A2D708-80A2D734 002DE8 002C+00 1/1 0/0 0/0 .text
 * chkAction__10daNpc_Kn_cFM10daNpc_Kn_cFPCvPvPv_i              */
BOOL daNpc_Kn_c::chkAction(daNpc_Kn_c::actionFunc i_action) {
    return mpActionFunc == i_action;
}

/* 80A2D734-80A2D7DC 002E14 00A8+00 2/2 0/0 0/0 .text
 * setAction__10daNpc_Kn_cFM10daNpc_Kn_cFPCvPvPv_i              */
BOOL daNpc_Kn_c::setAction(daNpc_Kn_c::actionFunc i_action) {
    field_0xe2a = 3;
    if (mpActionFunc) {
        (this->*mpActionFunc)(0);
    }

    field_0xe2a = 0;
    mpActionFunc = i_action;

    if (mpActionFunc) {
        (this->*mpActionFunc)(0);
    }

    return TRUE;
}

/* 80A2D7DC-80A2D9C4 002EBC 01E8+00 8/0 0/0 0/0 .text            wait__10daNpc_Kn_cFPv */
// NONMATCHING - switch statement is wrong (missing instruction)
int daNpc_Kn_c::wait(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(0,-1.0f,0,0);
        field_0xe2a = 2;
    case 2:
        if (field_0xABD == 0 && srchPlayerActor()) {
            mJntAnm.lookPlayer(0);
        } else {
            if (home.angle.y != field_0xDAC.y && step(home.angle.y, 1, 0x20, 0x14, 0) != 0) {
                field_0xe2a = 1;
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,0,0);
            }
            mJntAnm.lookNone(0);
        };
    }

    return 1;
}

/* 80A2D9C4-80A2DB94 0030A4 01D0+00 2/0 0/0 0/0 .text            talk__10daNpc_Kn_cFPv */
// NONMATCHING - switch statement is wrong (missing instruction)
int daNpc_Kn_c::talk(void* param_0) {
    int bVar = 0;

    switch(field_0xe2a) {
    case 0:
    case 1:
        initTalk(field_0xAB0, 0);
        field_0xe2a = 2;
    case 2:
        if (field_0xABD == 0) {
            mJntAnm.lookPlayer(0);

            if (field_0xDAC.y == fopAcM_searchPlayerAngleY(this)) {
                bVar = 1;
            } else {
                if (step(fopAcM_searchPlayerAngleY(this), 1, 0x20, 0x14, 0) != 0) {
                    bVar = true;
                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0,-1.0f,0,0);
                }
            }
        } else {
            bVar = 1;
        }

        if (bVar != 0 && talkProc(0,0,NULL,0)) {
            mActorMngr1.entry(daPy_getPlayerActorClass());
            dComIfGp_event_reset();
            field_0xe2a = 3;
        };
    }

    return 0;
}

/* 80A2DB94-80A2DCB4 003274 0120+00 1/0 0/0 0/0 .text            test__10daNpc_Kn_cFPv */
// NONMATCHING - switch statement is wrong (missing instruction)
int daNpc_Kn_c::test(void* param_0) {
     switch(field_0xe2a) {
    case 0:
    case 1:
        speedF = 0.0f;
        speed.setall(0.0f);
        field_0xe2a = 2;
    case 2:
        mMotionSeqMngr1.setNo(daNpc_Kn_Param_c::m.field_0x64,-1.0f,0,0);
        mMotionSeqMngr2.setNo(daNpc_Kn_Param_c::m.field_0x66,-1.0f,0,0);
    }

    mJntAnm.lookNone(0);
    attention_info.flags = 0;
    return 0;
}

/* 80A2DCB4-80A2DD70 003394 00BC+00 7/7 0/0 0/0 .text            setSceneChange__10daNpc_Kn_cFi */
void daNpc_Kn_c::setSceneChange(int param_0) {
    for (int i = 2; i <= 7; i++) {
        if (daNpcT_chkTmpBit(i + 0x5a)) {
            dStage_changeScene(i,0.0,0,fopAcM_GetRoomNo(this),0,-1);

            if (param_0 == 0) return;

            daNpcT_offTmpBit(i + 0x5a);
            daNpcT_onEvtBit(i + 0x1ea);
            return;
        }
    }

    dStage_changeScene(1,0.0,0,fopAcM_GetRoomNo(this),0,-1);
}

/* ############################################################################################## */
/* 80A40AF8-80A40AF8 000230 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
// #pragma push
// #pragma force_active on
// SECTION_DEAD static char const* const stringBase_80A40D2D = "prm";
// #pragma pop

/* 80A2DD70-80A2DF84 003450 0214+00 1/0 0/0 0/0 .text ECut_noneEquipChangeTalk__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_noneEquipChangeTalk(int i_idx) {
    dEvent_manager_c* event_manager =  &dComIfGp_getEventManager();
    int ret = 0;
    int intP = -1;

    int* intP2 = dComIfGp_evmng_getMyIntegerP(i_idx,"prm");

    if (intP2) {
        intP = *intP2;
    }

    if (event_manager->getIsAddvance(i_idx)) {
        switch (intP) {
        case 0:
            mJntAnm.lookPlayer(0);
            speed.zero();
            speedF = 0.0f;
            break;
        case 10:
            field_0xdfe = 2;
            initTalk(field_0xAB0,NULL);
            break;
        }
    }

    switch (intP) {
    case 0:
        if (field_0xDAC.y != fopAcM_searchPlayerAngleY(this)) {
            if (step(fopAcM_searchPlayerAngleY(this),1,0x20,0x14,0) != 0) {
                ret = 1;
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,0,0);
            }
        } else {
            ret = 1;
        }
        break;
    case 10:
        intP = talkProc(NULL,0,NULL,0);
        if (intP != 0) {
            ret = 1;
        }
        break;
    default:
        ret = 1;
    }

    return ret;
}

/* 80A2DF84-80A2E26C 003664 02E8+00 1/0 0/0 0/0 .text
 * ECut_noneEquipChangeTalkStand__10daNpc_Kn_cFi                */
int daNpc_Kn_c::ECut_noneEquipChangeTalkStand(int i_idx) {
    dEvent_manager_c* event_manager =  &dComIfGp_getEventManager();
    int ret = 0;
    int intP = -1;

    int* intP2 = dComIfGp_evmng_getMyIntegerP(i_idx,"prm");

    if (intP2) {
        intP = *intP2;
    }

    if (event_manager->getIsAddvance(i_idx)) {
        switch (intP) {
        case 0:
            mJntAnm.lookNone(0);
            mMotionSeqMngr1.setNo(1,-1.0f,0,0);
            mMotionSeqMngr2.setNo(22,-1.0f,0,0);
            speed.zero();
            speedF = 0.0f;
            break;
        case 10:
            mJntAnm.lookPlayer(0);
            break;
        case 20:
            field_0xdfe = 2;
            initTalk(field_0xAB0,NULL);
            break;
        }
    }

    switch (intP) {
    case 0:
        if (mMotionSeqMngr2.getNo() != 22) {
            break;
        }

        if (mMotionSeqMngr2.getStepNo() > 0) {
            ret = 1;
        }

        break;
    case 10:
        if (field_0xDAC.y != fopAcM_searchPlayerAngleY(this)) {
            if (step(fopAcM_searchPlayerAngleY(this),1,0x20,0x14,0) != 0) {
                ret = 1;
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,0,0);
            }
        } else {
            ret = 1;
        }
        break;
    case 20:
        intP = talkProc(NULL,0,NULL,0);
        if (intP != 0) {
            ret = 1;
        }
        break;
    default:
        ret = 1;
    }

    return ret;
}

/* 80A2E26C-80A2E528 00394C 02BC+00 1/0 0/0 0/0 .text ECut_largeDamageTalk__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_largeDamageTalk(int i_idx) {
    dEvent_manager_c* event_manager =  &dComIfGp_getEventManager();
    int ret = 0;
    int intP = -1;

    int* intP2 = dComIfGp_evmng_getMyIntegerP(i_idx,"prm");

    if (intP2) {
        intP = *intP2;
    }

    if (event_manager->getIsAddvance(i_idx)) {
        switch (intP) {
        case 0:
            mJntAnm.lookPlayer(0);
            speed.zero();
            speedF = 0.0f;
            break;
        case 10:
            break;
        case 20:
            field_0xdfe = 2;
            initTalk(field_0xAB0,NULL);
            break;
        }
    }

    switch (intP) {
    case 0:
        if (!daPy_getPlayerActorClass()->checkPlayerFly()) {
           ret = 1;
        }

        daPy_getPlayerActorClass()->onLargeDamageUpStop();
        break;
    case 10:
        if (field_0xDAC.y != fopAcM_searchPlayerAngleY(this)) {
            if (step(fopAcM_searchPlayerAngleY(this),1,0x20,0x14,0) != 0) {
                ret = 1;
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,0,0);
            } 

        } else {
            ret = 1;
        }

        daPy_getPlayerActorClass()->onLargeDamageUpStop();
        
        break;
    case 20:
        intP = talkProc(NULL,0,NULL,0);
        
        if (intP != 0) {
            ret = 1;
        }
        
        cLib_addCalcAngleS2(&field_0xDAC.y,fopAcM_searchPlayerAngleY(this),2,0x800);
        setAngle(field_0xDAC.y);
        daPy_getPlayerActorClass()->onLargeDamageUpStop();

        break;
    default:
        ret = 1;
    }

    return ret;
}

/* 80A2E528-80A2E664 003C08 013C+00 5/0 0/0 0/0 .text            teach02_start__10daNpc_Kn_cFPv */
// NONMATCHING - switch statement
int daNpc_Kn_c::teach02_start(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(0,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        field_0xe2a = 2;
    case 2:
        field_0xe36 = 8;
        field_0xe39 = 1;
        cLib_addCalcAngleS2(&field_0xDAC.y,fopAcM_searchPlayerAngleY(this),2,0x800);
        setAngle(field_0xDAC.y);
    case 3:
    default:
        return 1;
    }
}

/* 80A2E664-80A2EC04 003D44 05A0+00 1/0 0/0 0/0 .text            teach03_attackWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach03_attackWait(void* param_0) {
    // NONMATCHING
}

/* 80A2EC04-80A2EF8C 0042E4 0388+00 1/0 0/0 0/0 .text            teach04_attackWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach04_attackWait(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A40A5C-80A40A60 000194 0004+00 0/2 0/0 0/0 .rodata          @8270 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_8270 = 10.0f;
// COMPILER_STRIP_GATE(0x80A40A5C, &lit_8270);
// #pragma pop

// /* 80A40A60-80A40A64 000198 0004+00 0/1 0/0 0/0 .rodata          @8271 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_8271 = -10.0f;
// COMPILER_STRIP_GATE(0x80A40A60, &lit_8271);
// #pragma pop

/* 80A2EF8C-80A2F24C 00466C 02C0+00 1/0 0/0 0/0 .text teach04_headBreakWait__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach04_headBreakWait(void* param_0) {
    // NONMATCHING
}

/* 80A2F24C-80A2F600 00492C 03B4+00 1/0 0/0 0/0 .text            teach04_finishWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach04_finishWait(void* param_0) {
    // NONMATCHING
}

/* 80A2F600-80A2FBB4 004CE0 05B4+00 1/0 0/0 0/0 .text teach05_surpriseAttackWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach05_surpriseAttackWait(void* param_0) {
    // NONMATCHING
}

/* 80A2FBB4-80A2FC14 005294 0060+00 1/1 0/0 0/0 .text            s_sub6__FPvPv */
static void s_sub6(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A2FC14-80A2FC80 0052F4 006C+00 2/2 0/0 0/0 .text            s_subEnd6__FPvPv */
static void s_subEnd6(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A2FC80-80A30398 005360 0718+00 1/0 0/0 0/0 .text teach06_superJumpWait__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach06_superJumpWait(void* param_0) {
    // NONMATCHING
}

/* 80A30398-80A305A8 005A78 0210+00 1/0 0/0 0/0 .text            teach06_divideMove__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach06_divideMove(void* param_0) {
    // NONMATCHING
}

/* 80A305A8-80A30708 005C88 0160+00 1/0 0/0 0/0 .text            teach06_waitDivide__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach06_waitDivide(void* param_0) {
    // NONMATCHING
}

/* 80A30708-80A30D44 005DE8 063C+00 1/0 0/0 0/0 .text teach06_superJumpWaitDivide__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach06_superJumpWaitDivide(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A40A64-80A40A68 00019C 0004+00 0/3 0/0 0/0 .rodata          @9120 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_9120 = 13.0f;
// COMPILER_STRIP_GATE(0x80A40A64, &lit_9120);
// #pragma pop

// /* 80A40A68-80A40A6C 0001A0 0004+00 0/3 0/0 0/0 .rodata          @9121 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_9121 = 14.0f;
// COMPILER_STRIP_GATE(0x80A40A68, &lit_9121);
// #pragma pop

/* 80A30D44-80A30EDC 006424 0198+00 1/0 0/0 0/0 .text teach06_superJumpedDivide__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach06_superJumpedDivide(void* param_0) {
    // NONMATCHING
}

/* 80A30EDC-80A30F5C 0065BC 0080+00 1/0 0/0 0/0 .text            teach06_warpDelete__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach06_warpDelete(void* param_0) {
    // NONMATCHING
}

/* 80A30F5C-80A30FBC 00663C 0060+00 1/1 0/0 0/0 .text            s_sub7__FPvPv */
static void s_sub7(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A30FBC-80A31028 00669C 006C+00 2/2 0/0 0/0 .text            s_subEnd7__FPvPv */
static void s_subEnd7(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A31028-80A315D0 006708 05A8+00 1/0 0/0 0/0 .text teach07_superTurnAttackWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach07_superTurnAttackWait(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A40A6C-80A40A70 0001A4 0004+00 0/2 0/0 0/0 .rodata          @9374 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_9374 = 375.0f;
// COMPILER_STRIP_GATE(0x80A40A6C, &lit_9374);
// #pragma pop

/* 80A315D0-80A317F8 006CB0 0228+00 1/0 0/0 0/0 .text            teach07_divideMove__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach07_divideMove(void* param_0) {
    // NONMATCHING
}

/* 80A317F8-80A31958 006ED8 0160+00 1/0 0/0 0/0 .text            teach07_waitDivide__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach07_waitDivide(void* param_0) {
    // NONMATCHING
}

/* 80A31958-80A31E24 007038 04CC+00 1/0 0/0 0/0 .text
 * teach07_superTurnAttackWaitDivide__10daNpc_Kn_cFPv           */
int daNpc_Kn_c::teach07_superTurnAttackWaitDivide(void* param_0) {
    // NONMATCHING
}

/* 80A31E24-80A31FBC 007504 0198+00 1/0 0/0 0/0 .text
 * teach07_superTurnAttackedDivide__10daNpc_Kn_cFPv             */
int daNpc_Kn_c::teach07_superTurnAttackedDivide(void* param_0) {
    // NONMATCHING
}

/* 80A31FBC-80A3203C 00769C 0080+00 1/0 0/0 0/0 .text            teach07_warpDelete__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach07_warpDelete(void* param_0) {
    // NONMATCHING
}

/* 80A3203C-80A324C4 00771C 0488+00 3/0 0/0 0/0 .text            ECut_secondEncount__10daNpc_Kn_cFi
 */
 // NONMATCHING - need to finish second switch under case 10
int daNpc_Kn_c::ECut_secondEncount(int i_idx) {
   dEvent_manager_c* event_manager =  &dComIfGp_getEventManager();
    int ret = 0;
    int intP = -1;

    int* intP2 = dComIfGp_evmng_getMyIntegerP(i_idx,"prm");

    if (intP2) {
        intP = *intP2;
    }

    if (event_manager->getIsAddvance(i_idx)) {
        switch (intP) {
        case 0:
            mMotionSeqMngr1.setNo(1,-1.0f,0,0);
            mMotionSeqMngr2.setNo(0,-1.0f,0,0);
            break;
        case 2:
            daNpc_GWolf_c* pGWolf = (daNpc_GWolf_c*)fpcM_SearchByID(parentActorID);

            if (fopAcM_GetName(pGWolf) == PROC_NPC_GWOLF) {
                pGWolf->setMotion(4,-1.0f,FALSE);
            }

            break;
        case 5:
            daNpc_GWolf_c* pProc = (daNpc_GWolf_c*)fpcM_SearchByID(parentActorID);

            if (pProc) {
                fopAcM_delete(pProc);
            };

            field_0xe2c = 0;
            break;
        case 10:
            switch (mType) {
            case 1:
                initTalk(0x2bd,0);
                break;
            case 2:
                initTalk(0x2de,0);
                break;
            case 3:
                initTalk(0x2ee,0);
                break;
            case 4:
                initTalk(0x2e6,0);
                break;
            case 5:
                initTalk(0x2f7,0);
                break;
            case 6:
                initTalk(0x2ff,0);
                break;
            }

            break;
        case 20:
            field_0xdec = 30;
            break;
        }
    }

    switch (intP) {
    case 0:
        ret = 1;
        break;
    case 2:
        ret = 1;
        break;
    case 5:
        ret = 1;
        break;
    case 10:
        if (talkProc(0,0,NULL,0)) {
            if (mFlow.getChoiceNo() == 0) {
                int local_38 = 0;

                switch (mType) {
                case 1:
                    break;
                case 2:
                    break;
                case 3:
                    break;
                case 4:
                    break;
                }
            } else {
                break;
            }
        }

        break;
    case 20:
        if (cLib_calcTimer(&field_0xdec) == 0) {
            ret = 1;

            switch (mType) {
            case 1:
                field_0x15ae = 2;
                break;
            case 2:
                field_0x15ae = 5;
                break;
            case 3:
                field_0x15ae = 8;
                break;
            case 4:
                field_0x15ae = 9;
                break;
            case 5:
                field_0x15ae = 12;
                break;
            case 6:
                field_0x15ae = 13;
                break;
            }
        }

        break;
    default:
        ret = 1;
    }

    return ret;
}

/* 80A324C4-80A32D30 007BA4 086C+00 3/0 0/0 0/0 .text ECut_thirdSkillExplain__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_thirdSkillExplain(int i_idx) {
    dEvent_manager_c* event_manager =  &dComIfGp_getEventManager();

    int ret = 0;
    int intP = -1;

    int* intP2 = dComIfGp_evmng_getMyIntegerP(i_idx,"prm");

    if (intP2) {
        intP = *intP2;
    }

    if (event_manager->getIsAddvance(i_idx)) {
        switch (intP) {
            case 0:
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(28,-1.0f,1,0);
                mJntAnm.lookPlayer(0);
                field_0xdec = 0x1e;
                break;
            case 10:
                field_0xdfe = 2;
                initTalk(0x2df,0);
                break;
            case 20:
                Z2GetAudioMgr()->bgmStart(Z2BGM_OUGI_TRAINING,0,0);
            case 65:
                setPos(home.pos);
                setAngle(home.angle.y);
                cXyz pos(0.0f,0.0f,375.0f);
                mDoMtx_stack_c::transS(home.pos);
                mDoMtx_stack_c::YrotM(home.angle.y);
                mDoMtx_stack_c::multVec(&pos,&pos);
                cXyz pos2 = pos;
                pos2.y += 500.0f;
                
                if (fopAcM_gc_c::gndCheck(&pos2)) {
                    pos.y = fopAcM_gc_c::getGroundY();
                }

                daPy_getPlayerActorClass()->setPlayerPosAndAngle(&pos,fopAcM_searchPlayerAngleY(this) + 0x8000,0);
                daPy_getPlayerActorClass()->onTraningCutBack();
                break;
            case 30:
                initTalk(0x2e0,0);
                break;
            case 40:
                daNpcT_offTmpBit(0xb);
                initTalk(0x2e1,0);
                break;
            case 50:
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(17,-1.0f,1,0);
                break;
            case 55:
                field_0xdec = 0x1e;
                break;
            case 60:
                initTalk(0x2e1,0);
                break;
            case 70:
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(24,-1.0f,1,0);
                mJntAnm.lookNone(0);
                break;
        }
    }

    switch (intP) {
        case 0:
            if (cLib_calcTimer(&field_0xdec) == 0) {
                if (field_0xDAC.y == fopAcM_searchPlayerAngleY(this)) {
                    ret = 1;
                    field_0x15b0 = current.pos;
                    field_0x15bc = 0;
                    speedF = 0.0f;
                    speed.zero();
                } else {
                
                if (step(fopAcM_searchPlayerAngleY(this),1,0x20,0x14,0) != 0) {
                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0,-1.0f,0,0);
                }
                }
                
            } else {
                calcSlip();
            }

            break;
        case 6:
            if (field_0xDAC.y == fopAcM_searchPlayerAngleY(this)) {
                ret = 1;
            } else {
                if (step(fopAcM_searchPlayerAngleY(this),1,0x20,0x14,0) != 0) {
                    ret = 1;
                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0,-1.0f,0,0);
                }
                break;
            }
            ret = 1;
            break;
        case 10:
            if (talkProc(0,0,NULL,0) != 0) {
                ret = 1;
            }
            break;
        case 20:
        case 65:
            ret = 1;
            setPos(home.pos);
            setAngle(home.angle.y);
            cXyz pos(0.0f,0.0f,375.0f);
            mDoMtx_stack_c::transS(home.pos);
            mDoMtx_stack_c::YrotM(home.angle.y);
            mDoMtx_stack_c::multVec(&pos,&pos);
            cXyz pos2(pos);
            pos2.y += 500.0f;
            
            if (fopAcM_gc_c::gndCheck(&pos2)) {
                pos.y = fopAcM_gc_c::getGroundY();
            }

            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&pos,fopAcM_searchPlayerAngleY(this) + 0x8000,0);
            // daPy_getPlayerActorClass()->onTraningCutBack();
            break;
        case 30:
        case 40:
            if (talkProc(0,0,NULL,0) != 0) {
                ret = 1;
            }
            break;
        case 50:
            if (mMotionSeqMngr2.getNo() == 17) {
                if (mMotionSeqMngr2.getStepNo() >= 3) {
                    ret = 1;
                } else {
                    cXyz pos(0.0f,0.0f,0.0f);
                    s16 local_98 = 0;

                    if (mMotionSeqMngr2.getStepNo() == 0 && !(mpMorf[0]->getFrame() <= 4) && mpMorf[0]->getFrame() <= 14) {
                        pos.set(13.0f,0.0f,20.0f);

                        local_98 = cM_deg2s(-3.8f);
                    }

                    if (mMotionSeqMngr2.getStepNo() == 1) {
                        if (mpMorf[0]->getFrame() <= 10) {
                            pos.set(-13.66f, 0.0f, 19.05f);
                            local_98 = cM_deg2s(-6.76f);
                        } else {
                            pos.set(3.77f, 0.0f, 19.05f);
                            local_98 = cM_deg2s(-6.76f);
                        }
                    }

                    mDoMtx_stack_c::YrotS(home.angle.y);
                    mDoMtx_stack_c::multVec(&pos,&pos);
                    pos += current.pos;
                    setPos(pos);
                    setAngle(current.angle.y + local_98);
                    
                }
            }
            break;
        case 60:
            if (talkProc(0,0,NULL,0) != 0) {
                ret = 1;
            }
            break;
        case 70:
            if (mMotionSeqMngr2.getNo() == 0x18 && mMotionSeqMngr2.getStepNo() > 0) {
                ret = 1;
                field_0x15ae = 8;
            }
            break;
        default:
            ret = 1;
    }

    return ret;

}

/* 80A32D30-80A33358 008410 0628+00 3/0 0/0 0/0 .text            ECut_thirdSkillGet__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_thirdSkillGet(int i_idx) {
    // NONMATCHING
}

/* 80A33358-80A33D80 008A38 0A28+00 3/0 0/0 0/0 .text ECut_fourthSkillExplain__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_fourthSkillExplain(int i_idx) {
    // NONMATCHING
}

/* 80A33D80-80A343A8 009460 0628+00 3/0 0/0 0/0 .text            ECut_fourthSkillGet__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_fourthSkillGet(int i_idx) {
    // NONMATCHING
}

/* 80A343A8-80A34DB8 009A88 0A10+00 3/0 0/0 0/0 .text ECut_fifthSkillExplain__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_fifthSkillExplain(int i_idx) {
    // NONMATCHING
}

/* 80A34DB8-80A353E0 00A498 0628+00 3/0 0/0 0/0 .text            ECut_fifthSkillGet__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_fifthSkillGet(int i_idx) {
    // NONMATCHING
}

/* 80A353E0-80A35D88 00AAC0 09A8+00 3/0 0/0 0/0 .text ECut_sixthSkillExplain__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_sixthSkillExplain(int i_idx) {
    // NONMATCHING
}

/* 80A35D88-80A363C0 00B468 0638+00 3/0 0/0 0/0 .text            ECut_sixthSkillGet__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_sixthSkillGet(int i_idx) {
    // NONMATCHING
}

/* 80A363C0-80A36C20 00BAA0 0860+00 3/0 0/0 0/0 .text ECut_seventhSkillExplain__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_seventhSkillExplain(int i_idx) {
    // NONMATCHING
}

/* 80A36C20-80A372D0 00C300 06B0+00 3/0 0/0 0/0 .text ECut_seventhSkillGet__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_seventhSkillGet(int i_idx) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A40A70-80A40A74 0001A8 0004+00 0/0 0/0 0/0 .rodata          @9980 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_9980 = 4.0f;
// COMPILER_STRIP_GATE(0x80A40A70, &lit_9980);
// #pragma pop

// /* 80A40A74-80A40A78 0001AC 0004+00 0/0 0/0 0/0 .rodata          @9981 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u32 const lit_9981 = 0x407147AE;
// COMPILER_STRIP_GATE(0x80A40A74, &lit_9981);
// #pragma pop

// /* 80A40A78-80A40A7C 0001B0 0004+00 0/0 0/0 0/0 .rodata          @9982 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u32 const lit_9982 = 0x41986666;
// COMPILER_STRIP_GATE(0x80A40A78, &lit_9982);
// #pragma pop

// /* 80A40A7C-80A40A80 0001B4 0004+00 0/0 0/0 0/0 .rodata          @9983 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u32 const lit_9983 = 0xC15A8F5C;
// COMPILER_STRIP_GATE(0x80A40A7C, &lit_9983);
// #pragma pop

// /* 80A40A80-80A40A84 0001B8 0004+00 0/0 0/0 0/0 .rodata          @10161 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_10161 = 700.0f;
// COMPILER_STRIP_GATE(0x80A40A80, &lit_10161);
// #pragma pop

// /* 80A40A84-80A40A88 0001BC 0004+00 0/0 0/0 0/0 .rodata          @10494 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_10494 = 594.0f;
// COMPILER_STRIP_GATE(0x80A40A84, &lit_10494);
// #pragma pop

// /* 80A40A88-80A40A8C 0001C0 0004+00 0/0 0/0 0/0 .rodata          @11020 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_11020 = 165.0f;
// COMPILER_STRIP_GATE(0x80A40A88, &lit_11020);
// #pragma pop

// /* 80A40A8C-80A40A90 0001C4 0004+00 0/0 0/0 0/0 .rodata          @11021 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_11021 = 9.0f;
// COMPILER_STRIP_GATE(0x80A40A8C, &lit_11021);
// #pragma pop

// /* 80A40A90-80A40A94 0001C8 0004+00 0/0 0/0 0/0 .rodata          @11516 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u32 const lit_11516 = 0x430AA3D7;
// COMPILER_STRIP_GATE(0x80A40A90, &lit_11516);
// #pragma pop

// /* 80A40A94-80A40A98 0001CC 0004+00 0/1 0/0 0/0 .rodata          @11694 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_11694 = 1000.0f;
// COMPILER_STRIP_GATE(0x80A40A94, &lit_11694);
// #pragma pop

// /* 80A40A98-80A40AA0 0001D0 0008+00 0/0 0/0 0/0 .rodata          @11976 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_11976[8] = {
//     0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x80A40A98, &lit_11976);
// #pragma pop

// /* 80A40AA0-80A40AA4 0001D8 0004+00 0/2 0/0 0/0 .rodata          @12218 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12218 = 2.0f;
// COMPILER_STRIP_GATE(0x80A40AA0, &lit_12218);
// #pragma pop

/* 80A372D0-80A37430 00C9B0 0160+00 1/1 0/0 0/0 .text            setPrtcl__10daNpc_Kn_cFv */
void daNpc_Kn_c::setPrtcl() {
    // NONMATCHING
}

/* 80A37430-80A37558 00CB10 0128+00 1/1 0/0 0/0 .text            setSlipPrtcl__10daNpc_Kn_cFv */
int daNpc_Kn_c::setSlipPrtcl() {
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(0x1f));
    mDoMtx_stack_c::multVecZero(&mParticleMngr[0].mPos);
    mParticleMngr[0].mPos.y -= 20.0f;
    mParticleMngr[0].mAngle = current.angle;
    mParticleMngr[0].mAngle.y -= 0x8000;
    mParticleMngr[0].mpModel = true;
    
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(0x1b));
    mDoMtx_stack_c::multVecZero(&mParticleMngr[1].mPos);
    mParticleMngr[1].mPos.y -= 20.0f;
    mParticleMngr[1].mAngle = current.angle;
    mParticleMngr[1].mAngle.y -= 0x8000;
    mParticleMngr[1].mpModel = true;

    return 1;
}

/* 80A37558-80A37598 00CC38 0040+00 12/12 0/0 0/0 .text            setLandingPrtcl__10daNpc_Kn_cFv
 */
int daNpc_Kn_c::setLandingPrtcl() {
    mParticleMngr[2].mPos = current.pos;
    mParticleMngr[2].mAngle = field_0xDAC;
    mParticleMngr[2].mpModel = true;
    return 1;
}

/* ############################################################################################## */
/* 80A40AA4-80A40AA8 0001DC 0004+00 1/2 0/0 0/0 .rodata          @12304 */
// SECTION_RODATA static f32 const lit_12304 = 150.0f;
// COMPILER_STRIP_GATE(0x80A40AA4, &lit_12304);

/* 80A37598-80A37670 00CC78 00D8+00 1/1 0/0 0/0 .text            calcMagicBallPos__10daNpc_Kn_cFv */
void daNpc_Kn_c::calcMagicBallPos() {
    fopAc_ac_c* actor;

    if (mType == 1 && fopAcM_SearchByID(parentActorID, &actor) && actor && fopAcM_GetName(actor) == PROC_KN_BULLET && ((daObjKnBullet_c*)actor)->getActionMode() == 0) {
        cXyz pos(150.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(13));
        mDoMtx_stack_c::multVec(&pos,&pos);
        actor->current.pos = pos;
    }
}

/* ############################################################################################## */
/* 80A40AA8-80A40AAC 0001E0 0004+00 0/1 0/0 0/0 .rodata          @12497 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12497 = 17.0f;
// COMPILER_STRIP_GATE(0x80A40AA8, &lit_12497);
// #pragma pop

// /* 80A40AAC-80A40AB0 0001E4 0004+00 0/1 0/0 0/0 .rodata          @12498 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12498 = 37.0f;
// COMPILER_STRIP_GATE(0x80A40AAC, &lit_12498);
// #pragma pop

// /* 80A40AB0-80A40AB4 0001E8 0004+00 0/1 0/0 0/0 .rodata          @12499 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u32 const lit_12499 = 0x3FC2DABA;
// COMPILER_STRIP_GATE(0x80A40AB0, &lit_12499);
// #pragma pop

// /* 80A40AB4-80A40AB8 0001EC 0004+00 0/1 0/0 0/0 .rodata          @12500 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12500 = 13.0f / 10.0f;
// COMPILER_STRIP_GATE(0x80A40AB4, &lit_12500);
// #pragma pop

// /* 80A40AB8-80A40ABC 0001F0 0004+00 0/1 0/0 0/0 .rodata          @12501 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u32 const lit_12501 = 0x42B0CCCC;
// COMPILER_STRIP_GATE(0x80A40AB8, &lit_12501);
// #pragma pop

// /* 80A40ABC-80A40AC0 0001F4 0004+00 0/1 0/0 0/0 .rodata          @12502 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12502 = 31.0f;
// COMPILER_STRIP_GATE(0x80A40ABC, &lit_12502);
// #pragma pop

// /* 80A40AC0-80A40AC4 0001F8 0004+00 0/1 0/0 0/0 .rodata          @12503 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12503 = 52.0f / 5.0f;
// COMPILER_STRIP_GATE(0x80A40AC0, &lit_12503);
// #pragma pop

// /* 80A432C0-80A432C4 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
// static u8 lit_1109[1 + 3 /* padding */];

// /* 80A432C4-80A432C8 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
// #pragma push
// #pragma force_active on
// static u8 lit_1107[1 + 3 /* padding */];
// #pragma pop

// /* 80A432C8-80A432CC 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
// #pragma push
// #pragma force_active on
// static u8 lit_1105[1 + 3 /* padding */];
// #pragma pop

// /* 80A432CC-80A432D0 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
// #pragma push
// #pragma force_active on
// static u8 lit_1104[1 + 3 /* padding */];
// #pragma pop

// /* 80A432D0-80A432D4 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
// #pragma push
// #pragma force_active on
// static u8 lit_1099[1 + 3 /* padding */];
// #pragma pop

// /* 80A432D4-80A432D8 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
// #pragma push
// #pragma force_active on
// static u8 lit_1097[1 + 3 /* padding */];
// #pragma pop

// /* 80A432D8-80A432DC 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
// #pragma push
// #pragma force_active on
// static u8 lit_1095[1 + 3 /* padding */];
// #pragma pop

// /* 80A432DC-80A432E0 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
// #pragma push
// #pragma force_active on
// static u8 lit_1094[1 + 3 /* padding */];
// #pragma pop

// /* 80A432E0-80A432E4 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
// #pragma push
// #pragma force_active on
// static u8 lit_1057[1 + 3 /* padding */];
// #pragma pop

// /* 80A432E4-80A432E8 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
// #pragma push
// #pragma force_active on
// static u8 lit_1055[1 + 3 /* padding */];
// #pragma pop

// /* 80A432E8-80A432EC 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
// #pragma push
// #pragma force_active on
// static u8 lit_1053[1 + 3 /* padding */];
// #pragma pop

// /* 80A432EC-80A432F0 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
// #pragma push
// #pragma force_active on
// static u8 lit_1052[1 + 3 /* padding */];
// #pragma pop

// /* 80A432F0-80A432F4 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
// #pragma push
// #pragma force_active on
// static u8 lit_1014[1 + 3 /* padding */];
// #pragma pop

// /* 80A432F4-80A432F8 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
// #pragma push
// #pragma force_active on
// static u8 lit_1012[1 + 3 /* padding */];
// #pragma pop

// /* 80A432F8-80A432FC 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
// #pragma push
// #pragma force_active on
// static u8 lit_1010[1 + 3 /* padding */];
// #pragma pop

// /* 80A432FC-80A43300 -00001 0004+00 0/0 0/0 0/0 .bss             None */
// #pragma push
// #pragma force_active on
// /* 80A432FC 0001+01 data_80A432FC @1009 */
// /* 80A432FE 0002+00 data_80A432FE mSrchName__10daNpc_Kn_c */
// static u8 struct_80A432FC[4];
// #pragma pop

/* 80A43300-80A433C8 000048 00C8+00 0/0 0/0 0/0 .bss             mFindActorPtrs__10daNpc_Kn_c */
#pragma push
#pragma force_active on
fopAc_ac_c* daNpc_Kn_c::mFindActorPtrs[50];
#pragma pop

/* 80A433C8-80A433CC 000110 0004+00 0/0 0/0 0/0 .bss             mFindCount__10daNpc_Kn_c */
#pragma push
#pragma force_active on
u8 daNpc_Kn_c::mFindCount[4];
#pragma pop

/* 80A433CC-80A433D8 000114 000C+00 1/1 0/0 0/0 .bss             @5904 */
// static u8 lit_5904[12];

/* 80A433D8-80A433DC 000120 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A433DC-80A433EC 000124 000C+04 0/1 0/0 0/0 .bss             @12316 */
// #pragma push
// #pragma force_active on
// static u8 lit_12316[12 + 4 /* padding */];
// #pragma pop

/* 80A433EC-80A433F8 000134 000C+00 0/1 0/0 0/0 .bss             lightAParticleScale$12315 */
#pragma push
#pragma force_active on
static u8 lightAParticleScale[12];
#pragma pop

/* 80A433F8-80A43408 000140 000C+04 0/1 0/0 0/0 .bss             @12320 */
// #pragma push
// #pragma force_active on
// static u8 lit_12320[12 + 4 /* padding */];
// #pragma pop

/* 80A43408-80A43414 000150 000C+00 0/1 0/0 0/0 .bss             lightALocalTrans$12319 */
#pragma push
#pragma force_active on
static u8 lightALocalTrans[12];
#pragma pop

/* 80A37670-80A37B08 00CD50 0498+00 1/1 0/0 0/0 .text            setSwordChargePtcl__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setSwordChargePtcl() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A40AC4-80A40AC8 0001FC 0004+00 0/1 0/0 0/0 .rodata          @12556 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12556 = 0.25f;
// COMPILER_STRIP_GATE(0x80A40AC4, &lit_12556);
// #pragma pop

// /* 80A40AC8-80A40ACC 000200 0004+00 0/1 0/0 0/0 .rodata          @12557 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12557 = 25.0f;
// COMPILER_STRIP_GATE(0x80A40AC8, &lit_12557);
// #pragma pop

// /* 80A40ACC-80A40AD0 000204 0004+00 0/1 0/0 0/0 .rodata          @12558 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12558 = 5.0f;
// COMPILER_STRIP_GATE(0x80A40ACC, &lit_12558);
// #pragma pop

/* 80A37B08-80A37D20 00D1E8 0218+00 13/13 0/0 0/0 .text            calcSlip__10daNpc_Kn_cFv */
void daNpc_Kn_c::calcSlip() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A40AD0-80A40AD4 000208 0004+00 0/1 0/0 0/0 .rodata          @12656 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12656 = 250.0f;
// COMPILER_STRIP_GATE(0x80A40AD0, &lit_12656);
// #pragma pop

/* 80A37D20-80A3805C 00D400 033C+00 9/9 0/0 0/0 .text            calcSwordAttackMove__10daNpc_Kn_cFi
 */
void daNpc_Kn_c::calcSwordAttackMove(int param_0) {
    // NONMATCHING
}

/* 80A3805C-80A38450 00D73C 03F4+00 2/1 0/0 0/0 .text            setSe__10daNpc_Kn_cFv */
// NONMATCHING - case 12 is wrong
void daNpc_Kn_c::setSe() {
    if (field_0xe2c == 0) {
        switch (field_0x15A8) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 25:
        case 26:
        case 27:
        case 29:
        case 30:
        case 31:
        case 33:
            mCreature.startCreatureVoiceLevel(Z2SE_KN_V_BREATH,-1);
            break;
        case 4:
            if (mpMorf[0]->getFrame() >= 4.0f && mpMorf[0]->getFrame() < 5.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_ATTACK,-1);
            }
            break;
        case 5:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_GUARD,-1);
            }
            break;
        case 6:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_M,-1);
            }
            break;
        case 7:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_S,-1);
            }
            break;
        case 12:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_BALL_READY,-1);
            } else if (mpMorf[1]->getFrame() >= 27.0f && mpMorf[1]->getFrame() < 28.0f) {
                    if (field_0x15ae == 7) {
                        mCreature.startCreatureVoice(Z2SE_KN_V_BALL_READY,-1);
                    } else {
                        mCreature.startCreatureVoice(Z2SE_KN_V_BALL_THROW,-1);
                    }
            }
            break;
        case 16:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L,-1);
            }
            break;
        case 20:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_SOTOMOGIRI,-1);
            }
            break;
        case 28:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_KABUTOWARI,-1);
            }
            break;
        case 32:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_IAIGIRI,-1);
            }
            break;
        case 34:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_JUMP_ATTACK_L,-1);
            }
            break;
        }
    }
}

/* 80A38450-80A38470 00DB30 0020+00 1/0 0/0 0/0 .text            daNpc_Kn_Create__FPv */
static void daNpc_Kn_Create(void* i_actor) {
    static_cast<daNpc_Kn_c*>(i_actor)->create();
}

/* 80A38470-80A38490 00DB50 0020+00 1/0 0/0 0/0 .text            daNpc_Kn_Delete__FPv */
static void daNpc_Kn_Delete(void* i_actor) {
    static_cast<daNpc_Kn_c*>(i_actor)->Delete();
}

/* 80A38490-80A384B0 00DB70 0020+00 1/0 0/0 0/0 .text            daNpc_Kn_Execute__FPv */
static void daNpc_Kn_Execute(void* i_actor) {
    static_cast<daNpc_Kn_c*>(i_actor)->Execute();
}

/* 80A384B0-80A384D0 00DB90 0020+00 1/0 0/0 0/0 .text            daNpc_Kn_Draw__FPv */
static void daNpc_Kn_Draw(void* i_actor) {
    static_cast<daNpc_Kn_c*>(i_actor)->Draw();
}

/* 80A384D0-80A384D8 00DBB0 0008+00 1/0 0/0 0/0 .text            daNpc_Kn_IsDelete__FPv */
static bool daNpc_Kn_IsDelete(void* param_0) {
    return true;
}

/* 80A384D8-80A38520 00DBB8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
// extern "C" void __dt__10cCcD_GSttsFv() {
//     // NONMATCHING
// }

/* 80A38520-80A38550 00DC00 0030+00 1/1 0/0 0/0 .text
 * tgHitCallBack__10daNpc_Kn_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
void daNpc_Kn_c::tgHitCallBack(fopAc_ac_c* param_0, dCcD_GObjInf* param_1, fopAc_ac_c* param_2,
                                   dCcD_GObjInf* param_3) {
    u8 cut_type = 0;

    if (param_2) {
        if (fopAcM_GetProfName(param_2) == 0xfd) {
            cut_type = ((daPy_py_c*)param_2)->getCutType();
        } else {
            cut_type = 1;
        }
    }

    ((daNpc_Kn_c*)param_0)->setCutType(cut_type);
}

/* 80A38550-80A3858C 00DC30 003C+00 1/1 0/0 0/0 .text            getTrnsfrmAnmP__10daNpc_Kn_cFPCci
 */
void daNpc_Kn_c::getTrnsfrmAnmP(char const* i_arcName, int i_resIdx) {
    dComIfG_getObjectRes(i_arcName, i_resIdx);
}

/* 80A3858C-80A385C8 00DC6C 003C+00 3/3 0/0 0/0 .text getTrnsfrmKeyAnmP__10daNpc_Kn_cFPCci */
void daNpc_Kn_c::getTrnsfrmKeyAnmP(char const* i_arcName, int i_resIdx) {
    dComIfG_getObjectRes(i_arcName, i_resIdx);
}

/* 80A385C8-80A38604 00DCA8 003C+00 1/1 0/0 0/0 .text            getTexPtrnAnmP__10daNpc_Kn_cFPCci
 */
void daNpc_Kn_c::getTexPtrnAnmP(char const* i_arcName, int i_resIdx) {
    dComIfG_getObjectRes(i_arcName, i_resIdx);
}

/* 80A38604-80A38640 00DCE4 003C+00 1/1 0/0 0/0 .text            getTexSRTKeyAnmP__10daNpc_Kn_cFPCci
 */
void daNpc_Kn_c::getTexSRTKeyAnmP(char const* i_arcName, int i_resIdx) {
    dComIfG_getObjectRes(i_arcName, i_resIdx);
}

/* 80A38640-80A38684 00DD20 0044+00 1/1 0/0 0/0 .text
 * setBckAnm__10daNpc_Kn_cFP15J3DAnmTransformfiiib              */
void daNpc_Kn_c::setBckAnm(J3DAnmTransform* i_bck, f32 i_rate, int i_attribute, int i_startF,
                               int i_endF, bool i_modify) {
    mBckAnm.init(i_bck, 1, i_attribute, i_rate, i_startF, i_endF, i_modify); 
}

/* 80A38684-80A3877C 00DD64 00F8+00 1/1 0/0 0/0 .text
 * setMcaMorfAnm__10daNpc_Kn_cFP18J3DAnmTransformKeyffiii       */
 // NONMATCHING - no clue what's going on here
int daNpc_Kn_c::setMcaMorfAnm(J3DAnmTransformKey* i_anm, f32 i_rate, f32 i_morf,
                                   int i_attribute, int i_start, int i_end) {

    J3DAnmTransformKey* anm = (J3DAnmTransformKey*)i_anm;
    f32 rate = (f32)i_rate;
    f32 morf = (f32)i_morf;
    int attribute = (int)i_attribute; 
    int start = (int)i_start;
    int end = (int)i_end;

    mpMorf[0]->setAnm(anm, attribute, morf, rate, start, end);

    if (mpMorf[1]) {
        mpMorf[1]->setAnm(anm, attribute, morf, rate, start, end);
    }

    return 1;
}

/* 80A3877C-80A387BC 00DE5C 0040+00 1/1 0/0 0/0 .text
 * setBtpAnm__10daNpc_Kn_cFP16J3DAnmTexPatternP12J3DModelDatafi */
void daNpc_Kn_c::setBtpAnm(J3DAnmTexPattern* i_btp, J3DModelData* i_modelData, f32 i_rate,
                               int i_attribute) {
    mBtpAnm.init(i_modelData, i_btp, 1, i_attribute, i_rate, 0, -1);
}

/* 80A387BC-80A387FC 00DE9C 0040+00 1/1 0/0 0/0 .text
 * setBtkAnm__10daNpc_Kn_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi */
void daNpc_Kn_c::setBtkAnm(J3DAnmTextureSRTKey* i_btk, J3DModelData* i_modelData, f32 i_rate,
                               int i_attribute) {
    mBtkAnm.init(i_modelData, i_btk, 1, i_attribute, i_rate, 0, -1);
}

/* 80A387FC-80A388B0 00DEDC 00B4+00 1/1 0/0 0/0 .text            loadRes__10daNpc_Kn_cFPCScPPCc */
// NONMATCHING - extra instructions + regalloc. may actually be a for loop
cPhs__Step daNpc_Kn_c::loadRes(s8 const* param_0, char const** param_1) {
    int i = 0;
    int j = 0;

    while (true) {
        if (param_0[j] == -1) {
            if (i == j) {
                return cPhs_COMPLEATE_e;
            }
        }

        cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase[j], param_1[param_0[j]]);
        if (phase == 4) {
            i++;
        }

        if (phase == 5 || phase == 3){
            return cPhs_ERROR_e;
        }

        i++;
        j++;

        if (i >= 8) {
            return cPhs_INIT_e;
        }
    }
}

/* 80A388B0-80A38930 00DF90 0080+00 1/1 0/0 0/0 .text            deleteRes__10daNpc_Kn_cFPCScPPCc */
void daNpc_Kn_c::deleteRes(s8 const* param_0, char const** param_1) {
    for (int i = 0; i < 8 && param_0[i] != -1; i++ ) {
        dComIfG_resDelete(&mPhase[i], param_1[param_0[i]]);
    }
}

/* 80A38930-80A38BB8 00E010 0288+00 1/1 0/0 0/0 .text            execute__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::execute() {
    // NONMATCHING
}

/* 80A38BB8-80A38FAC 00E298 03F4+00 1/1 0/0 0/0 .text draw__10daNpc_Kn_cFiifP11_GXColorS10fiii */
void daNpc_Kn_c::draw(int param_0, int param_1, f32 param_2, _GXColorS10* param_3, f32 param_4,
                          int param_5, int param_6, int param_7) {
    // NONMATCHING
}

/* 80A38FAC-80A39008 00E68C 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__10daNpc_Kn_cFv */
void daNpc_Kn_c::setEnvTevColor() {
    tevStr.mEnvrIdxOverride = dComIfG_Bgsp().GetPolyColor(mGndChk);
    tevStr.mRoomNo = dComIfG_Bgsp().GetRoomId(mGndChk);
}

/* 80A39008-80A3904C 00E6E8 0044+00 2/2 0/0 0/0 .text            setRoomNo__10daNpc_Kn_cFv */
void daNpc_Kn_c::setRoomNo() {
    s32 room_id = dComIfG_Bgsp().GetRoomId(mGndChk);
    fopAcM_SetRoomNo(this, room_id);
    mCcStts.SetRoomId(room_id);
}

/* 80A3904C-80A390F8 00E72C 00AC+00 1/1 0/0 0/0 .text            checkEndAnm__10daNpc_Kn_cFf */
// NONMATCHING - missing instructions + regalloc
bool daNpc_Kn_c::checkEndAnm(f32 i_rate) {
    switch(mpMorf[0]->getPlayMode()) {
    case 2:
        return mpMorf[0]->isLoop();
    case 1:
    case 0:
        bool check = false;

        if (mpMorf[0]->isStop() && mpMorf[0]->getPlaySpeed() == 0.0f) {
            check = true;
        }

        if (check && i_rate != 0.0f) {
            return true;
        }
    case 3:
    default:
        return false;
    };
}

/* 80A390F8-80A3917C 00E7D8 0084+00 1/1 0/0 0/0 .text checkEndAnm__10daNpc_Kn_cFP12J3DFrameCtrlf
 */
 // NONMATCHING - missing instructions + regalloc
BOOL daNpc_Kn_c::checkEndAnm(J3DFrameCtrl* i_frameCtrl, f32 i_rate) {
    switch (i_frameCtrl->getAttribute()) {
    case 2:
        return i_frameCtrl->checkState(2);
    case 1:
    case 0:
        bool check = false;

        if (i_frameCtrl->checkState(1) && i_frameCtrl->getRate() == 0.0f) {
            check = true;
        }

        if (check && i_rate != 0.0f) {
            return TRUE;
        }
    case 3:
    default:
        return FALSE;
    }
}

/* 80A3917C-80A3949C 00E85C 0320+00 1/1 0/0 0/0 .text            playAllAnm__10daNpc_Kn_cFv */
void daNpc_Kn_c::playAllAnm() {
    // NONMATCHING
}

/* 80A3949C-80A39558 00EB7C 00BC+00 1/0 0/0 0/0 .text            ctrlBtk__10daNpc_Kn_cFv */
int daNpc_Kn_c::ctrlBtk() {
    if (mpMatAnm) {
        if (field_0xe30 != 0 && mBtkAnm.getBtkAnm()) {
            mpMatAnm->setNowOffsetX(cM_ssin(mJntAnm.getEyeAngleY()) * 0.2f);
            mpMatAnm->setNowOffsetY(cM_ssin(mJntAnm.getEyeAngleX()) * 0.2f);

            if (field_0xe31 != 0) {
                mpMatAnm->setMorfFrm(field_0xe31);
                field_0xe31 = 0;
            }

            mpMatAnm->onEyeMoveFlag();
            return 1;
        }

        if (field_0xe31 != 0) {
            mpMatAnm->setMorfFrm(field_0xe31);
            field_0xe31 = 0;
        }

        mpMatAnm->offEyeMoveFlag();
    }

    return 0;
}

/* 80A39558-80A395DC 00EC38 0084+00 1/1 0/0 0/0 .text            setMtx__10daNpc_Kn_cFv */
void daNpc_Kn_c::setMtx() {
    J3DModel* model = mpMorf[0]->getModel();
    // J3DModelData* data = model->getModelData(); // debug used this?
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(field_0xDAC);
    mDoMtx_stack_c::scaleM(scale);
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    model->setUserArea((u32)this);

    if (field_0xdcc & 0x400) {
        mBckAnm.getBckAnm()->setFrame(mBckAnm.getFrame());
    }

    mpMorf[0]->modelCalc();
}

/* 80A395DC-80A39684 00ECBC 00A8+00 1/1 0/0 0/0 .text            ctrlFaceMotion__10daNpc_Kn_cFv */
void daNpc_Kn_c::ctrlFaceMotion() {
    // NONMATCHING
}

/* 80A39684-80A39738 00ED64 00B4+00 1/1 0/0 0/0 .text            ctrlMotion__10daNpc_Kn_cFv */
// NONMATCHING - param2 being passed into setMotionAnm are wrong
void daNpc_Kn_c::ctrlMotion() {
    int p2;
    f32 p3;
    BOOL b;

    if (mMotionSeqMngr2.play(field_0xe26, &p2, &p3)) {
        b = p3 < 1.0f ? TRUE : p3;
        setMotionAnm(p2, p3 < 0.0f ? field_0xab8 : p3, b);

        if (field_0xABC != 0) {
            mpMorf[0]->setMorf(0.0f);

            if (mpMorf[1]) {
                mpMorf[1]->setMorf(0.0f);
            }
        }
    }
}

/* 80A39738-80A3989C 00EE18 0164+00 1/1 0/0 0/0 .text ctrlMsgAnm__10daNpc_Kn_cFPiPiP10fopAc_ac_ci
 */
void daNpc_Kn_c::ctrlMsgAnm(int* param_0, int* param_1, fopAc_ac_c* param_2, int param_3) {
    // NONMATCHING
}

/* 80A3989C-80A39BBC 00EF7C 0320+00 1/0 0/0 0/0 .text ctrlJoint__10daNpc_Kn_cFP8J3DJointP8J3DModel
 */
void daNpc_Kn_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 80A39BBC-80A39DBC 00F29C 0200+00 1/0 0/0 0/0 .text            evtProc__10daNpc_Kn_cFv */
int daNpc_Kn_c::evtProc() {
    // NONMATCHING
}

/* 80A39DBC-80A39F84 00F49C 01C8+00 1/0 0/0 0/0 .text            setFootPos__10daNpc_Kn_cFv */
void daNpc_Kn_c::setFootPos() {
    if (getFootLJointNo() >= 0) {
        field_0xD88 = field_0xD70;
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getFootLJointNo()));
        mDoMtx_stack_c::multVecZero(&field_0xd58);
        field_0xD70 = field_0xd58 - current.pos;
    }

    if (getFootRJointNo() >= 0) {
        field_0xD94 = field_0xD7C;
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getFootRJointNo()));
        mDoMtx_stack_c::multVecZero(&field_0xD64);
        field_0xD7C = field_0xD64 - current.pos;
    }

    if (field_0xABC != 0) {
        field_0xD88 = field_0xD70;
        field_0xD94 = field_0xD7C;
    }
}

/* 80A39F84-80A3A254 00F664 02D0+00 1/0 0/0 0/0 .text            setFootPrtcl__10daNpc_Kn_cFP4cXyzf
 */
void daNpc_Kn_c::setFootPrtcl(cXyz* param_0, f32 param_1) {
    // NONMATCHING
}

/* 80A3A254-80A3A25C 00F934 0008+00 1/0 0/0 0/0 .text            checkCullDraw__10daNpc_Kn_cFv */
bool daNpc_Kn_c::checkCullDraw() {
    return false;
}

/* 80A3A25C-80A3A2A8 00F93C 004C+00 1/0 0/0 0/0 .text            twilight__10daNpc_Kn_cFv */
void daNpc_Kn_c::twilight() {
    if (field_0xABD != 0) {
        attention_info.flags |= 0x400000;
        field_0xe32 = 0;
        attention_info.flags |= 0x800000;
        setHitodamaPrtcl();
    }
}

/* 80A3A2A8-80A3A404 00F988 015C+00 1/0 0/0 0/0 .text            evtOrder__10daNpc_Kn_cFv */
void daNpc_Kn_c::evtOrder() {
    // NONMATCHING
}

/* 80A3A404-80A3A504 00FAE4 0100+00 1/1 0/0 0/0 .text            evtChange__10daNpc_Kn_cFv */
void daNpc_Kn_c::evtChange() {
    // NONMATCHING
}

/* 80A3A504-80A3A568 00FBE4 0064+00 1/0 0/0 0/0 .text            clrParam__10daNpc_Kn_cFv */
void daNpc_Kn_c::clrParam() {
    field_0xDB2 = field_0xDAC;
    mCutType = 0;
    memset((void*)&field_0xe36,0,(int)(void*)&field_0xe3c - (int)(void*)&field_0xe36); // fake match?
    mJntAnm.clrDirectFlag();
}

/* 80A3A568-80A3A7C0 00FC48 0258+00 2/2 0/0 0/0 .text            setFaceMotionAnm__10daNpc_Kn_cFib
 */
bool daNpc_Kn_c::setFaceMotionAnm(int param_0, bool param_1) {
    // NONMATCHING
}

/* 80A3A7C0-80A3AA58 00FEA0 0298+00 2/2 0/0 0/0 .text            setMotionAnm__10daNpc_Kn_cFifi */
bool daNpc_Kn_c::setMotionAnm(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 80A3AA58-80A3AAF0 010138 0098+00 10/10 0/0 0/0 .text            setPos__10daNpc_Kn_cF4cXyz */
void daNpc_Kn_c::setPos(cXyz i_pos) {
    i_pos.y += 500.0f;
    mGndChk.SetPos(&i_pos);
    i_pos.y = dComIfG_Bgsp().GroundCross(&mGndChk);
    current.pos = i_pos;
    old.pos = current.pos;
}

/* 80A3AAF0-80A3AB18 0101D0 0028+00 35/35 0/0 0/0 .text            setAngle__10daNpc_Kn_cFs */
void daNpc_Kn_c::setAngle(s16 i_angle) {
    current.angle.y = i_angle;
    shape_angle.y = current.angle.y;
    field_0xDAC.y = current.angle.y;
    field_0xDB2.y = field_0xDAC.y;
    old.angle.y = current.angle.y;
}

/* 80A3AB18-80A3AC24 0101F8 010C+00 1/1 0/0 0/0 .text
 * chkActorInSight__10daNpc_Kn_cFP10fopAc_ac_cfs                */
void daNpc_Kn_c::chkActorInSight(fopAc_ac_c* param_0, f32 param_1, s16 param_2) {
    // NONMATCHING
}

/* 80A3AC24-80A3ACD4 010304 00B0+00 1/1 0/0 0/0 .text chkPointInArea__10daNpc_Kn_cF4cXyz4cXyzfffs
 */
void daNpc_Kn_c::chkPointInArea(cXyz param_0, cXyz param_1, f32 param_2, f32 param_3,
                                    f32 param_4, s16 param_5) {
    // NONMATCHING
}

/* 80A3ACD4-80A3AD50 0103B4 007C+00 1/1 0/0 0/0 .text
 * chkPointInArea__10daNpc_Kn_cF4cXyz4cXyz4cXyzs                */
void daNpc_Kn_c::chkPointInArea(cXyz param_0, cXyz param_1, cXyz param_2, s16 param_3) {
    // NONMATCHING
}

/* 80A3AD50-80A3AF50 010430 0200+00 1/1 0/0 0/0 .text            chkFindPlayer__10daNpc_Kn_cFis */
void daNpc_Kn_c::chkFindPlayer(int param_0, s16 param_1) {
    // NONMATCHING
}

/* 80A3AF50-80A3AF64 010630 0014+00 1/1 0/0 0/0 .text            getDistTable__12dAttention_cFi */
// void dAttention_c::getDistTable(int param_0) {
extern "C" void getDistTable__12dAttention_cFi() {
    // NONMATCHING
}

/* 80A3AF64-80A3B000 010644 009C+00 1/1 0/0 0/0 .text            srchPlayerActor__10daNpc_Kn_cFv */
BOOL daNpc_Kn_c::srchPlayerActor() {
    // NONMATCHING
}

/* 80A3B000-80A3B074 0106E0 0074+00 2/2 0/0 0/0 .text getAttnPos__10daNpc_Kn_cFP10fopAc_ac_c */
void daNpc_Kn_c::getAttnPos(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A3B074-80A3B220 010754 01AC+00 1/1 0/0 0/0 .text            turn__10daNpc_Kn_cFsii */
void daNpc_Kn_c::turn(s16 param_0, int param_1, int param_2) {
    // NONMATCHING
}

/* 80A3B220-80A3B3E8 010900 01C8+00 19/19 0/0 0/0 .text            step__10daNpc_Kn_cFsiiii */
s32 daNpc_Kn_c::step(s16 param_0, int param_1, int param_2, int param_3, int param_4) {
    // NONMATCHING
}

/* 80A3B3E8-80A3B448 010AC8 0060+00 20/20 0/0 0/0 .text initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c */
void daNpc_Kn_c::initTalk(int param_0, fopAc_ac_c** param_1) {
    // NONMATCHING
}

/* 80A3B448-80A3B5EC 010B28 01A4+00 20/20 0/0 0/0 .text talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
 */
BOOL daNpc_Kn_c::talkProc(int* param_0, int param_1, fopAc_ac_c** param_2, int param_3) {
    // NONMATCHING
}

/* 80A3B5EC-80A3B708 010CCC 011C+00 1/1 0/0 0/0 .text            setHitodamaPrtcl__10daNpc_Kn_cFv */
void daNpc_Kn_c::setHitodamaPrtcl() {
    // NONMATCHING
}

/* 80A3B708-80A3B720 010DE8 0018+00 1/0 0/0 0/0 .text            decTmr__10daNpc_Kn_cFv */
void daNpc_Kn_c::decTmr() {
    // NONMATCHING
}

/* 80A3B720-80A3B724 010E00 0004+00 1/0 0/0 0/0 .text            afterJntAnm__10daNpc_Kn_cFi */
void daNpc_Kn_c::afterJntAnm(int param_0) {
    /* empty function */
}

/* 80A3B724-80A3B760 010E04 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
// extern "C" void __dt__5csXyzFv() {
//     // NONMATCHING
// }

// /* 80A3B760-80A3B79C 010E40 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// // cXyz::~cXyz() {
// extern "C" void __dt__4cXyzFv() {
//     // NONMATCHING
// }

/* 80A3B79C-80A3B7A4 010E7C 0008+00 1/0 0/0 0/0 .text            evtEndProc__10daNpc_Kn_cFv */
bool daNpc_Kn_c::evtEndProc() {
    return true;
}

/* 80A3B7A4-80A3B7AC 010E84 0008+00 1/0 0/0 0/0 .text            checkChangeEvt__10daNpc_Kn_cFv */
bool daNpc_Kn_c::checkChangeEvt() {
    return false;
}

/* 80A3B7AC-80A3B7B4 010E8C 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::getFootRJointNo() {
    return -1;
}

/* 80A3B7B4-80A3B7BC 010E94 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::getFootLJointNo() {
    return -1;
}

/* 80A3B7BC-80A3B7C4 010E9C 0008+00 1/0 0/0 0/0 .text            chkXYItems__10daNpc_Kn_cFv */
bool daNpc_Kn_c::chkXYItems() {
    return false;
}

/* 80A3B7C4-80A3B7CC 010EA4 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__10daNpc_Kn_cFiifi */
bool daNpc_Kn_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    return true;
}

/* 80A3B7CC-80A3B7FC 010EAC 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__10daNpc_Kn_cF26daNpcT_faceMotionAnmData_c  */
daNpcT_faceMotionAnmData_c daNpc_Kn_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
    // NONMATCHING
}

/* 80A3B7FC-80A3B82C 010EDC 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__10daNpc_Kn_cF22daNpcT_motionAnmData_c          */
daNpcT_motionAnmData_c daNpc_Kn_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
    // NONMATCHING
}

/* 80A3B82C-80A3BD14 010F0C 04E8+00 1/1 0/0 0/0 .text
 * __ct__10daNpc_Kn_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
 // NONMATCHING - missing something instructions / regalloc
daNpc_Kn_c::daNpc_Kn_c(daNpcT_faceMotionAnmData_c const* param_0,
                           daNpcT_motionAnmData_c const* param_1,
                           daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
                           daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
                           daNpcT_evtData_c const* param_6, char** param_7) :
                            // daNpcT_c(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7) { 
                           mpFaceMotionAnmData(param_0), 
                           mpMotionAnmData(param_1), mMotionSeqMngr1(param_2, param_3), 
                           mMotionSeqMngr2(param_4, param_5), 
                           mpEventData(param_6),
                           field_0x5B8(param_7) {
    initialize();
}

/* 80A3BD14-80A3BD1C 0113F4 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::getEyeballMaterialNo() {
    return false;
}

/* 80A3BD1C-80A3BD24 0113FC 0008+00 1/0 0/0 0/0 .text getEyeballLMaterialNo__10daNpc_Kn_cFv */
int daNpc_Kn_c::getEyeballLMaterialNo() {
    return false;
}

/* 80A3BD24-80A3BD2C 011404 0008+00 1/0 0/0 0/0 .text getEyeballRMaterialNo__10daNpc_Kn_cFv */
bool daNpc_Kn_c::getEyeballRMaterialNo() {
    return false;
}

/* 80A3BD2C-80A3BD48 01140C 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<s>__FPs */
// extern "C" void func_80A3BD2C(void* _this, s16* param_0) {
//     // NONMATCHING
// }

// /* 80A3BD48-80A3BD64 011428 001C+00 23/23 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
// extern "C" void func_80A3BD48(void* _this, int* param_0) {
//     // NONMATCHING
// }

// /* 80A3BD64-80A3BDE8 011444 0084+00 9/9 0/0 0/0 .text            cLib_getRndValue<s>__Fss */
// extern "C" void func_80A3BD64(void* _this, s16 param_0, s16 param_1) {
//     // NONMATCHING
// }

// /* 80A3BDE8-80A3BE64 0114C8 007C+00 1/1 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
// extern "C" void func_80A3BDE8(void* _this, int param_0, int param_1) {
//     // NONMATCHING
// }

/* ############################################################################################## */
/* 80A432A8-80A432B4 002574 000C+00 2/2 0/0 0/0 .data            __vt__16daNpc_Kn_Param_c */
// SECTION_DATA extern void* __vt__16daNpc_Kn_Param_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__16daNpc_Kn_Param_cFv,
// };

// /* 80A3BE64-80A3C124 011544 02C0+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_kn_cpp */
// void __sinit_d_a_npc_kn_cpp() {
//     // NONMATCHING
// }

// #pragma push
// #pragma force_active on
// REGISTER_CTORS(0x80A3BE64, __sinit_d_a_npc_kn_cpp);
// #pragma pop

/* 80A3C124-80A3C16C 011804 0048+00 2/1 0/0 0/0 .text            __dt__16daNpc_Kn_Param_cFv */
daNpc_Kn_Param_c::~daNpc_Kn_Param_c() {
    // NONMATCHING
}

/* 80A3C16C-80A3C174 01184C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
// static void func_80A3C16C() {
//     // NONMATCHING
// }

// /* 80A3C174-80A3C17C 011854 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
// static void func_80A3C174() {
//     // NONMATCHING
// }

// /* 80A3C17C-80A3C1C4 01185C 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// // daNpcT_Path_c::~daNpcT_Path_c() {
// extern "C" void __dt__13daNpcT_Path_cFv() {
//     // NONMATCHING
// }

// /* 80A3C1C4-80A3C1C8 0118A4 0004+00 1/1 0/0 0/0 .text __ct__Q210daNpc_Kn_c20daNpc_Kn_prtclMngr_cFv
//  */
// // daNpc_Kn_c::daNpc_Kn_prtclMngr_c::daNpc_Kn_prtclMngr_c() {
// //     /* empty function */
// // }

// /* 80A3C1C8-80A3C24C 0118A8 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// // dCcD_Sph::dCcD_Sph() {
// extern "C" void __ct__8dCcD_SphFv() {
//     // NONMATCHING
// }

// /* 80A3C24C-80A3C294 01192C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// // cM3dGSph::~cM3dGSph() {
// extern "C" void __dt__8cM3dGSphFv() {
//     // NONMATCHING
// }

// /* 80A3C294-80A3C2DC 011974 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// // cM3dGCyl::~cM3dGCyl() {
// extern "C" void __dt__8cM3dGCylFv() {
//     // NONMATCHING
// }

// /* 80A3C2DC-80A3C324 0119BC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// // cM3dGAab::~cM3dGAab() {
// extern "C" void __dt__8cM3dGAabFv() {
//     // NONMATCHING
// }

// /* 80A3C324-80A3C35C 011A04 0038+00 1/1 0/0 0/0 .text            __ct__11J3DLightObjFv */
// // J3DLightObj::J3DLightObj() {
// extern "C" void __ct__11J3DLightObjFv() {
//     // NONMATCHING
// }

// /* 80A3C35C-80A3C360 011A3C 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// // csXyz::csXyz() {
// extern "C" void __ct__5csXyzFv() {
//     /* empty function */
// }

// /* 80A3C360-80A3C45C 011A40 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// // daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
// extern "C" void __dt__15daNpcT_JntAnm_cFv() {
//     // NONMATCHING
// }

// /* 80A3C45C-80A3C460 011B3C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// // cXyz::cXyz() {
// extern "C" void __ct__4cXyzFv() {
//     /* empty function */
// }

// /* 80A3C460-80A3C4A8 011B40 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// // daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
// extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
//     // NONMATCHING
// }

// /* 80A3C4A8-80A3C4F0 011B88 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// // daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
// extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
//     // NONMATCHING
// }

// /* 80A3C4F0-80A3C560 011BD0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// // dBgS_AcchCir::~dBgS_AcchCir() {
// extern "C" void __dt__12dBgS_AcchCirFv() {
//     // NONMATCHING
// }

// /* 80A3C560-80A3C5BC 011C40 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// // dCcD_GStts::~dCcD_GStts() {
// extern "C" void __dt__10dCcD_GSttsFv() {
//     // NONMATCHING
// }

// /* 80A3C5BC-80A3C62C 011C9C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// // dBgS_ObjAcch::~dBgS_ObjAcch() {
// extern "C" void __dt__12dBgS_ObjAcchFv() {
//     // NONMATCHING
// }

// /* 80A3C62C-80A3C674 011D0C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// // J3DFrameCtrl::~J3DFrameCtrl() {
// extern "C" void __dt__12J3DFrameCtrlFv() {
//     // NONMATCHING
// }

// /* 80A3C674-80A3C790 011D54 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// // void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
// //                                       s16 param_4) {
// extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
//     // NONMATCHING
// }

// /* 80A3C790-80A3C998 011E70 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// // void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
// extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
//     // NONMATCHING
// }

/* 80A3C998-80A3CB14 012078 017C+00 1/1 0/0 0/0 .text            setParamTeach01__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach01() {
    // NONMATCHING
}

/* 80A3CB14-80A3CBFC 0121F4 00E8+00 1/1 0/0 0/0 .text            setCollisionTeach01__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach01() {
    switch (field_0x15ae) {
    case 0:
        break;
    case 1:
        field_0x11DC.SetTgType(-1);
        field_0x11DC.SetTgHitMark(CcG_Tg_UNK_MARK_2);
        field_0x11DC.SetTgSPrm(0x13);
        field_0x11DC.OnTgNoConHit();
        
        if (field_0x170c == 0) {
            field_0x11DC.OnTgShield();
        } else {
            field_0x11DC.OffTgShield();    
        }
        break;
    case 2:
        field_0x11DC.SetTgType(-1);
        field_0x11DC.SetTgHitMark(CcG_Tg_UNK_MARK_1);
        field_0x11DC.SetTgSPrm(0x13);
        field_0x11DC.OffTgShield();
        field_0x11DC.OffTgNoAtHitInfSet();
        field_0x11DC.OnTgNoConHit();
        field_0x11DC.OnCoSetBit();
        break;
    case 3:
        field_0x11DC.OffTgSetBit();
        field_0x11DC.OffCoSetBit();
        break;
    }
}

/* 80A3CBFC-80A3CCC0 0122DC 00C4+00 1/1 0/0 0/0 .text teach01_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach01_selectAction() {
    switch(field_0x15ae) {
    case 0:
        mpTeachAction = &daNpc_Kn_c::teach01_start;
        return;
    case 1:
        mpTeachAction = &daNpc_Kn_c::teach01_attackWait;
        return;
    case 2:
        mpTeachAction = &daNpc_Kn_c::teach01_swordAttackWait;
        return;
    case 3:
        mpTeachAction = &daNpc_Kn_c::teach01_swordFinishWait;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
    return;
}

/* 80A3CCC0-80A3CDFC 0123A0 013C+00 1/0 0/0 0/0 .text            teach01_start__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach01_start(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(0,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        field_0xe2a = 2;
    case 2:
        field_0xe36 = 5;
        field_0xe39 = 1;
        cLib_addCalcAngleS2(&field_0xDAC.y,fopAcM_searchPlayerAngleY(this),2,0x800);
        setAngle(field_0xDAC.y);
    case 3:
    default:
        return 1;
    }
}

/* 80A3CDFC-80A3CF78 0124DC 017C+00 1/0 0/0 0/0 .text            teach01_attackWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach01_attackWait(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr2.setNo(9,-1.0f,1,0);
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        field_0xe2a = 2;
    case 2:
    if (!ctrlWarp()) {
        cLib_addCalcAngleS2(&field_0xDAC.y,fopAcM_searchPlayerAngleY(this),2,0x800);
        setAngle(field_0xDAC.y);
        if (field_0x11DC.ChkTgHit()) {

            field_0xe36 = 6;
            field_0x16f4.set(1.0f,1.0f,1.0f);
            field_0x170c = 0;
            field_0x170d = 0;
            mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x28);
        }
    }
    case 3:
    default:
        return 1;
    }
}

/* 80A3CF78-80A3D32C 012658 03B4+00 1/0 0/0 0/0 .text teach01_swordAttackWait__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach01_swordAttackWait(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr2.setNo(1,-1.0f,0,0);
        mMotionSeqMngr1.setNo(9,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        // field_0xdec = 
    case 2:
    if (!ctrlWarp()) {
        cLib_addCalcAngleS2(&field_0xDAC.y,fopAcM_searchPlayerAngleY(this),2,0x800);
        setAngle(field_0xDAC.y);
        if (field_0x11DC.ChkTgHit()) {

            field_0xe36 = 6;
            field_0x16f4.set(1.0f,1.0f,1.0f);
            field_0x170c = 0;
            field_0x170d = 0;
            mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x28);
        }
    }
    case 3:
    default:
        return 1;
    }
}

/* 80A3D32C-80A3D6D8 012A0C 03AC+00 1/0 0/0 0/0 .text teach01_swordFinishWait__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach01_swordFinishWait(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A40AD4-80A40AD8 00020C 0004+00 0/0 0/0 0/0 .rodata          @12826 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12826 = 27.0f;
// COMPILER_STRIP_GATE(0x80A40AD4, &lit_12826);
// #pragma pop

// /* 80A40AD8-80A40ADC 000210 0004+00 0/0 0/0 0/0 .rodata          @12827 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12827 = 28.0f;
// COMPILER_STRIP_GATE(0x80A40AD8, &lit_12827);
// #pragma pop

// /* 80A40ADC-80A40AE0 000214 0004+00 0/2 0/0 0/0 .rodata          @13396 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_13396 = 600.0f;
// COMPILER_STRIP_GATE(0x80A40ADC, &lit_13396);
// #pragma pop

// /* 80A40AE0-80A40AE4 000218 0004+00 0/1 0/0 0/0 .rodata          @13397 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_13397 = 100.0f;
// COMPILER_STRIP_GATE(0x80A40AE0, &lit_13397);
// #pragma pop

/* 80A3D6D8-80A3DCEC 012DB8 0614+00 3/3 0/0 0/0 .text            ctrlWarp__10daNpc_Kn_cFv */
int daNpc_Kn_c::ctrlWarp() {
    // NONMATCHING
}

/* 80A3DCEC-80A3DEC4 0133CC 01D8+00 1/0 0/0 0/0 .text            ECut_firstEncount__10daNpc_Kn_cFi
 */
void daNpc_Kn_c::ECut_firstEncount(int param_0) {
    // NONMATCHING
}

/* 80A3DEC4-80A3E550 0135A4 068C+00 1/0 0/0 0/0 .text            ECut_attackFailed__10daNpc_Kn_cFi
 */
void daNpc_Kn_c::ECut_attackFailed(int param_0) {
    // NONMATCHING
}

/* 80A3E550-80A3EB84 013C30 0634+00 3/0 0/0 0/0 .text            ECut_firstSkillGet__10daNpc_Kn_cFi
 */
void daNpc_Kn_c::ECut_firstSkillGet(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A40AE4-80A40AE8 00021C 0004+00 0/1 0/0 0/0 .rodata          @13839 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_13839 = 255.0f;
// COMPILER_STRIP_GATE(0x80A40AE4, &lit_13839);
// #pragma pop

/* 80A3EB84-80A3EE38 014264 02B4+00 1/1 0/0 0/0 .text            setParamTeach02__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach02() {
    // NONMATCHING
}

/* 80A3EE38-80A3EF1C 014518 00E4+00 1/1 0/0 0/0 .text            setCollisionTeach02__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach02() {
    switch (field_0x15ae) {
        case 4:
            break;
        case 5:
            field_0x11DC.SetTgType(-1);
            field_0x11DC.SetTgHitMark(CcG_Tg_UNK_MARK_2);
            field_0x11DC.SetTgSPrm(0x13);
            field_0x11DC.OnTgShield();
            field_0x11DC.OffTgNoAtHitInfSet();
            field_0x11DC.OnTgNoConHit();
            break;
        case 6:
            field_0x11DC.SetTgType(-1);
            field_0x11DC.SetTgHitMark(CcG_Tg_UNK_MARK_1);
            field_0x11DC.SetTgSPrm(0x13);
            field_0x11DC.OffTgShield();
            field_0x11DC.OffTgNoAtHitInfSet();
            field_0x11DC.OnTgNoConHit();
            break;
        case 7:
            field_0x11DC.SetTgType(-1);
            field_0x11DC.SetTgHitMark(CcG_Tg_UNK_MARK_2);
            field_0x11DC.SetTgSPrm(0x13);
            field_0x11DC.OffTgShield();
            field_0x11DC.OnTgNoConHit();
            break;
    }
}

/* 80A3EF1C-80A3EFE0 0145FC 00C4+00 1/1 0/0 0/0 .text teach02_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach02_selectAction() {
    switch(field_0x15ae) {
    case 4:
        mpTeachAction = &daNpc_Kn_c::teach02_start;
        return;
    case 5:
        mpTeachAction = &daNpc_Kn_c::teach02_shieldBashWait;
        return;
    case 6:
        mpTeachAction = &daNpc_Kn_c::teach02_finishWait;
        return;
    case 7:
        mpTeachAction = &daNpc_Kn_c::teach02_shieldReflectWait;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
    return;
}

/* 80A3EFE0-80A3F358 0146C0 0378+00 1/0 0/0 0/0 .text teach02_shieldBashWait__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach02_shieldBashWait(void* param_0) {
    // NONMATCHING
}

/* 80A3F358-80A3F5A4 014A38 024C+00 1/0 0/0 0/0 .text            teach02_finishWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach02_finishWait(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A40AE8-80A40AEC 000220 0004+00 0/1 0/0 0/0 .rodata          @14209 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_14209 = 3.0f;
// COMPILER_STRIP_GATE(0x80A40AE8, &lit_14209);
// #pragma pop

// /* 80A40AEC-80A40AF0 000224 0004+00 0/1 0/0 0/0 .rodata          @14210 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_14210 = 34.0f;
// COMPILER_STRIP_GATE(0x80A40AEC, &lit_14210);
// #pragma pop

// /* 80A40AF0-80A40AF4 000228 0004+00 0/1 0/0 0/0 .rodata          @14211 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_14211 = 35.0f;
// COMPILER_STRIP_GATE(0x80A40AF0, &lit_14211);
// #pragma pop

/* 80A3F5A4-80A3F99C 014C84 03F8+00 1/0 0/0 0/0 .text teach02_shieldReflectWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach02_shieldReflectWait(void* param_0) {
    // NONMATCHING
}

/* 80A3F99C-80A3FFB4 01507C 0618+00 3/0 0/0 0/0 .text ECut_secondSkillExplain__10daNpc_Kn_cFi */
void daNpc_Kn_c::ECut_secondSkillExplain(int param_0) {
    // NONMATCHING
}

/* 80A3FFB4-80A403B8 015694 0404+00 1/0 0/0 0/0 .text            ECut_reflectExplain__10daNpc_Kn_cFi
 */
void daNpc_Kn_c::ECut_reflectExplain(int param_0) {
    // NONMATCHING
}

/* 80A403B8-80A408B4 015A98 04FC+00 2/0 0/0 0/0 .text            ECut_secondSkillGet__10daNpc_Kn_cFi
 */
void daNpc_Kn_c::ECut_secondSkillGet(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A40AF4-80A40AF8 00022C 0004+00 0/0 0/0 0/0 .rodata          @14385 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_14385 = 15.0f;
// COMPILER_STRIP_GATE(0x80A40AF4, &lit_14385);
// #pragma pop

// /* 80A43414-80A43418 00015C 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
// #pragma push
// #pragma force_active on
// static u8 data_80A43414[4];
// #pragma pop

// /* 80A43418-80A4341C 000160 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__35JASGlobalInstance<14JASAudioThread>             */
// #pragma push
// #pragma force_active on
// static u8 data_80A43418[4];
// #pragma pop

// /* 80A4341C-80A43420 000164 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
// #pragma push
// #pragma force_active on
// static u8 data_80A4341C[4];
// #pragma pop

// /* 80A43420-80A43424 000168 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
// #pragma push
// #pragma force_active on
// static u8 data_80A43420[4];
// #pragma pop

// /* 80A43424-80A43428 00016C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
//  */
// #pragma push
// #pragma force_active on
// static u8 data_80A43424[4];
// #pragma pop

// /* 80A43428-80A4342C 000170 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
//  */
// #pragma push
// #pragma force_active on
// static u8 data_80A43428[4];
// #pragma pop

// /* 80A4342C-80A43430 000174 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
//  */
// #pragma push
// #pragma force_active on
// static u8 data_80A4342C[4];
// #pragma pop

// /* 80A43430-80A43434 000178 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
// #pragma push
// #pragma force_active on
// static u8 data_80A43430[4];
// #pragma pop

// /* 80A43434-80A43438 00017C 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
// #pragma push
// #pragma force_active on
// static u8 data_80A43434[4];
// #pragma pop

// /* 80A43438-80A4343C 000180 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
// #pragma push
// #pragma force_active on
// static u8 data_80A43438[4];
// #pragma pop

// /* 80A4343C-80A43440 000184 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
// #pragma push
// #pragma force_active on
// static u8 data_80A4343C[4];
// #pragma pop

// /* 80A43440-80A43444 000188 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
// #pragma push
// #pragma force_active on
// static u8 data_80A43440[4];
// #pragma pop

// /* 80A43444-80A43448 00018C 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
// #pragma push
// #pragma force_active on
// static u8 data_80A43444[4];
// #pragma pop

// /* 80A43448-80A4344C 000190 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
//  */
// #pragma push
// #pragma force_active on
// static u8 data_80A43448[4];
// #pragma pop

// /* 80A4344C-80A43450 000194 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
// #pragma push
// #pragma force_active on
// static u8 data_80A4344C[4];
// #pragma pop

// /* 80A43450-80A43454 000198 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
// #pragma push
// #pragma force_active on
// static u8 data_80A43450[4];
// #pragma pop

// /* 80A43454-80A43458 00019C 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
// #pragma push
// #pragma force_active on
// static u8 data_80A43454[4];
// #pragma pop

// /* 80A43458-80A4345C 0001A0 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
// #pragma push
// #pragma force_active on
// static u8 data_80A43458[4];
// #pragma pop

// /* 80A4345C-80A43460 0001A4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
//  */
// #pragma push
// #pragma force_active on
// static u8 data_80A4345C[4];
// #pragma pop

// /* 80A43460-80A43464 0001A8 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
// #pragma push
// #pragma force_active on
// static u8 data_80A43460[4];
// #pragma pop

// /* 80A43464-80A43468 0001AC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
//  */
// #pragma push
// #pragma force_active on
// static u8 data_80A43464[4];
// #pragma pop

// /* 80A43468-80A4346C 0001B0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
//  */
// #pragma push
// #pragma force_active on
// static u8 data_80A43468[4];
// #pragma pop

// /* 80A4346C-80A43470 0001B4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
//  */
// #pragma push
// #pragma force_active on
// static u8 data_80A4346C[4];
// #pragma pop

// /* 80A43470-80A43474 0001B8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
//  */
// #pragma push
// #pragma force_active on
// static u8 data_80A43470[4];
// #pragma pop

// /* 80A43474-80A43478 0001BC 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
// #pragma push
// #pragma force_active on
// static u8 data_80A43474[4];
// #pragma pop

/* 80A40AF8-80A40AF8 000230 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 80A43148-80A43168 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Kn_MethodTable */
// static actor_method_class daNpc_Kn_MethodTable = {
//     (process_method_func)daNpc_Kn_Create,
//     (process_method_func)daNpc_Kn_Delete,
//     (process_method_func)daNpc_Kn_Execute,
//     (process_method_func)daNpc_Kn_IsDelete,
//     (process_method_func)daNpc_Kn_Draw,
// };

// /* 80A43168-80A43198 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KN */
// extern actor_process_profile_definition g_profile_NPC_KN = {
//   fpcLy_CURRENT_e,        // mLayerID
//   7,                      // mListID
//   fpcPi_CURRENT_e,        // mListPrio
//   PROC_NPC_KN,            // mProcName
//   &g_fpcLf_Method.mBase,  // sub_method
//   sizeof(daNpc_Kn_c),     // mSize
//   0,                      // mSizeOther
//   0,                      // mParameters
//   &g_fopAc_Method.base,   // sub_method
//   347,                    // mPriority
//   &daNpc_Kn_MethodTable,  // sub_method
//   0x00044107,             // mStatus
//   fopAc_ENEMY_e,          // mActorType
//   fopAc_CULLBOX_CUSTOM_e, // cullType
// };
