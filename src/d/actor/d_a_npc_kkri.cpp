/**
 * @file d_a_npc_kkri.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_kkri.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__12daNpc_Kkri_cFv();
extern "C" void create__12daNpc_Kkri_cFv();
extern "C" void CreateHeap__12daNpc_Kkri_cFv();
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
extern "C" void Delete__12daNpc_Kkri_cFv();
extern "C" void Execute__12daNpc_Kkri_cFv();
extern "C" void Draw__12daNpc_Kkri_cFv();
extern "C" void createHeapCallBack__12daNpc_Kkri_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__12daNpc_Kkri_cFP8J3DJointi();
extern "C" void srchYm__12daNpc_Kkri_cFPvPv();
extern "C" void getType__12daNpc_Kkri_cFv();
extern "C" void isDelete__12daNpc_Kkri_cFv();
extern "C" void reset__12daNpc_Kkri_cFv();
extern "C" void checkChangeEvt__12daNpc_Kkri_cFv();
extern "C" void setParam__12daNpc_Kkri_cFv();
extern "C" void setAfterTalkMotion__12daNpc_Kkri_cFv();
extern "C" void srchActors__12daNpc_Kkri_cFv();
extern "C" void evtTalk__12daNpc_Kkri_cFv();
extern "C" void evtCutProc__12daNpc_Kkri_cFv();
extern "C" void action__12daNpc_Kkri_cFv();
extern "C" void beforeMove__12daNpc_Kkri_cFv();
extern "C" void setAttnPos__12daNpc_Kkri_cFv();
extern "C" void setCollision__12daNpc_Kkri_cFv();
extern "C" bool drawDbgInfo__12daNpc_Kkri_cFv();
extern "C" void selectAction__12daNpc_Kkri_cFv();
extern "C" void chkAction__12daNpc_Kkri_cFM12daNpc_Kkri_cFPCvPvPv_i();
extern "C" void setAction__12daNpc_Kkri_cFM12daNpc_Kkri_cFPCvPvPv_i();
extern "C" void cutConversationAboutSoup__12daNpc_Kkri_cFi();
extern "C" void cutYmLook__12daNpc_Kkri_cFi();
extern "C" void sleep__12daNpc_Kkri_cFv();
extern "C" void wait__12daNpc_Kkri_cFPv();
extern "C" void sitWait1__12daNpc_Kkri_cFPv();
extern "C" void fearWait__12daNpc_Kkri_cFPv();
extern "C" void talk__12daNpc_Kkri_cFPv();
extern "C" static void daNpc_Kkri_Create__FPv();
extern "C" static void daNpc_Kkri_Delete__FPv();
extern "C" static void daNpc_Kkri_Execute__FPv();
extern "C" static void daNpc_Kkri_Draw__FPv();
extern "C" static bool daNpc_Kkri_IsDelete__FPv();
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
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" void afterJntAnm__8daNpcT_cFi();
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawOtherMdl__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_805531D0(void* _this, int*);
extern "C" void func_805531EC(void* _this, int, int);
extern "C" void __sinit_d_a_npc_kkri_cpp();
extern "C" void
__ct__12daNpc_Kkri_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__12daNpc_Kkri_cFv();
extern "C" s32 getHeadJointNo__12daNpc_Kkri_cFv();
extern "C" s32 getNeckJointNo__12daNpc_Kkri_cFv();
extern "C" bool getBackboneJointNo__12daNpc_Kkri_cFv();
extern "C" void checkChangeJoint__12daNpc_Kkri_cFi();
extern "C" void checkRemoveJoint__12daNpc_Kkri_cFi();
extern "C" void __dt__18daNpc_Kkri_Param_cFv();
extern "C" static void func_8055346C();
extern "C" static void func_80553474();
extern "C" u8 const m__18daNpc_Kkri_Param_c[140];
extern "C" extern char const* const d_a_npc_kkri__stringBase0;
extern "C" void* mCutNameList__12daNpc_Kkri_c[3];
extern "C" u8 mCutList__12daNpc_Kkri_c[36];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fpcEx_IsExist__FUi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isSwitch__12dSv_danBit_cCFi();
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
extern "C" void checkEndSequence__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__13daNpcT_Path_cFv();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz();
extern "C" void calcJntRad__15daNpcT_JntAnm_cFfff();
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
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_onTmpBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void dKy_getdaytime_hour__Fv();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
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
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
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
extern "C" u8 mFindActorPtrs__8daNpcT_c[200];
extern "C" u8 mFindCount__8daNpcT_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 805535A4-805535A4 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_805535A4 = "";
SECTION_DEAD static char const* const stringBase_805535A5 = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_805535B5 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_805535C1 = "CONVERSATION_ABOUT_SOUP";
SECTION_DEAD static char const* const stringBase_805535D9 = "YM_LOOK";
SECTION_DEAD static char const* const stringBase_805535E1 = "Kkri";
SECTION_DEAD static char const* const stringBase_805535E6 = "Kkri_TW";
#pragma pop

/* 80553618-80553628 000020 0010+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[16] = {
    0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02,
};

/* 80553628-80553650 -00001 0028+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[10] = {
    (void*)&d_a_npc_kkri__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_kkri__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_kkri__stringBase0) + 0x11),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_kkri__stringBase0) + 0x1D),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kkri__stringBase0) + 0x35),
    (void*)0x00000002,
};
#pragma pop

/* 80553650-8055365C -00001 000C+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[3] = {
    (void*)&d_a_npc_kkri__stringBase0,
    (void*)(((char*)&d_a_npc_kkri__stringBase0) + 0x3D),
    (void*)(((char*)&d_a_npc_kkri__stringBase0) + 0x42),
};

/* 8055365C-80553660 000064 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80553660-80553664 000068 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u8 l_loadResPtrn1[3 + 1 /* padding */] = {
    0x01,
    0x02,
    0xFF,
    /* padding */
    0x00,
};

/* 80553664-80553670 -00001 000C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[3] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn1,
    (void*)&l_loadResPtrn1,
};

/* 80553670-80553814 000078 01A4+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[420] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x31,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x34,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x35, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80553814-80553A60 00021C 024C+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[588] = {
    0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x26,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x26,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x26,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x28,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x26,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80553A60-80553B50 000468 00F0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[240] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x01, 0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80553B50-80553C80 000558 0130+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[304] = {
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x01, 0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x01, 0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x01, 0x00, 0x11, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0x00, 0x01, 0x00, 0x13, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0x00, 0x0E, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80553C80-80553C8C -00001 000C+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_Kkri_c */
SECTION_DATA void* daNpc_Kkri_c::mCutNameList[3] = {
    (void*)&d_a_npc_kkri__stringBase0,
    (void*)(((char*)&d_a_npc_kkri__stringBase0) + 0x1D),
    (void*)(((char*)&d_a_npc_kkri__stringBase0) + 0x35),
};

/* 80553C8C-80553C98 -00001 000C+00 0/1 0/0 0/0 .data            @3849 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3849[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutSoup__12daNpc_Kkri_cFi,
};
#pragma pop

/* 80553C98-80553CA4 -00001 000C+00 0/1 0/0 0/0 .data            @3850 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3850[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutYmLook__12daNpc_Kkri_cFi,
};
#pragma pop

/* 80553CA4-80553CC8 0006AC 0024+00 1/2 0/0 0/0 .data            mCutList__12daNpc_Kkri_c */
SECTION_DATA u8 daNpc_Kkri_c::mCutList[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80553CC8-80553CD4 -00001 000C+00 1/1 0/0 0/0 .data            @4531 */
SECTION_DATA static void* lit_4531[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Kkri_cFPv,
};

/* 80553CD4-80553CE0 -00001 000C+00 1/1 0/0 0/0 .data            @4635 */
SECTION_DATA static void* lit_4635[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Kkri_cFPv,
};

/* 80553CE0-80553CEC -00001 000C+00 1/1 0/0 0/0 .data            @4640 */
SECTION_DATA static void* lit_4640[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Kkri_cFPv,
};

/* 80553CEC-80553CF8 -00001 000C+00 0/1 0/0 0/0 .data            @4921 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4921[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sitWait1__12daNpc_Kkri_cFPv,
};
#pragma pop

/* 80553CF8-80553D04 -00001 000C+00 0/1 0/0 0/0 .data            @4923 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4923[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fearWait__12daNpc_Kkri_cFPv,
};
#pragma pop

/* 80553D04-80553D10 -00001 000C+00 0/1 0/0 0/0 .data            @4925 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4925[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_Kkri_cFPv,
};
#pragma pop

/* 80553D10-80553D30 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Kkri_MethodTable */
static actor_method_class daNpc_Kkri_MethodTable = {
    (process_method_func)daNpc_Kkri_Create__FPv,
    (process_method_func)daNpc_Kkri_Delete__FPv,
    (process_method_func)daNpc_Kkri_Execute__FPv,
    (process_method_func)daNpc_Kkri_IsDelete__FPv,
    (process_method_func)daNpc_Kkri_Draw__FPv,
};

/* 80553D30-80553D60 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KKRI */
extern actor_process_profile_definition g_profile_NPC_KKRI = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_KKRI,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpc_Kkri_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  346,                     // mPriority
  &daNpc_Kkri_MethodTable, // sub_method
  0x00040107,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80553D60-80553D6C 000768 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80553D6C-80553D78 000774 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80553D78-80553D9C 000780 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80553474,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8055346C,
};

/* 80553D9C-80553DA8 0007A4 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80553DA8-80553DB4 0007B0 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80553DB4-80553DC0 0007BC 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80553DC0-80553DCC 0007C8 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80553DCC-80553DD8 0007D4 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80553DD8-80553DE4 0007E0 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80553DE4-80553DF0 0007EC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80553DF0-80553DFC 0007F8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80553DFC-80553E08 000804 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80553E08-80553ECC 000810 00C4+00 2/2 0/0 0/0 .data            __vt__12daNpc_Kkri_c */
SECTION_DATA extern void* __vt__12daNpc_Kkri_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daNpc_Kkri_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__12daNpc_Kkri_cFi,
    (void*)checkRemoveJoint__12daNpc_Kkri_cFi,
    (void*)getBackboneJointNo__12daNpc_Kkri_cFv,
    (void*)getNeckJointNo__12daNpc_Kkri_cFv,
    (void*)getHeadJointNo__12daNpc_Kkri_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__12daNpc_Kkri_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__8daNpcT_cFi,
    (void*)setParam__12daNpc_Kkri_cFv,
    (void*)checkChangeEvt__12daNpc_Kkri_cFv,
    (void*)evtTalk__12daNpc_Kkri_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__12daNpc_Kkri_cFv,
    (void*)setAfterTalkMotion__12daNpc_Kkri_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__12daNpc_Kkri_cFv,
    (void*)beforeMove__12daNpc_Kkri_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__12daNpc_Kkri_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__12daNpc_Kkri_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__12daNpc_Kkri_cFv,
    (void*)drawOtherMdl__8daNpcT_cFv,
    (void*)drawGhost__8daNpcT_cFv,
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

/* 8054F3AC-8054F4F8 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__12daNpc_Kkri_cFv */
daNpc_Kkri_c::~daNpc_Kkri_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80553490-8055351C 000000 008C+00 10/10 0/0 0/0 .rodata          m__18daNpc_Kkri_Param_c */
SECTION_RODATA u8 const daNpc_Kkri_Param_c::m[140] = {
    0x43, 0x34, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x2A, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80553490, &daNpc_Kkri_Param_c::m);

/* 8055351C-80553528 00008C 000C+00 0/1 0/0 0/0 .rodata          heapSize$4005 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[12] = {
    0x00, 0x00, 0x42, 0xD0, 0x00, 0x00, 0x42, 0x10, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8055351C, &heapSize);
#pragma pop

/* 80553528-8055352C 000098 0004+00 0/1 0/0 0/0 .rodata          @4077 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4077 = -200.0f;
COMPILER_STRIP_GATE(0x80553528, &lit_4077);
#pragma pop

/* 8055352C-80553530 00009C 0004+00 0/1 0/0 0/0 .rodata          @4078 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4078 = -100.0f;
COMPILER_STRIP_GATE(0x8055352C, &lit_4078);
#pragma pop

/* 80553530-80553534 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4079 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4079 = 200.0f;
COMPILER_STRIP_GATE(0x80553530, &lit_4079);
#pragma pop

/* 80553534-80553538 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4080 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4080 = 300.0f;
COMPILER_STRIP_GATE(0x80553534, &lit_4080);
#pragma pop

/* 80553538-8055353C 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4081 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4081 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80553538, &lit_4081);
#pragma pop

/* 8054F4F8-8054F7D0 000238 02D8+00 1/1 0/0 0/0 .text            create__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055353C-80553540 0000AC 0004+00 6/13 0/0 0/0 .rodata          @4243 */
SECTION_RODATA static u8 const lit_4243[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8055353C, &lit_4243);

/* 80553540-80553544 0000B0 0004+00 0/2 0/0 0/0 .rodata          @4244 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4244 = 65536.0f;
COMPILER_STRIP_GATE(0x80553540, &lit_4244);
#pragma pop

/* 80553544-80553548 0000B4 0004+00 0/3 0/0 0/0 .rodata          @4245 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4245 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80553544, &lit_4245);
#pragma pop

/* 80553548-8055354C 0000B8 0004+00 2/4 0/0 0/0 .rodata          @4391 */
SECTION_RODATA static f32 const lit_4391 = 1.0f;
COMPILER_STRIP_GATE(0x80553548, &lit_4391);

/* 8054F7D0-8054FA54 000510 0284+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::CreateHeap() {
    // NONMATCHING
}

/* 8054FA54-8054FA90 000794 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 8054FA90-8054FAA8 0007D0 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 8054FAA8-8054FAE4 0007E8 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 8054FAE4-8054FAFC 000824 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 8054FAFC-8054FB44 00083C 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 8054FB44-8054FB68 000884 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 8054FB68-8054FBA4 0008A8 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 8054FBA4-8054FBBC 0008E4 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 8054FBBC-8054FBF8 0008FC 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 8054FBF8-8054FC10 000938 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 8054FC10-8054FC44 000950 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::Delete() {
    // NONMATCHING
}

/* 8054FC44-8054FC64 000984 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055354C-80553550 0000BC 0004+00 1/1 0/0 0/0 .rodata          @4441 */
SECTION_RODATA static f32 const lit_4441 = 100.0f;
COMPILER_STRIP_GATE(0x8055354C, &lit_4441);

/* 8054FC64-8054FD00 0009A4 009C+00 1/1 0/0 0/0 .text            Draw__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::Draw() {
    // NONMATCHING
}

/* 8054FD00-8054FD20 000A40 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpc_Kkri_cFP10fopAc_ac_c             */
void daNpc_Kkri_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8054FD20-8054FD78 000A60 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__12daNpc_Kkri_cFP8J3DJointi                */
void daNpc_Kkri_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 8054FD78-8054FE20 000AB8 00A8+00 2/2 0/0 0/0 .text            srchYm__12daNpc_Kkri_cFPvPv */
void daNpc_Kkri_c::srchYm(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8054FE20-8054FE58 000B60 0038+00 1/1 0/0 0/0 .text            getType__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::getType() {
    // NONMATCHING
}

/* 8054FE58-8054FE8C 000B98 0034+00 1/1 0/0 0/0 .text            isDelete__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::isDelete() {
    // NONMATCHING
}

/* 8054FE8C-8054FFEC 000BCC 0160+00 1/1 0/0 0/0 .text            reset__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::reset() {
    // NONMATCHING
}

/* 8054FFEC-805500A0 000D2C 00B4+00 1/0 0/0 0/0 .text            checkChangeEvt__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::checkChangeEvt() {
    // NONMATCHING
}

/* 805500A0-80550270 000DE0 01D0+00 1/0 0/0 0/0 .text            setParam__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::setParam() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80553550-80553554 0000C0 0004+00 3/5 0/0 0/0 .rodata          @4621 */
SECTION_RODATA static f32 const lit_4621 = -1.0f;
COMPILER_STRIP_GATE(0x80553550, &lit_4621);

/* 80550270-8055032C 000FB0 00BC+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 8055032C-80550398 00106C 006C+00 1/1 0/0 0/0 .text            srchActors__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::srchActors() {
    // NONMATCHING
}

/* 80550398-80550438 0010D8 00A0+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::evtTalk() {
    // NONMATCHING
}

/* 80550438-80550500 001178 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::evtCutProc() {
    // NONMATCHING
}

/* 80550500-805505F8 001240 00F8+00 1/0 0/0 0/0 .text            action__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::action() {
    // NONMATCHING
}

/* 805505F8-805506BC 001338 00C4+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80553554-80553558 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4792 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4792 = -30.0f;
COMPILER_STRIP_GATE(0x80553554, &lit_4792);
#pragma pop

/* 80553558-8055355C 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4793 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4793 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80553558, &lit_4793);
#pragma pop

/* 8055355C-80553560 0000CC 0004+00 0/2 0/0 0/0 .rodata          @4794 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4794 = 30.0f;
COMPILER_STRIP_GATE(0x8055355C, &lit_4794);
#pragma pop

/* 80553560-80553564 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4795 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4795 = 160.0f;
COMPILER_STRIP_GATE(0x80553560, &lit_4795);
#pragma pop

/* 80553564-80553568 0000D4 0004+00 0/2 0/0 0/0 .rodata          @4796 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4796 = -20.0f;
COMPILER_STRIP_GATE(0x80553564, &lit_4796);
#pragma pop

/* 80553568-80553570 0000D8 0004+04 0/1 0/0 0/0 .rodata          @4797 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4797[1 + 1 /* padding */] = {
    60.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80553568, &lit_4797);
#pragma pop

/* 80553570-80553578 0000E0 0008+00 2/4 0/0 0/0 .rodata          @4799 */
SECTION_RODATA static u8 const lit_4799[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80553570, &lit_4799);

/* 805506BC-80550ADC 0013FC 0420+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80553578-80553580 0000E8 0008+00 0/1 0/0 0/0 .rodata          @4857 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4857[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80553578, &lit_4857);
#pragma pop

/* 80553580-80553588 0000F0 0008+00 0/1 0/0 0/0 .rodata          @4858 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4858[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80553580, &lit_4858);
#pragma pop

/* 80553588-80553590 0000F8 0008+00 0/1 0/0 0/0 .rodata          @4859 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4859[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80553588, &lit_4859);
#pragma pop

/* 80553590-80553594 000100 0004+00 0/1 0/0 0/0 .rodata          @4908 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4908 = 140.0f;
COMPILER_STRIP_GATE(0x80553590, &lit_4908);
#pragma pop

/* 80553594-80553598 000104 0004+00 0/1 0/0 0/0 .rodata          @4909 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4909 = 40.0f;
COMPILER_STRIP_GATE(0x80553594, &lit_4909);
#pragma pop

/* 80553598-8055359C 000108 0004+00 0/1 0/0 0/0 .rodata          @4910 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4910 = 20.0f;
COMPILER_STRIP_GATE(0x80553598, &lit_4910);
#pragma pop

/* 8055359C-805535A0 00010C 0004+00 0/1 0/0 0/0 .rodata          @4911 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4911 = 150.0f;
COMPILER_STRIP_GATE(0x8055359C, &lit_4911);
#pragma pop

/* 80550ADC-80550CA0 00181C 01C4+00 1/0 0/0 0/0 .text            setCollision__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::setCollision() {
    // NONMATCHING
}

/* 80550CA0-80550CA8 0019E0 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_Kkri_cFv */
bool daNpc_Kkri_c::drawDbgInfo() {
    return false;
}

/* 80550CA8-80550D44 0019E8 009C+00 1/1 0/0 0/0 .text            selectAction__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::selectAction() {
    // NONMATCHING
}

/* 80550D44-80550D70 001A84 002C+00 2/2 0/0 0/0 .text
 * chkAction__12daNpc_Kkri_cFM12daNpc_Kkri_cFPCvPvPv_i          */
void daNpc_Kkri_c::chkAction(int (daNpc_Kkri_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80550D70-80550E18 001AB0 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_Kkri_cFM12daNpc_Kkri_cFPCvPvPv_i          */
void daNpc_Kkri_c::setAction(int (daNpc_Kkri_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805535A4-805535A4 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_805535EE = "prm";
SECTION_DEAD static char const* const stringBase_805535F2 = "timer";
#pragma pop

/* 80550E18-80550F70 001B58 0158+00 1/0 0/0 0/0 .text cutConversationAboutSoup__12daNpc_Kkri_cFi
 */
void daNpc_Kkri_c::cutConversationAboutSoup(int param_0) {
    // NONMATCHING
}

/* 80550F70-80551084 001CB0 0114+00 1/0 0/0 0/0 .text            cutYmLook__12daNpc_Kkri_cFi */
void daNpc_Kkri_c::cutYmLook(int param_0) {
    // NONMATCHING
}

/* 80551084-805512E0 001DC4 025C+00 1/1 0/0 0/0 .text            sleep__12daNpc_Kkri_cFv */
void daNpc_Kkri_c::sleep() {
    // NONMATCHING
}

/* 805512E0-80551538 002020 0258+00 1/0 0/0 0/0 .text            wait__12daNpc_Kkri_cFPv */
void daNpc_Kkri_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80551538-80551A4C 002278 0514+00 1/0 0/0 0/0 .text            sitWait1__12daNpc_Kkri_cFPv */
void daNpc_Kkri_c::sitWait1(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805535A0-805535A4 000110 0004+00 0/1 0/0 0/0 .rodata          @5390 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5390 = 1000000000.0f;
COMPILER_STRIP_GATE(0x805535A0, &lit_5390);
#pragma pop

/* 80551A4C-80551DA4 00278C 0358+00 1/0 0/0 0/0 .text            fearWait__12daNpc_Kkri_cFPv */
void daNpc_Kkri_c::fearWait(void* param_0) {
    // NONMATCHING
}

/* 80551DA4-805520A0 002AE4 02FC+00 3/0 0/0 0/0 .text            talk__12daNpc_Kkri_cFPv */
void daNpc_Kkri_c::talk(void* param_0) {
    // NONMATCHING
}

/* 805520A0-805520C0 002DE0 0020+00 1/0 0/0 0/0 .text            daNpc_Kkri_Create__FPv */
static void daNpc_Kkri_Create(void* param_0) {
    // NONMATCHING
}

/* 805520C0-805520E0 002E00 0020+00 1/0 0/0 0/0 .text            daNpc_Kkri_Delete__FPv */
static void daNpc_Kkri_Delete(void* param_0) {
    // NONMATCHING
}

/* 805520E0-80552100 002E20 0020+00 1/0 0/0 0/0 .text            daNpc_Kkri_Execute__FPv */
static void daNpc_Kkri_Execute(void* param_0) {
    // NONMATCHING
}

/* 80552100-80552120 002E40 0020+00 1/0 0/0 0/0 .text            daNpc_Kkri_Draw__FPv */
static void daNpc_Kkri_Draw(void* param_0) {
    // NONMATCHING
}

/* 80552120-80552128 002E60 0008+00 1/0 0/0 0/0 .text            daNpc_Kkri_IsDelete__FPv */
static bool daNpc_Kkri_IsDelete(void* param_0) {
    return true;
}

/* 80552128-80552158 002E68 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80552158-805521A0 002E98 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 805521A0-80552528 002EE0 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80552528-80552564 003268 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80552564-805525A0 0032A4 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 805525A0-805525E8 0032E0 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 805525E8-80552630 003328 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80552630-8055266C 003370 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 8055266C-805526B4 0033AC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 805526B4-805526FC 0033F4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 805526FC-80552B00 00343C 0404+00 1/1 0/0 0/0 .text
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

/* 80552B00-80552B04 003840 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80552B04-80552C00 003844 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80552C00-80552C04 003940 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80552C04-80552C4C 003944 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80552C4C-80552CBC 00398C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80552CBC-80552D18 0039FC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80552D18-80552D88 003A58 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80552D88-80552DD0 003AC8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80552DD0-80552EEC 003B10 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80552EEC-805530F4 003C2C 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 805530F4-805530F8 003E34 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80553108-80553110 003E48 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80553110-80553118 003E50 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 8055311C-80553124 003E5C 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80553128-80553130 003E68 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80553130-80553148 003E70 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80553148-8055314C 003E88 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 8055314C-80553150 003E8C 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80553150-80553158 003E90 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80553158-80553160 003E98 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80553160-80553190 003EA0 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80553190-805531C0 003ED0 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 805531C0-805531C4 003F00 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 805531C4-805531C8 003F04 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 805531C8-805531CC 003F08 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 805531CC-805531D0 003F0C 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 805531D0-805531EC 003F10 001C+00 3/3 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_805531D0(void* _this, int* param_0) {
    // NONMATCHING
}

/* 805531EC-80553268 003F2C 007C+00 1/1 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
extern "C" void func_805531EC(void* _this, int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80553ECC-80553ED8 0008D4 000C+00 2/2 0/0 0/0 .data            __vt__18daNpc_Kkri_Param_c */
SECTION_DATA extern void* __vt__18daNpc_Kkri_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_Kkri_Param_cFv,
};

/* 80553EE0-80553EEC 000008 000C+00 1/1 0/0 0/0 .bss             @3851 */
static u8 lit_3851[12];

/* 80553EEC-80553EF0 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80553268-80553304 003FA8 009C+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_kkri_cpp */
void __sinit_d_a_npc_kkri_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80553268, __sinit_d_a_npc_kkri_cpp);
#pragma pop

/* 80553304-805533E4 004044 00E0+00 1/1 0/0 0/0 .text
 * __ct__12daNpc_Kkri_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Kkri_c::daNpc_Kkri_c(daNpcT_faceMotionAnmData_c const* param_0,
                               daNpcT_motionAnmData_c const* param_1,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                               int param_3,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                               int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 805533E4-805533EC 004124 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__12daNpc_Kkri_cFv */
u16 daNpc_Kkri_c::getEyeballMaterialNo() {
    return 2;
}

/* 805533EC-805533F4 00412C 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__12daNpc_Kkri_cFv */
s32 daNpc_Kkri_c::getHeadJointNo() {
    return 4;
}

/* 805533F4-805533FC 004134 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__12daNpc_Kkri_cFv */
s32 daNpc_Kkri_c::getNeckJointNo() {
    return 3;
}

/* 805533FC-80553404 00413C 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__12daNpc_Kkri_cFv */
bool daNpc_Kkri_c::getBackboneJointNo() {
    return true;
}

/* 80553404-80553414 004144 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__12daNpc_Kkri_cFi
 */
void daNpc_Kkri_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80553414-80553424 004154 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__12daNpc_Kkri_cFi
 */
void daNpc_Kkri_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80553424-8055346C 004164 0048+00 2/1 0/0 0/0 .text            __dt__18daNpc_Kkri_Param_cFv */
daNpc_Kkri_Param_c::~daNpc_Kkri_Param_c() {
    // NONMATCHING
}

/* 8055346C-80553474 0041AC 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8055346C() {
    // NONMATCHING
}

/* 80553474-8055347C 0041B4 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80553474() {
    // NONMATCHING
}

/* 805535A4-805535A4 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
