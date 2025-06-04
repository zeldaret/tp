/**
 * @file d_a_npc_saru.cpp
 * 
*/

#include "d/actor/d_a_npc_saru.h"
#include "dol2asm.h"
#include "d/actor/d_a_e_ym.h"

//
// Forward References:
//

extern "C" void __dt__12daNpc_Saru_cFv();
extern "C" void create__12daNpc_Saru_cFv();
extern "C" void CreateHeap__12daNpc_Saru_cFv();
extern "C" void Delete__12daNpc_Saru_cFv();
extern "C" void Execute__12daNpc_Saru_cFv();
extern "C" void Draw__12daNpc_Saru_cFv();
extern "C" void createHeapCallBack__12daNpc_Saru_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__12daNpc_Saru_cFP8J3DJointi();
extern "C" void srchYm__12daNpc_Saru_cFPvPv();
extern "C" void getType__12daNpc_Saru_cFv();
extern "C" void isDelete__12daNpc_Saru_cFv();
extern "C" void reset__12daNpc_Saru_cFv();
extern "C" void afterJntAnm__12daNpc_Saru_cFi();
extern "C" void checkChangeEvt__12daNpc_Saru_cFv();
extern "C" void setParam__12daNpc_Saru_cFv();
extern "C" void setAfterTalkMotion__12daNpc_Saru_cFv();
extern "C" void srchActors__12daNpc_Saru_cFv();
extern "C" void evtTalk__12daNpc_Saru_cFv();
extern "C" void evtCutProc__12daNpc_Saru_cFv();
extern "C" void action__12daNpc_Saru_cFv();
extern "C" void beforeMove__12daNpc_Saru_cFv();
extern "C" void setAttnPos__12daNpc_Saru_cFv();
extern "C" void setCollision__12daNpc_Saru_cFv();
extern "C" bool drawDbgInfo__12daNpc_Saru_cFv();
extern "C" void drawOtherMdl__12daNpc_Saru_cFv();
extern "C" void selectAction__12daNpc_Saru_cFv();
extern "C" void chkAction__12daNpc_Saru_cFM12daNpc_Saru_cFPCvPvPv_i();
extern "C" void setAction__12daNpc_Saru_cFM12daNpc_Saru_cFPCvPvPv_i();
extern "C" void setSe__12daNpc_Saru_cFv();
extern "C" void cutFindMonkey__12daNpc_Saru_cFi();
extern "C" void cutHelpMe__12daNpc_Saru_cFi();
extern "C" void cutYmLook__12daNpc_Saru_cFi();
extern "C" void wait__12daNpc_Saru_cFPv();
extern "C" void talk__12daNpc_Saru_cFPv();
extern "C" static void daNpc_Saru_Create__FPv();
extern "C" static void daNpc_Saru_Delete__FPv();
extern "C" static void daNpc_Saru_Execute__FPv();
extern "C" static void daNpc_Saru_Draw__FPv();
extern "C" static bool daNpc_Saru_IsDelete__FPv();
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
extern "C" bool checkChangeJoint__8daNpcT_cFi();
extern "C" bool checkRemoveJoint__8daNpcT_cFi();
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" s32 getEyeballMaterialNo__8daNpcT_cFv();
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
extern "C" void func_80AC42C4(void* _this, int*);
extern "C" void __sinit_d_a_npc_saru_cpp();
extern "C" void
__ct__12daNpc_Saru_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" s32 getHeadJointNo__12daNpc_Saru_cFv();
extern "C" s32 getNeckJointNo__12daNpc_Saru_cFv();
extern "C" bool getBackboneJointNo__12daNpc_Saru_cFv();
extern "C" void __dt__18daNpc_Saru_Param_cFv();
extern "C" static void func_80AC44D4();
extern "C" static void func_80AC44DC();
extern "C" u8 const m__18daNpc_Saru_Param_c[144];
extern "C" extern char const* const d_a_npc_saru__stringBase0;
extern "C" void* mCutNameList__12daNpc_Saru_c[4];
extern "C" u8 mCutList__12daNpc_Saru_c[48];

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
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcEx_IsExist__FUi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setSkipZev__14dEvt_control_cFPvPc();
extern "C" void onSkipFade__14dEvt_control_cFv();
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
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void checkEndSequence__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__13daNpcT_Path_cFv();
extern "C" void setPathInfo__13daNpcT_Path_cFUcScUc();
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
extern "C" void setAngle__8daNpcT_cF5csXyz();
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void hitChk__8daNpcT_cFP12dCcD_GObjInfUl();
extern "C" void setDamage__8daNpcT_cFiii();
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_onEvtBit__FUl();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void remove__10dMsgFlow_cFv();
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
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
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
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mFindActorPtrs__8daNpcT_c[200];
extern "C" u8 mFindCount__8daNpcT_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80AC4654-80AC4654 00015C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AC4654 = "";
SECTION_DEAD static char const* const stringBase_80AC4655 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80AC4661 = "YM_LOOK";
SECTION_DEAD static char const* const stringBase_80AC4669 = "Npc_ks";
SECTION_DEAD static char const* const stringBase_80AC4670 = "saru_TW";
SECTION_DEAD static char const* const stringBase_80AC4678 = "saru";
SECTION_DEAD static char const* const stringBase_80AC467D = "FIND_MONKEY";
SECTION_DEAD static char const* const stringBase_80AC4689 = "HELP_ME";
#pragma pop

/* 80AC46A4-80AC46B0 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AC46B0-80AC46C4 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80AC46C4-80AC46E4 000020 0020+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[4][2] = {
    { 0x0000003B, 1 }, { 5, 2 }, { 0x0000003C, 1 }, { 4, 2 },
};

/* 80AC46E4-80AC46FC -00001 0018+00 1/2 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[3] = {
    {"", 0},
    {"NO_RESPONSE", 0},
    {"YM_LOOK", 2},
};

/* 80AC46FC-80AC470C -00001 0010+00 3/4 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[4] = {
    "", "Npc_ks", "saru_TW", "saru"
};

/* 80AC470C-80AC4710 000068 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[4] = {
    1, 2, 3, 0xFF,
};

/* 80AC4710-80AC4720 -00001 0010+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[4] = {
    l_loadResPtrn0,
    l_loadResPtrn0,
    l_loadResPtrn0,
    l_loadResPtrn0
};

/* 80AC4720-80AC473C 00007C 001C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[1] = {
    {-1, 0, 0, 64, 2, 1, 1},
};

/* 80AC473C-80AC4CD0 000098 0594+00 1/2 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[51] = {
    {51, 2, 1, -1, 0, 0, 0, 0},
    {53, 2, 1, -1, 0, 0, 0, 0},
    {54, 2, 1, -1, 0, 0, 0, 0},
    {11, 2, 1, -1, 0, 0, 0, 0},
    {56, 2, 1, -1, 0, 0, 0, 0},
    {50, 2, 1, -1, 0, 0, 0, 0},
    {7, 2, 1, -1, 0, 0, 0, 0},
    {8, 2, 1, -1, 0, 0, 0, 0},
    {45, 0, 1, -1, 0, 0, 0, 0},
    {39, 2, 1, -1, 0, 0, 0, 0},
    {43, 0, 1, -1, 0, 0, 0, 0},
    {41, 2, 1, -1, 0, 0, 0, 0},
    {24, 2, 1, -1, 0, 0, 0, 0},
    {17, 0, 1, -1, 0, 0, 0, 0},
    {18, 0, 1, -1, 0, 0, 0, 0},
    {19, 0, 1, -1, 0, 0, 0, 0},
    {16, 2, 1, -1, 0, 0, 0, 0},
    {48, 2, 1, -1, 0, 0, 0, 0},
    {30, 2, 1, -1, 0, 0, 0, 0},
    {32, 0, 1, -1, 0, 0, 0, 0},
    {33, 0, 1, -1, 0, 0, 0, 0},
    {31, 0, 1, -1, 0, 0, 0, 0},
    {31, 2, 1, -1, 0, 0, 0, 0},
    {5, 2, 1, -1, 0, 0, 0, 0},
    {28, 2, 1, -1, 0, 0, 0, 0},
    {26, 2, 1, -1, 0, 0, 0, 0},
    {55, 2, 1, -1, 0, 0, 0, 0},
    {12, 2, 1, -1, 0, 0, 0, 0},
    {15, 2, 1, -1, 0, 0, 0, 0},
    {47, 2, 1, -1, 0, 0, 0, 0},
    {49, 0, 1, -1, 0, 0, 0, 0},
    {38, 2, 1, -1, 0, 0, 0, 0},
    {6, 0, 1, -1, 0, 0, 0, 0},
    {13, 2, 1, -1, 0, 0, 0, 0},
    {35, 0, 1, -1, 0, 0, 0, 0},
    {36, 0, 1, -1, 0, 0, 0, 0},
    {3, 2, 3, -1, 0, 0, 0, 0},
    {23, 2, 1, -1, 0, 0, 0, 0},
    {22, 2, 1, -1, 0, 0, 0, 0},
    {21, 2, 1, -1, 0, 0, 0, 0},
    {37, 0, 1, -1, 0, 0, 0, 0},
    {29, 2, 1, -1, 0, 0, 0, 0},
    {27, 2, 1, -1, 0, 0, 0, 0},
    {52, 2, 1, -1, 0, 0, 0, 0},
    {10, 2, 1, -1, 0, 0, 0, 0},
    {9, 2, 1, -1, 0, 0, 0, 0},
    {14, 0, 1, -1, 0, 0, 0, 0},
    {44, 2, 1, -1, 0, 0, 0, 0},
    {42, 2, 1, -1, 0, 0, 0, 0},
    {40, 0, 1, -1, 0, 0, 0, 0},
    {46, 0, 1, -1, 0, 0, 0, 0},
};

/* 80AC4CD0-80AC4CE0 00062C 0010+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[4] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80AC4CE0-80AC4D90 00063C 00B0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[44] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {10, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {40, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {25, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {36, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {38, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80AC4D90-80AC4DA0 -00001 0010+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_Saru_c */
SECTION_DATA void* daNpc_Saru_c::mCutNameList[4] = {
    (void*)&d_a_npc_saru__stringBase0,
    (void*)(((char*)&d_a_npc_saru__stringBase0) + 0x29),
    (void*)(((char*)&d_a_npc_saru__stringBase0) + 0x35),
    (void*)(((char*)&d_a_npc_saru__stringBase0) + 0xD),
};

/* 80AC4DA0-80AC4DAC -00001 000C+00 0/1 0/0 0/0 .data            @3842 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3842[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutFindMonkey__12daNpc_Saru_cFi,
};
#pragma pop

/* 80AC4DAC-80AC4DB8 -00001 000C+00 0/1 0/0 0/0 .data            @3843 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3843[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutHelpMe__12daNpc_Saru_cFi,
};
#pragma pop

/* 80AC4DB8-80AC4DC4 -00001 000C+00 0/1 0/0 0/0 .data            @3844 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3844[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutYmLook__12daNpc_Saru_cFi,
};
#pragma pop

/* 80AC4DC4-80AC4DF4 000720 0030+00 1/2 0/0 0/0 .data            mCutList__12daNpc_Saru_c */
SECTION_DATA u8 daNpc_Saru_c::mCutList[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AC4DF4-80AC4E00 -00001 000C+00 1/1 0/0 0/0 .data            @4539 */
SECTION_DATA static void* lit_4539[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Saru_cFPv,
};

/* 80AC4E00-80AC4E0C -00001 000C+00 1/1 0/0 0/0 .data            @4623 */
SECTION_DATA static void* lit_4623[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Saru_cFPv,
};

/* 80AC4E0C-80AC4E18 -00001 000C+00 1/1 0/0 0/0 .data            @4628 */
SECTION_DATA static void* lit_4628[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Saru_cFPv,
};

/* 80AC4E18-80AC4E24 -00001 000C+00 1/1 0/0 0/0 .data            @4930 */
SECTION_DATA static void* lit_4930[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_Saru_cFPv,
};

/* 80AC4E24-80AC4E44 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Saru_MethodTable */
static actor_method_class daNpc_Saru_MethodTable = {
    (process_method_func)daNpc_Saru_Create__FPv,
    (process_method_func)daNpc_Saru_Delete__FPv,
    (process_method_func)daNpc_Saru_Execute__FPv,
    (process_method_func)daNpc_Saru_IsDelete__FPv,
    (process_method_func)daNpc_Saru_Draw__FPv,
};

/* 80AC4E44-80AC4E74 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SARU */
extern actor_process_profile_definition g_profile_NPC_SARU = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_SARU,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpc_Saru_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  357,                     // mPriority
  &daNpc_Saru_MethodTable, // sub_method
  0x00040107,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80AC4E74-80AC4E80 0007D0 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AC4E80-80AC4EA4 0007DC 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AC44DC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AC44D4,
};

/* 80AC4EA4-80AC4EB0 000800 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AC4EB0-80AC4EBC 00080C 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AC4EBC-80AC4EC8 000818 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AC4EC8-80AC4ED4 000824 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80AC4ED4-80AC4EE0 000830 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80AC4EE0-80AC4EEC 00083C 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80AC4EEC-80AC4EF8 000848 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AC4EF8-80AC4F04 000854 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80AC4F04-80AC4F10 000860 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80AC4F10-80AC4FD4 00086C 00C4+00 2/2 0/0 0/0 .data            __vt__12daNpc_Saru_c */
SECTION_DATA extern void* __vt__12daNpc_Saru_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daNpc_Saru_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__8daNpcT_cFi,
    (void*)checkRemoveJoint__8daNpcT_cFi,
    (void*)getBackboneJointNo__12daNpc_Saru_cFv,
    (void*)getNeckJointNo__12daNpc_Saru_cFv,
    (void*)getHeadJointNo__12daNpc_Saru_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__8daNpcT_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__12daNpc_Saru_cFi,
    (void*)setParam__12daNpc_Saru_cFv,
    (void*)checkChangeEvt__12daNpc_Saru_cFv,
    (void*)evtTalk__12daNpc_Saru_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__12daNpc_Saru_cFv,
    (void*)setAfterTalkMotion__12daNpc_Saru_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__12daNpc_Saru_cFv,
    (void*)beforeMove__12daNpc_Saru_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__12daNpc_Saru_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__12daNpc_Saru_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__12daNpc_Saru_cFv,
    (void*)drawOtherMdl__12daNpc_Saru_cFv,
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

/* 80AC042C-80AC0578 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__12daNpc_Saru_cFv */
daNpc_Saru_c::~daNpc_Saru_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AC44F8-80AC4588 000000 0090+00 9/9 0/0 0/0 .rodata          m__18daNpc_Saru_Param_c */
daNpc_Saru_Param_c::Data const daNpc_Saru_Param_c::m = {
    140.0f,
    -3.0f,
    0x3F800000,
    0x44098000,
    0x437F0000,
    0x430C0000,
    0x420C0000,
    0x42700000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x41F00000,
    0xC1200000,
    0x41F00000,
    0xC1F00000,
    0x3F19999A,
    0x41400000,
    0x00030006,
    0x00050006,
    0x42DC0000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x003C0008,
    0x00000000,
    0x00000000,
    0x40800000,
    0xC1A00000,
    0x00000000,
    0xC1A00000,
    0x41A00000,
    0x42480000,
    0x41A00000,
    0x42C80000,
    0x00B40000,
};

/* 80AC0578-80AC082C 000238 02B4+00 1/1 0/0 0/0 .text            create__12daNpc_Saru_cFv */
int daNpc_Saru_c::create() {
    static int const heapSize[4] = {
        14480, 14480, 14464, 0,
    };

    fopAcM_SetupActor2(this, daNpc_Saru_c, l_faceMotionAnmData, l_motionAnmData, 
                       l_faceMotionSequenceData, 4, l_motionSequenceData, 4, l_evtList, (char**)l_resNameList);
    
    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = dKy_darkworld_check();

    int phase = loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("\t(%s:%d) flowNo:%d, BitSW:%02x, PathID:%02x<%08x> ", fopAcM_getProcNameString(this), mType, mFlowNodeNo, 
                 getBitSW(), getPathID(), fopAcM_GetParam(this));

        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("\n");

        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize[mType])) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -200.0f, -100.0f, -200.0f, 200.0f, 300.0f, 200.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);
        #ifdef DEBUG
        field_0xe90->entryHIO("サル"); // Monkey
        #endif
        reset();

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, 
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_Saru_Param_c::m.mWeight, 0, this);
        field_0xe4c.Set(mCcDCyl);
        field_0xe4c.SetStts(&mCcStts);
        field_0xe4c.SetTgHitCallback(tgHitCallBack);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        if (mGroundH != -1000000000.0f) {
            setEnvTevColor();
            setRoomNo();
        }

        mCreating = true;
        Execute();
        mCreating = false;
    }

    return phase;
}

/* 80AC082C-80AC0A54 0004EC 0228+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_Saru_cFv */
int daNpc_Saru_c::CreateHeap() {
    // NONMATCHING
    static int const bmdTypeList[2] = {
        2, 3,
    };

    u32 uVar1 = mTwilight == true;
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[uVar1][1]], l_bmdData[uVar1][0]);
    if (modelData == NULL) {
        return 0;
    }
    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL,
                                  NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11020084);
    if (mpMorf[0] == NULL || mpMorf[0]->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = mpMorf[0]->getModel();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }

    model->setUserArea((u32)this);

    for (int i = 0; i < 2; i++) {
        if (l_bmdData[bmdTypeList[i]][0] >= 0) {
            modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[bmdTypeList[i]][1]], l_bmdData[bmdTypeList[i]][0]);
        } else {
            modelData = NULL;
        }

        if (modelData != NULL) {
            field_0xe44[i] = mDoExt_J3DModel__create(modelData,  0x80000, 0x11000084);
        } else {
            field_0xe44[i] = NULL;
        }
    }

    if (setFaceMotionAnm(0, false) && setMotionAnm(0, 0.0f, FALSE)) {
        return 1;
    }
        
    return 0;
}

/* 80AC0A54-80AC0A88 000714 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_Saru_cFv */
int daNpc_Saru_c::Delete() {
    this->~daNpc_Saru_c();
    return 1;
}

/* 80AC0A88-80AC0AA8 000748 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_Saru_cFv */
int daNpc_Saru_c::Execute() {
    return execute();
}

/* 80AC0AA8-80AC0AEC 000768 0044+00 1/1 0/0 0/0 .text            Draw__12daNpc_Saru_cFv */
int daNpc_Saru_c::Draw() {
    return draw(FALSE, FALSE, field_0xde8, NULL, 100.0f, FALSE, FALSE, FALSE);
}

/* 80AC0AEC-80AC0B0C 0007AC 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__12daNpc_Saru_cFP10fopAc_ac_c */
int daNpc_Saru_c::createHeapCallBack(fopAc_ac_c* a_this) {
    daNpc_Saru_c* i_this = (daNpc_Saru_c*)a_this;
    return i_this->CreateHeap();
}

/* 80AC0B0C-80AC0B64 0007CC 0058+00 1/1 0/0 0/0 .text            ctrlJointCallBack__12daNpc_Saru_cFP8J3DJointi */
int daNpc_Saru_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        daNpc_Saru_c* _this = (daNpc_Saru_c*)j3dSys.getModel()->getUserArea();
        if (_this != NULL) {
            _this->ctrlJoint(i_joint, j3dSys.getModel());
        }
    }
    return 1;
}

/* 80AC0B64-80AC0C0C 000824 00A8+00 2/2 0/0 0/0 .text            srchYm__12daNpc_Saru_cFPvPv */
void* daNpc_Saru_c::srchYm(void* i_actor, void* i_data) {
    // NONMATCHING
    if (mFindCount < 50 && i_actor != NULL && i_actor != i_data) {
        if (fopAcM_IsExecuting(fopAcM_GetID(i_actor)) && fopAcM_GetName(i_actor) == PROC_E_YM && ((daE_YM_c*)i_actor)->isHide() == 0) {
            mFindActorPtrs[mFindCount] = (fopAc_ac_c*)i_actor;
            mFindCount++;
        }
    }
    return NULL;
}

/* 80AC0C0C-80AC0C58 0008CC 004C+00 1/1 0/0 0/0 .text            getType__12daNpc_Saru_cFv */
u8 daNpc_Saru_c::getType() {
    switch (fopAcM_GetParam(this) & 0xFF) {
        case 0:
            return TYPE_0;

        case 1:
            return TYPE_1;

        case 2:
            return TYPE_2;

        default:
            return TYPE_3;
    }
}

/* 80AC0C58-80AC0CE8 000918 0090+00 1/1 0/0 0/0 .text            isDelete__12daNpc_Saru_cFv */
int daNpc_Saru_c::isDelete() {
    u8 rv;
    switch (mType) {
        case 0:
            return 0;

        case 1:
            rv = 0;
            if (!daNpcT_chkEvtBit(0x12) || daNpcT_chkEvtBit(0x25C)) {
                rv = 1;
            }

            return rv;

        case 2:
            return 0;

        default:
            return 0;
    }
}

/* 80AC0CE8-80AC0EA4 0009A8 01BC+00 1/1 0/0 0/0 .text            reset__12daNpc_Saru_cFv */
void daNpc_Saru_c::reset() {
    // NONMATCHING
    csXyz acStack_20;
    int iVar1 = (u8*)&field_0xfdc - (u8*)&field_0xfbc;
    initialize();
    for (int i = 0; i <1; i++) {
        field_0xf8c.initialize();
    }

    if (getPathID() != 0xFF) {
        field_0xf94.initialize();
        field_0xf94.setPathInfo(getPathID(), fopAcM_GetRoomNo(this), 0);
    }

    memset(&field_0xfbc, 0, 32);

    acStack_20.setall(0);
    acStack_20.y = home.angle.y;

    if (getBitSW() != 0xFF) {
        if (dComIfGs_isSwitch(getBitSW(), fopAcM_GetRoomNo(this))) {
            field_0xfd9 = 1;
        }
    }

    setAngle(acStack_20);
}

/* 80AC0EA4-80AC0F28 000B64 0084+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_Saru_cFi */
void daNpc_Saru_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 80AC0F28-80AC0FDC 000BE8 00B4+00 1/0 0/0 0/0 .text            checkChangeEvt__12daNpc_Saru_cFv */
BOOL daNpc_Saru_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AC45C8-80AC45CC 0000D0 0004+00 1/1 0/0 0/0 .rodata          @4593 */
SECTION_RODATA static f32 const lit_4593 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AC45C8, &lit_4593);

/* 80AC0FDC-80AC1110 000C9C 0134+00 1/0 0/0 0/0 .text            setParam__12daNpc_Saru_cFv */
void daNpc_Saru_c::setParam() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AC45CC-80AC45D0 0000D4 0004+00 4/5 0/0 0/0 .rodata          @4608 */
SECTION_RODATA static f32 const lit_4608 = -1.0f;
COMPILER_STRIP_GATE(0x80AC45CC, &lit_4608);

/* 80AC1110-80AC1170 000DD0 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_Saru_cFv */
void daNpc_Saru_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80AC1170-80AC11D4 000E30 0064+00 1/1 0/0 0/0 .text            srchActors__12daNpc_Saru_cFv */
void daNpc_Saru_c::srchActors() {
    // NONMATCHING
}

/* 80AC11D4-80AC1274 000E94 00A0+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_Saru_cFv */
BOOL daNpc_Saru_c::evtTalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AC4654-80AC4654 00015C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AC4691 = "Saru";
#pragma pop

/* 80AC1274-80AC133C 000F34 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_Saru_cFv */
BOOL daNpc_Saru_c::evtCutProc() {
    // NONMATCHING
}

/* 80AC133C-80AC14E4 000FFC 01A8+00 1/0 0/0 0/0 .text            action__12daNpc_Saru_cFv */
void daNpc_Saru_c::action() {
    // NONMATCHING
}

/* 80AC14E4-80AC15B4 0011A4 00D0+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_Saru_cFv */
void daNpc_Saru_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AC45D0-80AC45D4 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4771 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4771 = 30.0f;
COMPILER_STRIP_GATE(0x80AC45D0, &lit_4771);
#pragma pop

/* 80AC45D4-80AC45D8 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4772 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4772 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80AC45D4, &lit_4772);
#pragma pop

/* 80AC45D8-80AC45DC 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4773 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4773 = -30.0f;
COMPILER_STRIP_GATE(0x80AC45D8, &lit_4773);
#pragma pop

/* 80AC45DC-80AC45E0 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4774 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4774 = 10.0f;
COMPILER_STRIP_GATE(0x80AC45DC, &lit_4774);
#pragma pop

/* 80AC45E0-80AC45E8 0000E8 0004+04 0/1 0/0 0/0 .rodata          @4775 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4775[1 + 1 /* padding */] = {
    60.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80AC45E0, &lit_4775);
#pragma pop

/* 80AC45E8-80AC45F0 0000F0 0008+00 1/3 0/0 0/0 .rodata          @4777 */
SECTION_RODATA static u8 const lit_4777[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AC45E8, &lit_4777);

/* 80AC15B4-80AC18A0 001274 02EC+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_Saru_cFv */
void daNpc_Saru_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AC45F0-80AC45F8 0000F8 0008+00 0/1 0/0 0/0 .rodata          @4835 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4835[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AC45F0, &lit_4835);
#pragma pop

/* 80AC45F8-80AC4600 000100 0008+00 0/1 0/0 0/0 .rodata          @4836 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4836[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AC45F8, &lit_4836);
#pragma pop

/* 80AC4600-80AC4608 000108 0008+00 0/1 0/0 0/0 .rodata          @4837 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4837[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AC4600, &lit_4837);
#pragma pop

/* 80AC4608-80AC460C 000110 0004+00 1/1 0/0 0/0 .rodata          @4876 */
SECTION_RODATA static f32 const lit_4876 = 20.0f;
COMPILER_STRIP_GATE(0x80AC4608, &lit_4876);

/* 80AC18A0-80AC1A20 001560 0180+00 1/0 0/0 0/0 .text            setCollision__12daNpc_Saru_cFv */
void daNpc_Saru_c::setCollision() {
    // NONMATCHING
}

/* 80AC1A20-80AC1A28 0016E0 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_Saru_cFv */
int daNpc_Saru_c::drawDbgInfo() {
    return 0;
}

/* ############################################################################################## */
/* 80AC460C-80AC4614 000114 0008+00 1/1 0/0 0/0 .rodata          jointNo$4884 */
SECTION_RODATA static u8 const jointNo[8] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80AC460C, &jointNo);

/* 80AC1A28-80AC1B30 0016E8 0108+00 1/0 0/0 0/0 .text            drawOtherMdl__12daNpc_Saru_cFv */
void daNpc_Saru_c::drawOtherMdl() {
    // NONMATCHING
}

/* 80AC1B30-80AC1B78 0017F0 0048+00 1/1 0/0 0/0 .text            selectAction__12daNpc_Saru_cFv */
void daNpc_Saru_c::selectAction() {
    // NONMATCHING
}

/* 80AC1B78-80AC1BA4 001838 002C+00 2/2 0/0 0/0 .text
 * chkAction__12daNpc_Saru_cFM12daNpc_Saru_cFPCvPvPv_i          */
void daNpc_Saru_c::chkAction(int (daNpc_Saru_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80AC1BA4-80AC1C4C 001864 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_Saru_cFM12daNpc_Saru_cFPCvPvPv_i          */
void daNpc_Saru_c::setAction(int (daNpc_Saru_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AC4614-80AC4618 00011C 0004+00 0/1 0/0 0/0 .rodata          @5082 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5082 = 12.0f;
COMPILER_STRIP_GATE(0x80AC4614, &lit_5082);
#pragma pop

/* 80AC4618-80AC461C 000120 0004+00 0/1 0/0 0/0 .rodata          @5083 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5083 = 19.0f;
COMPILER_STRIP_GATE(0x80AC4618, &lit_5083);
#pragma pop

/* 80AC461C-80AC4620 000124 0004+00 0/1 0/0 0/0 .rodata          @5084 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5084 = 42.0f;
COMPILER_STRIP_GATE(0x80AC461C, &lit_5084);
#pragma pop

/* 80AC4620-80AC4624 000128 0004+00 0/1 0/0 0/0 .rodata          @5085 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5085 = 75.0f;
COMPILER_STRIP_GATE(0x80AC4620, &lit_5085);
#pragma pop

/* 80AC4624-80AC4628 00012C 0004+00 0/1 0/0 0/0 .rodata          @5086 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5086 = 5.0f;
COMPILER_STRIP_GATE(0x80AC4624, &lit_5086);
#pragma pop

/* 80AC4628-80AC462C 000130 0004+00 0/1 0/0 0/0 .rodata          @5087 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5087 = 21.0f;
COMPILER_STRIP_GATE(0x80AC4628, &lit_5087);
#pragma pop

/* 80AC462C-80AC4630 000134 0004+00 0/1 0/0 0/0 .rodata          @5088 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5088 = 53.0f;
COMPILER_STRIP_GATE(0x80AC462C, &lit_5088);
#pragma pop

/* 80AC4630-80AC4634 000138 0004+00 0/1 0/0 0/0 .rodata          @5089 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5089 = 64.0f;
COMPILER_STRIP_GATE(0x80AC4630, &lit_5089);
#pragma pop

/* 80AC4634-80AC4638 00013C 0004+00 0/1 0/0 0/0 .rodata          @5090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5090 = 4.0f;
COMPILER_STRIP_GATE(0x80AC4634, &lit_5090);
#pragma pop

/* 80AC4638-80AC463C 000140 0004+00 0/1 0/0 0/0 .rodata          @5091 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5091 = 11.0f;
COMPILER_STRIP_GATE(0x80AC4638, &lit_5091);
#pragma pop

/* 80AC463C-80AC4640 000144 0004+00 0/1 0/0 0/0 .rodata          @5092 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5092 = 23.0f;
COMPILER_STRIP_GATE(0x80AC463C, &lit_5092);
#pragma pop

/* 80AC4640-80AC4644 000148 0004+00 0/1 0/0 0/0 .rodata          @5093 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5093 = 9.0f;
COMPILER_STRIP_GATE(0x80AC4640, &lit_5093);
#pragma pop

/* 80AC4644-80AC4648 00014C 0004+00 0/1 0/0 0/0 .rodata          @5094 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5094 = 15.0f;
COMPILER_STRIP_GATE(0x80AC4644, &lit_5094);
#pragma pop

/* 80AC1C4C-80AC216C 00190C 0520+00 1/1 0/0 0/0 .text            setSe__12daNpc_Saru_cFv */
void daNpc_Saru_c::setSe() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AC4648-80AC464C 000150 0004+00 0/1 0/0 0/0 .rodata          @5142 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5142 = 2500.0f;
COMPILER_STRIP_GATE(0x80AC4648, &lit_5142);
#pragma pop

/* 80AC464C-80AC4650 000154 0004+00 0/1 0/0 0/0 .rodata          @5143 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5143 = 18.0f;
COMPILER_STRIP_GATE(0x80AC464C, &lit_5143);
#pragma pop

/* 80AC4650-80AC4654 000158 0004+00 0/1 0/0 0/0 .rodata          @5144 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5144 = 0.5f;
COMPILER_STRIP_GATE(0x80AC4650, &lit_5144);
#pragma pop

/* 80AC4654-80AC4654 00015C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AC4696 = "prm";
SECTION_DEAD static char const* const stringBase_80AC469A = "timer";
#pragma pop

/* 80AC216C-80AC2368 001E2C 01FC+00 1/0 0/0 0/0 .text            cutFindMonkey__12daNpc_Saru_cFi */
void daNpc_Saru_c::cutFindMonkey(int param_0) {
    // NONMATCHING
}

/* 80AC2368-80AC2598 002028 0230+00 1/0 0/0 0/0 .text            cutHelpMe__12daNpc_Saru_cFi */
void daNpc_Saru_c::cutHelpMe(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AC4654-80AC4654 00015C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AC46A0 = "@";
#pragma pop

/* 80AC2598-80AC28A4 002258 030C+00 1/0 0/0 0/0 .text            cutYmLook__12daNpc_Saru_cFi */
void daNpc_Saru_c::cutYmLook(int param_0) {
    // NONMATCHING
}

/* 80AC28A4-80AC2FD8 002564 0734+00 1/0 0/0 0/0 .text            wait__12daNpc_Saru_cFPv */
void daNpc_Saru_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80AC2FD8-80AC31B4 002C98 01DC+00 3/0 0/0 0/0 .text            talk__12daNpc_Saru_cFPv */
void daNpc_Saru_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80AC31B4-80AC31D4 002E74 0020+00 1/0 0/0 0/0 .text            daNpc_Saru_Create__FPv */
static void daNpc_Saru_Create(void* param_0) {
    // NONMATCHING
}

/* 80AC31D4-80AC31F4 002E94 0020+00 1/0 0/0 0/0 .text            daNpc_Saru_Delete__FPv */
static void daNpc_Saru_Delete(void* param_0) {
    // NONMATCHING
}

/* 80AC31F4-80AC3214 002EB4 0020+00 1/0 0/0 0/0 .text            daNpc_Saru_Execute__FPv */
static void daNpc_Saru_Execute(void* param_0) {
    // NONMATCHING
}

/* 80AC3214-80AC3234 002ED4 0020+00 1/0 0/0 0/0 .text            daNpc_Saru_Draw__FPv */
static void daNpc_Saru_Draw(void* param_0) {
    // NONMATCHING
}

/* 80AC3234-80AC323C 002EF4 0008+00 1/0 0/0 0/0 .text            daNpc_Saru_IsDelete__FPv */
static bool daNpc_Saru_IsDelete(void* param_0) {
    return true;
}

/* 80AC323C-80AC3284 002EFC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AC3284-80AC360C 002F44 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80AC360C-80AC3648 0032CC 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80AC3648-80AC3684 003308 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80AC3684-80AC36CC 003344 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AC36CC-80AC3714 00338C 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80AC3714-80AC3750 0033D4 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AC3750-80AC3798 003410 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80AC3798-80AC37E0 003458 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80AC37E0-80AC3BE4 0034A0 0404+00 1/1 0/0 0/0 .text
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

/* 80AC3BE4-80AC3BE8 0038A4 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80AC3BE8-80AC3CE4 0038A8 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80AC3CE4-80AC3CE8 0039A4 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80AC3CE8-80AC3D30 0039A8 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80AC3D30-80AC3DA0 0039F0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80AC3DA0-80AC3DFC 003A60 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AC3DFC-80AC3E6C 003ABC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80AC3E6C-80AC3EB4 003B2C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80AC3EB4-80AC3FD0 003B74 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80AC3FD0-80AC41D8 003C90 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80AC41D8-80AC41DC 003E98 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80AC41FC-80AC4204 003EBC 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80AC4204-80AC420C 003EC4 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}


/* 80AC4214-80AC421C 003ED4 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80AC4220-80AC4228 003EE0 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80AC4228-80AC4240 003EE8 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80AC4240-80AC4244 003F00 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80AC4244-80AC424C 003F04 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80AC424C-80AC4254 003F0C 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80AC4254-80AC4284 003F14 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80AC4284-80AC42B4 003F44 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80AC42B4-80AC42B8 003F74 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AC42B8-80AC42BC 003F78 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AC42BC-80AC42C0 003F7C 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AC42C0-80AC42C4 003F80 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AC42C4-80AC42E0 003F84 001C+00 3/3 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80AC42C4(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AC4FD4-80AC4FE0 000930 000C+00 2/2 0/0 0/0 .data            __vt__18daNpc_Saru_Param_c */
SECTION_DATA extern void* __vt__18daNpc_Saru_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_Saru_Param_cFv,
};

/* 80AC4FE8-80AC4FF4 000008 000C+00 1/1 0/0 0/0 .bss             @3845 */
static u8 lit_3845[12];

/* 80AC4FF4-80AC4FF8 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80AC42E0-80AC4394 003FA0 00B4+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_saru_cpp */
void __sinit_d_a_npc_saru_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80AC42E0, __sinit_d_a_npc_saru_cpp);
#pragma pop

/* 80AC4474-80AC447C 004134 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__12daNpc_Saru_cFv */
s32 daNpc_Saru_c::getHeadJointNo() {
    return 4;
}

/* 80AC447C-80AC4484 00413C 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__12daNpc_Saru_cFv */
s32 daNpc_Saru_c::getNeckJointNo() {
    return 3;
}

/* 80AC4484-80AC448C 004144 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__12daNpc_Saru_cFv */
s32 daNpc_Saru_c::getBackboneJointNo() {
    return 1;
}

/* 80AC448C-80AC44D4 00414C 0048+00 2/1 0/0 0/0 .text            __dt__18daNpc_Saru_Param_cFv */
daNpc_Saru_Param_c::~daNpc_Saru_Param_c() {
    // NONMATCHING
}

/* 80AC4654-80AC4654 00015C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
