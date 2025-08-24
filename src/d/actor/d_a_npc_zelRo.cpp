/**
 * @file d_a_npc_zelRo.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_zelRo.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__13daNpc_ZelRo_cFv();
extern "C" void create__13daNpc_ZelRo_cFv();
extern "C" void CreateHeap__13daNpc_ZelRo_cFv();
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
extern "C" void Delete__13daNpc_ZelRo_cFv();
extern "C" void Execute__13daNpc_ZelRo_cFv();
extern "C" void Draw__13daNpc_ZelRo_cFv();
extern "C" void createHeapCallBack__13daNpc_ZelRo_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__13daNpc_ZelRo_cFP8J3DJointi();
extern "C" void getType__13daNpc_ZelRo_cFv();
extern "C" void getFlowNodeNo__13daNpc_ZelRo_cFv();
extern "C" void getPath__13daNpc_ZelRo_cFv();
extern "C" void isDelete__13daNpc_ZelRo_cFv();
extern "C" void reset__13daNpc_ZelRo_cFv();
extern "C" void afterJntAnm__13daNpc_ZelRo_cFi();
extern "C" void ctrlBtk__13daNpc_ZelRo_cFv();
extern "C" void setParam__13daNpc_ZelRo_cFv();
extern "C" void setAfterTalkMotion__13daNpc_ZelRo_cFv();
extern "C" void srchActors__13daNpc_ZelRo_cFv();
extern "C" void evtTalk__13daNpc_ZelRo_cFv();
extern "C" void evtCutProc__13daNpc_ZelRo_cFv();
extern "C" void action__13daNpc_ZelRo_cFv();
extern "C" void beforeMove__13daNpc_ZelRo_cFv();
extern "C" void setAttnPos__13daNpc_ZelRo_cFv();
extern "C" void setCollision__13daNpc_ZelRo_cFv();
extern "C" bool drawDbgInfo__13daNpc_ZelRo_cFv();
extern "C" void selectAction__13daNpc_ZelRo_cFv();
extern "C" void chkAction__13daNpc_ZelRo_cFM13daNpc_ZelRo_cFPCvPvPv_i();
extern "C" void setAction__13daNpc_ZelRo_cFM13daNpc_ZelRo_cFPCvPvPv_i();
extern "C" void wait__13daNpc_ZelRo_cFPv();
extern "C" void talk__13daNpc_ZelRo_cFPv();
extern "C" static void daNpc_ZelRo_Create__FPv();
extern "C" static void daNpc_ZelRo_Delete__FPv();
extern "C" static void daNpc_ZelRo_Execute__FPv();
extern "C" static void daNpc_ZelRo_Draw__FPv();
extern "C" static bool daNpc_ZelRo_IsDelete__FPv();
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
extern "C" u16 getEyeballMaterialNo__8daNpcT_cFv();
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
extern "C" void __sinit_d_a_npc_zelRo_cpp();
extern "C" void
__ct__13daNpc_ZelRo_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballRMaterialNo__13daNpc_ZelRo_cFv();
extern "C" u16 getEyeballLMaterialNo__13daNpc_ZelRo_cFv();
extern "C" s32 getHeadJointNo__13daNpc_ZelRo_cFv();
extern "C" s32 getNeckJointNo__13daNpc_ZelRo_cFv();
extern "C" bool getBackboneJointNo__13daNpc_ZelRo_cFv();
extern "C" void checkChangeJoint__13daNpc_ZelRo_cFi();
extern "C" void checkRemoveJoint__13daNpc_ZelRo_cFi();
extern "C" void __dt__19daNpc_ZelRo_Param_cFv();
extern "C" static void func_80B74C38();
extern "C" static void func_80B74C40();
extern "C" u8 const m__19daNpc_ZelRo_Param_c[140];
extern "C" extern char const* const d_a_npc_zelRo__stringBase0;
extern "C" void* mCutNameList__13daNpc_ZelRo_c;
extern "C" u8 mCutList__13daNpc_ZelRo_c[12];

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
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
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
extern "C" void setDamage__8daNpcT_cFiii();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_chkEvtBit__FUl();
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
/* 80B74D3C-80B74D3C 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B74D3C = "";
SECTION_DEAD static char const* const stringBase_80B74D3D = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80B74D49 = "zelRo";
#pragma pop

/* 80B74D78-80B74D80 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x01,
};

/* 80B74D80-80B74D90 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[4] = {
    (void*)&d_a_npc_zelRo__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_zelRo__stringBase0) + 0x1),
    (void*)NULL,
};
#pragma pop

/* 80B74D90-80B74D98 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_npc_zelRo__stringBase0,
    (void*)(((char*)&d_a_npc_zelRo__stringBase0) + 0xD),
};

/* 80B74D98-80B74D9C 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80B74D9C-80B74DA4 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[2] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
};

/* 80B74DA4-80B74DDC 00004C 0038+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[56] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 80B74DDC-80B74DF8 000084 001C+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[28] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80B74DF8-80B74E18 0000A0 0020+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[32] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B74E18-80B74E28 0000C0 0010+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[16] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B74E28-80B74E2C -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__13daNpc_ZelRo_c */
SECTION_DATA void* daNpc_ZelRo_c::mCutNameList = (void*)&d_a_npc_zelRo__stringBase0;

/* 80B74E2C-80B74E38 0000D4 000C+00 2/2 0/0 0/0 .data            mCutList__13daNpc_ZelRo_c */
SECTION_DATA u8 daNpc_ZelRo_c::mCutList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B74E38-80B74E44 -00001 000C+00 1/1 0/0 0/0 .data            @4609 */
SECTION_DATA static void* lit_4609[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_ZelRo_cFPv,
};

/* 80B74E44-80B74E50 -00001 000C+00 1/1 0/0 0/0 .data            @4619 */
SECTION_DATA static void* lit_4619[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_ZelRo_cFPv,
};

/* 80B74E50-80B74E5C -00001 000C+00 1/1 0/0 0/0 .data            @4842 */
SECTION_DATA static void* lit_4842[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_ZelRo_cFPv,
};

/* 80B74E5C-80B74E7C -00001 0020+00 1/0 0/0 0/0 .data            daNpc_ZelRo_MethodTable */
static actor_method_class daNpc_ZelRo_MethodTable = {
    (process_method_func)daNpc_ZelRo_Create__FPv,
    (process_method_func)daNpc_ZelRo_Delete__FPv,
    (process_method_func)daNpc_ZelRo_Execute__FPv,
    (process_method_func)daNpc_ZelRo_IsDelete__FPv,
    (process_method_func)daNpc_ZelRo_Draw__FPv,
};

/* 80B74E7C-80B74EAC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_ZELRO */
extern actor_process_profile_definition g_profile_NPC_ZELRO = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_ZELRO,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_ZelRo_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  386,                      // mPriority
  &daNpc_ZelRo_MethodTable, // sub_method
  0x00044108,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80B74EAC-80B74EB8 000154 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80B74EB8-80B74EC4 000160 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B74EC4-80B74EE8 00016C 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B74C40,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B74C38,
};

/* 80B74EE8-80B74EF4 000190 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B74EF4-80B74F00 00019C 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B74F00-80B74F0C 0001A8 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B74F0C-80B74F18 0001B4 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80B74F18-80B74F24 0001C0 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80B74F24-80B74F30 0001CC 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80B74F30-80B74F3C 0001D8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B74F3C-80B74F48 0001E4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B74F48-80B74F54 0001F0 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80B74F54-80B75018 0001FC 00C4+00 2/2 0/0 0/0 .data            __vt__13daNpc_ZelRo_c */
SECTION_DATA extern void* __vt__13daNpc_ZelRo_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpc_ZelRo_cFv,
    (void*)ctrlBtk__13daNpc_ZelRo_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__13daNpc_ZelRo_cFi,
    (void*)checkRemoveJoint__13daNpc_ZelRo_cFi,
    (void*)getBackboneJointNo__13daNpc_ZelRo_cFv,
    (void*)getNeckJointNo__13daNpc_ZelRo_cFv,
    (void*)getHeadJointNo__13daNpc_ZelRo_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__13daNpc_ZelRo_cFv,
    (void*)getEyeballRMaterialNo__13daNpc_ZelRo_cFv,
    (void*)getEyeballMaterialNo__8daNpcT_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__13daNpc_ZelRo_cFi,
    (void*)setParam__13daNpc_ZelRo_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__13daNpc_ZelRo_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__13daNpc_ZelRo_cFv,
    (void*)setAfterTalkMotion__13daNpc_ZelRo_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__13daNpc_ZelRo_cFv,
    (void*)beforeMove__13daNpc_ZelRo_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__13daNpc_ZelRo_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__13daNpc_ZelRo_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__13daNpc_ZelRo_cFv,
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

/* 80B71FAC-80B720E4 0000EC 0138+00 1/0 0/0 0/0 .text            __dt__13daNpc_ZelRo_cFv */
daNpc_ZelRo_c::~daNpc_ZelRo_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B74C5C-80B74CE8 000000 008C+00 6/6 0/0 0/0 .rodata          m__19daNpc_ZelRo_Param_c */
SECTION_RODATA u8 const daNpc_ZelRo_Param_c::m[140] = {
    0x43, 0x3E, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x2A, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B74C5C, &daNpc_ZelRo_Param_c::m);

/* 80B74CE8-80B74CEC 00008C 0004+00 0/1 0/0 0/0 .rodata          @4018 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4018 = -300.0f;
COMPILER_STRIP_GATE(0x80B74CE8, &lit_4018);
#pragma pop

/* 80B74CEC-80B74CF0 000090 0004+00 0/1 0/0 0/0 .rodata          @4019 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4019 = -50.0f;
COMPILER_STRIP_GATE(0x80B74CEC, &lit_4019);
#pragma pop

/* 80B74CF0-80B74CF4 000094 0004+00 0/1 0/0 0/0 .rodata          @4020 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4020 = 300.0f;
COMPILER_STRIP_GATE(0x80B74CF0, &lit_4020);
#pragma pop

/* 80B74CF4-80B74CF8 000098 0004+00 0/1 0/0 0/0 .rodata          @4021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4021 = 450.0f;
COMPILER_STRIP_GATE(0x80B74CF4, &lit_4021);
#pragma pop

/* 80B720E4-80B72378 000224 0294+00 1/1 0/0 0/0 .text            create__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B74CF8-80B74CFC 00009C 0004+00 4/8 0/0 0/0 .rodata          @4182 */
SECTION_RODATA static u8 const lit_4182[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B74CF8, &lit_4182);

/* 80B74CFC-80B74D00 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4183 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4183 = 65536.0f;
COMPILER_STRIP_GATE(0x80B74CFC, &lit_4183);
#pragma pop

/* 80B74D00-80B74D04 0000A4 0004+00 1/4 0/0 0/0 .rodata          @4184 */
SECTION_RODATA static f32 const lit_4184 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B74D00, &lit_4184);

/* 80B74D04-80B74D08 0000A8 0004+00 2/4 0/0 0/0 .rodata          @4339 */
SECTION_RODATA static f32 const lit_4339 = 1.0f;
COMPILER_STRIP_GATE(0x80B74D04, &lit_4339);

/* 80B72378-80B72628 0004B8 02B0+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::CreateHeap() {
    // NONMATCHING
}

/* 80B72628-80B72664 000768 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80B72664-80B7267C 0007A4 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80B7267C-80B726B8 0007BC 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80B726B8-80B726D0 0007F8 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80B726D0-80B72718 000810 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80B72718-80B7273C 000858 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80B7273C-80B72778 00087C 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80B72778-80B72790 0008B8 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80B72790-80B727CC 0008D0 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80B727CC-80B727E4 00090C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80B727E4-80B72818 000924 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::Delete() {
    // NONMATCHING
}

/* 80B72818-80B72838 000958 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B74D08-80B74D0C 0000AC 0004+00 1/1 0/0 0/0 .rodata          @4399 */
SECTION_RODATA static f32 const lit_4399 = 100.0f;
COMPILER_STRIP_GATE(0x80B74D08, &lit_4399);

/* 80B72838-80B728FC 000978 00C4+00 1/1 0/0 0/0 .text            Draw__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::Draw() {
    // NONMATCHING
}

/* 80B728FC-80B7291C 000A3C 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_ZelRo_cFP10fopAc_ac_c            */
void daNpc_ZelRo_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80B7291C-80B72974 000A5C 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_ZelRo_cFP8J3DJointi               */
void daNpc_ZelRo_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80B72974-80B72994 000AB4 0020+00 1/1 0/0 0/0 .text            getType__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::getType() {
    // NONMATCHING
}

/* 80B72994-80B729B0 000AD4 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::getFlowNodeNo() {
    // NONMATCHING
}

/* 80B729B0-80B729BC 000AF0 000C+00 1/1 0/0 0/0 .text            getPath__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::getPath() {
    // NONMATCHING
}

/* 80B729BC-80B72A10 000AFC 0054+00 1/1 0/0 0/0 .text            isDelete__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::isDelete() {
    // NONMATCHING
}

/* 80B72A10-80B72B8C 000B50 017C+00 1/1 0/0 0/0 .text            reset__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::reset() {
    // NONMATCHING
}

/* 80B72B8C-80B72C18 000CCC 008C+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_ZelRo_cFi */
void daNpc_ZelRo_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B74D0C-80B74D10 0000B0 0004+00 3/3 0/0 0/0 .rodata          @4557 */
SECTION_RODATA static f32 const lit_4557 = -1.0f;
COMPILER_STRIP_GATE(0x80B74D0C, &lit_4557);

/* 80B72C18-80B72D24 000D58 010C+00 1/0 0/0 0/0 .text            ctrlBtk__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::ctrlBtk() {
    // NONMATCHING
}

/* 80B72D24-80B72E18 000E64 00F4+00 1/0 0/0 0/0 .text            setParam__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::setParam() {
    // NONMATCHING
}

/* 80B72E18-80B72E78 000F58 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80B72E78-80B72E7C 000FB8 0004+00 1/1 0/0 0/0 .text            srchActors__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::srchActors() {
    /* empty function */
}

/* 80B72E7C-80B72F7C 000FBC 0100+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::evtTalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B74D3C-80B74D3C 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B74D4F = "ZelRo";
#pragma pop

/* 80B72F7C-80B73044 0010BC 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::evtCutProc() {
    // NONMATCHING
}

/* 80B73044-80B73194 001184 0150+00 1/0 0/0 0/0 .text            action__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::action() {
    // NONMATCHING
}

/* 80B73194-80B7320C 0012D4 0078+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B74D10-80B74D14 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4728 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4728 = 10.0f;
COMPILER_STRIP_GATE(0x80B74D10, &lit_4728);
#pragma pop

/* 80B74D14-80B74D18 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4729 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4729 = -30.0f;
COMPILER_STRIP_GATE(0x80B74D14, &lit_4729);
#pragma pop

/* 80B74D18-80B74D1C 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4730 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4730 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80B74D18, &lit_4730);
#pragma pop

/* 80B74D1C-80B74D24 0000C0 0008+00 1/3 0/0 0/0 .rodata          @4732 */
SECTION_RODATA static u8 const lit_4732[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B74D1C, &lit_4732);

/* 80B7320C-80B7342C 00134C 0220+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::setAttnPos() {
    // NONMATCHING
}

/* 80B7342C-80B7355C 00156C 0130+00 1/0 0/0 0/0 .text            setCollision__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::setCollision() {
    // NONMATCHING
}

/* 80B7355C-80B73564 00169C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_ZelRo_cFv */
bool daNpc_ZelRo_c::drawDbgInfo() {
    return false;
}

/* 80B73564-80B735AC 0016A4 0048+00 1/1 0/0 0/0 .text            selectAction__13daNpc_ZelRo_cFv */
void daNpc_ZelRo_c::selectAction() {
    // NONMATCHING
}

/* 80B735AC-80B735D8 0016EC 002C+00 1/1 0/0 0/0 .text
 * chkAction__13daNpc_ZelRo_cFM13daNpc_ZelRo_cFPCvPvPv_i        */
void daNpc_ZelRo_c::chkAction(int (daNpc_ZelRo_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80B735D8-80B73680 001718 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpc_ZelRo_cFM13daNpc_ZelRo_cFPCvPvPv_i        */
void daNpc_ZelRo_c::setAction(int (daNpc_ZelRo_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80B73680-80B7382C 0017C0 01AC+00 1/0 0/0 0/0 .text            wait__13daNpc_ZelRo_cFPv */
void daNpc_ZelRo_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80B7382C-80B73990 00196C 0164+00 2/0 0/0 0/0 .text            talk__13daNpc_ZelRo_cFPv */
void daNpc_ZelRo_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80B73990-80B739B0 001AD0 0020+00 1/0 0/0 0/0 .text            daNpc_ZelRo_Create__FPv */
static void daNpc_ZelRo_Create(void* param_0) {
    // NONMATCHING
}

/* 80B739B0-80B739D0 001AF0 0020+00 1/0 0/0 0/0 .text            daNpc_ZelRo_Delete__FPv */
static void daNpc_ZelRo_Delete(void* param_0) {
    // NONMATCHING
}

/* 80B739D0-80B739F0 001B10 0020+00 1/0 0/0 0/0 .text            daNpc_ZelRo_Execute__FPv */
static void daNpc_ZelRo_Execute(void* param_0) {
    // NONMATCHING
}

/* 80B739F0-80B73A10 001B30 0020+00 1/0 0/0 0/0 .text            daNpc_ZelRo_Draw__FPv */
static void daNpc_ZelRo_Draw(void* param_0) {
    // NONMATCHING
}

/* 80B73A10-80B73A18 001B50 0008+00 1/0 0/0 0/0 .text            daNpc_ZelRo_IsDelete__FPv */
static bool daNpc_ZelRo_IsDelete(void* param_0) {
    return true;
}

/* 80B73A18-80B73A48 001B58 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80B73A48-80B73A90 001B88 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B73A90-80B73E18 001BD0 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B73E18-80B73E54 001F58 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80B73E54-80B73E90 001F94 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80B73E90-80B73ED8 001FD0 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80B73ED8-80B73F20 002018 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80B73F20-80B73F68 002060 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80B73F68-80B7436C 0020A8 0404+00 1/1 0/0 0/0 .text
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

/* 80B7436C-80B74370 0024AC 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80B74370-80B7446C 0024B0 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80B7446C-80B74470 0025AC 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80B74470-80B744B8 0025B0 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B744B8-80B74500 0025F8 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80B74500-80B74570 002640 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80B74570-80B745CC 0026B0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B745CC-80B7463C 00270C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80B7463C-80B74684 00277C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80B74684-80B747A0 0027C4 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B74D24-80B74D2C 0000C8 0008+00 0/1 0/0 0/0 .rodata          @4790 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4790[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B74D24, &lit_4790);
#pragma pop

/* 80B74D2C-80B74D34 0000D0 0008+00 0/1 0/0 0/0 .rodata          @4791 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4791[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B74D2C, &lit_4791);
#pragma pop

/* 80B74D34-80B74D3C 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4792 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4792[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B74D34, &lit_4792);
#pragma pop

/* 80B747A0-80B749A8 0028E0 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80B749A8-80B749AC 002AE8 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80B749CC-80B749D4 002B0C 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80B749D8-80B749E0 002B18 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80B749E0-80B749F8 002B20 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B749F8-80B749FC 002B38 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80B749FC-80B74A00 002B3C 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80B74A00-80B74A08 002B40 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B74A08-80B74A10 002B48 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B74A10-80B74A40 002B50 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80B74A40-80B74A70 002B80 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80B74A70-80B74A74 002BB0 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B74A74-80B74A78 002BB4 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B74A78-80B74A7C 002BB8 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B74A7C-80B74A80 002BBC 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 80B75018-80B75024 0002C0 000C+00 2/2 0/0 0/0 .data            __vt__19daNpc_ZelRo_Param_c */
SECTION_DATA extern void* __vt__19daNpc_ZelRo_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpc_ZelRo_Param_cFv,
};

/* 80B75030-80B7503C 000008 000C+00 1/1 0/0 0/0 .bss             @3811 */
static u8 lit_3811[12];

/* 80B7503C-80B75040 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80B74A80-80B74AE8 002BC0 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_zelRo_cpp */
void __sinit_d_a_npc_zelRo_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80B74A80, __sinit_d_a_npc_zelRo_cpp);
#pragma pop

/* 80B74AE8-80B74BA8 002C28 00C0+00 1/1 0/0 0/0 .text
 * __ct__13daNpc_ZelRo_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_ZelRo_c::daNpc_ZelRo_c(daNpcT_faceMotionAnmData_c const* param_0,
                                 daNpcT_motionAnmData_c const* param_1,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                 int param_3,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80B74BA8-80B74BB0 002CE8 0008+00 1/0 0/0 0/0 .text getEyeballRMaterialNo__13daNpc_ZelRo_cFv */
u16 daNpc_ZelRo_c::getEyeballRMaterialNo() {
    return 7;
}

/* 80B74BB0-80B74BB8 002CF0 0008+00 1/0 0/0 0/0 .text getEyeballLMaterialNo__13daNpc_ZelRo_cFv */
u16 daNpc_ZelRo_c::getEyeballLMaterialNo() {
    return 6;
}

/* 80B74BB8-80B74BC0 002CF8 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__13daNpc_ZelRo_cFv
 */
s32 daNpc_ZelRo_c::getHeadJointNo() {
    return 4;
}

/* 80B74BC0-80B74BC8 002D00 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__13daNpc_ZelRo_cFv
 */
s32 daNpc_ZelRo_c::getNeckJointNo() {
    return 3;
}

/* 80B74BC8-80B74BD0 002D08 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__13daNpc_ZelRo_cFv */
bool daNpc_ZelRo_c::getBackboneJointNo() {
    return true;
}

/* 80B74BD0-80B74BE0 002D10 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__13daNpc_ZelRo_cFi
 */
void daNpc_ZelRo_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80B74BE0-80B74BF0 002D20 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__13daNpc_ZelRo_cFi
 */
void daNpc_ZelRo_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80B74BF0-80B74C38 002D30 0048+00 2/1 0/0 0/0 .text            __dt__19daNpc_ZelRo_Param_cFv */
daNpc_ZelRo_Param_c::~daNpc_ZelRo_Param_c() {
    // NONMATCHING
}

/* 80B74C38-80B74C40 002D78 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80B74C38() {
    // NONMATCHING
}

/* 80B74C40-80B74C48 002D80 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80B74C40() {
    // NONMATCHING
}

/* 80B74D3C-80B74D3C 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
