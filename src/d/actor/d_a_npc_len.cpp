/**
 * @file d_a_npc_len.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_len.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__11daNpc_Len_cFv();
extern "C" void create__11daNpc_Len_cFv();
extern "C" void CreateHeap__11daNpc_Len_cFv();
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
extern "C" void Delete__11daNpc_Len_cFv();
extern "C" void Execute__11daNpc_Len_cFv();
extern "C" void Draw__11daNpc_Len_cFv();
extern "C" void createHeapCallBack__11daNpc_Len_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_Len_cFP8J3DJointi();
extern "C" void getType__11daNpc_Len_cFv();
extern "C" void isDelete__11daNpc_Len_cFv();
extern "C" void reset__11daNpc_Len_cFv();
extern "C" void afterJntAnm__11daNpc_Len_cFi();
extern "C" void setParam__11daNpc_Len_cFv();
extern "C" void checkChangeEvt__11daNpc_Len_cFv();
extern "C" void setAfterTalkMotion__11daNpc_Len_cFv();
extern "C" void srchActors__11daNpc_Len_cFv();
extern "C" void evtTalk__11daNpc_Len_cFv();
extern "C" void evtCutProc__11daNpc_Len_cFv();
extern "C" void action__11daNpc_Len_cFv();
extern "C" void beforeMove__11daNpc_Len_cFv();
extern "C" void setAttnPos__11daNpc_Len_cFv();
extern "C" void setCollision__11daNpc_Len_cFv();
extern "C" bool drawDbgInfo__11daNpc_Len_cFv();
extern "C" void selectAction__11daNpc_Len_cFv();
extern "C" void chkAction__11daNpc_Len_cFM11daNpc_Len_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_Len_cFM11daNpc_Len_cFPCvPvPv_i();
extern "C" void checkStartDemo13StbEvt__11daNpc_Len_cFP10fopAc_ac_cfffffff();
extern "C" void cutConversationInHotel__11daNpc_Len_cFi();
extern "C" void cutHurry__11daNpc_Len_cFi();
extern "C" void cutTakeWoodStatue__11daNpc_Len_cFi();
extern "C" void wait__11daNpc_Len_cFPv();
extern "C" void patrol__11daNpc_Len_cFPv();
extern "C" void talk__11daNpc_Len_cFPv();
extern "C" static void daNpc_Len_Create__FPv();
extern "C" static void daNpc_Len_Delete__FPv();
extern "C" static void daNpc_Len_Execute__FPv();
extern "C" static void daNpc_Len_Draw__FPv();
extern "C" static bool daNpc_Len_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__13daNpcT_Path_cFv();
extern "C" void __ct__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void
__ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__15daNpcT_JntAnm_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs();
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs();
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
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
extern "C" void func_80A68BB4(void* _this, int*);
extern "C" void func_80A68BD0(void* _this, int, int);
extern "C" void __sinit_d_a_npc_len_cpp();
extern "C" void
__ct__11daNpc_Len_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__11daNpc_Len_cFv();
extern "C" s32 getHeadJointNo__11daNpc_Len_cFv();
extern "C" s32 getNeckJointNo__11daNpc_Len_cFv();
extern "C" bool getBackboneJointNo__11daNpc_Len_cFv();
extern "C" void checkChangeJoint__11daNpc_Len_cFi();
extern "C" void checkRemoveJoint__11daNpc_Len_cFi();
extern "C" s32 getFootLJointNo__11daNpc_Len_cFv();
extern "C" s32 getFootRJointNo__11daNpc_Len_cFv();
extern "C" bool chkXYItems__11daNpc_Len_cFv();
extern "C" void __dt__17daNpc_Len_Param_cFv();
extern "C" static void func_80A68E80();
extern "C" static void func_80A68E88();
extern "C" u8 const m__17daNpc_Len_Param_c[148];
extern "C" extern char const* const d_a_npc_len__stringBase0;
extern "C" void* mCutNameList__11daNpc_Len_c[4];
extern "C" u8 mCutList__11daNpc_Len_c[48];

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
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fpcEx_IsExist__FUi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
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
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcT_ActorMngr_cFv();
extern "C" void getActorP__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__13daNpcT_Path_cFv();
extern "C" void setPathInfo__13daNpcT_Path_cFUcScUc();
extern "C" void getDstPosH__13daNpcT_Path_cF4cXyzP4cXyzii();
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
extern "C" void setPos__8daNpcT_cF4cXyz();
extern "C" void setAngle__8daNpcT_cF5csXyz();
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void hitChk__8daNpcT_cFP12dCcD_GObjInfUl();
extern "C" void setDamage__8daNpcT_cFiii();
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void daNpcT_chkActorInScreen__FP10fopAc_ac_cfffffffi();
extern "C" void daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
extern "C" void checkNowWolfEyeUp__9daPy_py_cFv();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_rad2s__Ff();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
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
extern "C" void _savefpr_25();
extern "C" void _restfpr_25();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
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
/* 80A68FDC-80A68FDC 000138 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A68FDC = "";
SECTION_DEAD static char const* const stringBase_80A68FDD = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_80A68FED = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80A68FF9 = "DEMO13_STB";
SECTION_DEAD static char const* const stringBase_80A69004 = "HURRY";
SECTION_DEAD static char const* const stringBase_80A6900A = "CONVERSATION_IN_HOTEL1";
SECTION_DEAD static char const* const stringBase_80A69021 = "CONVERSATION_IN_HOTEL2";
SECTION_DEAD static char const* const stringBase_80A69038 = "Len";
SECTION_DEAD static char const* const stringBase_80A6903C = "Len_TW";
SECTION_DEAD static char const* const stringBase_80A69043 = "Len1";
SECTION_DEAD static char const* const stringBase_80A69048 = "CONVERSATION_IN_HOTEL";
SECTION_DEAD static char const* const stringBase_80A6905E = "TAKE_WOODSTATUE";
#pragma pop

/* 80A690A8-80A690B8 000020 0010+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[16] = {
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02,
};

/* 80A690B8-80A690F0 -00001 0038+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[14] = {
    (void*)&d_a_npc_len__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_len__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_len__stringBase0) + 0x11),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_len__stringBase0) + 0x1D),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_len__stringBase0) + 0x28),
    (void*)0x00000003,
    (void*)(((char*)&d_a_npc_len__stringBase0) + 0x2E),
    (void*)0x00000003,
    (void*)(((char*)&d_a_npc_len__stringBase0) + 0x45),
    (void*)0x00000003,
};
#pragma pop

/* 80A690F0-80A69100 -00001 0010+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[4] = {
    (void*)&d_a_npc_len__stringBase0,
    (void*)(((char*)&d_a_npc_len__stringBase0) + 0x5C),
    (void*)(((char*)&d_a_npc_len__stringBase0) + 0x60),
    (void*)(((char*)&d_a_npc_len__stringBase0) + 0x67),
};

/* 80A69100-80A69104 000078 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u8 l_loadResPtrn0[3 + 1 /* padding */] = {
    0x01,
    0x03,
    0xFF,
    /* padding */
    0x00,
};

/* 80A69104-80A69108 00007C 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u32 l_loadResPtrn1 = 0x010203FF;

/* 80A69108-80A69130 -00001 0028+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[10] = {
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn1,
};

/* 80A69130-80A6937C 0000A8 024C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[588] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x2F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1A,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x30,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x2C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A6937C-80A69574 0002F4 01F8+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[504] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80A69574-80A69694 0004EC 0120+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[288] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x05, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0x00, 0x09, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x0C, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0x00, 0x0E, 0x00, 0x01, 0x00, 0x0F, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x03, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x01, 0x00, 0x14, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x05, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A69694-80A69774 00060C 00E0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[224] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x01, 0x00, 0x0A, 0x00, 0x01, 0x00, 0x0B, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x01, 0x00, 0x0D, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x04, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A69774-80A69784 -00001 0010+00 1/1 0/0 0/0 .data            mCutNameList__11daNpc_Len_c */
SECTION_DATA void* daNpc_Len_c::mCutNameList[4] = {
    (void*)&d_a_npc_len__stringBase0,
    (void*)(((char*)&d_a_npc_len__stringBase0) + 0x28),
    (void*)(((char*)&d_a_npc_len__stringBase0) + 0x6C),
    (void*)(((char*)&d_a_npc_len__stringBase0) + 0x82),
};

/* 80A69784-80A69790 -00001 000C+00 0/1 0/0 0/0 .data            @3845 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3845[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutHurry__11daNpc_Len_cFi,
};
#pragma pop

/* 80A69790-80A6979C -00001 000C+00 0/1 0/0 0/0 .data            @3846 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3846[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationInHotel__11daNpc_Len_cFi,
};
#pragma pop

/* 80A6979C-80A697A8 -00001 000C+00 0/1 0/0 0/0 .data            @3847 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3847[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTakeWoodStatue__11daNpc_Len_cFi,
};
#pragma pop

/* 80A697A8-80A697D8 000720 0030+00 1/2 0/0 0/0 .data            mCutList__11daNpc_Len_c */
SECTION_DATA u8 daNpc_Len_c::mCutList[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A697D8-80A697FC -00001 0024+00 1/1 0/0 0/0 .data            @4469 */
SECTION_DATA static void* lit_4469[9] = {
    (void*)(((char*)getType__11daNpc_Len_cFv) + 0x28),
    (void*)(((char*)getType__11daNpc_Len_cFv) + 0x30),
    (void*)(((char*)getType__11daNpc_Len_cFv) + 0x38),
    (void*)(((char*)getType__11daNpc_Len_cFv) + 0x40),
    (void*)(((char*)getType__11daNpc_Len_cFv) + 0x48),
    (void*)(((char*)getType__11daNpc_Len_cFv) + 0x50),
    (void*)(((char*)getType__11daNpc_Len_cFv) + 0x58),
    (void*)(((char*)getType__11daNpc_Len_cFv) + 0x60),
    (void*)(((char*)getType__11daNpc_Len_cFv) + 0x68),
};

/* 80A697FC-80A69820 -00001 0024+00 1/1 0/0 0/0 .data            @4505 */
SECTION_DATA static void* lit_4505[9] = {
    (void*)(((char*)isDelete__11daNpc_Len_cFv) + 0x34),
    (void*)(((char*)isDelete__11daNpc_Len_cFv) + 0x64),
    (void*)(((char*)isDelete__11daNpc_Len_cFv) + 0x6C),
    (void*)(((char*)isDelete__11daNpc_Len_cFv) + 0x9C),
    (void*)(((char*)isDelete__11daNpc_Len_cFv) + 0xCC),
    (void*)(((char*)isDelete__11daNpc_Len_cFv) + 0xFC),
    (void*)(((char*)isDelete__11daNpc_Len_cFv) + 0x144),
    (void*)(((char*)isDelete__11daNpc_Len_cFv) + 0x18C),
    (void*)(((char*)isDelete__11daNpc_Len_cFv) + 0x1BC),
};

/* 80A69820-80A6982C -00001 000C+00 1/1 0/0 0/0 .data            @4644 */
SECTION_DATA static void* lit_4644[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Len_cFPv,
};

/* 80A6982C-80A69854 -00001 0028+00 1/1 0/0 0/0 .data            @4696 */
SECTION_DATA static void* lit_4696[10] = {
    (void*)(((char*)setAfterTalkMotion__11daNpc_Len_cFv) + 0x70),
    (void*)(((char*)setAfterTalkMotion__11daNpc_Len_cFv) + 0x40),
    (void*)(((char*)setAfterTalkMotion__11daNpc_Len_cFv) + 0x48),
    (void*)(((char*)setAfterTalkMotion__11daNpc_Len_cFv) + 0x4C),
    (void*)(((char*)setAfterTalkMotion__11daNpc_Len_cFv) + 0x54),
    (void*)(((char*)setAfterTalkMotion__11daNpc_Len_cFv) + 0x5C),
    (void*)(((char*)setAfterTalkMotion__11daNpc_Len_cFv) + 0x64),
    (void*)(((char*)setAfterTalkMotion__11daNpc_Len_cFv) + 0x70),
    (void*)(((char*)setAfterTalkMotion__11daNpc_Len_cFv) + 0x70),
    (void*)(((char*)setAfterTalkMotion__11daNpc_Len_cFv) + 0x6C),
};

/* 80A69854-80A69860 -00001 000C+00 1/1 0/0 0/0 .data            @4723 */
SECTION_DATA static void* lit_4723[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Len_cFPv,
};

/* 80A69860-80A6986C -00001 000C+00 1/1 0/0 0/0 .data            @4728 */
SECTION_DATA static void* lit_4728[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Len_cFPv,
};

/* 80A6986C-80A69878 -00001 000C+00 1/1 0/0 0/0 .data            @4997 */
SECTION_DATA static void* lit_4997[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)patrol__11daNpc_Len_cFPv,
};

/* 80A69878-80A69884 -00001 000C+00 1/1 0/0 0/0 .data            @4999 */
SECTION_DATA static void* lit_4999[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_Len_cFPv,
};

/* 80A69884-80A698A4 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Len_MethodTable */
static actor_method_class daNpc_Len_MethodTable = {
    (process_method_func)daNpc_Len_Create__FPv,
    (process_method_func)daNpc_Len_Delete__FPv,
    (process_method_func)daNpc_Len_Execute__FPv,
    (process_method_func)daNpc_Len_IsDelete__FPv,
    (process_method_func)daNpc_Len_Draw__FPv,
};

/* 80A698A4-80A698D4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_LEN */
extern actor_process_profile_definition g_profile_NPC_LEN = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_LEN,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_Len_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  337,                    // mPriority
  &daNpc_Len_MethodTable, // sub_method
  0x00040107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80A698D4-80A698E0 00084C 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80A698E0-80A698EC 000858 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A698EC-80A69910 000864 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A68E88,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A68E80,
};

/* 80A69910-80A6991C 000888 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80A6991C-80A69928 000894 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80A69928-80A69934 0008A0 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80A69934-80A69940 0008AC 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80A69940-80A6994C 0008B8 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80A6994C-80A69958 0008C4 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80A69958-80A69964 0008D0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80A69964-80A69970 0008DC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80A69970-80A6997C 0008E8 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80A6997C-80A69A40 0008F4 00C4+00 2/2 0/0 0/0 .data            __vt__11daNpc_Len_c */
SECTION_DATA extern void* __vt__11daNpc_Len_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_Len_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__11daNpc_Len_cFi,
    (void*)checkRemoveJoint__11daNpc_Len_cFi,
    (void*)getBackboneJointNo__11daNpc_Len_cFv,
    (void*)getNeckJointNo__11daNpc_Len_cFv,
    (void*)getHeadJointNo__11daNpc_Len_cFv,
    (void*)getFootLJointNo__11daNpc_Len_cFv,
    (void*)getFootRJointNo__11daNpc_Len_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__11daNpc_Len_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__11daNpc_Len_cFi,
    (void*)setParam__11daNpc_Len_cFv,
    (void*)checkChangeEvt__11daNpc_Len_cFv,
    (void*)evtTalk__11daNpc_Len_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__11daNpc_Len_cFv,
    (void*)setAfterTalkMotion__11daNpc_Len_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__11daNpc_Len_cFv,
    (void*)beforeMove__11daNpc_Len_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__11daNpc_Len_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__11daNpc_Len_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__11daNpc_Len_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__11daNpc_Len_cFv,
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

/* 80A6432C-80A64478 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__11daNpc_Len_cFv */
daNpc_Len_c::~daNpc_Len_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A68EA4-80A68F38 000000 0094+00 9/9 0/0 0/0 .rodata          m__17daNpc_Len_Param_c */
SECTION_RODATA u8 const daNpc_Len_Param_c::m[148] = {
    0x43, 0x66, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xE1, 0x00,
    0x00, 0x43, 0x7F, 0x00, 0x00, 0x43, 0x52, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x20,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00, 0xC1,
    0x70, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0xC1, 0xF0, 0x00, 0x00, 0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00,
    0x06, 0x00, 0x05, 0x00, 0x06, 0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0xC1, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xC1, 0xA0, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x41, 0xA0, 0x00,
    0x00, 0x42, 0xC8, 0x00, 0x00, 0x01, 0x68, 0x00, 0xB4, 0x40, 0x40, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A68EA4, &daNpc_Len_Param_c::m);

/* 80A68F38-80A68F60 000094 0028+00 0/1 0/0 0/0 .rodata          heapSize$4002 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[40] = {
    0x00, 0x00, 0x43, 0x80, 0x00, 0x00, 0x43, 0x80, 0x00, 0x00, 0x43, 0x80, 0x00, 0x00,
    0x43, 0x80, 0x00, 0x00, 0x43, 0x80, 0x00, 0x00, 0x43, 0x80, 0x00, 0x00, 0x43, 0x80,
    0x00, 0x00, 0x43, 0x80, 0x00, 0x00, 0x43, 0x80, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A68F38, &heapSize);
#pragma pop

/* 80A68F60-80A68F64 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4068 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4068 = -200.0f;
COMPILER_STRIP_GATE(0x80A68F60, &lit_4068);
#pragma pop

/* 80A68F64-80A68F68 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4069 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4069 = -100.0f;
COMPILER_STRIP_GATE(0x80A68F64, &lit_4069);
#pragma pop

/* 80A68F68-80A68F6C 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4070 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4070 = 200.0f;
COMPILER_STRIP_GATE(0x80A68F68, &lit_4070);
#pragma pop

/* 80A68F6C-80A68F70 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4071 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4071 = 300.0f;
COMPILER_STRIP_GATE(0x80A68F6C, &lit_4071);
#pragma pop

/* 80A68F70-80A68F74 0000CC 0004+00 6/14 0/0 0/0 .rodata          @4072 */
SECTION_RODATA static u8 const lit_4072[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A68F70, &lit_4072);

/* 80A68F74-80A68F78 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4073 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4073 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80A68F74, &lit_4073);
#pragma pop

/* 80A64478-80A64740 000238 02C8+00 1/1 0/0 0/0 .text            create__11daNpc_Len_cFv */
void daNpc_Len_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A68F78-80A68F7C 0000D4 0004+00 0/2 0/0 0/0 .rodata          @4235 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4235 = 65536.0f;
COMPILER_STRIP_GATE(0x80A68F78, &lit_4235);
#pragma pop

/* 80A68F7C-80A68F80 0000D8 0004+00 0/3 0/0 0/0 .rodata          @4236 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4236 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A68F7C, &lit_4236);
#pragma pop

/* 80A68F80-80A68F84 0000DC 0004+00 3/5 0/0 0/0 .rodata          @4388 */
SECTION_RODATA static f32 const lit_4388 = 1.0f;
COMPILER_STRIP_GATE(0x80A68F80, &lit_4388);

/* 80A64740-80A64A24 000500 02E4+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_Len_cFv */
void daNpc_Len_c::CreateHeap() {
    // NONMATCHING
}

/* 80A64A24-80A64A60 0007E4 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A64A60-80A64A78 000820 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A64A78-80A64AB4 000838 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A64AB4-80A64ACC 000874 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A64ACC-80A64B14 00088C 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A64B14-80A64B38 0008D4 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A64B38-80A64B74 0008F8 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A64B74-80A64B8C 000934 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A64B8C-80A64BC8 00094C 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A64BC8-80A64BE0 000988 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A64BE0-80A64C14 0009A0 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_Len_cFv */
void daNpc_Len_c::Delete() {
    // NONMATCHING
}

/* 80A64C14-80A64C34 0009D4 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_Len_cFv */
void daNpc_Len_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A68F84-80A68F88 0000E0 0004+00 1/1 0/0 0/0 .rodata          @4437 */
SECTION_RODATA static f32 const lit_4437 = 100.0f;
COMPILER_STRIP_GATE(0x80A68F84, &lit_4437);

/* 80A64C34-80A64CC8 0009F4 0094+00 1/1 0/0 0/0 .text            Draw__11daNpc_Len_cFv */
void daNpc_Len_c::Draw() {
    // NONMATCHING
}

/* 80A64CC8-80A64CE8 000A88 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_Len_cFP10fopAc_ac_c              */
void daNpc_Len_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A64CE8-80A64D40 000AA8 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpc_Len_cFP8J3DJointi
 */
void daNpc_Len_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80A64D40-80A64DB8 000B00 0078+00 2/1 0/0 0/0 .text            getType__11daNpc_Len_cFv */
void daNpc_Len_c::getType() {
    // NONMATCHING
}

/* 80A64DB8-80A64FBC 000B78 0204+00 2/1 0/0 0/0 .text            isDelete__11daNpc_Len_cFv */
void daNpc_Len_c::isDelete() {
    // NONMATCHING
}

/* 80A64FBC-80A6516C 000D7C 01B0+00 1/1 0/0 0/0 .text            reset__11daNpc_Len_cFv */
void daNpc_Len_c::reset() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A68F88-80A68F8C 0000E4 0004+00 1/1 0/0 0/0 .rodata          @4585 */
SECTION_RODATA static f32 const lit_4585 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A68F88, &lit_4585);

/* 80A68F8C-80A68F94 0000E8 0008+00 3/5 0/0 0/0 .rodata          @4587 */
SECTION_RODATA static u8 const lit_4587[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A68F8C, &lit_4587);

/* 80A6516C-80A65278 000F2C 010C+00 1/0 0/0 0/0 .text            afterJntAnm__11daNpc_Len_cFi */
void daNpc_Len_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A68F94-80A68F98 0000F0 0004+00 1/1 0/0 0/0 .rodata          @4637 */
SECTION_RODATA static f32 const lit_4637 = 160.0f;
COMPILER_STRIP_GATE(0x80A68F94, &lit_4637);

/* 80A65278-80A6546C 001038 01F4+00 1/0 0/0 0/0 .text            setParam__11daNpc_Len_cFv */
void daNpc_Len_c::setParam() {
    // NONMATCHING
}

/* 80A6546C-80A6556C 00122C 0100+00 1/0 0/0 0/0 .text            checkChangeEvt__11daNpc_Len_cFv */
void daNpc_Len_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A68F98-80A68F9C 0000F4 0004+00 3/6 0/0 0/0 .rodata          @4695 */
SECTION_RODATA static f32 const lit_4695 = -1.0f;
COMPILER_STRIP_GATE(0x80A68F98, &lit_4695);

/* 80A6556C-80A65624 00132C 00B8+00 2/0 0/0 0/0 .text            setAfterTalkMotion__11daNpc_Len_cFv
 */
void daNpc_Len_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80A65624-80A65710 0013E4 00EC+00 1/1 0/0 0/0 .text            srchActors__11daNpc_Len_cFv */
void daNpc_Len_c::srchActors() {
    // NONMATCHING
}

/* 80A65710-80A657B0 0014D0 00A0+00 1/0 0/0 0/0 .text            evtTalk__11daNpc_Len_cFv */
void daNpc_Len_c::evtTalk() {
    // NONMATCHING
}

/* 80A657B0-80A65878 001570 00C8+00 1/0 0/0 0/0 .text            evtCutProc__11daNpc_Len_cFv */
void daNpc_Len_c::evtCutProc() {
    // NONMATCHING
}

/* 80A65878-80A65A60 001638 01E8+00 1/0 0/0 0/0 .text            action__11daNpc_Len_cFv */
void daNpc_Len_c::action() {
    // NONMATCHING
}

/* 80A65A60-80A65B24 001820 00C4+00 1/0 0/0 0/0 .text            beforeMove__11daNpc_Len_cFv */
void daNpc_Len_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A68F9C-80A68FA0 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4885 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4885 = -30.0f;
COMPILER_STRIP_GATE(0x80A68F9C, &lit_4885);
#pragma pop

/* 80A68FA0-80A68FA4 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4886 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4886 = 15.0f;
COMPILER_STRIP_GATE(0x80A68FA0, &lit_4886);
#pragma pop

/* 80A68FA4-80A68FA8 000100 0004+00 0/1 0/0 0/0 .rodata          @4887 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4887 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80A68FA4, &lit_4887);
#pragma pop

/* 80A68FA8-80A68FAC 000104 0004+00 0/1 0/0 0/0 .rodata          @4888 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4888 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80A68FA8, &lit_4888);
#pragma pop

/* 80A68FAC-80A68FB4 000108 0004+04 0/1 0/0 0/0 .rodata          @4889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4889[1 + 1 /* padding */] = {
    190.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80A68FAC, &lit_4889);
#pragma pop

/* 80A65B24-80A65E28 0018E4 0304+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_Len_cFv */
void daNpc_Len_c::setAttnPos() {
    // NONMATCHING
}

/* 80A65E28-80A65F80 001BE8 0158+00 1/0 0/0 0/0 .text            setCollision__11daNpc_Len_cFv */
void daNpc_Len_c::setCollision() {
    // NONMATCHING
}

/* 80A65F80-80A65F88 001D40 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_Len_cFv */
bool daNpc_Len_c::drawDbgInfo() {
    return false;
}

/* 80A65F88-80A66004 001D48 007C+00 1/1 0/0 0/0 .text            selectAction__11daNpc_Len_cFv */
void daNpc_Len_c::selectAction() {
    // NONMATCHING
}

/* 80A66004-80A66030 001DC4 002C+00 2/2 0/0 0/0 .text
 * chkAction__11daNpc_Len_cFM11daNpc_Len_cFPCvPvPv_i            */
void daNpc_Len_c::chkAction(int (daNpc_Len_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A66030-80A660D8 001DF0 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_Len_cFM11daNpc_Len_cFPCvPvPv_i            */
void daNpc_Len_c::setAction(int (daNpc_Len_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A68FDC-80A68FDC 000138 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A6906E = "R_SP109";
#pragma pop

/* 80A660D8-80A661B4 001E98 00DC+00 1/1 0/0 6/6 .text
 * checkStartDemo13StbEvt__11daNpc_Len_cFP10fopAc_ac_cfffffff   */
BOOL daNpc_Len_c::checkStartDemo13StbEvt(fopAc_ac_c* param_0, f32 param_1, f32 param_2,
                                             f32 param_3, f32 param_4, f32 param_5, f32 param_6,
                                             f32 param_7) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A68FB4-80A68FBC 000110 0008+00 0/1 0/0 0/0 .rodata          @4948 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4948[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A68FB4, &lit_4948);
#pragma pop

/* 80A68FBC-80A68FC4 000118 0008+00 0/1 0/0 0/0 .rodata          @4949 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4949[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A68FBC, &lit_4949);
#pragma pop

/* 80A68FC4-80A68FCC 000120 0008+00 0/1 0/0 0/0 .rodata          @4950 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4950[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A68FC4, &lit_4950);
#pragma pop

/* 80A68FCC-80A68FD4 000128 0008+00 0/1 0/0 0/0 .rodata          @5048 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5048[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80A68FCC, &lit_5048);
#pragma pop

/* 80A68FD4-80A68FD8 000130 0004+00 0/1 0/0 0/0 .rodata          @5151 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5151 = -40.0f;
COMPILER_STRIP_GATE(0x80A68FD4, &lit_5151);
#pragma pop

/* 80A68FDC-80A68FDC 000138 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A69076 = "prm";
SECTION_DEAD static char const* const stringBase_80A6907A = "timer";
SECTION_DEAD static char const* const stringBase_80A69080 = "msgNo";
#pragma pop

/* 80A661B4-80A66664 001F74 04B0+00 1/0 0/0 0/0 .text cutConversationInHotel__11daNpc_Len_cFi */
void daNpc_Len_c::cutConversationInHotel(int param_0) {
    // NONMATCHING
}

/* 80A66664-80A668B8 002424 0254+00 1/0 0/0 0/0 .text            cutHurry__11daNpc_Len_cFi */
void daNpc_Len_c::cutHurry(int param_0) {
    // NONMATCHING
}

/* 80A668B8-80A66C74 002678 03BC+00 1/0 0/0 0/0 .text            cutTakeWoodStatue__11daNpc_Len_cFi
 */
void daNpc_Len_c::cutTakeWoodStatue(int param_0) {
    // NONMATCHING
}

/* 80A66C74-80A6736C 002A34 06F8+00 1/0 0/0 0/0 .text            wait__11daNpc_Len_cFPv */
void daNpc_Len_c::wait(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A68FD8-80A68FDC 000134 0004+00 0/1 0/0 0/0 .rodata          @5702 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5702 = 11.0f / 20.0f;
COMPILER_STRIP_GATE(0x80A68FD8, &lit_5702);
#pragma pop

/* 80A6736C-80A67794 00312C 0428+00 1/0 0/0 0/0 .text            patrol__11daNpc_Len_cFPv */
void daNpc_Len_c::patrol(void* param_0) {
    // NONMATCHING
}

/* 80A67794-80A67AA0 003554 030C+00 3/0 0/0 0/0 .text            talk__11daNpc_Len_cFPv */
void daNpc_Len_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80A67AA0-80A67AC0 003860 0020+00 1/0 0/0 0/0 .text            daNpc_Len_Create__FPv */
static void daNpc_Len_Create(void* param_0) {
    // NONMATCHING
}

/* 80A67AC0-80A67AE0 003880 0020+00 1/0 0/0 0/0 .text            daNpc_Len_Delete__FPv */
static void daNpc_Len_Delete(void* param_0) {
    // NONMATCHING
}

/* 80A67AE0-80A67B00 0038A0 0020+00 1/0 0/0 0/0 .text            daNpc_Len_Execute__FPv */
static void daNpc_Len_Execute(void* param_0) {
    // NONMATCHING
}

/* 80A67B00-80A67B20 0038C0 0020+00 1/0 0/0 0/0 .text            daNpc_Len_Draw__FPv */
static void daNpc_Len_Draw(void* param_0) {
    // NONMATCHING
}

/* 80A67B20-80A67B28 0038E0 0008+00 1/0 0/0 0/0 .text            daNpc_Len_IsDelete__FPv */
static bool daNpc_Len_IsDelete(void* param_0) {
    return true;
}

/* 80A67B28-80A67B58 0038E8 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80A67B58-80A67BA0 003918 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A67BA0-80A67F28 003960 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A67F28-80A67F64 003CE8 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80A67F64-80A67FA0 003D24 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80A67FA0-80A67FE8 003D60 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A67FE8-80A68030 003DA8 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80A68030-80A6806C 003DF0 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A6806C-80A680B4 003E2C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80A680B4-80A680FC 003E74 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80A680FC-80A68500 003EBC 0404+00 1/1 0/0 0/0 .text
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

/* 80A68500-80A68504 0042C0 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80A68504-80A68600 0042C4 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80A68600-80A68604 0043C0 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80A68604-80A6864C 0043C4 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80A6864C-80A686BC 00440C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80A686BC-80A68718 00447C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A68718-80A68788 0044D8 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80A68788-80A687D0 004548 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80A687D0-80A688EC 004590 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80A688EC-80A68AF4 0046AC 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80A68AF4-80A68AF8 0048B4 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80A68AF8-80A68B00 0048B8 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A68B00-80A68B08 0048C0 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A68B08-80A68B10 0048C8 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80A68B14-80A68B2C 0048D4 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A68B2C-80A68B30 0048EC 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80A68B30-80A68B34 0048F0 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80A68B34-80A68B3C 0048F4 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A68B3C-80A68B44 0048FC 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A68B44-80A68B74 004904 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80A68B74-80A68BA4 004934 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80A68BA4-80A68BA8 004964 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A68BA8-80A68BAC 004968 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A68BAC-80A68BB0 00496C 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A68BB0-80A68BB4 004970 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A68BB4-80A68BD0 004974 001C+00 2/2 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80A68BB4(void* _this, int* param_0) {
    // NONMATCHING
}

/* 80A68BD0-80A68C4C 004990 007C+00 1/1 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
extern "C" void func_80A68BD0(void* _this, int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A69A40-80A69A4C 0009B8 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_Len_Param_c */
SECTION_DATA extern void* __vt__17daNpc_Len_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_Len_Param_cFv,
};

/* 80A69A58-80A69A64 000008 000C+00 1/1 0/0 0/0 .bss             @3848 */
static u8 lit_3848[12];

/* 80A69A64-80A69A68 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A68C4C-80A68D00 004A0C 00B4+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_len_cpp */
void __sinit_d_a_npc_len_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A68C4C, __sinit_d_a_npc_len_cpp);
#pragma pop

/* 80A68D00-80A68DE0 004AC0 00E0+00 1/1 0/0 0/0 .text
 * __ct__11daNpc_Len_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Len_c::daNpc_Len_c(daNpcT_faceMotionAnmData_c const* param_0,
                             daNpcT_motionAnmData_c const* param_1,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
                             daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80A68DE0-80A68DE8 004BA0 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__11daNpc_Len_cFv */
u16 daNpc_Len_c::getEyeballMaterialNo() {
    return true;
}

/* 80A68DE8-80A68DF0 004BA8 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__11daNpc_Len_cFv */
s32 daNpc_Len_c::getHeadJointNo() {
    return 4;
}

/* 80A68DF0-80A68DF8 004BB0 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__11daNpc_Len_cFv */
s32 daNpc_Len_c::getNeckJointNo() {
    return 3;
}

/* 80A68DF8-80A68E00 004BB8 0008+00 1/0 0/0 0/0 .text            getBackboneJointNo__11daNpc_Len_cFv
 */
bool daNpc_Len_c::getBackboneJointNo() {
    return true;
}

/* 80A68E00-80A68E10 004BC0 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__11daNpc_Len_cFi
 */
void daNpc_Len_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80A68E10-80A68E20 004BD0 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__11daNpc_Len_cFi
 */
void daNpc_Len_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80A68E20-80A68E28 004BE0 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__11daNpc_Len_cFv */
s32 daNpc_Len_c::getFootLJointNo() {
    return 29;
}

/* 80A68E28-80A68E30 004BE8 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__11daNpc_Len_cFv */
s32 daNpc_Len_c::getFootRJointNo() {
    return 32;
}

/* 80A68E30-80A68E38 004BF0 0008+00 1/0 0/0 0/0 .text            chkXYItems__11daNpc_Len_cFv */
bool daNpc_Len_c::chkXYItems() {
    return true;
}

/* 80A68E38-80A68E80 004BF8 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_Len_Param_cFv */
daNpc_Len_Param_c::~daNpc_Len_Param_c() {
    // NONMATCHING
}

/* 80A68E80-80A68E88 004C40 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80A68E80() {
    // NONMATCHING
}

/* 80A68E88-80A68E90 004C48 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80A68E88() {
    // NONMATCHING
}

/* 80A68FDC-80A68FDC 000138 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
