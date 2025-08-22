/**
 * @file d_a_npc_zanb.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_zanb.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__12daNpc_zanB_cFv();
extern "C" void create__12daNpc_zanB_cFv();
extern "C" void CreateHeap__12daNpc_zanB_cFv();
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
extern "C" void Delete__12daNpc_zanB_cFv();
extern "C" void Execute__12daNpc_zanB_cFv();
extern "C" void Draw__12daNpc_zanB_cFv();
extern "C" void createHeapCallBack__12daNpc_zanB_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__12daNpc_zanB_cFP8J3DJointi();
extern "C" void getType__12daNpc_zanB_cFv();
extern "C" bool isDelete__12daNpc_zanB_cFv();
extern "C" void reset__12daNpc_zanB_cFv();
extern "C" void afterJntAnm__12daNpc_zanB_cFi();
extern "C" void checkChangeEvt__12daNpc_zanB_cFv();
extern "C" void setParam__12daNpc_zanB_cFv();
extern "C" void setAfterTalkMotion__12daNpc_zanB_cFv();
extern "C" void srchActors__12daNpc_zanB_cFv();
extern "C" void evtTalk__12daNpc_zanB_cFv();
extern "C" void evtCutProc__12daNpc_zanB_cFv();
extern "C" void action__12daNpc_zanB_cFv();
extern "C" void beforeMove__12daNpc_zanB_cFv();
extern "C" void setAttnPos__12daNpc_zanB_cFv();
extern "C" void setCollision__12daNpc_zanB_cFv();
extern "C" bool drawDbgInfo__12daNpc_zanB_cFv();
extern "C" void drawGhost__12daNpc_zanB_cFv();
extern "C" void selectAction__12daNpc_zanB_cFv();
extern "C" void chkAction__12daNpc_zanB_cFM12daNpc_zanB_cFPCvPvPv_i();
extern "C" void setAction__12daNpc_zanB_cFM12daNpc_zanB_cFPCvPvPv_i();
extern "C" void wait__12daNpc_zanB_cFPv();
extern "C" void talk__12daNpc_zanB_cFPv();
extern "C" static void daNpc_zanB_Create__FPv();
extern "C" static void daNpc_zanB_Delete__FPv();
extern "C" static void daNpc_zanB_Execute__FPv();
extern "C" static void daNpc_zanB_Draw__FPv();
extern "C" static bool daNpc_zanB_IsDelete__FPv();
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
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
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
extern "C" void __sinit_d_a_npc_zanb_cpp();
extern "C" void
__ct__12daNpc_zanB_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" u16 getEyeballMaterialNo__12daNpc_zanB_cFv();
extern "C" s32 getHeadJointNo__12daNpc_zanB_cFv();
extern "C" s32 getNeckJointNo__12daNpc_zanB_cFv();
extern "C" bool getBackboneJointNo__12daNpc_zanB_cFv();
extern "C" void checkChangeJoint__12daNpc_zanB_cFi();
extern "C" void checkRemoveJoint__12daNpc_zanB_cFi();
extern "C" void __dt__18daNpc_zanB_Param_cFv();
extern "C" static void func_80B6BCA0();
extern "C" static void func_80B6BCA8();
extern "C" u8 const m__18daNpc_zanB_Param_c[140];
extern "C" extern char const* const d_a_npc_zanb__stringBase0;
extern "C" void* mCutNameList__12daNpc_zanB_c;
extern "C" u8 mCutList__12daNpc_zanB_c[12];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
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
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80B6BDBC-80B6BDBC 0000F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B6BDBC = "";
SECTION_DEAD static char const* const stringBase_80B6BDBD = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80B6BDC9 = "zanB";
#pragma pop

/* 80B6BDF0-80B6BDF8 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x01,
};

/* 80B6BDF8-80B6BE08 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[4] = {
    (void*)&d_a_npc_zanb__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_zanb__stringBase0) + 0x1),
    (void*)NULL,
};
#pragma pop

/* 80B6BE08-80B6BE10 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_npc_zanb__stringBase0,
    (void*)(((char*)&d_a_npc_zanb__stringBase0) + 0xD),
};

/* 80B6BE10-80B6BE14 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80B6BE14-80B6BE1C -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[2] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
};

/* 80B6BE1C-80B6BE38 00004C 001C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[28] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF,
    0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80B6BE38-80B6BE70 000068 0038+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[56] = {
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80B6BE70-80B6BE80 0000A0 0010+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[16] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B6BE80-80B6BEA0 0000B0 0020+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[32] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B6BEA0-80B6BEA4 -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_zanB_c */
SECTION_DATA void* daNpc_zanB_c::mCutNameList = (void*)&d_a_npc_zanb__stringBase0;

/* 80B6BEA4-80B6BEB0 0000D4 000C+00 2/2 0/0 0/0 .data            mCutList__12daNpc_zanB_c */
SECTION_DATA u8 daNpc_zanB_c::mCutList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B6BEB0-80B6BEBC -00001 000C+00 1/1 0/0 0/0 .data            @4463 */
SECTION_DATA static void* lit_4463[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_zanB_cFPv,
};

/* 80B6BEBC-80B6BEC8 -00001 000C+00 1/1 0/0 0/0 .data            @4540 */
SECTION_DATA static void* lit_4540[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_zanB_cFPv,
};

/* 80B6BEC8-80B6BED4 -00001 000C+00 1/1 0/0 0/0 .data            @4545 */
SECTION_DATA static void* lit_4545[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_zanB_cFPv,
};

/* 80B6BED4-80B6BEE0 -00001 000C+00 1/1 0/0 0/0 .data            @4783 */
SECTION_DATA static void* lit_4783[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_zanB_cFPv,
};

/* 80B6BEE0-80B6BF00 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_zanB_MethodTable */
static actor_method_class daNpc_zanB_MethodTable = {
    (process_method_func)daNpc_zanB_Create__FPv,
    (process_method_func)daNpc_zanB_Delete__FPv,
    (process_method_func)daNpc_zanB_Execute__FPv,
    (process_method_func)daNpc_zanB_IsDelete__FPv,
    (process_method_func)daNpc_zanB_Draw__FPv,
};

/* 80B6BF00-80B6BF30 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_ZANB */
extern actor_process_profile_definition g_profile_NPC_ZANB = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_ZANB,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpc_zanB_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  382,                     // mPriority
  &daNpc_zanB_MethodTable, // sub_method
  0x00044107,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80B6BF30-80B6BF3C 000160 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80B6BF3C-80B6BF48 00016C 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B6BF48-80B6BF6C 000178 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B6BCA8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B6BCA0,
};

/* 80B6BF6C-80B6BF78 00019C 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B6BF78-80B6BF84 0001A8 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B6BF84-80B6BF90 0001B4 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B6BF90-80B6BF9C 0001C0 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80B6BF9C-80B6BFA8 0001CC 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80B6BFA8-80B6BFB4 0001D8 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80B6BFB4-80B6BFC0 0001E4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B6BFC0-80B6BFCC 0001F0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B6BFCC-80B6C090 0001FC 00C4+00 2/2 0/0 0/0 .data            __vt__12daNpc_zanB_c */
SECTION_DATA extern void* __vt__12daNpc_zanB_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daNpc_zanB_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__12daNpc_zanB_cFi,
    (void*)checkRemoveJoint__12daNpc_zanB_cFi,
    (void*)getBackboneJointNo__12daNpc_zanB_cFv,
    (void*)getNeckJointNo__12daNpc_zanB_cFv,
    (void*)getHeadJointNo__12daNpc_zanB_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__12daNpc_zanB_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__12daNpc_zanB_cFi,
    (void*)setParam__12daNpc_zanB_cFv,
    (void*)checkChangeEvt__12daNpc_zanB_cFv,
    (void*)evtTalk__12daNpc_zanB_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__12daNpc_zanB_cFv,
    (void*)setAfterTalkMotion__12daNpc_zanB_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__12daNpc_zanB_cFv,
    (void*)beforeMove__12daNpc_zanB_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__12daNpc_zanB_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__12daNpc_zanB_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__12daNpc_zanB_cFv,
    (void*)drawOtherMdl__8daNpcT_cFv,
    (void*)drawGhost__12daNpc_zanB_cFv,
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

/* 80B68F2C-80B6904C 0000EC 0120+00 1/0 0/0 0/0 .text            __dt__12daNpc_zanB_cFv */
daNpc_zanB_c::~daNpc_zanB_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B6BCC4-80B6BD50 000000 008C+00 7/7 0/0 0/0 .rodata          m__18daNpc_zanB_Param_c */
SECTION_RODATA u8 const daNpc_zanB_Param_c::m[140] = {
    0x43, 0x87, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x7A, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B6BCC4, &daNpc_zanB_Param_c::m);

/* 80B6BD50-80B6BD58 00008C 0008+00 0/1 0/0 0/0 .rodata          heapSize$3959 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[8] = {
    0x00, 0x00, 0x6E, 0x80, 0x00, 0x00, 0x6E, 0x80,
};
COMPILER_STRIP_GATE(0x80B6BD50, &heapSize);
#pragma pop

/* 80B6BD58-80B6BD5C 000094 0004+00 0/1 0/0 0/0 .rodata          @4032 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4032 = -200.0f;
COMPILER_STRIP_GATE(0x80B6BD58, &lit_4032);
#pragma pop

/* 80B6BD5C-80B6BD60 000098 0004+00 0/1 0/0 0/0 .rodata          @4033 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4033 = -100.0f;
COMPILER_STRIP_GATE(0x80B6BD5C, &lit_4033);
#pragma pop

/* 80B6BD60-80B6BD64 00009C 0004+00 0/2 0/0 0/0 .rodata          @4034 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4034 = 200.0f;
COMPILER_STRIP_GATE(0x80B6BD60, &lit_4034);
#pragma pop

/* 80B6BD64-80B6BD68 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4035 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4035 = 300.0f;
COMPILER_STRIP_GATE(0x80B6BD64, &lit_4035);
#pragma pop

/* 80B6BD68-80B6BD6C 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4036 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4036 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80B6BD68, &lit_4036);
#pragma pop

/* 80B6904C-80B69330 00020C 02E4+00 1/1 0/0 0/0 .text            create__12daNpc_zanB_cFv */
void daNpc_zanB_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B6BD6C-80B6BD70 0000A8 0004+00 6/11 0/0 0/0 .rodata          @4190 */
SECTION_RODATA static u8 const lit_4190[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B6BD6C, &lit_4190);

/* 80B6BD70-80B6BD74 0000AC 0004+00 0/2 0/0 0/0 .rodata          @4191 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4191 = 65536.0f;
COMPILER_STRIP_GATE(0x80B6BD70, &lit_4191);
#pragma pop

/* 80B6BD74-80B6BD78 0000B0 0004+00 0/3 0/0 0/0 .rodata          @4192 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4192 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B6BD74, &lit_4192);
#pragma pop

/* 80B6BD78-80B6BD7C 0000B4 0004+00 2/4 0/0 0/0 .rodata          @4336 */
SECTION_RODATA static f32 const lit_4336 = 1.0f;
COMPILER_STRIP_GATE(0x80B6BD78, &lit_4336);

/* 80B69330-80B695A0 0004F0 0270+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_zanB_cFv */
void daNpc_zanB_c::CreateHeap() {
    // NONMATCHING
}

/* 80B695A0-80B695DC 000760 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80B695DC-80B695F4 00079C 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80B695F4-80B69630 0007B4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80B69630-80B69648 0007F0 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80B69648-80B69690 000808 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80B69690-80B696B4 000850 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80B696B4-80B696F0 000874 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80B696F0-80B69708 0008B0 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80B69708-80B69744 0008C8 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80B69744-80B6975C 000904 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80B6975C-80B69790 00091C 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_zanB_cFv */
void daNpc_zanB_c::Delete() {
    // NONMATCHING
}

/* 80B69790-80B697B0 000950 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_zanB_cFv */
void daNpc_zanB_c::Execute() {
    // NONMATCHING
}

/* 80B697B0-80B69844 000970 0094+00 1/1 0/0 0/0 .text            Draw__12daNpc_zanB_cFv */
void daNpc_zanB_c::Draw() {
    // NONMATCHING
}

/* 80B69844-80B69864 000A04 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpc_zanB_cFP10fopAc_ac_c             */
void daNpc_zanB_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80B69864-80B698BC 000A24 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__12daNpc_zanB_cFP8J3DJointi                */
void daNpc_zanB_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80B698BC-80B698DC 000A7C 0020+00 1/1 0/0 0/0 .text            getType__12daNpc_zanB_cFv */
void daNpc_zanB_c::getType() {
    // NONMATCHING
}

/* 80B698DC-80B698E4 000A9C 0008+00 1/1 0/0 0/0 .text            isDelete__12daNpc_zanB_cFv */
bool daNpc_zanB_c::isDelete() {
    return false;
}

/* 80B698E4-80B69A3C 000AA4 0158+00 1/1 0/0 0/0 .text            reset__12daNpc_zanB_cFv */
void daNpc_zanB_c::reset() {
    // NONMATCHING
}

/* 80B69A3C-80B69AC8 000BFC 008C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_zanB_cFi */
void daNpc_zanB_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 80B69AC8-80B69B7C 000C88 00B4+00 1/0 0/0 0/0 .text            checkChangeEvt__12daNpc_zanB_cFv */
void daNpc_zanB_c::checkChangeEvt() {
    // NONMATCHING
}

/* 80B69B7C-80B69CA8 000D3C 012C+00 1/0 0/0 0/0 .text            setParam__12daNpc_zanB_cFv */
void daNpc_zanB_c::setParam() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B6BD7C-80B6BD80 0000B8 0004+00 2/2 0/0 0/0 .rodata          @4529 */
SECTION_RODATA static f32 const lit_4529 = -1.0f;
COMPILER_STRIP_GATE(0x80B6BD7C, &lit_4529);

/* 80B69CA8-80B69D08 000E68 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_zanB_cFv */
void daNpc_zanB_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80B69D08-80B69D0C 000EC8 0004+00 1/1 0/0 0/0 .text            srchActors__12daNpc_zanB_cFv */
void daNpc_zanB_c::srchActors() {
    /* empty function */
}

/* 80B69D0C-80B69DAC 000ECC 00A0+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_zanB_cFv */
void daNpc_zanB_c::evtTalk() {
    // NONMATCHING
}

/* 80B69DAC-80B69E74 000F6C 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_zanB_cFv */
void daNpc_zanB_c::evtCutProc() {
    // NONMATCHING
}

/* 80B69E74-80B69F60 001034 00EC+00 1/0 0/0 0/0 .text            action__12daNpc_zanB_cFv */
void daNpc_zanB_c::action() {
    // NONMATCHING
}

/* 80B69F60-80B69FD8 001120 0078+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_zanB_cFv */
void daNpc_zanB_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B6BD80-80B6BD84 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4653 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4653 = 20.0f;
COMPILER_STRIP_GATE(0x80B6BD80, &lit_4653);
#pragma pop

/* 80B6BD84-80B6BD88 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4654 = 30.0f;
COMPILER_STRIP_GATE(0x80B6BD84, &lit_4654);
#pragma pop

/* 80B6BD88-80B6BD8C 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4655 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4655 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80B6BD88, &lit_4655);
#pragma pop

/* 80B6BD8C-80B6BD90 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4656 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4656 = 220.0f;
COMPILER_STRIP_GATE(0x80B6BD8C, &lit_4656);
#pragma pop

/* 80B6BD90-80B6BD94 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4657 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4657 = -40.0f;
COMPILER_STRIP_GATE(0x80B6BD90, &lit_4657);
#pragma pop

/* 80B6BD94-80B6BD9C 0000D0 0008+00 1/3 0/0 0/0 .rodata          @4659 */
SECTION_RODATA static u8 const lit_4659[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B6BD94, &lit_4659);

/* 80B69FD8-80B6A268 001198 0290+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_zanB_cFv */
void daNpc_zanB_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B6BD9C-80B6BDA4 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4717 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4717[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B6BD9C, &lit_4717);
#pragma pop

/* 80B6BDA4-80B6BDAC 0000E0 0008+00 0/1 0/0 0/0 .rodata          @4718 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4718[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B6BDA4, &lit_4718);
#pragma pop

/* 80B6BDAC-80B6BDB4 0000E8 0008+00 0/1 0/0 0/0 .rodata          @4719 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4719[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B6BDAC, &lit_4719);
#pragma pop

/* 80B6BDB4-80B6BDB8 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4763 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4763 = -20.0f;
COMPILER_STRIP_GATE(0x80B6BDB4, &lit_4763);
#pragma pop

/* 80B6BDB8-80B6BDBC 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4764 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4764 = 60.0f;
COMPILER_STRIP_GATE(0x80B6BDB8, &lit_4764);
#pragma pop

/* 80B6A268-80B6A408 001428 01A0+00 1/0 0/0 0/0 .text            setCollision__12daNpc_zanB_cFv */
void daNpc_zanB_c::setCollision() {
    // NONMATCHING
}

/* 80B6A408-80B6A410 0015C8 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_zanB_cFv */
bool daNpc_zanB_c::drawDbgInfo() {
    return false;
}

/* 80B6A410-80B6A47C 0015D0 006C+00 1/0 0/0 0/0 .text            drawGhost__12daNpc_zanB_cFv */
void daNpc_zanB_c::drawGhost() {
    // NONMATCHING
}

/* 80B6A47C-80B6A4C4 00163C 0048+00 1/1 0/0 0/0 .text            selectAction__12daNpc_zanB_cFv */
void daNpc_zanB_c::selectAction() {
    // NONMATCHING
}

/* 80B6A4C4-80B6A4F0 001684 002C+00 2/2 0/0 0/0 .text
 * chkAction__12daNpc_zanB_cFM12daNpc_zanB_cFPCvPvPv_i          */
void daNpc_zanB_c::chkAction(int (daNpc_zanB_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80B6A4F0-80B6A598 0016B0 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_zanB_cFM12daNpc_zanB_cFPCvPvPv_i          */
void daNpc_zanB_c::setAction(int (daNpc_zanB_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80B6A598-80B6A874 001758 02DC+00 1/0 0/0 0/0 .text            wait__12daNpc_zanB_cFPv */
void daNpc_zanB_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80B6A874-80B6AA60 001A34 01EC+00 3/0 0/0 0/0 .text            talk__12daNpc_zanB_cFPv */
void daNpc_zanB_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80B6AA60-80B6AA80 001C20 0020+00 1/0 0/0 0/0 .text            daNpc_zanB_Create__FPv */
static void daNpc_zanB_Create(void* param_0) {
    // NONMATCHING
}

/* 80B6AA80-80B6AAA0 001C40 0020+00 1/0 0/0 0/0 .text            daNpc_zanB_Delete__FPv */
static void daNpc_zanB_Delete(void* param_0) {
    // NONMATCHING
}

/* 80B6AAA0-80B6AAC0 001C60 0020+00 1/0 0/0 0/0 .text            daNpc_zanB_Execute__FPv */
static void daNpc_zanB_Execute(void* param_0) {
    // NONMATCHING
}

/* 80B6AAC0-80B6AAE0 001C80 0020+00 1/0 0/0 0/0 .text            daNpc_zanB_Draw__FPv */
static void daNpc_zanB_Draw(void* param_0) {
    // NONMATCHING
}

/* 80B6AAE0-80B6AAE8 001CA0 0008+00 1/0 0/0 0/0 .text            daNpc_zanB_IsDelete__FPv */
static bool daNpc_zanB_IsDelete(void* param_0) {
    return true;
}

/* 80B6AAE8-80B6AB18 001CA8 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80B6AB18-80B6AB60 001CD8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B6AB60-80B6AEE8 001D20 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B6AEE8-80B6AF24 0020A8 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80B6AF24-80B6AF60 0020E4 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80B6AF60-80B6B364 002120 0404+00 1/1 0/0 0/0 .text
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

/* 80B6B364-80B6B368 002524 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80B6B368-80B6B464 002528 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80B6B464-80B6B468 002624 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80B6B468-80B6B4B0 002628 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B6B4B0-80B6B4F8 002670 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80B6B4F8-80B6B568 0026B8 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80B6B568-80B6B5C4 002728 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B6B5C4-80B6B634 002784 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80B6B634-80B6B67C 0027F4 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80B6B67C-80B6B798 00283C 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80B6B798-80B6B9A0 002958 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80B6B9A0-80B6B9A4 002B60 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80B6B9B4-80B6B9BC 002B74 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B6B9BC-80B6B9C4 002B7C 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B6B9C4-80B6B9CC 002B84 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80B6B9D0-80B6B9D8 002B90 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80B6B9D8-80B6B9F0 002B98 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B6B9F0-80B6B9F4 002BB0 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80B6B9F4-80B6B9FC 002BB4 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B6B9FC-80B6BA04 002BBC 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B6BA04-80B6BA34 002BC4 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80B6BA34-80B6BA64 002BF4 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80B6BA64-80B6BA68 002C24 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B6BA68-80B6BA6C 002C28 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B6BA6C-80B6BA70 002C2C 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B6BA70-80B6BA74 002C30 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 80B6C090-80B6C09C 0002C0 000C+00 2/2 0/0 0/0 .data            __vt__18daNpc_zanB_Param_c */
SECTION_DATA extern void* __vt__18daNpc_zanB_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_zanB_Param_cFv,
};

/* 80B6C0A8-80B6C0B4 000008 000C+00 1/1 0/0 0/0 .bss             @3811 */
static u8 lit_3811[12];

/* 80B6C0B4-80B6C0B8 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80B6BA74-80B6BADC 002C34 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_zanb_cpp */
void __sinit_d_a_npc_zanb_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80B6BA74, __sinit_d_a_npc_zanb_cpp);
#pragma pop

/* 80B6BADC-80B6BB88 002C9C 00AC+00 1/1 0/0 0/0 .text
 * __ct__12daNpc_zanB_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_zanB_c::daNpc_zanB_c(daNpcT_faceMotionAnmData_c const* param_0,
                               daNpcT_motionAnmData_c const* param_1,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                               int param_3,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                               int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80B6BB88-80B6BBD0 002D48 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80B6BBD0-80B6BC18 002D90 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80B6BC18-80B6BC20 002DD8 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__12daNpc_zanB_cFv */
u16 daNpc_zanB_c::getEyeballMaterialNo() {
    return 4;
}

/* 80B6BC20-80B6BC28 002DE0 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__12daNpc_zanB_cFv */
s32 daNpc_zanB_c::getHeadJointNo() {
    return 3;
}

/* 80B6BC28-80B6BC30 002DE8 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__12daNpc_zanB_cFv */
s32 daNpc_zanB_c::getNeckJointNo() {
    return 2;
}

/* 80B6BC30-80B6BC38 002DF0 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__12daNpc_zanB_cFv */
bool daNpc_zanB_c::getBackboneJointNo() {
    return true;
}

/* 80B6BC38-80B6BC48 002DF8 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__12daNpc_zanB_cFi
 */
void daNpc_zanB_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80B6BC48-80B6BC58 002E08 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__12daNpc_zanB_cFi
 */
void daNpc_zanB_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80B6BC58-80B6BCA0 002E18 0048+00 2/1 0/0 0/0 .text            __dt__18daNpc_zanB_Param_cFv */
daNpc_zanB_Param_c::~daNpc_zanB_Param_c() {
    // NONMATCHING
}

/* 80B6BCA0-80B6BCA8 002E60 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80B6BCA0() {
    // NONMATCHING
}

/* 80B6BCA8-80B6BCB0 002E68 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80B6BCA8() {
    // NONMATCHING
}

/* 80B6BDBC-80B6BDBC 0000F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
