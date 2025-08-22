/**
 * @file d_a_npc_doc.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_doc.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__11daNpc_Doc_cFv();
extern "C" void create__11daNpc_Doc_cFv();
extern "C" void CreateHeap__11daNpc_Doc_cFv();
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
extern "C" void Delete__11daNpc_Doc_cFv();
extern "C" void Execute__11daNpc_Doc_cFv();
extern "C" void Draw__11daNpc_Doc_cFv();
extern "C" void createHeapCallBack__11daNpc_Doc_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_Doc_cFP8J3DJointi();
extern "C" void getType__11daNpc_Doc_cFv();
extern "C" void isDelete__11daNpc_Doc_cFv();
extern "C" void reset__11daNpc_Doc_cFv();
extern "C" void afterJntAnm__11daNpc_Doc_cFi();
extern "C" void setParam__11daNpc_Doc_cFv();
extern "C" void checkChangeEvt__11daNpc_Doc_cFv();
extern "C" void setAfterTalkMotion__11daNpc_Doc_cFv();
extern "C" void srchActors__11daNpc_Doc_cFv();
extern "C" void evtTalk__11daNpc_Doc_cFv();
extern "C" void evtCutProc__11daNpc_Doc_cFv();
extern "C" void action__11daNpc_Doc_cFv();
extern "C" void beforeMove__11daNpc_Doc_cFv();
extern "C" void setAttnPos__11daNpc_Doc_cFv();
extern "C" void setCollision__11daNpc_Doc_cFv();
extern "C" bool drawDbgInfo__11daNpc_Doc_cFv();
extern "C" void selectAction__11daNpc_Doc_cFv();
extern "C" void chkAction__11daNpc_Doc_cFM11daNpc_Doc_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_Doc_cFM11daNpc_Doc_cFPCvPvPv_i();
extern "C" void wait__11daNpc_Doc_cFPv();
extern "C" void walk__11daNpc_Doc_cFPv();
extern "C" void talk__11daNpc_Doc_cFPv();
extern "C" static void daNpc_Doc_Create__FPv();
extern "C" static void daNpc_Doc_Delete__FPv();
extern "C" static void daNpc_Doc_Execute__FPv();
extern "C" static void daNpc_Doc_Draw__FPv();
extern "C" static bool daNpc_Doc_IsDelete__FPv();
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
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
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
extern "C" void __sinit_d_a_npc_doc_cpp();
extern "C" void
__ct__11daNpc_Doc_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__11daNpc_Doc_cFv();
extern "C" s32 getHeadJointNo__11daNpc_Doc_cFv();
extern "C" s32 getNeckJointNo__11daNpc_Doc_cFv();
extern "C" bool getBackboneJointNo__11daNpc_Doc_cFv();
extern "C" void checkChangeJoint__11daNpc_Doc_cFi();
extern "C" void checkRemoveJoint__11daNpc_Doc_cFi();
extern "C" s32 getFootLJointNo__11daNpc_Doc_cFv();
extern "C" s32 getFootRJointNo__11daNpc_Doc_cFv();
extern "C" void chkXYItems__11daNpc_Doc_cFv();
extern "C" void __dt__17daNpc_Doc_Param_cFv();
extern "C" static void func_809AA2F8();
extern "C" static void func_809AA300();
extern "C" u8 const m__17daNpc_Doc_Param_c[144];
extern "C" extern char const* const d_a_npc_doc__stringBase0;
extern "C" void* mCutNameList__11daNpc_Doc_c;
extern "C" u8 mCutList__11daNpc_Doc_c[12];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
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
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
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
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void calcSpeedAndAngle__8daNpcT_cF4cXyziss();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void dKy_getdaytime_hour__Fv();
extern "C" void dKy_getDarktime_hour__Fv();
extern "C" void dKy_darkworld_check__Fv();
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
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
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
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
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
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 809AA428-809AA428 00010C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809AA428 = "";
SECTION_DEAD static char const* const stringBase_809AA429 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_809AA435 = "Doc";
SECTION_DEAD static char const* const stringBase_809AA439 = "Doc1";
#pragma pop

/* 809AA460-809AA468 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x01,
};

/* 809AA468-809AA478 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[4] = {
    (void*)&d_a_npc_doc__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_doc__stringBase0) + 0x1),
    (void*)NULL,
};
#pragma pop

/* 809AA478-809AA484 -00001 000C+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[3] = {
    (void*)&d_a_npc_doc__stringBase0,
    (void*)(((char*)&d_a_npc_doc__stringBase0) + 0xD),
    (void*)(((char*)&d_a_npc_doc__stringBase0) + 0x11),
};

/* 809AA484-809AA488 000044 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u8 l_loadResPtrn0[3 + 1 /* padding */] = {
    0x01,
    0x02,
    0xFF,
    /* padding */
    0x00,
};

/* 809AA488-809AA494 -00001 000C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[3] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
};

/* 809AA494-809AA5AC 000054 0118+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[280] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x23,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x14,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 809AA5AC-809AA734 00016C 0188+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[392] = {
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x18,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 809AA734-809AA7D4 0002F4 00A0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[160] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x03, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x03, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x06, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0x00, 0x09, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 809AA7D4-809AA8A4 000394 00D0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[208] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x04, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x07, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x01, 0x00, 0x0A, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x01, 0x00, 0x0D, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 809AA8A4-809AA8A8 -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__11daNpc_Doc_c */
SECTION_DATA void* daNpc_Doc_c::mCutNameList = (void*)&d_a_npc_doc__stringBase0;

/* 809AA8A8-809AA8B4 000468 000C+00 2/2 0/0 0/0 .data            mCutList__11daNpc_Doc_c */
SECTION_DATA u8 daNpc_Doc_c::mCutList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 809AA8B4-809AA8C0 -00001 000C+00 1/1 0/0 0/0 .data            @4547 */
SECTION_DATA static void* lit_4547[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Doc_cFPv,
};

/* 809AA8C0-809AA8CC -00001 000C+00 1/1 0/0 0/0 .data            @4600 */
SECTION_DATA static void* lit_4600[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Doc_cFPv,
};

/* 809AA8CC-809AA8D8 -00001 000C+00 1/1 0/0 0/0 .data            @4605 */
SECTION_DATA static void* lit_4605[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Doc_cFPv,
};

/* 809AA8D8-809AA8E4 -00001 000C+00 0/1 0/0 0/0 .data            @4891 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4891[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__11daNpc_Doc_cFPv,
};
#pragma pop

/* 809AA8E4-809AA8F0 -00001 000C+00 0/1 0/0 0/0 .data            @4893 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4893[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_Doc_cFPv,
};
#pragma pop

/* 809AA8F0-809AA8FC -00001 000C+00 0/1 0/0 0/0 .data            @4895 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4895[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_Doc_cFPv,
};
#pragma pop

/* 809AA8FC-809AA91C -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Doc_MethodTable */
static actor_method_class daNpc_Doc_MethodTable = {
    (process_method_func)daNpc_Doc_Create__FPv,
    (process_method_func)daNpc_Doc_Delete__FPv,
    (process_method_func)daNpc_Doc_Execute__FPv,
    (process_method_func)daNpc_Doc_IsDelete__FPv,
    (process_method_func)daNpc_Doc_Draw__FPv,
};

/* 809AA91C-809AA94C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_DOC */
extern actor_process_profile_definition g_profile_NPC_DOC = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_DOC,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_Doc_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  335,                    // mPriority
  &daNpc_Doc_MethodTable, // sub_method
  0x00040107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 809AA94C-809AA958 00050C 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 809AA958-809AA964 000518 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 809AA964-809AA988 000524 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809AA300,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809AA2F8,
};

/* 809AA988-809AA994 000548 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 809AA994-809AA9A0 000554 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 809AA9A0-809AA9AC 000560 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 809AA9AC-809AA9B8 00056C 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 809AA9B8-809AA9C4 000578 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 809AA9C4-809AA9D0 000584 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 809AA9D0-809AA9DC 000590 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 809AA9DC-809AA9E8 00059C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 809AA9E8-809AA9F4 0005A8 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 809AA9F4-809AAAB8 0005B4 00C4+00 2/2 0/0 0/0 .data            __vt__11daNpc_Doc_c */
SECTION_DATA extern void* __vt__11daNpc_Doc_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_Doc_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__11daNpc_Doc_cFi,
    (void*)checkRemoveJoint__11daNpc_Doc_cFi,
    (void*)getBackboneJointNo__11daNpc_Doc_cFv,
    (void*)getNeckJointNo__11daNpc_Doc_cFv,
    (void*)getHeadJointNo__11daNpc_Doc_cFv,
    (void*)getFootLJointNo__11daNpc_Doc_cFv,
    (void*)getFootRJointNo__11daNpc_Doc_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__11daNpc_Doc_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__11daNpc_Doc_cFi,
    (void*)setParam__11daNpc_Doc_cFv,
    (void*)checkChangeEvt__11daNpc_Doc_cFv,
    (void*)evtTalk__11daNpc_Doc_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__11daNpc_Doc_cFv,
    (void*)setAfterTalkMotion__11daNpc_Doc_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__11daNpc_Doc_cFv,
    (void*)beforeMove__11daNpc_Doc_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__11daNpc_Doc_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__11daNpc_Doc_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__11daNpc_Doc_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__11daNpc_Doc_cFv,
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

/* 809A6C8C-809A6DC0 0000EC 0134+00 1/0 0/0 0/0 .text            __dt__11daNpc_Doc_cFv */
daNpc_Doc_c::~daNpc_Doc_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809AA31C-809AA3AC 000000 0090+00 8/8 0/0 0/0 .rodata          m__17daNpc_Doc_Param_c */
SECTION_RODATA u8 const daNpc_Doc_Param_c::m[144] = {
    0x43, 0x0C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x42, 0xDC, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x5C, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809AA31C, &daNpc_Doc_Param_c::m);

/* 809AA3AC-809AA3B8 000090 000C+00 0/1 0/0 0/0 .rodata          heapSize$3968 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[12] = {
    0x00, 0x00, 0x48, 0x50, 0x00, 0x00, 0x48, 0x50, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809AA3AC, &heapSize);
#pragma pop

/* 809AA3B8-809AA3BC 00009C 0004+00 0/1 0/0 0/0 .rodata          @4034 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4034 = -200.0f;
COMPILER_STRIP_GATE(0x809AA3B8, &lit_4034);
#pragma pop

/* 809AA3BC-809AA3C0 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4035 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4035 = -100.0f;
COMPILER_STRIP_GATE(0x809AA3BC, &lit_4035);
#pragma pop

/* 809AA3C0-809AA3C4 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4036 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4036 = 200.0f;
COMPILER_STRIP_GATE(0x809AA3C0, &lit_4036);
#pragma pop

/* 809AA3C4-809AA3C8 0000A8 0004+00 4/11 0/0 0/0 .rodata          @4037 */
SECTION_RODATA static u8 const lit_4037[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809AA3C4, &lit_4037);

/* 809AA3C8-809AA3CC 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4038 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4038 = -1000000000.0f;
COMPILER_STRIP_GATE(0x809AA3C8, &lit_4038);
#pragma pop

/* 809A6DC0-809A7088 000220 02C8+00 1/1 0/0 0/0 .text            create__11daNpc_Doc_cFv */
void daNpc_Doc_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809AA3CC-809AA3D0 0000B0 0004+00 0/2 0/0 0/0 .rodata          @4199 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4199 = 65536.0f;
COMPILER_STRIP_GATE(0x809AA3CC, &lit_4199);
#pragma pop

/* 809AA3D0-809AA3D4 0000B4 0004+00 0/2 0/0 0/0 .rodata          @4200 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4200 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x809AA3D0, &lit_4200);
#pragma pop

/* 809AA3D4-809AA3D8 0000B8 0004+00 2/4 0/0 0/0 .rodata          @4348 */
SECTION_RODATA static f32 const lit_4348 = 1.0f;
COMPILER_STRIP_GATE(0x809AA3D4, &lit_4348);

/* 809A7088-809A730C 0004E8 0284+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_Doc_cFv */
void daNpc_Doc_c::CreateHeap() {
    // NONMATCHING
}

/* 809A730C-809A7348 00076C 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 809A7348-809A7360 0007A8 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 809A7360-809A739C 0007C0 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 809A739C-809A73B4 0007FC 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 809A73B4-809A73FC 000814 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 809A73FC-809A7420 00085C 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 809A7420-809A745C 000880 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 809A745C-809A7474 0008BC 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 809A7474-809A74B0 0008D4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 809A74B0-809A74C8 000910 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 809A74C8-809A74FC 000928 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_Doc_cFv */
void daNpc_Doc_c::Delete() {
    // NONMATCHING
}

/* 809A74FC-809A751C 00095C 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_Doc_cFv */
void daNpc_Doc_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809AA3D8-809AA3DC 0000BC 0004+00 1/2 0/0 0/0 .rodata          @4397 */
SECTION_RODATA static f32 const lit_4397 = 100.0f;
COMPILER_STRIP_GATE(0x809AA3D8, &lit_4397);

/* 809A751C-809A75B0 00097C 0094+00 1/1 0/0 0/0 .text            Draw__11daNpc_Doc_cFv */
void daNpc_Doc_c::Draw() {
    // NONMATCHING
}

/* 809A75B0-809A75D0 000A10 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_Doc_cFP10fopAc_ac_c              */
void daNpc_Doc_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809A75D0-809A7628 000A30 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpc_Doc_cFP8J3DJointi
 */
void daNpc_Doc_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 809A7628-809A7660 000A88 0038+00 1/1 0/0 0/0 .text            getType__11daNpc_Doc_cFv */
void daNpc_Doc_c::getType() {
    // NONMATCHING
}

/* 809A7660-809A7694 000AC0 0034+00 1/1 0/0 0/0 .text            isDelete__11daNpc_Doc_cFv */
void daNpc_Doc_c::isDelete() {
    // NONMATCHING
}

/* 809A7694-809A7918 000AF4 0284+00 1/1 0/0 0/0 .text            reset__11daNpc_Doc_cFv */
void daNpc_Doc_c::reset() {
    // NONMATCHING
}

/* 809A7918-809A79A4 000D78 008C+00 1/0 0/0 0/0 .text            afterJntAnm__11daNpc_Doc_cFi */
void daNpc_Doc_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 809A79A4-809A7ABC 000E04 0118+00 1/0 0/0 0/0 .text            setParam__11daNpc_Doc_cFv */
void daNpc_Doc_c::setParam() {
    // NONMATCHING
}

/* 809A7ABC-809A7BC4 000F1C 0108+00 1/0 0/0 0/0 .text            checkChangeEvt__11daNpc_Doc_cFv */
void daNpc_Doc_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809AA3DC-809AA3E0 0000C0 0004+00 3/4 0/0 0/0 .rodata          @4588 */
SECTION_RODATA static f32 const lit_4588 = -1.0f;
COMPILER_STRIP_GATE(0x809AA3DC, &lit_4588);

/* 809A7BC4-809A7C3C 001024 0078+00 1/0 0/0 0/0 .text            setAfterTalkMotion__11daNpc_Doc_cFv
 */
void daNpc_Doc_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 809A7C3C-809A7C40 00109C 0004+00 1/1 0/0 0/0 .text            srchActors__11daNpc_Doc_cFv */
void daNpc_Doc_c::srchActors() {
    /* empty function */
}

/* 809A7C40-809A7CE0 0010A0 00A0+00 1/0 0/0 0/0 .text            evtTalk__11daNpc_Doc_cFv */
void daNpc_Doc_c::evtTalk() {
    // NONMATCHING
}

/* 809A7CE0-809A7DA8 001140 00C8+00 1/0 0/0 0/0 .text            evtCutProc__11daNpc_Doc_cFv */
void daNpc_Doc_c::evtCutProc() {
    // NONMATCHING
}

/* 809A7DA8-809A7F3C 001208 0194+00 1/0 0/0 0/0 .text            action__11daNpc_Doc_cFv */
void daNpc_Doc_c::action() {
    // NONMATCHING
}

/* 809A7F3C-809A80B8 00139C 017C+00 1/0 0/0 0/0 .text            beforeMove__11daNpc_Doc_cFv */
void daNpc_Doc_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809AA3E0-809AA3E4 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4768 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4768 = 30.0f;
COMPILER_STRIP_GATE(0x809AA3E0, &lit_4768);
#pragma pop

/* 809AA3E4-809AA3E8 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4769 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4769 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x809AA3E4, &lit_4769);
#pragma pop

/* 809AA3E8-809AA3EC 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4770 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4770 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x809AA3E8, &lit_4770);
#pragma pop

/* 809AA3EC-809AA3F0 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4771 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4771 = 60.0f;
COMPILER_STRIP_GATE(0x809AA3EC, &lit_4771);
#pragma pop

/* 809AA3F0-809AA3F4 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4772 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4772 = 3.0f;
COMPILER_STRIP_GATE(0x809AA3F0, &lit_4772);
#pragma pop

/* 809AA3F4-809AA3FC 0000D8 0004+04 0/1 0/0 0/0 .rodata          @4773 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4773[1 + 1 /* padding */] = {
    11.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x809AA3F4, &lit_4773);
#pragma pop

/* 809AA3FC-809AA404 0000E0 0008+00 1/3 0/0 0/0 .rodata          @4775 */
SECTION_RODATA static u8 const lit_4775[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809AA3FC, &lit_4775);

/* 809AAB10-809AAB1C 000048 000C+00 1/1 0/0 0/0 .bss             @3816 */
static u8 lit_3816[12];

/* 809AAB1C-809AAB20 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 809AAB20-809AAB30 000058 000C+04 0/1 0/0 0/0 .bss             @4710 */
#pragma push
#pragma force_active on
static u8 lit_4710[12 + 4 /* padding */];
#pragma pop

/* 809AAB30-809AAB3C 000068 000C+00 0/1 0/0 0/0 .bss             prtclScl$4709 */
#pragma push
#pragma force_active on
static u8 prtclScl[12];
#pragma pop

/* 809A80B8-809A83A8 001518 02F0+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_Doc_cFv */
void daNpc_Doc_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809AA404-809AA40C 0000E8 0008+00 0/1 0/0 0/0 .rodata          @4833 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4833[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809AA404, &lit_4833);
#pragma pop

/* 809AA40C-809AA414 0000F0 0008+00 0/1 0/0 0/0 .rodata          @4834 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4834[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809AA40C, &lit_4834);
#pragma pop

/* 809AA414-809AA41C 0000F8 0008+00 0/1 0/0 0/0 .rodata          @4835 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4835[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809AA414, &lit_4835);
#pragma pop

/* 809AA41C-809AA420 000100 0004+00 0/1 0/0 0/0 .rodata          @4877 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4877 = 20.0f;
COMPILER_STRIP_GATE(0x809AA41C, &lit_4877);
#pragma pop

/* 809A83A8-809A8530 001808 0188+00 1/0 0/0 0/0 .text            setCollision__11daNpc_Doc_cFv */
void daNpc_Doc_c::setCollision() {
    // NONMATCHING
}

/* 809A8530-809A8538 001990 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_Doc_cFv */
bool daNpc_Doc_c::drawDbgInfo() {
    return false;
}

/* 809A8538-809A8620 001998 00E8+00 1/1 0/0 0/0 .text            selectAction__11daNpc_Doc_cFv */
void daNpc_Doc_c::selectAction() {
    // NONMATCHING
}

/* 809A8620-809A864C 001A80 002C+00 2/2 0/0 0/0 .text
 * chkAction__11daNpc_Doc_cFM11daNpc_Doc_cFPCvPvPv_i            */
void daNpc_Doc_c::chkAction(int (daNpc_Doc_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809A864C-809A86F4 001AAC 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_Doc_cFM11daNpc_Doc_cFPCvPvPv_i            */
void daNpc_Doc_c::setAction(int (daNpc_Doc_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809A86F4-809A8A9C 001B54 03A8+00 2/0 0/0 0/0 .text            wait__11daNpc_Doc_cFPv */
void daNpc_Doc_c::wait(void* param_0) {
    // NONMATCHING
}

/* 809A8A9C-809A8C78 001EFC 01DC+00 1/0 0/0 0/0 .text            walk__11daNpc_Doc_cFPv */
void daNpc_Doc_c::walk(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809AA420-809AA428 000104 0008+00 0/1 0/0 0/0 .rodata          @5113 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5113[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x809AA420, &lit_5113);
#pragma pop

/* 809A8C78-809A904C 0020D8 03D4+00 3/0 0/0 0/0 .text            talk__11daNpc_Doc_cFPv */
void daNpc_Doc_c::talk(void* param_0) {
    // NONMATCHING
}

/* 809A904C-809A906C 0024AC 0020+00 1/0 0/0 0/0 .text            daNpc_Doc_Create__FPv */
static void daNpc_Doc_Create(void* param_0) {
    // NONMATCHING
}

/* 809A906C-809A908C 0024CC 0020+00 1/0 0/0 0/0 .text            daNpc_Doc_Delete__FPv */
static void daNpc_Doc_Delete(void* param_0) {
    // NONMATCHING
}

/* 809A908C-809A90AC 0024EC 0020+00 1/0 0/0 0/0 .text            daNpc_Doc_Execute__FPv */
static void daNpc_Doc_Execute(void* param_0) {
    // NONMATCHING
}

/* 809A90AC-809A90CC 00250C 0020+00 1/0 0/0 0/0 .text            daNpc_Doc_Draw__FPv */
static void daNpc_Doc_Draw(void* param_0) {
    // NONMATCHING
}

/* 809A90CC-809A90D4 00252C 0008+00 1/0 0/0 0/0 .text            daNpc_Doc_IsDelete__FPv */
static bool daNpc_Doc_IsDelete(void* param_0) {
    return true;
}

/* 809A90D4-809A9104 002534 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 809A9104-809A914C 002564 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 809A914C-809A94D4 0025AC 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 809A94D4-809A9510 002934 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 809A9510-809A954C 002970 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 809A954C-809A9594 0029AC 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 809A9594-809A95DC 0029F4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 809A95DC-809A9624 002A3C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 809A9624-809A9A28 002A84 0404+00 1/1 0/0 0/0 .text
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

/* 809A9A28-809A9A2C 002E88 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 809A9A2C-809A9B28 002E8C 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 809A9B28-809A9B2C 002F88 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 809A9B2C-809A9B74 002F8C 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809A9B74-809A9BBC 002FD4 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 809A9BBC-809A9C2C 00301C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809A9C2C-809A9C88 00308C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 809A9C88-809A9CF8 0030E8 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809A9CF8-809A9D40 003158 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 809A9D40-809A9E5C 0031A0 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 809A9E5C-809AA064 0032BC 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 809AA064-809AA068 0034C4 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 809AA068-809AA070 0034C8 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 809AA070-809AA078 0034D0 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 809AA078-809AA080 0034D8 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 809AA084-809AA09C 0034E4 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 809AA09C-809AA0A0 0034FC 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 809AA0A0-809AA0A4 003500 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 809AA0A4-809AA0AC 003504 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 809AA0AC-809AA0B4 00350C 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 809AA0B4-809AA0E4 003514 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 809AA0E4-809AA114 003544 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 809AA114-809AA118 003574 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809AA118-809AA11C 003578 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809AA11C-809AA120 00357C 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809AA120-809AA124 003580 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 809AAAB8-809AAAC4 000678 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_Doc_Param_c */
SECTION_DATA extern void* __vt__17daNpc_Doc_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_Doc_Param_cFv,
};

/* 809AA124-809AA18C 003584 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_doc_cpp */
void __sinit_d_a_npc_doc_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x809AA124, __sinit_d_a_npc_doc_cpp);
#pragma pop

/* 809AA18C-809AA24C 0035EC 00C0+00 1/1 0/0 0/0 .text
 * __ct__11daNpc_Doc_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Doc_c::daNpc_Doc_c(daNpcT_faceMotionAnmData_c const* param_0,
                             daNpcT_motionAnmData_c const* param_1,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
                             daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 809AA24C-809AA254 0036AC 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__11daNpc_Doc_cFv */
u16 daNpc_Doc_c::getEyeballMaterialNo() {
    return 4;
}

/* 809AA254-809AA25C 0036B4 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__11daNpc_Doc_cFv */
s32 daNpc_Doc_c::getHeadJointNo() {
    return 4;
}

/* 809AA25C-809AA264 0036BC 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__11daNpc_Doc_cFv */
s32 daNpc_Doc_c::getNeckJointNo() {
    return 3;
}

/* 809AA264-809AA26C 0036C4 0008+00 1/0 0/0 0/0 .text            getBackboneJointNo__11daNpc_Doc_cFv
 */
bool daNpc_Doc_c::getBackboneJointNo() {
    return true;
}

/* 809AA26C-809AA27C 0036CC 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__11daNpc_Doc_cFi
 */
void daNpc_Doc_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 809AA27C-809AA28C 0036DC 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__11daNpc_Doc_cFi
 */
void daNpc_Doc_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 809AA28C-809AA294 0036EC 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__11daNpc_Doc_cFv */
s32 daNpc_Doc_c::getFootLJointNo() {
    return 24;
}

/* 809AA294-809AA29C 0036F4 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__11daNpc_Doc_cFv */
s32 daNpc_Doc_c::getFootRJointNo() {
    return 27;
}

/* 809AA29C-809AA2B0 0036FC 0014+00 1/0 0/0 0/0 .text            chkXYItems__11daNpc_Doc_cFv */
void daNpc_Doc_c::chkXYItems() {
    // NONMATCHING
}

/* 809AA2B0-809AA2F8 003710 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_Doc_Param_cFv */
daNpc_Doc_Param_c::~daNpc_Doc_Param_c() {
    // NONMATCHING
}

/* 809AA2F8-809AA300 003758 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809AA2F8() {
    // NONMATCHING
}

/* 809AA300-809AA308 003760 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809AA300() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809AAB3C-809AAB40 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_809AAB3C[4];
#pragma pop

/* 809AAB40-809AAB44 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_809AAB40[4];
#pragma pop

/* 809AAB44-809AAB48 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_809AAB44[4];
#pragma pop

/* 809AAB48-809AAB4C 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_809AAB48[4];
#pragma pop

/* 809AAB4C-809AAB50 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809AAB4C[4];
#pragma pop

/* 809AAB50-809AAB54 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809AAB50[4];
#pragma pop

/* 809AAB54-809AAB58 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_809AAB54[4];
#pragma pop

/* 809AAB58-809AAB5C 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_809AAB58[4];
#pragma pop

/* 809AAB5C-809AAB60 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_809AAB5C[4];
#pragma pop

/* 809AAB60-809AAB64 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_809AAB60[4];
#pragma pop

/* 809AAB64-809AAB68 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_809AAB64[4];
#pragma pop

/* 809AAB68-809AAB6C 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_809AAB68[4];
#pragma pop

/* 809AAB6C-809AAB70 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_809AAB6C[4];
#pragma pop

/* 809AAB70-809AAB74 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809AAB70[4];
#pragma pop

/* 809AAB74-809AAB78 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_809AAB74[4];
#pragma pop

/* 809AAB78-809AAB7C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_809AAB78[4];
#pragma pop

/* 809AAB7C-809AAB80 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_809AAB7C[4];
#pragma pop

/* 809AAB80-809AAB84 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_809AAB80[4];
#pragma pop

/* 809AAB84-809AAB88 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_809AAB84[4];
#pragma pop

/* 809AAB88-809AAB8C 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_809AAB88[4];
#pragma pop

/* 809AAB8C-809AAB90 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_809AAB8C[4];
#pragma pop

/* 809AAB90-809AAB94 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809AAB90[4];
#pragma pop

/* 809AAB94-809AAB98 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809AAB94[4];
#pragma pop

/* 809AAB98-809AAB9C 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809AAB98[4];
#pragma pop

/* 809AAB9C-809AABA0 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_809AAB9C[4];
#pragma pop

/* 809AA428-809AA428 00010C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
