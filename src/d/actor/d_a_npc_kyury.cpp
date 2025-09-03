/**
 * @file d_a_npc_kyury.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_kyury.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__13daNpc_Kyury_cFv();
extern "C" void create__13daNpc_Kyury_cFv();
extern "C" void CreateHeap__13daNpc_Kyury_cFv();
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
extern "C" void Delete__13daNpc_Kyury_cFv();
extern "C" void Execute__13daNpc_Kyury_cFv();
extern "C" void Draw__13daNpc_Kyury_cFv();
extern "C" void createHeapCallBack__13daNpc_Kyury_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__13daNpc_Kyury_cFP8J3DJointi();
extern "C" void getType__13daNpc_Kyury_cFv();
extern "C" void isDelete__13daNpc_Kyury_cFv();
extern "C" void reset__13daNpc_Kyury_cFv();
extern "C" void afterJntAnm__13daNpc_Kyury_cFi();
extern "C" void setParam__13daNpc_Kyury_cFv();
extern "C" void checkChangeEvt__13daNpc_Kyury_cFv();
extern "C" void setAfterTalkMotion__13daNpc_Kyury_cFv();
extern "C" void srchActors__13daNpc_Kyury_cFv();
extern "C" void evtTalk__13daNpc_Kyury_cFv();
extern "C" void evtCutProc__13daNpc_Kyury_cFv();
extern "C" void action__13daNpc_Kyury_cFv();
extern "C" void beforeMove__13daNpc_Kyury_cFv();
extern "C" void setAttnPos__13daNpc_Kyury_cFv();
extern "C" void setCollision__13daNpc_Kyury_cFv();
extern "C" bool drawDbgInfo__13daNpc_Kyury_cFv();
extern "C" void drawOtherMdl__13daNpc_Kyury_cFv();
extern "C" void selectAction__13daNpc_Kyury_cFv();
extern "C" void chkAction__13daNpc_Kyury_cFM13daNpc_Kyury_cFPCvPvPv_i();
extern "C" void setAction__13daNpc_Kyury_cFM13daNpc_Kyury_cFPCvPvPv_i();
extern "C" void cutConversation__13daNpc_Kyury_cFi();
extern "C" void wait__13daNpc_Kyury_cFPv();
extern "C" void talk__13daNpc_Kyury_cFPv();
extern "C" static void daNpc_Kyury_Create__FPv();
extern "C" static void daNpc_Kyury_Delete__FPv();
extern "C" static void daNpc_Kyury_Execute__FPv();
extern "C" static void daNpc_Kyury_Draw__FPv();
extern "C" static bool daNpc_Kyury_IsDelete__FPv();
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
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
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
extern "C" void __sinit_d_a_npc_kyury_cpp();
extern "C" void
__ct__13daNpc_Kyury_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__13daNpc_Kyury_cFv();
extern "C" s32 getHeadJointNo__13daNpc_Kyury_cFv();
extern "C" s32 getNeckJointNo__13daNpc_Kyury_cFv();
extern "C" bool getBackboneJointNo__13daNpc_Kyury_cFv();
extern "C" void checkChangeJoint__13daNpc_Kyury_cFi();
extern "C" void checkRemoveJoint__13daNpc_Kyury_cFi();
extern "C" void __dt__19daNpc_Kyury_Param_cFv();
extern "C" static void func_80A63888();
extern "C" static void func_80A63890();
extern "C" u8 const m__19daNpc_Kyury_Param_c[140];
extern "C" extern char const* const d_a_npc_kyury__stringBase0;
extern "C" void* mCutNameList__13daNpc_Kyury_c[2];
extern "C" u8 mCutList__13daNpc_Kyury_c[24];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setPt2__14dEvt_control_cFPv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
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
extern "C" void evtChange__8daNpcT_cFv();
extern "C" void clrParam__8daNpcT_cFv();
extern "C" void setFaceMotionAnm__8daNpcT_cFib();
extern "C" void setMotionAnm__8daNpcT_cFifi();
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
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
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
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80A639C4-80A639C4 000118 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A639C4 = "";
SECTION_DEAD static char const* const stringBase_80A639C5 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80A639D1 = "FIRST_CONVERSATION";
SECTION_DEAD static char const* const stringBase_80A639E4 = "Kyury";
SECTION_DEAD static char const* const stringBase_80A639EA = "Kyury1";
SECTION_DEAD static char const* const stringBase_80A639F1 = "CONVERSATION";
#pragma pop

/* 80A63A34-80A63A4C 000020 0018+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[24] = {
    0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2A,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x01,
};

/* 80A63A4C-80A63A64 -00001 0018+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[6] = {
    (void*)&d_a_npc_kyury__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_kyury__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_kyury__stringBase0) + 0xD),
    (void*)0x00000002,
};
#pragma pop

/* 80A63A64-80A63A70 -00001 000C+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[3] = {
    (void*)&d_a_npc_kyury__stringBase0,
    (void*)(((char*)&d_a_npc_kyury__stringBase0) + 0x20),
    (void*)(((char*)&d_a_npc_kyury__stringBase0) + 0x26),
};

/* 80A63A70-80A63A74 00005C 0002+02 0/0 0/0 0/0 .data            l_loadResPtrn0 */
#pragma push
#pragma force_active on
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};
#pragma pop

/* 80A63A74-80A63A78 000060 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn9 */
SECTION_DATA static u8 l_loadResPtrn9[3 + 1 /* padding */] = {
    0x01,
    0x02,
    0xFF,
    /* padding */
    0x00,
};

/* 80A63A78-80A63A88 -00001 0010+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[4] = {
    (void*)&l_loadResPtrn9,
    (void*)&l_loadResPtrn9,
    (void*)&l_loadResPtrn9,
    (void*)&l_loadResPtrn9,
};

/* 80A63A88-80A63C64 000074 01DC+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[476] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x35,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x32,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x33,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3A,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A63C64-80A63E24 000250 01C0+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[448] = {
    0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x25,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x26,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80A63E24-80A63F24 000410 0100+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[256] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x07, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x01, 0x00, 0x10, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x09, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x01, 0x00, 0x0E, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0x00, 0x0E, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A63F24-80A63FF4 000510 00D0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[208] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x09, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x01, 0x00, 0x0E, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x01, 0x00, 0x0D, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A63FF4-80A63FFC -00001 0008+00 1/1 0/0 0/0 .data            mCutNameList__13daNpc_Kyury_c */
SECTION_DATA void* daNpc_Kyury_c::mCutNameList[2] = {
    (void*)&d_a_npc_kyury__stringBase0,
    (void*)(((char*)&d_a_npc_kyury__stringBase0) + 0x2D),
};

/* 80A63FFC-80A64008 -00001 000C+00 1/1 0/0 0/0 .data            @3813 */
SECTION_DATA static void* lit_3813[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversation__13daNpc_Kyury_cFi,
};

/* 80A64008-80A64020 0005F4 0018+00 2/2 0/0 0/0 .data            mCutList__13daNpc_Kyury_c */
SECTION_DATA u8 daNpc_Kyury_c::mCutList[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A64020-80A6402C -00001 000C+00 1/1 0/0 0/0 .data            @4537 */
SECTION_DATA static void* lit_4537[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Kyury_cFPv,
};

/* 80A6402C-80A64038 -00001 000C+00 1/1 0/0 0/0 .data            @4596 */
SECTION_DATA static void* lit_4596[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Kyury_cFPv,
};

/* 80A64038-80A64044 -00001 000C+00 1/1 0/0 0/0 .data            @4601 */
SECTION_DATA static void* lit_4601[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Kyury_cFPv,
};

/* 80A64044-80A64050 -00001 000C+00 1/1 0/0 0/0 .data            @4897 */
SECTION_DATA static void* lit_4897[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_Kyury_cFPv,
};

/* 80A64050-80A64070 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Kyury_MethodTable */
static actor_method_class daNpc_Kyury_MethodTable = {
    (process_method_func)daNpc_Kyury_Create__FPv,
    (process_method_func)daNpc_Kyury_Delete__FPv,
    (process_method_func)daNpc_Kyury_Execute__FPv,
    (process_method_func)daNpc_Kyury_IsDelete__FPv,
    (process_method_func)daNpc_Kyury_Draw__FPv,
};

/* 80A64070-80A640A0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KYURY */
extern actor_process_profile_definition g_profile_NPC_KYURY = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_KYURY,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_Kyury_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  352,                      // mPriority
  &daNpc_Kyury_MethodTable, // sub_method
  0x00040108,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80A640A0-80A640AC 00068C 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80A640AC-80A640B8 000698 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A640B8-80A640DC 0006A4 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A63890,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A63888,
};

/* 80A640DC-80A640E8 0006C8 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80A640E8-80A640F4 0006D4 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80A640F4-80A64100 0006E0 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80A64100-80A6410C 0006EC 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80A6410C-80A64118 0006F8 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80A64118-80A64124 000704 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80A64124-80A64130 000710 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80A64130-80A6413C 00071C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80A6413C-80A64148 000728 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80A64148-80A6420C 000734 00C4+00 2/2 0/0 0/0 .data            __vt__13daNpc_Kyury_c */
SECTION_DATA extern void* __vt__13daNpc_Kyury_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpc_Kyury_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__13daNpc_Kyury_cFi,
    (void*)checkRemoveJoint__13daNpc_Kyury_cFi,
    (void*)getBackboneJointNo__13daNpc_Kyury_cFv,
    (void*)getNeckJointNo__13daNpc_Kyury_cFv,
    (void*)getHeadJointNo__13daNpc_Kyury_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__13daNpc_Kyury_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__13daNpc_Kyury_cFi,
    (void*)setParam__13daNpc_Kyury_cFv,
    (void*)checkChangeEvt__13daNpc_Kyury_cFv,
    (void*)evtTalk__13daNpc_Kyury_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__13daNpc_Kyury_cFv,
    (void*)setAfterTalkMotion__13daNpc_Kyury_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__13daNpc_Kyury_cFv,
    (void*)beforeMove__13daNpc_Kyury_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__13daNpc_Kyury_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__13daNpc_Kyury_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__13daNpc_Kyury_cFv,
    (void*)drawOtherMdl__13daNpc_Kyury_cFv,
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

/* 80A600CC-80A60218 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__13daNpc_Kyury_cFv */
daNpc_Kyury_c::~daNpc_Kyury_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A638AC-80A63938 000000 008C+00 9/9 0/0 0/0 .rodata          m__19daNpc_Kyury_Param_c */
SECTION_RODATA u8 const daNpc_Kyury_Param_c::m[140] = {
    0x43, 0x48, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x3E, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A638AC, &daNpc_Kyury_Param_c::m);

/* 80A63938-80A6393C 00008C 0004+00 0/1 0/0 0/0 .rodata          @4039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4039 = -200.0f;
COMPILER_STRIP_GATE(0x80A63938, &lit_4039);
#pragma pop

/* 80A6393C-80A63940 000090 0004+00 0/1 0/0 0/0 .rodata          @4040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4040 = -100.0f;
COMPILER_STRIP_GATE(0x80A6393C, &lit_4040);
#pragma pop

/* 80A63940-80A63944 000094 0004+00 0/1 0/0 0/0 .rodata          @4041 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4041 = 200.0f;
COMPILER_STRIP_GATE(0x80A63940, &lit_4041);
#pragma pop

/* 80A63944-80A63948 000098 0004+00 0/1 0/0 0/0 .rodata          @4042 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4042 = 300.0f;
COMPILER_STRIP_GATE(0x80A63944, &lit_4042);
#pragma pop

/* 80A63948-80A6394C 00009C 0004+00 0/1 0/0 0/0 .rodata          @4043 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4043 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80A63948, &lit_4043);
#pragma pop

/* 80A60218-80A604E4 000238 02CC+00 1/1 0/0 0/0 .text            create__13daNpc_Kyury_cFv */
void daNpc_Kyury_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A6394C-80A63950 0000A0 0004+00 4/11 0/0 0/0 .rodata          @4205 */
SECTION_RODATA static u8 const lit_4205[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A6394C, &lit_4205);

/* 80A63950-80A63954 0000A4 0004+00 0/2 0/0 0/0 .rodata          @4206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4206 = 65536.0f;
COMPILER_STRIP_GATE(0x80A63950, &lit_4206);
#pragma pop

/* 80A63954-80A63958 0000A8 0004+00 0/3 0/0 0/0 .rodata          @4207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4207 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A63954, &lit_4207);
#pragma pop

/* 80A63958-80A63960 0000AC 0008+00 0/1 0/0 0/0 .rodata          bmdTypeList$4317 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const bmdTypeList[8] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02,
};
COMPILER_STRIP_GATE(0x80A63958, &bmdTypeList);
#pragma pop

/* 80A63960-80A63964 0000B4 0004+00 1/4 0/0 0/0 .rodata          @4370 */
SECTION_RODATA static f32 const lit_4370 = 1.0f;
COMPILER_STRIP_GATE(0x80A63960, &lit_4370);

/* 80A604E4-80A607EC 000504 0308+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_Kyury_cFv */
void daNpc_Kyury_c::CreateHeap() {
    // NONMATCHING
}

/* 80A607EC-80A60828 00080C 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A60828-80A60840 000848 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A60840-80A6087C 000860 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A6087C-80A60894 00089C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A60894-80A608DC 0008B4 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A608DC-80A60900 0008FC 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A60900-80A6093C 000920 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A6093C-80A60954 00095C 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A60954-80A60990 000974 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A60990-80A609A8 0009B0 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A609A8-80A609DC 0009C8 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_Kyury_cFv */
void daNpc_Kyury_c::Delete() {
    // NONMATCHING
}

/* 80A609DC-80A609FC 0009FC 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_Kyury_cFv */
void daNpc_Kyury_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A63964-80A63968 0000B8 0004+00 1/1 0/0 0/0 .rodata          @4419 */
SECTION_RODATA static f32 const lit_4419 = 100.0f;
COMPILER_STRIP_GATE(0x80A63964, &lit_4419);

/* 80A609FC-80A60A90 000A1C 0094+00 1/1 0/0 0/0 .text            Draw__13daNpc_Kyury_cFv */
void daNpc_Kyury_c::Draw() {
    // NONMATCHING
}

/* 80A60A90-80A60AB0 000AB0 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_Kyury_cFP10fopAc_ac_c            */
void daNpc_Kyury_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A60AB0-80A60B08 000AD0 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_Kyury_cFP8J3DJointi               */
void daNpc_Kyury_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80A60B08-80A60B54 000B28 004C+00 1/1 0/0 0/0 .text            getType__13daNpc_Kyury_cFv */
void daNpc_Kyury_c::getType() {
    // NONMATCHING
}

/* 80A60B54-80A60B9C 000B74 0048+00 1/1 0/0 0/0 .text            isDelete__13daNpc_Kyury_cFv */
void daNpc_Kyury_c::isDelete() {
    // NONMATCHING
}

/* 80A60B9C-80A60CF8 000BBC 015C+00 1/1 0/0 0/0 .text            reset__13daNpc_Kyury_cFv */
void daNpc_Kyury_c::reset() {
    // NONMATCHING
}

/* 80A60CF8-80A60D84 000D18 008C+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_Kyury_cFi */
void daNpc_Kyury_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 80A60D84-80A60EB0 000DA4 012C+00 1/0 0/0 0/0 .text            setParam__13daNpc_Kyury_cFv */
void daNpc_Kyury_c::setParam() {
    // NONMATCHING
}

/* 80A60EB0-80A60FB0 000ED0 0100+00 1/0 0/0 0/0 .text            checkChangeEvt__13daNpc_Kyury_cFv
 */
void daNpc_Kyury_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A63968-80A6396C 0000BC 0004+00 1/3 0/0 0/0 .rodata          @4581 */
SECTION_RODATA static f32 const lit_4581 = -1.0f;
COMPILER_STRIP_GATE(0x80A63968, &lit_4581);

/* 80A60FB0-80A61060 000FD0 00B0+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_Kyury_cFv */
void daNpc_Kyury_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80A61060-80A610C4 001080 0064+00 1/1 0/0 0/0 .text            srchActors__13daNpc_Kyury_cFv */
void daNpc_Kyury_c::srchActors() {
    // NONMATCHING
}

/* 80A610C4-80A61164 0010E4 00A0+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_Kyury_cFv */
void daNpc_Kyury_c::evtTalk() {
    // NONMATCHING
}

/* 80A61164-80A6122C 001184 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_Kyury_cFv */
void daNpc_Kyury_c::evtCutProc() {
    // NONMATCHING
}

/* 80A6122C-80A61324 00124C 00F8+00 1/0 0/0 0/0 .text            action__13daNpc_Kyury_cFv */
void daNpc_Kyury_c::action() {
    // NONMATCHING
}

/* 80A61324-80A613E8 001344 00C4+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_Kyury_cFv */
void daNpc_Kyury_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A6396C-80A63970 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4734 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4734 = 10.0f;
COMPILER_STRIP_GATE(0x80A6396C, &lit_4734);
#pragma pop

/* 80A63970-80A63974 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4735 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4735 = 30.0f;
COMPILER_STRIP_GATE(0x80A63970, &lit_4735);
#pragma pop

/* 80A63974-80A63978 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4736 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4736 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80A63974, &lit_4736);
#pragma pop

/* 80A63978-80A6397C 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4737 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4737 = 14.0f;
COMPILER_STRIP_GATE(0x80A63978, &lit_4737);
#pragma pop

/* 80A6397C-80A63984 0000D0 0004+04 0/1 0/0 0/0 .rodata          @4738 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4738[1 + 1 /* padding */] = {
    180.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80A6397C, &lit_4738);
#pragma pop

/* 80A63984-80A6398C 0000D8 0008+00 1/3 0/0 0/0 .rodata          @4740 */
SECTION_RODATA static u8 const lit_4740[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A63984, &lit_4740);

/* 80A613E8-80A61730 001408 0348+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_Kyury_cFv */
void daNpc_Kyury_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A6398C-80A63994 0000E0 0008+00 0/1 0/0 0/0 .rodata          @4798 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4798[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A6398C, &lit_4798);
#pragma pop

/* 80A63994-80A6399C 0000E8 0008+00 0/1 0/0 0/0 .rodata          @4799 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4799[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A63994, &lit_4799);
#pragma pop

/* 80A6399C-80A639A4 0000F0 0008+00 0/1 0/0 0/0 .rodata          @4800 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4800[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A6399C, &lit_4800);
#pragma pop

/* 80A639A4-80A639A8 0000F8 0004+00 1/1 0/0 0/0 .rodata          @4843 */
SECTION_RODATA static f32 const lit_4843 = -10.0f;
COMPILER_STRIP_GATE(0x80A639A4, &lit_4843);

/* 80A61730-80A618A8 001750 0178+00 1/0 0/0 0/0 .text            setCollision__13daNpc_Kyury_cFv */
void daNpc_Kyury_c::setCollision() {
    // NONMATCHING
}

/* 80A618A8-80A618B0 0018C8 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_Kyury_cFv */
bool daNpc_Kyury_c::drawDbgInfo() {
    return false;
}

/* ############################################################################################## */
/* 80A639A8-80A639B0 0000FC 0008+00 1/1 0/0 0/0 .rodata          jointNo$4851 */
SECTION_RODATA static u8 const jointNo[8] = {
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x0E,
};
COMPILER_STRIP_GATE(0x80A639A8, &jointNo);

/* 80A618B0-80A619B8 0018D0 0108+00 1/0 0/0 0/0 .text            drawOtherMdl__13daNpc_Kyury_cFv */
void daNpc_Kyury_c::drawOtherMdl() {
    // NONMATCHING
}

/* 80A619B8-80A61A00 0019D8 0048+00 1/1 0/0 0/0 .text            selectAction__13daNpc_Kyury_cFv */
void daNpc_Kyury_c::selectAction() {
    // NONMATCHING
}

/* 80A61A00-80A61A2C 001A20 002C+00 2/2 0/0 0/0 .text
 * chkAction__13daNpc_Kyury_cFM13daNpc_Kyury_cFPCvPvPv_i        */
void daNpc_Kyury_c::chkAction(int (daNpc_Kyury_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A61A2C-80A61AD4 001A4C 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpc_Kyury_cFM13daNpc_Kyury_cFPCvPvPv_i        */
void daNpc_Kyury_c::setAction(int (daNpc_Kyury_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A639B0-80A639BC 000104 000C+00 0/1 0/0 0/0 .rodata          @4934 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4934[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80A639B0, &lit_4934);
#pragma pop

/* 80A639C4-80A639C4 000118 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A639FE = "prm";
SECTION_DEAD static char const* const stringBase_80A63A02 = "msgNo";
SECTION_DEAD static char const* const stringBase_80A63A08 = "msgNo2";
SECTION_DEAD static char const* const stringBase_80A63A0F = "send";
#pragma pop

/* 80A61AD4-80A61ED0 001AF4 03FC+00 1/0 0/0 0/0 .text            cutConversation__13daNpc_Kyury_cFi
 */
void daNpc_Kyury_c::cutConversation(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A639BC-80A639C0 000110 0004+00 0/1 0/0 0/0 .rodata          @5155 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5155 = 120.0f;
COMPILER_STRIP_GATE(0x80A639BC, &lit_5155);
#pragma pop

/* 80A639C0-80A639C4 000114 0004+00 0/1 0/0 0/0 .rodata          @5156 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5156 = 50.0f;
COMPILER_STRIP_GATE(0x80A639C0, &lit_5156);
#pragma pop

/* 80A61ED0-80A62370 001EF0 04A0+00 1/0 0/0 0/0 .text            wait__13daNpc_Kyury_cFPv */
void daNpc_Kyury_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80A62370-80A62570 002390 0200+00 3/0 0/0 0/0 .text            talk__13daNpc_Kyury_cFPv */
void daNpc_Kyury_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80A62570-80A62590 002590 0020+00 1/0 0/0 0/0 .text            daNpc_Kyury_Create__FPv */
static void daNpc_Kyury_Create(void* param_0) {
    // NONMATCHING
}

/* 80A62590-80A625B0 0025B0 0020+00 1/0 0/0 0/0 .text            daNpc_Kyury_Delete__FPv */
static void daNpc_Kyury_Delete(void* param_0) {
    // NONMATCHING
}

/* 80A625B0-80A625D0 0025D0 0020+00 1/0 0/0 0/0 .text            daNpc_Kyury_Execute__FPv */
static void daNpc_Kyury_Execute(void* param_0) {
    // NONMATCHING
}

/* 80A625D0-80A625F0 0025F0 0020+00 1/0 0/0 0/0 .text            daNpc_Kyury_Draw__FPv */
static void daNpc_Kyury_Draw(void* param_0) {
    // NONMATCHING
}

/* 80A625F0-80A625F8 002610 0008+00 1/0 0/0 0/0 .text            daNpc_Kyury_IsDelete__FPv */
static bool daNpc_Kyury_IsDelete(void* param_0) {
    return true;
}

/* 80A625F8-80A62628 002618 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80A62628-80A62670 002648 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A62670-80A629F8 002690 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A629F8-80A62A34 002A18 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80A62A34-80A62A70 002A54 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80A62A70-80A62AB8 002A90 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A62AB8-80A62B00 002AD8 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80A62B00-80A62B3C 002B20 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A62B3C-80A62B84 002B5C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80A62B84-80A62BCC 002BA4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80A62BCC-80A62FD0 002BEC 0404+00 1/1 0/0 0/0 .text
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

/* 80A62FD0-80A62FD4 002FF0 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80A62FD4-80A630D0 002FF4 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80A630D0-80A630D4 0030F0 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80A630D4-80A6311C 0030F4 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80A6311C-80A6318C 00313C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80A6318C-80A631E8 0031AC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A631E8-80A63258 003208 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80A63258-80A632A0 003278 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80A632A0-80A633BC 0032C0 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80A633BC-80A635C4 0033DC 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80A635C4-80A635C8 0035E4 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80A635D8-80A635E0 0035F8 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A635E0-80A635E8 003600 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A635E8-80A635F0 003608 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80A635F4-80A635FC 003614 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80A635FC-80A63614 00361C 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A63614-80A63618 003634 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80A63618-80A63620 003638 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A63620-80A63628 003640 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A63628-80A63658 003648 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80A63658-80A63688 003678 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80A63688-80A6368C 0036A8 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A6368C-80A63690 0036AC 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A63690-80A63694 0036B0 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A63694-80A63698 0036B4 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 80A6420C-80A64218 0007F8 000C+00 2/2 0/0 0/0 .data            __vt__19daNpc_Kyury_Param_c */
SECTION_DATA extern void* __vt__19daNpc_Kyury_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpc_Kyury_Param_cFv,
};

/* 80A64220-80A6422C 000008 000C+00 1/1 0/0 0/0 .bss             @3814 */
static u8 lit_3814[12];

/* 80A6422C-80A64230 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A63698-80A63720 0036B8 0088+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_kyury_cpp */
void __sinit_d_a_npc_kyury_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A63698, __sinit_d_a_npc_kyury_cpp);
#pragma pop

/* 80A63720-80A63800 003740 00E0+00 1/1 0/0 0/0 .text
 * __ct__13daNpc_Kyury_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Kyury_c::daNpc_Kyury_c(daNpcT_faceMotionAnmData_c const* param_0,
                                 daNpcT_motionAnmData_c const* param_1,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                 int param_3,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80A63800-80A63808 003820 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__13daNpc_Kyury_cFv */
u16 daNpc_Kyury_c::getEyeballMaterialNo() {
    return 2;
}

/* 80A63808-80A63810 003828 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__13daNpc_Kyury_cFv
 */
s32 daNpc_Kyury_c::getHeadJointNo() {
    return 4;
}

/* 80A63810-80A63818 003830 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__13daNpc_Kyury_cFv
 */
s32 daNpc_Kyury_c::getNeckJointNo() {
    return 3;
}

/* 80A63818-80A63820 003838 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__13daNpc_Kyury_cFv */
bool daNpc_Kyury_c::getBackboneJointNo() {
    return true;
}

/* 80A63820-80A63830 003840 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__13daNpc_Kyury_cFi
 */
void daNpc_Kyury_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80A63830-80A63840 003850 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__13daNpc_Kyury_cFi
 */
void daNpc_Kyury_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80A63840-80A63888 003860 0048+00 2/1 0/0 0/0 .text            __dt__19daNpc_Kyury_Param_cFv */
daNpc_Kyury_Param_c::~daNpc_Kyury_Param_c() {
    // NONMATCHING
}

/* 80A63888-80A63890 0038A8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80A63888() {
    // NONMATCHING
}

/* 80A63890-80A63898 0038B0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80A63890() {
    // NONMATCHING
}

/* 80A639C4-80A639C4 000118 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
