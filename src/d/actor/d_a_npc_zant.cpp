/**
 * @file d_a_npc_zant.cpp
 * 
*/

#include "d/actor/d_a_npc_zant.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__12daNpc_Zant_cFv();
extern "C" void create__12daNpc_Zant_cFv();
extern "C" void CreateHeap__12daNpc_Zant_cFv();
extern "C" void Delete__12daNpc_Zant_cFv();
extern "C" void Execute__12daNpc_Zant_cFv();
extern "C" void Draw__12daNpc_Zant_cFv();
extern "C" void createHeapCallBack__12daNpc_Zant_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__12daNpc_Zant_cFP8J3DJointi();
extern "C" void getType__12daNpc_Zant_cFv();
extern "C" void getFlowNodeNo__12daNpc_Zant_cFv();
extern "C" void isDelete__12daNpc_Zant_cFv();
extern "C" void reset__12daNpc_Zant_cFv();
extern "C" void afterJntAnm__12daNpc_Zant_cFi();
extern "C" void setParam__12daNpc_Zant_cFv();
extern "C" void setAfterTalkMotion__12daNpc_Zant_cFv();
extern "C" void srchActors__12daNpc_Zant_cFv();
extern "C" void evtTalk__12daNpc_Zant_cFv();
extern "C" void evtCutProc__12daNpc_Zant_cFv();
extern "C" void action__12daNpc_Zant_cFv();
extern "C" void beforeMove__12daNpc_Zant_cFv();
extern "C" void setAttnPos__12daNpc_Zant_cFv();
extern "C" void setCollision__12daNpc_Zant_cFv();
extern "C" bool drawDbgInfo__12daNpc_Zant_cFv();
extern "C" void drawGhost__12daNpc_Zant_cFv();
extern "C" void selectAction__12daNpc_Zant_cFv();
extern "C" void chkAction__12daNpc_Zant_cFM12daNpc_Zant_cFPCvPvPv_i();
extern "C" void setAction__12daNpc_Zant_cFM12daNpc_Zant_cFPCvPvPv_i();
extern "C" void wait__12daNpc_Zant_cFPv();
extern "C" void talk__12daNpc_Zant_cFPv();
extern "C" static void daNpc_Zant_Create__FPv();
extern "C" static void daNpc_Zant_Delete__FPv();
extern "C" static void daNpc_Zant_Execute__FPv();
extern "C" static void daNpc_Zant_Draw__FPv();
extern "C" static bool daNpc_Zant_IsDelete__FPv();
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
extern "C" s32 getEyeballMaterialNo__8daNpcT_cFv();
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs();
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs();
extern "C" s32 getHeadJointNo__8daNpcT_cFv();
extern "C" s32 getNeckJointNo__8daNpcT_cFv();
extern "C" s32 getBackboneJointNo__8daNpcT_cFv();
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi();
extern "C" bool checkChangeJoint__8daNpcT_cFi();
extern "C" bool checkRemoveJoint__8daNpcT_cFi();
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
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
extern "C" void __sinit_d_a_npc_zant_cpp();
extern "C" void
__ct__12daNpc_Zant_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__18daNpc_Zant_Param_cFv();
extern "C" static void func_80B6E984();
extern "C" static void func_80B6E98C();
extern "C" u8 const m__18daNpc_Zant_Param_c[140];
extern "C" extern char const* const d_a_npc_zant__stringBase0;
extern "C" void* mCutNameList__12daNpc_Zant_c;
extern "C" u8 mCutList__12daNpc_Zant_c[12];

//
// External References:
//

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
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80B6EA80-80B6EA80 0000D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B6EA80 = "";
SECTION_DEAD static char const* const stringBase_80B6EA81 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80B6EA8D = "Zant";
#pragma pop

/* 80B6EA94-80B6EAA0 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B6EAA0-80B6EAB4 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80B6EAB4-80B6EABC 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x01,
};

/* 80B6EABC-80B6EACC -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[4] = {
    (void*)&d_a_npc_zant__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_zant__stringBase0) + 0x1),
    (void*)NULL,
};
#pragma pop

/* 80B6EACC-80B6EAD4 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_npc_zant__stringBase0,
    (void*)(((char*)&d_a_npc_zant__stringBase0) + 0xD),
};

/* 80B6EAD4-80B6EAD8 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80B6EAD8-80B6EAE0 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[2] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
};

/* 80B6EAE0-80B6EAFC 00004C 001C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[28] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF,
    0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80B6EAFC-80B6EB18 000068 001C+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[28] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF,
    0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80B6EB18-80B6EB28 000084 0010+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[16] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B6EB28-80B6EB38 000094 0010+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[16] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B6EB38-80B6EB3C -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_Zant_c */
SECTION_DATA void* daNpc_Zant_c::mCutNameList = (void*)&d_a_npc_zant__stringBase0;

/* 80B6EB3C-80B6EB48 0000A8 000C+00 2/2 0/0 0/0 .data            mCutList__12daNpc_Zant_c */
SECTION_DATA u8 daNpc_Zant_c::mCutList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B6EB48-80B6EB54 -00001 000C+00 1/1 0/0 0/0 .data            @4457 */
SECTION_DATA static void* lit_4457[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Zant_cFPv,
};

/* 80B6EB54-80B6EB60 -00001 000C+00 1/1 0/0 0/0 .data            @4467 */
SECTION_DATA static void* lit_4467[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Zant_cFPv,
};

/* 80B6EB60-80B6EB6C -00001 000C+00 1/1 0/0 0/0 .data            @4675 */
SECTION_DATA static void* lit_4675[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_Zant_cFPv,
};

/* 80B6EB6C-80B6EB8C -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Zant_MethodTable */
static actor_method_class daNpc_Zant_MethodTable = {
    (process_method_func)daNpc_Zant_Create__FPv,
    (process_method_func)daNpc_Zant_Delete__FPv,
    (process_method_func)daNpc_Zant_Execute__FPv,
    (process_method_func)daNpc_Zant_IsDelete__FPv,
    (process_method_func)daNpc_Zant_Draw__FPv,
};

/* 80B6EB8C-80B6EBBC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_ZANT */
extern actor_process_profile_definition g_profile_NPC_ZANT = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_ZANT,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpc_Zant_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  383,                     // mPriority
  &daNpc_Zant_MethodTable, // sub_method
  0x00044107,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80B6EBBC-80B6EBC8 000128 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B6EBC8-80B6EBEC 000134 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B6E98C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B6E984,
};

/* 80B6EBEC-80B6EBF8 000158 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B6EBF8-80B6EC04 000164 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B6EC04-80B6EC10 000170 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B6EC10-80B6EC1C 00017C 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80B6EC1C-80B6EC28 000188 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80B6EC28-80B6EC34 000194 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80B6EC34-80B6EC40 0001A0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B6EC40-80B6EC4C 0001AC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B6EC4C-80B6ED10 0001B8 00C4+00 2/2 0/0 0/0 .data            __vt__12daNpc_Zant_c */
SECTION_DATA extern void* __vt__12daNpc_Zant_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daNpc_Zant_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__8daNpcT_cFi,
    (void*)checkRemoveJoint__8daNpcT_cFi,
    (void*)getBackboneJointNo__8daNpcT_cFv,
    (void*)getNeckJointNo__8daNpcT_cFv,
    (void*)getHeadJointNo__8daNpcT_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__8daNpcT_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__12daNpc_Zant_cFi,
    (void*)setParam__12daNpc_Zant_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__12daNpc_Zant_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__12daNpc_Zant_cFv,
    (void*)setAfterTalkMotion__12daNpc_Zant_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__12daNpc_Zant_cFv,
    (void*)beforeMove__12daNpc_Zant_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__12daNpc_Zant_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__12daNpc_Zant_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__12daNpc_Zant_cFv,
    (void*)drawOtherMdl__8daNpcT_cFv,
    (void*)drawGhost__12daNpc_Zant_cFv,
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

/* 80B6C1AC-80B6C2D0 0000EC 0124+00 1/0 0/0 0/0 .text            __dt__12daNpc_Zant_cFv */
daNpc_Zant_c::~daNpc_Zant_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B6E9A8-80B6EA34 000000 008C+00 6/6 0/0 0/0 .rodata          m__18daNpc_Zant_Param_c */
SECTION_RODATA u8 const daNpc_Zant_Param_c::m[140] = {
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
COMPILER_STRIP_GATE(0x80B6E9A8, &daNpc_Zant_Param_c::m);

/* 80B6EA34-80B6EA38 00008C 0004+00 0/1 0/0 0/0 .rodata          @4018 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4018 = -300.0f;
COMPILER_STRIP_GATE(0x80B6EA34, &lit_4018);
#pragma pop

/* 80B6EA38-80B6EA3C 000090 0004+00 0/1 0/0 0/0 .rodata          @4019 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4019 = -50.0f;
COMPILER_STRIP_GATE(0x80B6EA38, &lit_4019);
#pragma pop

/* 80B6EA3C-80B6EA40 000094 0004+00 0/1 0/0 0/0 .rodata          @4020 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4020 = 300.0f;
COMPILER_STRIP_GATE(0x80B6EA3C, &lit_4020);
#pragma pop

/* 80B6EA40-80B6EA44 000098 0004+00 0/1 0/0 0/0 .rodata          @4021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4021 = 450.0f;
COMPILER_STRIP_GATE(0x80B6EA40, &lit_4021);
#pragma pop

/* 80B6EA44-80B6EA48 00009C 0004+00 0/1 0/0 0/0 .rodata          @4022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4022 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80B6EA44, &lit_4022);
#pragma pop

/* 80B6C2D0-80B6C574 000210 02A4+00 1/1 0/0 0/0 .text            create__12daNpc_Zant_cFv */
void daNpc_Zant_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B6EA48-80B6EA4C 0000A0 0004+00 5/9 0/0 0/0 .rodata          @4176 */
SECTION_RODATA static u8 const lit_4176[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B6EA48, &lit_4176);

/* 80B6EA4C-80B6EA50 0000A4 0004+00 0/2 0/0 0/0 .rodata          @4177 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4177 = 65536.0f;
COMPILER_STRIP_GATE(0x80B6EA4C, &lit_4177);
#pragma pop

/* 80B6EA50-80B6EA54 0000A8 0004+00 0/3 0/0 0/0 .rodata          @4178 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4178 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B6EA50, &lit_4178);
#pragma pop

/* 80B6EA54-80B6EA58 0000AC 0004+00 2/4 0/0 0/0 .rodata          @4313 */
SECTION_RODATA static f32 const lit_4313 = 1.0f;
COMPILER_STRIP_GATE(0x80B6EA54, &lit_4313);

/* 80B6C574-80B6C700 0004B4 018C+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_Zant_cFv */
void daNpc_Zant_c::CreateHeap() {
    // NONMATCHING
}

/* 80B6C700-80B6C734 000640 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_Zant_cFv */
void daNpc_Zant_c::Delete() {
    // NONMATCHING
}

/* 80B6C734-80B6C754 000674 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_Zant_cFv */
void daNpc_Zant_c::Execute() {
    // NONMATCHING
}

/* 80B6C754-80B6C7E8 000694 0094+00 1/1 0/0 0/0 .text            Draw__12daNpc_Zant_cFv */
void daNpc_Zant_c::Draw() {
    // NONMATCHING
}

/* 80B6C7E8-80B6C808 000728 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpc_Zant_cFP10fopAc_ac_c             */
void daNpc_Zant_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80B6C808-80B6C860 000748 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__12daNpc_Zant_cFP8J3DJointi                */
void daNpc_Zant_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80B6C860-80B6C880 0007A0 0020+00 1/1 0/0 0/0 .text            getType__12daNpc_Zant_cFv */
void daNpc_Zant_c::getType() {
    // NONMATCHING
}

/* 80B6C880-80B6C89C 0007C0 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__12daNpc_Zant_cFv */
void daNpc_Zant_c::getFlowNodeNo() {
    // NONMATCHING
}

/* 80B6C89C-80B6C8CC 0007DC 0030+00 1/1 0/0 0/0 .text            isDelete__12daNpc_Zant_cFv */
void daNpc_Zant_c::isDelete() {
    // NONMATCHING
}

/* 80B6C8CC-80B6C9F0 00080C 0124+00 1/1 0/0 0/0 .text            reset__12daNpc_Zant_cFv */
void daNpc_Zant_c::reset() {
    // NONMATCHING
}

/* 80B6C9F0-80B6C9F4 000930 0004+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_Zant_cFi */
void daNpc_Zant_c::afterJntAnm(int param_0) {
    /* empty function */
}

/* 80B6C9F4-80B6CAF0 000934 00FC+00 1/0 0/0 0/0 .text            setParam__12daNpc_Zant_cFv */
void daNpc_Zant_c::setParam() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B6EA58-80B6EA5C 0000B0 0004+00 2/2 0/0 0/0 .rodata          @4447 */
SECTION_RODATA static f32 const lit_4447 = -1.0f;
COMPILER_STRIP_GATE(0x80B6EA58, &lit_4447);

/* 80B6CAF0-80B6CB50 000A30 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_Zant_cFv */
void daNpc_Zant_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80B6CB50-80B6CB54 000A90 0004+00 1/1 0/0 0/0 .text            srchActors__12daNpc_Zant_cFv */
void daNpc_Zant_c::srchActors() {
    /* empty function */
}

/* 80B6CB54-80B6CC54 000A94 0100+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_Zant_cFv */
void daNpc_Zant_c::evtTalk() {
    // NONMATCHING
}

/* 80B6CC54-80B6CD1C 000B94 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_Zant_cFv */
void daNpc_Zant_c::evtCutProc() {
    // NONMATCHING
}

/* 80B6CD1C-80B6CE08 000C5C 00EC+00 1/0 0/0 0/0 .text            action__12daNpc_Zant_cFv */
void daNpc_Zant_c::action() {
    // NONMATCHING
}

/* 80B6CE08-80B6CE80 000D48 0078+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_Zant_cFv */
void daNpc_Zant_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B6EA5C-80B6EA60 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4559 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4559 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80B6EA5C, &lit_4559);
#pragma pop

/* 80B6EA60-80B6EA68 0000B8 0008+00 1/3 0/0 0/0 .rodata          @4561 */
SECTION_RODATA static u8 const lit_4561[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B6EA60, &lit_4561);

/* 80B6CE80-80B6D074 000DC0 01F4+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_Zant_cFv */
void daNpc_Zant_c::setAttnPos() {
    // NONMATCHING
}

/* 80B6D074-80B6D1A8 000FB4 0134+00 1/0 0/0 0/0 .text            setCollision__12daNpc_Zant_cFv */
void daNpc_Zant_c::setCollision() {
    // NONMATCHING
}

/* 80B6D1A8-80B6D1B0 0010E8 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_Zant_cFv */
bool daNpc_Zant_c::drawDbgInfo() {
    return false;
}

/* 80B6D1B0-80B6D21C 0010F0 006C+00 1/0 0/0 0/0 .text            drawGhost__12daNpc_Zant_cFv */
void daNpc_Zant_c::drawGhost() {
    // NONMATCHING
}

/* 80B6D21C-80B6D264 00115C 0048+00 1/1 0/0 0/0 .text            selectAction__12daNpc_Zant_cFv */
void daNpc_Zant_c::selectAction() {
    // NONMATCHING
}

/* 80B6D264-80B6D290 0011A4 002C+00 1/1 0/0 0/0 .text
 * chkAction__12daNpc_Zant_cFM12daNpc_Zant_cFPCvPvPv_i          */
void daNpc_Zant_c::chkAction(int (daNpc_Zant_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80B6D290-80B6D338 0011D0 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_Zant_cFM12daNpc_Zant_cFPCvPvPv_i          */
void daNpc_Zant_c::setAction(int (daNpc_Zant_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80B6D338-80B6D584 001278 024C+00 1/0 0/0 0/0 .text            wait__12daNpc_Zant_cFPv */
void daNpc_Zant_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80B6D584-80B6D77C 0014C4 01F8+00 2/0 0/0 0/0 .text            talk__12daNpc_Zant_cFPv */
void daNpc_Zant_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80B6D77C-80B6D79C 0016BC 0020+00 1/0 0/0 0/0 .text            daNpc_Zant_Create__FPv */
static void daNpc_Zant_Create(void* param_0) {
    // NONMATCHING
}

/* 80B6D79C-80B6D7BC 0016DC 0020+00 1/0 0/0 0/0 .text            daNpc_Zant_Delete__FPv */
static void daNpc_Zant_Delete(void* param_0) {
    // NONMATCHING
}

/* 80B6D7BC-80B6D7DC 0016FC 0020+00 1/0 0/0 0/0 .text            daNpc_Zant_Execute__FPv */
static void daNpc_Zant_Execute(void* param_0) {
    // NONMATCHING
}

/* 80B6D7DC-80B6D7FC 00171C 0020+00 1/0 0/0 0/0 .text            daNpc_Zant_Draw__FPv */
static void daNpc_Zant_Draw(void* param_0) {
    // NONMATCHING
}

/* 80B6D7FC-80B6D804 00173C 0008+00 1/0 0/0 0/0 .text            daNpc_Zant_IsDelete__FPv */
static bool daNpc_Zant_IsDelete(void* param_0) {
    return true;
}

/* 80B6D804-80B6D84C 001744 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B6D84C-80B6DBD4 00178C 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B6DBD4-80B6DC10 001B14 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80B6DC10-80B6DC4C 001B50 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80B6DC4C-80B6E050 001B8C 0404+00 1/1 0/0 0/0 .text
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

/* 80B6E050-80B6E054 001F90 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80B6E054-80B6E150 001F94 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80B6E150-80B6E154 002090 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80B6E154-80B6E19C 002094 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B6E19C-80B6E1E4 0020DC 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80B6E1E4-80B6E254 002124 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80B6E254-80B6E2B0 002194 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B6E2B0-80B6E320 0021F0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80B6E320-80B6E368 002260 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80B6E370-80B6E48C 0022B0 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B6EA68-80B6EA70 0000C0 0008+00 0/1 0/0 0/0 .rodata          @4619 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4619[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B6EA68, &lit_4619);
#pragma pop

/* 80B6EA70-80B6EA78 0000C8 0008+00 0/1 0/0 0/0 .rodata          @4620 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4620[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B6EA70, &lit_4620);
#pragma pop

/* 80B6EA78-80B6EA80 0000D0 0008+00 0/1 0/0 0/0 .rodata          @4621 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4621[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B6EA78, &lit_4621);
#pragma pop

/* 80B6E48C-80B6E694 0023CC 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80B6E6AC-80B6E6B0 0025EC 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80B6E6D0-80B6E6D8 002610 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B6E6D8-80B6E6E0 002618 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B6E6E8-80B6E6F0 002628 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80B6E6F4-80B6E6FC 002634 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80B6E6FC-80B6E714 00263C 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B6E714-80B6E718 002654 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80B6E718-80B6E720 002658 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B6E720-80B6E728 002660 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B6E728-80B6E758 002668 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80B6E758-80B6E788 002698 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80B6E788-80B6E78C 0026C8 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B6E78C-80B6E790 0026CC 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B6E790-80B6E794 0026D0 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B6E794-80B6E798 0026D4 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 80B6ED10-80B6ED1C 00027C 000C+00 2/2 0/0 0/0 .data            __vt__18daNpc_Zant_Param_c */
SECTION_DATA extern void* __vt__18daNpc_Zant_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_Zant_Param_cFv,
};

/* 80B6ED28-80B6ED34 000008 000C+00 1/1 0/0 0/0 .bss             @3811 */
static u8 lit_3811[12];

/* 80B6ED34-80B6ED38 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80B6E798-80B6E800 0026D8 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_zant_cpp */
void __sinit_d_a_npc_zant_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80B6E798, __sinit_d_a_npc_zant_cpp);
#pragma pop

/* 80B6E800-80B6E8AC 002740 00AC+00 1/1 0/0 0/0 .text
 * __ct__12daNpc_Zant_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Zant_c::daNpc_Zant_c(daNpcT_faceMotionAnmData_c const* param_0,
                               daNpcT_motionAnmData_c const* param_1,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                               int param_3,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                               int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80B6E8AC-80B6E8F4 0027EC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80B6E8F4-80B6E93C 002834 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80B6E93C-80B6E984 00287C 0048+00 2/1 0/0 0/0 .text            __dt__18daNpc_Zant_Param_cFv */
daNpc_Zant_Param_c::~daNpc_Zant_Param_c() {
    // NONMATCHING
}

/* 80B6E984-80B6E98C 0028C4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80B6E984() {
    // NONMATCHING
}

/* 80B6E98C-80B6E994 0028CC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80B6E98C() {
    // NONMATCHING
}

/* 80B6EA80-80B6EA80 0000D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
