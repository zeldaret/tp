/**
 * @file d_a_npc_raca.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_raca.h"
#include "d/actor/d_a_tag_evtarea.h"
#include "d/d_s_play.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__12daNpc_Raca_cFv();
extern "C" void create__12daNpc_Raca_cFv();
extern "C" void CreateHeap__12daNpc_Raca_cFv();
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
extern "C" void Delete__12daNpc_Raca_cFv();
extern "C" void Execute__12daNpc_Raca_cFv();
extern "C" void Draw__12daNpc_Raca_cFv();
extern "C" void createHeapCallBack__12daNpc_Raca_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__12daNpc_Raca_cFP8J3DJointi();
extern "C" void srchNi__12daNpc_Raca_cFPvPv();
extern "C" void getNiP__12daNpc_Raca_cFv();
extern "C" void getType__12daNpc_Raca_cFv();
extern "C" void isDelete__12daNpc_Raca_cFv();
extern "C" void reset__12daNpc_Raca_cFv();
extern "C" void afterJntAnm__12daNpc_Raca_cFi();
extern "C" void setParam__12daNpc_Raca_cFv();
extern "C" void setAfterTalkMotion__12daNpc_Raca_cFv();
extern "C" void srchActors__12daNpc_Raca_cFv();
extern "C" void evtTalk__12daNpc_Raca_cFv();
extern "C" void evtCutProc__12daNpc_Raca_cFv();
extern "C" void action__12daNpc_Raca_cFv();
extern "C" void beforeMove__12daNpc_Raca_cFv();
extern "C" void setAttnPos__12daNpc_Raca_cFv();
extern "C" void setCollision__12daNpc_Raca_cFv();
extern "C" bool drawDbgInfo__12daNpc_Raca_cFv();
extern "C" void selectAction__12daNpc_Raca_cFv();
extern "C" void chkAction__12daNpc_Raca_cFM12daNpc_Raca_cFPCvPvPv_i();
extern "C" void setAction__12daNpc_Raca_cFM12daNpc_Raca_cFPCvPvPv_i();
extern "C" void wait__12daNpc_Raca_cFPv();
extern "C" void walk__12daNpc_Raca_cFPv();
extern "C" void talk__12daNpc_Raca_cFPv();
extern "C" static void daNpc_Raca_Create__FPv();
extern "C" static void daNpc_Raca_Delete__FPv();
extern "C" static void daNpc_Raca_Execute__FPv();
extern "C" static void daNpc_Raca_Draw__FPv();
extern "C" static bool daNpc_Raca_IsDelete__FPv();
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
extern "C" bool checkChangeEvt__8daNpcT_cFv();
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
extern "C" void __sinit_d_a_npc_raca_cpp();
extern "C" void
__ct__12daNpc_Raca_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__12daNpc_Raca_cFv();
extern "C" s32 getHeadJointNo__12daNpc_Raca_cFv();
extern "C" s32 getNeckJointNo__12daNpc_Raca_cFv();
extern "C" bool getBackboneJointNo__12daNpc_Raca_cFv();
extern "C" void checkChangeJoint__12daNpc_Raca_cFi();
extern "C" void checkRemoveJoint__12daNpc_Raca_cFi();
extern "C" s32 getFootLJointNo__12daNpc_Raca_cFv();
extern "C" s32 getFootRJointNo__12daNpc_Raca_cFv();
extern "C" void __dt__18daNpc_Raca_Param_cFv();
extern "C" static void func_80AB8E44();
extern "C" static void func_80AB8E4C();
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz();
extern "C" u8 const m__18daNpc_Raca_Param_c[140];
extern "C" extern char const* const d_a_npc_raca__stringBase0;
extern "C" void* mCutNameList__12daNpc_Raca_c;
extern "C" u8 mCutList__12daNpc_Raca_c[12];

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
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
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcT_ActorMngr_cFv();
extern "C" void getActorP__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__13daNpcT_Path_cFv();
extern "C" void setPathInfo__13daNpcT_Path_cFUcScUc();
extern "C" void getDstPosH__13daNpcT_Path_cF4cXyzP4cXyzii();
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
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void calcSpeedAndAngle__8daNpcT_cF4cXyziss();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getEvtAreaTagP__8daNpcT_cFii();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_onTmpBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void dKy_darkworld_check__Fv();
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
extern "C" u8 mFindActorPtrs__8daNpcT_c[200];
extern "C" u8 mFindCount__8daNpcT_c[4];
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz();
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80AB8FA8-80AB8FA8 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AB8FA8 = "";
SECTION_DEAD static char const* const stringBase_80AB8FA9 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80AB8FB5 = "Raca";
#pragma pop

/* 80AB8FDC-80AB8FE4 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[1][2] = {
    {25, 1},
};

/* 80AB8FE4-80AB8FF4 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[2] = {
    {"", 0},
    {"NO_RESPONSE", 0},
};

enum RES_Name {
    /* 0x0 */ NONE,
    /* 0x1 */ RACA,
};

/* 80AB8FF4-80AB8FFC -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {
    "",
    "Raca",
};

/* 80AB8FFC-80AB9000 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[2] = {
    1, -1,
};

/* 80AB9000-80AB9008 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[2] = {
    l_loadResPtrn0,
    l_loadResPtrn0,
};

/* 80AB9008-80AB90E8 00004C 00E0+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[8] = {
    {-1, 0, 0, 32, 2, 1, 1},
    {8, 0, 1, 32, 2, 1, 1},
    {9, 0, 1, 35, 0, 1, 0},
    {7, 0, 1, 34, 0, 1, 0},
    {6, 0, 1, 33, 0, 1, 0},
    {12, 2, 1, 38, 2, 1, 0},
    {11, 2, 1, 37, 2, 1, 0},
    {10, 2, 1, 36, 2, 1, 0},
};

/* 80AB90E8-80AB9200 00012C 0118+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[10] = {
    {21, 2, 1, 28, 0, 1, 1, 0},
    {13, 2, 1, 28, 0, 1, 1, 0},
    {19, 0, 1, 28, 0, 1, 1, 0},
    {20, 0, 1, 29, 0, 1, 0, 0},
    {22, 2, 1, 28, 0, 1, 1, 0},
    {14, 0, 1, 28, 0, 1, 1, 0},
    {15, 2, 1, 28, 0, 1, 1, 0},
    {16, 0, 1, 28, 0, 1, 1, 0},
    {17, 2, 1, 28, 0, 1, 1, 0},
    {18, 0, 1, 28, 0, 1, 1, 0},
};

/* 80AB9200-80AB9280 000244 0080+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[32] = {
    {1, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, -1, 1}, {5, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 1}, {6, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 1}, {7, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80AB9280-80AB9310 0002C4 0090+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[36] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 1}, {1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 1}, {6, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 1}, {8, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {8, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, 4, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80AB9310-80AB9314 -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_Raca_c */
char* daNpc_Raca_c::mCutNameList = "NO_RESPONSE";

/* 80AB9314-80AB9320 000358 000C+00 2/2 0/0 0/0 .data            mCutList__12daNpc_Raca_c */
daNpc_Raca_c::cutFunc daNpc_Raca_c::mCutList[1] = {
    NULL,
};

/* 80AB9320-80AB932C -00001 000C+00 1/1 0/0 0/0 .data            @4592 */
SECTION_DATA static void* lit_4592[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Raca_cFPv,
};

/* 80AB932C-80AB9338 -00001 000C+00 1/1 0/0 0/0 .data            @4602 */
SECTION_DATA static void* lit_4602[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Raca_cFPv,
};

/* 80AB9338-80AB9344 -00001 000C+00 0/1 0/0 0/0 .data            @4817 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4817[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__12daNpc_Raca_cFPv,
};
#pragma pop

/* 80AB9344-80AB9350 -00001 000C+00 0/1 0/0 0/0 .data            @4819 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4819[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_Raca_cFPv,
};
#pragma pop

/* 80AB9350-80AB935C -00001 000C+00 0/1 0/0 0/0 .data            @4821 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4821[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_Raca_cFPv,
};
#pragma pop

/* 80AB93AC-80AB93B8 0003F0 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80AB93B8-80AB93C4 0003FC 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AB93C4-80AB93E8 000408 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AB8E4C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AB8E44,
};

/* 80AB93E8-80AB93F4 00042C 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AB93F4-80AB9400 000438 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AB9400-80AB940C 000444 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AB940C-80AB9418 000450 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80AB9418-80AB9424 00045C 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80AB9424-80AB9430 000468 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80AB9430-80AB943C 000474 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AB943C-80AB9448 000480 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80AB9448-80AB9454 00048C 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80AB9454-80AB9518 000498 00C4+00 2/2 0/0 0/0 .data            __vt__12daNpc_Raca_c */
SECTION_DATA extern void* __vt__12daNpc_Raca_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daNpc_Raca_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__12daNpc_Raca_cFi,
    (void*)checkRemoveJoint__12daNpc_Raca_cFi,
    (void*)getBackboneJointNo__12daNpc_Raca_cFv,
    (void*)getNeckJointNo__12daNpc_Raca_cFv,
    (void*)getHeadJointNo__12daNpc_Raca_cFv,
    (void*)getFootLJointNo__12daNpc_Raca_cFv,
    (void*)getFootRJointNo__12daNpc_Raca_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__12daNpc_Raca_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__12daNpc_Raca_cFi,
    (void*)setParam__12daNpc_Raca_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__12daNpc_Raca_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__12daNpc_Raca_cFv,
    (void*)setAfterTalkMotion__12daNpc_Raca_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__12daNpc_Raca_cFv,
    (void*)beforeMove__12daNpc_Raca_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__12daNpc_Raca_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__12daNpc_Raca_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__12daNpc_Raca_cFv,
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

/* 80AB5CAC-80AB5DFC 0000EC 0150+00 1/0 0/0 0/0 .text            __dt__12daNpc_Raca_cFv */
daNpc_Raca_c::~daNpc_Raca_c() {
    // NONMATCHING
}

/* 80AB8EC8-80AB8F54 000000 008C+00 6/6 0/0 0/0 .rodata          m__18daNpc_Raca_Param_c */
daNpc_Raca_HIOParam const daNpc_Raca_Param_c::m = {
    230.0f,
    -3.0f,
    1.0f,
    400.0f,
    255.0f,
    200.0f,
    35.0f,
    40.0f,
    0.0f,
    0.0f,
    10.0f,
    -10.0f,
    30.0f,
    -10.0f,
    45.0f,
    -45.0f,
    0.6f,
    12.0f,
    3,
    6,
    5,
    6,
    110.0f,
    0.0f,
    0.0f,
    0.0f,
    60,
    8,
    0,
    0,
    0,
    false,
    false,
    4.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
};

/* 80AB5DFC-80AB60B8 00023C 02BC+00 1/1 0/0 0/0 .text            create__12daNpc_Raca_cFv */
cPhs__Step daNpc_Raca_c::create() {
    fopAcM_SetupActor2(this, daNpc_Raca_c, l_faceMotionAnmData, l_motionAnmData, l_faceMotionSequenceData, 4,
                       l_motionSequenceData, 4, l_evtList, l_resNameList);

    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = dKy_darkworld_check();

    cPhs__Step phase = (cPhs__Step)loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x3A10)) {
            return cPhs_ERROR_e;
        }

        OS_REPORT("\t(%s:%d) flowNo:%d, PathID:%02x, BitSW:%02x<%08x> ", fopAcM_getProcNameString(this), mType, mFlowNodeNo,
                  (getPathID() >> 32) & 0xFF, getBitSW() & 0xFF, fopAcM_GetParam(this));

        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("\n");

        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);
        field_0x9c0.init(&mAcch, 0.0f, 0.0f);

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this),
                  fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_Raca_Param_c::m.common.weight, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgHitCallback(tgHitCallBack);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        if (mGroundH != -1e9f) {
            setEnvTevColor();
            setRoomNo();
        }

        reset();
        mCreating = true;
        Execute();
        mCreating = false;
    }

    return phase;
}

/* 80AB60B8-80AB6358 0004F8 02A0+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_Raca_cFv */
int daNpc_Raca_c::CreateHeap() {
    int bmdIdx = mTwilight == true ? NONE : NONE;
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[bmdIdx][1]], l_bmdData[bmdIdx][0]);
    if (modelData == NULL) {
        return 0;
    }

    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11020284);
    if (mpMorf[0] != NULL && mpMorf[0]->getModel() == NULL) {
        mpMorf[0]->stopZelAnime();
        mpMorf[0] = NULL;
    }

    if (mpMorf[0] == NULL) {
        return 0;
    }

    J3DModel* model = mpMorf[0]->getModel();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);

    mpMatAnm[0] = new daNpcT_MatAnm_c();
    if (mpMatAnm[0] == NULL) {
        return 0;
    }

    if (setFaceMotionAnm(1, false) && setMotionAnm(0, 0.0f, FALSE)) {
        return 1;
    }

    return 0;
}

/* 80AB6514-80AB6548 000954 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_Raca_cFv */
int daNpc_Raca_c::Delete() {
    this->~daNpc_Raca_c();
    return 1;
}

/* 80AB6548-80AB6568 000988 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_Raca_cFv */
int daNpc_Raca_c::Execute() {
    return execute();
}

/* 80AB6568-80AB65FC 0009A8 0094+00 1/1 0/0 0/0 .text            Draw__12daNpc_Raca_cFv */
int daNpc_Raca_c::Draw() {
    if (mpMatAnm[0] != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }

    draw(
#ifdef DEBUG
        chkAction(mAction),
#else
        0,
#endif
        FALSE, mRealShadowSize, NULL, 100.0f, FALSE, FALSE, FALSE
    );
}

/* 80AB65FC-80AB661C 000A3C 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__12daNpc_Raca_cFP10fopAc_ac_c */
int daNpc_Raca_c::createHeapCallBack(fopAc_ac_c* a_this) {
    return static_cast<daNpc_Raca_c*>(a_this)->CreateHeap();
}

/* 80AB661C-80AB6674 000A5C 0058+00 1/1 0/0 0/0 .text            ctrlJointCallBack__12daNpc_Raca_cFP8J3DJointi */
int daNpc_Raca_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Raca_c* i_this = reinterpret_cast<daNpc_Raca_c*>(model->getUserArea());
        if (i_this != 0) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80AB6674-80AB6700 000AB4 008C+00 1/1 0/0 0/0 .text            srchNi__12daNpc_Raca_cFPvPv */
void* daNpc_Raca_c::srchNi(void* i_actor, void* i_data) {
    if (mFindCount < 50 && fopAcM_IsActor(i_actor) && i_actor != (daNpc_Raca_c*)i_data && fopAcM_GetName(i_actor) == PROC_NI) {
        mFindActorPtrs[mFindCount] = (fopAc_ac_c*)i_actor;
        mFindCount++;
    }

    return NULL;
}

/* 80AB6700-80AB67CC 000B40 00CC+00 1/1 0/0 0/0 .text            getNiP__12daNpc_Raca_cFv */
fopAc_ac_c* daNpc_Raca_c::getNiP() {
    fopAc_ac_c* actor_p = mActorMngr[0].getActorP();
    mFindCount = 0;
    fpcM_Search(srchNi, this);

    for (int i = 0; i < mFindCount; i++) {
        if (actor_p != NULL) {
            if (((daTag_EvtArea_c*)actor_p)->chkPointInArea(mFindActorPtrs[i]->current.pos)) {
                return mFindActorPtrs[i];
            }
        }
    }

    return NULL;
}

/* 80AB67CC-80AB67EC 000C0C 0020+00 1/1 0/0 0/0 .text            getType__12daNpc_Raca_cFv */
u8 daNpc_Raca_c::getType() {
    switch ((u8)fopAcM_GetParam(this)) {
        case 0:
            return 0;

        default:
            return 1;
    }
}

/* 80AB67EC-80AB681C 000C2C 0030+00 1/1 0/0 0/0 .text            isDelete__12daNpc_Raca_cFv */
BOOL daNpc_Raca_c::isDelete() {
    if (mType == 1) {
        return FALSE;
    }

    switch (mType) {
        case 0:
            return FALSE;

        default:
            return TRUE;
    }
}

/* 80AB681C-80AB6984 000C5C 0168+00 1/1 0/0 0/0 .text            reset__12daNpc_Raca_cFv */
void daNpc_Raca_c::reset() {
    initialize();

    memset(&mPrevAction, 0, (u8*)&field_0xfd0 - (u8*)&mPrevAction);

    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }

    if (getPathID() != 0xFF) {
        mPath.initialize();
        mPath.setPathInfo(getPathID(), fopAcM_GetRoomNo(this), 0);
    }

    for (int i = 0; i < 1; i++) {
        mActorMngr[i].initialize();
    }

    setAngle(home.angle.y);
}

/* 80AB6984-80AB6A10 000DC4 008C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_Raca_cFi */
void daNpc_Raca_c::afterJntAnm(int param_1) {
    if (param_1 == 1) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(-mStagger.getAngleX(1));
    } else if (param_1 == 4) {
        mDoMtx_stack_c::YrotM(-mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }
}

/* 80AB6A10-80AB6B0C 000E50 00FC+00 1/0 0/0 0/0 .text            setParam__12daNpc_Raca_cFv */
void daNpc_Raca_c::setParam() {
    selectAction();
    srchActors();

    s16 talk_distance = daNpc_Raca_Param_c::m.common.talk_distance;
    s16 talk_angle = daNpc_Raca_Param_c::m.common.talk_angle;

    attention_info.distances[fopAc_attn_LOCK_e] = daNpcT_getDistTableIdx(daNpc_Raca_Param_c::m.common.attention_distance, daNpc_Raca_Param_c::m.common.attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = daNpcT_getDistTableIdx(talk_distance, talk_angle);
    attention_info.flags = 10;

    scale.set(daNpc_Raca_Param_c::m.common.scale, daNpc_Raca_Param_c::m.common.scale, daNpc_Raca_Param_c::m.common.scale);
    mCcStts.SetWeight(daNpc_Raca_Param_c::m.common.weight);
    mCylH = daNpc_Raca_Param_c::m.common.height;
    mWallR = daNpc_Raca_Param_c::m.common.width;
    mAttnFovY = daNpc_Raca_Param_c::m.common.fov;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daNpc_Raca_Param_c::m.common.knee_length);
    mRealShadowSize = daNpc_Raca_Param_c::m.common.real_shadow_size;
    gravity = daNpc_Raca_Param_c::m.common.gravity;
    mExpressionMorfFrame = daNpc_Raca_Param_c::m.common.expression_morf_frame;
    mMorfFrames = daNpc_Raca_Param_c::m.common.morf_frame;
}

/* 80AB6B0C-80AB6BB0 000F4C 00A4+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_Raca_cFv */
void daNpc_Raca_c::setAfterTalkMotion() {
    int i_index;

    switch (mFaceMotionSeqMngr.getNo()) {
        case 1:
            i_index = 4;
            break;
        
        case 2:
            i_index = 5;
            break;

        case 3:
            i_index = 6;
            break;

        default:
            i_index = 7;
            break;
    }

    mFaceMotionSeqMngr.setNo(i_index, -1.0f, FALSE, 0);
}

/* 80AB6BB0-80AB6C14 000FF0 0064+00 1/1 0/0 0/0 .text            srchActors__12daNpc_Raca_cFv */
void daNpc_Raca_c::srchActors() {
    switch (mType) {
        case 0:
            fopAc_ac_c* actor_p = mActorMngr[0].getActorP();
            if (actor_p == NULL) {
                mActorMngr[0].entry(getEvtAreaTagP(13, 0));
            }
            break;
    }
}

/* 80AB6C14-80AB6D14 001054 0100+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_Raca_cFv */
BOOL daNpc_Raca_c::evtTalk() {
    if (chkAction(&daNpc_Raca_c::talk)) {
        (this->*mAction)(NULL);
    } else {
        mPreItemNo = 0;

        if (dComIfGp_event_chkTalkXY()) {
            if (!dComIfGp_evmng_ChkPresentEnd()) {
                return 1;
            }

            mEvtNo = 1;
            evtChange();
            return 1;
        }

        setAction(&daNpc_Raca_c::talk);
    }

    return 1;
}

/* 80AB6D14-80AB6DDC 001154 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_Raca_cFv */
BOOL daNpc_Raca_c::evtCutProc() {
    BOOL rv = FALSE;
    int staffId = dComIfGp_getEventManager().getMyStaffId("Raca", this, -1);

    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, &mCutNameList, 1, 0, 0);
        if ((this->*(mCutList[actIdx]))(mStaffId) != 0) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }

        rv = TRUE;
    }

    return rv;
}

/* 80AB6DDC-80AB6EC8 00121C 00EC+00 1/0 0/0 0/0 .text            action__12daNpc_Raca_cFv */
void daNpc_Raca_c::action() {
    if (mStagger.checkRebirth()) {
        mStagger.initialize();
        mMode = 1;
    }

    if (mPrevAction) {
        if (mAction == mPrevAction) {
            (this->*mAction)(NULL);
        } else {
            setAction(mPrevAction);
        }
    }
}

/* 80AB6EC8-80AB6F40 001308 0078+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_Raca_cFv */
void daNpc_Raca_c::beforeMove() {
    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* 80AB6F40-80AB7180 001380 0240+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_Raca_cFv */
void daNpc_Raca_c::setAttnPos() {
    cXyz sp38(0.0f, 30.0f, 0.0f);
    
    mStagger.calc(FALSE);
    f32 fVar1 = cM_s2rad(mCurAngle.y - field_0xd7e.y);
    J3DModel* model = mpMorf[0]->getModel();

    mJntAnm.setParam(this, model, &sp38, getBackboneJointNo(), getNeckJointNo(), getHeadJointNo(),
                     daNpc_Raca_Param_c::m.common.body_angleX_min, daNpc_Raca_Param_c::m.common.body_angleX_max,
                     daNpc_Raca_Param_c::m.common.body_angleY_min, daNpc_Raca_Param_c::m.common.body_angleY_max,
                     daNpc_Raca_Param_c::m.common.head_angleX_min, daNpc_Raca_Param_c::m.common.head_angleX_max,
                     daNpc_Raca_Param_c::m.common.head_angleY_min, daNpc_Raca_Param_c::m.common.head_angleY_max,
                     daNpc_Raca_Param_c::m.common.neck_rotation_ratio, fVar1, NULL);
    mJntAnm.calcJntRad(0.2f, 1.0f, fVar1);
    setMtx();

    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&sp38, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, TRUE, 1.0f, 0);

    attention_info.position = current.pos;
    attention_info.position.y += daNpc_Raca_Param_c::m.common.attention_offset;
    setFootPos();
}

/* 80AB7180-80AB72B4 0015C0 0134+00 1/0 0/0 0/0 .text            setCollision__12daNpc_Raca_cFv */
void daNpc_Raca_c::setCollision() {
    cXyz sp48;
    u32 tgType = 0xD8FBFDFF;
    u32 tgSPrm = 31;

    if (!mHide) {
        if (dComIfGp_event_runCheck()) {
            tgType = 0;
            tgSPrm = 0;
        } else if (mTwilight) {
            tgType = 0;
            tgSPrm = 0;
        } else if (mStagger.checkStagger()) {
            tgType = 0;
            tgSPrm = 0;
        }

        f32 cylH = mCylH;
        f32 wallR = mWallR;
        sp48 = current.pos;
        mCyl.SetCoSPrm(0x79);
        mCyl.SetTgType(tgType);
        mCyl.SetTgSPrm(tgSPrm);
        mCyl.OnTgNoHitMark();
        mCyl.SetH(cylH);
        mCyl.SetR(wallR);
        mCyl.SetC(sp48);
        dComIfG_Ccsp()->Set(&mCyl);
    }

    mCyl.ClrCoHit();
    mCyl.ClrTgHit();
}

/* 80AB72B4-80AB72BC 0016F4 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_Raca_cFv */
int daNpc_Raca_c::drawDbgInfo() {
    return 0;
}

/* 80AB72BC-80AB73B0 0016FC 00F4+00 1/1 0/0 0/0 .text            selectAction__12daNpc_Raca_cFv */
BOOL daNpc_Raca_c::selectAction() {
    // NONMATCHING
    mPrevAction = NULL;

    switch (mType) {
        case 0:
            if (field_0xfcc == 0 && getBitSW() != 0xFF && dComIfGs_isSwitch(getBitSW(), fopAcM_GetRoomNo(this))) {
                mPrevAction = &daNpc_Raca_c::walk;
            } else {
                mPrevAction = &daNpc_Raca_c::wait;
            }
            break;

        default:
            mPrevAction = &daNpc_Raca_c::wait;
            break;
    }

    return TRUE;
}

/* 80AB73B0-80AB73DC 0017F0 002C+00 1/1 0/0 0/0 .text            chkAction__12daNpc_Raca_cFM12daNpc_Raca_cFPCvPvPv_i */
BOOL daNpc_Raca_c::chkAction(actionFunc action) {
    return mAction == action;
}

/* 80AB73DC-80AB7484 00181C 00A8+00 2/2 0/0 0/0 .text            setAction__12daNpc_Raca_cFM12daNpc_Raca_cFPCvPvPv_i */
BOOL daNpc_Raca_c::setAction(actionFunc action) {
    mMode = 3;
    if (mAction != NULL) {
        (this->*mAction)(NULL);
    }

    mMode = 0;
    mAction = action;
    if (mAction != NULL) {
        (this->*mAction)(NULL);
    }

    return 1;

}

/* 80AB7484-80AB7710 0018C4 028C+00 2/0 0/0 0/0 .text            wait__12daNpc_Raca_cFPv */
int daNpc_Raca_c::wait(void* param_1) {
    switch (mMode) {
        case 0:
        case 1:
            if (!mStagger.checkStagger()) {
                mFaceMotionSeqMngr.setNo(7, -1.0f, FALSE, 0);
                mMotionSeqMngr.setNo(0, -1.0f, FALSE, 0);
                mMode = 2;
            }
            // fallthrough
        case 2:
            if (!mStagger.checkStagger()) {
                if (mPlayerActorMngr.getActorP() != NULL) {
                    BOOL bVar1 = FALSE;
                    mJntAnm.lookNone(0);
                    
                    if (chkActorInSight(mPlayerActorMngr.getActorP(), mAttnFovY, mCurAngle.y)) {
                        mJntAnm.lookPlayer(0);
                        bVar1 = TRUE;
                    }
                    
                    if (mType == 0 && !bVar1) {
                        mPlayerActorMngr.remove();

                        if (home.angle.y == mCurAngle.y) {
                            mMode = 1;
                        }
                    } else if (!srchPlayerActor() && home.angle.y == mCurAngle.y) {
                        mMode = 1;
                    }
                } else {
                    mJntAnm.lookNone(0);

                    if (home.angle.y != mCurAngle.y) {
                        if (field_0xe34 == 0) {
                            setAngle(home.angle.y);
                            mMode = 1;
                        } else if (step(home.angle.y, 7, 8, 15, 0)) {
                            mMode = 1;
                        }

                        attention_info.flags = 0;
                    } else {
                        srchPlayerActor();
                    }
                }
            }
            break;

        case 3:
            break;
    }

    return 1;
}

/* 80AB7710-80AB7918 001B50 0208+00 1/0 0/0 0/0 .text            walk__12daNpc_Raca_cFPv */
int daNpc_Raca_c::walk(void* param_1) {
    switch (mMode) {
        case 0:
        case 1:
            if (!mStagger.checkStagger()) {
                mFaceMotionSeqMngr.setNo(7, -1.0f, FALSE, 0);
                mMotionSeqMngr.setNo(7, -1.0f, FALSE, 0);
                mAcch.SetWallNone();
                mMode = 2;
            }
            // fallthrough
        case 2:
            if (!mStagger.checkStagger()) {
                cXyz sp20;

                JUT_ASSERT(1553, 0 != mPath.getPathInfo());

                BOOL bVar1 = mPath.getDstPosH(current.pos, &sp20, mPath.getNumPnts(), 2);
                calcSpeedAndAngle(sp20, bVar1, MREG_S(0) + 4, MREG_S(1) + 0x800);

                if (bVar1) {
                    if (cM3d_IsZero(speedF)) {
                        home.angle.y = -0x4000;

                        if (home.angle.y == mCurAngle.y) {
                            mPlayerActorMngr.remove();
                            field_0xfcc = 1;
                        } else {
                            step(home.angle.y, 7, 8, 15, 0);
                        }
                    }
                }

                mJntAnm.lookNone(0);
            }

            attention_info.flags = 0;
            break;

        case 3:
            mAcch.ClrWallNone();
            break;
    }

    return 1;
}

/* 80AB7918-80AB7B40 001D58 0228+00 2/0 0/0 0/0 .text            talk__12daNpc_Raca_cFPv */
int daNpc_Raca_c::talk(void* param_1) {
    // NONMATCHING
}

/* 80AB7B40-80AB7B60 001F80 0020+00 1/0 0/0 0/0 .text            daNpc_Raca_Create__FPv */
static void daNpc_Raca_Create(void* param_0) {
    // NONMATCHING
}

/* 80AB7B60-80AB7B80 001FA0 0020+00 1/0 0/0 0/0 .text            daNpc_Raca_Delete__FPv */
static void daNpc_Raca_Delete(void* param_0) {
    // NONMATCHING
}

/* 80AB7B80-80AB7BA0 001FC0 0020+00 1/0 0/0 0/0 .text            daNpc_Raca_Execute__FPv */
static void daNpc_Raca_Execute(void* param_0) {
    // NONMATCHING
}

/* 80AB7BA0-80AB7BC0 001FE0 0020+00 1/0 0/0 0/0 .text            daNpc_Raca_Draw__FPv */
static void daNpc_Raca_Draw(void* param_0) {
    // NONMATCHING
}

/* 80AB7BC0-80AB7BC8 002000 0008+00 1/0 0/0 0/0 .text            daNpc_Raca_IsDelete__FPv */
static bool daNpc_Raca_IsDelete(void* param_0) {
    return true;
}

/* 80AB7BC8-80AB7BF8 002008 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80AB7BF8-80AB7C40 002038 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AB7C40-80AB7FC8 002080 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80AB7FC8-80AB8004 002408 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80AB8004-80AB8040 002444 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80AB8040-80AB8088 002480 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AB8088-80AB80D0 0024C8 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80AB80D0-80AB810C 002510 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AB810C-80AB8154 00254C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80AB8154-80AB819C 002594 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80AB819C-80AB85A0 0025DC 0404+00 1/1 0/0 0/0 .text
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

/* 80AB85A0-80AB85A4 0029E0 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80AB85A4-80AB86A0 0029E4 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80AB86A0-80AB86A4 002AE0 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80AB86A4-80AB86EC 002AE4 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80AB86EC-80AB875C 002B2C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80AB875C-80AB87B8 002B9C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AB87B8-80AB8828 002BF8 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80AB8828-80AB8870 002C68 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80AB8870-80AB898C 002CB0 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AB8F90-80AB8F98 0000C8 0008+00 0/1 0/0 0/0 .rodata          @4766 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4766[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AB8F90, &lit_4766);
#pragma pop

/* 80AB8F98-80AB8FA0 0000D0 0008+00 0/1 0/0 0/0 .rodata          @4767 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4767[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AB8F98, &lit_4767);
#pragma pop

/* 80AB8FA0-80AB8FA8 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4768 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4768[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AB8FA0, &lit_4768);
#pragma pop

/* 80AB898C-80AB8B94 002DCC 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80AB8B94-80AB8B98 002FD4 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80AB8B98-80AB8BA0 002FD8 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80AB8BA0-80AB8BA8 002FE0 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80AB8BB0-80AB8BB8 002FF0 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80AB8BBC-80AB8BC4 002FFC 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80AB8BC4-80AB8BDC 003004 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80AB8BDC-80AB8BE0 00301C 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80AB8BE0-80AB8BE4 003020 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80AB8BE4-80AB8BEC 003024 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80AB8BEC-80AB8BF4 00302C 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80AB8BF4-80AB8C24 003034 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80AB8C24-80AB8C54 003064 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80AB8C54-80AB8C58 003094 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AB8C58-80AB8C5C 003098 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AB8C5C-80AB8C60 00309C 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AB8C60-80AB8C64 0030A0 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 80AB9518-80AB9524 00055C 000C+00 2/2 0/0 0/0 .data            __vt__18daNpc_Raca_Param_c */
SECTION_DATA extern void* __vt__18daNpc_Raca_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_Raca_Param_cFv,
};

/* 80AB9530-80AB953C 000008 000C+00 1/1 0/0 0/0 .bss             @3818 */
static u8 lit_3818[12];

/* 80AB953C-80AB9540 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80AB8C64-80AB8CCC 0030A4 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_raca_cpp */
void __sinit_d_a_npc_raca_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80AB8C64, __sinit_d_a_npc_raca_cpp);
#pragma pop

// /* 80AB8CCC-80AB8DAC 00310C 00E0+00 1/1 0/0 0/0 .text
//  * __ct__12daNpc_Raca_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
//  */
// daNpc_Raca_c::daNpc_Raca_c(daNpcT_faceMotionAnmData_c const* param_0,
//                                daNpcT_motionAnmData_c const* param_1,
//                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
//                                int param_3,
//                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
//                                int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
//     // NONMATCHING
// }

/* 80AB8DAC-80AB8DB4 0031EC 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__12daNpc_Raca_cFv */
u16 daNpc_Raca_c::getEyeballMaterialNo() {
    return 2;
}

/* 80AB8DB4-80AB8DBC 0031F4 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__12daNpc_Raca_cFv */
s32 daNpc_Raca_c::getHeadJointNo() {
    return 4;
}

/* 80AB8DBC-80AB8DC4 0031FC 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__12daNpc_Raca_cFv */
s32 daNpc_Raca_c::getNeckJointNo() {
    return 3;
}

/* 80AB8DC4-80AB8DCC 003204 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__12daNpc_Raca_cFv */
s32 daNpc_Raca_c::getBackboneJointNo() {
    return 1;
}

/* 80AB8DCC-80AB8DDC 00320C 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__12daNpc_Raca_cFi */
BOOL daNpc_Raca_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80AB8DDC-80AB8DEC 00321C 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__12daNpc_Raca_cFi */
BOOL daNpc_Raca_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80AB8DEC-80AB8DF4 00322C 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__12daNpc_Raca_cFv */
s32 daNpc_Raca_c::getFootLJointNo() {
    return 24;
}

/* 80AB8DF4-80AB8DFC 003234 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__12daNpc_Raca_cFv */
s32 daNpc_Raca_c::getFootRJointNo() {
    return 27;
}

/* 80AB8DFC-80AB8E44 00323C 0048+00 2/1 0/0 0/0 .text            __dt__18daNpc_Raca_Param_cFv */
daNpc_Raca_Param_c::~daNpc_Raca_Param_c() {
    // NONMATCHING
}

/* 80AB8E44-80AB8E4C 003284 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80AB8E44() {
    // NONMATCHING
}

/* 80AB8E4C-80AB8E54 00328C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80AB8E4C() {
    // NONMATCHING
}

/* 80AB8E54-80AB8EB4 003294 0060+00 1/1 0/0 0/0 .text chkPointInArea__15daTag_EvtArea_cF4cXyz */
// void daTag_EvtArea_c::chkPointInArea(cXyz param_0) {
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz() {
    // NONMATCHING
}

/* 80AB935C-80AB937C -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Raca_MethodTable */
static actor_method_class daNpc_Raca_MethodTable = {
    (process_method_func)daNpc_Raca_Create,
    (process_method_func)daNpc_Raca_Delete,
    (process_method_func)daNpc_Raca_Execute,
    (process_method_func)daNpc_Raca_IsDelete,
    (process_method_func)daNpc_Raca_Draw,
};

/* 80AB937C-80AB93AC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_RACA */
extern actor_process_profile_definition g_profile_NPC_RACA = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_RACA,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpc_Raca_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  356,                     // mPriority
  &daNpc_Raca_MethodTable, // sub_method
  0x00040107,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
