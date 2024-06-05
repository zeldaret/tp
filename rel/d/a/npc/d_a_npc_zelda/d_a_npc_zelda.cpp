/**
 * @file d_a_npc_zelda.cpp
 * 
*/

#include "rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__13daNpc_Zelda_cFv();
extern "C" void create__13daNpc_Zelda_cFv();
extern "C" void CreateHeap__13daNpc_Zelda_cFv();
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
extern "C" void Delete__13daNpc_Zelda_cFv();
extern "C" void Execute__13daNpc_Zelda_cFv();
extern "C" void Draw__13daNpc_Zelda_cFv();
extern "C" void createHeapCallBack__13daNpc_Zelda_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__13daNpc_Zelda_cFP8J3DJointi();
extern "C" void getType__13daNpc_Zelda_cFv();
extern "C" bool isDelete__13daNpc_Zelda_cFv();
extern "C" void reset__13daNpc_Zelda_cFv();
extern "C" void afterJntAnm__13daNpc_Zelda_cFi();
extern "C" void ctrlBtk__13daNpc_Zelda_cFv();
extern "C" void checkChangeEvt__13daNpc_Zelda_cFv();
extern "C" void setParam__13daNpc_Zelda_cFv();
extern "C" void setAfterTalkMotion__13daNpc_Zelda_cFv();
extern "C" void srchActors__13daNpc_Zelda_cFv();
extern "C" void evtTalk__13daNpc_Zelda_cFv();
extern "C" void evtCutProc__13daNpc_Zelda_cFv();
extern "C" void action__13daNpc_Zelda_cFv();
extern "C" void beforeMove__13daNpc_Zelda_cFv();
extern "C" void setAttnPos__13daNpc_Zelda_cFv();
extern "C" void setCollision__13daNpc_Zelda_cFv();
extern "C" bool drawDbgInfo__13daNpc_Zelda_cFv();
extern "C" void selectAction__13daNpc_Zelda_cFv();
extern "C" void chkAction__13daNpc_Zelda_cFM13daNpc_Zelda_cFPCvPvPv_i();
extern "C" void setAction__13daNpc_Zelda_cFM13daNpc_Zelda_cFPCvPvPv_i();
extern "C" void wait__13daNpc_Zelda_cFPv();
extern "C" void talk__13daNpc_Zelda_cFPv();
extern "C" static void daNpc_Zelda_Create__FPv();
extern "C" static void daNpc_Zelda_Delete__FPv();
extern "C" static void daNpc_Zelda_Execute__FPv();
extern "C" static void daNpc_Zelda_Draw__FPv();
extern "C" static bool daNpc_Zelda_IsDelete__FPv();
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
extern "C" void __sinit_d_a_npc_zelda_cpp();
extern "C" void
__ct__13daNpc_Zelda_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" s32 getEyeballRMaterialNo__13daNpc_Zelda_cFv();
extern "C" s32 getEyeballLMaterialNo__13daNpc_Zelda_cFv();
extern "C" s32 getHeadJointNo__13daNpc_Zelda_cFv();
extern "C" s32 getNeckJointNo__13daNpc_Zelda_cFv();
extern "C" bool getBackboneJointNo__13daNpc_Zelda_cFv();
extern "C" void checkChangeJoint__13daNpc_Zelda_cFi();
extern "C" void checkRemoveJoint__13daNpc_Zelda_cFi();
extern "C" void __dt__19daNpc_Zelda_Param_cFv();
extern "C" static void func_80B77FA4();
extern "C" static void func_80B77FAC();
extern "C" u8 const m__19daNpc_Zelda_Param_c[140];
extern "C" extern char const* const d_a_npc_zelda__stringBase0;
extern "C" void* mCutNameList__13daNpc_Zelda_c;
extern "C" u8 mCutList__13daNpc_Zelda_c[12];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
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
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80B780C4-80B780C4 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B780C4 = "";
SECTION_DEAD static char const* const stringBase_80B780C5 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80B780D1 = "Zelda";
#pragma pop

/* 80B780D8-80B780E4 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B780E4-80B780F8 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80B780F8-80B78100 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01,
};

/* 80B78100-80B78110 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[4] = {
    (void*)&d_a_npc_zelda__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_zelda__stringBase0) + 0x1),
    (void*)NULL,
};
#pragma pop

/* 80B78110-80B78118 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_npc_zelda__stringBase0,
    (void*)(((char*)&d_a_npc_zelda__stringBase0) + 0xD),
};

/* 80B78118-80B7811C 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80B7811C-80B78124 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[2] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
};

/* 80B78124-80B78178 00004C 0054+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[84] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 80B78178-80B781B0 0000A0 0038+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[56] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80B781B0-80B781E0 0000D8 0030+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[48] = {
    0x00, 0x02, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B781E0-80B78200 000108 0020+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[32] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B78200-80B78204 -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__13daNpc_Zelda_c */
SECTION_DATA void* daNpc_Zelda_c::mCutNameList = (void*)&d_a_npc_zelda__stringBase0;

/* 80B78204-80B78210 00012C 000C+00 2/2 0/0 0/0 .data            mCutList__13daNpc_Zelda_c */
SECTION_DATA u8 daNpc_Zelda_c::mCutList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B78210-80B7821C -00001 000C+00 1/1 0/0 0/0 .data            @4555 */
SECTION_DATA static void* lit_4555[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Zelda_cFPv,
};

/* 80B7821C-80B78228 -00001 000C+00 1/1 0/0 0/0 .data            @4631 */
SECTION_DATA static void* lit_4631[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Zelda_cFPv,
};

/* 80B78228-80B78234 -00001 000C+00 1/1 0/0 0/0 .data            @4636 */
SECTION_DATA static void* lit_4636[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Zelda_cFPv,
};

/* 80B78234-80B78240 -00001 000C+00 1/1 0/0 0/0 .data            @4865 */
SECTION_DATA static void* lit_4865[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_Zelda_cFPv,
};

/* 80B78240-80B78260 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Zelda_MethodTable */
static actor_method_class daNpc_Zelda_MethodTable = {
    (process_method_func)daNpc_Zelda_Create__FPv,
    (process_method_func)daNpc_Zelda_Delete__FPv,
    (process_method_func)daNpc_Zelda_Execute__FPv,
    (process_method_func)daNpc_Zelda_IsDelete__FPv,
    (process_method_func)daNpc_Zelda_Draw__FPv,
};

/* 80B78260-80B78290 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_ZELDA */
extern actor_process_profile_definition g_profile_NPC_ZELDA = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_ZELDA,           // mProcName
  &g_fpcLf_Method.mBase,    // sub_method
  sizeof(daNpc_Zelda_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  384,                      // mPriority
  &daNpc_Zelda_MethodTable, // sub_method
  0x00040108,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80B78290-80B7829C 0001B8 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80B7829C-80B782A8 0001C4 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B782A8-80B782CC 0001D0 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B77FAC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B77FA4,
};

/* 80B782CC-80B782D8 0001F4 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B782D8-80B782E4 000200 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B782E4-80B782F0 00020C 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B782F0-80B782FC 000218 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80B782FC-80B78308 000224 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80B78308-80B78314 000230 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80B78314-80B78320 00023C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B78320-80B7832C 000248 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B7832C-80B783F0 000254 00C4+00 2/2 0/0 0/0 .data            __vt__13daNpc_Zelda_c */
SECTION_DATA extern void* __vt__13daNpc_Zelda_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpc_Zelda_cFv,
    (void*)ctrlBtk__13daNpc_Zelda_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__13daNpc_Zelda_cFi,
    (void*)checkRemoveJoint__13daNpc_Zelda_cFi,
    (void*)getBackboneJointNo__13daNpc_Zelda_cFv,
    (void*)getNeckJointNo__13daNpc_Zelda_cFv,
    (void*)getHeadJointNo__13daNpc_Zelda_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__13daNpc_Zelda_cFv,
    (void*)getEyeballRMaterialNo__13daNpc_Zelda_cFv,
    (void*)getEyeballMaterialNo__8daNpcT_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__13daNpc_Zelda_cFi,
    (void*)setParam__13daNpc_Zelda_cFv,
    (void*)checkChangeEvt__13daNpc_Zelda_cFv,
    (void*)evtTalk__13daNpc_Zelda_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__13daNpc_Zelda_cFv,
    (void*)setAfterTalkMotion__13daNpc_Zelda_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__13daNpc_Zelda_cFv,
    (void*)beforeMove__13daNpc_Zelda_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__13daNpc_Zelda_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__13daNpc_Zelda_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__13daNpc_Zelda_cFv,
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

/* 80B7512C-80B7524C 0000EC 0120+00 1/0 0/0 0/0 .text            __dt__13daNpc_Zelda_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_Zelda_c::~daNpc_Zelda_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__13daNpc_Zelda_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B77FC8-80B78054 000000 008C+00 7/7 0/0 0/0 .rodata          m__19daNpc_Zelda_Param_c */
SECTION_RODATA u8 const daNpc_Zelda_Param_c::m[140] = {
    0x43, 0x3E, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x2A, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B77FC8, &daNpc_Zelda_Param_c::m);

/* 80B78054-80B7805C 00008C 0008+00 0/1 0/0 0/0 .rodata          heapSize$3959 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[8] = {
    0x00, 0x00, 0x8F, 0xE0, 0x00, 0x00, 0x8F, 0xE0,
};
COMPILER_STRIP_GATE(0x80B78054, &heapSize);
#pragma pop

/* 80B7805C-80B78060 000094 0004+00 0/1 0/0 0/0 .rodata          @4032 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4032 = -200.0f;
COMPILER_STRIP_GATE(0x80B7805C, &lit_4032);
#pragma pop

/* 80B78060-80B78064 000098 0004+00 0/1 0/0 0/0 .rodata          @4033 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4033 = -100.0f;
COMPILER_STRIP_GATE(0x80B78060, &lit_4033);
#pragma pop

/* 80B78064-80B78068 00009C 0004+00 0/1 0/0 0/0 .rodata          @4034 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4034 = 200.0f;
COMPILER_STRIP_GATE(0x80B78064, &lit_4034);
#pragma pop

/* 80B78068-80B7806C 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4035 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4035 = 300.0f;
COMPILER_STRIP_GATE(0x80B78068, &lit_4035);
#pragma pop

/* 80B7806C-80B78070 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4036 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4036 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80B7806C, &lit_4036);
#pragma pop

/* 80B7524C-80B75530 00020C 02E4+00 1/1 0/0 0/0 .text            create__13daNpc_Zelda_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::create() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/create__13daNpc_Zelda_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B78070-80B78074 0000A8 0004+00 5/10 0/0 0/0 .rodata          @4190 */
SECTION_RODATA static u8 const lit_4190[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B78070, &lit_4190);

/* 80B78074-80B78078 0000AC 0004+00 0/2 0/0 0/0 .rodata          @4191 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4191 = 65536.0f;
COMPILER_STRIP_GATE(0x80B78074, &lit_4191);
#pragma pop

/* 80B78078-80B7807C 0000B0 0004+00 1/4 0/0 0/0 .rodata          @4192 */
SECTION_RODATA static f32 const lit_4192 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B78078, &lit_4192);

/* 80B7807C-80B78080 0000B4 0004+00 2/4 0/0 0/0 .rodata          @4342 */
SECTION_RODATA static f32 const lit_4342 = 1.0f;
COMPILER_STRIP_GATE(0x80B7807C, &lit_4342);

/* 80B75530-80B757BC 0004F0 028C+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_Zelda_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/CreateHeap__13daNpc_Zelda_cFv.s"
}
#pragma pop

/* 80B757BC-80B757F8 00077C 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" asm void __dt__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80B757F8-80B75810 0007B8 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" asm void __ct__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__ct__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80B75810-80B7584C 0007D0 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" asm void __dt__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 80B7584C-80B75864 00080C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::J3DTevColorAnm() {
extern "C" asm void __ct__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__ct__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 80B75864-80B758AC 000824 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" asm void __dt__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80B758AC-80B758D0 00086C 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::J3DTexNoAnm() {
extern "C" asm void __ct__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__ct__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80B758D0-80B7590C 000890 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" asm void __dt__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80B7590C-80B75924 0008CC 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" asm void __ct__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__ct__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80B75924-80B75960 0008E4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" asm void __dt__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 80B75960-80B75978 000920 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::J3DMatColorAnm() {
extern "C" asm void __ct__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__ct__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 80B75978-80B759AC 000938 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_Zelda_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::Delete() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/Delete__13daNpc_Zelda_cFv.s"
}
#pragma pop

/* 80B759AC-80B759CC 00096C 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_Zelda_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::Execute() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/Execute__13daNpc_Zelda_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B78080-80B78084 0000B8 0004+00 1/1 0/0 0/0 .rodata          @4402 */
SECTION_RODATA static f32 const lit_4402 = 100.0f;
COMPILER_STRIP_GATE(0x80B78080, &lit_4402);

/* 80B759CC-80B75A90 00098C 00C4+00 1/1 0/0 0/0 .text            Draw__13daNpc_Zelda_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::Draw() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/Draw__13daNpc_Zelda_cFv.s"
}
#pragma pop

/* 80B75A90-80B75AB0 000A50 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_Zelda_cFP10fopAc_ac_c            */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::createHeapCallBack(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/createHeapCallBack__13daNpc_Zelda_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80B75AB0-80B75B08 000A70 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_Zelda_cFP8J3DJointi               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/ctrlJointCallBack__13daNpc_Zelda_cFP8J3DJointi.s"
}
#pragma pop

/* 80B75B08-80B75B28 000AC8 0020+00 1/1 0/0 0/0 .text            getType__13daNpc_Zelda_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::getType() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/getType__13daNpc_Zelda_cFv.s"
}
#pragma pop

/* 80B75B28-80B75B30 000AE8 0008+00 1/1 0/0 0/0 .text            isDelete__13daNpc_Zelda_cFv */
bool daNpc_Zelda_c::isDelete() {
    return false;
}

/* 80B75B30-80B75C9C 000AF0 016C+00 1/1 0/0 0/0 .text            reset__13daNpc_Zelda_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::reset() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/reset__13daNpc_Zelda_cFv.s"
}
#pragma pop

/* 80B75C9C-80B75D28 000C5C 008C+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_Zelda_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::afterJntAnm(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/afterJntAnm__13daNpc_Zelda_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B78084-80B78088 0000BC 0004+00 3/3 0/0 0/0 .rodata          @4551 */
SECTION_RODATA static f32 const lit_4551 = -1.0f;
COMPILER_STRIP_GATE(0x80B78084, &lit_4551);

/* 80B75D28-80B75E34 000CE8 010C+00 1/0 0/0 0/0 .text            ctrlBtk__13daNpc_Zelda_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::ctrlBtk() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/ctrlBtk__13daNpc_Zelda_cFv.s"
}
#pragma pop

/* 80B75E34-80B75EE8 000DF4 00B4+00 1/0 0/0 0/0 .text            checkChangeEvt__13daNpc_Zelda_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::checkChangeEvt() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/checkChangeEvt__13daNpc_Zelda_cFv.s"
}
#pragma pop

/* 80B75EE8-80B76014 000EA8 012C+00 1/0 0/0 0/0 .text            setParam__13daNpc_Zelda_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::setParam() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/setParam__13daNpc_Zelda_cFv.s"
}
#pragma pop

/* 80B76014-80B76074 000FD4 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_Zelda_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::setAfterTalkMotion() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/setAfterTalkMotion__13daNpc_Zelda_cFv.s"
}
#pragma pop

/* 80B76074-80B76078 001034 0004+00 1/1 0/0 0/0 .text            srchActors__13daNpc_Zelda_cFv */
void daNpc_Zelda_c::srchActors() {
    /* empty function */
}

/* 80B76078-80B76118 001038 00A0+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_Zelda_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::evtTalk() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/evtTalk__13daNpc_Zelda_cFv.s"
}
#pragma pop

/* 80B76118-80B761E0 0010D8 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_Zelda_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::evtCutProc() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/evtCutProc__13daNpc_Zelda_cFv.s"
}
#pragma pop

/* 80B761E0-80B762CC 0011A0 00EC+00 1/0 0/0 0/0 .text            action__13daNpc_Zelda_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::action() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/action__13daNpc_Zelda_cFv.s"
}
#pragma pop

/* 80B762CC-80B76344 00128C 0078+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_Zelda_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::beforeMove() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/beforeMove__13daNpc_Zelda_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B78088-80B7808C 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4744 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4744 = 10.0f;
COMPILER_STRIP_GATE(0x80B78088, &lit_4744);
#pragma pop

/* 80B7808C-80B78090 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4745 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4745 = -30.0f;
COMPILER_STRIP_GATE(0x80B7808C, &lit_4745);
#pragma pop

/* 80B78090-80B78094 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4746 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4746 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80B78090, &lit_4746);
#pragma pop

/* 80B78094-80B78098 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4747 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4747 = 170.0f;
COMPILER_STRIP_GATE(0x80B78094, &lit_4747);
#pragma pop

/* 80B78098-80B780A0 0000D0 0008+00 1/3 0/0 0/0 .rodata          @4749 */
SECTION_RODATA static u8 const lit_4749[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B78098, &lit_4749);

/* 80B76344-80B765D4 001304 0290+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_Zelda_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::setAttnPos() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/setAttnPos__13daNpc_Zelda_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B780A0-80B780A8 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4807 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4807[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B780A0, &lit_4807);
#pragma pop

/* 80B780A8-80B780B0 0000E0 0008+00 0/1 0/0 0/0 .rodata          @4808 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4808[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B780A8, &lit_4808);
#pragma pop

/* 80B780B0-80B780B8 0000E8 0008+00 0/1 0/0 0/0 .rodata          @4809 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4809[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B780B0, &lit_4809);
#pragma pop

/* 80B780B8-80B780BC 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4853 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4853 = 20.0f;
COMPILER_STRIP_GATE(0x80B780B8, &lit_4853);
#pragma pop

/* 80B780BC-80B780C0 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4854 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4854 = 160.0f;
COMPILER_STRIP_GATE(0x80B780BC, &lit_4854);
#pragma pop

/* 80B780C0-80B780C4 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4855 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4855 = 44.0f;
COMPILER_STRIP_GATE(0x80B780C0, &lit_4855);
#pragma pop

/* 80B765D4-80B76774 001594 01A0+00 1/0 0/0 0/0 .text            setCollision__13daNpc_Zelda_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::setCollision() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/setCollision__13daNpc_Zelda_cFv.s"
}
#pragma pop

/* 80B76774-80B7677C 001734 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_Zelda_cFv */
bool daNpc_Zelda_c::drawDbgInfo() {
    return false;
}

/* 80B7677C-80B767C4 00173C 0048+00 1/1 0/0 0/0 .text            selectAction__13daNpc_Zelda_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::selectAction() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/selectAction__13daNpc_Zelda_cFv.s"
}
#pragma pop

/* 80B767C4-80B767F0 001784 002C+00 2/2 0/0 0/0 .text
 * chkAction__13daNpc_Zelda_cFM13daNpc_Zelda_cFPCvPvPv_i        */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::chkAction(int (daNpc_Zelda_c::*param_0)(void*)) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/chkAction__13daNpc_Zelda_cFM13daNpc_Zelda_cFPCvPvPv_i.s"
}
#pragma pop

/* 80B767F0-80B76898 0017B0 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpc_Zelda_cFM13daNpc_Zelda_cFPCvPvPv_i        */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::setAction(int (daNpc_Zelda_c::*param_0)(void*)) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/setAction__13daNpc_Zelda_cFM13daNpc_Zelda_cFPCvPvPv_i.s"
}
#pragma pop

/* 80B76898-80B76B74 001858 02DC+00 1/0 0/0 0/0 .text            wait__13daNpc_Zelda_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::wait(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/wait__13daNpc_Zelda_cFPv.s"
}
#pragma pop

/* 80B76B74-80B76D60 001B34 01EC+00 3/0 0/0 0/0 .text            talk__13daNpc_Zelda_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::talk(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/talk__13daNpc_Zelda_cFPv.s"
}
#pragma pop

/* 80B76D60-80B76D80 001D20 0020+00 1/0 0/0 0/0 .text            daNpc_Zelda_Create__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_Zelda_Create(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/daNpc_Zelda_Create__FPv.s"
}
#pragma pop

/* 80B76D80-80B76DA0 001D40 0020+00 1/0 0/0 0/0 .text            daNpc_Zelda_Delete__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_Zelda_Delete(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/daNpc_Zelda_Delete__FPv.s"
}
#pragma pop

/* 80B76DA0-80B76DC0 001D60 0020+00 1/0 0/0 0/0 .text            daNpc_Zelda_Execute__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_Zelda_Execute(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/daNpc_Zelda_Execute__FPv.s"
}
#pragma pop

/* 80B76DC0-80B76DE0 001D80 0020+00 1/0 0/0 0/0 .text            daNpc_Zelda_Draw__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_Zelda_Draw(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/daNpc_Zelda_Draw__FPv.s"
}
#pragma pop

/* 80B76DE0-80B76DE8 001DA0 0008+00 1/0 0/0 0/0 .text            daNpc_Zelda_IsDelete__FPv */
static bool daNpc_Zelda_IsDelete(void* param_0) {
    return true;
}

/* 80B76DE8-80B76E18 001DA8 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" asm void calc__11J3DTexNoAnmCFPUs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/calc__11J3DTexNoAnmCFPUs.s"
}
#pragma pop

/* 80B76E18-80B76E60 001DD8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80B76E60-80B771E8 001E20 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_c::~daNpcT_c() {
extern "C" asm void __dt__8daNpcT_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__8daNpcT_cFv.s"
}
#pragma pop

/* 80B771E8-80B77224 0021A8 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__4cXyzFv.s"
}
#pragma pop

/* 80B77224-80B77260 0021E4 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__5csXyzFv.s"
}
#pragma pop

/* 80B77260-80B77664 002220 0404+00 1/1 0/0 0/0 .text
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
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/func_80B77260.s"
}
#pragma pop

/* 80B77664-80B77668 002624 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" asm void __ct__5csXyzFv() {
    /* empty function */
}

/* 80B77668-80B77764 002628 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" asm void __dt__15daNpcT_JntAnm_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__15daNpcT_JntAnm_cFv.s"
}
#pragma pop

/* 80B77764-80B77768 002724 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" asm void __ct__4cXyzFv() {
    /* empty function */
}

/* 80B77768-80B777B0 002728 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" asm void __dt__18daNpcT_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__18daNpcT_ActorMngr_cFv.s"
}
#pragma pop

/* 80B777B0-80B777F8 002770 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" asm void __dt__22daNpcT_MotionSeqMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__22daNpcT_MotionSeqMngr_cFv.s"
}
#pragma pop

/* 80B777F8-80B77868 0027B8 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80B77868-80B778C4 002828 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80B778C4-80B77934 002884 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80B77934-80B7797C 0028F4 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80B7797C-80B77A98 00293C 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" asm void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs.s"
}
#pragma pop

/* 80B77A98-80B77CA0 002A58 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" asm void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs.s"
}
#pragma pop

/* 80B77CA0-80B77CA4 002C60 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" asm void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80B77CA4-80B77CAC 002C64 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootLJointNo() {
    return -1;
}

/* 80B77CAC-80B77CB4 002C6C 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootRJointNo() {
    return -1;
}

/* 80B77CB4-80B77CBC 002C74 0008+00 1/0 0/0 0/0 .text            getEyeballMaterialNo__8daNpcT_cFv
 */
bool daNpcT_c::getEyeballMaterialNo() {
    return false;
}

/* 80B77CBC-80B77CC4 002C7C 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80B77CC4-80B77CC8 002C84 0004+00 1/0 0/0 0/0 .text            afterMoved__8daNpcT_cFv */
void daNpcT_c::afterMoved() {
    /* empty function */
}

/* 80B77CC8-80B77CD0 002C88 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80B77CD0-80B77CE8 002C90 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_c::decTmr() {
extern "C" asm void decTmr__8daNpcT_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/decTmr__8daNpcT_cFv.s"
}
#pragma pop

/* 80B77CE8-80B77CEC 002CA8 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" asm void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80B77CEC-80B77CF0 002CAC 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" asm void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80B77CF0-80B77CF8 002CB0 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B77CF8-80B77D00 002CB8 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B77D00-80B77D30 002CC0 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" asm void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c.s"
}
#pragma pop

/* 80B77D30-80B77D60 002CF0 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" asm void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c.s"
}
#pragma pop

/* 80B77D60-80B77D64 002D20 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" asm void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B77D64-80B77D68 002D24 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" asm void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B77D68-80B77D6C 002D28 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" asm void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B77D6C-80B77D70 002D2C 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" asm void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 80B783F0-80B783FC 000318 000C+00 2/2 0/0 0/0 .data            __vt__19daNpc_Zelda_Param_c */
SECTION_DATA extern void* __vt__19daNpc_Zelda_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpc_Zelda_Param_cFv,
};

/* 80B78408-80B78414 000008 000C+00 1/1 0/0 0/0 .bss             @3811 */
static u8 lit_3811[12];

/* 80B78414-80B78418 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80B77D70-80B77DD8 002D30 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_zelda_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_npc_zelda_cpp() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__sinit_d_a_npc_zelda_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80B77D70, __sinit_d_a_npc_zelda_cpp);
#pragma pop

/* 80B77DD8-80B77E84 002D98 00AC+00 1/1 0/0 0/0 .text
 * __ct__13daNpc_Zelda_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_Zelda_c::daNpc_Zelda_c(daNpcT_faceMotionAnmData_c const* param_0,
                                 daNpcT_motionAnmData_c const* param_1,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                 int param_3,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/func_80B77DD8.s"
}
#pragma pop

/* 80B77E84-80B77ECC 002E44 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80B77ECC-80B77F14 002E8C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80B77F14-80B77F1C 002ED4 0008+00 1/0 0/0 0/0 .text getEyeballRMaterialNo__13daNpc_Zelda_cFv */
s32 daNpc_Zelda_c::getEyeballRMaterialNo() {
    return 5;
}

/* 80B77F1C-80B77F24 002EDC 0008+00 1/0 0/0 0/0 .text getEyeballLMaterialNo__13daNpc_Zelda_cFv */
s32 daNpc_Zelda_c::getEyeballLMaterialNo() {
    return 4;
}

/* 80B77F24-80B77F2C 002EE4 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__13daNpc_Zelda_cFv
 */
s32 daNpc_Zelda_c::getHeadJointNo() {
    return 4;
}

/* 80B77F2C-80B77F34 002EEC 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__13daNpc_Zelda_cFv
 */
s32 daNpc_Zelda_c::getNeckJointNo() {
    return 3;
}

/* 80B77F34-80B77F3C 002EF4 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__13daNpc_Zelda_cFv */
bool daNpc_Zelda_c::getBackboneJointNo() {
    return true;
}

/* 80B77F3C-80B77F4C 002EFC 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__13daNpc_Zelda_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::checkChangeJoint(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/checkChangeJoint__13daNpc_Zelda_cFi.s"
}
#pragma pop

/* 80B77F4C-80B77F5C 002F0C 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__13daNpc_Zelda_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Zelda_c::checkRemoveJoint(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/checkRemoveJoint__13daNpc_Zelda_cFi.s"
}
#pragma pop

/* 80B77F5C-80B77FA4 002F1C 0048+00 2/1 0/0 0/0 .text            __dt__19daNpc_Zelda_Param_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_Zelda_Param_c::~daNpc_Zelda_Param_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/__dt__19daNpc_Zelda_Param_cFv.s"
}
#pragma pop

/* 80B77FA4-80B77FAC 002F64 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80B77FA4() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/func_80B77FA4.s"
}
#pragma pop

/* 80B77FAC-80B77FB4 002F6C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80B77FAC() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zelda/d_a_npc_zelda/func_80B77FAC.s"
}
#pragma pop

/* 80B780C4-80B780C4 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
