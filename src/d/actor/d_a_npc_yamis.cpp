/**
 * @file d_a_npc_yamis.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_yamis.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__13daNpc_yamiS_cFv();
extern "C" void create__13daNpc_yamiS_cFv();
extern "C" void CreateHeap__13daNpc_yamiS_cFv();
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
extern "C" void Delete__13daNpc_yamiS_cFv();
extern "C" void Execute__13daNpc_yamiS_cFv();
extern "C" void Draw__13daNpc_yamiS_cFv();
extern "C" void createHeapCallBack__13daNpc_yamiS_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__13daNpc_yamiS_cFP8J3DJointi();
extern "C" void getType__13daNpc_yamiS_cFv();
extern "C" void getFlowNodeNo__13daNpc_yamiS_cFv();
extern "C" void isDelete__13daNpc_yamiS_cFv();
extern "C" void reset__13daNpc_yamiS_cFv();
extern "C" void afterJntAnm__13daNpc_yamiS_cFi();
extern "C" void setParam__13daNpc_yamiS_cFv();
extern "C" void setAfterTalkMotion__13daNpc_yamiS_cFv();
extern "C" void srchActors__13daNpc_yamiS_cFv();
extern "C" void evtTalk__13daNpc_yamiS_cFv();
extern "C" void evtCutProc__13daNpc_yamiS_cFv();
extern "C" void action__13daNpc_yamiS_cFv();
extern "C" void beforeMove__13daNpc_yamiS_cFv();
extern "C" void setAttnPos__13daNpc_yamiS_cFv();
extern "C" void setCollision__13daNpc_yamiS_cFv();
extern "C" bool drawDbgInfo__13daNpc_yamiS_cFv();
extern "C" void drawGhost__13daNpc_yamiS_cFv();
extern "C" void selectAction__13daNpc_yamiS_cFv();
extern "C" void chkAction__13daNpc_yamiS_cFM13daNpc_yamiS_cFPCvPvPv_i();
extern "C" void setAction__13daNpc_yamiS_cFM13daNpc_yamiS_cFPCvPvPv_i();
extern "C" void wait__13daNpc_yamiS_cFPv();
extern "C" void talk__13daNpc_yamiS_cFPv();
extern "C" void cutStopper__13daNpc_yamiS_cFi();
extern "C" void _cutStopper_Init__13daNpc_yamiS_cFRCi();
extern "C" void _cutStopper_Main__13daNpc_yamiS_cFRCi();
extern "C" static void daNpc_yamiS_Create__FPv();
extern "C" static void daNpc_yamiS_Delete__FPv();
extern "C" static void daNpc_yamiS_Execute__FPv();
extern "C" static void daNpc_yamiS_Draw__FPv();
extern "C" static bool daNpc_yamiS_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__13daNpcT_Path_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
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
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs();
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs();
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi();
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" bool checkChangeEvt__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawOtherMdl__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void __sinit_d_a_npc_yamis_cpp();
extern "C" void
__ct__13daNpc_yamiS_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__13daNpc_yamiS_cFv();
extern "C" s32 getHeadJointNo__13daNpc_yamiS_cFv();
extern "C" s32 getNeckJointNo__13daNpc_yamiS_cFv();
extern "C" bool getBackboneJointNo__13daNpc_yamiS_cFv();
extern "C" void checkChangeJoint__13daNpc_yamiS_cFi();
extern "C" void checkRemoveJoint__13daNpc_yamiS_cFi();
extern "C" void evtEndProc__13daNpc_yamiS_cFv();
extern "C" void __dt__19daNpc_yamiS_Param_cFv();
extern "C" static void func_80B4968C();
extern "C" static void func_80B49694();
extern "C" u8 const m__19daNpc_yamiS_Param_c[140];
extern "C" extern char const* const d_a_npc_yamis__stringBase0;
extern "C" void* mCutNameList__13daNpc_yamiS_c[2];
extern "C" u8 mCutList__13daNpc_yamiS_c[24];

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
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
extern "C" void entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcT_ActorMngr_cFv();
extern "C" void getActorP__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__13daNpcT_Path_cFv();
extern "C" void setPathInfo__13daNpcT_Path_cFUcScUc();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz();
extern "C" void calcJntRad__15daNpcT_JntAnm_cFfff();
extern "C" void calc__19daNpcT_DmgStagger_cFi();
extern "C" void tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
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
extern "C" void clrParam__8daNpcT_cFv();
extern "C" void setFaceMotionAnm__8daNpcT_cFib();
extern "C" void setMotionAnm__8daNpcT_cFifi();
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
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
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_22();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
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

/* ############################################################################################## */
/* 80B49790-80B49790 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B49790 = "";
SECTION_DEAD static char const* const stringBase_80B49791 = "STOPPER";
SECTION_DEAD static char const* const stringBase_80B49799 = "yamiS";
#pragma pop

/* 80B497C8-80B497D0 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x01,
};

/* 80B497D0-80B497E0 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[4] = {
    (void*)&d_a_npc_yamis__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_yamis__stringBase0) + 0x1),
    (void*)0x00000001,
};
#pragma pop

/* 80B497E0-80B497E8 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_npc_yamis__stringBase0,
    (void*)(((char*)&d_a_npc_yamis__stringBase0) + 0x9),
};

/* 80B497E8-80B497EC 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80B497EC-80B497F8 -00001 000C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[3] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
};

/* 80B497F8-80B49830 000050 0038+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[56] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 80B49830-80B49868 000088 0038+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[56] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80B49868-80B49888 0000C0 0020+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[32] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B49888-80B498A8 0000E0 0020+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[32] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B498A8-80B498B0 -00001 0008+00 1/1 0/0 0/0 .data            mCutNameList__13daNpc_yamiS_c */
SECTION_DATA void* daNpc_yamiS_c::mCutNameList[2] = {
    (void*)&d_a_npc_yamis__stringBase0,
    (void*)(((char*)&d_a_npc_yamis__stringBase0) + 0x1),
};

/* 80B498B0-80B498BC -00001 000C+00 1/1 0/0 0/0 .data            @3815 */
SECTION_DATA static void* lit_3815[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutStopper__13daNpc_yamiS_cFi,
};

/* 80B498BC-80B498D4 000114 0018+00 2/2 0/0 0/0 .data            mCutList__13daNpc_yamiS_c */
SECTION_DATA u8 daNpc_yamiS_c::mCutList[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B498D4-80B498E0 -00001 000C+00 1/1 0/0 0/0 .data            @4472 */
SECTION_DATA static void* lit_4472[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_yamiS_cFPv,
};

/* 80B498E0-80B498EC -00001 000C+00 1/1 0/0 0/0 .data            @4588 */
SECTION_DATA static void* lit_4588[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_yamiS_cFPv,
};

/* 80B498EC-80B498F8 -00001 000C+00 1/1 0/0 0/0 .data            @4596 */
SECTION_DATA static void* lit_4596[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_yamiS_cFPv,
};

/* 80B498F8-80B49904 -00001 000C+00 1/1 0/0 0/0 .data            @4821 */
SECTION_DATA static void* lit_4821[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_yamiS_cFPv,
};

/* 80B49904-80B49924 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_yamiS_MethodTable */
static actor_method_class daNpc_yamiS_MethodTable = {
    (process_method_func)daNpc_yamiS_Create__FPv,
    (process_method_func)daNpc_yamiS_Delete__FPv,
    (process_method_func)daNpc_yamiS_Execute__FPv,
    (process_method_func)daNpc_yamiS_IsDelete__FPv,
    (process_method_func)daNpc_yamiS_Draw__FPv,
};

/* 80B49924-80B49954 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_YAMIS */
extern actor_process_profile_definition g_profile_NPC_YAMIS = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_YAMIS,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_yamiS_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  317,                      // mPriority
  &daNpc_yamiS_MethodTable, // sub_method
  0x00044107,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80B49954-80B49960 0001AC 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80B49960-80B4996C 0001B8 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B4996C-80B49990 0001C4 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B49694,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B4968C,
};

/* 80B49990-80B4999C 0001E8 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B4999C-80B499A8 0001F4 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B499A8-80B499B4 000200 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B499B4-80B499C0 00020C 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80B499C0-80B499CC 000218 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80B499CC-80B499D8 000224 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80B499D8-80B499E4 000230 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B499E4-80B499F0 00023C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B499F0-80B499FC 000248 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80B499FC-80B49AC0 000254 00C4+00 2/2 0/0 0/0 .data            __vt__13daNpc_yamiS_c */
SECTION_DATA extern void* __vt__13daNpc_yamiS_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpc_yamiS_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__13daNpc_yamiS_cFi,
    (void*)checkRemoveJoint__13daNpc_yamiS_cFi,
    (void*)getBackboneJointNo__13daNpc_yamiS_cFv,
    (void*)getNeckJointNo__13daNpc_yamiS_cFv,
    (void*)getHeadJointNo__13daNpc_yamiS_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__13daNpc_yamiS_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__13daNpc_yamiS_cFi,
    (void*)setParam__13daNpc_yamiS_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__13daNpc_yamiS_cFv,
    (void*)evtEndProc__13daNpc_yamiS_cFv,
    (void*)evtCutProc__13daNpc_yamiS_cFv,
    (void*)setAfterTalkMotion__13daNpc_yamiS_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__13daNpc_yamiS_cFv,
    (void*)beforeMove__13daNpc_yamiS_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__13daNpc_yamiS_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__13daNpc_yamiS_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__13daNpc_yamiS_cFv,
    (void*)drawOtherMdl__8daNpcT_cFv,
    (void*)drawGhost__13daNpc_yamiS_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__8daNpcT_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__8daNpcT_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 80B4656C-80B466A4 0000EC 0138+00 1/0 0/0 0/0 .text            __dt__13daNpc_yamiS_cFv */
daNpc_yamiS_c::~daNpc_yamiS_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B496B0-80B4973C 000000 008C+00 7/7 0/0 0/0 .rodata          m__19daNpc_yamiS_Param_c */
SECTION_RODATA u8 const daNpc_yamiS_Param_c::m[140] = {
    0x43, 0x0C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x42, 0xF0, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B496B0, &daNpc_yamiS_Param_c::m);

/* 80B4973C-80B49740 00008C 0004+00 0/1 0/0 0/0 .rodata          @4028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4028 = 3.0f;
COMPILER_STRIP_GATE(0x80B4973C, &lit_4028);
#pragma pop

/* 80B49740-80B49744 000090 0004+00 0/1 0/0 0/0 .rodata          @4029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4029 = -300.0f;
COMPILER_STRIP_GATE(0x80B49740, &lit_4029);
#pragma pop

/* 80B49744-80B49748 000094 0004+00 0/1 0/0 0/0 .rodata          @4030 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4030 = -50.0f;
COMPILER_STRIP_GATE(0x80B49744, &lit_4030);
#pragma pop

/* 80B49748-80B4974C 000098 0004+00 0/1 0/0 0/0 .rodata          @4031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4031 = 300.0f;
COMPILER_STRIP_GATE(0x80B49748, &lit_4031);
#pragma pop

/* 80B4974C-80B49750 00009C 0004+00 0/1 0/0 0/0 .rodata          @4032 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4032 = 450.0f;
COMPILER_STRIP_GATE(0x80B4974C, &lit_4032);
#pragma pop

/* 80B49750-80B49754 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4033 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4033 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80B49750, &lit_4033);
#pragma pop

/* 80B466A4-80B46958 000224 02B4+00 1/1 0/0 0/0 .text            create__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B49754-80B49758 0000A4 0004+00 7/12 0/0 0/0 .rodata          @4194 */
SECTION_RODATA static u8 const lit_4194[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B49754, &lit_4194);

/* 80B49758-80B4975C 0000A8 0004+00 0/2 0/0 0/0 .rodata          @4195 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4195 = 65536.0f;
COMPILER_STRIP_GATE(0x80B49758, &lit_4195);
#pragma pop

/* 80B4975C-80B49760 0000AC 0004+00 0/3 0/0 0/0 .rodata          @4196 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4196 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B4975C, &lit_4196);
#pragma pop

/* 80B49760-80B49764 0000B0 0004+00 2/5 0/0 0/0 .rodata          @4345 */
SECTION_RODATA static f32 const lit_4345 = 1.0f;
COMPILER_STRIP_GATE(0x80B49760, &lit_4345);

/* 80B46958-80B46BEC 0004D8 0294+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::CreateHeap() {
    // NONMATCHING
}

/* 80B46BEC-80B46C28 00076C 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80B46C28-80B46C40 0007A8 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80B46C40-80B46C7C 0007C0 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80B46C7C-80B46C94 0007FC 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80B46C94-80B46CDC 000814 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80B46CDC-80B46D00 00085C 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80B46D00-80B46D3C 000880 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80B46D3C-80B46D54 0008BC 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80B46D54-80B46D90 0008D4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80B46D90-80B46DA8 000910 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80B46DA8-80B46DDC 000928 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::Delete() {
    // NONMATCHING
}

/* 80B46DDC-80B46DFC 00095C 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::Execute() {
    // NONMATCHING
}

/* 80B46DFC-80B46EA4 00097C 00A8+00 1/1 0/0 0/0 .text            Draw__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::Draw() {
    // NONMATCHING
}

/* 80B46EA4-80B46EC4 000A24 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_yamiS_cFP10fopAc_ac_c            */
void daNpc_yamiS_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80B46EC4-80B46F1C 000A44 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_yamiS_cFP8J3DJointi               */
void daNpc_yamiS_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80B46F1C-80B46F54 000A9C 0038+00 1/1 0/0 0/0 .text            getType__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::getType() {
    // NONMATCHING
}

/* 80B46F54-80B46FB8 000AD4 0064+00 2/2 0/0 0/0 .text            getFlowNodeNo__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::getFlowNodeNo() {
    // NONMATCHING
}

/* 80B46FB8-80B47040 000B38 0088+00 1/1 0/0 0/0 .text            isDelete__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::isDelete() {
    // NONMATCHING
}

/* 80B47040-80B47254 000BC0 0214+00 1/1 0/0 0/0 .text            reset__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::reset() {
    // NONMATCHING
}

/* 80B47254-80B472E0 000DD4 008C+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_yamiS_cFi */
void daNpc_yamiS_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 80B472E0-80B473DC 000E60 00FC+00 1/0 0/0 0/0 .text            setParam__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::setParam() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B49764-80B49768 0000B4 0004+00 1/2 0/0 0/0 .rodata          @4577 */
SECTION_RODATA static f32 const lit_4577 = -1.0f;
COMPILER_STRIP_GATE(0x80B49764, &lit_4577);

/* 80B473DC-80B4743C 000F5C 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80B4743C-80B47440 000FBC 0004+00 1/1 0/0 0/0 .text            srchActors__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::srchActors() {
    /* empty function */
}

/* 80B47440-80B47524 000FC0 00E4+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::evtTalk() {
    // NONMATCHING
}

/* 80B47524-80B475EC 0010A4 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::evtCutProc() {
    // NONMATCHING
}

/* 80B475EC-80B476D8 00116C 00EC+00 1/0 0/0 0/0 .text            action__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::action() {
    // NONMATCHING
}

/* 80B476D8-80B47750 001258 0078+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B49768-80B4976C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4697 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4697 = -30.0f;
COMPILER_STRIP_GATE(0x80B49768, &lit_4697);
#pragma pop

/* 80B4976C-80B49770 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4698 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4698 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80B4976C, &lit_4698);
#pragma pop

/* 80B49770-80B49778 0000C0 0008+00 1/3 0/0 0/0 .rodata          @4700 */
SECTION_RODATA static u8 const lit_4700[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B49770, &lit_4700);

/* 80B47750-80B4797C 0012D0 022C+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::setAttnPos() {
    // NONMATCHING
}

/* 80B4797C-80B47AE8 0014FC 016C+00 1/0 0/0 0/0 .text            setCollision__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::setCollision() {
    // NONMATCHING
}

/* 80B47AE8-80B47AF0 001668 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_yamiS_cFv */
bool daNpc_yamiS_c::drawDbgInfo() {
    return false;
}

/* 80B47AF0-80B47B5C 001670 006C+00 1/0 0/0 0/0 .text            drawGhost__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::drawGhost() {
    // NONMATCHING
}

/* 80B47B5C-80B47BA4 0016DC 0048+00 1/1 0/0 0/0 .text            selectAction__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::selectAction() {
    // NONMATCHING
}

/* 80B47BA4-80B47BD0 001724 002C+00 1/1 0/0 0/0 .text
 * chkAction__13daNpc_yamiS_cFM13daNpc_yamiS_cFPCvPvPv_i        */
void daNpc_yamiS_c::chkAction(int (daNpc_yamiS_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80B47BD0-80B47C78 001750 00A8+00 3/3 0/0 0/0 .text
 * setAction__13daNpc_yamiS_cFM13daNpc_yamiS_cFPCvPvPv_i        */
void daNpc_yamiS_c::setAction(int (daNpc_yamiS_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80B47C78-80B47F50 0017F8 02D8+00 2/0 0/0 0/0 .text            wait__13daNpc_yamiS_cFPv */
void daNpc_yamiS_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80B47F50-80B4815C 001AD0 020C+00 2/0 0/0 0/0 .text            talk__13daNpc_yamiS_cFPv */
void daNpc_yamiS_c::talk(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B49790-80B49790 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B4979F = "cutId";
#pragma pop

/* 80B4815C-80B481F0 001CDC 0094+00 1/0 0/0 0/0 .text            cutStopper__13daNpc_yamiS_cFi */
void daNpc_yamiS_c::cutStopper(int param_0) {
    // NONMATCHING
}

/* 80B481F0-80B48238 001D70 0048+00 1/1 0/0 0/0 .text _cutStopper_Init__13daNpc_yamiS_cFRCi */
void daNpc_yamiS_c::_cutStopper_Init(int const& param_0) {
    // NONMATCHING
}

/* 80B48238-80B48364 001DB8 012C+00 1/1 0/0 0/0 .text _cutStopper_Main__13daNpc_yamiS_cFRCi */
void daNpc_yamiS_c::_cutStopper_Main(int const& param_0) {
    // NONMATCHING
}

/* 80B48364-80B48384 001EE4 0020+00 1/0 0/0 0/0 .text            daNpc_yamiS_Create__FPv */
static void daNpc_yamiS_Create(void* param_0) {
    // NONMATCHING
}

/* 80B48384-80B483A4 001F04 0020+00 1/0 0/0 0/0 .text            daNpc_yamiS_Delete__FPv */
static void daNpc_yamiS_Delete(void* param_0) {
    // NONMATCHING
}

/* 80B483A4-80B483C4 001F24 0020+00 1/0 0/0 0/0 .text            daNpc_yamiS_Execute__FPv */
static void daNpc_yamiS_Execute(void* param_0) {
    // NONMATCHING
}

/* 80B483C4-80B483E4 001F44 0020+00 1/0 0/0 0/0 .text            daNpc_yamiS_Draw__FPv */
static void daNpc_yamiS_Draw(void* param_0) {
    // NONMATCHING
}

/* 80B483E4-80B483EC 001F64 0008+00 1/0 0/0 0/0 .text            daNpc_yamiS_IsDelete__FPv */
static bool daNpc_yamiS_IsDelete(void* param_0) {
    return true;
}

/* 80B483EC-80B4841C 001F6C 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80B4841C-80B48464 001F9C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B48464-80B487EC 001FE4 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B487EC-80B48828 00236C 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80B48828-80B48864 0023A8 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80B48864-80B488AC 0023E4 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80B488AC-80B488F4 00242C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80B488F4-80B4893C 002474 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80B4893C-80B48D40 0024BC 0404+00 1/1 0/0 0/0 .text
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

/* 80B48D40-80B48D44 0028C0 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80B48D44-80B48E40 0028C4 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80B48E40-80B48E44 0029C0 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80B48E44-80B48E8C 0029C4 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B48E8C-80B48ED4 002A0C 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80B48ED4-80B48F44 002A54 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80B48F44-80B48FA0 002AC4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B48FA0-80B49010 002B20 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80B49010-80B49058 002B90 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80B49058-80B49174 002BD8 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B49778-80B49780 0000C8 0008+00 0/1 0/0 0/0 .rodata          @4758 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4758[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B49778, &lit_4758);
#pragma pop

/* 80B49780-80B49788 0000D0 0008+00 0/1 0/0 0/0 .rodata          @4759 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4759[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B49780, &lit_4759);
#pragma pop

/* 80B49788-80B49790 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4760 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4760[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B49788, &lit_4760);
#pragma pop

/* 80B49174-80B4937C 002CF4 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80B4937C-80B49380 002EFC 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80B49390-80B49398 002F10 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B49398-80B493A0 002F18 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B493AC-80B493B4 002F2C 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80B493B4-80B493CC 002F34 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B493CC-80B493D0 002F4C 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80B493D0-80B493D8 002F50 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B493D8-80B493E0 002F58 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B493E0-80B49410 002F60 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80B49410-80B49440 002F90 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80B49440-80B49444 002FC0 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B49444-80B49448 002FC4 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B49448-80B4944C 002FC8 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B4944C-80B49450 002FCC 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 80B49AC0-80B49ACC 000318 000C+00 2/2 0/0 0/0 .data            __vt__19daNpc_yamiS_Param_c */
SECTION_DATA extern void* __vt__19daNpc_yamiS_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpc_yamiS_Param_cFv,
};

/* 80B49AD8-80B49AE4 000008 000C+00 1/1 0/0 0/0 .bss             @3816 */
static u8 lit_3816[12];

/* 80B49AE4-80B49AE8 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80B49450-80B494D8 002FD0 0088+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_yamis_cpp */
void __sinit_d_a_npc_yamis_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80B49450, __sinit_d_a_npc_yamis_cpp);
#pragma pop

/* 80B494D8-80B49598 003058 00C0+00 1/1 0/0 0/0 .text
 * __ct__13daNpc_yamiS_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_yamiS_c::daNpc_yamiS_c(daNpcT_faceMotionAnmData_c const* param_0,
                                 daNpcT_motionAnmData_c const* param_1,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                 int param_3,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80B49598-80B495A0 003118 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__13daNpc_yamiS_cFv */
u16 daNpc_yamiS_c::getEyeballMaterialNo() {
    return true;
}

/* 80B495A0-80B495A8 003120 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__13daNpc_yamiS_cFv
 */
s32 daNpc_yamiS_c::getHeadJointNo() {
    return 4;
}

/* 80B495A8-80B495B0 003128 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__13daNpc_yamiS_cFv
 */
s32 daNpc_yamiS_c::getNeckJointNo() {
    return 3;
}

/* 80B495B0-80B495B8 003130 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__13daNpc_yamiS_cFv */
bool daNpc_yamiS_c::getBackboneJointNo() {
    return true;
}

/* 80B495B8-80B495C8 003138 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__13daNpc_yamiS_cFi
 */
void daNpc_yamiS_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80B495C8-80B495D8 003148 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__13daNpc_yamiS_cFi
 */
void daNpc_yamiS_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80B495D8-80B49644 003158 006C+00 1/0 0/0 0/0 .text            evtEndProc__13daNpc_yamiS_cFv */
void daNpc_yamiS_c::evtEndProc() {
    // NONMATCHING
}

/* 80B49644-80B4968C 0031C4 0048+00 2/1 0/0 0/0 .text            __dt__19daNpc_yamiS_Param_cFv */
daNpc_yamiS_Param_c::~daNpc_yamiS_Param_c() {
    // NONMATCHING
}

/* 80B4968C-80B49694 00320C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80B4968C() {
    // NONMATCHING
}

/* 80B49694-80B4969C 003214 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80B49694() {
    // NONMATCHING
}

/* 80B49790-80B49790 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
