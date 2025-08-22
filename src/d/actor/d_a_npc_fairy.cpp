/**
 * @file d_a_npc_fairy.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_fairy.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void create__16_Fairy_Feather_cFv();
extern "C" void loadModel__16_Fairy_Feather_cFv();
extern "C" void setAnm__16_Fairy_Feather_cFi();
extern "C" void setBrk__16_Fairy_Feather_cFi();
extern "C" void setBtk__16_Fairy_Feather_cFi();
extern "C" bool ctrlJointCallBack__16_Fairy_Feather_cFP8J3DJointi();
extern "C" void connect__16_Fairy_Feather_cFP13daNpc_Fairy_c();
extern "C" void draw__16_Fairy_Feather_cFP13daNpc_Fairy_c();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__13daNpc_Fairy_cFv();
extern "C" void Create__13daNpc_Fairy_cFv();
extern "C" void CreateHeap__13daNpc_Fairy_cFv();
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
extern "C" void setAnmData__13daNpc_Fairy_cFv();
extern "C" void setMotionAnm__13daNpc_Fairy_cFifi();
extern "C" void afterSetMotionAnm__13daNpc_Fairy_cFiifi();
extern "C" void Delete__13daNpc_Fairy_cFv();
extern "C" void Execute__13daNpc_Fairy_cFv();
extern "C" void Draw__13daNpc_Fairy_cFv();
extern "C" void drawOtherMdl__13daNpc_Fairy_cFv();
extern "C" void createHeapCallBack__13daNpc_Fairy_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__13daNpc_Fairy_cFP8J3DJointi();
extern "C" bool isDelete__13daNpc_Fairy_cFv();
extern "C" void reset__13daNpc_Fairy_cFv();
extern "C" void initStatus__13daNpc_Fairy_cFv();
extern "C" void afterJntAnm__13daNpc_Fairy_cFi();
extern "C" void setParam__13daNpc_Fairy_cFv();
extern "C" bool checkChangeEvt__13daNpc_Fairy_cFv();
extern "C" void setAfterTalkMotion__13daNpc_Fairy_cFv();
extern "C" void srchActors__13daNpc_Fairy_cFv();
extern "C" void evtTalk__13daNpc_Fairy_cFv();
extern "C" void evtCutProc__13daNpc_Fairy_cFv();
extern "C" void evtEndProc__13daNpc_Fairy_cFv();
extern "C" void action__13daNpc_Fairy_cFv();
extern "C" void ptcl_water__13daNpc_Fairy_cFv();
extern "C" void ptcl_sprit__13daNpc_Fairy_cFv();
extern "C" void _to_FairyField__13daNpc_Fairy_cFv();
extern "C" void chk_tempbit__13daNpc_Fairy_cFv();
extern "C" void beforeMove__13daNpc_Fairy_cFv();
extern "C" void afterMoved__13daNpc_Fairy_cFv();
extern "C" void setAttnPos__13daNpc_Fairy_cFv();
extern "C" void setCollision__13daNpc_Fairy_cFv();
extern "C" bool drawDbgInfo__13daNpc_Fairy_cFv();
extern "C" void setAction__13daNpc_Fairy_cFM13daNpc_Fairy_cFPCvPvi_ii();
extern "C" void wait__13daNpc_Fairy_cFi();
extern "C" void talk__13daNpc_Fairy_cFi();
extern "C" void AppearDemoCall__13daNpc_Fairy_cFv();
extern "C" void ReturnDemoCall__13daNpc_Fairy_cFv();
extern "C" void PresentDemoCall__13daNpc_Fairy_cFv();
extern "C" void cutAppear_10F_01__13daNpc_Fairy_cFi();
extern "C" void _cutAppear_10F_01_Init__13daNpc_Fairy_cFRCi();
extern "C" void _cutAppear_10F_01_Main__13daNpc_Fairy_cFRCi();
extern "C" void cutAppear_10F_02__13daNpc_Fairy_cFi();
extern "C" void _cutAppear_10F_02_Init__13daNpc_Fairy_cFRCi();
extern "C" void _cutAppear_10F_02_Main__13daNpc_Fairy_cFRCi();
extern "C" void cutAppear_20F_01__13daNpc_Fairy_cFi();
extern "C" void _cutAppear_20F_01_Init__13daNpc_Fairy_cFRCi();
extern "C" void _cutAppear_20F_01_Main__13daNpc_Fairy_cFRCi();
extern "C" void cutAppear_20F_02__13daNpc_Fairy_cFi();
extern "C" void _cutAppear_20F_02_Init__13daNpc_Fairy_cFRCi();
extern "C" void _cutAppear_20F_02_Main__13daNpc_Fairy_cFRCi();
extern "C" void cutAppear_30F_01__13daNpc_Fairy_cFi();
extern "C" void _cutAppear_30F_01_Init__13daNpc_Fairy_cFRCi();
extern "C" void _cutAppear_30F_01_Main__13daNpc_Fairy_cFRCi();
extern "C" void cutAppear_30F_02__13daNpc_Fairy_cFi();
extern "C" void _cutAppear_30F_02_Init__13daNpc_Fairy_cFRCi();
extern "C" void _cutAppear_30F_02_Main__13daNpc_Fairy_cFRCi();
extern "C" void cutAppear_40F_01__13daNpc_Fairy_cFi();
extern "C" void _cutAppear_40F_01_Init__13daNpc_Fairy_cFRCi();
extern "C" void _cutAppear_40F_01_Main__13daNpc_Fairy_cFRCi();
extern "C" void cutAppear_40F_02__13daNpc_Fairy_cFi();
extern "C" void _cutAppear_40F_02_Init__13daNpc_Fairy_cFRCi();
extern "C" void _cutAppear_40F_02_Main__13daNpc_Fairy_cFRCi();
extern "C" void cutAppear_50F_01__13daNpc_Fairy_cFi();
extern "C" void _cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi();
extern "C" void _cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi();
extern "C" void cutAppear_50F_02__13daNpc_Fairy_cFi();
extern "C" void _cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi();
extern "C" void _cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi();
extern "C" void cutAppear_50F_03__13daNpc_Fairy_cFi();
extern "C" void _cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi();
extern "C" void _cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi();
extern "C" void cutAppear_50F_04__13daNpc_Fairy_cFi();
extern "C" void _cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi();
extern "C" void _cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi();
extern "C" void cutAppear_50F_05__13daNpc_Fairy_cFi();
extern "C" void _cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi();
extern "C" void _cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi();
extern "C" void cutSelect_Return1__13daNpc_Fairy_cFi();
extern "C" void _cutSelect_Return1_Init__13daNpc_Fairy_cFRCi();
extern "C" void _cutSelect_Return1_Main__13daNpc_Fairy_cFRCi();
extern "C" void cutSelect_Return2__13daNpc_Fairy_cFi();
extern "C" void _cutSelect_Return2_Init__13daNpc_Fairy_cFRCi();
extern "C" void _cutSelect_Return2_Main__13daNpc_Fairy_cFRCi();
extern "C" void cutSelect_Return3__13daNpc_Fairy_cFi();
extern "C" void _cutSelect_Return3_Init__13daNpc_Fairy_cFRCi();
extern "C" void _cutSelect_Return3_Main__13daNpc_Fairy_cFRCi();
extern "C" void cutReturnCancel__13daNpc_Fairy_cFi();
extern "C" bool _cutReturnCancel_Init__13daNpc_Fairy_cFRCi();
extern "C" bool _cutReturnCancel_Main__13daNpc_Fairy_cFRCi();
extern "C" static void daNpc_Fairy_Create__FPv();
extern "C" static void daNpc_Fairy_Delete__FPv();
extern "C" static void daNpc_Fairy_Execute__FPv();
extern "C" static void daNpc_Fairy_Draw__FPv();
extern "C" static bool daNpc_Fairy_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void
__ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__15daNpcT_JntAnm_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs();
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs();
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi();
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void __sinit_d_a_npc_fairy_cpp();
extern "C" void
__ct__13daNpc_Fairy_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" u16 getEyeballMaterialNo__13daNpc_Fairy_cFv();
extern "C" s32 getHeadJointNo__13daNpc_Fairy_cFv();
extern "C" s32 getNeckJointNo__13daNpc_Fairy_cFv();
extern "C" bool getBackboneJointNo__13daNpc_Fairy_cFv();
extern "C" void checkChangeJoint__13daNpc_Fairy_cFi();
extern "C" void checkRemoveJoint__13daNpc_Fairy_cFi();
extern "C" void __dt__19daNpc_Fairy_Param_cFv();
extern "C" static void func_809B92C0();
extern "C" static void func_809B92C8();
extern "C" u8 const m__19daNpc_Fairy_Param_c[148];
extern "C" extern char const* const d_a_npc_fairy__stringBase0;
extern "C" void* mCutNameList__13daNpc_Fairy_c[18];
extern "C" u8 mCutList__13daNpc_Fairy_c[216];

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void checkEmptyBottle__17dSv_player_item_cFv();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff();
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
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void remove__18daNpcT_ActorMngr_cFv();
extern "C" void getActorP__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz();
extern "C" void calcJntRad__15daNpcT_JntAnm_cFfff();
extern "C" void calc__19daNpcT_DmgStagger_cFi();
extern "C" void tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void getTrnsfrmKeyAnmP__8daNpcT_cFPCci();
extern "C" void getTexSRTKeyAnmP__8daNpcT_cFPCci();
extern "C" void getTevRegKeyAnmP__8daNpcT_cFPCci();
extern "C" void getColorAnmP__8daNpcT_cFPCci();
extern "C" void setMcaMorfAnm__8daNpcT_cFP18J3DAnmTransformKeyffiii();
extern "C" void setBtkAnm__8daNpcT_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi();
extern "C" void setBrkAnm__8daNpcT_cFP15J3DAnmTevRegKeyP12J3DModelDatafi();
extern "C" void setBpkAnm__8daNpcT_cFP11J3DAnmColorP12J3DModelDatafi();
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
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void daNpcT_chkDoBtnIsSpeak__FP10fopAc_ac_c();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
extern "C" void daNpcF_offTmpBit__FUl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_change_colpat__FUc();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void bgmStreamPrepare__8Z2SeqMgrFUl();
extern "C" void bgmStreamPlay__8Z2SeqMgrFv();
extern "C" void bgmStreamStop__8Z2SeqMgrFUl();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcT_c[68];
extern "C" extern void* __vt__8daNpcT_c[49];
extern "C" extern void* __vt__15daNpcT_MatAnm_c[4 + 1 /* padding */];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 809B1B0C-809B1BC0 0000EC 00B4+00 1/1 0/0 0/0 .text            create__16_Fairy_Feather_cFv */
void _Fairy_Feather_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B92E4-809B9378 000000 0094+00 21/21 0/0 0/0 .rodata          m__19daNpc_Fairy_Param_c */
SECTION_RODATA u8 const daNpc_Fairy_Param_c::m[148] = {
    0x43, 0x3E, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x44, 0x2F, 0x00,
    0x00, 0x43, 0x7F, 0x00, 0x00, 0x43, 0x2A, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1,
    0x20, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00,
    0xC2, 0x34, 0x00, 0x00, 0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00,
    0x06, 0x00, 0x05, 0x00, 0x06, 0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809B92E4, &daNpc_Fairy_Param_c::m);

/* 809B9378-809B937C 000094 0004+00 9/15 0/0 0/0 .rodata          @3916 */
SECTION_RODATA static f32 const lit_3916 = 1.0f;
COMPILER_STRIP_GATE(0x809B9378, &lit_3916);

/* 809B94CC-809B94CC 0001E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809B94CC = "";
SECTION_DEAD static char const* const stringBase_809B94CD = "fairy";
#pragma pop

/* 809B95F8-809B9600 -00001 0008+00 7/8 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_npc_fairy__stringBase0,
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x1),
};

/* 809B1BC0-809B1CE4 0001A0 0124+00 1/1 0/0 0/0 .text            loadModel__16_Fairy_Feather_cFv */
void _Fairy_Feather_c::loadModel() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B937C-809B93C4 000098 0048+00 0/1 0/0 0/0 .rodata          sBckPrm$3920 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const sBckPrm[72] = {
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00,
    0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809B937C, &sBckPrm);
#pragma pop

/* 809B93C4-809B93C8 0000E0 0004+00 5/12 0/0 0/0 .rodata          @3943 */
SECTION_RODATA static u8 const lit_3943[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809B93C4, &lit_3943);

/* 809B93C8-809B93CC 0000E4 0004+00 0/1 0/0 0/0 .rodata          @3944 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3944 = 12.0f;
COMPILER_STRIP_GATE(0x809B93C8, &lit_3944);
#pragma pop

/* 809B93CC-809B93D0 0000E8 0004+00 14/23 0/0 0/0 .rodata          @3945 */
SECTION_RODATA static f32 const lit_3945 = -1.0f;
COMPILER_STRIP_GATE(0x809B93CC, &lit_3945);

/* 809B1CE4-809B1DEC 0002C4 0108+00 4/4 0/0 0/0 .text            setAnm__16_Fairy_Feather_cFi */
void _Fairy_Feather_c::setAnm(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B93D0-809B93DC 0000EC 000C+00 1/1 0/0 0/0 .rodata          sBrkPrm$3949 */
SECTION_RODATA static u8 const sBrkPrm[12] = {
    0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809B93D0, &sBrkPrm);

/* 809B1DEC-809B1EA8 0003CC 00BC+00 1/1 0/0 0/0 .text            setBrk__16_Fairy_Feather_cFi */
void _Fairy_Feather_c::setBrk(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B93DC-809B93E8 0000F8 000C+00 1/1 0/0 0/0 .rodata          sBtkPrm$3970 */
SECTION_RODATA static u8 const sBtkPrm[12] = {
    0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809B93DC, &sBtkPrm);

/* 809B1EA8-809B1F64 000488 00BC+00 1/1 0/0 0/0 .text            setBtk__16_Fairy_Feather_cFi */
void _Fairy_Feather_c::setBtk(int param_0) {
    // NONMATCHING
}

/* 809B1F64-809B1F6C 000544 0008+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__16_Fairy_Feather_cFP8J3DJointi            */
bool _Fairy_Feather_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    return true;
}

/* 809B1F6C-809B1FD4 00054C 0068+00 1/1 0/0 0/0 .text connect__16_Fairy_Feather_cFP13daNpc_Fairy_c
 */
void _Fairy_Feather_c::connect(daNpc_Fairy_c* param_0) {
    // NONMATCHING
}

/* 809B1FD4-809B2250 0005B4 027C+00 1/1 0/0 0/0 .text draw__16_Fairy_Feather_cFP13daNpc_Fairy_c */
void _Fairy_Feather_c::draw(daNpc_Fairy_c* param_0) {
    // NONMATCHING
}

/* 809B2250-809B228C 000830 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B94CC-809B94CC 0001E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809B94D3 = "APPEAR_10F_01";
SECTION_DEAD static char const* const stringBase_809B94E1 = "APPEAR_10F_02";
SECTION_DEAD static char const* const stringBase_809B94EF = "APPEAR_20F_01";
SECTION_DEAD static char const* const stringBase_809B94FD = "APPEAR_20F_02";
SECTION_DEAD static char const* const stringBase_809B950B = "APPEAR_30F_01";
SECTION_DEAD static char const* const stringBase_809B9519 = "APPEAR_30F_02";
SECTION_DEAD static char const* const stringBase_809B9527 = "APPEAR_40F_01";
SECTION_DEAD static char const* const stringBase_809B9535 = "APPEAR_40F_02";
SECTION_DEAD static char const* const stringBase_809B9543 = "APPEAR_50F_01";
SECTION_DEAD static char const* const stringBase_809B9551 = "APPEAR_50F_02";
SECTION_DEAD static char const* const stringBase_809B955F = "APPEAR_50F_03";
SECTION_DEAD static char const* const stringBase_809B956D = "APPEAR_50F_04";
SECTION_DEAD static char const* const stringBase_809B957B = "APPEAR_50F_05";
SECTION_DEAD static char const* const stringBase_809B9589 = "SELECT_RETURN1";
SECTION_DEAD static char const* const stringBase_809B9598 = "SELECT_RETURN2";
SECTION_DEAD static char const* const stringBase_809B95A7 = "SELECT_RETURN3";
SECTION_DEAD static char const* const stringBase_809B95B6 = "RETURN_CANCEL";
#pragma pop

/* 809B9600-809B9604 000028 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 809B9604-809B9618 -00001 0014+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[5] = {
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0,
};

/* 809B9618-809B9620 000040 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x01,
};

/* 809B9620-809B96AC 000048 008C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[140] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x30,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 809B96AC-809B97FC 0000D4 0150+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[336] = {
    0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 809B97FC-809B984C 000224 0050+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[80] = {
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 809B984C-809B98FC 000274 00B0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[176] = {
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x01, 0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x01, 0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 809B98FC-809B998C -00001 0090+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[36] = {
    (void*)&d_a_npc_fairy__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x7),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x15),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x23),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x31),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x3F),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x4D),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x5B),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x69),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x77),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x85),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x93),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0xA1),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0xAF),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0xBD),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0xCC),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0xDB),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0xEA),
    (void*)0x00000001,
};
#pragma pop

/* 809B998C-809B99D4 -00001 0048+00 1/1 0/0 0/0 .data            mCutNameList__13daNpc_Fairy_c */
SECTION_DATA void* daNpc_Fairy_c::mCutNameList[18] = {
    (void*)&d_a_npc_fairy__stringBase0,
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x7),
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x15),
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x23),
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x31),
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x3F),
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x4D),
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x5B),
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x69),
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x77),
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x85),
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0x93),
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0xA1),
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0xAF),
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0xBD),
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0xCC),
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0xDB),
    (void*)(((char*)&d_a_npc_fairy__stringBase0) + 0xEA),
};

/* 809B99D4-809B99E0 -00001 000C+00 0/1 0/0 0/0 .data            @3851 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3851[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAppear_10F_01__13daNpc_Fairy_cFi,
};
#pragma pop

/* 809B99E0-809B99EC -00001 000C+00 0/1 0/0 0/0 .data            @3852 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3852[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAppear_10F_02__13daNpc_Fairy_cFi,
};
#pragma pop

/* 809B99EC-809B99F8 -00001 000C+00 0/1 0/0 0/0 .data            @3853 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3853[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAppear_20F_01__13daNpc_Fairy_cFi,
};
#pragma pop

/* 809B99F8-809B9A04 -00001 000C+00 0/1 0/0 0/0 .data            @3854 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3854[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAppear_20F_02__13daNpc_Fairy_cFi,
};
#pragma pop

/* 809B9A04-809B9A10 -00001 000C+00 0/1 0/0 0/0 .data            @3855 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3855[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAppear_30F_01__13daNpc_Fairy_cFi,
};
#pragma pop

/* 809B9A10-809B9A1C -00001 000C+00 0/1 0/0 0/0 .data            @3856 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3856[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAppear_30F_02__13daNpc_Fairy_cFi,
};
#pragma pop

/* 809B9A1C-809B9A28 -00001 000C+00 0/1 0/0 0/0 .data            @3857 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3857[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAppear_40F_01__13daNpc_Fairy_cFi,
};
#pragma pop

/* 809B9A28-809B9A34 -00001 000C+00 0/1 0/0 0/0 .data            @3858 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3858[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAppear_40F_02__13daNpc_Fairy_cFi,
};
#pragma pop

/* 809B9A34-809B9A40 -00001 000C+00 0/1 0/0 0/0 .data            @3859 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3859[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAppear_50F_01__13daNpc_Fairy_cFi,
};
#pragma pop

/* 809B9A40-809B9A4C -00001 000C+00 0/1 0/0 0/0 .data            @3860 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3860[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAppear_50F_02__13daNpc_Fairy_cFi,
};
#pragma pop

/* 809B9A4C-809B9A58 -00001 000C+00 0/1 0/0 0/0 .data            @3861 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3861[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAppear_50F_03__13daNpc_Fairy_cFi,
};
#pragma pop

/* 809B9A58-809B9A64 -00001 000C+00 0/1 0/0 0/0 .data            @3862 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3862[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAppear_50F_04__13daNpc_Fairy_cFi,
};
#pragma pop

/* 809B9A64-809B9A70 -00001 000C+00 0/1 0/0 0/0 .data            @3863 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3863[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAppear_50F_05__13daNpc_Fairy_cFi,
};
#pragma pop

/* 809B9A70-809B9A7C -00001 000C+00 0/1 0/0 0/0 .data            @3864 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3864[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutSelect_Return1__13daNpc_Fairy_cFi,
};
#pragma pop

/* 809B9A7C-809B9A88 -00001 000C+00 0/1 0/0 0/0 .data            @3865 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3865[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutSelect_Return2__13daNpc_Fairy_cFi,
};
#pragma pop

/* 809B9A88-809B9A94 -00001 000C+00 0/1 0/0 0/0 .data            @3866 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3866[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutSelect_Return3__13daNpc_Fairy_cFi,
};
#pragma pop

/* 809B9A94-809B9AA0 -00001 000C+00 0/1 0/0 0/0 .data            @3867 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3867[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutReturnCancel__13daNpc_Fairy_cFi,
};
#pragma pop

/* 809B9AA0-809B9B78 0004C8 00D8+00 1/2 0/0 0/0 .data            mCutList__13daNpc_Fairy_c */
SECTION_DATA u8 daNpc_Fairy_c::mCutList[216] = {
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

/* 809B9B78-809B9B84 -00001 000C+00 1/1 0/0 0/0 .data            @4802 */
SECTION_DATA static void* lit_4802[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_Fairy_cFi,
};

/* 809B9B84-809B9B90 -00001 000C+00 1/1 0/0 0/0 .data            @4913 */
SECTION_DATA static void* lit_4913[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Fairy_cFi,
};

/* 809B9B90-809B9B9C -00001 000C+00 1/1 0/0 0/0 .data            @4923 */
SECTION_DATA static void* lit_4923[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Fairy_cFi,
};

/* 809B9B9C-809B9C68 -00001 00CC+00 1/1 0/0 0/0 .data            @5980 */
SECTION_DATA static void* lit_5980[51] = {
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x48),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0xA4),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0xD4),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x158),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x190),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x1A0),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C4),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x268),
    (void*)(((char*)_cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi) + 0x250),
};

/* 809B9C68-809B9D34 -00001 00CC+00 1/1 0/0 0/0 .data            @6040 */
SECTION_DATA static void* lit_6040[51] = {
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x5C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x80),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x9C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0xD4),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x100),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x12C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x134),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x19C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x1C8),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x1F4),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x27C),
    (void*)(((char*)_cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi) + 0x218),
};

/* 809B9D34-809B9DB0 -00001 007C+00 1/1 0/0 0/0 .data            @6119 */
SECTION_DATA static void* lit_6119[31] = {
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x48),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0xA4),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0xD4),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x158),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x190),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x1E0),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi) + 0x20C),
};

/* 809B9DB0-809B9E2C -00001 007C+00 1/1 0/0 0/0 .data            @6157 */
SECTION_DATA static void* lit_6157[31] = {
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x5C),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x80),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x9C),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0xD4),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x100),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x12C),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x158),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x1E8),
    (void*)(((char*)_cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi) + 0x184),
};

/* 809B9E2C-809B9ED0 -00001 00A4+00 1/1 0/0 0/0 .data            @6222 */
SECTION_DATA static void* lit_6222[41] = {
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x48),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0xA4),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0xD4),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0xE4),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0xF0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1C0),
    (void*)(((char*)_cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi) + 0x1A8),
};

/* 809B9ED0-809B9F74 -00001 00A4+00 1/1 0/0 0/0 .data            @6254 */
SECTION_DATA static void* lit_6254[41] = {
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x44),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x68),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x84),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0xB0),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0xB8),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x104),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x138),
    (void*)(((char*)_cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi) + 0x130),
};

/* 809B9F74-809BA018 -00001 00A4+00 1/1 0/0 0/0 .data            @6334 */
SECTION_DATA static void* lit_6334[41] = {
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x48),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0xA4),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0xD4),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x158),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x190),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x1E0),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x224),
    (void*)(((char*)_cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi) + 0x20C),
};

/* 809BA018-809BA0BC -00001 00A4+00 1/1 0/0 0/0 .data            @6375 */
SECTION_DATA static void* lit_6375[41] = {
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x5C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x80),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x9C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0xD4),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x100),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x12C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x158),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x184),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x20C),
    (void*)(((char*)_cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi) + 0x1A8),
};

/* 809BA0BC-809BA188 -00001 00CC+00 1/1 0/0 0/0 .data            @6458 */
SECTION_DATA static void* lit_6458[51] = {
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x48),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0xA4),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0xD4),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x158),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x190),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x1B4),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x214),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x258),
    (void*)(((char*)_cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi) + 0x240),
};

/* 809BA188-809BA254 -00001 00CC+00 1/1 0/0 0/0 .data            @6512 */
SECTION_DATA static void* lit_6512[51] = {
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x5C),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x80),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x9C),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0xD4),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x100),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x12C),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x134),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x19C),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x1C8),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x250),
    (void*)(((char*)_cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi) + 0x1EC),
};

/* 809BA254-809BA274 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Fairy_MethodTable */
static actor_method_class daNpc_Fairy_MethodTable = {
    (process_method_func)daNpc_Fairy_Create__FPv,
    (process_method_func)daNpc_Fairy_Delete__FPv,
    (process_method_func)daNpc_Fairy_Execute__FPv,
    (process_method_func)daNpc_Fairy_IsDelete__FPv,
    (process_method_func)daNpc_Fairy_Draw__FPv,
};

/* 809BA274-809BA2A4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_FAIRY */
extern actor_process_profile_definition g_profile_NPC_FAIRY = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_FAIRY,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_Fairy_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  340,                      // mPriority
  &daNpc_Fairy_MethodTable, // sub_method
  0x08044108,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 809BA2A4-809BA2B0 000CCC 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 809BA2B0-809BA2D4 000CD8 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809B92C8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809B92C0,
};

/* 809BA2D4-809BA2E0 000CFC 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 809BA2E0-809BA2EC 000D08 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 809BA2EC-809BA2F8 000D14 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 809BA2F8-809BA304 000D20 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 809BA304-809BA310 000D2C 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 809BA310-809BA31C 000D38 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 809BA31C-809BA328 000D44 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 809BA328-809BA334 000D50 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 809BA334-809BA340 000D5C 000C+00 5/5 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 809BA340-809BA404 000D68 00C4+00 2/2 0/0 0/0 .data            __vt__13daNpc_Fairy_c */
SECTION_DATA extern void* __vt__13daNpc_Fairy_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpc_Fairy_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__13daNpc_Fairy_cFi,
    (void*)checkRemoveJoint__13daNpc_Fairy_cFi,
    (void*)getBackboneJointNo__13daNpc_Fairy_cFv,
    (void*)getNeckJointNo__13daNpc_Fairy_cFv,
    (void*)getHeadJointNo__13daNpc_Fairy_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__13daNpc_Fairy_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__13daNpc_Fairy_cFi,
    (void*)setParam__13daNpc_Fairy_cFv,
    (void*)checkChangeEvt__13daNpc_Fairy_cFv,
    (void*)evtTalk__13daNpc_Fairy_cFv,
    (void*)evtEndProc__13daNpc_Fairy_cFv,
    (void*)evtCutProc__13daNpc_Fairy_cFv,
    (void*)setAfterTalkMotion__13daNpc_Fairy_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__13daNpc_Fairy_cFv,
    (void*)beforeMove__13daNpc_Fairy_cFv,
    (void*)afterMoved__13daNpc_Fairy_cFv,
    (void*)setAttnPos__13daNpc_Fairy_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__13daNpc_Fairy_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__13daNpc_Fairy_cFv,
    (void*)drawOtherMdl__13daNpc_Fairy_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__13daNpc_Fairy_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__8daNpcT_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__13daNpc_Fairy_cFifi,
};

/* 809B228C-809B2430 00086C 01A4+00 1/0 0/0 0/0 .text            __dt__13daNpc_Fairy_cFv */
daNpc_Fairy_c::~daNpc_Fairy_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B93E8-809B93EC 000104 0004+00 0/1 0/0 0/0 .rodata          @4311 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4311 = -300.0f;
COMPILER_STRIP_GATE(0x809B93E8, &lit_4311);
#pragma pop

/* 809B93EC-809B93F0 000108 0004+00 0/1 0/0 0/0 .rodata          @4312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4312 = -200.0f;
COMPILER_STRIP_GATE(0x809B93EC, &lit_4312);
#pragma pop

/* 809B93F0-809B93F4 00010C 0004+00 0/1 0/0 0/0 .rodata          @4313 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4313 = -400.0f;
COMPILER_STRIP_GATE(0x809B93F0, &lit_4313);
#pragma pop

/* 809B93F4-809B93F8 000110 0004+00 0/1 0/0 0/0 .rodata          @4314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4314 = 300.0f;
COMPILER_STRIP_GATE(0x809B93F4, &lit_4314);
#pragma pop

/* 809B93F8-809B93FC 000114 0004+00 0/1 0/0 0/0 .rodata          @4315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4315 = 200.0f;
COMPILER_STRIP_GATE(0x809B93F8, &lit_4315);
#pragma pop

/* 809B93FC-809B9400 000118 0004+00 0/1 0/0 0/0 .rodata          @4316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4316 = -1000000000.0f;
COMPILER_STRIP_GATE(0x809B93FC, &lit_4316);
#pragma pop

/* 809B2430-809B26E8 000A10 02B8+00 1/1 0/0 0/0 .text            Create__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::Create() {
    // NONMATCHING
}

/* 809B26E8-809B2988 000CC8 02A0+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::CreateHeap() {
    // NONMATCHING
}

/* 809B2988-809B29C4 000F68 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 809B29C4-809B29DC 000FA4 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 809B29DC-809B2A18 000FBC 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 809B2A18-809B2A30 000FF8 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 809B2A30-809B2A78 001010 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 809B2A78-809B2A9C 001058 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 809B2A9C-809B2AD8 00107C 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 809B2AD8-809B2AF0 0010B8 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 809B2AF0-809B2B2C 0010D0 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 809B2B2C-809B2B44 00110C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 809B2B44-809B2C20 001124 00DC+00 1/1 0/0 0/0 .text            setAnmData__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::setAnmData() {
    // NONMATCHING
}

/* 809B2C20-809B2E78 001200 0258+00 1/0 0/0 0/0 .text            setMotionAnm__13daNpc_Fairy_cFifi
 */
bool daNpc_Fairy_c::setMotionAnm(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 809B2E78-809B2EFC 001458 0084+00 2/1 0/0 0/0 .text afterSetMotionAnm__13daNpc_Fairy_cFiifi */
void daNpc_Fairy_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    // NONMATCHING
}

/* 809B2EFC-809B2F30 0014DC 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::Delete() {
    // NONMATCHING
}

/* 809B2F30-809B2F8C 001510 005C+00 2/2 0/0 0/0 .text            Execute__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B9400-809B9404 00011C 0004+00 0/2 0/0 0/0 .rodata          @4523 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4523 = 65536.0f;
COMPILER_STRIP_GATE(0x809B9400, &lit_4523);
#pragma pop

/* 809B9404-809B9408 000120 0004+00 0/3 0/0 0/0 .rodata          @4524 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4524 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x809B9404, &lit_4524);
#pragma pop

/* 809B9408-809B940C 000124 0004+00 1/1 0/0 0/0 .rodata          @4769 */
SECTION_RODATA static f32 const lit_4769 = 100.0f;
COMPILER_STRIP_GATE(0x809B9408, &lit_4769);

/* 809B2F8C-809B3034 00156C 00A8+00 1/1 0/0 0/0 .text            Draw__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::Draw() {
    // NONMATCHING
}

/* 809B3034-809B3074 001614 0040+00 1/0 0/0 0/0 .text            drawOtherMdl__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::drawOtherMdl() {
    // NONMATCHING
}

/* 809B3074-809B3094 001654 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_Fairy_cFP10fopAc_ac_c            */
void daNpc_Fairy_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809B3094-809B30EC 001674 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_Fairy_cFP8J3DJointi               */
void daNpc_Fairy_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 809B30EC-809B30F4 0016CC 0008+00 1/1 0/0 0/0 .text            isDelete__13daNpc_Fairy_cFv */
bool daNpc_Fairy_c::isDelete() {
    return false;
}

/* 809B30F4-809B32C4 0016D4 01D0+00 1/1 0/0 0/0 .text            reset__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::reset() {
    // NONMATCHING
}

/* 809B32C4-809B32D0 0018A4 000C+00 1/1 0/0 0/0 .text            initStatus__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::initStatus() {
    // NONMATCHING
}

/* 809B32D0-809B335C 0018B0 008C+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_Fairy_cFi */
void daNpc_Fairy_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 809B335C-809B349C 00193C 0140+00 1/0 0/0 0/0 .text            setParam__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::setParam() {
    // NONMATCHING
}

/* 809B349C-809B34A4 001A7C 0008+00 1/0 0/0 0/0 .text            checkChangeEvt__13daNpc_Fairy_cFv
 */
bool daNpc_Fairy_c::checkChangeEvt() {
    return false;
}

/* 809B34A4-809B3520 001A84 007C+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 809B3520-809B3524 001B00 0004+00 1/1 0/0 0/0 .text            srchActors__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::srchActors() {
    /* empty function */
}

/* 809B3524-809B3630 001B04 010C+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::evtTalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B94CC-809B94CC 0001E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809B95C4 = "Fairy";
#pragma pop

/* 809B3630-809B36F8 001C10 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::evtCutProc() {
    // NONMATCHING
}

/* 809B36F8-809B379C 001CD8 00A4+00 1/0 0/0 0/0 .text            evtEndProc__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::evtEndProc() {
    // NONMATCHING
}

/* 809B379C-809B384C 001D7C 00B0+00 1/0 0/0 0/0 .text            action__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B940C-809B9410 000128 0004+00 1/1 0/0 0/0 .rodata          @4988 */
SECTION_RODATA static f32 const lit_4988 = 11.0f / 10.0f;
COMPILER_STRIP_GATE(0x809B940C, &lit_4988);

/* 809B384C-809B38E8 001E2C 009C+00 1/1 0/0 0/0 .text            ptcl_water__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::ptcl_water() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B9410-809B9418 00012C 0006+02 1/1 0/0 0/0 .rodata          id$4992 */
SECTION_RODATA static u8 const id[6 + 2 /* padding */] = {
    0x8A,
    0xA3,
    0x8A,
    0xA4,
    0x8A,
    0xA5,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809B9410, &id);

/* 809B38E8-809B39FC 001EC8 0114+00 1/1 0/0 0/0 .text            ptcl_sprit__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::ptcl_sprit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B9418-809B941C 000134 0004+00 0/1 0/0 0/0 .rodata          sFairyField$5036 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const sFairyField[4] = {
    0x00,
    0x01,
    0x02,
    0x03,
};
COMPILER_STRIP_GATE(0x809B9418, &sFairyField);
#pragma pop

/* 809B39FC-809B3AB0 001FDC 00B4+00 1/1 0/0 0/0 .text            _to_FairyField__13daNpc_Fairy_cFv
 */
void daNpc_Fairy_c::_to_FairyField() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B941C-809B942C 000138 0010+00 1/1 0/0 0/0 .rodata          sTempBit$5049 */
SECTION_RODATA static u8 const sTempBit[16] = {
    0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x7A, 0x00, 0x00, 0x00, 0x7B, 0x00, 0x00, 0x00, 0x7C,
};
COMPILER_STRIP_GATE(0x809B941C, &sTempBit);

/* 809B3AB0-809B3B20 002090 0070+00 1/1 0/0 0/0 .text            chk_tempbit__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::chk_tempbit() {
    // NONMATCHING
}

/* 809B3B20-809B3B98 002100 0078+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::beforeMove() {
    // NONMATCHING
}

/* 809B3B98-809B3C64 002178 00CC+00 1/0 0/0 0/0 .text            afterMoved__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::afterMoved() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B942C-809B9430 000148 0004+00 0/1 0/0 0/0 .rodata          @5134 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5134 = -30.0f;
COMPILER_STRIP_GATE(0x809B942C, &lit_5134);
#pragma pop

/* 809B9430-809B9434 00014C 0004+00 0/1 0/0 0/0 .rodata          @5135 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5135 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x809B9430, &lit_5135);
#pragma pop

/* 809B9434-809B943C 000150 0004+04 0/1 0/0 0/0 .rodata          @5136 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5136[1 + 1 /* padding */] = {
    15.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x809B9434, &lit_5136);
#pragma pop

/* 809B943C-809B9444 000158 0008+00 1/3 0/0 0/0 .rodata          @5138 */
SECTION_RODATA static u8 const lit_5138[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809B943C, &lit_5138);

/* 809B3C64-809B3EA0 002244 023C+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::setAttnPos() {
    // NONMATCHING
}

/* 809B3EA0-809B3FD8 002480 0138+00 1/0 0/0 0/0 .text            setCollision__13daNpc_Fairy_cFv */
void daNpc_Fairy_c::setCollision() {
    // NONMATCHING
}

/* 809B3FD8-809B3FE0 0025B8 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_Fairy_cFv */
bool daNpc_Fairy_c::drawDbgInfo() {
    return false;
}

/* 809B3FE0-809B4090 0025C0 00B0+00 2/2 0/0 0/0 .text
 * setAction__13daNpc_Fairy_cFM13daNpc_Fairy_cFPCvPvi_ii        */
void daNpc_Fairy_c::setAction(int (daNpc_Fairy_c::*param_0)(int), int param_1) {
    // NONMATCHING
}

/* 809B4090-809B4360 002670 02D0+00 1/0 0/0 0/0 .text            wait__13daNpc_Fairy_cFi */
void daNpc_Fairy_c::wait(int param_0) {
    // NONMATCHING
}

/* 809B4360-809B4450 002940 00F0+00 2/0 0/0 0/0 .text            talk__13daNpc_Fairy_cFi */
void daNpc_Fairy_c::talk(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B9444-809B944C 000160 0008+00 0/1 0/0 0/0 .rodata          @5196 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5196[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809B9444, &lit_5196);
#pragma pop

/* 809B944C-809B9454 000168 0008+00 0/1 0/0 0/0 .rodata          @5197 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5197[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809B944C, &lit_5197);
#pragma pop

/* 809B9454-809B945C 000170 0008+00 0/1 0/0 0/0 .rodata          @5198 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5198[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809B9454, &lit_5198);
#pragma pop

/* 809B945C-809B9468 000178 000A+02 0/1 0/0 0/0 .rodata          sEvtType1$5356 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const sEvtType1[10 + 2 /* padding */] = {
    0x00,
    0x01,
    0x00,
    0x03,
    0x00,
    0x05,
    0x00,
    0x07,
    0x00,
    0x09,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809B945C, &sEvtType1);
#pragma pop

/* 809B9468-809B9474 000184 000A+02 0/1 0/0 0/0 .rodata          sEvtType2$5357 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const sEvtType2[10 + 2 /* padding */] = {
    0x00,
    0x02,
    0x00,
    0x04,
    0x00,
    0x06,
    0x00,
    0x08,
    0x00,
    0x0A,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809B9468, &sEvtType2);
#pragma pop

/* 809B9474-809B9480 000190 000A+02 0/1 0/0 0/0 .rodata          sEvtBitNo$5358 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const sEvtBitNo[10 + 2 /* padding */] = {
    0x01,
    0xF5,
    0x01,
    0xF6,
    0x01,
    0xF7,
    0x01,
    0xF8,
    0x01,
    0xF9,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809B9474, &sEvtBitNo);
#pragma pop

/* 809B4450-809B4588 002A30 0138+00 1/1 0/0 0/0 .text            AppearDemoCall__13daNpc_Fairy_cFv
 */
void daNpc_Fairy_c::AppearDemoCall() {
    // NONMATCHING
}

/* 809B4588-809B45BC 002B68 0034+00 1/1 0/0 0/0 .text            ReturnDemoCall__13daNpc_Fairy_cFv
 */
void daNpc_Fairy_c::ReturnDemoCall() {
    // NONMATCHING
}

/* 809B45BC-809B464C 002B9C 0090+00 3/3 0/0 0/0 .text            PresentDemoCall__13daNpc_Fairy_cFv
 */
void daNpc_Fairy_c::PresentDemoCall() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B94CC-809B94CC 0001E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809B95CA = "cutId";
#pragma pop

/* 809B464C-809B46E0 002C2C 0094+00 1/0 0/0 0/0 .text            cutAppear_10F_01__13daNpc_Fairy_cFi
 */
void daNpc_Fairy_c::cutAppear_10F_01(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B9480-809B9484 00019C 0004+00 0/2 0/0 0/0 .rodata          @5458 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5458 = 220.0f;
COMPILER_STRIP_GATE(0x809B9480, &lit_5458);
#pragma pop

/* 809B46E0-809B48C4 002CC0 01E4+00 1/1 0/0 0/0 .text _cutAppear_10F_01_Init__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutAppear_10F_01_Init(int const& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B9484-809B9488 0001A0 0004+00 0/1 0/0 0/0 .rodata          @5498 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5498 = 140.0f;
COMPILER_STRIP_GATE(0x809B9484, &lit_5498);
#pragma pop

/* 809B9488-809B948C 0001A4 0004+00 0/1 0/0 0/0 .rodata          @5499 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5499 = 298.0f;
COMPILER_STRIP_GATE(0x809B9488, &lit_5499);
#pragma pop

/* 809B48C4-809B4A44 002EA4 0180+00 1/1 0/0 0/0 .text _cutAppear_10F_01_Main__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutAppear_10F_01_Main(int const& param_0) {
    // NONMATCHING
}

/* 809B4A44-809B4AD8 003024 0094+00 1/0 0/0 0/0 .text            cutAppear_10F_02__13daNpc_Fairy_cFi
 */
void daNpc_Fairy_c::cutAppear_10F_02(int param_0) {
    // NONMATCHING
}

/* 809B4AD8-809B4BF8 0030B8 0120+00 1/1 0/0 0/0 .text _cutAppear_10F_02_Init__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutAppear_10F_02_Init(int const& param_0) {
    // NONMATCHING
}

/* 809B4BF8-809B4CC0 0031D8 00C8+00 1/1 0/0 0/0 .text _cutAppear_10F_02_Main__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutAppear_10F_02_Main(int const& param_0) {
    // NONMATCHING
}

/* 809B4CC0-809B4D54 0032A0 0094+00 1/0 0/0 0/0 .text            cutAppear_20F_01__13daNpc_Fairy_cFi
 */
void daNpc_Fairy_c::cutAppear_20F_01(int param_0) {
    // NONMATCHING
}

/* 809B4D54-809B4EB4 003334 0160+00 1/1 0/0 0/0 .text _cutAppear_20F_01_Init__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutAppear_20F_01_Init(int const& param_0) {
    // NONMATCHING
}

/* 809B4EB4-809B5000 003494 014C+00 1/1 0/0 0/0 .text _cutAppear_20F_01_Main__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutAppear_20F_01_Main(int const& param_0) {
    // NONMATCHING
}

/* 809B5000-809B5094 0035E0 0094+00 1/0 0/0 0/0 .text            cutAppear_20F_02__13daNpc_Fairy_cFi
 */
void daNpc_Fairy_c::cutAppear_20F_02(int param_0) {
    // NONMATCHING
}

/* 809B5094-809B51F4 003674 0160+00 1/1 0/0 0/0 .text _cutAppear_20F_02_Init__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutAppear_20F_02_Init(int const& param_0) {
    // NONMATCHING
}

/* 809B51F4-809B5340 0037D4 014C+00 1/1 0/0 0/0 .text _cutAppear_20F_02_Main__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutAppear_20F_02_Main(int const& param_0) {
    // NONMATCHING
}

/* 809B5340-809B53D4 003920 0094+00 1/0 0/0 0/0 .text            cutAppear_30F_01__13daNpc_Fairy_cFi
 */
void daNpc_Fairy_c::cutAppear_30F_01(int param_0) {
    // NONMATCHING
}

/* 809B53D4-809B54F4 0039B4 0120+00 1/1 0/0 0/0 .text _cutAppear_30F_01_Init__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutAppear_30F_01_Init(int const& param_0) {
    // NONMATCHING
}

/* 809B54F4-809B55BC 003AD4 00C8+00 1/1 0/0 0/0 .text _cutAppear_30F_01_Main__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutAppear_30F_01_Main(int const& param_0) {
    // NONMATCHING
}

/* 809B55BC-809B5650 003B9C 0094+00 1/0 0/0 0/0 .text            cutAppear_30F_02__13daNpc_Fairy_cFi
 */
void daNpc_Fairy_c::cutAppear_30F_02(int param_0) {
    // NONMATCHING
}

/* 809B5650-809B5770 003C30 0120+00 1/1 0/0 0/0 .text _cutAppear_30F_02_Init__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutAppear_30F_02_Init(int const& param_0) {
    // NONMATCHING
}

/* 809B5770-809B5838 003D50 00C8+00 1/1 0/0 0/0 .text _cutAppear_30F_02_Main__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutAppear_30F_02_Main(int const& param_0) {
    // NONMATCHING
}

/* 809B5838-809B58CC 003E18 0094+00 1/0 0/0 0/0 .text            cutAppear_40F_01__13daNpc_Fairy_cFi
 */
void daNpc_Fairy_c::cutAppear_40F_01(int param_0) {
    // NONMATCHING
}

/* 809B58CC-809B59EC 003EAC 0120+00 1/1 0/0 0/0 .text _cutAppear_40F_01_Init__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutAppear_40F_01_Init(int const& param_0) {
    // NONMATCHING
}

/* 809B59EC-809B5AB4 003FCC 00C8+00 1/1 0/0 0/0 .text _cutAppear_40F_01_Main__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutAppear_40F_01_Main(int const& param_0) {
    // NONMATCHING
}

/* 809B5AB4-809B5B48 004094 0094+00 1/0 0/0 0/0 .text            cutAppear_40F_02__13daNpc_Fairy_cFi
 */
void daNpc_Fairy_c::cutAppear_40F_02(int param_0) {
    // NONMATCHING
}

/* 809B5B48-809B5C68 004128 0120+00 1/1 0/0 0/0 .text _cutAppear_40F_02_Init__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutAppear_40F_02_Init(int const& param_0) {
    // NONMATCHING
}

/* 809B5C68-809B5D30 004248 00C8+00 1/1 0/0 0/0 .text _cutAppear_40F_02_Main__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutAppear_40F_02_Main(int const& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B94CC-809B94CC 0001E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809B95D0 = "msgNo";
#pragma pop

/* 809B5D30-809B5E00 004310 00D0+00 1/0 0/0 0/0 .text            cutAppear_50F_01__13daNpc_Fairy_cFi
 */
void daNpc_Fairy_c::cutAppear_50F_01(int param_0) {
    // NONMATCHING
}

/* 809B5E00-809B6084 0043E0 0284+00 2/1 0/0 0/0 .text
 * _cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi               */
void daNpc_Fairy_c::_cutAppear_50F_01_Init(int const& param_0, int const& param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B948C-809B9490 0001A8 0004+00 0/0 0/0 0/0 .rodata          @5974 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5974 = 11.0f / 5.0f;
COMPILER_STRIP_GATE(0x809B948C, &lit_5974);
#pragma pop

/* 809B9490-809B9494 0001AC 0004+00 0/0 0/0 0/0 .rodata          @5975 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5975 = 0x3E9EB767;
COMPILER_STRIP_GATE(0x809B9490, &lit_5975);
#pragma pop

/* 809B9494-809B9498 0001B0 0004+00 0/0 0/0 0/0 .rodata          @5976 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5976 = -61250.0f;
COMPILER_STRIP_GATE(0x809B9494, &lit_5976);
#pragma pop

/* 809B9498-809B949C 0001B4 0004+00 0/0 0/0 0/0 .rodata          @5977 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5977 = 0xC5696D1C;
COMPILER_STRIP_GATE(0x809B9498, &lit_5977);
#pragma pop

/* 809B949C-809B94A0 0001B8 0004+00 0/0 0/0 0/0 .rodata          @5978 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5978 = 32.0f;
COMPILER_STRIP_GATE(0x809B949C, &lit_5978);
#pragma pop

/* 809B94A0-809B94A8 0001BC 0008+00 0/1 0/0 0/0 .rodata          @5986 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5986[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x809B94A0, &lit_5986);
#pragma pop

/* 809B6084-809B631C 004664 0298+00 2/1 0/0 0/0 .text
 * _cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi               */
void daNpc_Fairy_c::_cutAppear_50F_01_Main(int const& param_0, int const& param_1) {
    // NONMATCHING
}

/* 809B631C-809B63EC 0048FC 00D0+00 1/0 0/0 0/0 .text            cutAppear_50F_02__13daNpc_Fairy_cFi
 */
void daNpc_Fairy_c::cutAppear_50F_02(int param_0) {
    // NONMATCHING
}

/* 809B63EC-809B662C 0049CC 0240+00 2/1 0/0 0/0 .text
 * _cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi               */
void daNpc_Fairy_c::_cutAppear_50F_02_Init(int const& param_0, int const& param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B94A8-809B94AC 0001C4 0004+00 0/0 0/0 0/0 .rodata          @6037 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6037 = -4.0f;
COMPILER_STRIP_GATE(0x809B94A8, &lit_6037);
#pragma pop

/* 809B94AC-809B94B4 0001C8 0008+00 0/1 0/0 0/0 .rodata          @6123 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6123[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x809B94AC, &lit_6123);
#pragma pop

/* 809B662C-809B6830 004C0C 0204+00 2/1 0/0 0/0 .text
 * _cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi               */
void daNpc_Fairy_c::_cutAppear_50F_02_Main(int const& param_0, int const& param_1) {
    // NONMATCHING
}

/* 809B6830-809B6900 004E10 00D0+00 1/0 0/0 0/0 .text            cutAppear_50F_03__13daNpc_Fairy_cFi
 */
void daNpc_Fairy_c::cutAppear_50F_03(int param_0) {
    // NONMATCHING
}

/* 809B6900-809B6ADC 004EE0 01DC+00 2/1 0/0 0/0 .text
 * _cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi               */
void daNpc_Fairy_c::_cutAppear_50F_03_Init(int const& param_0, int const& param_1) {
    // NONMATCHING
}

/* 809B6ADC-809B6C30 0050BC 0154+00 2/1 0/0 0/0 .text
 * _cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi               */
void daNpc_Fairy_c::_cutAppear_50F_03_Main(int const& param_0, int const& param_1) {
    // NONMATCHING
}

/* 809B6C30-809B6D00 005210 00D0+00 1/0 0/0 0/0 .text            cutAppear_50F_04__13daNpc_Fairy_cFi
 */
void daNpc_Fairy_c::cutAppear_50F_04(int param_0) {
    // NONMATCHING
}

/* 809B6D00-809B6F40 0052E0 0240+00 2/1 0/0 0/0 .text
 * _cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi               */
void daNpc_Fairy_c::_cutAppear_50F_04_Init(int const& param_0, int const& param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B94B4-809B94BC 0001D0 0008+00 0/0 0/0 0/0 .rodata          @6226 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6226[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x809B94B4, &lit_6226);
#pragma pop

/* 809B94BC-809B94C4 0001D8 0008+00 0/1 0/0 0/0 .rodata          @6338 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6338[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x809B94BC, &lit_6338);
#pragma pop

/* 809B6F40-809B7168 005520 0228+00 2/1 0/0 0/0 .text
 * _cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi               */
void daNpc_Fairy_c::_cutAppear_50F_04_Main(int const& param_0, int const& param_1) {
    // NONMATCHING
}

/* 809B7168-809B7238 005748 00D0+00 1/0 0/0 0/0 .text            cutAppear_50F_05__13daNpc_Fairy_cFi
 */
void daNpc_Fairy_c::cutAppear_50F_05(int param_0) {
    // NONMATCHING
}

/* 809B7238-809B74AC 005818 0274+00 2/1 0/0 0/0 .text
 * _cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi               */
void daNpc_Fairy_c::_cutAppear_50F_05_Init(int const& param_0, int const& param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B94C4-809B94CC 0001E0 0008+00 0/1 0/0 0/0 .rodata          @6462 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6462[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x809B94C4, &lit_6462);
#pragma pop

/* 809B74AC-809B7718 005A8C 026C+00 2/1 0/0 0/0 .text
 * _cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi               */
void daNpc_Fairy_c::_cutAppear_50F_05_Main(int const& param_0, int const& param_1) {
    // NONMATCHING
}

/* 809B7718-809B77AC 005CF8 0094+00 1/0 0/0 0/0 .text cutSelect_Return1__13daNpc_Fairy_cFi */
void daNpc_Fairy_c::cutSelect_Return1(int param_0) {
    // NONMATCHING
}

/* 809B77AC-809B78F0 005D8C 0144+00 1/1 0/0 0/0 .text _cutSelect_Return1_Init__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutSelect_Return1_Init(int const& param_0) {
    // NONMATCHING
}

/* 809B78F0-809B79A4 005ED0 00B4+00 1/1 0/0 0/0 .text _cutSelect_Return1_Main__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutSelect_Return1_Main(int const& param_0) {
    // NONMATCHING
}

/* 809B79A4-809B7A38 005F84 0094+00 1/0 0/0 0/0 .text cutSelect_Return2__13daNpc_Fairy_cFi */
void daNpc_Fairy_c::cutSelect_Return2(int param_0) {
    // NONMATCHING
}

/* 809B7A38-809B7A9C 006018 0064+00 1/1 0/0 0/0 .text _cutSelect_Return2_Init__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutSelect_Return2_Init(int const& param_0) {
    // NONMATCHING
}

/* 809B7A9C-809B7BA4 00607C 0108+00 1/1 0/0 0/0 .text _cutSelect_Return2_Main__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutSelect_Return2_Main(int const& param_0) {
    // NONMATCHING
}

/* 809B7BA4-809B7C38 006184 0094+00 1/0 0/0 0/0 .text cutSelect_Return3__13daNpc_Fairy_cFi */
void daNpc_Fairy_c::cutSelect_Return3(int param_0) {
    // NONMATCHING
}

/* 809B7C38-809B7D7C 006218 0144+00 1/1 0/0 0/0 .text _cutSelect_Return3_Init__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutSelect_Return3_Init(int const& param_0) {
    // NONMATCHING
}

/* 809B7D7C-809B7E30 00635C 00B4+00 1/1 0/0 0/0 .text _cutSelect_Return3_Main__13daNpc_Fairy_cFRCi
 */
void daNpc_Fairy_c::_cutSelect_Return3_Main(int const& param_0) {
    // NONMATCHING
}

/* 809B7E30-809B7EC4 006410 0094+00 1/0 0/0 0/0 .text            cutReturnCancel__13daNpc_Fairy_cFi
 */
void daNpc_Fairy_c::cutReturnCancel(int param_0) {
    // NONMATCHING
}

/* 809B7EC4-809B7ECC 0064A4 0008+00 1/1 0/0 0/0 .text _cutReturnCancel_Init__13daNpc_Fairy_cFRCi
 */
bool daNpc_Fairy_c::_cutReturnCancel_Init(int const& param_0) {
    return false;
}

/* 809B7ECC-809B7ED4 0064AC 0008+00 1/1 0/0 0/0 .text _cutReturnCancel_Main__13daNpc_Fairy_cFRCi
 */
bool daNpc_Fairy_c::_cutReturnCancel_Main(int const& param_0) {
    return false;
}

/* 809B7ED4-809B7EF4 0064B4 0020+00 1/0 0/0 0/0 .text            daNpc_Fairy_Create__FPv */
static void daNpc_Fairy_Create(void* param_0) {
    // NONMATCHING
}

/* 809B7EF4-809B7F14 0064D4 0020+00 1/0 0/0 0/0 .text            daNpc_Fairy_Delete__FPv */
static void daNpc_Fairy_Delete(void* param_0) {
    // NONMATCHING
}

/* 809B7F14-809B7F34 0064F4 0020+00 1/0 0/0 0/0 .text            daNpc_Fairy_Execute__FPv */
static void daNpc_Fairy_Execute(void* param_0) {
    // NONMATCHING
}

/* 809B7F34-809B7F54 006514 0020+00 1/0 0/0 0/0 .text            daNpc_Fairy_Draw__FPv */
static void daNpc_Fairy_Draw(void* param_0) {
    // NONMATCHING
}

/* 809B7F54-809B7F5C 006534 0008+00 1/0 0/0 0/0 .text            daNpc_Fairy_IsDelete__FPv */
static bool daNpc_Fairy_IsDelete(void* param_0) {
    return true;
}

/* 809B7F5C-809B7F8C 00653C 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 809B7F8C-809B7FD4 00656C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 809B7FD4-809B835C 0065B4 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 809B835C-809B8398 00693C 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 809B8398-809B879C 006978 0404+00 1/1 0/0 0/0 .text
 * __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
// daNpcT_c::daNpcT_c(daNpcT_faceMotionAnmData_c const* param_0,
//                       daNpcT_motionAnmData_c const* param_1,
// daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
//                          daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
//                       daNpcT_evtData_c const* param_6, char** param_7) {
extern "C" void __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc() {
    // NONMATCHING
}

/* 809B879C-809B87A0 006D7C 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 809B87A0-809B889C 006D80 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 809B889C-809B88A0 006E7C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 809B88A0-809B88E8 006E80 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809B88E8-809B8930 006EC8 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 809B8930-809B89A0 006F10 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809B89A0-809B89FC 006F80 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 809B89FC-809B8A6C 006FDC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809B8A6C-809B8A70 00704C 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809B8A70-809B8AA0 007050 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 809B8AA0-809B8BBC 007080 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 809B8BBC-809B8DC4 00719C 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 809B8DC4-809B8DC8 0073A4 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 809B8DD8-809B8DE0 0073B8 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 809B8DE0-809B8DE8 0073C0 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 809B8DE8-809B8DF0 0073C8 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 809B8DF0-809B8E08 0073D0 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 809B8E08-809B8E0C 0073E8 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 809B8E0C-809B8E14 0073EC 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 809B8E14-809B8E44 0073F4 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 809B8E44-809B8E48 007424 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809B8E48-809B8E4C 007428 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809B8E4C-809B8E50 00742C 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 809BA404-809BA410 000E2C 000C+00 2/2 0/0 0/0 .data            __vt__19daNpc_Fairy_Param_c */
SECTION_DATA extern void* __vt__19daNpc_Fairy_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpc_Fairy_Param_cFv,
};

/* 809BA418-809BA424 000008 000C+00 1/1 0/0 0/0 .bss             @3868 */
static u8 lit_3868[12];

/* 809BA424-809BA428 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 809B8E50-809B9054 007430 0204+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_fairy_cpp */
void __sinit_d_a_npc_fairy_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x809B8E50, __sinit_d_a_npc_fairy_cpp);
#pragma pop

/* 809B9054-809B9160 007634 010C+00 1/1 0/0 0/0 .text
 * __ct__13daNpc_Fairy_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Fairy_c::daNpc_Fairy_c(daNpcT_faceMotionAnmData_c const* param_0,
                                 daNpcT_motionAnmData_c const* param_1,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                 int param_3,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 809B9160-809B91A8 007740 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 809B91A8-809B91F0 007788 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 809B91F0-809B9238 0077D0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 809B9238-809B9240 007818 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__13daNpc_Fairy_cFv */
u16 daNpc_Fairy_c::getEyeballMaterialNo() {
    return true;
}

/* 809B9240-809B9248 007820 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__13daNpc_Fairy_cFv
 */
s32 daNpc_Fairy_c::getHeadJointNo() {
    return 13;
}

/* 809B9248-809B9250 007828 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__13daNpc_Fairy_cFv
 */
s32 daNpc_Fairy_c::getNeckJointNo() {
    return 12;
}

/* 809B9250-809B9258 007830 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__13daNpc_Fairy_cFv */
bool daNpc_Fairy_c::getBackboneJointNo() {
    return true;
}

/* 809B9258-809B9268 007838 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__13daNpc_Fairy_cFi
 */
void daNpc_Fairy_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 809B9268-809B9278 007848 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__13daNpc_Fairy_cFi
 */
void daNpc_Fairy_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 809B9278-809B92C0 007858 0048+00 2/1 0/0 0/0 .text            __dt__19daNpc_Fairy_Param_cFv */
daNpc_Fairy_Param_c::~daNpc_Fairy_Param_c() {
    // NONMATCHING
}

/* 809B92C0-809B92C8 0078A0 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809B92C0() {
    // NONMATCHING
}

/* 809B92C8-809B92D0 0078A8 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809B92C8() {
    // NONMATCHING
}

/* 809B94CC-809B94CC 0001E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
