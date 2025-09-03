/**
 * @file d_a_npc_tkj.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_tkj.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__10daNpcTkj_cFv();
extern "C" void create__10daNpcTkj_cFv();
extern "C" void CreateHeap__10daNpcTkj_cFv();
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
extern "C" void Delete__10daNpcTkj_cFv();
extern "C" void Execute__10daNpcTkj_cFv();
extern "C" void Draw__10daNpcTkj_cFv();
extern "C" void createHeapCallBack__10daNpcTkj_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__10daNpcTkj_cFP8J3DJointi();
extern "C" void getType__10daNpcTkj_cFv();
extern "C" void getFlowNodeNo__10daNpcTkj_cFv();
extern "C" void isDelete__10daNpcTkj_cFv();
extern "C" void reset__10daNpcTkj_cFv();
extern "C" void setAfterTalkMotion__10daNpcTkj_cFv();
extern "C" void srchActors__10daNpcTkj_cFv();
extern "C" void evtTalk__10daNpcTkj_cFv();
extern "C" void evtCutProc__10daNpcTkj_cFv();
extern "C" void action__10daNpcTkj_cFv();
extern "C" void setAttnPos__10daNpcTkj_cFv();
extern "C" void setCollision__10daNpcTkj_cFv();
extern "C" bool drawDbgInfo__10daNpcTkj_cFv();
extern "C" void selectAction__10daNpcTkj_cFv();
extern "C" void chkAction__10daNpcTkj_cFM10daNpcTkj_cFPCvPvPv_i();
extern "C" void setAction__10daNpcTkj_cFM10daNpcTkj_cFPCvPvPv_i();
extern "C" void wait__10daNpcTkj_cFPv();
extern "C" void talk__10daNpcTkj_cFPv();
extern "C" void cutLv7Start__10daNpcTkj_cFi();
extern "C" static void daNpc_Tkj_Create__FPv();
extern "C" static void daNpc_Tkj_Delete__FPv();
extern "C" static void daNpc_Tkj_Execute__FPv();
extern "C" static void daNpc_Tkj_Draw__FPv();
extern "C" static bool daNpc_Tkj_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void setParam__10daNpcTkj_cFv();
extern "C" void beforeMove__10daNpcTkj_cFv();
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
extern "C" void afterJntAnm__8daNpcT_cFi();
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
extern "C" void __sinit_d_a_npc_tkj_cpp();
extern "C" void
__ct__10daNpcTkj_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" u16 getEyeballMaterialNo__10daNpcTkj_cFv();
extern "C" s32 getHeadJointNo__10daNpcTkj_cFv();
extern "C" s32 getNeckJointNo__10daNpcTkj_cFv();
extern "C" s32 getBackboneJointNo__10daNpcTkj_cFv();
extern "C" void checkChangeJoint__10daNpcTkj_cFi();
extern "C" void checkRemoveJoint__10daNpcTkj_cFi();
extern "C" void __dt__17daNpc_Tkj_Param_cFv();
extern "C" static void func_80576574();
extern "C" static void func_8057657C();
extern "C" u8 const m__17daNpc_Tkj_Param_c[140];
extern "C" extern char const* const d_a_npc_tkj__stringBase0;
extern "C" void* mCutNameList__10daNpcTkj_c[2];
extern "C" u8 mCutList__10daNpcTkj_c[24];

//
// External References:
//

extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fpcEx_IsExist__FUi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void onDungeonItem__12dSv_memBit_cFi();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyNowCutName__16dEvent_manager_cFi();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void getRunEventName__16dEvent_manager_cFv();
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
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
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
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
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
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_26();
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
/* 8057668C-8057668C 0000F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8057668C = "";
SECTION_DEAD static char const* const stringBase_8057668D = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_8057669D = "Tkj";
SECTION_DEAD static char const* const stringBase_805766A1 = "LV7_FIRST_START";
#pragma pop

/* 805766D4-805766DC 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x01,
};

/* 805766DC-805766EC -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[4] = {
    (void*)&d_a_npc_tkj__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_tkj__stringBase0) + 0x1),
    (void*)NULL,
};
#pragma pop

/* 805766EC-805766F4 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_npc_tkj__stringBase0,
    (void*)(((char*)&d_a_npc_tkj__stringBase0) + 0x11),
};

/* 805766F4-805766F8 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 805766F8-80576700 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[2] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
};

/* 80576700-80576738 00004C 0038+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[56] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 80576738-80576770 000084 0038+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[56] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80576770-80576790 0000BC 0020+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[32] = {
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80576790-805767B0 0000DC 0020+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[32] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 805767B0-805767B8 -00001 0008+00 1/1 0/0 0/0 .data            mCutNameList__10daNpcTkj_c */
SECTION_DATA void* daNpcTkj_c::mCutNameList[2] = {
    (void*)&d_a_npc_tkj__stringBase0,
    (void*)(((char*)&d_a_npc_tkj__stringBase0) + 0x15),
};

/* 805767B8-805767C4 -00001 000C+00 1/1 0/0 0/0 .data            @3917 */
SECTION_DATA static void* lit_3917[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutLv7Start__10daNpcTkj_cFi,
};

/* 805767C4-805767DC 000110 0018+00 2/2 0/0 0/0 .data            mCutList__10daNpcTkj_c */
SECTION_DATA u8 daNpcTkj_c::mCutList[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 805767DC-805767E8 -00001 000C+00 1/1 0/0 0/0 .data            @4553 */
SECTION_DATA static void* lit_4553[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__10daNpcTkj_cFPv,
};

/* 805767E8-805767F4 -00001 000C+00 1/1 0/0 0/0 .data            @4561 */
SECTION_DATA static void* lit_4561[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__10daNpcTkj_cFPv,
};

/* 805767F4-80576800 -00001 000C+00 1/1 0/0 0/0 .data            @4771 */
SECTION_DATA static void* lit_4771[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__10daNpcTkj_cFPv,
};

/* 80576800-80576820 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Tkj_MethodTable */
static actor_method_class daNpc_Tkj_MethodTable = {
    (process_method_func)daNpc_Tkj_Create__FPv,
    (process_method_func)daNpc_Tkj_Delete__FPv,
    (process_method_func)daNpc_Tkj_Execute__FPv,
    (process_method_func)daNpc_Tkj_IsDelete__FPv,
    (process_method_func)daNpc_Tkj_Draw__FPv,
};

/* 80576820-80576850 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_TKJ */
extern actor_process_profile_definition g_profile_NPC_TKJ = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_TKJ,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcTkj_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  373,                    // mPriority
  &daNpc_Tkj_MethodTable, // sub_method
  0x08044107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80576850-8057685C 00019C 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 8057685C-80576868 0001A8 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80576868-8057688C 0001B4 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8057657C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80576574,
};

/* 8057688C-80576898 0001D8 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80576898-805768A4 0001E4 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 805768A4-805768B0 0001F0 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 805768B0-805768BC 0001FC 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 805768BC-805768C8 000208 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 805768C8-805768D4 000214 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 805768D4-805768E0 000220 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 805768E0-805768EC 00022C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 805768EC-805769B0 000238 00C4+00 2/2 0/0 0/0 .data            __vt__10daNpcTkj_c */
SECTION_DATA extern void* __vt__10daNpcTkj_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10daNpcTkj_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__10daNpcTkj_cFi,
    (void*)checkRemoveJoint__10daNpcTkj_cFi,
    (void*)getBackboneJointNo__10daNpcTkj_cFv,
    (void*)getNeckJointNo__10daNpcTkj_cFv,
    (void*)getHeadJointNo__10daNpcTkj_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__10daNpcTkj_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__8daNpcT_cFi,
    (void*)setParam__10daNpcTkj_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__10daNpcTkj_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__10daNpcTkj_cFv,
    (void*)setAfterTalkMotion__10daNpcTkj_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__10daNpcTkj_cFv,
    (void*)beforeMove__10daNpcTkj_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__10daNpcTkj_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__10daNpcTkj_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__10daNpcTkj_cFv,
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

/* 8057372C-80573850 0000EC 0124+00 1/0 0/0 0/0 .text            __dt__10daNpcTkj_cFv */
daNpcTkj_c::~daNpcTkj_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80576598-80576624 000000 008C+00 9/9 0/0 0/0 .rodata          m__17daNpc_Tkj_Param_c */
SECTION_RODATA u8 const daNpc_Tkj_Param_c::m[140] = {
    0x42, 0xF0, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x05, 0x00, 0x06, 0x00, 0x07, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0xC1, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0xA0, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
    0x42, 0x20, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x42, 0xDC, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80576598, &daNpc_Tkj_Param_c::m);

/* 80576624-80576628 00008C 0004+00 0/1 0/0 0/0 .rodata          @4129 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4129 = -300.0f;
COMPILER_STRIP_GATE(0x80576624, &lit_4129);
#pragma pop

/* 80576628-8057662C 000090 0004+00 0/1 0/0 0/0 .rodata          @4130 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4130 = -50.0f;
COMPILER_STRIP_GATE(0x80576628, &lit_4130);
#pragma pop

/* 8057662C-80576630 000094 0004+00 0/1 0/0 0/0 .rodata          @4131 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4131 = 300.0f;
COMPILER_STRIP_GATE(0x8057662C, &lit_4131);
#pragma pop

/* 80576630-80576634 000098 0004+00 0/1 0/0 0/0 .rodata          @4132 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4132 = 450.0f;
COMPILER_STRIP_GATE(0x80576630, &lit_4132);
#pragma pop

/* 80573850-80573B18 000210 02C8+00 1/1 0/0 0/0 .text            create__10daNpcTkj_cFv */
void daNpcTkj_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80576634-80576638 00009C 0004+00 3/8 0/0 0/0 .rodata          @4286 */
SECTION_RODATA static u8 const lit_4286[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80576634, &lit_4286);

/* 80576638-8057663C 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4287 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4287 = 65536.0f;
COMPILER_STRIP_GATE(0x80576638, &lit_4287);
#pragma pop

/* 8057663C-80576640 0000A4 0004+00 0/3 0/0 0/0 .rodata          @4288 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4288 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x8057663C, &lit_4288);
#pragma pop

/* 80576640-80576644 0000A8 0004+00 2/4 0/0 0/0 .rodata          @4437 */
SECTION_RODATA static f32 const lit_4437 = 1.0f;
COMPILER_STRIP_GATE(0x80576640, &lit_4437);

/* 80573B18-80573DAC 0004D8 0294+00 1/1 0/0 0/0 .text            CreateHeap__10daNpcTkj_cFv */
void daNpcTkj_c::CreateHeap() {
    // NONMATCHING
}

/* 80573DAC-80573DE8 00076C 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80573DE8-80573E00 0007A8 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80573E00-80573E3C 0007C0 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80573E3C-80573E54 0007FC 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80573E54-80573E9C 000814 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80573E9C-80573EC0 00085C 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80573EC0-80573EFC 000880 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80573EFC-80573F14 0008BC 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80573F14-80573F50 0008D4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80573F50-80573F68 000910 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80573F68-80573F9C 000928 0034+00 1/1 0/0 0/0 .text            Delete__10daNpcTkj_cFv */
void daNpcTkj_c::Delete() {
    // NONMATCHING
}

/* 80573F9C-80573FBC 00095C 0020+00 2/2 0/0 0/0 .text            Execute__10daNpcTkj_cFv */
void daNpcTkj_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80576644-80576648 0000AC 0004+00 1/1 0/0 0/0 .rodata          @4487 */
SECTION_RODATA static f32 const lit_4487 = 100.0f;
COMPILER_STRIP_GATE(0x80576644, &lit_4487);

/* 80573FBC-80574058 00097C 009C+00 1/1 0/0 0/0 .text            Draw__10daNpcTkj_cFv */
void daNpcTkj_c::Draw() {
    // NONMATCHING
}

/* 80574058-80574078 000A18 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__10daNpcTkj_cFP10fopAc_ac_c               */
void daNpcTkj_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80574078-805740D0 000A38 0058+00 2/2 0/0 0/0 .text ctrlJointCallBack__10daNpcTkj_cFP8J3DJointi
 */
void daNpcTkj_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 805740D0-80574108 000A90 0038+00 1/1 0/0 0/0 .text            getType__10daNpcTkj_cFv */
void daNpcTkj_c::getType() {
    // NONMATCHING
}

/* 80574108-80574124 000AC8 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__10daNpcTkj_cFv */
void daNpcTkj_c::getFlowNodeNo() {
    // NONMATCHING
}

/* 80574124-8057413C 000AE4 0018+00 1/1 0/0 0/0 .text            isDelete__10daNpcTkj_cFv */
void daNpcTkj_c::isDelete() {
    // NONMATCHING
}

/* 8057413C-80574268 000AFC 012C+00 1/1 0/0 0/0 .text            reset__10daNpcTkj_cFv */
void daNpcTkj_c::reset() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80576648-8057664C 0000B0 0004+00 2/3 0/0 0/0 .rodata          @4541 */
SECTION_RODATA static f32 const lit_4541 = -1.0f;
COMPILER_STRIP_GATE(0x80576648, &lit_4541);

/* 80574268-805742C8 000C28 0060+00 1/0 0/0 0/0 .text            setAfterTalkMotion__10daNpcTkj_cFv
 */
void daNpcTkj_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 805742C8-805742D4 000C88 000C+00 1/1 0/0 0/0 .text            srchActors__10daNpcTkj_cFv */
void daNpcTkj_c::srchActors() {
    // NONMATCHING
}

/* 805742D4-805743B8 000C94 00E4+00 1/0 0/0 0/0 .text            evtTalk__10daNpcTkj_cFv */
void daNpcTkj_c::evtTalk() {
    // NONMATCHING
}

/* 805743B8-8057449C 000D78 00E4+00 1/0 0/0 0/0 .text            evtCutProc__10daNpcTkj_cFv */
void daNpcTkj_c::evtCutProc() {
    // NONMATCHING
}

/* 8057449C-80574524 000E5C 0088+00 1/0 0/0 0/0 .text            action__10daNpcTkj_cFv */
void daNpcTkj_c::action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8057664C-80576650 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4670 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4670 = -30.0f;
COMPILER_STRIP_GATE(0x8057664C, &lit_4670);
#pragma pop

/* 80576650-80576658 0000B8 0004+04 0/1 0/0 0/0 .rodata          @4671 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4671[1 + 1 /* padding */] = {
    0x38C90FDB,
    /* padding */
    0x00000000,
};
COMPILER_STRIP_GATE(0x80576650, &lit_4671);
#pragma pop

/* 80576658-80576660 0000C0 0008+00 1/3 0/0 0/0 .rodata          @4673 */
SECTION_RODATA static u8 const lit_4673[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80576658, &lit_4673);

/* 80574524-80574770 000EE4 024C+00 1/0 0/0 0/0 .text            setAttnPos__10daNpcTkj_cFv */
void daNpcTkj_c::setAttnPos() {
    // NONMATCHING
}

/* 80574770-80574850 001130 00E0+00 1/0 0/0 0/0 .text            setCollision__10daNpcTkj_cFv */
void daNpcTkj_c::setCollision() {
    // NONMATCHING
}

/* 80574850-80574858 001210 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__10daNpcTkj_cFv */
bool daNpcTkj_c::drawDbgInfo() {
    return false;
}

/* 80574858-805748A8 001218 0050+00 1/1 0/0 0/0 .text            selectAction__10daNpcTkj_cFv */
void daNpcTkj_c::selectAction() {
    // NONMATCHING
}

/* 805748A8-805748D4 001268 002C+00 1/1 0/0 0/0 .text
 * chkAction__10daNpcTkj_cFM10daNpcTkj_cFPCvPvPv_i              */
void daNpcTkj_c::chkAction(int (daNpcTkj_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 805748D4-8057497C 001294 00A8+00 2/2 0/0 0/0 .text
 * setAction__10daNpcTkj_cFM10daNpcTkj_cFPCvPvPv_i              */
void daNpcTkj_c::setAction(int (daNpcTkj_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 8057497C-80574B30 00133C 01B4+00 1/0 0/0 0/0 .text            wait__10daNpcTkj_cFPv */
void daNpcTkj_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80574B30-80574D28 0014F0 01F8+00 2/0 0/0 0/0 .text            talk__10daNpcTkj_cFPv */
void daNpcTkj_c::talk(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80576660-80576668 0000C8 0008+00 0/2 0/0 0/0 .rodata          @4731 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4731[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80576660, &lit_4731);
#pragma pop

/* 80576668-80576670 0000D0 0008+00 0/2 0/0 0/0 .rodata          @4732 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4732[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80576668, &lit_4732);
#pragma pop

/* 80576670-80576678 0000D8 0008+00 0/2 0/0 0/0 .rodata          @4733 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4733[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80576670, &lit_4733);
#pragma pop

/* 80576678-8057667C 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4972 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4972 = 13.5f;
COMPILER_STRIP_GATE(0x80576678, &lit_4972);
#pragma pop

/* 8057667C-80576680 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4973 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4973 = 0x44DB2DFC;
COMPILER_STRIP_GATE(0x8057667C, &lit_4973);
#pragma pop

/* 80576680-80576684 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4974 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4974 = -200.0f;
COMPILER_STRIP_GATE(0x80576680, &lit_4974);
#pragma pop

/* 80576684-80576688 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4975 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4975 = 0x45AB6F61;
COMPILER_STRIP_GATE(0x80576684, &lit_4975);
#pragma pop

/* 80574D28-80575180 0016E8 0458+00 1/0 0/0 0/0 .text            cutLv7Start__10daNpcTkj_cFi */
void daNpcTkj_c::cutLv7Start(int param_0) {
    // NONMATCHING
}

/* 80575180-805751A0 001B40 0020+00 1/0 0/0 0/0 .text            daNpc_Tkj_Create__FPv */
static void daNpc_Tkj_Create(void* param_0) {
    // NONMATCHING
}

/* 805751A0-805751C0 001B60 0020+00 1/0 0/0 0/0 .text            daNpc_Tkj_Delete__FPv */
static void daNpc_Tkj_Delete(void* param_0) {
    // NONMATCHING
}

/* 805751C0-805751E0 001B80 0020+00 1/0 0/0 0/0 .text            daNpc_Tkj_Execute__FPv */
static void daNpc_Tkj_Execute(void* param_0) {
    // NONMATCHING
}

/* 805751E0-80575200 001BA0 0020+00 1/0 0/0 0/0 .text            daNpc_Tkj_Draw__FPv */
static void daNpc_Tkj_Draw(void* param_0) {
    // NONMATCHING
}

/* 80575200-80575208 001BC0 0008+00 1/0 0/0 0/0 .text            daNpc_Tkj_IsDelete__FPv */
static bool daNpc_Tkj_IsDelete(void* param_0) {
    return true;
}

/* 80575208-80575238 001BC8 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80575238-80575280 001BF8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80576688-8057668C 0000F0 0004+00 1/1 0/0 0/0 .rodata          @5035 */
SECTION_RODATA static f32 const lit_5035 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80576688, &lit_5035);

/* 80575280-8057538C 001C40 010C+00 1/0 0/0 0/0 .text            setParam__10daNpcTkj_cFv */
void daNpcTkj_c::setParam() {
    // NONMATCHING
}

/* 8057538C-80575404 001D4C 0078+00 1/0 0/0 0/0 .text            beforeMove__10daNpcTkj_cFv */
void daNpcTkj_c::beforeMove() {
    // NONMATCHING
}

/* 80575404-8057578C 001DC4 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 8057578C-805757C8 00214C 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 805757C8-80575804 002188 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80575804-80575C08 0021C4 0404+00 1/1 0/0 0/0 .text
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

/* 80575C08-80575C0C 0025C8 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80575C0C-80575D08 0025CC 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80575D08-80575D0C 0026C8 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80575D0C-80575D54 0026CC 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80575D54-80575D9C 002714 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80575D9C-80575E0C 00275C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80575E0C-80575E68 0027CC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80575E68-80575ED8 002828 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80575ED8-80575F20 002898 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80575F20-8057603C 0028E0 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 8057603C-80576244 0029FC 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80576244-80576248 002C04 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80576258-80576260 002C18 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80576260-80576268 002C20 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80576274-8057627C 002C34 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80576280-80576288 002C40 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80576288-805762A0 002C48 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 805762A0-805762A4 002C60 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 805762A4-805762A8 002C64 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 805762A8-805762B0 002C68 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 805762B0-805762B8 002C70 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 805762B8-805762E8 002C78 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 805762E8-80576318 002CA8 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80576318-8057631C 002CD8 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 8057631C-80576320 002CDC 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80576320-80576324 002CE0 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80576324-80576328 002CE4 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 805769B0-805769BC 0002FC 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_Tkj_Param_c */
SECTION_DATA extern void* __vt__17daNpc_Tkj_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_Tkj_Param_cFv,
};

/* 805769C8-805769D4 000008 000C+00 1/1 0/0 0/0 .bss             @3918 */
static u8 lit_3918[12];

/* 805769D4-805769D8 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80576328-805763B0 002CE8 0088+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_tkj_cpp */
void __sinit_d_a_npc_tkj_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80576328, __sinit_d_a_npc_tkj_cpp);
#pragma pop

/* 805763B0-8057645C 002D70 00AC+00 1/1 0/0 0/0 .text
 * __ct__10daNpcTkj_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpcTkj_c::daNpcTkj_c(daNpcT_faceMotionAnmData_c const* param_0,
                           daNpcT_motionAnmData_c const* param_1,
                           daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
                           daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
                           daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 8057645C-805764A4 002E1C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 805764A4-805764EC 002E64 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 805764EC-805764F4 002EAC 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__10daNpcTkj_cFv */
u16 daNpcTkj_c::getEyeballMaterialNo() {
    return 2;
}

/* 805764F4-805764FC 002EB4 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__10daNpcTkj_cFv */
s32 daNpcTkj_c::getHeadJointNo() {
    return 17;
}

/* 805764FC-80576504 002EBC 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__10daNpcTkj_cFv */
s32 daNpcTkj_c::getNeckJointNo() {
    return 16;
}

/* 80576504-8057650C 002EC4 0008+00 1/0 0/0 0/0 .text            getBackboneJointNo__10daNpcTkj_cFv
 */
s32 daNpcTkj_c::getBackboneJointNo() {
    return 15;
}

/* 8057650C-8057651C 002ECC 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__10daNpcTkj_cFi */
void daNpcTkj_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 8057651C-8057652C 002EDC 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__10daNpcTkj_cFi */
void daNpcTkj_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 8057652C-80576574 002EEC 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_Tkj_Param_cFv */
daNpc_Tkj_Param_c::~daNpc_Tkj_Param_c() {
    // NONMATCHING
}

/* 80576574-8057657C 002F34 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80576574() {
    // NONMATCHING
}

/* 8057657C-80576584 002F3C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8057657C() {
    // NONMATCHING
}

/* 8057668C-8057668C 0000F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
