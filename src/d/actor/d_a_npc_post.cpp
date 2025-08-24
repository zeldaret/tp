/**
 * @file d_a_npc_post.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_post.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__12daNpc_Post_cFv();
extern "C" void create__12daNpc_Post_cFv();
extern "C" void CreateHeap__12daNpc_Post_cFv();
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
extern "C" void Delete__12daNpc_Post_cFv();
extern "C" void Execute__12daNpc_Post_cFv();
extern "C" void Draw__12daNpc_Post_cFv();
extern "C" void createHeapCallBack__12daNpc_Post_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__12daNpc_Post_cFP8J3DJointi();
extern "C" void getType__12daNpc_Post_cFv();
extern "C" void isDelete__12daNpc_Post_cFv();
extern "C" void reset__12daNpc_Post_cFv();
extern "C" void afterJntAnm__12daNpc_Post_cFi();
extern "C" void setParam__12daNpc_Post_cFv();
extern "C" void checkChangeEvt__12daNpc_Post_cFv();
extern "C" void setAfterTalkMotion__12daNpc_Post_cFv();
extern "C" void srchActors__12daNpc_Post_cFv();
extern "C" void evtTalk__12daNpc_Post_cFv();
extern "C" void evtCutProc__12daNpc_Post_cFv();
extern "C" void action__12daNpc_Post_cFv();
extern "C" void beforeMove__12daNpc_Post_cFv();
extern "C" void afterMoved__12daNpc_Post_cFv();
extern "C" void setAttnPos__12daNpc_Post_cFv();
extern "C" void setCollision__12daNpc_Post_cFv();
extern "C" bool drawDbgInfo__12daNpc_Post_cFv();
extern "C" void drawOtherMdl__12daNpc_Post_cFv();
extern "C" void setFlagAnm__12daNpc_Post_cFiif();
extern "C" void afterSetMotionAnm__12daNpc_Post_cFiifi();
extern "C" void selectAction__12daNpc_Post_cFv();
extern "C" void chkAction__12daNpc_Post_cFM12daNpc_Post_cFPCvPvPv_i();
extern "C" void setAction__12daNpc_Post_cFM12daNpc_Post_cFPCvPvPv_i();
extern "C" void chkPullOutLetter1__12daNpc_Post_cFv();
extern "C" void chkPullOutLetter2__12daNpc_Post_cFv();
extern "C" void pullOutLetter__12daNpc_Post_cFv();
extern "C" void cutDeliver__12daNpc_Post_cFi();
extern "C" void wait__12daNpc_Post_cFPv();
extern "C" void talk__12daNpc_Post_cFPv();
extern "C" static void daNpc_Post_Create__FPv();
extern "C" static void daNpc_Post_Delete__FPv();
extern "C" static void daNpc_Post_Execute__FPv();
extern "C" static void daNpc_Post_Draw__FPv();
extern "C" static bool daNpc_Post_IsDelete__FPv();
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
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_80AACF10(void* _this, int*);
extern "C" void func_80AACF2C(void* _this, f32, f32);
extern "C" void __sinit_d_a_npc_post_cpp();
extern "C" void
__ct__12daNpc_Post_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__12daNpc_Post_cFv();
extern "C" s32 getHeadJointNo__12daNpc_Post_cFv();
extern "C" s32 getNeckJointNo__12daNpc_Post_cFv();
extern "C" bool getBackboneJointNo__12daNpc_Post_cFv();
extern "C" void checkChangeJoint__12daNpc_Post_cFi();
extern "C" void checkRemoveJoint__12daNpc_Post_cFi();
extern "C" s32 getFootLJointNo__12daNpc_Post_cFv();
extern "C" s32 getFootRJointNo__12daNpc_Post_cFv();
extern "C" void __dt__18daNpc_Post_Param_cFv();
extern "C" static void func_80AAD168();
extern "C" static void func_80AAD170();
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz();
extern "C" u8 const m__18daNpc_Post_Param_c[148];
extern "C" extern char const* const d_a_npc_post__stringBase0;
extern "C" void* mCutNameList__12daNpc_Post_c[2];
extern "C" u8 mCutList__12daNpc_Post_c[24];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
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
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
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
extern "C" void checkEndSequence__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__13daNpcT_Path_cFv();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz();
extern "C" void calcJntRad__15daNpcT_JntAnm_cFfff();
extern "C" void calc__19daNpcT_DmgStagger_cFi();
extern "C" void tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void getTrnsfrmAnmP__8daNpcT_cFPCci();
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
extern "C" void setAngle__8daNpcT_cF5csXyz();
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void hitChk__8daNpcT_cFP12dCcD_GObjInfUl();
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getEvtAreaTagP__8daNpcT_cFii();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void dMeter2Info_getNewLetterNum__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
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
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void hide__13J3DShapeTableFv();
extern "C" void show__13J3DShapeTableFv();
extern "C" void init__12J3DFrameCtrlFs();
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
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
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
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz();
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80AAD34C-80AAD34C 000160 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AAD34C = "";
SECTION_DEAD static char const* const stringBase_80AAD34D = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80AAD359 = "DELIVER";
SECTION_DEAD static char const* const stringBase_80AAD361 = "DELIVERTO_PLAYER_ON_HORSE";
SECTION_DEAD static char const* const stringBase_80AAD37B = "DELIVERTO_WOLF";
SECTION_DEAD static char const* const stringBase_80AAD38A = "post";
SECTION_DEAD static char const* const stringBase_80AAD38F = "post1";
SECTION_DEAD static char const* const stringBase_80AAD395 = "post2";
#pragma pop

/* 80AAD3CC-80AAD3EC 000020 0020+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[32] = {
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x03,
};

/* 80AAD3EC-80AAD414 -00001 0028+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[10] = {
    (void*)&d_a_npc_post__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_post__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_post__stringBase0) + 0xD),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_post__stringBase0) + 0x15),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_post__stringBase0) + 0x2F),
    (void*)0x00000002,
};
#pragma pop

/* 80AAD414-80AAD424 -00001 0010+00 5/6 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[4] = {
    (void*)&d_a_npc_post__stringBase0,
    (void*)(((char*)&d_a_npc_post__stringBase0) + 0x3E),
    (void*)(((char*)&d_a_npc_post__stringBase0) + 0x43),
    (void*)(((char*)&d_a_npc_post__stringBase0) + 0x49),
};

/* 80AAD424-80AAD428 000078 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u8 l_loadResPtrn0[3 + 1 /* padding */] = {
    0x01,
    0x02,
    0xFF,
    /* padding */
    0x00,
};

/* 80AAD428-80AAD42C 00007C 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u8 l_loadResPtrn1[3 + 1 /* padding */] = {
    0x01,
    0x03,
    0xFF,
    /* padding */
    0x00,
};

/* 80AAD42C-80AAD430 000080 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn9 */
SECTION_DATA static u32 l_loadResPtrn9 = 0x010203FF;

/* 80AAD430-80AAD440 -00001 0010+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[4] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn1,
    (void*)&l_loadResPtrn9,
};

/* 80AAD440-80AAD5E4 000094 01A4+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[420] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x21,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x18,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1A,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80AAD5E4-80AAD750 000238 016C+00 2/3 0/0 0/0 .data            l_motionAnmData */
SECTION_DATA static u8 l_motionAnmData[364] = {
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x14,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x14,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x14,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
};

/* 80AAD750-80AAD840 0003A4 00F0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[240] = {
    0x00, 0x02, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x0B, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0x00, 0x0C, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x01, 0x00, 0x0D, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x01, 0x00, 0x0E, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80AAD840-80AAD8F0 000494 00B0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[176] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x04, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0x00, 0x09, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x0A, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80AAD8F0-80AAD8F8 -00001 0008+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_Post_c */
SECTION_DATA void* daNpc_Post_c::mCutNameList[2] = {
    (void*)&d_a_npc_post__stringBase0,
    (void*)(((char*)&d_a_npc_post__stringBase0) + 0xD),
};

/* 80AAD8F8-80AAD904 -00001 000C+00 1/1 0/0 0/0 .data            @3838 */
SECTION_DATA static void* lit_3838[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutDeliver__12daNpc_Post_cFi,
};

/* 80AAD904-80AAD91C 000558 0018+00 2/2 0/0 0/0 .data            mCutList__12daNpc_Post_c */
SECTION_DATA u8 daNpc_Post_c::mCutList[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AAD91C-80AAD928 -00001 000C+00 1/1 0/0 0/0 .data            @4596 */
SECTION_DATA static void* lit_4596[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Post_cFPv,
};

/* 80AAD928-80AAD934 -00001 000C+00 1/1 0/0 0/0 .data            @4653 */
SECTION_DATA static void* lit_4653[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Post_cFPv,
};

/* 80AAD934-80AAD940 -00001 000C+00 1/1 0/0 0/0 .data            @4663 */
SECTION_DATA static void* lit_4663[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Post_cFPv,
};

/* 80AAD940-80AAD9A8 000594 0068+00 1/1 0/0 0/0 .data            flagAnmData$5038 */
SECTION_DATA static u8 flagAnmData[104] = {
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00,
    0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0F, 0x00,
    0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AAD9A8-80AAD9B4 -00001 000C+00 1/1 0/0 0/0 .data            @5060 */
SECTION_DATA static void* lit_5060[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_Post_cFPv,
};

/* 80AAD9B4-80AAD9E8 -00001 0034+00 1/1 0/0 0/0 .data            @5418 */
SECTION_DATA static void* lit_5418[13] = {
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x6D0),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x720),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x720),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x758),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x7A4),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x828),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x85C),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x864),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x878),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x8A4),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x930),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x948),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x998),
};

/* 80AAD9E8-80AADA1C -00001 0034+00 1/1 0/0 0/0 .data            @5415 */
SECTION_DATA static void* lit_5415[13] = {
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0xC0),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x170),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x170),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x188),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x228),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x384),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x404),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x44C),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x4CC),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x530),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x590),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x6B0),
    (void*)(((char*)cutDeliver__12daNpc_Post_cFi) + 0x6B0),
};

/* 80AADA1C-80AADA3C -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Post_MethodTable */
static actor_method_class daNpc_Post_MethodTable = {
    (process_method_func)daNpc_Post_Create__FPv,
    (process_method_func)daNpc_Post_Delete__FPv,
    (process_method_func)daNpc_Post_Execute__FPv,
    (process_method_func)daNpc_Post_IsDelete__FPv,
    (process_method_func)daNpc_Post_Draw__FPv,
};

/* 80AADA3C-80AADA6C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_POST */
extern actor_process_profile_definition g_profile_NPC_POST = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_POST,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpc_Post_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  403,                     // mPriority
  &daNpc_Post_MethodTable, // sub_method
  0x00040107,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80AADA6C-80AADA78 0006C0 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80AADA78-80AADA84 0006CC 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AADA84-80AADAA8 0006D8 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AAD170,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AAD168,
};

/* 80AADAA8-80AADAB4 0006FC 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AADAB4-80AADAC0 000708 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AADAC0-80AADACC 000714 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AADACC-80AADAD8 000720 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80AADAD8-80AADAE4 00072C 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80AADAE4-80AADAF0 000738 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80AADAF0-80AADAFC 000744 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AADAFC-80AADB08 000750 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80AADB08-80AADB14 00075C 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80AADB14-80AADBD8 000768 00C4+00 2/2 0/0 0/0 .data            __vt__12daNpc_Post_c */
SECTION_DATA extern void* __vt__12daNpc_Post_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daNpc_Post_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__12daNpc_Post_cFi,
    (void*)checkRemoveJoint__12daNpc_Post_cFi,
    (void*)getBackboneJointNo__12daNpc_Post_cFv,
    (void*)getNeckJointNo__12daNpc_Post_cFv,
    (void*)getHeadJointNo__12daNpc_Post_cFv,
    (void*)getFootLJointNo__12daNpc_Post_cFv,
    (void*)getFootRJointNo__12daNpc_Post_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__12daNpc_Post_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__12daNpc_Post_cFi,
    (void*)setParam__12daNpc_Post_cFv,
    (void*)checkChangeEvt__12daNpc_Post_cFv,
    (void*)evtTalk__12daNpc_Post_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__12daNpc_Post_cFv,
    (void*)setAfterTalkMotion__12daNpc_Post_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__12daNpc_Post_cFv,
    (void*)beforeMove__12daNpc_Post_cFv,
    (void*)afterMoved__12daNpc_Post_cFv,
    (void*)setAttnPos__12daNpc_Post_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__12daNpc_Post_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__12daNpc_Post_cFv,
    (void*)drawOtherMdl__12daNpc_Post_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__12daNpc_Post_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__8daNpcT_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 80AA8C8C-80AA8DE8 0000EC 015C+00 1/0 0/0 0/0 .text            __dt__12daNpc_Post_cFv */
daNpc_Post_c::~daNpc_Post_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AAD1EC-80AAD280 000000 0094+00 12/12 0/0 0/0 .rodata          m__18daNpc_Post_Param_c */
SECTION_RODATA u8 const daNpc_Post_Param_c::m[148] = {
    0x43, 0x3E, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x44, 0x2F, 0x00,
    0x00, 0x43, 0x7F, 0x00, 0x00, 0x43, 0x34, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1,
    0x20, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00,
    0xC2, 0x34, 0x00, 0x00, 0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00,
    0x06, 0x00, 0x05, 0x00, 0x06, 0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x80, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AAD1EC, &daNpc_Post_Param_c::m);

/* 80AAD280-80AAD290 000094 0010+00 0/1 0/0 0/0 .rodata          heapSize$4000 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x60, 0x00, 0x00, 0x4E, 0xC0, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AAD280, &heapSize);
#pragma pop

/* 80AAD290-80AAD294 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4066 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4066 = -200.0f;
COMPILER_STRIP_GATE(0x80AAD290, &lit_4066);
#pragma pop

/* 80AAD294-80AAD298 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4067 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4067 = -100.0f;
COMPILER_STRIP_GATE(0x80AAD294, &lit_4067);
#pragma pop

/* 80AAD298-80AAD29C 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4068 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4068 = 200.0f;
COMPILER_STRIP_GATE(0x80AAD298, &lit_4068);
#pragma pop

/* 80AAD29C-80AAD2A0 0000B0 0004+00 0/3 0/0 0/0 .rodata          @4069 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4069 = 300.0f;
COMPILER_STRIP_GATE(0x80AAD29C, &lit_4069);
#pragma pop

/* 80AAD2A0-80AAD2A4 0000B4 0004+00 4/14 0/0 0/0 .rodata          @4070 */
SECTION_RODATA static u8 const lit_4070[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AAD2A0, &lit_4070);

/* 80AAD2A4-80AAD2A8 0000B8 0004+00 0/3 0/0 0/0 .rodata          @4071 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4071 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80AAD2A4, &lit_4071);
#pragma pop

/* 80AA8DE8-80AA90B0 000248 02C8+00 1/1 0/0 0/0 .text            create__12daNpc_Post_cFv */
void daNpc_Post_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AAD2A8-80AAD2AC 0000BC 0004+00 0/2 0/0 0/0 .rodata          @4235 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4235 = 65536.0f;
COMPILER_STRIP_GATE(0x80AAD2A8, &lit_4235);
#pragma pop

/* 80AAD2AC-80AAD2B0 0000C0 0004+00 0/3 0/0 0/0 .rodata          @4236 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4236 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AAD2AC, &lit_4236);
#pragma pop

/* 80AAD2B0-80AAD2B8 0000C4 0008+00 0/1 0/0 0/0 .rodata          bmdTypeList$4354 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const bmdTypeList[8] = {
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
};
COMPILER_STRIP_GATE(0x80AAD2B0, &bmdTypeList);
#pragma pop

/* 80AAD2B8-80AAD2BC 0000CC 0004+00 1/5 0/0 0/0 .rodata          @4418 */
SECTION_RODATA static f32 const lit_4418 = 1.0f;
COMPILER_STRIP_GATE(0x80AAD2B8, &lit_4418);

/* 80AA90B0-80AA9478 000510 03C8+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_Post_cFv */
void daNpc_Post_c::CreateHeap() {
    // NONMATCHING
}

/* 80AA9478-80AA94B4 0008D8 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80AA94B4-80AA94CC 000914 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80AA94CC-80AA9508 00092C 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80AA9508-80AA9520 000968 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80AA9520-80AA9568 000980 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80AA9568-80AA958C 0009C8 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80AA958C-80AA95C8 0009EC 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80AA95C8-80AA95E0 000A28 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80AA95E0-80AA961C 000A40 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80AA961C-80AA9634 000A7C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80AA9634-80AA9668 000A94 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_Post_cFv */
void daNpc_Post_c::Delete() {
    // NONMATCHING
}

/* 80AA9668-80AA9688 000AC8 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_Post_cFv */
void daNpc_Post_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AAD2BC-80AAD2C0 0000D0 0004+00 1/1 0/0 0/0 .rodata          @4467 */
SECTION_RODATA static f32 const lit_4467 = 100.0f;
COMPILER_STRIP_GATE(0x80AAD2BC, &lit_4467);

/* 80AA9688-80AA971C 000AE8 0094+00 1/1 0/0 0/0 .text            Draw__12daNpc_Post_cFv */
void daNpc_Post_c::Draw() {
    // NONMATCHING
}

/* 80AA971C-80AA973C 000B7C 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpc_Post_cFP10fopAc_ac_c             */
void daNpc_Post_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80AA973C-80AA9794 000B9C 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__12daNpc_Post_cFP8J3DJointi                */
void daNpc_Post_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80AA9794-80AA97E0 000BF4 004C+00 1/1 0/0 0/0 .text            getType__12daNpc_Post_cFv */
void daNpc_Post_c::getType() {
    // NONMATCHING
}

/* 80AA97E0-80AA9828 000C40 0048+00 1/1 0/0 0/0 .text            isDelete__12daNpc_Post_cFv */
void daNpc_Post_c::isDelete() {
    // NONMATCHING
}

/* 80AA9828-80AA99F0 000C88 01C8+00 1/1 0/0 0/0 .text            reset__12daNpc_Post_cFv */
void daNpc_Post_c::reset() {
    // NONMATCHING
}

/* 80AA99F0-80AA9A7C 000E50 008C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_Post_cFi */
void daNpc_Post_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 80AA9A7C-80AA9BA4 000EDC 0128+00 1/0 0/0 0/0 .text            setParam__12daNpc_Post_cFv */
void daNpc_Post_c::setParam() {
    // NONMATCHING
}

/* 80AA9BA4-80AA9C58 001004 00B4+00 1/0 0/0 0/0 .text            checkChangeEvt__12daNpc_Post_cFv */
void daNpc_Post_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AAD2C0-80AAD2C4 0000D4 0004+00 1/3 0/0 0/0 .rodata          @4632 */
SECTION_RODATA static f32 const lit_4632 = -1.0f;
COMPILER_STRIP_GATE(0x80AAD2C0, &lit_4632);

/* 80AA9C58-80AA9D04 0010B8 00AC+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_Post_cFv */
void daNpc_Post_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80AA9D04-80AA9D98 001164 0094+00 1/1 0/0 0/0 .text            srchActors__12daNpc_Post_cFv */
void daNpc_Post_c::srchActors() {
    // NONMATCHING
}

/* 80AA9D98-80AA9E98 0011F8 0100+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_Post_cFv */
void daNpc_Post_c::evtTalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AAD34C-80AAD34C 000160 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AAD39B = "Post";
#pragma pop

/* 80AA9E98-80AA9F60 0012F8 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_Post_cFv */
void daNpc_Post_c::evtCutProc() {
    // NONMATCHING
}

/* 80AA9F60-80AAA058 0013C0 00F8+00 1/0 0/0 0/0 .text            action__12daNpc_Post_cFv */
void daNpc_Post_c::action() {
    // NONMATCHING
}

/* 80AAA058-80AAA124 0014B8 00CC+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_Post_cFv */
void daNpc_Post_c::beforeMove() {
    // NONMATCHING
}

/* 80AAA124-80AAA1E4 001584 00C0+00 1/0 0/0 0/0 .text            afterMoved__12daNpc_Post_cFv */
void daNpc_Post_c::afterMoved() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AAD2C4-80AAD2C8 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4835 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4835 = -30.0f;
COMPILER_STRIP_GATE(0x80AAD2C4, &lit_4835);
#pragma pop

/* 80AAD2C8-80AAD2CC 0000DC 0004+00 0/2 0/0 0/0 .rodata          @4836 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4836 = 10.0f;
COMPILER_STRIP_GATE(0x80AAD2C8, &lit_4836);
#pragma pop

/* 80AAD2CC-80AAD2D0 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4837 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4837 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80AAD2CC, &lit_4837);
#pragma pop

/* 80AAD2D0-80AAD2D4 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4838 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4838 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80AAD2D0, &lit_4838);
#pragma pop

/* 80AAD2D4-80AAD2D8 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4839 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4839 = 16.0f;
COMPILER_STRIP_GATE(0x80AAD2D4, &lit_4839);
#pragma pop

/* 80AAD2D8-80AAD2DC 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4840 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4840 = 110.0f;
COMPILER_STRIP_GATE(0x80AAD2D8, &lit_4840);
#pragma pop

/* 80AAD2DC-80AAD2E0 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4841 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4841 = 40.0f;
COMPILER_STRIP_GATE(0x80AAD2DC, &lit_4841);
#pragma pop

/* 80AAD2E0-80AAD2E4 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4842 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4842 = 3.0f;
COMPILER_STRIP_GATE(0x80AAD2E0, &lit_4842);
#pragma pop

/* 80AAD2E4-80AAD2EC 0000F8 0004+04 0/1 0/0 0/0 .rodata          @4843 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4843[1 + 1 /* padding */] = {
    11.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80AAD2E4, &lit_4843);
#pragma pop

/* 80AAD2EC-80AAD2F4 000100 0008+00 1/4 0/0 0/0 .rodata          @4845 */
SECTION_RODATA static u8 const lit_4845[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AAD2EC, &lit_4845);

/* 80AADC30-80AADC3C 000048 000C+00 1/1 0/0 0/0 .bss             @3839 */
static u8 lit_3839[12];

/* 80AADC3C-80AADC40 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80AADC40-80AADC50 000058 000C+04 0/1 0/0 0/0 .bss             @4753 */
#pragma push
#pragma force_active on
static u8 lit_4753[12 + 4 /* padding */];
#pragma pop

/* 80AADC50-80AADC5C 000068 000C+00 0/1 0/0 0/0 .bss             prtclScl$4752 */
#pragma push
#pragma force_active on
static u8 prtclScl[12];
#pragma pop

/* 80AAA1E4-80AAA570 001644 038C+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_Post_cFv */
void daNpc_Post_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AAD2F4-80AAD2FC 000108 0008+00 0/2 0/0 0/0 .rodata          @4903 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4903[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AAD2F4, &lit_4903);
#pragma pop

/* 80AAD2FC-80AAD304 000110 0008+00 0/2 0/0 0/0 .rodata          @4904 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4904[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AAD2FC, &lit_4904);
#pragma pop

/* 80AAD304-80AAD30C 000118 0008+00 0/2 0/0 0/0 .rodata          @4905 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4905[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AAD304, &lit_4905);
#pragma pop

/* 80AAD30C-80AAD310 000120 0004+00 0/1 0/0 0/0 .rodata          @4949 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4949 = 20.0f;
COMPILER_STRIP_GATE(0x80AAD30C, &lit_4949);
#pragma pop

/* 80AAD310-80AAD314 000124 0004+00 0/1 0/0 0/0 .rodata          @4950 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4950 = 80.0f;
COMPILER_STRIP_GATE(0x80AAD310, &lit_4950);
#pragma pop

/* 80AAD314-80AAD318 000128 0004+00 0/1 0/0 0/0 .rodata          @4951 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4951 = 50.0f;
COMPILER_STRIP_GATE(0x80AAD314, &lit_4951);
#pragma pop

/* 80AAA570-80AAA714 0019D0 01A4+00 1/0 0/0 0/0 .text            setCollision__12daNpc_Post_cFv */
void daNpc_Post_c::setCollision() {
    // NONMATCHING
}

/* 80AAA714-80AAA71C 001B74 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_Post_cFv */
bool daNpc_Post_c::drawDbgInfo() {
    return false;
}

/* ############################################################################################## */
/* 80AAD318-80AAD320 00012C 0008+00 1/1 0/0 0/0 .rodata          jointNo$4959 */
SECTION_RODATA static u8 const jointNo[8] = {
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x12,
};
COMPILER_STRIP_GATE(0x80AAD318, &jointNo);

/* 80AAA71C-80AAA8A4 001B7C 0188+00 1/0 0/0 0/0 .text            drawOtherMdl__12daNpc_Post_cFv */
void daNpc_Post_c::drawOtherMdl() {
    // NONMATCHING
}

/* 80AAA8A4-80AAA968 001D04 00C4+00 1/1 0/0 0/0 .text            setFlagAnm__12daNpc_Post_cFiif */
void daNpc_Post_c::setFlagAnm(int param_0, int param_1, f32 param_2) {
    // NONMATCHING
}

/* 80AAA968-80AAA99C 001DC8 0034+00 1/0 0/0 0/0 .text afterSetMotionAnm__12daNpc_Post_cFiifi */
void daNpc_Post_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    // NONMATCHING
}

/* 80AAA99C-80AAA9E4 001DFC 0048+00 1/1 0/0 0/0 .text            selectAction__12daNpc_Post_cFv */
void daNpc_Post_c::selectAction() {
    // NONMATCHING
}

/* 80AAA9E4-80AAAA10 001E44 002C+00 2/2 0/0 0/0 .text
 * chkAction__12daNpc_Post_cFM12daNpc_Post_cFPCvPvPv_i          */
void daNpc_Post_c::chkAction(int (daNpc_Post_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80AAAA10-80AAAAB8 001E70 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_Post_cFM12daNpc_Post_cFPCvPvPv_i          */
void daNpc_Post_c::setAction(int (daNpc_Post_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80AAAAB8-80AAAB2C 001F18 0074+00 1/1 0/0 0/0 .text            chkPullOutLetter1__12daNpc_Post_cFv
 */
void daNpc_Post_c::chkPullOutLetter1() {
    // NONMATCHING
}

/* 80AAAB2C-80AAABA0 001F8C 0074+00 1/1 0/0 0/0 .text            chkPullOutLetter2__12daNpc_Post_cFv
 */
void daNpc_Post_c::chkPullOutLetter2() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AAD320-80AAD324 000134 0004+00 1/1 0/0 0/0 .rodata          @5115 */
SECTION_RODATA static f32 const lit_5115 = 37.0f;
COMPILER_STRIP_GATE(0x80AAD320, &lit_5115);

/* 80AAABA0-80AAAC64 002000 00C4+00 1/1 0/0 0/0 .text            pullOutLetter__12daNpc_Post_cFv */
void daNpc_Post_c::pullOutLetter() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AAD34C-80AAD34C 000160 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AAD3A0 = "prm";
SECTION_DEAD static char const* const stringBase_80AAD3A4 = "timer";
#pragma pop

/* 80AAAC64-80AAB61C 0020C4 09B8+00 3/0 0/0 0/0 .text            cutDeliver__12daNpc_Post_cFi */
void daNpc_Post_c::cutDeliver(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AAD324-80AAD32C 000138 0008+00 0/0 0/0 0/0 .rodata          @5155 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5155[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80AAD324, &lit_5155);
#pragma pop

/* 80AAD32C-80AAD330 000140 0004+00 0/0 0/0 0/0 .rodata          @5411 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5411 = 1000.0f;
COMPILER_STRIP_GATE(0x80AAD32C, &lit_5411);
#pragma pop

/* 80AAD330-80AAD334 000144 0004+00 0/0 0/0 0/0 .rodata          @5412 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5412 = 5.0f;
COMPILER_STRIP_GATE(0x80AAD330, &lit_5412);
#pragma pop

/* 80AAD334-80AAD338 000148 0004+00 0/0 0/0 0/0 .rodata          @5413 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5413 = 400.0f;
COMPILER_STRIP_GATE(0x80AAD334, &lit_5413);
#pragma pop

/* 80AAD338-80AAD33C 00014C 0004+00 0/1 0/0 0/0 .rodata          @5414 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5414 = 1.5f;
COMPILER_STRIP_GATE(0x80AAD338, &lit_5414);
#pragma pop

/* 80AAD33C-80AAD344 000150 0008+00 0/0 0/0 0/0 .rodata          @5417 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5417[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AAD33C, &lit_5417);
#pragma pop

/* 80AAD344-80AAD348 000158 0004+00 0/1 0/0 0/0 .rodata          @5626 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5626 = 0.5f;
COMPILER_STRIP_GATE(0x80AAD344, &lit_5626);
#pragma pop

/* 80AAD348-80AAD34C 00015C 0004+00 0/1 0/0 0/0 .rodata          @5627 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5627 = 700.0f;
COMPILER_STRIP_GATE(0x80AAD348, &lit_5627);
#pragma pop

/* 80AAB61C-80AABC24 002A7C 0608+00 1/0 0/0 0/0 .text            wait__12daNpc_Post_cFPv */
void daNpc_Post_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80AABC24-80AABE04 003084 01E0+00 3/0 0/0 0/0 .text            talk__12daNpc_Post_cFPv */
void daNpc_Post_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80AABE04-80AABE24 003264 0020+00 1/0 0/0 0/0 .text            daNpc_Post_Create__FPv */
static void daNpc_Post_Create(void* param_0) {
    // NONMATCHING
}

/* 80AABE24-80AABE44 003284 0020+00 1/0 0/0 0/0 .text            daNpc_Post_Delete__FPv */
static void daNpc_Post_Delete(void* param_0) {
    // NONMATCHING
}

/* 80AABE44-80AABE64 0032A4 0020+00 1/0 0/0 0/0 .text            daNpc_Post_Execute__FPv */
static void daNpc_Post_Execute(void* param_0) {
    // NONMATCHING
}

/* 80AABE64-80AABE84 0032C4 0020+00 1/0 0/0 0/0 .text            daNpc_Post_Draw__FPv */
static void daNpc_Post_Draw(void* param_0) {
    // NONMATCHING
}

/* 80AABE84-80AABE8C 0032E4 0008+00 1/0 0/0 0/0 .text            daNpc_Post_IsDelete__FPv */
static bool daNpc_Post_IsDelete(void* param_0) {
    return true;
}

/* 80AABE8C-80AABEBC 0032EC 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80AABEBC-80AABF04 00331C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AABF04-80AAC28C 003364 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80AAC28C-80AAC2C8 0036EC 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80AAC2C8-80AAC304 003728 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80AAC304-80AAC34C 003764 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AAC34C-80AAC394 0037AC 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80AAC394-80AAC3D0 0037F4 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AAC3D0-80AAC418 003830 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80AAC418-80AAC460 003878 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80AAC460-80AAC864 0038C0 0404+00 1/1 0/0 0/0 .text
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

/* 80AAC864-80AAC868 003CC4 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80AAC868-80AAC964 003CC8 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80AAC964-80AAC968 003DC4 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80AAC968-80AAC9B0 003DC8 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80AAC9B0-80AACA20 003E10 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80AACA20-80AACA7C 003E80 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AACA7C-80AACAEC 003EDC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80AACAEC-80AACB34 003F4C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80AACB34-80AACC50 003F94 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80AACC50-80AACE58 0040B0 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80AACE58-80AACE5C 0042B8 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80AACE5C-80AACE64 0042BC 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80AACE64-80AACE6C 0042C4 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80AACE6C-80AACE74 0042CC 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80AACE74-80AACE7C 0042D4 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80AACE7C-80AACE94 0042DC 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80AACE94-80AACE98 0042F4 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80AACE98-80AACEA0 0042F8 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80AACEA0-80AACED0 004300 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80AACED0-80AACF00 004330 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80AACF00-80AACF04 004360 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AACF04-80AACF08 004364 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AACF08-80AACF0C 004368 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AACF0C-80AACF10 00436C 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AACF10-80AACF2C 004370 001C+00 2/2 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80AACF10(void* _this, int* param_0) {
    // NONMATCHING
}

/* 80AACF2C-80AACF68 00438C 003C+00 1/1 0/0 0/0 .text            cLib_getRndValue<f>__Fff */
extern "C" void func_80AACF2C(void* _this, f32 param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AADBD8-80AADBE4 00082C 000C+00 2/2 0/0 0/0 .data            __vt__18daNpc_Post_Param_c */
SECTION_DATA extern void* __vt__18daNpc_Post_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_Post_Param_cFv,
};

/* 80AACF68-80AACFF0 0043C8 0088+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_post_cpp */
void __sinit_d_a_npc_post_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80AACF68, __sinit_d_a_npc_post_cpp);
#pragma pop

/* 80AACFF0-80AAD0D0 004450 00E0+00 1/1 0/0 0/0 .text
 * __ct__12daNpc_Post_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Post_c::daNpc_Post_c(daNpcT_faceMotionAnmData_c const* param_0,
                               daNpcT_motionAnmData_c const* param_1,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                               int param_3,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                               int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80AAD0D0-80AAD0D8 004530 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__12daNpc_Post_cFv */
u16 daNpc_Post_c::getEyeballMaterialNo() {
    return true;
}

/* 80AAD0D8-80AAD0E0 004538 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__12daNpc_Post_cFv */
s32 daNpc_Post_c::getHeadJointNo() {
    return 4;
}

/* 80AAD0E0-80AAD0E8 004540 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__12daNpc_Post_cFv */
s32 daNpc_Post_c::getNeckJointNo() {
    return 3;
}

/* 80AAD0E8-80AAD0F0 004548 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__12daNpc_Post_cFv */
bool daNpc_Post_c::getBackboneJointNo() {
    return true;
}

/* 80AAD0F0-80AAD100 004550 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__12daNpc_Post_cFi
 */
void daNpc_Post_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80AAD100-80AAD110 004560 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__12daNpc_Post_cFi
 */
void daNpc_Post_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80AAD110-80AAD118 004570 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__12daNpc_Post_cFv
 */
s32 daNpc_Post_c::getFootLJointNo() {
    return 24;
}

/* 80AAD118-80AAD120 004578 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__12daNpc_Post_cFv
 */
s32 daNpc_Post_c::getFootRJointNo() {
    return 27;
}

/* 80AAD120-80AAD168 004580 0048+00 2/1 0/0 0/0 .text            __dt__18daNpc_Post_Param_cFv */
daNpc_Post_Param_c::~daNpc_Post_Param_c() {
    // NONMATCHING
}

/* 80AAD168-80AAD170 0045C8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80AAD168() {
    // NONMATCHING
}

/* 80AAD170-80AAD178 0045D0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80AAD170() {
    // NONMATCHING
}

/* 80AAD178-80AAD1D8 0045D8 0060+00 1/1 0/0 0/0 .text chkPointInArea__15daTag_EvtArea_cF4cXyz */
// void daTag_EvtArea_c::chkPointInArea(cXyz param_0) {
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AADC5C-80AADC60 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80AADC5C[4];
#pragma pop

/* 80AADC60-80AADC64 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80AADC60[4];
#pragma pop

/* 80AADC64-80AADC68 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80AADC64[4];
#pragma pop

/* 80AADC68-80AADC6C 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80AADC68[4];
#pragma pop

/* 80AADC6C-80AADC70 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80AADC6C[4];
#pragma pop

/* 80AADC70-80AADC74 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80AADC70[4];
#pragma pop

/* 80AADC74-80AADC78 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80AADC74[4];
#pragma pop

/* 80AADC78-80AADC7C 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80AADC78[4];
#pragma pop

/* 80AADC7C-80AADC80 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80AADC7C[4];
#pragma pop

/* 80AADC80-80AADC84 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80AADC80[4];
#pragma pop

/* 80AADC84-80AADC88 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80AADC84[4];
#pragma pop

/* 80AADC88-80AADC8C 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80AADC88[4];
#pragma pop

/* 80AADC8C-80AADC90 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80AADC8C[4];
#pragma pop

/* 80AADC90-80AADC94 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80AADC90[4];
#pragma pop

/* 80AADC94-80AADC98 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80AADC94[4];
#pragma pop

/* 80AADC98-80AADC9C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80AADC98[4];
#pragma pop

/* 80AADC9C-80AADCA0 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80AADC9C[4];
#pragma pop

/* 80AADCA0-80AADCA4 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80AADCA0[4];
#pragma pop

/* 80AADCA4-80AADCA8 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80AADCA4[4];
#pragma pop

/* 80AADCA8-80AADCAC 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80AADCA8[4];
#pragma pop

/* 80AADCAC-80AADCB0 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80AADCAC[4];
#pragma pop

/* 80AADCB0-80AADCB4 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80AADCB0[4];
#pragma pop

/* 80AADCB4-80AADCB8 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80AADCB4[4];
#pragma pop

/* 80AADCB8-80AADCBC 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80AADCB8[4];
#pragma pop

/* 80AADCBC-80AADCC0 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80AADCBC[4];
#pragma pop

/* 80AAD34C-80AAD34C 000160 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
