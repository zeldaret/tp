/**
 * @file d_a_npc_sola.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_sola.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__12daNpc_solA_cFv();
extern "C" void create__12daNpc_solA_cFv();
extern "C" void CreateHeap__12daNpc_solA_cFv();
extern "C" void Delete__12daNpc_solA_cFv();
extern "C" void Execute__12daNpc_solA_cFv();
extern "C" void Draw__12daNpc_solA_cFv();
extern "C" void createHeapCallBack__12daNpc_solA_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__12daNpc_solA_cFP8J3DJointi();
extern "C" bool getType__12daNpc_solA_cFv();
extern "C" void getFlowNodeNo__12daNpc_solA_cFv();
extern "C" void isDelete__12daNpc_solA_cFv();
extern "C" void reset__12daNpc_solA_cFv();
extern "C" void setParam__12daNpc_solA_cFv();
extern "C" void setAfterTalkMotion__12daNpc_solA_cFv();
extern "C" void srchActors__12daNpc_solA_cFv();
extern "C" void evtTalk__12daNpc_solA_cFv();
extern "C" void evtCutProc__12daNpc_solA_cFv();
extern "C" void action__12daNpc_solA_cFv();
extern "C" void beforeMove__12daNpc_solA_cFv();
extern "C" void setAttnPos__12daNpc_solA_cFv();
extern "C" void setCollision__12daNpc_solA_cFv();
extern "C" bool drawDbgInfo__12daNpc_solA_cFv();
extern "C" void drawOtherMdl__12daNpc_solA_cFv();
extern "C" void selectAction__12daNpc_solA_cFv();
extern "C" void chkAction__12daNpc_solA_cFM12daNpc_solA_cFPCvPvPv_i();
extern "C" void setAction__12daNpc_solA_cFM12daNpc_solA_cFPCvPvPv_i();
extern "C" void wait__12daNpc_solA_cFPv();
extern "C" void talk__12daNpc_solA_cFPv();
extern "C" static void daNpc_solA_Create__FPv();
extern "C" static void daNpc_solA_Delete__FPv();
extern "C" static void daNpc_solA_Execute__FPv();
extern "C" static void daNpc_solA_Draw__FPv();
extern "C" static bool daNpc_solA_IsDelete__FPv();
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
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs();
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs();
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi();
extern "C" bool checkChangeJoint__8daNpcT_cFi();
extern "C" bool checkRemoveJoint__8daNpcT_cFi();
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" void afterJntAnm__8daNpcT_cFi();
extern "C" bool checkChangeEvt__8daNpcT_cFv();
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
extern "C" void __sinit_d_a_npc_sola_cpp();
extern "C" void
__ct__12daNpc_solA_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" s32 getHeadJointNo__12daNpc_solA_cFv();
extern "C" s32 getNeckJointNo__12daNpc_solA_cFv();
extern "C" bool getBackboneJointNo__12daNpc_solA_cFv();
extern "C" void __dt__18daNpc_solA_Param_cFv();
extern "C" static void func_80AEF0DC();
extern "C" static void func_80AEF0E4();
extern "C" u8 const m__18daNpc_solA_Param_c[140];
extern "C" extern char const* const d_a_npc_sola__stringBase0;
extern "C" void* mCutNameList__12daNpc_solA_c;
extern "C" u8 mCutList__12daNpc_solA_c[12];

//
// External References:
//

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
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz();
extern "C" void calcJntRad__15daNpcT_JntAnm_cFfff();
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
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80AEF1E0-80AEF1E0 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AEF1E0 = "";
SECTION_DEAD static char const* const stringBase_80AEF1E1 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80AEF1ED = "solA";
#pragma pop

/* 80AEF214-80AEF21C 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x01,
};

/* 80AEF21C-80AEF22C -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[4] = {
    (void*)&d_a_npc_sola__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_sola__stringBase0) + 0x1),
    (void*)NULL,
};
#pragma pop

/* 80AEF22C-80AEF234 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_npc_sola__stringBase0,
    (void*)(((char*)&d_a_npc_sola__stringBase0) + 0xD),
};

/* 80AEF234-80AEF238 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80AEF238-80AEF23C -00001 0004+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList = (void*)&l_loadResPtrn0;

/* 80AEF23C-80AEF258 000048 001C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[28] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF,
    0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80AEF258-80AEF274 000064 001C+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[28] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF,
    0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80AEF274-80AEF284 000080 0010+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[16] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80AEF284-80AEF294 000090 0010+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[16] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80AEF294-80AEF298 -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_solA_c */
SECTION_DATA void* daNpc_solA_c::mCutNameList = (void*)&d_a_npc_sola__stringBase0;

/* 80AEF298-80AEF2A4 0000A4 000C+00 2/2 0/0 0/0 .data            mCutList__12daNpc_solA_c */
SECTION_DATA u8 daNpc_solA_c::mCutList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AEF2A4-80AEF2B0 -00001 000C+00 1/1 0/0 0/0 .data            @4578 */
SECTION_DATA static void* lit_4578[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_solA_cFPv,
};

/* 80AEF2B0-80AEF2BC -00001 000C+00 1/1 0/0 0/0 .data            @4588 */
SECTION_DATA static void* lit_4588[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_solA_cFPv,
};

/* 80AEF2BC-80AEF2C8 -00001 000C+00 1/1 0/0 0/0 .data            @4786 */
SECTION_DATA static void* lit_4786[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_solA_cFPv,
};

/* 80AEF2C8-80AEF2E8 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_solA_MethodTable */
static actor_method_class daNpc_solA_MethodTable = {
    (process_method_func)daNpc_solA_Create__FPv,
    (process_method_func)daNpc_solA_Delete__FPv,
    (process_method_func)daNpc_solA_Execute__FPv,
    (process_method_func)daNpc_solA_IsDelete__FPv,
    (process_method_func)daNpc_solA_Draw__FPv,
};

/* 80AEF2E8-80AEF318 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SOLA */
extern actor_process_profile_definition g_profile_NPC_SOLA = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_SOLA,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpc_solA_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  366,                     // mPriority
  &daNpc_solA_MethodTable, // sub_method
  0x00044107,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80AEF318-80AEF324 000124 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AEF324-80AEF348 000130 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AEF0E4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AEF0DC,
};

/* 80AEF348-80AEF354 000154 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AEF354-80AEF360 000160 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AEF360-80AEF36C 00016C 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AEF36C-80AEF378 000178 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80AEF378-80AEF384 000184 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80AEF384-80AEF390 000190 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80AEF390-80AEF39C 00019C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AEF39C-80AEF3A8 0001A8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80AEF3A8-80AEF46C 0001B4 00C4+00 2/2 0/0 0/0 .data            __vt__12daNpc_solA_c */
SECTION_DATA extern void* __vt__12daNpc_solA_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daNpc_solA_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__8daNpcT_cFi,
    (void*)checkRemoveJoint__8daNpcT_cFi,
    (void*)getBackboneJointNo__12daNpc_solA_cFv,
    (void*)getNeckJointNo__12daNpc_solA_cFv,
    (void*)getHeadJointNo__12daNpc_solA_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__8daNpcT_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__8daNpcT_cFi,
    (void*)setParam__12daNpc_solA_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__12daNpc_solA_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__12daNpc_solA_cFv,
    (void*)setAfterTalkMotion__12daNpc_solA_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__12daNpc_solA_cFv,
    (void*)beforeMove__12daNpc_solA_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__12daNpc_solA_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__12daNpc_solA_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__12daNpc_solA_cFv,
    (void*)drawOtherMdl__12daNpc_solA_cFv,
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

/* 80AECBAC-80AECCD0 0000EC 0124+00 1/0 0/0 0/0 .text            __dt__12daNpc_solA_cFv */
daNpc_solA_c::~daNpc_solA_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AEF100-80AEF18C 000000 008C+00 8/8 0/0 0/0 .rodata          m__18daNpc_solA_Param_c */
SECTION_RODATA u8 const daNpc_solA_Param_c::m[140] = {
    0x43, 0x5C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEF100, &daNpc_solA_Param_c::m);

/* 80AEF18C-80AEF190 00008C 0004+00 0/1 0/0 0/0 .rodata          @4138 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4138 = -300.0f;
COMPILER_STRIP_GATE(0x80AEF18C, &lit_4138);
#pragma pop

/* 80AEF190-80AEF194 000090 0004+00 0/1 0/0 0/0 .rodata          @4139 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4139 = -50.0f;
COMPILER_STRIP_GATE(0x80AEF190, &lit_4139);
#pragma pop

/* 80AEF194-80AEF198 000094 0004+00 0/1 0/0 0/0 .rodata          @4140 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4140 = 300.0f;
COMPILER_STRIP_GATE(0x80AEF194, &lit_4140);
#pragma pop

/* 80AEF198-80AEF19C 000098 0004+00 0/1 0/0 0/0 .rodata          @4141 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4141 = 450.0f;
COMPILER_STRIP_GATE(0x80AEF198, &lit_4141);
#pragma pop

/* 80AECCD0-80AECF58 000210 0288+00 1/1 0/0 0/0 .text            create__12daNpc_solA_cFv */
void daNpc_solA_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AEF19C-80AEF1A0 00009C 0004+00 3/7 0/0 0/0 .rodata          @4295 */
SECTION_RODATA static u8 const lit_4295[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AEF19C, &lit_4295);

/* 80AEF1A0-80AEF1A4 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4296 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4296 = 65536.0f;
COMPILER_STRIP_GATE(0x80AEF1A0, &lit_4296);
#pragma pop

/* 80AEF1A4-80AEF1A8 0000A4 0004+00 0/3 0/0 0/0 .rodata          @4297 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4297 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AEF1A4, &lit_4297);
#pragma pop

/* 80AEF1A8-80AEF1AC 0000A8 0004+00 2/4 0/0 0/0 .rodata          @4436 */
SECTION_RODATA static f32 const lit_4436 = 1.0f;
COMPILER_STRIP_GATE(0x80AEF1A8, &lit_4436);

/* 80AECF58-80AED0F8 000498 01A0+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_solA_cFv */
void daNpc_solA_c::CreateHeap() {
    // NONMATCHING
}

/* 80AED0F8-80AED12C 000638 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_solA_cFv */
void daNpc_solA_c::Delete() {
    // NONMATCHING
}

/* 80AED12C-80AED14C 00066C 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_solA_cFv */
void daNpc_solA_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AEF1AC-80AEF1B0 0000AC 0004+00 1/1 0/0 0/0 .rodata          @4469 */
SECTION_RODATA static f32 const lit_4469 = 100.0f;
COMPILER_STRIP_GATE(0x80AEF1AC, &lit_4469);

/* 80AED14C-80AED1E8 00068C 009C+00 1/1 0/0 0/0 .text            Draw__12daNpc_solA_cFv */
void daNpc_solA_c::Draw() {
    // NONMATCHING
}

/* 80AED1E8-80AED208 000728 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpc_solA_cFP10fopAc_ac_c             */
void daNpc_solA_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80AED208-80AED260 000748 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__12daNpc_solA_cFP8J3DJointi                */
void daNpc_solA_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80AED260-80AED268 0007A0 0008+00 1/1 0/0 0/0 .text            getType__12daNpc_solA_cFv */
bool daNpc_solA_c::getType() {
    return false;
}

/* 80AED268-80AED284 0007A8 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__12daNpc_solA_cFv */
void daNpc_solA_c::getFlowNodeNo() {
    // NONMATCHING
}

/* 80AED284-80AED294 0007C4 0010+00 1/1 0/0 0/0 .text            isDelete__12daNpc_solA_cFv */
void daNpc_solA_c::isDelete() {
    // NONMATCHING
}

/* 80AED294-80AED3B8 0007D4 0124+00 1/1 0/0 0/0 .text            reset__12daNpc_solA_cFv */
void daNpc_solA_c::reset() {
    // NONMATCHING
}

/* 80AED3B8-80AED4A4 0008F8 00EC+00 1/0 0/0 0/0 .text            setParam__12daNpc_solA_cFv */
void daNpc_solA_c::setParam() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AEF1B0-80AEF1B4 0000B0 0004+00 2/2 0/0 0/0 .rodata          @4568 */
SECTION_RODATA static f32 const lit_4568 = -1.0f;
COMPILER_STRIP_GATE(0x80AEF1B0, &lit_4568);

/* 80AED4A4-80AED504 0009E4 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_solA_cFv */
void daNpc_solA_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80AED504-80AED508 000A44 0004+00 1/1 0/0 0/0 .text            srchActors__12daNpc_solA_cFv */
void daNpc_solA_c::srchActors() {
    /* empty function */
}

/* 80AED508-80AED608 000A48 0100+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_solA_cFv */
void daNpc_solA_c::evtTalk() {
    // NONMATCHING
}

/* 80AED608-80AED6D0 000B48 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_solA_cFv */
void daNpc_solA_c::evtCutProc() {
    // NONMATCHING
}

/* 80AED6D0-80AED758 000C10 0088+00 1/0 0/0 0/0 .text            action__12daNpc_solA_cFv */
void daNpc_solA_c::action() {
    // NONMATCHING
}

/* 80AED758-80AED7D0 000C98 0078+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_solA_cFv */
void daNpc_solA_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AEF1B4-80AEF1B8 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4683 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4683 = 30.0f;
COMPILER_STRIP_GATE(0x80AEF1B4, &lit_4683);
#pragma pop

/* 80AEF1B8-80AEF1C0 0000B8 0004+04 0/1 0/0 0/0 .rodata          @4684 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4684[1 + 1 /* padding */] = {
    0x38C90FDB,
    /* padding */
    0x00000000,
};
COMPILER_STRIP_GATE(0x80AEF1B8, &lit_4684);
#pragma pop

/* 80AEF1C0-80AEF1C8 0000C0 0008+00 1/3 0/0 0/0 .rodata          @4686 */
SECTION_RODATA static u8 const lit_4686[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEF1C0, &lit_4686);

/* 80AED7D0-80AED9DC 000D10 020C+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_solA_cFv */
void daNpc_solA_c::setAttnPos() {
    // NONMATCHING
}

/* 80AED9DC-80AEDABC 000F1C 00E0+00 1/0 0/0 0/0 .text            setCollision__12daNpc_solA_cFv */
void daNpc_solA_c::setCollision() {
    // NONMATCHING
}

/* 80AEDABC-80AEDAC4 000FFC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_solA_cFv */
bool daNpc_solA_c::drawDbgInfo() {
    return false;
}

/* 80AEDAC4-80AEDAC8 001004 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__12daNpc_solA_cFv */
void daNpc_solA_c::drawOtherMdl() {
    /* empty function */
}

/* 80AEDAC8-80AEDB10 001008 0048+00 1/1 0/0 0/0 .text            selectAction__12daNpc_solA_cFv */
void daNpc_solA_c::selectAction() {
    // NONMATCHING
}

/* 80AEDB10-80AEDB3C 001050 002C+00 1/1 0/0 0/0 .text
 * chkAction__12daNpc_solA_cFM12daNpc_solA_cFPCvPvPv_i          */
void daNpc_solA_c::chkAction(int (daNpc_solA_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80AEDB3C-80AEDBE4 00107C 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_solA_cFM12daNpc_solA_cFPCvPvPv_i          */
void daNpc_solA_c::setAction(int (daNpc_solA_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80AEDBE4-80AEDD60 001124 017C+00 1/0 0/0 0/0 .text            wait__12daNpc_solA_cFPv */
void daNpc_solA_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80AEDD60-80AEDED0 0012A0 0170+00 2/0 0/0 0/0 .text            talk__12daNpc_solA_cFPv */
void daNpc_solA_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80AEDED0-80AEDEF0 001410 0020+00 1/0 0/0 0/0 .text            daNpc_solA_Create__FPv */
static void daNpc_solA_Create(void* param_0) {
    // NONMATCHING
}

/* 80AEDEF0-80AEDF10 001430 0020+00 1/0 0/0 0/0 .text            daNpc_solA_Delete__FPv */
static void daNpc_solA_Delete(void* param_0) {
    // NONMATCHING
}

/* 80AEDF10-80AEDF30 001450 0020+00 1/0 0/0 0/0 .text            daNpc_solA_Execute__FPv */
static void daNpc_solA_Execute(void* param_0) {
    // NONMATCHING
}

/* 80AEDF30-80AEDF50 001470 0020+00 1/0 0/0 0/0 .text            daNpc_solA_Draw__FPv */
static void daNpc_solA_Draw(void* param_0) {
    // NONMATCHING
}

/* 80AEDF50-80AEDF58 001490 0008+00 1/0 0/0 0/0 .text            daNpc_solA_IsDelete__FPv */
static bool daNpc_solA_IsDelete(void* param_0) {
    return true;
}

/* 80AEDF58-80AEDFA0 001498 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AEDFA0-80AEE328 0014E0 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80AEE328-80AEE364 001868 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80AEE364-80AEE3A0 0018A4 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80AEE3A0-80AEE7A4 0018E0 0404+00 1/1 0/0 0/0 .text
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

/* 80AEE7A4-80AEE7A8 001CE4 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80AEE7A8-80AEE8A4 001CE8 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80AEE8A4-80AEE8A8 001DE4 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80AEE8A8-80AEE8F0 001DE8 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AEE8F0-80AEE938 001E30 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80AEE938-80AEE9A8 001E78 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80AEE9A8-80AEEA04 001EE8 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AEEA04-80AEEA74 001F44 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80AEEA74-80AEEABC 001FB4 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80AEEAC4-80AEEBE0 002004 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AEF1C8-80AEF1D0 0000C8 0008+00 0/1 0/0 0/0 .rodata          @4744 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4744[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEF1C8, &lit_4744);
#pragma pop

/* 80AEF1D0-80AEF1D8 0000D0 0008+00 0/1 0/0 0/0 .rodata          @4745 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4745[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEF1D0, &lit_4745);
#pragma pop

/* 80AEF1D8-80AEF1E0 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4746 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4746[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEF1D8, &lit_4746);
#pragma pop

/* 80AEEBE0-80AEEDE8 002120 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80AEEDE8-80AEEDEC 002328 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80AEEE0C-80AEEE14 00234C 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80AEEE14-80AEEE1C 002354 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80AEEE28-80AEEE30 002368 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80AEEE34-80AEEE3C 002374 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80AEEE3C-80AEEE54 00237C 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80AEEE54-80AEEE58 002394 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80AEEE58-80AEEE60 002398 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80AEEE60-80AEEE68 0023A0 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80AEEE68-80AEEE98 0023A8 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80AEEE98-80AEEEC8 0023D8 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80AEEEC8-80AEEECC 002408 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AEEECC-80AEEED0 00240C 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AEEED0-80AEEED4 002410 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AEEED4-80AEEED8 002414 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 80AEF46C-80AEF478 000278 000C+00 2/2 0/0 0/0 .data            __vt__18daNpc_solA_Param_c */
SECTION_DATA extern void* __vt__18daNpc_solA_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_solA_Param_cFv,
};

/* 80AEF480-80AEF48C 000008 000C+00 1/1 0/0 0/0 .bss             @3936 */
static u8 lit_3936[12];

/* 80AEF48C-80AEF490 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80AEEED8-80AEEF40 002418 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_sola_cpp */
void __sinit_d_a_npc_sola_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80AEEED8, __sinit_d_a_npc_sola_cpp);
#pragma pop

/* 80AEEF40-80AEEFEC 002480 00AC+00 1/1 0/0 0/0 .text
 * __ct__12daNpc_solA_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_solA_c::daNpc_solA_c(daNpcT_faceMotionAnmData_c const* param_0,
                               daNpcT_motionAnmData_c const* param_1,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                               int param_3,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                               int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80AEEFEC-80AEF034 00252C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80AEF034-80AEF07C 002574 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80AEF07C-80AEF084 0025BC 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__12daNpc_solA_cFv */
s32 daNpc_solA_c::getHeadJointNo() {
    return 4;
}

/* 80AEF084-80AEF08C 0025C4 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__12daNpc_solA_cFv */
s32 daNpc_solA_c::getNeckJointNo() {
    return 3;
}

/* 80AEF08C-80AEF094 0025CC 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__12daNpc_solA_cFv */
bool daNpc_solA_c::getBackboneJointNo() {
    return true;
}

/* 80AEF094-80AEF0DC 0025D4 0048+00 2/1 0/0 0/0 .text            __dt__18daNpc_solA_Param_cFv */
daNpc_solA_Param_c::~daNpc_solA_Param_c() {
    // NONMATCHING
}

/* 80AEF0DC-80AEF0E4 00261C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80AEF0DC() {
    // NONMATCHING
}

/* 80AEF0E4-80AEF0EC 002624 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80AEF0E4() {
    // NONMATCHING
}

/* 80AEF1E0-80AEF1E0 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
