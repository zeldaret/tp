/**
 * @file d_a_npc_knj.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_knj.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__11daNpc_Knj_cFv();
extern "C" void create__11daNpc_Knj_cFv();
extern "C" void CreateHeap__11daNpc_Knj_cFv();
extern "C" void Delete__11daNpc_Knj_cFv();
extern "C" void Execute__11daNpc_Knj_cFv();
extern "C" void Draw__11daNpc_Knj_cFv();
extern "C" void createHeapCallBack__11daNpc_Knj_cFP10fopAc_ac_c();
extern "C" void getType__11daNpc_Knj_cFv();
extern "C" void getFlowNodeNo__11daNpc_Knj_cFv();
extern "C" bool isDelete__11daNpc_Knj_cFv();
extern "C" void reset__11daNpc_Knj_cFv();
extern "C" void setParam__11daNpc_Knj_cFv();
extern "C" void srchActors__11daNpc_Knj_cFv();
extern "C" void evtTalk__11daNpc_Knj_cFv();
extern "C" void evtCutProc__11daNpc_Knj_cFv();
extern "C" void action__11daNpc_Knj_cFv();
extern "C" void beforeMove__11daNpc_Knj_cFv();
extern "C" void setAttnPos__11daNpc_Knj_cFv();
extern "C" bool drawDbgInfo__11daNpc_Knj_cFv();
extern "C" void afterSetMotionAnm__11daNpc_Knj_cFiifi();
extern "C" void drawGhost__11daNpc_Knj_cFv();
extern "C" void selectAction__11daNpc_Knj_cFv();
extern "C" void chkAction__11daNpc_Knj_cFM11daNpc_Knj_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_Knj_cFM11daNpc_Knj_cFPCvPvPv_i();
extern "C" void wait__11daNpc_Knj_cFPv();
extern "C" void talk__11daNpc_Knj_cFPv();
extern "C" static void daNpc_Knj_Create__FPv();
extern "C" static void daNpc_Knj_Delete__FPv();
extern "C" static void daNpc_Knj_Execute__FPv();
extern "C" static void daNpc_Knj_Draw__FPv();
extern "C" static bool daNpc_Knj_IsDelete__FPv();
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
extern "C" u16 getEyeballMaterialNo__8daNpcT_cFv();
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
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void __sinit_d_a_npc_knj_cpp();
extern "C" void
__ct__11daNpc_Knj_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __dt__17daNpc_Knj_Param_cFv();
extern "C" static void func_80A454EC();
extern "C" static void func_80A454F4();
extern "C" u8 const m__17daNpc_Knj_Param_c[140];
extern "C" extern char const* const d_a_npc_knj__stringBase0;
extern "C" void* mCutNameList__11daNpc_Knj_c;
extern "C" u8 mCutList__11daNpc_Knj_c[12];

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
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void getTexPtrnAnmP__8daNpcT_cFPCci();
extern "C" void getTevRegKeyAnmP__8daNpcT_cFPCci();
extern "C" void setBtpAnm__8daNpcT_cFP16J3DAnmTexPatternP12J3DModelDatafi();
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
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
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
extern "C" void _savegpr_26();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_26();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__8daNpcT_c[49];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80A455BC-80A455BC 0000AC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A455BC = "";
SECTION_DEAD static char const* const stringBase_80A455BD = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80A455C9 = "Knj";
#pragma pop

/* 80A455F0-80A455F8 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x01,
};

/* 80A455F8-80A45608 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[4] = {
    (void*)&d_a_npc_knj__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_knj__stringBase0) + 0x1),
    (void*)NULL,
};
#pragma pop

/* 80A45608-80A45610 -00001 0008+00 2/4 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_npc_knj__stringBase0,
    (void*)(((char*)&d_a_npc_knj__stringBase0) + 0xD),
};

/* 80A45610-80A45614 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80A45614-80A4562C -00001 0018+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[6] = {
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0,
};

/* 80A4562C-80A45648 00005C 001C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[28] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF,
    0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A45648-80A45664 000078 001C+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[28] = {
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF,
    0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A45664-80A45674 000094 0010+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[16] = {
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A45674-80A45684 0000A4 0010+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[16] = {
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A45684-80A45688 -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__11daNpc_Knj_c */
SECTION_DATA void* daNpc_Knj_c::mCutNameList = (void*)&d_a_npc_knj__stringBase0;

/* 80A45688-80A45694 0000B8 000C+00 2/2 0/0 0/0 .data            mCutList__11daNpc_Knj_c */
SECTION_DATA u8 daNpc_Knj_c::mCutList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A45694-80A456A0 -00001 000C+00 1/1 0/0 0/0 .data            @4329 */
SECTION_DATA static void* lit_4329[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Knj_cFPv,
};

/* 80A456A0-80A456AC -00001 000C+00 1/1 0/0 0/0 .data            @4339 */
SECTION_DATA static void* lit_4339[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Knj_cFPv,
};

/* 80A456AC-80A456DC 0000DC 0030+00 0/1 0/0 0/0 .data            btpAnmData$4403 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 btpAnmData[48] = {
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 80A456DC-80A456E4 00010C 0008+00 0/1 0/0 0/0 .data            brkAnmData$4404 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 brkAnmData[8] = {
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 80A456E4-80A456F0 -00001 000C+00 1/1 0/0 0/0 .data            @4468 */
SECTION_DATA static void* lit_4468[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_Knj_cFPv,
};

/* 80A456F0-80A45710 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Knj_MethodTable */
static actor_method_class daNpc_Knj_MethodTable = {
    (process_method_func)daNpc_Knj_Create__FPv,
    (process_method_func)daNpc_Knj_Delete__FPv,
    (process_method_func)daNpc_Knj_Execute__FPv,
    (process_method_func)daNpc_Knj_IsDelete__FPv,
    (process_method_func)daNpc_Knj_Draw__FPv,
};

/* 80A45710-80A45740 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KNJ */
extern actor_process_profile_definition g_profile_NPC_KNJ = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_KNJ,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_Knj_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  349,                    // mPriority
  &daNpc_Knj_MethodTable, // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80A45740-80A4574C 000170 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A4574C-80A45770 00017C 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A454F4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A454EC,
};

/* 80A45770-80A4577C 0001A0 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80A4577C-80A45788 0001AC 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80A45788-80A45794 0001B8 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80A45794-80A457A0 0001C4 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80A457A0-80A457AC 0001D0 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80A457AC-80A457B8 0001DC 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80A457B8-80A4587C 0001E8 00C4+00 2/2 0/0 0/0 .data            __vt__11daNpc_Knj_c */
SECTION_DATA extern void* __vt__11daNpc_Knj_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_Knj_cFv,
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
    (void*)setParam__11daNpc_Knj_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__11daNpc_Knj_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__11daNpc_Knj_cFv,
    (void*)setAfterTalkMotion__8daNpcT_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__11daNpc_Knj_cFv,
    (void*)beforeMove__11daNpc_Knj_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__11daNpc_Knj_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__8daNpcT_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__11daNpc_Knj_cFv,
    (void*)drawOtherMdl__8daNpcT_cFv,
    (void*)drawGhost__11daNpc_Knj_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__11daNpc_Knj_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__8daNpcT_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 80A4356C-80A43608 0000EC 009C+00 1/0 0/0 0/0 .text            __dt__11daNpc_Knj_cFv */
daNpc_Knj_c::~daNpc_Knj_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A45510-80A4559C 000000 008C+00 4/4 0/0 0/0 .rodata          m__17daNpc_Knj_Param_c */
SECTION_RODATA u8 const daNpc_Knj_Param_c::m[140] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x45, 0x7A, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A45510, &daNpc_Knj_Param_c::m);

/* 80A43608-80A43848 000188 0240+00 1/1 0/0 0/0 .text            create__11daNpc_Knj_cFv */
void daNpc_Knj_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A4559C-80A455A0 00008C 0004+00 4/6 0/0 0/0 .rodata          @4089 */
SECTION_RODATA static u8 const lit_4089[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A4559C, &lit_4089);

/* 80A455A0-80A455A4 000090 0004+00 0/2 0/0 0/0 .rodata          @4090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4090 = 65536.0f;
COMPILER_STRIP_GATE(0x80A455A0, &lit_4090);
#pragma pop

/* 80A455A4-80A455A8 000094 0004+00 0/2 0/0 0/0 .rodata          @4091 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4091 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A455A4, &lit_4091);
#pragma pop

/* 80A455A8-80A455B0 000098 0004+04 2/2 0/0 0/0 .rodata          @4215 */
SECTION_RODATA static f32 const lit_4215[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80A455A8, &lit_4215);

/* 80A43848-80A439A0 0003C8 0158+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_Knj_cFv */
void daNpc_Knj_c::CreateHeap() {
    // NONMATCHING
}

/* 80A439A0-80A439D4 000520 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_Knj_cFv */
void daNpc_Knj_c::Delete() {
    // NONMATCHING
}

/* 80A439D4-80A439F4 000554 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_Knj_cFv */
void daNpc_Knj_c::Execute() {
    // NONMATCHING
}

/* 80A439F4-80A43A88 000574 0094+00 1/1 0/0 0/0 .text            Draw__11daNpc_Knj_cFv */
void daNpc_Knj_c::Draw() {
    // NONMATCHING
}

/* 80A43A88-80A43AA8 000608 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_Knj_cFP10fopAc_ac_c              */
void daNpc_Knj_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A43AA8-80A43B1C 000628 0074+00 1/1 0/0 0/0 .text            getType__11daNpc_Knj_cFv */
void daNpc_Knj_c::getType() {
    // NONMATCHING
}

/* 80A43B1C-80A43B38 00069C 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__11daNpc_Knj_cFv */
void daNpc_Knj_c::getFlowNodeNo() {
    // NONMATCHING
}

/* 80A43B38-80A43B40 0006B8 0008+00 1/1 0/0 0/0 .text            isDelete__11daNpc_Knj_cFv */
bool daNpc_Knj_c::isDelete() {
    return false;
}

/* 80A43B40-80A43C64 0006C0 0124+00 1/1 0/0 0/0 .text            reset__11daNpc_Knj_cFv */
void daNpc_Knj_c::reset() {
    // NONMATCHING
}

/* 80A43C64-80A43D58 0007E4 00F4+00 1/0 0/0 0/0 .text            setParam__11daNpc_Knj_cFv */
void daNpc_Knj_c::setParam() {
    // NONMATCHING
}

/* 80A43D58-80A43D5C 0008D8 0004+00 1/1 0/0 0/0 .text            srchActors__11daNpc_Knj_cFv */
void daNpc_Knj_c::srchActors() {
    /* empty function */
}

/* 80A43D5C-80A43E5C 0008DC 0100+00 1/0 0/0 0/0 .text            evtTalk__11daNpc_Knj_cFv */
void daNpc_Knj_c::evtTalk() {
    // NONMATCHING
}

/* 80A43E5C-80A43F24 0009DC 00C8+00 1/0 0/0 0/0 .text            evtCutProc__11daNpc_Knj_cFv */
void daNpc_Knj_c::evtCutProc() {
    // NONMATCHING
}

/* 80A43F24-80A43FAC 000AA4 0088+00 1/0 0/0 0/0 .text            action__11daNpc_Knj_cFv */
void daNpc_Knj_c::action() {
    // NONMATCHING
}

/* 80A43FAC-80A44024 000B2C 0078+00 1/0 0/0 0/0 .text            beforeMove__11daNpc_Knj_cFv */
void daNpc_Knj_c::beforeMove() {
    // NONMATCHING
}

/* 80A44024-80A44080 000BA4 005C+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_Knj_cFv */
void daNpc_Knj_c::setAttnPos() {
    // NONMATCHING
}

/* 80A44080-80A44088 000C00 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_Knj_cFv */
bool daNpc_Knj_c::drawDbgInfo() {
    return false;
}

/* ############################################################################################## */
/* 80A455B0-80A455B8 0000A0 0008+00 1/1 0/0 0/0 .rodata          @4453 */
SECTION_RODATA static u8 const lit_4453[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A455B0, &lit_4453);

/* 80A44088-80A44264 000C08 01DC+00 1/0 0/0 0/0 .text afterSetMotionAnm__11daNpc_Knj_cFiifi */
void daNpc_Knj_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    // NONMATCHING
}

/* 80A44264-80A442D0 000DE4 006C+00 1/0 0/0 0/0 .text            drawGhost__11daNpc_Knj_cFv */
void daNpc_Knj_c::drawGhost() {
    // NONMATCHING
}

/* 80A442D0-80A44318 000E50 0048+00 1/1 0/0 0/0 .text            selectAction__11daNpc_Knj_cFv */
void daNpc_Knj_c::selectAction() {
    // NONMATCHING
}

/* 80A44318-80A44344 000E98 002C+00 1/1 0/0 0/0 .text
 * chkAction__11daNpc_Knj_cFM11daNpc_Knj_cFPCvPvPv_i            */
void daNpc_Knj_c::chkAction(int (daNpc_Knj_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A44344-80A443EC 000EC4 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_Knj_cFM11daNpc_Knj_cFPCvPvPv_i            */
void daNpc_Knj_c::setAction(int (daNpc_Knj_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A455B8-80A455BC 0000A8 0004+00 1/1 0/0 0/0 .rodata          @4529 */
SECTION_RODATA static f32 const lit_4529 = -1.0f;
COMPILER_STRIP_GATE(0x80A455B8, &lit_4529);

/* 80A443EC-80A44598 000F6C 01AC+00 1/0 0/0 0/0 .text            wait__11daNpc_Knj_cFPv */
void daNpc_Knj_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80A44598-80A446FC 001118 0164+00 2/0 0/0 0/0 .text            talk__11daNpc_Knj_cFPv */
void daNpc_Knj_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80A446FC-80A4471C 00127C 0020+00 1/0 0/0 0/0 .text            daNpc_Knj_Create__FPv */
static void daNpc_Knj_Create(void* param_0) {
    // NONMATCHING
}

/* 80A4471C-80A4473C 00129C 0020+00 1/0 0/0 0/0 .text            daNpc_Knj_Delete__FPv */
static void daNpc_Knj_Delete(void* param_0) {
    // NONMATCHING
}

/* 80A4473C-80A4475C 0012BC 0020+00 1/0 0/0 0/0 .text            daNpc_Knj_Execute__FPv */
static void daNpc_Knj_Execute(void* param_0) {
    // NONMATCHING
}

/* 80A4475C-80A4477C 0012DC 0020+00 1/0 0/0 0/0 .text            daNpc_Knj_Draw__FPv */
static void daNpc_Knj_Draw(void* param_0) {
    // NONMATCHING
}

/* 80A4477C-80A44784 0012FC 0008+00 1/0 0/0 0/0 .text            daNpc_Knj_IsDelete__FPv */
static bool daNpc_Knj_IsDelete(void* param_0) {
    return true;
}

/* 80A44784-80A447CC 001304 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A447CC-80A44B54 00134C 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A44B54-80A44B90 0016D4 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80A44B90-80A44BCC 001710 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80A44BCC-80A44FD0 00174C 0404+00 1/1 0/0 0/0 .text
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

/* 80A44FD0-80A44FD4 001B50 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80A44FD4-80A450D0 001B54 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80A450D0-80A450D4 001C50 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80A450D4-80A4511C 001C54 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A4511C-80A45164 001C9C 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80A45164-80A451D4 001CE4 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80A451D4-80A45230 001D54 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A45230-80A452A0 001DB0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80A452A0-80A452E8 001E20 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80A452F0-80A452F4 001E70 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80A4532C-80A45334 001EAC 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A45334-80A4533C 001EB4 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A45348-80A45350 001EC8 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80A4535C-80A45364 001EDC 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80A45364-80A4537C 001EE4 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A4537C-80A45380 001EFC 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80A45380-80A45388 001F00 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A45388-80A453B8 001F08 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80A453B8-80A453E8 001F38 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80A453E8-80A453EC 001F68 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A453EC-80A453F0 001F6C 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A453F0-80A453F4 001F70 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A453F4-80A453F8 001F74 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 80A4587C-80A45888 0002AC 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_Knj_Param_c */
SECTION_DATA extern void* __vt__17daNpc_Knj_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_Knj_Param_cFv,
};

/* 80A45890-80A4589C 000008 000C+00 1/1 0/0 0/0 .bss             @3814 */
static u8 lit_3814[12];

/* 80A4589C-80A458A0 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A453F8-80A45460 001F78 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_knj_cpp */
void __sinit_d_a_npc_knj_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A453F8, __sinit_d_a_npc_knj_cpp);
#pragma pop

/* 80A45460-80A454A4 001FE0 0044+00 1/1 0/0 0/0 .text
 * __ct__11daNpc_Knj_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Knj_c::daNpc_Knj_c(daNpcT_faceMotionAnmData_c const* param_0,
                             daNpcT_motionAnmData_c const* param_1,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
                             daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80A454A4-80A454EC 002024 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_Knj_Param_cFv */
daNpc_Knj_Param_c::~daNpc_Knj_Param_c() {
    // NONMATCHING
}

/* 80A454EC-80A454F4 00206C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80A454EC() {
    // NONMATCHING
}

/* 80A454F4-80A454FC 002074 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80A454F4() {
    // NONMATCHING
}

/* 80A455BC-80A455BC 0000AC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
