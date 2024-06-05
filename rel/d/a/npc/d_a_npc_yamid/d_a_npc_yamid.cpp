/**
 * @file d_a_npc_yamid.cpp
 * 
*/

#include "rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__13daNpc_yamiD_cFv();
extern "C" void create__13daNpc_yamiD_cFv();
extern "C" void CreateHeap__13daNpc_yamiD_cFv();
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
extern "C" void Delete__13daNpc_yamiD_cFv();
extern "C" void Execute__13daNpc_yamiD_cFv();
extern "C" void Draw__13daNpc_yamiD_cFv();
extern "C" void createHeapCallBack__13daNpc_yamiD_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__13daNpc_yamiD_cFP8J3DJointi();
extern "C" void getType__13daNpc_yamiD_cFv();
extern "C" void getFlowNodeNo__13daNpc_yamiD_cFv();
extern "C" void isDelete__13daNpc_yamiD_cFv();
extern "C" void reset__13daNpc_yamiD_cFv();
extern "C" void afterJntAnm__13daNpc_yamiD_cFi();
extern "C" void setParam__13daNpc_yamiD_cFv();
extern "C" void setAfterTalkMotion__13daNpc_yamiD_cFv();
extern "C" void srchActors__13daNpc_yamiD_cFv();
extern "C" void evtTalk__13daNpc_yamiD_cFv();
extern "C" void evtCutProc__13daNpc_yamiD_cFv();
extern "C" void action__13daNpc_yamiD_cFv();
extern "C" void beforeMove__13daNpc_yamiD_cFv();
extern "C" void setAttnPos__13daNpc_yamiD_cFv();
extern "C" void setCollision__13daNpc_yamiD_cFv();
extern "C" bool drawDbgInfo__13daNpc_yamiD_cFv();
extern "C" void drawGhost__13daNpc_yamiD_cFv();
extern "C" void selectAction__13daNpc_yamiD_cFv();
extern "C" void chkAction__13daNpc_yamiD_cFM13daNpc_yamiD_cFPCvPvPv_i();
extern "C" void setAction__13daNpc_yamiD_cFM13daNpc_yamiD_cFPCvPvPv_i();
extern "C" void wait__13daNpc_yamiD_cFPv();
extern "C" void talk__13daNpc_yamiD_cFPv();
extern "C" void cutStopper__13daNpc_yamiD_cFi();
extern "C" void _cutStopper_Init__13daNpc_yamiD_cFRCi();
extern "C" void _cutStopper_Main__13daNpc_yamiD_cFRCi();
extern "C" static void daNpc_yamiD_Create__FPv();
extern "C" static void daNpc_yamiD_Delete__FPv();
extern "C" static void daNpc_yamiD_Execute__FPv();
extern "C" static void daNpc_yamiD_Draw__FPv();
extern "C" static bool daNpc_yamiD_IsDelete__FPv();
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
extern "C" void __sinit_d_a_npc_yamid_cpp();
extern "C" void
__ct__13daNpc_yamiD_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" bool getEyeballMaterialNo__13daNpc_yamiD_cFv();
extern "C" s32 getHeadJointNo__13daNpc_yamiD_cFv();
extern "C" s32 getNeckJointNo__13daNpc_yamiD_cFv();
extern "C" bool getBackboneJointNo__13daNpc_yamiD_cFv();
extern "C" void checkChangeJoint__13daNpc_yamiD_cFi();
extern "C" void checkRemoveJoint__13daNpc_yamiD_cFi();
extern "C" void evtEndProc__13daNpc_yamiD_cFv();
extern "C" void __dt__19daNpc_yamiD_Param_cFv();
extern "C" static void func_80B46028();
extern "C" static void func_80B46030();
extern "C" u8 const m__19daNpc_yamiD_Param_c[140];
extern "C" extern char const* const d_a_npc_yamid__stringBase0;
extern "C" void* mCutNameList__13daNpc_yamiD_c[2];
extern "C" u8 mCutList__13daNpc_yamiD_c[24];

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
/* 80B4612C-80B4612C 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B4612C = "";
SECTION_DEAD static char const* const stringBase_80B4612D = "STOPPER";
SECTION_DEAD static char const* const stringBase_80B46135 = "yamiD";
#pragma pop

/* 80B46144-80B46150 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B46150-80B46164 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80B46164-80B4616C 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x01,
};

/* 80B4616C-80B4617C -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[4] = {
    (void*)&d_a_npc_yamid__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_yamid__stringBase0) + 0x1),
    (void*)0x00000001,
};
#pragma pop

/* 80B4617C-80B46184 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_npc_yamid__stringBase0,
    (void*)(((char*)&d_a_npc_yamid__stringBase0) + 0x9),
};

/* 80B46184-80B46188 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80B46188-80B46194 -00001 000C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[3] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
};

/* 80B46194-80B461CC 000050 0038+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[56] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 80B461CC-80B46204 000088 0038+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[56] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80B46204-80B46224 0000C0 0020+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[32] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B46224-80B46244 0000E0 0020+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[32] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B46244-80B4624C -00001 0008+00 1/1 0/0 0/0 .data            mCutNameList__13daNpc_yamiD_c */
SECTION_DATA void* daNpc_yamiD_c::mCutNameList[2] = {
    (void*)&d_a_npc_yamid__stringBase0,
    (void*)(((char*)&d_a_npc_yamid__stringBase0) + 0x1),
};

/* 80B4624C-80B46258 -00001 000C+00 1/1 0/0 0/0 .data            @3815 */
SECTION_DATA static void* lit_3815[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutStopper__13daNpc_yamiD_cFi,
};

/* 80B46258-80B46270 000114 0018+00 2/2 0/0 0/0 .data            mCutList__13daNpc_yamiD_c */
SECTION_DATA u8 daNpc_yamiD_c::mCutList[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B46270-80B4627C -00001 000C+00 1/1 0/0 0/0 .data            @4472 */
SECTION_DATA static void* lit_4472[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_yamiD_cFPv,
};

/* 80B4627C-80B46288 -00001 000C+00 1/1 0/0 0/0 .data            @4588 */
SECTION_DATA static void* lit_4588[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_yamiD_cFPv,
};

/* 80B46288-80B46294 -00001 000C+00 1/1 0/0 0/0 .data            @4596 */
SECTION_DATA static void* lit_4596[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_yamiD_cFPv,
};

/* 80B46294-80B462A0 -00001 000C+00 1/1 0/0 0/0 .data            @4814 */
SECTION_DATA static void* lit_4814[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_yamiD_cFPv,
};

/* 80B462A0-80B462C0 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_yamiD_MethodTable */
static actor_method_class daNpc_yamiD_MethodTable = {
    (process_method_func)daNpc_yamiD_Create__FPv,
    (process_method_func)daNpc_yamiD_Delete__FPv,
    (process_method_func)daNpc_yamiD_Execute__FPv,
    (process_method_func)daNpc_yamiD_IsDelete__FPv,
    (process_method_func)daNpc_yamiD_Draw__FPv,
};

/* 80B462C0-80B462F0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_YAMID */
extern actor_process_profile_definition g_profile_NPC_YAMID = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_YAMID,           // mProcName
  &g_fpcLf_Method.mBase,    // sub_method
  sizeof(daNpc_yamiD_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  315,                      // mPriority
  &daNpc_yamiD_MethodTable, // sub_method
  0x00044107,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80B462F0-80B462FC 0001AC 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80B462FC-80B46308 0001B8 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B46308-80B4632C 0001C4 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B46030,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B46028,
};

/* 80B4632C-80B46338 0001E8 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B46338-80B46344 0001F4 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B46344-80B46350 000200 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B46350-80B4635C 00020C 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80B4635C-80B46368 000218 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80B46368-80B46374 000224 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80B46374-80B46380 000230 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B46380-80B4638C 00023C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B4638C-80B46398 000248 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80B46398-80B4645C 000254 00C4+00 2/2 0/0 0/0 .data            __vt__13daNpc_yamiD_c */
SECTION_DATA extern void* __vt__13daNpc_yamiD_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpc_yamiD_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__13daNpc_yamiD_cFi,
    (void*)checkRemoveJoint__13daNpc_yamiD_cFi,
    (void*)getBackboneJointNo__13daNpc_yamiD_cFv,
    (void*)getNeckJointNo__13daNpc_yamiD_cFv,
    (void*)getHeadJointNo__13daNpc_yamiD_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__13daNpc_yamiD_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__13daNpc_yamiD_cFi,
    (void*)setParam__13daNpc_yamiD_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__13daNpc_yamiD_cFv,
    (void*)evtEndProc__13daNpc_yamiD_cFv,
    (void*)evtCutProc__13daNpc_yamiD_cFv,
    (void*)setAfterTalkMotion__13daNpc_yamiD_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__13daNpc_yamiD_cFv,
    (void*)beforeMove__13daNpc_yamiD_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__13daNpc_yamiD_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__13daNpc_yamiD_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__13daNpc_yamiD_cFv,
    (void*)drawOtherMdl__8daNpcT_cFv,
    (void*)drawGhost__13daNpc_yamiD_cFv,
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

/* 80B42F4C-80B43084 0000EC 0138+00 1/0 0/0 0/0 .text            __dt__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_yamiD_c::~daNpc_yamiD_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B4604C-80B460D8 000000 008C+00 7/7 0/0 0/0 .rodata          m__19daNpc_yamiD_Param_c */
SECTION_RODATA u8 const daNpc_yamiD_Param_c::m[140] = {
    0x43, 0x34, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x20, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B4604C, &daNpc_yamiD_Param_c::m);

/* 80B460D8-80B460DC 00008C 0004+00 0/1 0/0 0/0 .rodata          @4028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4028 = 3.0f;
COMPILER_STRIP_GATE(0x80B460D8, &lit_4028);
#pragma pop

/* 80B460DC-80B460E0 000090 0004+00 0/1 0/0 0/0 .rodata          @4029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4029 = -300.0f;
COMPILER_STRIP_GATE(0x80B460DC, &lit_4029);
#pragma pop

/* 80B460E0-80B460E4 000094 0004+00 0/1 0/0 0/0 .rodata          @4030 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4030 = -50.0f;
COMPILER_STRIP_GATE(0x80B460E0, &lit_4030);
#pragma pop

/* 80B460E4-80B460E8 000098 0004+00 0/1 0/0 0/0 .rodata          @4031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4031 = 300.0f;
COMPILER_STRIP_GATE(0x80B460E4, &lit_4031);
#pragma pop

/* 80B460E8-80B460EC 00009C 0004+00 0/1 0/0 0/0 .rodata          @4032 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4032 = 450.0f;
COMPILER_STRIP_GATE(0x80B460E8, &lit_4032);
#pragma pop

/* 80B460EC-80B460F0 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4033 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4033 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80B460EC, &lit_4033);
#pragma pop

/* 80B43084-80B43338 000224 02B4+00 1/1 0/0 0/0 .text            create__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::create() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/create__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B460F0-80B460F4 0000A4 0004+00 6/11 0/0 0/0 .rodata          @4194 */
SECTION_RODATA static u8 const lit_4194[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B460F0, &lit_4194);

/* 80B460F4-80B460F8 0000A8 0004+00 0/2 0/0 0/0 .rodata          @4195 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4195 = 65536.0f;
COMPILER_STRIP_GATE(0x80B460F4, &lit_4195);
#pragma pop

/* 80B460F8-80B460FC 0000AC 0004+00 0/3 0/0 0/0 .rodata          @4196 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4196 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B460F8, &lit_4196);
#pragma pop

/* 80B460FC-80B46100 0000B0 0004+00 2/5 0/0 0/0 .rodata          @4345 */
SECTION_RODATA static f32 const lit_4345 = 1.0f;
COMPILER_STRIP_GATE(0x80B460FC, &lit_4345);

/* 80B43338-80B435CC 0004D8 0294+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/CreateHeap__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* 80B435CC-80B43608 00076C 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" asm void __dt__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80B43608-80B43620 0007A8 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" asm void __ct__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__ct__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80B43620-80B4365C 0007C0 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" asm void __dt__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 80B4365C-80B43674 0007FC 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::J3DTevColorAnm() {
extern "C" asm void __ct__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__ct__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 80B43674-80B436BC 000814 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" asm void __dt__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80B436BC-80B436E0 00085C 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::J3DTexNoAnm() {
extern "C" asm void __ct__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__ct__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80B436E0-80B4371C 000880 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" asm void __dt__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80B4371C-80B43734 0008BC 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" asm void __ct__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__ct__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80B43734-80B43770 0008D4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" asm void __dt__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 80B43770-80B43788 000910 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::J3DMatColorAnm() {
extern "C" asm void __ct__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__ct__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 80B43788-80B437BC 000928 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::Delete() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/Delete__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* 80B437BC-80B437DC 00095C 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::Execute() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/Execute__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* 80B437DC-80B43884 00097C 00A8+00 1/1 0/0 0/0 .text            Draw__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::Draw() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/Draw__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* 80B43884-80B438A4 000A24 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_yamiD_cFP10fopAc_ac_c            */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::createHeapCallBack(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/createHeapCallBack__13daNpc_yamiD_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80B438A4-80B438FC 000A44 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_yamiD_cFP8J3DJointi               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/ctrlJointCallBack__13daNpc_yamiD_cFP8J3DJointi.s"
}
#pragma pop

/* 80B438FC-80B43934 000A9C 0038+00 1/1 0/0 0/0 .text            getType__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::getType() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/getType__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* 80B43934-80B43998 000AD4 0064+00 1/1 0/0 0/0 .text            getFlowNodeNo__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::getFlowNodeNo() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/getFlowNodeNo__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* 80B43998-80B43A20 000B38 0088+00 1/1 0/0 0/0 .text            isDelete__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::isDelete() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/isDelete__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* 80B43A20-80B43C34 000BC0 0214+00 1/1 0/0 0/0 .text            reset__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::reset() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/reset__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* 80B43C34-80B43CC0 000DD4 008C+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_yamiD_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::afterJntAnm(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/afterJntAnm__13daNpc_yamiD_cFi.s"
}
#pragma pop

/* 80B43CC0-80B43DBC 000E60 00FC+00 1/0 0/0 0/0 .text            setParam__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::setParam() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/setParam__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B46100-80B46104 0000B4 0004+00 1/2 0/0 0/0 .rodata          @4577 */
SECTION_RODATA static f32 const lit_4577 = -1.0f;
COMPILER_STRIP_GATE(0x80B46100, &lit_4577);

/* 80B43DBC-80B43E1C 000F5C 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::setAfterTalkMotion() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/setAfterTalkMotion__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* 80B43E1C-80B43E28 000FBC 000C+00 1/1 0/0 0/0 .text            srchActors__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::srchActors() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/srchActors__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* 80B43E28-80B43F0C 000FC8 00E4+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::evtTalk() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/evtTalk__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* 80B43F0C-80B43FD4 0010AC 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::evtCutProc() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/evtCutProc__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* 80B43FD4-80B440C0 001174 00EC+00 1/0 0/0 0/0 .text            action__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::action() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/action__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* 80B440C0-80B44138 001260 0078+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::beforeMove() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/beforeMove__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B46104-80B46108 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4697 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4697 = -30.0f;
COMPILER_STRIP_GATE(0x80B46104, &lit_4697);
#pragma pop

/* 80B46108-80B4610C 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4698 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4698 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80B46108, &lit_4698);
#pragma pop

/* 80B4610C-80B46114 0000C0 0008+00 1/3 0/0 0/0 .rodata          @4700 */
SECTION_RODATA static u8 const lit_4700[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B4610C, &lit_4700);

/* 80B44138-80B44364 0012D8 022C+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::setAttnPos() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/setAttnPos__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* 80B44364-80B44498 001504 0134+00 1/0 0/0 0/0 .text            setCollision__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::setCollision() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/setCollision__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* 80B44498-80B444A0 001638 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_yamiD_cFv */
bool daNpc_yamiD_c::drawDbgInfo() {
    return false;
}

/* 80B444A0-80B4450C 001640 006C+00 1/0 0/0 0/0 .text            drawGhost__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::drawGhost() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/drawGhost__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* 80B4450C-80B44554 0016AC 0048+00 1/1 0/0 0/0 .text            selectAction__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::selectAction() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/selectAction__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* 80B44554-80B44580 0016F4 002C+00 1/1 0/0 0/0 .text
 * chkAction__13daNpc_yamiD_cFM13daNpc_yamiD_cFPCvPvPv_i        */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::chkAction(int (daNpc_yamiD_c::*param_0)(void*)) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/chkAction__13daNpc_yamiD_cFM13daNpc_yamiD_cFPCvPvPv_i.s"
}
#pragma pop

/* 80B44580-80B44628 001720 00A8+00 3/3 0/0 0/0 .text
 * setAction__13daNpc_yamiD_cFM13daNpc_yamiD_cFPCvPvPv_i        */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::setAction(int (daNpc_yamiD_c::*param_0)(void*)) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/setAction__13daNpc_yamiD_cFM13daNpc_yamiD_cFPCvPvPv_i.s"
}
#pragma pop

/* 80B44628-80B44900 0017C8 02D8+00 2/0 0/0 0/0 .text            wait__13daNpc_yamiD_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::wait(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/wait__13daNpc_yamiD_cFPv.s"
}
#pragma pop

/* 80B44900-80B44AF8 001AA0 01F8+00 2/0 0/0 0/0 .text            talk__13daNpc_yamiD_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::talk(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/talk__13daNpc_yamiD_cFPv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B4612C-80B4612C 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B4613B = "cutId";
#pragma pop

/* 80B44AF8-80B44B8C 001C98 0094+00 1/0 0/0 0/0 .text            cutStopper__13daNpc_yamiD_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::cutStopper(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/cutStopper__13daNpc_yamiD_cFi.s"
}
#pragma pop

/* 80B44B8C-80B44BD4 001D2C 0048+00 1/1 0/0 0/0 .text _cutStopper_Init__13daNpc_yamiD_cFRCi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::_cutStopper_Init(int const& param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/_cutStopper_Init__13daNpc_yamiD_cFRCi.s"
}
#pragma pop

/* 80B44BD4-80B44D00 001D74 012C+00 1/1 0/0 0/0 .text _cutStopper_Main__13daNpc_yamiD_cFRCi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::_cutStopper_Main(int const& param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/_cutStopper_Main__13daNpc_yamiD_cFRCi.s"
}
#pragma pop

/* 80B44D00-80B44D20 001EA0 0020+00 1/0 0/0 0/0 .text            daNpc_yamiD_Create__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_yamiD_Create(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/daNpc_yamiD_Create__FPv.s"
}
#pragma pop

/* 80B44D20-80B44D40 001EC0 0020+00 1/0 0/0 0/0 .text            daNpc_yamiD_Delete__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_yamiD_Delete(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/daNpc_yamiD_Delete__FPv.s"
}
#pragma pop

/* 80B44D40-80B44D60 001EE0 0020+00 1/0 0/0 0/0 .text            daNpc_yamiD_Execute__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_yamiD_Execute(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/daNpc_yamiD_Execute__FPv.s"
}
#pragma pop

/* 80B44D60-80B44D80 001F00 0020+00 1/0 0/0 0/0 .text            daNpc_yamiD_Draw__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_yamiD_Draw(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/daNpc_yamiD_Draw__FPv.s"
}
#pragma pop

/* 80B44D80-80B44D88 001F20 0008+00 1/0 0/0 0/0 .text            daNpc_yamiD_IsDelete__FPv */
static bool daNpc_yamiD_IsDelete(void* param_0) {
    return true;
}

/* 80B44D88-80B44DB8 001F28 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" asm void calc__11J3DTexNoAnmCFPUs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/calc__11J3DTexNoAnmCFPUs.s"
}
#pragma pop

/* 80B44DB8-80B44E00 001F58 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80B44E00-80B45188 001FA0 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_c::~daNpcT_c() {
extern "C" asm void __dt__8daNpcT_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__8daNpcT_cFv.s"
}
#pragma pop

/* 80B45188-80B451C4 002328 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__4cXyzFv.s"
}
#pragma pop

/* 80B451C4-80B45200 002364 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__5csXyzFv.s"
}
#pragma pop

/* 80B45200-80B45248 0023A0 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" asm void __dt__13daNpcT_Path_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__13daNpcT_Path_cFv.s"
}
#pragma pop

/* 80B45248-80B45290 0023E8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80B45290-80B452D8 002430 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80B452D8-80B456DC 002478 0404+00 1/1 0/0 0/0 .text
 * __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_c::daNpcT_c(daNpcT_faceMotionAnmData_c const* param_0,
//                       daNpcT_motionAnmData_c const* param_1,
// daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
//                          daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
//                       daNpcT_evtData_c const* param_6, char** param_7) {
extern "C" asm void __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/func_80B452D8.s"
}
#pragma pop

/* 80B456DC-80B456E0 00287C 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" asm void __ct__5csXyzFv() {
    /* empty function */
}

/* 80B456E0-80B457DC 002880 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" asm void __dt__15daNpcT_JntAnm_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__15daNpcT_JntAnm_cFv.s"
}
#pragma pop

/* 80B457DC-80B457E0 00297C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" asm void __ct__4cXyzFv() {
    /* empty function */
}

/* 80B457E0-80B45828 002980 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" asm void __dt__18daNpcT_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__18daNpcT_ActorMngr_cFv.s"
}
#pragma pop

/* 80B45828-80B45870 0029C8 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" asm void __dt__22daNpcT_MotionSeqMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__22daNpcT_MotionSeqMngr_cFv.s"
}
#pragma pop

/* 80B45870-80B458E0 002A10 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80B458E0-80B4593C 002A80 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80B4593C-80B459AC 002ADC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80B459AC-80B459F4 002B4C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80B459F4-80B45B10 002B94 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" asm void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B46114-80B4611C 0000C8 0008+00 0/1 0/0 0/0 .rodata          @4758 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4758[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B46114, &lit_4758);
#pragma pop

/* 80B4611C-80B46124 0000D0 0008+00 0/1 0/0 0/0 .rodata          @4759 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4759[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B4611C, &lit_4759);
#pragma pop

/* 80B46124-80B4612C 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4760 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4760[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B46124, &lit_4760);
#pragma pop

/* 80B45B10-80B45D18 002CB0 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" asm void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs.s"
}
#pragma pop

/* 80B45D18-80B45D1C 002EB8 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" asm void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80B45D1C-80B45D24 002EBC 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootLJointNo() {
    return -1;
}

/* 80B45D24-80B45D2C 002EC4 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootRJointNo() {
    return -1;
}

/* 80B45D2C-80B45D34 002ECC 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B45D34-80B45D3C 002ED4 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B45D3C-80B45D44 002EDC 0008+00 1/0 0/0 0/0 .text            checkChangeEvt__8daNpcT_cFv */
bool daNpcT_c::checkChangeEvt() {
    return false;
}

/* 80B45D44-80B45D48 002EE4 0004+00 1/0 0/0 0/0 .text            afterMoved__8daNpcT_cFv */
void daNpcT_c::afterMoved() {
    /* empty function */
}

/* 80B45D48-80B45D50 002EE8 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80B45D50-80B45D68 002EF0 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_c::decTmr() {
extern "C" asm void decTmr__8daNpcT_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/decTmr__8daNpcT_cFv.s"
}
#pragma pop

/* 80B45D68-80B45D6C 002F08 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" asm void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80B45D6C-80B45D74 002F0C 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B45D74-80B45D7C 002F14 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B45D7C-80B45DAC 002F1C 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" asm void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c.s"
}
#pragma pop

/* 80B45DAC-80B45DDC 002F4C 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" asm void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c.s"
}
#pragma pop

/* 80B45DDC-80B45DE0 002F7C 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" asm void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B45DE0-80B45DE4 002F80 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" asm void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B45DE4-80B45DE8 002F84 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" asm void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B45DE8-80B45DEC 002F88 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" asm void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 80B4645C-80B46468 000318 000C+00 2/2 0/0 0/0 .data            __vt__19daNpc_yamiD_Param_c */
SECTION_DATA extern void* __vt__19daNpc_yamiD_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpc_yamiD_Param_cFv,
};

/* 80B46470-80B4647C 000008 000C+00 1/1 0/0 0/0 .bss             @3816 */
static u8 lit_3816[12];

/* 80B4647C-80B46480 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80B45DEC-80B45E74 002F8C 0088+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_yamid_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_npc_yamid_cpp() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__sinit_d_a_npc_yamid_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80B45DEC, __sinit_d_a_npc_yamid_cpp);
#pragma pop

/* 80B45E74-80B45F34 003014 00C0+00 1/1 0/0 0/0 .text
 * __ct__13daNpc_yamiD_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_yamiD_c::daNpc_yamiD_c(daNpcT_faceMotionAnmData_c const* param_0,
                                 daNpcT_motionAnmData_c const* param_1,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                 int param_3,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/func_80B45E74.s"
}
#pragma pop

/* 80B45F34-80B45F3C 0030D4 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__13daNpc_yamiD_cFv */
bool daNpc_yamiD_c::getEyeballMaterialNo() {
    return true;
}

/* 80B45F3C-80B45F44 0030DC 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__13daNpc_yamiD_cFv
 */
s32 daNpc_yamiD_c::getHeadJointNo() {
    return 4;
}

/* 80B45F44-80B45F4C 0030E4 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__13daNpc_yamiD_cFv
 */
s32 daNpc_yamiD_c::getNeckJointNo() {
    return 3;
}

/* 80B45F4C-80B45F54 0030EC 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__13daNpc_yamiD_cFv */
bool daNpc_yamiD_c::getBackboneJointNo() {
    return true;
}

/* 80B45F54-80B45F64 0030F4 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__13daNpc_yamiD_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::checkChangeJoint(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/checkChangeJoint__13daNpc_yamiD_cFi.s"
}
#pragma pop

/* 80B45F64-80B45F74 003104 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__13daNpc_yamiD_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::checkRemoveJoint(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/checkRemoveJoint__13daNpc_yamiD_cFi.s"
}
#pragma pop

/* 80B45F74-80B45FE0 003114 006C+00 1/0 0/0 0/0 .text            evtEndProc__13daNpc_yamiD_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_yamiD_c::evtEndProc() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/evtEndProc__13daNpc_yamiD_cFv.s"
}
#pragma pop

/* 80B45FE0-80B46028 003180 0048+00 2/1 0/0 0/0 .text            __dt__19daNpc_yamiD_Param_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_yamiD_Param_c::~daNpc_yamiD_Param_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/__dt__19daNpc_yamiD_Param_cFv.s"
}
#pragma pop

/* 80B46028-80B46030 0031C8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80B46028() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/func_80B46028.s"
}
#pragma pop

/* 80B46030-80B46038 0031D0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80B46030() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_yamid/d_a_npc_yamid/func_80B46030.s"
}
#pragma pop

/* 80B4612C-80B4612C 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
