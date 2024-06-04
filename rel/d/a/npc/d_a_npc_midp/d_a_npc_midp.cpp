/**
 * @file d_a_npc_midp.cpp
 * 
*/

#include "rel/d/a/npc/d_a_npc_midp/d_a_npc_midp.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__12daNpc_midP_cFv();
extern "C" void create__12daNpc_midP_cFv();
extern "C" void CreateHeap__12daNpc_midP_cFv();
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
extern "C" void Delete__12daNpc_midP_cFv();
extern "C" void Execute__12daNpc_midP_cFv();
extern "C" void Draw__12daNpc_midP_cFv();
extern "C" void createHeapCallBack__12daNpc_midP_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__12daNpc_midP_cFP8J3DJointi();
extern "C" void getType__12daNpc_midP_cFv();
extern "C" void isDelete__12daNpc_midP_cFv();
extern "C" void reset__12daNpc_midP_cFv();
extern "C" void afterJntAnm__12daNpc_midP_cFi();
extern "C" void ctrlBtk__12daNpc_midP_cFv();
extern "C" void setParam__12daNpc_midP_cFv();
extern "C" void setAfterTalkMotion__12daNpc_midP_cFv();
extern "C" void srchActors__12daNpc_midP_cFv();
extern "C" void evtTalk__12daNpc_midP_cFv();
extern "C" void evtCutProc__12daNpc_midP_cFv();
extern "C" void action__12daNpc_midP_cFv();
extern "C" void beforeMove__12daNpc_midP_cFv();
extern "C" void setAttnPos__12daNpc_midP_cFv();
extern "C" void setCollision__12daNpc_midP_cFv();
extern "C" bool drawDbgInfo__12daNpc_midP_cFv();
extern "C" void drawGhost__12daNpc_midP_cFv();
extern "C" void selectAction__12daNpc_midP_cFv();
extern "C" void chkAction__12daNpc_midP_cFM12daNpc_midP_cFPCvPvPv_i();
extern "C" void setAction__12daNpc_midP_cFM12daNpc_midP_cFPCvPvPv_i();
extern "C" void wait__12daNpc_midP_cFPv();
extern "C" void talk__12daNpc_midP_cFPv();
extern "C" static void daNpc_midP_Create__FPv();
extern "C" static void daNpc_midP_Delete__FPv();
extern "C" static void daNpc_midP_Execute__FPv();
extern "C" static void daNpc_midP_Draw__FPv();
extern "C" static bool daNpc_midP_IsDelete__FPv();
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
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballMaterialNo__8daNpcT_cFv();
extern "C" bool checkChangeEvt__8daNpcT_cFv();
extern "C" bool evtEndProc__8daNpcT_cFv();
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
extern "C" void __sinit_d_a_npc_midp_cpp();
extern "C" void
__ct__12daNpc_midP_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" s32 getEyeballRMaterialNo__12daNpc_midP_cFv();
extern "C" s32 getEyeballLMaterialNo__12daNpc_midP_cFv();
extern "C" s32 getHeadJointNo__12daNpc_midP_cFv();
extern "C" s32 getNeckJointNo__12daNpc_midP_cFv();
extern "C" s32 getBackboneJointNo__12daNpc_midP_cFv();
extern "C" void checkChangeJoint__12daNpc_midP_cFi();
extern "C" void checkRemoveJoint__12daNpc_midP_cFi();
extern "C" void __dt__18daNpc_midP_Param_cFv();
extern "C" static void func_80A7399C();
extern "C" static void func_80A739A4();
extern "C" u8 const m__18daNpc_midP_Param_c[140];
extern "C" extern char const* const d_a_npc_midp__stringBase0;
extern "C" void* mCutNameList__12daNpc_midP_c;
extern "C" u8 mCutList__12daNpc_midP_c[12];

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
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80A73AA0-80A73AA0 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A73AA0 = "";
SECTION_DEAD static char const* const stringBase_80A73AA1 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80A73AAD = "midP";
#pragma pop

/* 80A73AB4-80A73AC0 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A73AC0-80A73AD4 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80A73AD4-80A73ADC 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x01,
};

/* 80A73ADC-80A73AEC -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[4] = {
    (void*)&d_a_npc_midp__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_midp__stringBase0) + 0x1),
    (void*)NULL,
};
#pragma pop

/* 80A73AEC-80A73AF4 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_npc_midp__stringBase0,
    (void*)(((char*)&d_a_npc_midp__stringBase0) + 0xD),
};

/* 80A73AF4-80A73AF8 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80A73AF8-80A73B00 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[2] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
};

/* 80A73B00-80A73B1C 00004C 001C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[28] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 80A73B1C-80A73B38 000068 001C+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[28] = {
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80A73B38-80A73B48 000084 0010+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[16] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A73B48-80A73B58 000094 0010+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[16] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A73B58-80A73B5C -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_midP_c */
SECTION_DATA void* daNpc_midP_c::mCutNameList = (void*)&d_a_npc_midp__stringBase0;

/* 80A73B5C-80A73B68 0000A8 000C+00 2/2 0/0 0/0 .data            mCutList__12daNpc_midP_c */
SECTION_DATA u8 daNpc_midP_c::mCutList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A73B68-80A73B74 -00001 000C+00 1/1 0/0 0/0 .data            @4604 */
SECTION_DATA static void* lit_4604[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_midP_cFPv,
};

/* 80A73B74-80A73B80 -00001 000C+00 1/1 0/0 0/0 .data            @4614 */
SECTION_DATA static void* lit_4614[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_midP_cFPv,
};

/* 80A73B80-80A73B8C -00001 000C+00 1/1 0/0 0/0 .data            @4833 */
SECTION_DATA static void* lit_4833[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_midP_cFPv,
};

/* 80A73B8C-80A73BAC -00001 0020+00 1/0 0/0 0/0 .data            daNpc_midP_MethodTable */
static actor_method_class daNpc_midP_MethodTable = {
    (process_method_func)daNpc_midP_Create__FPv,
    (process_method_func)daNpc_midP_Delete__FPv,
    (process_method_func)daNpc_midP_Execute__FPv,
    (process_method_func)daNpc_midP_IsDelete__FPv,
    (process_method_func)daNpc_midP_Draw__FPv,
};

/* 80A73BAC-80A73BDC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_MIDP */
extern actor_process_profile_definition g_profile_NPC_MIDP = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_MIDP,           // mProcName
  &g_fpcLf_Method.mBase,   // sub_method
  sizeof(daNpc_midP_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  354,                     // mPriority
  &daNpc_midP_MethodTable, // sub_method
  0x00044108,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80A73BDC-80A73BE8 000128 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80A73BE8-80A73BF4 000134 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A73BF4-80A73C18 000140 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A739A4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A7399C,
};

/* 80A73C18-80A73C24 000164 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80A73C24-80A73C30 000170 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80A73C30-80A73C3C 00017C 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80A73C3C-80A73C48 000188 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80A73C48-80A73C54 000194 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80A73C54-80A73C60 0001A0 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80A73C60-80A73C6C 0001AC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80A73C6C-80A73C78 0001B8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80A73C78-80A73D3C 0001C4 00C4+00 2/2 0/0 0/0 .data            __vt__12daNpc_midP_c */
SECTION_DATA extern void* __vt__12daNpc_midP_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daNpc_midP_cFv,
    (void*)ctrlBtk__12daNpc_midP_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__12daNpc_midP_cFi,
    (void*)checkRemoveJoint__12daNpc_midP_cFi,
    (void*)getBackboneJointNo__12daNpc_midP_cFv,
    (void*)getNeckJointNo__12daNpc_midP_cFv,
    (void*)getHeadJointNo__12daNpc_midP_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__12daNpc_midP_cFv,
    (void*)getEyeballRMaterialNo__12daNpc_midP_cFv,
    (void*)getEyeballMaterialNo__8daNpcT_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__12daNpc_midP_cFi,
    (void*)setParam__12daNpc_midP_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__12daNpc_midP_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__12daNpc_midP_cFv,
    (void*)setAfterTalkMotion__12daNpc_midP_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__12daNpc_midP_cFv,
    (void*)beforeMove__12daNpc_midP_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__12daNpc_midP_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__12daNpc_midP_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__12daNpc_midP_cFv,
    (void*)drawOtherMdl__8daNpcT_cFv,
    (void*)drawGhost__12daNpc_midP_cFv,
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

/* 80A70C6C-80A70D90 0000EC 0124+00 1/0 0/0 0/0 .text            __dt__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_midP_c::~daNpc_midP_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__12daNpc_midP_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A739C0-80A73A4C 000000 008C+00 6/6 0/0 0/0 .rodata          m__18daNpc_midP_Param_c */
SECTION_RODATA u8 const daNpc_midP_Param_c::m[140] = {
    0x43, 0x52, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x3E, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A739C0, &daNpc_midP_Param_c::m);

/* 80A73A4C-80A73A50 00008C 0004+00 0/1 0/0 0/0 .rodata          @4028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4028 = -300.0f;
COMPILER_STRIP_GATE(0x80A73A4C, &lit_4028);
#pragma pop

/* 80A73A50-80A73A54 000090 0004+00 0/1 0/0 0/0 .rodata          @4029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4029 = -50.0f;
COMPILER_STRIP_GATE(0x80A73A50, &lit_4029);
#pragma pop

/* 80A73A54-80A73A58 000094 0004+00 0/1 0/0 0/0 .rodata          @4030 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4030 = 300.0f;
COMPILER_STRIP_GATE(0x80A73A54, &lit_4030);
#pragma pop

/* 80A73A58-80A73A5C 000098 0004+00 0/1 0/0 0/0 .rodata          @4031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4031 = 450.0f;
COMPILER_STRIP_GATE(0x80A73A58, &lit_4031);
#pragma pop

/* 80A73A5C-80A73A60 00009C 0004+00 0/1 0/0 0/0 .rodata          @4032 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4032 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80A73A5C, &lit_4032);
#pragma pop

/* 80A70D90-80A71074 000210 02E4+00 1/1 0/0 0/0 .text            create__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::create() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/create__12daNpc_midP_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A73A60-80A73A64 0000A0 0004+00 5/9 0/0 0/0 .rodata          @4186 */
SECTION_RODATA static u8 const lit_4186[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A73A60, &lit_4186);

/* 80A73A64-80A73A68 0000A4 0004+00 0/2 0/0 0/0 .rodata          @4187 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4187 = 65536.0f;
COMPILER_STRIP_GATE(0x80A73A64, &lit_4187);
#pragma pop

/* 80A73A68-80A73A6C 0000A8 0004+00 0/3 0/0 0/0 .rodata          @4188 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4188 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A73A68, &lit_4188);
#pragma pop

/* 80A73A6C-80A73A70 0000AC 0004+00 2/4 0/0 0/0 .rodata          @4338 */
SECTION_RODATA static f32 const lit_4338 = 1.0f;
COMPILER_STRIP_GATE(0x80A73A6C, &lit_4338);

/* 80A71074-80A71300 0004F4 028C+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/CreateHeap__12daNpc_midP_cFv.s"
}
#pragma pop

/* 80A71300-80A7133C 000780 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" asm void __dt__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80A7133C-80A71354 0007BC 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" asm void __ct__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__ct__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80A71354-80A71390 0007D4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" asm void __dt__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 80A71390-80A713A8 000810 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::J3DTevColorAnm() {
extern "C" asm void __ct__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__ct__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 80A713A8-80A713F0 000828 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" asm void __dt__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80A713F0-80A71414 000870 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::J3DTexNoAnm() {
extern "C" asm void __ct__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__ct__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80A71414-80A71450 000894 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" asm void __dt__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80A71450-80A71468 0008D0 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" asm void __ct__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__ct__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80A71468-80A714A4 0008E8 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" asm void __dt__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 80A714A4-80A714BC 000924 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::J3DMatColorAnm() {
extern "C" asm void __ct__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__ct__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 80A714BC-80A714F0 00093C 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::Delete() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/Delete__12daNpc_midP_cFv.s"
}
#pragma pop

/* 80A714F0-80A71510 000970 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::Execute() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/Execute__12daNpc_midP_cFv.s"
}
#pragma pop

/* 80A71510-80A715D4 000990 00C4+00 1/1 0/0 0/0 .text            Draw__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::Draw() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/Draw__12daNpc_midP_cFv.s"
}
#pragma pop

/* 80A715D4-80A715F4 000A54 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpc_midP_cFP10fopAc_ac_c             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::createHeapCallBack(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/createHeapCallBack__12daNpc_midP_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80A715F4-80A7164C 000A74 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__12daNpc_midP_cFP8J3DJointi                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/ctrlJointCallBack__12daNpc_midP_cFP8J3DJointi.s"
}
#pragma pop

/* 80A7164C-80A7166C 000ACC 0020+00 1/1 0/0 0/0 .text            getType__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::getType() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/getType__12daNpc_midP_cFv.s"
}
#pragma pop

/* 80A7166C-80A7168C 000AEC 0020+00 1/1 0/0 0/0 .text            isDelete__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::isDelete() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/isDelete__12daNpc_midP_cFv.s"
}
#pragma pop

/* 80A7168C-80A717D4 000B0C 0148+00 1/1 0/0 0/0 .text            reset__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::reset() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/reset__12daNpc_midP_cFv.s"
}
#pragma pop

/* 80A717D4-80A71860 000C54 008C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_midP_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::afterJntAnm(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/afterJntAnm__12daNpc_midP_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A73A70-80A73A74 0000B0 0004+00 3/3 0/0 0/0 .rodata          @4551 */
SECTION_RODATA static f32 const lit_4551 = -1.0f;
COMPILER_STRIP_GATE(0x80A73A70, &lit_4551);

/* 80A71860-80A7199C 000CE0 013C+00 1/0 0/0 0/0 .text            ctrlBtk__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::ctrlBtk() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/ctrlBtk__12daNpc_midP_cFv.s"
}
#pragma pop

/* 80A7199C-80A71A98 000E1C 00FC+00 1/0 0/0 0/0 .text            setParam__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::setParam() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/setParam__12daNpc_midP_cFv.s"
}
#pragma pop

/* 80A71A98-80A71AF8 000F18 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::setAfterTalkMotion() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/setAfterTalkMotion__12daNpc_midP_cFv.s"
}
#pragma pop

/* 80A71AF8-80A71AFC 000F78 0004+00 1/1 0/0 0/0 .text            srchActors__12daNpc_midP_cFv */
void daNpc_midP_c::srchActors() {
    /* empty function */
}

/* 80A71AFC-80A71BFC 000F7C 0100+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::evtTalk() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/evtTalk__12daNpc_midP_cFv.s"
}
#pragma pop

/* 80A71BFC-80A71CC4 00107C 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::evtCutProc() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/evtCutProc__12daNpc_midP_cFv.s"
}
#pragma pop

/* 80A71CC4-80A71DB0 001144 00EC+00 1/0 0/0 0/0 .text            action__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::action() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/action__12daNpc_midP_cFv.s"
}
#pragma pop

/* 80A71DB0-80A71E28 001230 0078+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::beforeMove() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/beforeMove__12daNpc_midP_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A73A74-80A73A78 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4720 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4720 = 10.0f;
COMPILER_STRIP_GATE(0x80A73A74, &lit_4720);
#pragma pop

/* 80A73A78-80A73A7C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4721 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4721 = -30.0f;
COMPILER_STRIP_GATE(0x80A73A78, &lit_4721);
#pragma pop

/* 80A73A7C-80A73A80 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4722 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4722 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80A73A7C, &lit_4722);
#pragma pop

/* 80A73A80-80A73A88 0000C0 0008+00 1/3 0/0 0/0 .rodata          @4724 */
SECTION_RODATA static u8 const lit_4724[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A73A80, &lit_4724);

/* 80A71E28-80A72064 0012A8 023C+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::setAttnPos() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/setAttnPos__12daNpc_midP_cFv.s"
}
#pragma pop

/* 80A72064-80A7216C 0014E4 0108+00 1/0 0/0 0/0 .text            setCollision__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::setCollision() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/setCollision__12daNpc_midP_cFv.s"
}
#pragma pop

/* 80A7216C-80A72174 0015EC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_midP_cFv */
bool daNpc_midP_c::drawDbgInfo() {
    return false;
}

/* 80A72174-80A721E0 0015F4 006C+00 1/0 0/0 0/0 .text            drawGhost__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::drawGhost() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/drawGhost__12daNpc_midP_cFv.s"
}
#pragma pop

/* 80A721E0-80A72228 001660 0048+00 1/1 0/0 0/0 .text            selectAction__12daNpc_midP_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::selectAction() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/selectAction__12daNpc_midP_cFv.s"
}
#pragma pop

/* 80A72228-80A72254 0016A8 002C+00 1/1 0/0 0/0 .text
 * chkAction__12daNpc_midP_cFM12daNpc_midP_cFPCvPvPv_i          */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::chkAction(int (daNpc_midP_c::*param_0)(void*)) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/chkAction__12daNpc_midP_cFM12daNpc_midP_cFPCvPvPv_i.s"
}
#pragma pop

/* 80A72254-80A722FC 0016D4 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_midP_cFM12daNpc_midP_cFPCvPvPv_i          */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::setAction(int (daNpc_midP_c::*param_0)(void*)) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/setAction__12daNpc_midP_cFM12daNpc_midP_cFPCvPvPv_i.s"
}
#pragma pop

/* 80A722FC-80A72548 00177C 024C+00 1/0 0/0 0/0 .text            wait__12daNpc_midP_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::wait(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/wait__12daNpc_midP_cFPv.s"
}
#pragma pop

/* 80A72548-80A72754 0019C8 020C+00 2/0 0/0 0/0 .text            talk__12daNpc_midP_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::talk(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/talk__12daNpc_midP_cFPv.s"
}
#pragma pop

/* 80A72754-80A72774 001BD4 0020+00 1/0 0/0 0/0 .text            daNpc_midP_Create__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_midP_Create(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/daNpc_midP_Create__FPv.s"
}
#pragma pop

/* 80A72774-80A72794 001BF4 0020+00 1/0 0/0 0/0 .text            daNpc_midP_Delete__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_midP_Delete(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/daNpc_midP_Delete__FPv.s"
}
#pragma pop

/* 80A72794-80A727B4 001C14 0020+00 1/0 0/0 0/0 .text            daNpc_midP_Execute__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_midP_Execute(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/daNpc_midP_Execute__FPv.s"
}
#pragma pop

/* 80A727B4-80A727D4 001C34 0020+00 1/0 0/0 0/0 .text            daNpc_midP_Draw__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_midP_Draw(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/daNpc_midP_Draw__FPv.s"
}
#pragma pop

/* 80A727D4-80A727DC 001C54 0008+00 1/0 0/0 0/0 .text            daNpc_midP_IsDelete__FPv */
static bool daNpc_midP_IsDelete(void* param_0) {
    return true;
}

/* 80A727DC-80A7280C 001C5C 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" asm void calc__11J3DTexNoAnmCFPUs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/calc__11J3DTexNoAnmCFPUs.s"
}
#pragma pop

/* 80A7280C-80A72854 001C8C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80A72854-80A72BDC 001CD4 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_c::~daNpcT_c() {
extern "C" asm void __dt__8daNpcT_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__8daNpcT_cFv.s"
}
#pragma pop

/* 80A72BDC-80A72C18 00205C 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__4cXyzFv.s"
}
#pragma pop

/* 80A72C18-80A72C54 002098 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__5csXyzFv.s"
}
#pragma pop

/* 80A72C54-80A73058 0020D4 0404+00 1/1 0/0 0/0 .text
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
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/func_80A72C54.s"
}
#pragma pop

/* 80A73058-80A7305C 0024D8 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" asm void __ct__5csXyzFv() {
    /* empty function */
}

/* 80A7305C-80A73158 0024DC 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" asm void __dt__15daNpcT_JntAnm_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__15daNpcT_JntAnm_cFv.s"
}
#pragma pop

/* 80A73158-80A7315C 0025D8 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" asm void __ct__4cXyzFv() {
    /* empty function */
}

/* 80A7315C-80A731A4 0025DC 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" asm void __dt__18daNpcT_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__18daNpcT_ActorMngr_cFv.s"
}
#pragma pop

/* 80A731A4-80A731EC 002624 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" asm void __dt__22daNpcT_MotionSeqMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__22daNpcT_MotionSeqMngr_cFv.s"
}
#pragma pop

/* 80A731EC-80A7325C 00266C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80A7325C-80A732B8 0026DC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80A732B8-80A73328 002738 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80A73328-80A73370 0027A8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80A73370-80A7348C 0027F0 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" asm void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs.s"
}
#pragma pop

/* ############################################################################################## */
/* 80A73A88-80A73A90 0000C8 0008+00 0/1 0/0 0/0 .rodata          @4782 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4782[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A73A88, &lit_4782);
#pragma pop

/* 80A73A90-80A73A98 0000D0 0008+00 0/1 0/0 0/0 .rodata          @4783 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4783[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A73A90, &lit_4783);
#pragma pop

/* 80A73A98-80A73AA0 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4784 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4784[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A73A98, &lit_4784);
#pragma pop

/* 80A7348C-80A73694 00290C 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" asm void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs.s"
}
#pragma pop

/* 80A73694-80A73698 002B14 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" asm void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80A73698-80A736A0 002B18 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootLJointNo() {
    return -1;
}

/* 80A736A0-80A736A8 002B20 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootRJointNo() {
    return -1;
}

/* 80A736A8-80A736B0 002B28 0008+00 1/0 0/0 0/0 .text            getEyeballMaterialNo__8daNpcT_cFv
 */
bool daNpcT_c::getEyeballMaterialNo() {
    return false;
}

/* 80A736B0-80A736B8 002B30 0008+00 1/0 0/0 0/0 .text            checkChangeEvt__8daNpcT_cFv */
bool daNpcT_c::checkChangeEvt() {
    return false;
}

/* 80A736B8-80A736C0 002B38 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80A736C0-80A736C4 002B40 0004+00 1/0 0/0 0/0 .text            afterMoved__8daNpcT_cFv */
void daNpcT_c::afterMoved() {
    /* empty function */
}

/* 80A736C4-80A736CC 002B44 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80A736CC-80A736E4 002B4C 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_c::decTmr() {
extern "C" asm void decTmr__8daNpcT_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/decTmr__8daNpcT_cFv.s"
}
#pragma pop

/* 80A736E4-80A736E8 002B64 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" asm void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80A736E8-80A736F0 002B68 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A736F0-80A736F8 002B70 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A736F8-80A73728 002B78 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" asm void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c.s"
}
#pragma pop

/* 80A73728-80A73758 002BA8 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" asm void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c.s"
}
#pragma pop

/* 80A73758-80A7375C 002BD8 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" asm void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A7375C-80A73760 002BDC 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" asm void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A73760-80A73764 002BE0 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" asm void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A73764-80A73768 002BE4 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" asm void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 80A73D3C-80A73D48 000288 000C+00 2/2 0/0 0/0 .data            __vt__18daNpc_midP_Param_c */
SECTION_DATA extern void* __vt__18daNpc_midP_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_midP_Param_cFv,
};

/* 80A73D50-80A73D5C 000008 000C+00 1/1 0/0 0/0 .bss             @3811 */
static u8 lit_3811[12];

/* 80A73D5C-80A73D60 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A73768-80A737D0 002BE8 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_midp_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_npc_midp_cpp() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__sinit_d_a_npc_midp_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A73768, __sinit_d_a_npc_midp_cpp);
#pragma pop

/* 80A737D0-80A7387C 002C50 00AC+00 1/1 0/0 0/0 .text
 * __ct__12daNpc_midP_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_midP_c::daNpc_midP_c(daNpcT_faceMotionAnmData_c const* param_0,
                               daNpcT_motionAnmData_c const* param_1,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                               int param_3,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                               int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/func_80A737D0.s"
}
#pragma pop

/* 80A7387C-80A738C4 002CFC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80A738C4-80A7390C 002D44 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80A7390C-80A73914 002D8C 0008+00 1/0 0/0 0/0 .text getEyeballRMaterialNo__12daNpc_midP_cFv */
s32 daNpc_midP_c::getEyeballRMaterialNo() {
    return 3;
}

/* 80A73914-80A7391C 002D94 0008+00 1/0 0/0 0/0 .text getEyeballLMaterialNo__12daNpc_midP_cFv */
s32 daNpc_midP_c::getEyeballLMaterialNo() {
    return 2;
}

/* 80A7391C-80A73924 002D9C 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__12daNpc_midP_cFv */
s32 daNpc_midP_c::getHeadJointNo() {
    return 4;
}

/* 80A73924-80A7392C 002DA4 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__12daNpc_midP_cFv */
s32 daNpc_midP_c::getNeckJointNo() {
    return 3;
}

/* 80A7392C-80A73934 002DAC 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__12daNpc_midP_cFv */
s32 daNpc_midP_c::getBackboneJointNo() {
    return 2;
}

/* 80A73934-80A73944 002DB4 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__12daNpc_midP_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::checkChangeJoint(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/checkChangeJoint__12daNpc_midP_cFi.s"
}
#pragma pop

/* 80A73944-80A73954 002DC4 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__12daNpc_midP_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_midP_c::checkRemoveJoint(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/checkRemoveJoint__12daNpc_midP_cFi.s"
}
#pragma pop

/* 80A73954-80A7399C 002DD4 0048+00 2/1 0/0 0/0 .text            __dt__18daNpc_midP_Param_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_midP_Param_c::~daNpc_midP_Param_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/__dt__18daNpc_midP_Param_cFv.s"
}
#pragma pop

/* 80A7399C-80A739A4 002E1C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80A7399C() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/func_80A7399C.s"
}
#pragma pop

/* 80A739A4-80A739AC 002E24 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80A739A4() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_midp/d_a_npc_midp/func_80A739A4.s"
}
#pragma pop

/* 80A73AA0-80A73AA0 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
