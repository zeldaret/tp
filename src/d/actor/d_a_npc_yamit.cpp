/**
 * @file d_a_npc_yamit.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_yamit.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__13daNpc_yamiT_cFv();
extern "C" void create__13daNpc_yamiT_cFv();
extern "C" void CreateHeap__13daNpc_yamiT_cFv();
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
extern "C" void Delete__13daNpc_yamiT_cFv();
extern "C" void Execute__13daNpc_yamiT_cFv();
extern "C" void _search_Tag__13daNpc_yamiT_cFPvPv();
extern "C" void Draw__13daNpc_yamiT_cFv();
extern "C" void createHeapCallBack__13daNpc_yamiT_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__13daNpc_yamiT_cFP8J3DJointi();
extern "C" void getType__13daNpc_yamiT_cFv();
extern "C" void getFlowNodeNo__13daNpc_yamiT_cFv();
extern "C" void isDelete__13daNpc_yamiT_cFv();
extern "C" void reset__13daNpc_yamiT_cFv();
extern "C" void afterJntAnm__13daNpc_yamiT_cFi();
extern "C" void setParam__13daNpc_yamiT_cFv();
extern "C" void setAfterTalkMotion__13daNpc_yamiT_cFv();
extern "C" void srchActors__13daNpc_yamiT_cFv();
extern "C" void evtTalk__13daNpc_yamiT_cFv();
extern "C" void evtCutProc__13daNpc_yamiT_cFv();
extern "C" void action__13daNpc_yamiT_cFv();
extern "C" void beforeMove__13daNpc_yamiT_cFv();
extern "C" void setAttnPos__13daNpc_yamiT_cFv();
extern "C" void setCollision__13daNpc_yamiT_cFv();
extern "C" bool drawDbgInfo__13daNpc_yamiT_cFv();
extern "C" void evtEndProc__13daNpc_yamiT_cFv();
extern "C" void drawGhost__13daNpc_yamiT_cFv();
extern "C" void selectAction__13daNpc_yamiT_cFv();
extern "C" void chkAction__13daNpc_yamiT_cFM13daNpc_yamiT_cFPCvPvPv_i();
extern "C" void setAction__13daNpc_yamiT_cFM13daNpc_yamiT_cFPCvPvPv_i();
extern "C" void wait__13daNpc_yamiT_cFPv();
extern "C" void talk__13daNpc_yamiT_cFPv();
extern "C" void cutStopper__13daNpc_yamiT_cFi();
extern "C" void _cutStopper_Init__13daNpc_yamiT_cFRCi();
extern "C" void _cutStopper_Main__13daNpc_yamiT_cFRCi();
extern "C" static void daNpc_yamiT_Create__FPv();
extern "C" static void daNpc_yamiT_Delete__FPv();
extern "C" static void daNpc_yamiT_Execute__FPv();
extern "C" static void daNpc_yamiT_Draw__FPv();
extern "C" static bool daNpc_yamiT_IsDelete__FPv();
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
extern "C" void __sinit_d_a_npc_yamit_cpp();
extern "C" void
__ct__13daNpc_yamiT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__13daNpc_yamiT_cFv();
extern "C" s32 getHeadJointNo__13daNpc_yamiT_cFv();
extern "C" s32 getNeckJointNo__13daNpc_yamiT_cFv();
extern "C" bool getBackboneJointNo__13daNpc_yamiT_cFv();
extern "C" void checkChangeJoint__13daNpc_yamiT_cFi();
extern "C" void checkRemoveJoint__13daNpc_yamiT_cFi();
extern "C" void __dt__19daNpc_yamiT_Param_cFv();
extern "C" static void func_80B4CD80();
extern "C" static void func_80B4CD88();
extern "C" u8 const m__19daNpc_yamiT_Param_c[140];
extern "C" extern char const* const d_a_npc_yamit__stringBase0;
extern "C" void* mCutNameList__13daNpc_yamiT_c[2];
extern "C" u8 mCutList__13daNpc_yamiT_c[24];

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
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
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
extern "C" void onMidnaTagSw__11daTagYami_cFv();
extern "C" void offMidnaTagSw2__11daTagYami_cFv();

//
// Declarations:
//

/* ############################################################################################## */
/* 80B4CE84-80B4CE84 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B4CE84 = "";
SECTION_DEAD static char const* const stringBase_80B4CE85 = "STOPPER";
SECTION_DEAD static char const* const stringBase_80B4CE8D = "yamiT";
#pragma pop

/* 80B4CEBC-80B4CEC4 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x01,
};

/* 80B4CEC4-80B4CED4 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[4] = {
    (void*)&d_a_npc_yamit__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_yamit__stringBase0) + 0x1),
    (void*)0x00000001,
};
#pragma pop

/* 80B4CED4-80B4CEDC -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_npc_yamit__stringBase0,
    (void*)(((char*)&d_a_npc_yamit__stringBase0) + 0x9),
};

/* 80B4CEDC-80B4CEE0 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80B4CEE0-80B4CEEC -00001 000C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[3] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
};

/* 80B4CEEC-80B4CF24 000050 0038+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[56] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 80B4CF24-80B4CF78 000088 0054+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[84] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF,
    0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF,
    0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF,
    0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80B4CF78-80B4CF98 0000DC 0020+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[32] = {
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B4CF98-80B4CFC8 0000FC 0030+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[48] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B4CFC8-80B4CFD0 -00001 0008+00 1/1 0/0 0/0 .data            mCutNameList__13daNpc_yamiT_c */
SECTION_DATA void* daNpc_yamiT_c::mCutNameList[2] = {
    (void*)&d_a_npc_yamit__stringBase0,
    (void*)(((char*)&d_a_npc_yamit__stringBase0) + 0x1),
};

/* 80B4CFD0-80B4CFDC -00001 000C+00 1/1 0/0 0/0 .data            @3814 */
SECTION_DATA static void* lit_3814[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutStopper__13daNpc_yamiT_cFi,
};

/* 80B4CFDC-80B4CFF4 000140 0018+00 2/2 0/0 0/0 .data            mCutList__13daNpc_yamiT_c */
SECTION_DATA u8 daNpc_yamiT_c::mCutList[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B4CFF4-80B4D000 -00001 000C+00 1/1 0/0 0/0 .data            @4469 */
SECTION_DATA static void* lit_4469[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_yamiT_cFPv,
};

/* 80B4D000-80B4D00C -00001 000C+00 1/1 0/0 0/0 .data            @4595 */
SECTION_DATA static void* lit_4595[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_yamiT_cFPv,
};

/* 80B4D00C-80B4D018 -00001 000C+00 1/1 0/0 0/0 .data            @4603 */
SECTION_DATA static void* lit_4603[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_yamiT_cFPv,
};

/* 80B4D018-80B4D024 -00001 000C+00 1/1 0/0 0/0 .data            @4836 */
SECTION_DATA static void* lit_4836[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_yamiT_cFPv,
};

/* 80B4D024-80B4D044 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_yamiT_MethodTable */
static actor_method_class daNpc_yamiT_MethodTable = {
    (process_method_func)daNpc_yamiT_Create__FPv,
    (process_method_func)daNpc_yamiT_Delete__FPv,
    (process_method_func)daNpc_yamiT_Execute__FPv,
    (process_method_func)daNpc_yamiT_IsDelete__FPv,
    (process_method_func)daNpc_yamiT_Draw__FPv,
};

/* 80B4D044-80B4D074 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_YAMIT */
extern actor_process_profile_definition g_profile_NPC_YAMIT = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_YAMIT,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_yamiT_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  316,                      // mPriority
  &daNpc_yamiT_MethodTable, // sub_method
  0x00044107,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80B4D074-80B4D080 0001D8 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80B4D080-80B4D08C 0001E4 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B4D08C-80B4D0B0 0001F0 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B4CD88,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B4CD80,
};

/* 80B4D0B0-80B4D0BC 000214 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B4D0BC-80B4D0C8 000220 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B4D0C8-80B4D0D4 00022C 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B4D0D4-80B4D0E0 000238 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80B4D0E0-80B4D0EC 000244 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80B4D0EC-80B4D0F8 000250 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80B4D0F8-80B4D104 00025C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B4D104-80B4D110 000268 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B4D110-80B4D11C 000274 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80B4D11C-80B4D1E0 000280 00C4+00 2/2 0/0 0/0 .data            __vt__13daNpc_yamiT_c */
SECTION_DATA extern void* __vt__13daNpc_yamiT_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpc_yamiT_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__13daNpc_yamiT_cFi,
    (void*)checkRemoveJoint__13daNpc_yamiT_cFi,
    (void*)getBackboneJointNo__13daNpc_yamiT_cFv,
    (void*)getNeckJointNo__13daNpc_yamiT_cFv,
    (void*)getHeadJointNo__13daNpc_yamiT_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__13daNpc_yamiT_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__13daNpc_yamiT_cFi,
    (void*)setParam__13daNpc_yamiT_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__13daNpc_yamiT_cFv,
    (void*)evtEndProc__13daNpc_yamiT_cFv,
    (void*)evtCutProc__13daNpc_yamiT_cFv,
    (void*)setAfterTalkMotion__13daNpc_yamiT_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__13daNpc_yamiT_cFv,
    (void*)beforeMove__13daNpc_yamiT_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__13daNpc_yamiT_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__13daNpc_yamiT_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__13daNpc_yamiT_cFv,
    (void*)drawOtherMdl__8daNpcT_cFv,
    (void*)drawGhost__13daNpc_yamiT_cFv,
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

/* 80B49BEC-80B49D24 0000EC 0138+00 1/0 0/0 0/0 .text            __dt__13daNpc_yamiT_cFv */
daNpc_yamiT_c::~daNpc_yamiT_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B4CDA4-80B4CE30 000000 008C+00 7/7 0/0 0/0 .rodata          m__19daNpc_yamiT_Param_c */
SECTION_RODATA u8 const daNpc_yamiT_Param_c::m[140] = {
    0x43, 0x66, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x5C, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B4CDA4, &daNpc_yamiT_Param_c::m);

/* 80B4CE30-80B4CE34 00008C 0004+00 0/1 0/0 0/0 .rodata          @4027 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4027 = 3.0f;
COMPILER_STRIP_GATE(0x80B4CE30, &lit_4027);
#pragma pop

/* 80B4CE34-80B4CE38 000090 0004+00 0/1 0/0 0/0 .rodata          @4028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4028 = -300.0f;
COMPILER_STRIP_GATE(0x80B4CE34, &lit_4028);
#pragma pop

/* 80B4CE38-80B4CE3C 000094 0004+00 0/1 0/0 0/0 .rodata          @4029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4029 = -50.0f;
COMPILER_STRIP_GATE(0x80B4CE38, &lit_4029);
#pragma pop

/* 80B4CE3C-80B4CE40 000098 0004+00 0/1 0/0 0/0 .rodata          @4030 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4030 = 300.0f;
COMPILER_STRIP_GATE(0x80B4CE3C, &lit_4030);
#pragma pop

/* 80B4CE40-80B4CE44 00009C 0004+00 0/1 0/0 0/0 .rodata          @4031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4031 = 450.0f;
COMPILER_STRIP_GATE(0x80B4CE40, &lit_4031);
#pragma pop

/* 80B4CE44-80B4CE48 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4032 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4032 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80B4CE44, &lit_4032);
#pragma pop

/* 80B49D24-80B49FD8 000224 02B4+00 1/1 0/0 0/0 .text            create__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B4CE48-80B4CE4C 0000A4 0004+00 5/10 0/0 0/0 .rodata          @4193 */
SECTION_RODATA static u8 const lit_4193[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B4CE48, &lit_4193);

/* 80B4CE4C-80B4CE50 0000A8 0004+00 0/2 0/0 0/0 .rodata          @4194 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4194 = 65536.0f;
COMPILER_STRIP_GATE(0x80B4CE4C, &lit_4194);
#pragma pop

/* 80B4CE50-80B4CE54 0000AC 0004+00 0/3 0/0 0/0 .rodata          @4195 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4195 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B4CE50, &lit_4195);
#pragma pop

/* 80B4CE54-80B4CE58 0000B0 0004+00 2/5 0/0 0/0 .rodata          @4344 */
SECTION_RODATA static f32 const lit_4344 = 1.0f;
COMPILER_STRIP_GATE(0x80B4CE54, &lit_4344);

/* 80B49FD8-80B4A26C 0004D8 0294+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::CreateHeap() {
    // NONMATCHING
}

/* 80B4A26C-80B4A2A8 00076C 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80B4A2A8-80B4A2C0 0007A8 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80B4A2C0-80B4A2FC 0007C0 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80B4A2FC-80B4A314 0007FC 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80B4A314-80B4A35C 000814 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80B4A35C-80B4A380 00085C 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80B4A380-80B4A3BC 000880 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80B4A3BC-80B4A3D4 0008BC 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80B4A3D4-80B4A410 0008D4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80B4A410-80B4A428 000910 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80B4A428-80B4A45C 000928 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::Delete() {
    // NONMATCHING
}

/* 80B4A45C-80B4A47C 00095C 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::Execute() {
    // NONMATCHING
}

/* 80B4A47C-80B4A4E0 00097C 0064+00 1/1 0/0 0/0 .text            _search_Tag__13daNpc_yamiT_cFPvPv
 */
void daNpc_yamiT_c::_search_Tag(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80B4A4E0-80B4A588 0009E0 00A8+00 1/1 0/0 0/0 .text            Draw__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::Draw() {
    // NONMATCHING
}

/* 80B4A588-80B4A5A8 000A88 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_yamiT_cFP10fopAc_ac_c            */
void daNpc_yamiT_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80B4A5A8-80B4A600 000AA8 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_yamiT_cFP8J3DJointi               */
void daNpc_yamiT_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80B4A600-80B4A638 000B00 0038+00 1/1 0/0 0/0 .text            getType__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::getType() {
    // NONMATCHING
}

/* 80B4A638-80B4A69C 000B38 0064+00 2/2 0/0 0/0 .text            getFlowNodeNo__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::getFlowNodeNo() {
    // NONMATCHING
}

/* 80B4A69C-80B4A724 000B9C 0088+00 1/1 0/0 0/0 .text            isDelete__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::isDelete() {
    // NONMATCHING
}

/* 80B4A724-80B4A914 000C24 01F0+00 1/1 0/0 0/0 .text            reset__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::reset() {
    // NONMATCHING
}

/* 80B4A914-80B4A9A0 000E14 008C+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_yamiT_cFi */
void daNpc_yamiT_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 80B4A9A0-80B4AAD0 000EA0 0130+00 1/0 0/0 0/0 .text            setParam__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::setParam() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B4CE58-80B4CE5C 0000B4 0004+00 1/2 0/0 0/0 .rodata          @4578 */
SECTION_RODATA static f32 const lit_4578 = -1.0f;
COMPILER_STRIP_GATE(0x80B4CE58, &lit_4578);

/* 80B4AAD0-80B4AB30 000FD0 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80B4AB30-80B4ABA0 001030 0070+00 1/1 0/0 0/0 .text            srchActors__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::srchActors() {
    // NONMATCHING
}

/* 80B4ABA0-80B4AC84 0010A0 00E4+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::evtTalk() {
    // NONMATCHING
}

/* 80B4AC84-80B4AD4C 001184 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::evtCutProc() {
    // NONMATCHING
}

/* 80B4AD4C-80B4AE38 00124C 00EC+00 1/0 0/0 0/0 .text            action__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::action() {
    // NONMATCHING
}

/* 80B4AE38-80B4AEB0 001338 0078+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B4CE5C-80B4CE60 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4704 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4704 = -30.0f;
COMPILER_STRIP_GATE(0x80B4CE5C, &lit_4704);
#pragma pop

/* 80B4CE60-80B4CE64 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4705 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4705 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80B4CE60, &lit_4705);
#pragma pop

/* 80B4CE64-80B4CE6C 0000C0 0008+00 1/3 0/0 0/0 .rodata          @4707 */
SECTION_RODATA static u8 const lit_4707[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B4CE64, &lit_4707);

/* 80B4AEB0-80B4B0DC 0013B0 022C+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::setAttnPos() {
    // NONMATCHING
}

/* 80B4B0DC-80B4B210 0015DC 0134+00 1/0 0/0 0/0 .text            setCollision__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::setCollision() {
    // NONMATCHING
}

/* 80B4B210-80B4B218 001710 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_yamiT_cFv */
bool daNpc_yamiT_c::drawDbgInfo() {
    return false;
}

/* 80B4B218-80B4B294 001718 007C+00 1/0 0/0 0/0 .text            evtEndProc__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::evtEndProc() {
    // NONMATCHING
}

/* 80B4B294-80B4B300 001794 006C+00 1/0 0/0 0/0 .text            drawGhost__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::drawGhost() {
    // NONMATCHING
}

/* 80B4B300-80B4B348 001800 0048+00 1/1 0/0 0/0 .text            selectAction__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::selectAction() {
    // NONMATCHING
}

/* 80B4B348-80B4B374 001848 002C+00 1/1 0/0 0/0 .text
 * chkAction__13daNpc_yamiT_cFM13daNpc_yamiT_cFPCvPvPv_i        */
void daNpc_yamiT_c::chkAction(int (daNpc_yamiT_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80B4B374-80B4B41C 001874 00A8+00 3/3 0/0 0/0 .text
 * setAction__13daNpc_yamiT_cFM13daNpc_yamiT_cFPCvPvPv_i        */
void daNpc_yamiT_c::setAction(int (daNpc_yamiT_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80B4B41C-80B4B7D4 00191C 03B8+00 2/0 0/0 0/0 .text            wait__13daNpc_yamiT_cFPv */
void daNpc_yamiT_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80B4B7D4-80B4B9E0 001CD4 020C+00 2/0 0/0 0/0 .text            talk__13daNpc_yamiT_cFPv */
void daNpc_yamiT_c::talk(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B4CE84-80B4CE84 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B4CE93 = "cutId";
#pragma pop

/* 80B4B9E0-80B4BA74 001EE0 0094+00 1/0 0/0 0/0 .text            cutStopper__13daNpc_yamiT_cFi */
void daNpc_yamiT_c::cutStopper(int param_0) {
    // NONMATCHING
}

/* 80B4BA74-80B4BAAC 001F74 0038+00 1/1 0/0 0/0 .text _cutStopper_Init__13daNpc_yamiT_cFRCi */
void daNpc_yamiT_c::_cutStopper_Init(int const& param_0) {
    // NONMATCHING
}

/* 80B4BAAC-80B4BAC4 001FAC 0018+00 1/1 0/0 0/0 .text _cutStopper_Main__13daNpc_yamiT_cFRCi */
void daNpc_yamiT_c::_cutStopper_Main(int const& param_0) {
    // NONMATCHING
}

/* 80B4BAC4-80B4BAE4 001FC4 0020+00 1/0 0/0 0/0 .text            daNpc_yamiT_Create__FPv */
static void daNpc_yamiT_Create(void* param_0) {
    // NONMATCHING
}

/* 80B4BAE4-80B4BB04 001FE4 0020+00 1/0 0/0 0/0 .text            daNpc_yamiT_Delete__FPv */
static void daNpc_yamiT_Delete(void* param_0) {
    // NONMATCHING
}

/* 80B4BB04-80B4BB24 002004 0020+00 1/0 0/0 0/0 .text            daNpc_yamiT_Execute__FPv */
static void daNpc_yamiT_Execute(void* param_0) {
    // NONMATCHING
}

/* 80B4BB24-80B4BB44 002024 0020+00 1/0 0/0 0/0 .text            daNpc_yamiT_Draw__FPv */
static void daNpc_yamiT_Draw(void* param_0) {
    // NONMATCHING
}

/* 80B4BB44-80B4BB4C 002044 0008+00 1/0 0/0 0/0 .text            daNpc_yamiT_IsDelete__FPv */
static bool daNpc_yamiT_IsDelete(void* param_0) {
    return true;
}

/* 80B4BB4C-80B4BB7C 00204C 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80B4BB7C-80B4BBC4 00207C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B4BBC4-80B4BF4C 0020C4 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B4BF4C-80B4BF88 00244C 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80B4BF88-80B4BFC4 002488 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80B4BFC4-80B4C00C 0024C4 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80B4C00C-80B4C054 00250C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80B4C054-80B4C09C 002554 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80B4C09C-80B4C4A0 00259C 0404+00 1/1 0/0 0/0 .text
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

/* 80B4C4A0-80B4C4A4 0029A0 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80B4C4A4-80B4C5A0 0029A4 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80B4C5A0-80B4C5A4 002AA0 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80B4C5A4-80B4C5EC 002AA4 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B4C5EC-80B4C634 002AEC 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80B4C634-80B4C6A4 002B34 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80B4C6A4-80B4C700 002BA4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B4C700-80B4C770 002C00 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80B4C770-80B4C7B8 002C70 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80B4C7B8-80B4C8D4 002CB8 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B4CE6C-80B4CE74 0000C8 0008+00 0/1 0/0 0/0 .rodata          @4765 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4765[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B4CE6C, &lit_4765);
#pragma pop

/* 80B4CE74-80B4CE7C 0000D0 0008+00 0/1 0/0 0/0 .rodata          @4766 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4766[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B4CE74, &lit_4766);
#pragma pop

/* 80B4CE7C-80B4CE84 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4767 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4767[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B4CE7C, &lit_4767);
#pragma pop

/* 80B4C8D4-80B4CADC 002DD4 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80B4CADC-80B4CAE0 002FDC 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80B4CAF0-80B4CAF8 002FF0 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B4CAF8-80B4CB00 002FF8 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B4CB0C-80B4CB14 00300C 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80B4CB14-80B4CB2C 003014 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B4CB2C-80B4CB30 00302C 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80B4CB30-80B4CB38 003030 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B4CB38-80B4CB40 003038 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B4CB40-80B4CB70 003040 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80B4CB70-80B4CBA0 003070 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80B4CBA0-80B4CBA4 0030A0 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B4CBA4-80B4CBA8 0030A4 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B4CBA8-80B4CBAC 0030A8 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B4CBAC-80B4CBB0 0030AC 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 80B4D1E0-80B4D1EC 000344 000C+00 2/2 0/0 0/0 .data            __vt__19daNpc_yamiT_Param_c */
SECTION_DATA extern void* __vt__19daNpc_yamiT_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpc_yamiT_Param_cFv,
};

/* 80B4D1F8-80B4D204 000008 000C+00 1/1 0/0 0/0 .bss             @3815 */
static u8 lit_3815[12];

/* 80B4D204-80B4D208 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80B4CBB0-80B4CC38 0030B0 0088+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_yamit_cpp */
void __sinit_d_a_npc_yamit_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80B4CBB0, __sinit_d_a_npc_yamit_cpp);
#pragma pop

/* 80B4CC38-80B4CCF8 003138 00C0+00 1/1 0/0 0/0 .text
 * __ct__13daNpc_yamiT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_yamiT_c::daNpc_yamiT_c(daNpcT_faceMotionAnmData_c const* param_0,
                                 daNpcT_motionAnmData_c const* param_1,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                 int param_3,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80B4CCF8-80B4CD00 0031F8 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__13daNpc_yamiT_cFv */
u16 daNpc_yamiT_c::getEyeballMaterialNo() {
    return true;
}

/* 80B4CD00-80B4CD08 003200 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__13daNpc_yamiT_cFv
 */
s32 daNpc_yamiT_c::getHeadJointNo() {
    return 4;
}

/* 80B4CD08-80B4CD10 003208 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__13daNpc_yamiT_cFv
 */
s32 daNpc_yamiT_c::getNeckJointNo() {
    return 3;
}

/* 80B4CD10-80B4CD18 003210 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__13daNpc_yamiT_cFv */
bool daNpc_yamiT_c::getBackboneJointNo() {
    return true;
}

/* 80B4CD18-80B4CD28 003218 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__13daNpc_yamiT_cFi
 */
void daNpc_yamiT_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80B4CD28-80B4CD38 003228 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__13daNpc_yamiT_cFi
 */
void daNpc_yamiT_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80B4CD38-80B4CD80 003238 0048+00 2/1 0/0 0/0 .text            __dt__19daNpc_yamiT_Param_cFv */
daNpc_yamiT_Param_c::~daNpc_yamiT_Param_c() {
    // NONMATCHING
}

/* 80B4CD80-80B4CD88 003280 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80B4CD80() {
    // NONMATCHING
}

/* 80B4CD88-80B4CD90 003288 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80B4CD88() {
    // NONMATCHING
}

/* 80B4CE84-80B4CE84 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
