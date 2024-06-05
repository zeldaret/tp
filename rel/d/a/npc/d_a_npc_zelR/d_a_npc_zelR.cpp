/**
 * @file d_a_npc_zelR.cpp
 * 
*/

#include "rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__12daNpc_ZelR_cFv();
extern "C" void create__12daNpc_ZelR_cFv();
extern "C" void CreateHeap__12daNpc_ZelR_cFv();
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
extern "C" void Delete__12daNpc_ZelR_cFv();
extern "C" void Execute__12daNpc_ZelR_cFv();
extern "C" void Draw__12daNpc_ZelR_cFv();
extern "C" void createHeapCallBack__12daNpc_ZelR_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__12daNpc_ZelR_cFP8J3DJointi();
extern "C" void getType__12daNpc_ZelR_cFv();
extern "C" void getFlowNodeNo__12daNpc_ZelR_cFv();
extern "C" void getPath__12daNpc_ZelR_cFv();
extern "C" void isDelete__12daNpc_ZelR_cFv();
extern "C" void reset__12daNpc_ZelR_cFv();
extern "C" void afterJntAnm__12daNpc_ZelR_cFi();
extern "C" void ctrlBtk__12daNpc_ZelR_cFv();
extern "C" void setParam__12daNpc_ZelR_cFv();
extern "C" void setAfterTalkMotion__12daNpc_ZelR_cFv();
extern "C" void srchActors__12daNpc_ZelR_cFv();
extern "C" void evtTalk__12daNpc_ZelR_cFv();
extern "C" void evtCutProc__12daNpc_ZelR_cFv();
extern "C" void action__12daNpc_ZelR_cFv();
extern "C" void beforeMove__12daNpc_ZelR_cFv();
extern "C" void setAttnPos__12daNpc_ZelR_cFv();
extern "C" void setCollision__12daNpc_ZelR_cFv();
extern "C" bool drawDbgInfo__12daNpc_ZelR_cFv();
extern "C" void selectAction__12daNpc_ZelR_cFv();
extern "C" void chkAction__12daNpc_ZelR_cFM12daNpc_ZelR_cFPCvPvPv_i();
extern "C" void setAction__12daNpc_ZelR_cFM12daNpc_ZelR_cFPCvPvPv_i();
extern "C" void wait__12daNpc_ZelR_cFPv();
extern "C" void talk__12daNpc_ZelR_cFPv();
extern "C" static void daNpc_ZelR_Create__FPv();
extern "C" static void daNpc_ZelR_Delete__FPv();
extern "C" static void daNpc_ZelR_Execute__FPv();
extern "C" static void daNpc_ZelR_Draw__FPv();
extern "C" static bool daNpc_ZelR_IsDelete__FPv();
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
extern "C" s32 getNeckJointNo__8daNpcT_cFv();
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
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void __sinit_d_a_npc_zelR_cpp();
extern "C" void
__ct__12daNpc_ZelR_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" s32 getEyeballRMaterialNo__12daNpc_ZelR_cFv();
extern "C" s32 getEyeballLMaterialNo__12daNpc_ZelR_cFv();
extern "C" s32 getHeadJointNo__12daNpc_ZelR_cFv();
extern "C" bool getBackboneJointNo__12daNpc_ZelR_cFv();
extern "C" void checkChangeJoint__12daNpc_ZelR_cFi();
extern "C" void checkRemoveJoint__12daNpc_ZelR_cFi();
extern "C" void __dt__18daNpc_ZelR_Param_cFv();
extern "C" static void func_80B71ABC();
extern "C" static void func_80B71AC4();
extern "C" u8 const m__18daNpc_ZelR_Param_c[140];
extern "C" extern char const* const d_a_npc_zelR__stringBase0;
extern "C" void* mCutNameList__12daNpc_ZelR_c;
extern "C" u8 mCutList__12daNpc_ZelR_c[12];

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
/* 80B71BC0-80B71BC0 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B71BC0 = "";
SECTION_DEAD static char const* const stringBase_80B71BC1 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80B71BCD = "zelRf";
#pragma pop

/* 80B71BD8-80B71BE4 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B71BE4-80B71BF8 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80B71BF8-80B71C00 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x01,
};

/* 80B71C00-80B71C10 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[4] = {
    (void*)&d_a_npc_zelR__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_zelR__stringBase0) + 0x1),
    (void*)NULL,
};
#pragma pop

/* 80B71C10-80B71C18 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_npc_zelR__stringBase0,
    (void*)(((char*)&d_a_npc_zelR__stringBase0) + 0xD),
};

/* 80B71C18-80B71C1C 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80B71C1C-80B71C24 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[2] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
};

/* 80B71C24-80B71C5C 00004C 0038+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[56] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 80B71C5C-80B71C78 000084 001C+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[28] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80B71C78-80B71C98 0000A0 0020+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[32] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B71C98-80B71CA8 0000C0 0010+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[16] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B71CA8-80B71CAC -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_ZelR_c */
SECTION_DATA void* daNpc_ZelR_c::mCutNameList = (void*)&d_a_npc_zelR__stringBase0;

/* 80B71CAC-80B71CB8 0000D4 000C+00 2/2 0/0 0/0 .data            mCutList__12daNpc_ZelR_c */
SECTION_DATA u8 daNpc_ZelR_c::mCutList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B71CB8-80B71CC4 -00001 000C+00 1/1 0/0 0/0 .data            @4609 */
SECTION_DATA static void* lit_4609[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_ZelR_cFPv,
};

/* 80B71CC4-80B71CD0 -00001 000C+00 1/1 0/0 0/0 .data            @4619 */
SECTION_DATA static void* lit_4619[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_ZelR_cFPv,
};

/* 80B71CD0-80B71CDC -00001 000C+00 1/1 0/0 0/0 .data            @4842 */
SECTION_DATA static void* lit_4842[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_ZelR_cFPv,
};

/* 80B71CDC-80B71CFC -00001 0020+00 1/0 0/0 0/0 .data            daNpc_ZelR_MethodTable */
static actor_method_class daNpc_ZelR_MethodTable = {
    (process_method_func)daNpc_ZelR_Create__FPv,
    (process_method_func)daNpc_ZelR_Delete__FPv,
    (process_method_func)daNpc_ZelR_Execute__FPv,
    (process_method_func)daNpc_ZelR_IsDelete__FPv,
    (process_method_func)daNpc_ZelR_Draw__FPv,
};

/* 80B71CFC-80B71D2C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_ZELR */
extern actor_process_profile_definition g_profile_NPC_ZELR = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_ZELR,           // mProcName
  &g_fpcLf_Method.mBase,   // sub_method
  sizeof(daNpc_ZelR_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  385,                     // mPriority
  &daNpc_ZelR_MethodTable, // sub_method
  0x00044108,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80B71D2C-80B71D38 000154 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80B71D38-80B71D44 000160 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B71D44-80B71D68 00016C 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B71AC4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B71ABC,
};

/* 80B71D68-80B71D74 000190 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B71D74-80B71D80 00019C 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B71D80-80B71D8C 0001A8 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B71D8C-80B71D98 0001B4 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80B71D98-80B71DA4 0001C0 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80B71DA4-80B71DB0 0001CC 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80B71DB0-80B71DBC 0001D8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B71DBC-80B71DC8 0001E4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B71DC8-80B71DD4 0001F0 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80B71DD4-80B71E98 0001FC 00C4+00 2/2 0/0 0/0 .data            __vt__12daNpc_ZelR_c */
SECTION_DATA extern void* __vt__12daNpc_ZelR_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daNpc_ZelR_cFv,
    (void*)ctrlBtk__12daNpc_ZelR_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__12daNpc_ZelR_cFi,
    (void*)checkRemoveJoint__12daNpc_ZelR_cFi,
    (void*)getBackboneJointNo__12daNpc_ZelR_cFv,
    (void*)getNeckJointNo__8daNpcT_cFv,
    (void*)getHeadJointNo__12daNpc_ZelR_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__12daNpc_ZelR_cFv,
    (void*)getEyeballRMaterialNo__12daNpc_ZelR_cFv,
    (void*)getEyeballMaterialNo__8daNpcT_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__12daNpc_ZelR_cFi,
    (void*)setParam__12daNpc_ZelR_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__12daNpc_ZelR_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__12daNpc_ZelR_cFv,
    (void*)setAfterTalkMotion__12daNpc_ZelR_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__12daNpc_ZelR_cFv,
    (void*)beforeMove__12daNpc_ZelR_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__12daNpc_ZelR_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__12daNpc_ZelR_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__12daNpc_ZelR_cFv,
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

/* 80B6EE2C-80B6EF64 0000EC 0138+00 1/0 0/0 0/0 .text            __dt__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_ZelR_c::~daNpc_ZelR_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B71AE0-80B71B6C 000000 008C+00 6/6 0/0 0/0 .rodata          m__18daNpc_ZelR_Param_c */
SECTION_RODATA u8 const daNpc_ZelR_Param_c::m[140] = {
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
COMPILER_STRIP_GATE(0x80B71AE0, &daNpc_ZelR_Param_c::m);

/* 80B71B6C-80B71B70 00008C 0004+00 0/1 0/0 0/0 .rodata          @4018 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4018 = -300.0f;
COMPILER_STRIP_GATE(0x80B71B6C, &lit_4018);
#pragma pop

/* 80B71B70-80B71B74 000090 0004+00 0/1 0/0 0/0 .rodata          @4019 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4019 = -50.0f;
COMPILER_STRIP_GATE(0x80B71B70, &lit_4019);
#pragma pop

/* 80B71B74-80B71B78 000094 0004+00 0/1 0/0 0/0 .rodata          @4020 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4020 = 300.0f;
COMPILER_STRIP_GATE(0x80B71B74, &lit_4020);
#pragma pop

/* 80B71B78-80B71B7C 000098 0004+00 0/1 0/0 0/0 .rodata          @4021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4021 = 450.0f;
COMPILER_STRIP_GATE(0x80B71B78, &lit_4021);
#pragma pop

/* 80B6EF64-80B6F1F8 000224 0294+00 1/1 0/0 0/0 .text            create__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::create() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/create__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B71B7C-80B71B80 00009C 0004+00 4/8 0/0 0/0 .rodata          @4182 */
SECTION_RODATA static u8 const lit_4182[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B71B7C, &lit_4182);

/* 80B71B80-80B71B84 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4183 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4183 = 65536.0f;
COMPILER_STRIP_GATE(0x80B71B80, &lit_4183);
#pragma pop

/* 80B71B84-80B71B88 0000A4 0004+00 1/4 0/0 0/0 .rodata          @4184 */
SECTION_RODATA static f32 const lit_4184 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B71B84, &lit_4184);

/* 80B71B88-80B71B8C 0000A8 0004+00 2/4 0/0 0/0 .rodata          @4339 */
SECTION_RODATA static f32 const lit_4339 = 1.0f;
COMPILER_STRIP_GATE(0x80B71B88, &lit_4339);

/* 80B6F1F8-80B6F4A8 0004B8 02B0+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/CreateHeap__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* 80B6F4A8-80B6F4E4 000768 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" asm void __dt__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80B6F4E4-80B6F4FC 0007A4 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" asm void __ct__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__ct__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80B6F4FC-80B6F538 0007BC 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" asm void __dt__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 80B6F538-80B6F550 0007F8 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::J3DTevColorAnm() {
extern "C" asm void __ct__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__ct__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 80B6F550-80B6F598 000810 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" asm void __dt__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80B6F598-80B6F5BC 000858 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::J3DTexNoAnm() {
extern "C" asm void __ct__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__ct__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80B6F5BC-80B6F5F8 00087C 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" asm void __dt__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80B6F5F8-80B6F610 0008B8 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" asm void __ct__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__ct__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80B6F610-80B6F64C 0008D0 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" asm void __dt__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 80B6F64C-80B6F664 00090C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::J3DMatColorAnm() {
extern "C" asm void __ct__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__ct__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 80B6F664-80B6F698 000924 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::Delete() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/Delete__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* 80B6F698-80B6F6B8 000958 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::Execute() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/Execute__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B71B8C-80B71B90 0000AC 0004+00 1/1 0/0 0/0 .rodata          @4399 */
SECTION_RODATA static f32 const lit_4399 = 100.0f;
COMPILER_STRIP_GATE(0x80B71B8C, &lit_4399);

/* 80B6F6B8-80B6F77C 000978 00C4+00 1/1 0/0 0/0 .text            Draw__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::Draw() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/Draw__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* 80B6F77C-80B6F79C 000A3C 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpc_ZelR_cFP10fopAc_ac_c             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::createHeapCallBack(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/createHeapCallBack__12daNpc_ZelR_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80B6F79C-80B6F7F4 000A5C 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__12daNpc_ZelR_cFP8J3DJointi                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/ctrlJointCallBack__12daNpc_ZelR_cFP8J3DJointi.s"
}
#pragma pop

/* 80B6F7F4-80B6F814 000AB4 0020+00 1/1 0/0 0/0 .text            getType__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::getType() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/getType__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* 80B6F814-80B6F830 000AD4 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::getFlowNodeNo() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/getFlowNodeNo__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* 80B6F830-80B6F83C 000AF0 000C+00 1/1 0/0 0/0 .text            getPath__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::getPath() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/getPath__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* 80B6F83C-80B6F894 000AFC 0058+00 1/1 0/0 0/0 .text            isDelete__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::isDelete() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/isDelete__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* 80B6F894-80B6FA10 000B54 017C+00 1/1 0/0 0/0 .text            reset__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::reset() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/reset__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* 80B6FA10-80B6FA9C 000CD0 008C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_ZelR_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::afterJntAnm(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/afterJntAnm__12daNpc_ZelR_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B71B90-80B71B94 0000B0 0004+00 3/3 0/0 0/0 .rodata          @4557 */
SECTION_RODATA static f32 const lit_4557 = -1.0f;
COMPILER_STRIP_GATE(0x80B71B90, &lit_4557);

/* 80B6FA9C-80B6FBA8 000D5C 010C+00 1/0 0/0 0/0 .text            ctrlBtk__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::ctrlBtk() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/ctrlBtk__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* 80B6FBA8-80B6FC9C 000E68 00F4+00 1/0 0/0 0/0 .text            setParam__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::setParam() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/setParam__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* 80B6FC9C-80B6FCFC 000F5C 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::setAfterTalkMotion() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/setAfterTalkMotion__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* 80B6FCFC-80B6FD00 000FBC 0004+00 1/1 0/0 0/0 .text            srchActors__12daNpc_ZelR_cFv */
void daNpc_ZelR_c::srchActors() {
    /* empty function */
}

/* 80B6FD00-80B6FE00 000FC0 0100+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::evtTalk() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/evtTalk__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B71BC0-80B71BC0 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B71BD3 = "ZelR";
#pragma pop

/* 80B6FE00-80B6FEC8 0010C0 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::evtCutProc() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/evtCutProc__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* 80B6FEC8-80B70018 001188 0150+00 1/0 0/0 0/0 .text            action__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::action() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/action__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* 80B70018-80B70090 0012D8 0078+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::beforeMove() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/beforeMove__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B71B94-80B71B98 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4728 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4728 = 10.0f;
COMPILER_STRIP_GATE(0x80B71B94, &lit_4728);
#pragma pop

/* 80B71B98-80B71B9C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4729 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4729 = -30.0f;
COMPILER_STRIP_GATE(0x80B71B98, &lit_4729);
#pragma pop

/* 80B71B9C-80B71BA0 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4730 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4730 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80B71B9C, &lit_4730);
#pragma pop

/* 80B71BA0-80B71BA8 0000C0 0008+00 1/3 0/0 0/0 .rodata          @4732 */
SECTION_RODATA static u8 const lit_4732[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B71BA0, &lit_4732);

/* 80B70090-80B702B0 001350 0220+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::setAttnPos() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/setAttnPos__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* 80B702B0-80B703E0 001570 0130+00 1/0 0/0 0/0 .text            setCollision__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::setCollision() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/setCollision__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* 80B703E0-80B703E8 0016A0 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_ZelR_cFv */
bool daNpc_ZelR_c::drawDbgInfo() {
    return false;
}

/* 80B703E8-80B70430 0016A8 0048+00 1/1 0/0 0/0 .text            selectAction__12daNpc_ZelR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::selectAction() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/selectAction__12daNpc_ZelR_cFv.s"
}
#pragma pop

/* 80B70430-80B7045C 0016F0 002C+00 1/1 0/0 0/0 .text
 * chkAction__12daNpc_ZelR_cFM12daNpc_ZelR_cFPCvPvPv_i          */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::chkAction(int (daNpc_ZelR_c::*param_0)(void*)) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/chkAction__12daNpc_ZelR_cFM12daNpc_ZelR_cFPCvPvPv_i.s"
}
#pragma pop

/* 80B7045C-80B70504 00171C 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_ZelR_cFM12daNpc_ZelR_cFPCvPvPv_i          */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::setAction(int (daNpc_ZelR_c::*param_0)(void*)) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/setAction__12daNpc_ZelR_cFM12daNpc_ZelR_cFPCvPvPv_i.s"
}
#pragma pop

/* 80B70504-80B706B0 0017C4 01AC+00 1/0 0/0 0/0 .text            wait__12daNpc_ZelR_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::wait(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/wait__12daNpc_ZelR_cFPv.s"
}
#pragma pop

/* 80B706B0-80B70814 001970 0164+00 2/0 0/0 0/0 .text            talk__12daNpc_ZelR_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::talk(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/talk__12daNpc_ZelR_cFPv.s"
}
#pragma pop

/* 80B70814-80B70834 001AD4 0020+00 1/0 0/0 0/0 .text            daNpc_ZelR_Create__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_ZelR_Create(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/daNpc_ZelR_Create__FPv.s"
}
#pragma pop

/* 80B70834-80B70854 001AF4 0020+00 1/0 0/0 0/0 .text            daNpc_ZelR_Delete__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_ZelR_Delete(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/daNpc_ZelR_Delete__FPv.s"
}
#pragma pop

/* 80B70854-80B70874 001B14 0020+00 1/0 0/0 0/0 .text            daNpc_ZelR_Execute__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_ZelR_Execute(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/daNpc_ZelR_Execute__FPv.s"
}
#pragma pop

/* 80B70874-80B70894 001B34 0020+00 1/0 0/0 0/0 .text            daNpc_ZelR_Draw__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_ZelR_Draw(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/daNpc_ZelR_Draw__FPv.s"
}
#pragma pop

/* 80B70894-80B7089C 001B54 0008+00 1/0 0/0 0/0 .text            daNpc_ZelR_IsDelete__FPv */
static bool daNpc_ZelR_IsDelete(void* param_0) {
    return true;
}

/* 80B7089C-80B708CC 001B5C 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" asm void calc__11J3DTexNoAnmCFPUs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/calc__11J3DTexNoAnmCFPUs.s"
}
#pragma pop

/* 80B708CC-80B70914 001B8C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80B70914-80B70C9C 001BD4 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_c::~daNpcT_c() {
extern "C" asm void __dt__8daNpcT_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__8daNpcT_cFv.s"
}
#pragma pop

/* 80B70C9C-80B70CD8 001F5C 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__4cXyzFv.s"
}
#pragma pop

/* 80B70CD8-80B70D14 001F98 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__5csXyzFv.s"
}
#pragma pop

/* 80B70D14-80B70D5C 001FD4 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" asm void __dt__13daNpcT_Path_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__13daNpcT_Path_cFv.s"
}
#pragma pop

/* 80B70D5C-80B70DA4 00201C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80B70DA4-80B70DEC 002064 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80B70DEC-80B711F0 0020AC 0404+00 1/1 0/0 0/0 .text
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
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/func_80B70DEC.s"
}
#pragma pop

/* 80B711F0-80B711F4 0024B0 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" asm void __ct__5csXyzFv() {
    /* empty function */
}

/* 80B711F4-80B712F0 0024B4 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" asm void __dt__15daNpcT_JntAnm_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__15daNpcT_JntAnm_cFv.s"
}
#pragma pop

/* 80B712F0-80B712F4 0025B0 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" asm void __ct__4cXyzFv() {
    /* empty function */
}

/* 80B712F4-80B7133C 0025B4 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" asm void __dt__18daNpcT_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__18daNpcT_ActorMngr_cFv.s"
}
#pragma pop

/* 80B7133C-80B71384 0025FC 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" asm void __dt__22daNpcT_MotionSeqMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__22daNpcT_MotionSeqMngr_cFv.s"
}
#pragma pop

/* 80B71384-80B713F4 002644 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80B713F4-80B71450 0026B4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80B71450-80B714C0 002710 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80B714C0-80B71508 002780 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80B71508-80B71624 0027C8 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" asm void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B71BA8-80B71BB0 0000C8 0008+00 0/1 0/0 0/0 .rodata          @4790 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4790[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B71BA8, &lit_4790);
#pragma pop

/* 80B71BB0-80B71BB8 0000D0 0008+00 0/1 0/0 0/0 .rodata          @4791 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4791[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B71BB0, &lit_4791);
#pragma pop

/* 80B71BB8-80B71BC0 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4792 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4792[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B71BB8, &lit_4792);
#pragma pop

/* 80B71624-80B7182C 0028E4 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" asm void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs.s"
}
#pragma pop

/* 80B7182C-80B71834 002AEC 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__8daNpcT_cFv */
s32 daNpcT_c::getNeckJointNo() {
    return -1;
}

/* 80B71834-80B71838 002AF4 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" asm void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80B71838-80B71840 002AF8 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootLJointNo() {
    return -1;
}

/* 80B71840-80B71848 002B00 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootRJointNo() {
    return -1;
}

/* 80B71848-80B71850 002B08 0008+00 1/0 0/0 0/0 .text            getEyeballMaterialNo__8daNpcT_cFv
 */
bool daNpcT_c::getEyeballMaterialNo() {
    return false;
}

/* 80B71850-80B71858 002B10 0008+00 1/0 0/0 0/0 .text            checkChangeEvt__8daNpcT_cFv */
bool daNpcT_c::checkChangeEvt() {
    return false;
}

/* 80B71858-80B71860 002B18 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80B71860-80B71864 002B20 0004+00 1/0 0/0 0/0 .text            afterMoved__8daNpcT_cFv */
void daNpcT_c::afterMoved() {
    /* empty function */
}

/* 80B71864-80B7186C 002B24 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80B7186C-80B71884 002B2C 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_c::decTmr() {
extern "C" asm void decTmr__8daNpcT_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/decTmr__8daNpcT_cFv.s"
}
#pragma pop

/* 80B71884-80B71888 002B44 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" asm void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80B71888-80B7188C 002B48 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" asm void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80B7188C-80B71894 002B4C 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B71894-80B7189C 002B54 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B7189C-80B718CC 002B5C 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" asm void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c.s"
}
#pragma pop

/* 80B718CC-80B718FC 002B8C 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" asm void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c.s"
}
#pragma pop

/* 80B718FC-80B71900 002BBC 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" asm void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B71900-80B71904 002BC0 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" asm void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B71904-80B71908 002BC4 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" asm void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B71908-80B7190C 002BC8 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" asm void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 80B71E98-80B71EA4 0002C0 000C+00 2/2 0/0 0/0 .data            __vt__18daNpc_ZelR_Param_c */
SECTION_DATA extern void* __vt__18daNpc_ZelR_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_ZelR_Param_cFv,
};

/* 80B71EB0-80B71EBC 000008 000C+00 1/1 0/0 0/0 .bss             @3811 */
static u8 lit_3811[12];

/* 80B71EBC-80B71EC0 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80B7190C-80B71974 002BCC 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_zelR_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_npc_zelR_cpp() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__sinit_d_a_npc_zelR_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80B7190C, __sinit_d_a_npc_zelR_cpp);
#pragma pop

/* 80B71974-80B71A34 002C34 00C0+00 1/1 0/0 0/0 .text
 * __ct__12daNpc_ZelR_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_ZelR_c::daNpc_ZelR_c(daNpcT_faceMotionAnmData_c const* param_0,
                               daNpcT_motionAnmData_c const* param_1,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                               int param_3,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                               int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/func_80B71974.s"
}
#pragma pop

/* 80B71A34-80B71A3C 002CF4 0008+00 1/0 0/0 0/0 .text getEyeballRMaterialNo__12daNpc_ZelR_cFv */
s32 daNpc_ZelR_c::getEyeballRMaterialNo() {
    return 3;
}

/* 80B71A3C-80B71A44 002CFC 0008+00 1/0 0/0 0/0 .text getEyeballLMaterialNo__12daNpc_ZelR_cFv */
s32 daNpc_ZelR_c::getEyeballLMaterialNo() {
    return 2;
}

/* 80B71A44-80B71A4C 002D04 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__12daNpc_ZelR_cFv */
s32 daNpc_ZelR_c::getHeadJointNo() {
    return 3;
}

/* 80B71A4C-80B71A54 002D0C 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__12daNpc_ZelR_cFv */
bool daNpc_ZelR_c::getBackboneJointNo() {
    return true;
}

/* 80B71A54-80B71A64 002D14 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__12daNpc_ZelR_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::checkChangeJoint(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/checkChangeJoint__12daNpc_ZelR_cFi.s"
}
#pragma pop

/* 80B71A64-80B71A74 002D24 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__12daNpc_ZelR_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_ZelR_c::checkRemoveJoint(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/checkRemoveJoint__12daNpc_ZelR_cFi.s"
}
#pragma pop

/* 80B71A74-80B71ABC 002D34 0048+00 2/1 0/0 0/0 .text            __dt__18daNpc_ZelR_Param_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_ZelR_Param_c::~daNpc_ZelR_Param_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/__dt__18daNpc_ZelR_Param_cFv.s"
}
#pragma pop

/* 80B71ABC-80B71AC4 002D7C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80B71ABC() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/func_80B71ABC.s"
}
#pragma pop

/* 80B71AC4-80B71ACC 002D84 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80B71AC4() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelR/d_a_npc_zelR/func_80B71AC4.s"
}
#pragma pop

/* 80B71BC0-80B71BC0 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
