/**
 * @file d_a_npc_seid.cpp
 * 
*/

#include "d/actor/d_a_npc_seid.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__12daNpc_seiD_cFv();
extern "C" void create__12daNpc_seiD_cFv();
extern "C" void CreateHeap__12daNpc_seiD_cFv();
extern "C" void Delete__12daNpc_seiD_cFv();
extern "C" void Execute__12daNpc_seiD_cFv();
extern "C" void Draw__12daNpc_seiD_cFv();
extern "C" void createHeapCallBack__12daNpc_seiD_cFP10fopAc_ac_c();
extern "C" void getType__12daNpc_seiD_cFv();
extern "C" void getFlowNodeNo__12daNpc_seiD_cFv();
extern "C" bool isDelete__12daNpc_seiD_cFv();
extern "C" void reset__12daNpc_seiD_cFv();
extern "C" void setParam__12daNpc_seiD_cFv();
extern "C" void getDistTable__12dAttention_cFi();
extern "C" void srchActors__12daNpc_seiD_cFv();
extern "C" void evtTalk__12daNpc_seiD_cFv();
extern "C" void evtCutProc__12daNpc_seiD_cFv();
extern "C" void action__12daNpc_seiD_cFv();
extern "C" void beforeMove__12daNpc_seiD_cFv();
extern "C" void setAttnPos__12daNpc_seiD_cFv();
extern "C" bool drawDbgInfo__12daNpc_seiD_cFv();
extern "C" void afterSetMotionAnm__12daNpc_seiD_cFiifi();
extern "C" void selectAction__12daNpc_seiD_cFv();
extern "C" void chkAction__12daNpc_seiD_cFM12daNpc_seiD_cFPCvPvPv_i();
extern "C" void setAction__12daNpc_seiD_cFM12daNpc_seiD_cFPCvPvPv_i();
extern "C" void ctrlWaitAnm__12daNpc_seiD_cFv();
extern "C" void wait__12daNpc_seiD_cFPv();
extern "C" void talk__12daNpc_seiD_cFPv();
extern "C" static void daNpc_seiD_Create__FPv();
extern "C" static void daNpc_seiD_Delete__FPv();
extern "C" static void daNpc_seiD_Execute__FPv();
extern "C" static void daNpc_seiD_Draw__FPv();
extern "C" static bool daNpc_seiD_IsDelete__FPv();
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
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi();
extern "C" bool checkChangeJoint__8daNpcT_cFi();
extern "C" bool checkRemoveJoint__8daNpcT_cFi();
extern "C" s32 getBackboneJointNo__8daNpcT_cFv();
extern "C" s32 getNeckJointNo__8daNpcT_cFv();
extern "C" s32 getHeadJointNo__8daNpcT_cFv();
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" void afterJntAnm__8daNpcT_cFi();
extern "C" bool checkChangeEvt__8daNpcT_cFv();
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" void setAfterTalkMotion__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
extern "C" void setCollision__8daNpcT_cFv();
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
extern "C" void __sinit_d_a_npc_seid_cpp();
extern "C" void
__ct__12daNpc_seiD_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __dt__18daNpc_seiD_Param_cFv();
extern "C" static void func_80ACB338();
extern "C" static void func_80ACB340();
extern "C" u8 const m__18daNpc_seiD_Param_c[148];
extern "C" extern char const* const d_a_npc_seid__stringBase0;
extern "C" void* mCutNameList__12daNpc_seiD_c;
extern "C" u8 mCutList__12daNpc_seiD_c[12];

//
// External References:
//

extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
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
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void getTexSRTKeyAnmP__8daNpcT_cFPCci();
extern "C" void getTevRegKeyAnmP__8daNpcT_cFPCci();
extern "C" void setBtkAnm__8daNpcT_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi();
extern "C" void setBrkAnm__8daNpcT_cFP15J3DAnmTevRegKeyP12J3DModelDatafi();
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
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
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
extern "C" void _savegpr_25();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_25();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" u8 dist_table__12dAttention_c[6552];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__8daNpcT_c[49];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80ACB408-80ACB408 0000AC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80ACB408 = "";
SECTION_DEAD static char const* const stringBase_80ACB409 = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_80ACB419 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80ACB425 = "seiD";
#pragma pop

/* 80ACB430-80ACB43C 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80ACB43C-80ACB450 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80ACB450-80ACB458 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x01,
};

/* 80ACB458-80ACB470 -00001 0018+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[6] = {
    (void*)&d_a_npc_seid__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_seid__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_seid__stringBase0) + 0x11),
    (void*)NULL,
};
#pragma pop

/* 80ACB470-80ACB478 -00001 0008+00 2/4 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_npc_seid__stringBase0,
    (void*)(((char*)&d_a_npc_seid__stringBase0) + 0x1D),
};

/* 80ACB478-80ACB47C 000048 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80ACB47C-80ACB484 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[2] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
};

/* 80ACB484-80ACB4A0 000054 001C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[28] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF,
    0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80ACB4A0-80ACB4BC 000070 001C+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[28] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF,
    0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80ACB4BC-80ACB4CC 00008C 0010+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[16] = {
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80ACB4CC-80ACB4DC 00009C 0010+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[16] = {
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80ACB4DC-80ACB4E0 -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_seiD_c */
SECTION_DATA void* daNpc_seiD_c::mCutNameList = (void*)&d_a_npc_seid__stringBase0;

/* 80ACB4E0-80ACB4EC 0000B0 000C+00 2/2 0/0 0/0 .data            mCutList__12daNpc_seiD_c */
SECTION_DATA u8 daNpc_seiD_c::mCutList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80ACB4EC-80ACB4F8 -00001 000C+00 1/1 0/0 0/0 .data            @4342 */
SECTION_DATA static void* lit_4342[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_seiD_cFPv,
};

/* 80ACB4F8-80ACB504 -00001 000C+00 1/1 0/0 0/0 .data            @4352 */
SECTION_DATA static void* lit_4352[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_seiD_cFPv,
};

/* 80ACB504-80ACB50C 0000D4 0008+00 0/1 0/0 0/0 .data            btkAnmData$4416 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 btkAnmData[8] = {
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 80ACB50C-80ACB514 0000DC 0008+00 0/1 0/0 0/0 .data            brkAnmData$4417 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 brkAnmData[8] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 80ACB514-80ACB520 -00001 000C+00 1/1 0/0 0/0 .data            @4467 */
SECTION_DATA static void* lit_4467[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_seiD_cFPv,
};

/* 80ACB520-80ACB540 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_seiD_MethodTable */
static actor_method_class daNpc_seiD_MethodTable = {
    (process_method_func)daNpc_seiD_Create__FPv,
    (process_method_func)daNpc_seiD_Delete__FPv,
    (process_method_func)daNpc_seiD_Execute__FPv,
    (process_method_func)daNpc_seiD_IsDelete__FPv,
    (process_method_func)daNpc_seiD_Draw__FPv,
};

/* 80ACB540-80ACB570 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SEID */
extern actor_process_profile_definition g_profile_NPC_SEID = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_SEID,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpc_seiD_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  360,                     // mPriority
  &daNpc_seiD_MethodTable, // sub_method
  0x00044000,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80ACB570-80ACB57C 000140 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80ACB57C-80ACB5A0 00014C 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80ACB340,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80ACB338,
};

/* 80ACB5A0-80ACB5AC 000170 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80ACB5AC-80ACB5B8 00017C 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80ACB5B8-80ACB5C4 000188 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80ACB5C4-80ACB5D0 000194 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80ACB5D0-80ACB5DC 0001A0 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80ACB5DC-80ACB5E8 0001AC 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80ACB5E8-80ACB6AC 0001B8 00C4+00 2/2 0/0 0/0 .data            __vt__12daNpc_seiD_c */
SECTION_DATA extern void* __vt__12daNpc_seiD_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daNpc_seiD_cFv,
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
    (void*)afterJntAnm__8daNpcT_cFi,
    (void*)setParam__12daNpc_seiD_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__12daNpc_seiD_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__12daNpc_seiD_cFv,
    (void*)setAfterTalkMotion__8daNpcT_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__12daNpc_seiD_cFv,
    (void*)beforeMove__12daNpc_seiD_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__12daNpc_seiD_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__8daNpcT_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__12daNpc_seiD_cFv,
    (void*)drawOtherMdl__8daNpcT_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__12daNpc_seiD_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__8daNpcT_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 80AC968C-80AC9728 0000EC 009C+00 1/0 0/0 0/0 .text            __dt__12daNpc_seiD_cFv */
daNpc_seiD_c::~daNpc_seiD_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ACB35C-80ACB3F0 000000 0094+00 4/4 0/0 0/0 .rodata          m__18daNpc_seiD_Param_c */
SECTION_RODATA u8 const daNpc_seiD_Param_c::m[148] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x45, 0x7A, 0x00,
    0x00, 0x43, 0x7F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x44, 0x96, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ACB35C, &daNpc_seiD_Param_c::m);

/* 80AC9728-80AC9968 000188 0240+00 1/1 0/0 0/0 .text            create__12daNpc_seiD_cFv */
void daNpc_seiD_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ACB3F0-80ACB3F4 000094 0004+00 1/3 0/0 0/0 .rodata          @4089 */
SECTION_RODATA static u8 const lit_4089[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ACB3F0, &lit_4089);

/* 80ACB3F4-80ACB3F8 000098 0004+00 0/2 0/0 0/0 .rodata          @4090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4090 = 65536.0f;
COMPILER_STRIP_GATE(0x80ACB3F4, &lit_4090);
#pragma pop

/* 80ACB3F8-80ACB3FC 00009C 0004+00 0/2 0/0 0/0 .rodata          @4091 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4091 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80ACB3F8, &lit_4091);
#pragma pop

/* 80ACB3FC-80ACB400 0000A0 0004+00 2/2 0/0 0/0 .rodata          @4215 */
SECTION_RODATA static f32 const lit_4215 = 1.0f;
COMPILER_STRIP_GATE(0x80ACB3FC, &lit_4215);

/* 80AC9968-80AC9AC0 0003C8 0158+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_seiD_cFv */
void daNpc_seiD_c::CreateHeap() {
    // NONMATCHING
}

/* 80AC9AC0-80AC9AF4 000520 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_seiD_cFv */
void daNpc_seiD_c::Delete() {
    // NONMATCHING
}

/* 80AC9AF4-80AC9B14 000554 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_seiD_cFv */
void daNpc_seiD_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ACB400-80ACB404 0000A4 0004+00 1/1 0/0 0/0 .rodata          @4247 */
SECTION_RODATA static f32 const lit_4247 = 100.0f;
COMPILER_STRIP_GATE(0x80ACB400, &lit_4247);

/* 80AC9B14-80AC9BA8 000574 0094+00 1/1 0/0 0/0 .text            Draw__12daNpc_seiD_cFv */
void daNpc_seiD_c::Draw() {
    // NONMATCHING
}

/* 80AC9BA8-80AC9BC8 000608 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpc_seiD_cFP10fopAc_ac_c             */
void daNpc_seiD_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80AC9BC8-80AC9BE8 000628 0020+00 1/1 0/0 0/0 .text            getType__12daNpc_seiD_cFv */
void daNpc_seiD_c::getType() {
    // NONMATCHING
}

/* 80AC9BE8-80AC9C04 000648 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__12daNpc_seiD_cFv */
void daNpc_seiD_c::getFlowNodeNo() {
    // NONMATCHING
}

/* 80AC9C04-80AC9C0C 000664 0008+00 1/1 0/0 0/0 .text            isDelete__12daNpc_seiD_cFv */
bool daNpc_seiD_c::isDelete() {
    return false;
}

/* ############################################################################################## */
/* 80ACB404-80ACB408 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4292 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4292 = -1.0f;
COMPILER_STRIP_GATE(0x80ACB404, &lit_4292);
#pragma pop

/* 80AC9C0C-80AC9D5C 00066C 0150+00 1/1 0/0 0/0 .text            reset__12daNpc_seiD_cFv */
void daNpc_seiD_c::reset() {
    // NONMATCHING
}

/* 80AC9D5C-80AC9E74 0007BC 0118+00 1/0 0/0 0/0 .text            setParam__12daNpc_seiD_cFv */
void daNpc_seiD_c::setParam() {
    // NONMATCHING
}

/* 80AC9E74-80AC9E88 0008D4 0014+00 1/1 0/0 0/0 .text            getDistTable__12dAttention_cFi */
// void dAttention_c::getDistTable(int param_0) {
extern "C" void getDistTable__12dAttention_cFi() {
    // NONMATCHING
}

/* 80AC9E88-80AC9E8C 0008E8 0004+00 1/1 0/0 0/0 .text            srchActors__12daNpc_seiD_cFv */
void daNpc_seiD_c::srchActors() {
    /* empty function */
}

/* 80AC9E8C-80AC9F8C 0008EC 0100+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_seiD_cFv */
void daNpc_seiD_c::evtTalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ACB408-80ACB408 0000AC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80ACB42A = "Seid";
#pragma pop

/* 80AC9F8C-80ACA054 0009EC 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_seiD_cFv */
void daNpc_seiD_c::evtCutProc() {
    // NONMATCHING
}

/* 80ACA054-80ACA0DC 000AB4 0088+00 1/0 0/0 0/0 .text            action__12daNpc_seiD_cFv */
void daNpc_seiD_c::action() {
    // NONMATCHING
}

/* 80ACA0DC-80ACA15C 000B3C 0080+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_seiD_cFv */
void daNpc_seiD_c::beforeMove() {
    // NONMATCHING
}

/* 80ACA15C-80ACA1B8 000BBC 005C+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_seiD_cFv */
void daNpc_seiD_c::setAttnPos() {
    // NONMATCHING
}

/* 80ACA1B8-80ACA1C0 000C18 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_seiD_cFv */
bool daNpc_seiD_c::drawDbgInfo() {
    return false;
}

/* 80ACA1C0-80ACA358 000C20 0198+00 1/0 0/0 0/0 .text afterSetMotionAnm__12daNpc_seiD_cFiifi */
void daNpc_seiD_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    // NONMATCHING
}

/* 80ACA358-80ACA3A0 000DB8 0048+00 1/1 0/0 0/0 .text            selectAction__12daNpc_seiD_cFv */
void daNpc_seiD_c::selectAction() {
    // NONMATCHING
}

/* 80ACA3A0-80ACA3CC 000E00 002C+00 1/1 0/0 0/0 .text
 * chkAction__12daNpc_seiD_cFM12daNpc_seiD_cFPCvPvPv_i          */
void daNpc_seiD_c::chkAction(int (daNpc_seiD_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80ACA3CC-80ACA474 000E2C 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_seiD_cFM12daNpc_seiD_cFPCvPvPv_i          */
void daNpc_seiD_c::setAction(int (daNpc_seiD_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80ACA474-80ACA478 000ED4 0004+00 1/1 0/0 0/0 .text            ctrlWaitAnm__12daNpc_seiD_cFv */
void daNpc_seiD_c::ctrlWaitAnm() {
    /* empty function */
}

/* 80ACA478-80ACA4A4 000ED8 002C+00 1/0 0/0 0/0 .text            wait__12daNpc_seiD_cFPv */
void daNpc_seiD_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80ACA4A4-80ACA544 000F04 00A0+00 2/0 0/0 0/0 .text            talk__12daNpc_seiD_cFPv */
void daNpc_seiD_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80ACA544-80ACA564 000FA4 0020+00 1/0 0/0 0/0 .text            daNpc_seiD_Create__FPv */
static void daNpc_seiD_Create(void* param_0) {
    // NONMATCHING
}

/* 80ACA564-80ACA584 000FC4 0020+00 1/0 0/0 0/0 .text            daNpc_seiD_Delete__FPv */
static void daNpc_seiD_Delete(void* param_0) {
    // NONMATCHING
}

/* 80ACA584-80ACA5A4 000FE4 0020+00 1/0 0/0 0/0 .text            daNpc_seiD_Execute__FPv */
static void daNpc_seiD_Execute(void* param_0) {
    // NONMATCHING
}

/* 80ACA5A4-80ACA5C4 001004 0020+00 1/0 0/0 0/0 .text            daNpc_seiD_Draw__FPv */
static void daNpc_seiD_Draw(void* param_0) {
    // NONMATCHING
}

/* 80ACA5C4-80ACA5CC 001024 0008+00 1/0 0/0 0/0 .text            daNpc_seiD_IsDelete__FPv */
static bool daNpc_seiD_IsDelete(void* param_0) {
    return true;
}

/* 80ACA5CC-80ACA614 00102C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80ACA614-80ACA99C 001074 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80ACA99C-80ACA9D8 0013FC 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80ACA9D8-80ACAA14 001438 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80ACAA14-80ACAE18 001474 0404+00 1/1 0/0 0/0 .text
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

/* 80ACAE18-80ACAE1C 001878 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80ACAE1C-80ACAF18 00187C 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80ACAF18-80ACAF1C 001978 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80ACAF1C-80ACAF64 00197C 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80ACAF64-80ACAFAC 0019C4 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80ACAFAC-80ACB01C 001A0C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80ACB01C-80ACB078 001A7C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80ACB078-80ACB0E8 001AD8 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80ACB0E8-80ACB130 001B48 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80ACB138-80ACB13C 001B98 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80ACB14C-80ACB154 001BAC 0008+00 1/0 0/0 0/0 .text            getBackboneJointNo__8daNpcT_cFv */
s32 daNpcT_c::getBackboneJointNo() {
    return -1;
}

/* 80ACB154-80ACB15C 001BB4 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__8daNpcT_cFv */
s32 daNpcT_c::getNeckJointNo() {
    return -1;
}

/* 80ACB15C-80ACB164 001BBC 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__8daNpcT_cFv */
s32 daNpcT_c::getHeadJointNo() {
    return -1;
}

/* 80ACB164-80ACB16C 001BC4 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootLJointNo() {
    return -1;
}

/* 80ACB16C-80ACB174 001BCC 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootRJointNo() {
    return -1;
}

/* 80ACB174-80ACB17C 001BD4 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80ACB17C-80ACB184 001BDC 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80ACB184-80ACB188 001BE4 0004+00 1/0 0/0 0/0 .text            afterJntAnm__8daNpcT_cFi */
void daNpcT_c::afterJntAnm(int param_0) {
    /* empty function */
}

/* 80ACB188-80ACB190 001BE8 0008+00 1/0 0/0 0/0 .text            checkChangeEvt__8daNpcT_cFv */
bool daNpcT_c::checkChangeEvt() {
    return false;
}

/* 80ACB190-80ACB198 001BF0 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80ACB198-80ACB19C 001BF8 0004+00 1/0 0/0 0/0 .text            setAfterTalkMotion__8daNpcT_cFv */
void daNpcT_c::setAfterTalkMotion() {
    /* empty function */
}

/* 80ACB19C-80ACB1A0 001BFC 0004+00 1/0 0/0 0/0 .text            afterMoved__8daNpcT_cFv */
void daNpcT_c::afterMoved() {
    /* empty function */
}

/* 80ACB1A0-80ACB1A4 001C00 0004+00 1/0 0/0 0/0 .text            setCollision__8daNpcT_cFv */
void daNpcT_c::setCollision() {
    /* empty function */
}

/* 80ACB1A4-80ACB1AC 001C04 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80ACB1AC-80ACB1C4 001C0C 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80ACB1C4-80ACB1C8 001C24 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80ACB1C8-80ACB1CC 001C28 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80ACB1CC-80ACB1D4 001C2C 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80ACB1D4-80ACB204 001C34 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80ACB204-80ACB234 001C64 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80ACB234-80ACB238 001C94 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80ACB238-80ACB23C 001C98 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80ACB23C-80ACB240 001C9C 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80ACB240-80ACB244 001CA0 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 80ACB6AC-80ACB6B8 00027C 000C+00 2/2 0/0 0/0 .data            __vt__18daNpc_seiD_Param_c */
SECTION_DATA extern void* __vt__18daNpc_seiD_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_seiD_Param_cFv,
};

/* 80ACB6C0-80ACB6CC 000008 000C+00 1/1 0/0 0/0 .bss             @3814 */
static u8 lit_3814[12];

/* 80ACB6CC-80ACB6D0 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80ACB244-80ACB2AC 001CA4 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_seid_cpp */
void __sinit_d_a_npc_seid_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80ACB244, __sinit_d_a_npc_seid_cpp);
#pragma pop

/* 80ACB2AC-80ACB2F0 001D0C 0044+00 1/1 0/0 0/0 .text
 * __ct__12daNpc_seiD_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_seiD_c::daNpc_seiD_c(daNpcT_faceMotionAnmData_c const* param_0,
                               daNpcT_motionAnmData_c const* param_1,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                               int param_3,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                               int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80ACB2F0-80ACB338 001D50 0048+00 2/1 0/0 0/0 .text            __dt__18daNpc_seiD_Param_cFv */
daNpc_seiD_Param_c::~daNpc_seiD_Param_c() {
    // NONMATCHING
}

/* 80ACB338-80ACB340 001D98 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80ACB338() {
    // NONMATCHING
}

/* 80ACB340-80ACB348 001DA0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80ACB340() {
    // NONMATCHING
}

/* 80ACB408-80ACB408 0000AC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
