/**
 * @file d_a_npc_gnd.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_gnd.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__11daNpc_Gnd_cFv();
extern "C" void create__11daNpc_Gnd_cFv();
extern "C" void CreateHeap__11daNpc_Gnd_cFv();
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
extern "C" void Delete__11daNpc_Gnd_cFv();
extern "C" void Execute__11daNpc_Gnd_cFv();
extern "C" void Draw__11daNpc_Gnd_cFv();
extern "C" void createHeapCallBack__11daNpc_Gnd_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_Gnd_cFP8J3DJointi();
extern "C" void getType__11daNpc_Gnd_cFv();
extern "C" void getFlowNodeNo__11daNpc_Gnd_cFv();
extern "C" void isDelete__11daNpc_Gnd_cFv();
extern "C" void reset__11daNpc_Gnd_cFv();
extern "C" void afterJntAnm__11daNpc_Gnd_cFi();
extern "C" void ctrlBtk__11daNpc_Gnd_cFv();
extern "C" void setParam__11daNpc_Gnd_cFv();
extern "C" void setAfterTalkMotion__11daNpc_Gnd_cFv();
extern "C" void srchActors__11daNpc_Gnd_cFv();
extern "C" void evtTalk__11daNpc_Gnd_cFv();
extern "C" void evtCutProc__11daNpc_Gnd_cFv();
extern "C" void action__11daNpc_Gnd_cFv();
extern "C" void beforeMove__11daNpc_Gnd_cFv();
extern "C" void setAttnPos__11daNpc_Gnd_cFv();
extern "C" void setCollision__11daNpc_Gnd_cFv();
extern "C" bool drawDbgInfo__11daNpc_Gnd_cFv();
extern "C" void afterSetMotionAnm__11daNpc_Gnd_cFiifi();
extern "C" void selectAction__11daNpc_Gnd_cFv();
extern "C" void chkAction__11daNpc_Gnd_cFM11daNpc_Gnd_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_Gnd_cFM11daNpc_Gnd_cFPCvPvPv_i();
extern "C" void wait__11daNpc_Gnd_cFPv();
extern "C" void talk__11daNpc_Gnd_cFPv();
extern "C" static void daNpc_Gnd_Create__FPv();
extern "C" static void daNpc_Gnd_Delete__FPv();
extern "C" static void daNpc_Gnd_Execute__FPv();
extern "C" static void daNpc_Gnd_Draw__FPv();
extern "C" static bool daNpc_Gnd_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__4cXyzFv();
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
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs();
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs();
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi();
extern "C" bool checkChangeJoint__8daNpcT_cFi();
extern "C" bool checkRemoveJoint__8daNpcT_cFi();
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" u16 getEyeballMaterialNo__8daNpcT_cFv();
extern "C" bool checkChangeEvt__8daNpcT_cFv();
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawOtherMdl__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void __sinit_d_a_npc_gnd_cpp();
extern "C" void
__ct__11daNpc_Gnd_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" u16 getEyeballRMaterialNo__11daNpc_Gnd_cFv();
extern "C" u16 getEyeballLMaterialNo__11daNpc_Gnd_cFv();
extern "C" s32 getHeadJointNo__11daNpc_Gnd_cFv();
extern "C" s32 getNeckJointNo__11daNpc_Gnd_cFv();
extern "C" bool getBackboneJointNo__11daNpc_Gnd_cFv();
extern "C" void __dt__17daNpc_Gnd_Param_cFv();
extern "C" static void func_809BE47C();
extern "C" static void func_809BE484();
extern "C" u8 const m__17daNpc_Gnd_Param_c[140];
extern "C" extern char const* const d_a_npc_gnd__stringBase0;
extern "C" void* mCutNameList__11daNpc_Gnd_c;
extern "C" u8 mCutList__11daNpc_Gnd_c[12];

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
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
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
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz();
extern "C" void calcJntRad__15daNpcT_JntAnm_cFfff();
extern "C" void calc__19daNpcT_DmgStagger_cFi();
extern "C" void tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void getTevRegKeyAnmP__8daNpcT_cFPCci();
extern "C" void getColorAnmP__8daNpcT_cFPCci();
extern "C" void setBrkAnm__8daNpcT_cFP15J3DAnmTevRegKeyP12J3DModelDatafi();
extern "C" void setBpkAnm__8daNpcT_cFP11J3DAnmColorP12J3DModelDatafi();
extern "C" void loadRes__8daNpcT_cFPCScPPCc();
extern "C" void deleteRes__8daNpcT_cFPCScPPCc();
extern "C" void execute__8daNpcT_cFv();
extern "C" void draw__8daNpcT_cFiifP11_GXColorS10fiii();
extern "C" void setEnvTevColor__8daNpcT_cFv();
extern "C" void setRoomNo__8daNpcT_cFv();
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
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void daNpcT_getDistTableIdx__Fii();
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
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_25();
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
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

//
// Declarations:
//

// /* ############################################################################################## */
// /* 809BE588-809BE588 0000E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
// #pragma push
// #pragma force_active on
// SECTION_DEAD static char const* const stringBase_809BE588 = "";
// SECTION_DEAD static char const* const stringBase_809BE589 = "NO_RESPONSE";
// SECTION_DEAD static char const* const stringBase_809BE595 = "Gnd";
// #pragma pop

/* 809BE5BC-809BE5C4 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01,
};

/* 809BE5C4-809BE5D4 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
SECTION_DATA static daNpcT_evtData_c l_evtList[2] = {
    {"", 0},
    {"NO_RESPONSE", 0},
};

/* 809BE5D4-809BE5DC -00001 0008+00 2/4 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {
    "",
    "Gnd",
};

/* 809BE5DC-809BE5E0 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[2] = {
    1, -1
};

/* 809BE5E0-809BE5E8 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[2] = {
    l_loadResPtrn0, l_loadResPtrn0
};

/* 809BE5E8-809BE604 00004C 001C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[1] = {
    {-1, 0, 0, 23, 2, 1, 1}
};

/* 809BE604-809BE620 000068 001C+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static int l_motionAnmData[7] = {
    8, 2, 1, 20, 0, 1, 65536
};
#pragma pop

/* 809BE620-809BE630 000084 0010+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[4] = {
    {0, -1, 0}, 
    {-1, 0, 0}, 
    {-1, 0, 0}, 
    {-1, 0, 0},
};
#pragma pop

/* 809BE630-809BE640 000094 0010+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[4] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}
};

/* 809BE640-809BE644 -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__11daNpc_Gnd_c */
SECTION_DATA char* daNpc_Gnd_c::mCutNameList = "";

/* 809BE644-809BE650 0000A8 000C+00 2/2 0/0 0/0 .data            mCutList__11daNpc_Gnd_c */
daNpc_Gnd_c::cutFunc daNpc_Gnd_c::mCutList[1] = {
    0,
};

/* 809BE650-809BE65C -00001 000C+00 1/1 0/0 0/0 .data            @4607 */
SECTION_DATA static void* lit_4607[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Gnd_cFPv,
};

/* 809BE65C-809BE668 -00001 000C+00 1/1 0/0 0/0 .data            @4617 */
SECTION_DATA static void* lit_4617[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Gnd_cFPv,
};

/* 809BE668-809BE670 0000CC 0008+00 0/1 0/0 0/0 .data            brkAnmData$4830 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 brkAnmData[8] = {
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 809BE670-809BE678 0000D4 0008+00 0/1 0/0 0/0 .data            bpkAnmData$4831 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 bpkAnmData[8] = {
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 809BE678-809BE684 -00001 000C+00 1/1 0/0 0/0 .data            @4881 */
SECTION_DATA static void* lit_4881[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_Gnd_cFPv,
};

/* 809BE684-809BE6A4 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Gnd_MethodTable */
static actor_method_class daNpc_Gnd_MethodTable = {
    (process_method_func)daNpc_Gnd_Create__FPv,
    (process_method_func)daNpc_Gnd_Delete__FPv,
    (process_method_func)daNpc_Gnd_Execute__FPv,
    (process_method_func)daNpc_Gnd_IsDelete__FPv,
    (process_method_func)daNpc_Gnd_Draw__FPv,
};

/* 809BE6A4-809BE6D4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_GND */
extern actor_process_profile_definition g_profile_NPC_GND = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_GND,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_Gnd_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  305,                    // mPriority
  &daNpc_Gnd_MethodTable, // sub_method
  0x00044107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 809BE6D4-809BE6E0 000138 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 809BE6E0-809BE6EC 000144 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

// /* 809BE6EC-809BE710 000150 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
// SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__12dBgS_ObjAcchFv,
//     (void*)NULL,
//     (void*)NULL,
//     (void*)func_809BE484,
//     (void*)NULL,
//     (void*)NULL,
//     (void*)func_809BE47C,
// };

// /* 809BE710-809BE71C 000174 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
// SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__12dBgS_AcchCirFv,
// };

// /* 809BE71C-809BE728 000180 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
// SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__10cCcD_GSttsFv,
// };

// /* 809BE728-809BE734 00018C 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
// SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__10dCcD_GSttsFv,
// };

// /* 809BE734-809BE740 000198 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
// SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
// };

// /* 809BE740-809BE74C 0001A4 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
// SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__18daNpcT_ActorMngr_cFv,
// };

// /* 809BE74C-809BE758 0001B0 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
// SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__15daNpcT_JntAnm_cFv,
// };

/* 809BE758-809BE764 0001BC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 809BE764-809BE770 0001C8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

// /* 809BE770-809BE834 0001D4 00C4+00 2/2 0/0 0/0 .data            __vt__11daNpc_Gnd_c */
// SECTION_DATA extern void* __vt__11daNpc_Gnd_c[49] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__11daNpc_Gnd_cFv,
//     (void*)ctrlBtk__11daNpc_Gnd_cFv,
//     (void*)ctrlSubFaceMotion__8daNpcT_cFi,
//     (void*)checkChangeJoint__8daNpcT_cFi,
//     (void*)checkRemoveJoint__8daNpcT_cFi,
//     (void*)getBackboneJointNo__11daNpc_Gnd_cFv,
//     (void*)getNeckJointNo__11daNpc_Gnd_cFv,
//     (void*)getHeadJointNo__11daNpc_Gnd_cFv,
//     (void*)getFootLJointNo__8daNpcT_cFv,
//     (void*)getFootRJointNo__8daNpcT_cFv,
//     (void*)getEyeballLMaterialNo__11daNpc_Gnd_cFv,
//     (void*)getEyeballRMaterialNo__11daNpc_Gnd_cFv,
//     (void*)getEyeballMaterialNo__8daNpcT_cFv,
//     (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
//     (void*)afterJntAnm__11daNpc_Gnd_cFi,
//     (void*)setParam__11daNpc_Gnd_cFv,
//     (void*)checkChangeEvt__8daNpcT_cFv,
//     (void*)evtTalk__11daNpc_Gnd_cFv,
//     (void*)evtEndProc__8daNpcT_cFv,
//     (void*)evtCutProc__11daNpc_Gnd_cFv,
//     (void*)setAfterTalkMotion__11daNpc_Gnd_cFv,
//     (void*)evtProc__8daNpcT_cFv,
//     (void*)action__11daNpc_Gnd_cFv,
//     (void*)beforeMove__11daNpc_Gnd_cFv,
//     (void*)afterMoved__8daNpcT_cFv,
//     (void*)setAttnPos__11daNpc_Gnd_cFv,
//     (void*)setFootPos__8daNpcT_cFv,
//     (void*)setCollision__11daNpc_Gnd_cFv,
//     (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
//     (void*)checkCullDraw__8daNpcT_cFv,
//     (void*)twilight__8daNpcT_cFv,
//     (void*)chkXYItems__8daNpcT_cFv,
//     (void*)evtOrder__8daNpcT_cFv,
//     (void*)decTmr__8daNpcT_cFv,
//     (void*)clrParam__8daNpcT_cFv,
//     (void*)drawDbgInfo__11daNpc_Gnd_cFv,
//     (void*)drawOtherMdl__8daNpcT_cFv,
//     (void*)drawGhost__8daNpcT_cFv,
//     (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
//     (void*)afterSetMotionAnm__11daNpc_Gnd_cFiifi,
//     (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
//     (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
//     (void*)changeAnm__8daNpcT_cFPiPi,
//     (void*)changeBck__8daNpcT_cFPiPi,
//     (void*)changeBtp__8daNpcT_cFPiPi,
//     (void*)changeBtk__8daNpcT_cFPiPi,
//     (void*)setMotionAnm__8daNpcT_cFifi,
// };

/* 809BB60C-809BB730 0000EC 0124+00 1/0 0/0 0/0 .text            __dt__11daNpc_Gnd_cFv */
daNpc_Gnd_c::~daNpc_Gnd_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809BE4A0-809BE52C 000000 008C+00 6/6 0/0 0/0 .rodata          m__17daNpc_Gnd_Param_c */
daNpc_Gnd_Param_c::Data const daNpc_Gnd_Param_c::m = {
    280.0f, -3.0f, 1.0f, 500.0f, 255.0f, 260.0f, 
    35.0f, 50.0f, 0.0f, 0.0f, 10.0f, -10.0f, 
    30.0f, -10.0f, 45.0f, -45.0f, 0.6f, 12.0f, 
    3, 6, 5, 6, 110.0f, 0, 0, 0, 60, 8, 0.0f, 0.0f, 
    4.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f
};

/* 809BE52C-809BE530 00008C 0004+00 0/1 0/0 0/0 .rodata          @4020 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4020 = -300.0f;
COMPILER_STRIP_GATE(0x809BE52C, &lit_4020);
#pragma pop

/* 809BE530-809BE534 000090 0004+00 0/1 0/0 0/0 .rodata          @4021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4021 = -50.0f;
COMPILER_STRIP_GATE(0x809BE530, &lit_4021);
#pragma pop

/* 809BE534-809BE538 000094 0004+00 0/1 0/0 0/0 .rodata          @4022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4022 = 300.0f;
COMPILER_STRIP_GATE(0x809BE534, &lit_4022);
#pragma pop

/* 809BE538-809BE53C 000098 0004+00 0/1 0/0 0/0 .rodata          @4023 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4023 = 450.0f;
COMPILER_STRIP_GATE(0x809BE538, &lit_4023);
#pragma pop

/* 809BE53C-809BE540 00009C 0004+00 0/1 0/0 0/0 .rodata          @4024 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4024 = -1000000000.0f;
COMPILER_STRIP_GATE(0x809BE53C, &lit_4024);
#pragma pop

/* 809BB730-809BB9D4 000210 02A4+00 1/1 0/0 0/0 .text            create__11daNpc_Gnd_cFv */
int daNpc_Gnd_c::create() {
    fopAcM_SetupActor2(this, daNpc_Gnd_c, l_faceMotionAnmData,
        (const daNpcT_motionAnmData_c *)l_motionAnmData, l_faceMotionSequenceData, 4,
        l_motionSequenceData, 4, l_evtList, l_resNameList
    );
    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = false;
    int rv = loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (rv == 4) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0)) {

        }
    }
    return 0; // Placeholder
}

/* ############################################################################################## */
/* 809BE540-809BE544 0000A0 0004+00 5/9 0/0 0/0 .rodata          @4178 */
SECTION_RODATA static u8 const lit_4178[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809BE540, &lit_4178);

/* 809BE544-809BE548 0000A4 0004+00 0/2 0/0 0/0 .rodata          @4179 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4179 = 65536.0f;
COMPILER_STRIP_GATE(0x809BE544, &lit_4179);
#pragma pop

/* 809BE548-809BE54C 0000A8 0004+00 1/4 0/0 0/0 .rodata          @4180 */
SECTION_RODATA static f32 const lit_4180 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x809BE548, &lit_4180);

/* 809BE54C-809BE550 0000AC 0004+00 3/5 0/0 0/0 .rodata          @4331 */
SECTION_RODATA static f32 const lit_4331 = 1.0f;
COMPILER_STRIP_GATE(0x809BE54C, &lit_4331);

/* 809BB9D4-809BBC70 0004B4 029C+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_Gnd_cFv */
int daNpc_Gnd_c::CreateHeap() {
    
    return 0;
}

// /* 809BBC70-809BBCAC 000750 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// // J3DTevKColorAnm::~J3DTevKColorAnm() {
// extern "C" void __dt__15J3DTevKColorAnmFv() {
//     // NONMATCHING
// }

// /* 809BBCAC-809BBCC4 00078C 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// // J3DTevKColorAnm::J3DTevKColorAnm() {
// extern "C" void __ct__15J3DTevKColorAnmFv() {
//     // NONMATCHING
// }

// /* 809BBCC4-809BBD00 0007A4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// // J3DTevColorAnm::~J3DTevColorAnm() {
// extern "C" void __dt__14J3DTevColorAnmFv() {
//     // NONMATCHING
// }

// /* 809BBD00-809BBD18 0007E0 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// // J3DTevColorAnm::J3DTevColorAnm() {
// extern "C" void __ct__14J3DTevColorAnmFv() {
//     // NONMATCHING
// }

// /* 809BBD18-809BBD60 0007F8 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// // J3DTexNoAnm::~J3DTexNoAnm() {
// extern "C" void __dt__11J3DTexNoAnmFv() {
//     // NONMATCHING
// }

// /* 809BBD60-809BBD84 000840 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// // J3DTexNoAnm::J3DTexNoAnm() {
// extern "C" void __ct__11J3DTexNoAnmFv() {
//     // NONMATCHING
// }

// /* 809BBD84-809BBDC0 000864 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// // J3DTexMtxAnm::~J3DTexMtxAnm() {
// extern "C" void __dt__12J3DTexMtxAnmFv() {
//     // NONMATCHING
// }

// /* 809BBDC0-809BBDD8 0008A0 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// // J3DTexMtxAnm::J3DTexMtxAnm() {
// extern "C" void __ct__12J3DTexMtxAnmFv() {
//     // NONMATCHING
// }

// /* 809BBDD8-809BBE14 0008B8 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// // J3DMatColorAnm::~J3DMatColorAnm() {
// extern "C" void __dt__14J3DMatColorAnmFv() {
//     // NONMATCHING
// }

// /* 809BBE14-809BBE2C 0008F4 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// // J3DMatColorAnm::J3DMatColorAnm() {
// extern "C" void __ct__14J3DMatColorAnmFv() {
//     // NONMATCHING
// }

/* 809BBE2C-809BBE60 00090C 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_Gnd_cFv */
int daNpc_Gnd_c::Delete() {
    fopAcM_GetID(this);
    this->~daNpc_Gnd_c();
    return 1;
}

/* 809BBE60-809BBE80 000940 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_Gnd_cFv */
int daNpc_Gnd_c::Execute() {
    return daNpcT_c::execute();
}

/* ############################################################################################## */
/* 809BE550-809BE554 0000B0 0004+00 1/1 0/0 0/0 .rodata          @4391 */
SECTION_RODATA static f32 const lit_4391 = 100.0f;
COMPILER_STRIP_GATE(0x809BE550, &lit_4391);

/* 809BBE80-809BBF44 000960 00C4+00 1/1 0/0 0/0 .text            Draw__11daNpc_Gnd_cFv */
int daNpc_Gnd_c::Draw() {
    if (mpMatAnm[0] != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }
    return daNpcT_c::draw(0, 0, mRealShadowSize, NULL, 100.0f, 0, 0, 0);
}

/* 809BBF44-809BBF64 000A24 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_Gnd_cFP10fopAc_ac_c              */
int daNpc_Gnd_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpc_Gnd_c*>(i_this)->CreateHeap();
}

/* 809BBF64-809BBFBC 000A44 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpc_Gnd_cFP8J3DJointi
 */
int daNpc_Gnd_c::ctrlJointCallBack(J3DJoint* param_1, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Gnd_c* i_this = reinterpret_cast<daNpc_Gnd_c*>(model->getUserArea());
        if (i_this != 0) {
            i_this->ctrlJoint(param_1, model);
        }
    }
    return 1;
}

/* 809BBFBC-809BBFDC 000A9C 0020+00 1/1 0/0 0/0 .text            getType__11daNpc_Gnd_cFv */
u8 daNpc_Gnd_c::getType() {
    switch ((u8)fopAcM_GetParam(this)) {
        case 0:
            return TYPE_0;
        default:
            return TYPE_1;
    }
}

/* 809BBFDC-809BBFF8 000ABC 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__11daNpc_Gnd_cFv */
int daNpc_Gnd_c::getFlowNodeNo() {
    u16 nodeNo = home.angle.x;
    if (nodeNo == 0xffff) {
        return -1;
    }
    return nodeNo;
}

/* 809BBFF8-809BC028 000AD8 0030+00 1/1 0/0 0/0 .text            isDelete__11daNpc_Gnd_cFv */
int daNpc_Gnd_c::isDelete() {
    if (mType == TYPE_1) {
        return 0;
    }
    switch (mType) {
        case TYPE_0:
            return 0;
        default: {
            return 1;
        }
    }
}

/* 809BC028-809BC168 000B08 0140+00 1/1 0/0 0/0 .text            reset__11daNpc_Gnd_cFv */
void daNpc_Gnd_c::reset() {
    // NONMATCHING
}

/* 809BC168-809BC1F4 000C48 008C+00 1/0 0/0 0/0 .text            afterJntAnm__11daNpc_Gnd_cFi */
void daNpc_Gnd_c::afterJntAnm(int param_1) {
    if (param_1 == 1) {
        mDoMtx_stack_c::YrotM(-mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(1));
    } else if (param_1 == 4) {
        mDoMtx_stack_c::YrotM(-mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }
}

/* ############################################################################################## */
/* 809BE554-809BE558 0000B4 0004+00 3/3 0/0 0/0 .rodata          @4552 */
SECTION_RODATA static f32 const lit_4552 = -1.0f;
COMPILER_STRIP_GATE(0x809BE554, &lit_4552);

/* 809BC1F4-809BC328 000CD4 0134+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpc_Gnd_cFv */
BOOL daNpc_Gnd_c::ctrlBtk() {
    // NONMATCHING
    return false; // Placeholder
}

/* 809BC328-809BC448 000E08 0120+00 1/0 0/0 0/0 .text            setParam__11daNpc_Gnd_cFv */
void daNpc_Gnd_c::setParam() {
    // NONMATCHING
}

/* 809BC448-809BC4A8 000F28 0060+00 1/0 0/0 0/0 .text            setAfterTalkMotion__11daNpc_Gnd_cFv
 */
void daNpc_Gnd_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 809BC4A8-809BC4AC 000F88 0004+00 1/1 0/0 0/0 .text            srchActors__11daNpc_Gnd_cFv */
void daNpc_Gnd_c::srchActors() {
    /* empty function */
}

/* 809BC4AC-809BC5AC 000F8C 0100+00 1/0 0/0 0/0 .text            evtTalk__11daNpc_Gnd_cFv */
BOOL daNpc_Gnd_c::evtTalk() {
    // NONMATCHING
    return false; // Placeholder
}

/* 809BC5AC-809BC674 00108C 00C8+00 1/0 0/0 0/0 .text            evtCutProc__11daNpc_Gnd_cFv */
BOOL daNpc_Gnd_c::evtCutProc() {
    // NONMATCHING
    return false; // Placeholder
}

/* 809BC674-809BC760 001154 00EC+00 1/0 0/0 0/0 .text            action__11daNpc_Gnd_cFv */
void daNpc_Gnd_c::action() {
    // NONMATCHING
}

/* 809BC760-809BC7D8 001240 0078+00 1/0 0/0 0/0 .text            beforeMove__11daNpc_Gnd_cFv */
void daNpc_Gnd_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809BE558-809BE55C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4723 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4723 = 10.0f;
COMPILER_STRIP_GATE(0x809BE558, &lit_4723);
#pragma pop

/* 809BE55C-809BE560 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4724 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4724 = 30.0f;
COMPILER_STRIP_GATE(0x809BE55C, &lit_4724);
#pragma pop

/* 809BE560-809BE568 0000C0 0004+04 0/1 0/0 0/0 .rodata          @4725 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4725[1 + 1 /* padding */] = {
    0x38C90FDB,
    /* padding */
    0x00000000,
};
COMPILER_STRIP_GATE(0x809BE560, &lit_4725);
#pragma pop

/* 809BE568-809BE570 0000C8 0008+00 1/3 0/0 0/0 .rodata          @4727 */
SECTION_RODATA static u8 const lit_4727[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809BE568, &lit_4727);

/* 809BC7D8-809BCA14 0012B8 023C+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_Gnd_cFv */
void daNpc_Gnd_c::setAttnPos() {
    // NONMATCHING
}

/* 809BCA14-809BCB48 0014F4 0134+00 1/0 0/0 0/0 .text            setCollision__11daNpc_Gnd_cFv */
void daNpc_Gnd_c::setCollision() {
    // NONMATCHING
}

/* 809BCB48-809BCB50 001628 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_Gnd_cFv */
int daNpc_Gnd_c::drawDbgInfo() {
    return 0;
}

/* 809BCB50-809BCCE8 001630 0198+00 1/0 0/0 0/0 .text afterSetMotionAnm__11daNpc_Gnd_cFiifi */
bool daNpc_Gnd_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    // NONMATCHING
    return false; // Placeholder
}

/* 809BCCE8-809BCD30 0017C8 0048+00 1/1 0/0 0/0 .text            selectAction__11daNpc_Gnd_cFv */
void daNpc_Gnd_c::selectAction() {
    // NONMATCHING
}

/* 809BCD30-809BCD5C 001810 002C+00 1/1 0/0 0/0 .text
 * chkAction__11daNpc_Gnd_cFM11daNpc_Gnd_cFPCvPvPv_i            */
void daNpc_Gnd_c::chkAction(int (daNpc_Gnd_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809BCD5C-809BCE04 00183C 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_Gnd_cFM11daNpc_Gnd_cFPCvPvPv_i            */
void daNpc_Gnd_c::setAction(int (daNpc_Gnd_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809BCE04-809BD050 0018E4 024C+00 1/0 0/0 0/0 .text            wait__11daNpc_Gnd_cFPv */
void daNpc_Gnd_c::wait(void* param_0) {
    // NONMATCHING
}

/* 809BD050-809BD248 001B30 01F8+00 2/0 0/0 0/0 .text            talk__11daNpc_Gnd_cFPv */
void daNpc_Gnd_c::talk(void* param_0) {
    // NONMATCHING
}

/* 809BD248-809BD268 001D28 0020+00 1/0 0/0 0/0 .text            daNpc_Gnd_Create__FPv */
static int daNpc_Gnd_Create(void* i_this) {
    return static_cast<daNpc_Gnd_c*>(i_this)->create();
}

/* 809BD268-809BD288 001D48 0020+00 1/0 0/0 0/0 .text            daNpc_Gnd_Delete__FPv */
static int daNpc_Gnd_Delete(void* i_this) {
    return static_cast<daNpc_Gnd_c*>(i_this)->Delete();
}

/* 809BD288-809BD2A8 001D68 0020+00 1/0 0/0 0/0 .text            daNpc_Gnd_Execute__FPv */
static int daNpc_Gnd_Execute(void* i_this) {
    return static_cast<daNpc_Gnd_c*>(i_this)->Execute();
}

/* 809BD2A8-809BD2C8 001D88 0020+00 1/0 0/0 0/0 .text            daNpc_Gnd_Draw__FPv */
static int daNpc_Gnd_Draw(void* i_this) {
    return static_cast<daNpc_Gnd_c*>(i_this)->Draw();
}

/* 809BD2C8-809BD2D0 001DA8 0008+00 1/0 0/0 0/0 .text            daNpc_Gnd_IsDelete__FPv */
static int daNpc_Gnd_IsDelete(void* i_this) {
    return 1;
}

// /* 809BD2D0-809BD300 001DB0 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// // void J3DTexNoAnm::calc(u16* param_0) const {
// extern "C" void calc__11J3DTexNoAnmCFPUs() {
//     // NONMATCHING
// }

// /* 809BD300-809BD348 001DE0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// // cCcD_GStts::~cCcD_GStts() {
// extern "C" void __dt__10cCcD_GSttsFv() {
//     // NONMATCHING
// }

// /* 809BD348-809BD6D0 001E28 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// // daNpcT_c::~daNpcT_c() {
// extern "C" void __dt__8daNpcT_cFv() {
//     // NONMATCHING
// }

// /* 809BD6D0-809BD70C 0021B0 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// // cXyz::~cXyz() {
// extern "C" void __dt__4cXyzFv() {
//     // NONMATCHING
// }

// /* 809BD70C-809BD748 0021EC 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// // csXyz::~csXyz() {
// extern "C" void __dt__5csXyzFv() {
//     // NONMATCHING
// }

// /* 809BD748-809BDB4C 002228 0404+00 1/1 0/0 0/0 .text
//  * __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
//  */
// // daNpcT_c::daNpcT_c(daNpcT_faceMotionAnmData_c const* param_0,
// //                       daNpcT_motionAnmData_c const* param_1,
// // daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
// //                          daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
// //                       daNpcT_evtData_c const* param_6, char** param_7) {
// extern "C" void __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc() {
//     // NONMATCHING
// }

// /* 809BDB4C-809BDB50 00262C 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// // csXyz::csXyz() {
// extern "C" void __ct__5csXyzFv() {
//     /* empty function */
// }

// /* 809BDB50-809BDC4C 002630 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// // daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
// extern "C" void __dt__15daNpcT_JntAnm_cFv() {
//     // NONMATCHING
// }

// /* 809BDC4C-809BDC50 00272C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// // cXyz::cXyz() {
// extern "C" void __ct__4cXyzFv() {
//     /* empty function */
// }

// /* 809BDC50-809BDC98 002730 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// // daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
// extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
//     // NONMATCHING
// }

// /* 809BDC98-809BDCE0 002778 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// // daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
// extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
//     // NONMATCHING
// }

// /* 809BDCE0-809BDD50 0027C0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// // dBgS_AcchCir::~dBgS_AcchCir() {
// extern "C" void __dt__12dBgS_AcchCirFv() {
//     // NONMATCHING
// }

// /* 809BDD50-809BDDAC 002830 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// // dCcD_GStts::~dCcD_GStts() {
// extern "C" void __dt__10dCcD_GSttsFv() {
//     // NONMATCHING
// }

// /* 809BDDAC-809BDE1C 00288C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// // dBgS_ObjAcch::~dBgS_ObjAcch() {
// extern "C" void __dt__12dBgS_ObjAcchFv() {
//     // NONMATCHING
// }

// /* 809BDE1C-809BDE64 0028FC 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// // J3DFrameCtrl::~J3DFrameCtrl() {
// extern "C" void __dt__12J3DFrameCtrlFv() {
//     // NONMATCHING
// }

// /* 809BDE64-809BDF80 002944 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// // void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
// //                                       s16 param_4) {
// extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
//     // NONMATCHING
// }

/* ############################################################################################## */
/* 809BE570-809BE578 0000D0 0008+00 0/1 0/0 0/0 .rodata          @4785 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4785[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809BE570, &lit_4785);
#pragma pop

/* 809BE578-809BE580 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4786 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4786[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809BE578, &lit_4786);
#pragma pop

/* 809BE580-809BE588 0000E0 0008+00 0/1 0/0 0/0 .rodata          @4787 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4787[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809BE580, &lit_4787);
#pragma pop

// /* 809BDF80-809BE188 002A60 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// // void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
// extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
//     // NONMATCHING
// }

// /* 809BE188-809BE18C 002C68 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// // void daNpcT_c::ctrlSubFaceMotion(int param_0) {
// extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
//     /* empty function */
// }

// /* 809BE1BC-809BE1C4 002C9C 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// // bool daNpcT_c::evtEndProc() {
// extern "C" bool evtEndProc__8daNpcT_cFv() {
//     return true;
// }

// /* 809BE1C8-809BE1D0 002CA8 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// // bool daNpcT_c::chkXYItems() {
// extern "C" bool chkXYItems__8daNpcT_cFv() {
//     return false;
// }

// /* 809BE1D0-809BE1E8 002CB0 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// // void daNpcT_c::decTmr() {
// extern "C" void decTmr__8daNpcT_cFv() {
//     // NONMATCHING
// }

// /* 809BE1E8-809BE1EC 002CC8 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// // void daNpcT_c::drawOtherMdl() {
// extern "C" void drawOtherMdl__8daNpcT_cFv() {
//     /* empty function */
// }

// /* 809BE1EC-809BE1F0 002CCC 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// // void daNpcT_c::drawGhost() {
// extern "C" void drawGhost__8daNpcT_cFv() {
//     /* empty function */
// }

// /* 809BE1F0-809BE1F8 002CD0 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// // bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
// extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
//     return true;
// }

// /* 809BE1F8-809BE228 002CD8 0030+00 1/0 0/0 0/0 .text
//  * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// // void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
// extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
//     // NONMATCHING
// }

// /* 809BE228-809BE258 002D08 0030+00 1/0 0/0 0/0 .text
//  * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// // void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
// extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
//     // NONMATCHING
// }

// /* 809BE258-809BE25C 002D38 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// // void daNpcT_c::changeAnm(int* param_0, int* param_1) {
// extern "C" void changeAnm__8daNpcT_cFPiPi() {
//     /* empty function */
// }

// /* 809BE25C-809BE260 002D3C 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// // void daNpcT_c::changeBck(int* param_0, int* param_1) {
// extern "C" void changeBck__8daNpcT_cFPiPi() {
//     /* empty function */
// }

// /* 809BE260-809BE264 002D40 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// // void daNpcT_c::changeBtp(int* param_0, int* param_1) {
// extern "C" void changeBtp__8daNpcT_cFPiPi() {
//     /* empty function */
// }

// /* 809BE264-809BE268 002D44 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// // void daNpcT_c::changeBtk(int* param_0, int* param_1) {
// extern "C" void changeBtk__8daNpcT_cFPiPi() {
//     /* empty function */
// }

// /* ############################################################################################## */
// /* 809BE834-809BE840 000298 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_Gnd_Param_c */
// SECTION_DATA extern void* __vt__17daNpc_Gnd_Param_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__17daNpc_Gnd_Param_cFv,
// };

/* 809BE848-809BE854 000008 000C+00 1/1 0/0 0/0 .bss             @3813 */
static u8 lit_3813[12];

/* 809BE854-809BE858 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 809BE268-809BE2D0 002D48 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_gnd_cpp */
void __sinit_d_a_npc_gnd_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x809BE268, __sinit_d_a_npc_gnd_cpp);
#pragma pop

/* 809BE2D0-809BE37C 002DB0 00AC+00 1/1 0/0 0/0 .text
 * __ct__11daNpc_Gnd_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
//  */
// daNpc_Gnd_c::daNpc_Gnd_c(daNpcT_faceMotionAnmData_c const* param_0,
//                              daNpcT_motionAnmData_c const* param_1,
//                              daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
//                              daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
//                              daNpcT_evtData_c const* param_6, char** param_7) {
//     // NONMATCHING
// }

// /* 809BE37C-809BE3C4 002E5C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// // cM3dGCyl::~cM3dGCyl() {
// extern "C" void __dt__8cM3dGCylFv() {
//     // NONMATCHING
// }

// /* 809BE3C4-809BE40C 002EA4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// // cM3dGAab::~cM3dGAab() {
// extern "C" void __dt__8cM3dGAabFv() {
//     // NONMATCHING
// }

/* 809BE40C-809BE414 002EEC 0008+00 1/0 0/0 0/0 .text getEyeballRMaterialNo__11daNpc_Gnd_cFv */
u16 daNpc_Gnd_c::getEyeballRMaterialNo() {
    return 3;
}

/* 809BE414-809BE41C 002EF4 0008+00 1/0 0/0 0/0 .text getEyeballLMaterialNo__11daNpc_Gnd_cFv */
u16 daNpc_Gnd_c::getEyeballLMaterialNo() {
    return 2;
}

/* 809BE41C-809BE424 002EFC 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__11daNpc_Gnd_cFv */
s32 daNpc_Gnd_c::getHeadJointNo() {
    return 4;
}

/* 809BE424-809BE42C 002F04 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__11daNpc_Gnd_cFv */
s32 daNpc_Gnd_c::getNeckJointNo() {
    return 3;
}

/* 809BE42C-809BE434 002F0C 0008+00 1/0 0/0 0/0 .text            getBackboneJointNo__11daNpc_Gnd_cFv
 */
s32 daNpc_Gnd_c::getBackboneJointNo() {
    return 1;
}

// /* 809BE434-809BE47C 002F14 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_Gnd_Param_cFv */
// daNpc_Gnd_Param_c::~daNpc_Gnd_Param_c() {
//     // NONMATCHING
// }

/* 809BE47C-809BE484 002F5C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809BE47C() {
    // NONMATCHING
}

/* 809BE484-809BE48C 002F64 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809BE484() {
    // NONMATCHING
}

/* 809BE588-809BE588 0000E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
