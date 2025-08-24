/**
 * @file d_a_npc_lud.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_lud.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__11daNpc_Lud_cFv();
extern "C" void create__11daNpc_Lud_cFv();
extern "C" void CreateHeap__11daNpc_Lud_cFv();
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
extern "C" void Delete__11daNpc_Lud_cFv();
extern "C" void Execute__11daNpc_Lud_cFv();
extern "C" void Draw__11daNpc_Lud_cFv();
extern "C" void createHeapCallBack__11daNpc_Lud_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_Lud_cFP8J3DJointi();
extern "C" void getType__11daNpc_Lud_cFv();
extern "C" void isDelete__11daNpc_Lud_cFv();
extern "C" void reset__11daNpc_Lud_cFv();
extern "C" void afterJntAnm__11daNpc_Lud_cFi();
extern "C" void setParam__11daNpc_Lud_cFv();
extern "C" void checkChangeEvt__11daNpc_Lud_cFv();
extern "C" void setAfterTalkMotion__11daNpc_Lud_cFv();
extern "C" void srchActors__11daNpc_Lud_cFv();
extern "C" void evtTalk__11daNpc_Lud_cFv();
extern "C" void evtCutProc__11daNpc_Lud_cFv();
extern "C" void action__11daNpc_Lud_cFv();
extern "C" void beforeMove__11daNpc_Lud_cFv();
extern "C" void setAttnPos__11daNpc_Lud_cFv();
extern "C" void setCollision__11daNpc_Lud_cFv();
extern "C" bool drawDbgInfo__11daNpc_Lud_cFv();
extern "C" void drawOtherMdl__11daNpc_Lud_cFv();
extern "C" void setBowlAnm__11daNpc_Lud_cFiif();
extern "C" void afterSetMotionAnm__11daNpc_Lud_cFiifi();
extern "C" void selectAction__11daNpc_Lud_cFv();
extern "C" void chkAction__11daNpc_Lud_cFM11daNpc_Lud_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_Lud_cFM11daNpc_Lud_cFPCvPvPv_i();
extern "C" void mop__11daNpc_Lud_cFii();
extern "C" void cutHurry__11daNpc_Lud_cFi();
extern "C" void cutConversationInHotel__11daNpc_Lud_cFi();
extern "C" void cutConversationAboutDeathMt__11daNpc_Lud_cFi();
extern "C" void cutConversationAboutGoron__11daNpc_Lud_cFi();
extern "C" void cutNurse__11daNpc_Lud_cFi();
extern "C" void cutClothTry__11daNpc_Lud_cFi();
extern "C" void cutThankYou__11daNpc_Lud_cFi();
extern "C" void wait__11daNpc_Lud_cFPv();
extern "C" void nurse__11daNpc_Lud_cFPv();
extern "C" void giveSoup__11daNpc_Lud_cFPv();
extern "C" void talk__11daNpc_Lud_cFPv();
extern "C" static void daNpc_Lud_Create__FPv();
extern "C" static void daNpc_Lud_Delete__FPv();
extern "C" static void daNpc_Lud_Execute__FPv();
extern "C" static void daNpc_Lud_Draw__FPv();
extern "C" static bool daNpc_Lud_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
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
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_80A6FAD4(void* _this, int*);
extern "C" void __sinit_d_a_npc_lud_cpp();
extern "C" void
__ct__11daNpc_Lud_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__11daNpc_Lud_cFv();
extern "C" s32 getHeadJointNo__11daNpc_Lud_cFv();
extern "C" s32 getNeckJointNo__11daNpc_Lud_cFv();
extern "C" bool getBackboneJointNo__11daNpc_Lud_cFv();
extern "C" void checkChangeJoint__11daNpc_Lud_cFi();
extern "C" void checkRemoveJoint__11daNpc_Lud_cFi();
extern "C" void __dt__17daNpc_Lud_Param_cFv();
extern "C" static void func_80A6FD58();
extern "C" static void func_80A6FD60();
extern "C" u8 const m__17daNpc_Lud_Param_c[144];
extern "C" extern char const* const d_a_npc_lud__stringBase0;
extern "C" void* mCutNameList__11daNpc_Lud_c[8];
extern "C" u8 mCutList__11daNpc_Lud_c[96];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
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
extern "C" void checkEndSequence__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz();
extern "C" void calcJntRad__15daNpcT_JntAnm_cFfff();
extern "C" void setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs();
extern "C" void calc__19daNpcT_DmgStagger_cFi();
extern "C" void tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void getTrnsfrmKeyAnmP__8daNpcT_cFPCci();
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
extern "C" void hitChk__8daNpcT_cFP12dCcD_GObjInfUl();
extern "C" void setDamage__8daNpcT_cFiii();
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
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
extern "C" void cLib_chaseS__FPsss();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void hide__13J3DShapeTableFv();
extern "C" void show__13J3DShapeTableFv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
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
extern "C" void checkStartDemo13StbEvt__11daNpc_Len_cFP10fopAc_ac_cfffffff();
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80A6FECC-80A6FECC 000150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A6FECC = "";
SECTION_DEAD static char const* const stringBase_80A6FECD = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80A6FED9 = "DEMO13_STB";
SECTION_DEAD static char const* const stringBase_80A6FEE4 = "CONVERSATION_ABOUT_GORON";
SECTION_DEAD static char const* const stringBase_80A6FEFD = "NURSE";
SECTION_DEAD static char const* const stringBase_80A6FF03 = "GO_AHEAD";
SECTION_DEAD static char const* const stringBase_80A6FF0C = "Lud";
SECTION_DEAD static char const* const stringBase_80A6FF10 = "Lud_TW";
SECTION_DEAD static char const* const stringBase_80A6FF17 = "Lud1";
SECTION_DEAD static char const* const stringBase_80A6FF1C = "Lud2";
SECTION_DEAD static char const* const stringBase_80A6FF21 = "Len1";
SECTION_DEAD static char const* const stringBase_80A6FF26 = "HURRY";
SECTION_DEAD static char const* const stringBase_80A6FF2C = "CONVERSATION_IN_HOTEL";
SECTION_DEAD static char const* const stringBase_80A6FF42 = "CONVERSATION_ABOUT_DEATHMT";
SECTION_DEAD static char const* const stringBase_80A6FF5D = "CLOTH_TRY";
SECTION_DEAD static char const* const stringBase_80A6FF67 = "THANK_YOU";
#pragma pop

/* 80A6FFEC-80A70014 000020 0028+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[40] = {
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x28,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x04,
};

/* 80A70014-80A70044 -00001 0030+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[12] = {
    (void*)&d_a_npc_lud__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_lud__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_lud__stringBase0) + 0xD),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_lud__stringBase0) + 0x18),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_lud__stringBase0) + 0x31),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_lud__stringBase0) + 0x37),
    (void*)0x00000004,
};
#pragma pop

/* 80A70044-80A7005C -00001 0018+00 3/4 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[6] = {
    (void*)&d_a_npc_lud__stringBase0,
    (void*)(((char*)&d_a_npc_lud__stringBase0) + 0x40),
    (void*)(((char*)&d_a_npc_lud__stringBase0) + 0x44),
    (void*)(((char*)&d_a_npc_lud__stringBase0) + 0x4B),
    (void*)(((char*)&d_a_npc_lud__stringBase0) + 0x50),
    (void*)(((char*)&d_a_npc_lud__stringBase0) + 0x55),
};

/* 80A7005C-80A70060 000090 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u8 l_loadResPtrn0[3 + 1 /* padding */] = {
    0x01,
    0x03,
    0xFF,
    /* padding */
    0x00,
};

/* 80A70060-80A70064 000094 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u8 l_loadResPtrn1[3 + 1 /* padding */] = {
    0x01,
    0x02,
    0xFF,
    /* padding */
    0x00,
};

/* 80A70064-80A70068 000098 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn2 */
SECTION_DATA static u8 l_loadResPtrn2[3 + 1 /* padding */] = {
    0x01,
    0x04,
    0xFF,
    /* padding */
    0x00,
};

/* 80A70068-80A70070 00009C 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn9 */
SECTION_DATA static u8 l_loadResPtrn9[5 + 3 /* padding */] = {
    0x01,
    0x02,
    0x03,
    0x04,
    0xFF,
    /* padding */
    0x00,
    0x00,
    0x00,
};

/* 80A70070-80A70094 -00001 0024+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[9] = {
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn2, (void*)&l_loadResPtrn2,
    (void*)&l_loadResPtrn2, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn9,
};

/* 80A70094-80A702C4 0000C8 0230+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[560] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x31,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x39,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x2C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x35,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A702C4-80A70510 0002F8 024C+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[588] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A70510-80A70640 000544 0130+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[304] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0x00, 0x01, 0x00, 0x05, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0x00, 0x01, 0x00, 0x04, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x0C, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A70640-80A70780 000674 0140+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[320] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0x00, 0x01, 0x00, 0x0B, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0x00, 0x01, 0x00, 0x0A, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x01, 0x00, 0x0D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0x03, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A70780-80A707A0 -00001 0020+00 1/1 0/0 0/0 .data            mCutNameList__11daNpc_Lud_c */
SECTION_DATA void* daNpc_Lud_c::mCutNameList[8] = {
    (void*)&d_a_npc_lud__stringBase0,
    (void*)(((char*)&d_a_npc_lud__stringBase0) + 0x5A),
    (void*)(((char*)&d_a_npc_lud__stringBase0) + 0x60),
    (void*)(((char*)&d_a_npc_lud__stringBase0) + 0x76),
    (void*)(((char*)&d_a_npc_lud__stringBase0) + 0x18),
    (void*)(((char*)&d_a_npc_lud__stringBase0) + 0x31),
    (void*)(((char*)&d_a_npc_lud__stringBase0) + 0x91),
    (void*)(((char*)&d_a_npc_lud__stringBase0) + 0x9B),
};

/* 80A707A0-80A707AC -00001 000C+00 0/1 0/0 0/0 .data            @3833 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3833[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutHurry__11daNpc_Lud_cFi,
};
#pragma pop

/* 80A707AC-80A707B8 -00001 000C+00 0/1 0/0 0/0 .data            @3834 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3834[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationInHotel__11daNpc_Lud_cFi,
};
#pragma pop

/* 80A707B8-80A707C4 -00001 000C+00 0/1 0/0 0/0 .data            @3835 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3835[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutDeathMt__11daNpc_Lud_cFi,
};
#pragma pop

/* 80A707C4-80A707D0 -00001 000C+00 0/1 0/0 0/0 .data            @3836 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3836[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutGoron__11daNpc_Lud_cFi,
};
#pragma pop

/* 80A707D0-80A707DC -00001 000C+00 0/1 0/0 0/0 .data            @3837 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3837[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutNurse__11daNpc_Lud_cFi,
};
#pragma pop

/* 80A707DC-80A707E8 -00001 000C+00 0/1 0/0 0/0 .data            @3838 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3838[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutClothTry__11daNpc_Lud_cFi,
};
#pragma pop

/* 80A707E8-80A707F4 -00001 000C+00 0/1 0/0 0/0 .data            @3839 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3839[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutThankYou__11daNpc_Lud_cFi,
};
#pragma pop

/* 80A707F4-80A70854 000828 0060+00 1/2 0/0 0/0 .data            mCutList__11daNpc_Lud_c */
SECTION_DATA u8 daNpc_Lud_c::mCutList[96] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A70854-80A70874 -00001 0020+00 1/1 0/0 0/0 .data            @4501 */
SECTION_DATA static void* lit_4501[8] = {
    (void*)(((char*)getType__11daNpc_Lud_cFv) + 0x28),
    (void*)(((char*)getType__11daNpc_Lud_cFv) + 0x30),
    (void*)(((char*)getType__11daNpc_Lud_cFv) + 0x38),
    (void*)(((char*)getType__11daNpc_Lud_cFv) + 0x40),
    (void*)(((char*)getType__11daNpc_Lud_cFv) + 0x48),
    (void*)(((char*)getType__11daNpc_Lud_cFv) + 0x50),
    (void*)(((char*)getType__11daNpc_Lud_cFv) + 0x58),
    (void*)(((char*)getType__11daNpc_Lud_cFv) + 0x60),
};

/* 80A70874-80A70894 -00001 0020+00 1/1 0/0 0/0 .data            @4528 */
SECTION_DATA static void* lit_4528[8] = {
    (void*)(((char*)isDelete__11daNpc_Lud_cFv) + 0x34),
    (void*)(((char*)isDelete__11daNpc_Lud_cFv) + 0x64),
    (void*)(((char*)isDelete__11daNpc_Lud_cFv) + 0x6C),
    (void*)(((char*)isDelete__11daNpc_Lud_cFv) + 0x9C),
    (void*)(((char*)isDelete__11daNpc_Lud_cFv) + 0xCC),
    (void*)(((char*)isDelete__11daNpc_Lud_cFv) + 0xFC),
    (void*)(((char*)isDelete__11daNpc_Lud_cFv) + 0x12C),
    (void*)(((char*)isDelete__11daNpc_Lud_cFv) + 0x15C),
};

/* 80A70894-80A708A0 -00001 000C+00 1/1 0/0 0/0 .data            @4639 */
SECTION_DATA static void* lit_4639[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Lud_cFPv,
};

/* 80A708A0-80A708AC -00001 000C+00 1/1 0/0 0/0 .data            @4698 */
SECTION_DATA static void* lit_4698[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Lud_cFPv,
};

/* 80A708AC-80A708B8 -00001 000C+00 1/1 0/0 0/0 .data            @4703 */
SECTION_DATA static void* lit_4703[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Lud_cFPv,
};

/* 80A708B8-80A70960 0008EC 00A8+00 1/1 0/0 0/0 .data            bowlAnmData$5135 */
SECTION_DATA static u8 bowlAnmData[168] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x04,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
};

/* 80A70960-80A7096C -00001 000C+00 0/1 0/0 0/0 .data            @5162 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5162[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)nurse__11daNpc_Lud_cFPv,
};
#pragma pop

/* 80A7096C-80A70978 -00001 000C+00 0/1 0/0 0/0 .data            @5164 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5164[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)giveSoup__11daNpc_Lud_cFPv,
};
#pragma pop

/* 80A70978-80A70984 -00001 000C+00 0/1 0/0 0/0 .data            @5166 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5166[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)nurse__11daNpc_Lud_cFPv,
};
#pragma pop

/* 80A70984-80A70990 -00001 000C+00 0/1 0/0 0/0 .data            @5168 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5168[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_Lud_cFPv,
};
#pragma pop

/* 80A70990-80A709B0 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Lud_MethodTable */
static actor_method_class daNpc_Lud_MethodTable = {
    (process_method_func)daNpc_Lud_Create__FPv,
    (process_method_func)daNpc_Lud_Delete__FPv,
    (process_method_func)daNpc_Lud_Execute__FPv,
    (process_method_func)daNpc_Lud_IsDelete__FPv,
    (process_method_func)daNpc_Lud_Draw__FPv,
};

/* 80A709B0-80A709E0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_LUD */
extern actor_process_profile_definition g_profile_NPC_LUD = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_LUD,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_Lud_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  338,                    // mPriority
  &daNpc_Lud_MethodTable, // sub_method
  0x00040108,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80A709E0-80A709EC 000A14 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80A709EC-80A709F8 000A20 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A709F8-80A70A1C 000A2C 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A6FD60,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A6FD58,
};

/* 80A70A1C-80A70A28 000A50 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80A70A28-80A70A34 000A5C 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80A70A34-80A70A40 000A68 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80A70A40-80A70A4C 000A74 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80A70A4C-80A70A58 000A80 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80A70A58-80A70A64 000A8C 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80A70A64-80A70A70 000A98 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80A70A70-80A70A7C 000AA4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80A70A7C-80A70B40 000AB0 00C4+00 2/2 0/0 0/0 .data            __vt__11daNpc_Lud_c */
SECTION_DATA extern void* __vt__11daNpc_Lud_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_Lud_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__11daNpc_Lud_cFi,
    (void*)checkRemoveJoint__11daNpc_Lud_cFi,
    (void*)getBackboneJointNo__11daNpc_Lud_cFv,
    (void*)getNeckJointNo__11daNpc_Lud_cFv,
    (void*)getHeadJointNo__11daNpc_Lud_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__11daNpc_Lud_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__11daNpc_Lud_cFi,
    (void*)setParam__11daNpc_Lud_cFv,
    (void*)checkChangeEvt__11daNpc_Lud_cFv,
    (void*)evtTalk__11daNpc_Lud_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__11daNpc_Lud_cFv,
    (void*)setAfterTalkMotion__11daNpc_Lud_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__11daNpc_Lud_cFv,
    (void*)beforeMove__11daNpc_Lud_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__11daNpc_Lud_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__11daNpc_Lud_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__11daNpc_Lud_cFv,
    (void*)drawOtherMdl__11daNpc_Lud_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__11daNpc_Lud_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__8daNpcT_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 80A6ABAC-80A6ACF4 0000EC 0148+00 1/0 0/0 0/0 .text            __dt__11daNpc_Lud_cFv */
daNpc_Lud_c::~daNpc_Lud_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A6FD7C-80A6FE0C 000000 0090+00 10/10 0/0 0/0 .rodata          m__17daNpc_Lud_Param_c */
SECTION_RODATA u8 const daNpc_Lud_Param_c::m[144] = {
    0x43, 0x20, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0xC1, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x70, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
    0x42, 0x20, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00, 0x42, 0xB4, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A6FD7C, &daNpc_Lud_Param_c::m);

/* 80A6FE0C-80A6FE30 000090 0024+00 0/1 0/0 0/0 .rodata          heapSize$3993 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[36] = {
    0x00, 0x00, 0x3E, 0xF0, 0x00, 0x00, 0x3E, 0xF0, 0x00, 0x00, 0x3E, 0xF0,
    0x00, 0x00, 0x3E, 0xF0, 0x00, 0x00, 0x46, 0xD0, 0x00, 0x00, 0x50, 0x00,
    0x00, 0x00, 0x46, 0xE0, 0x00, 0x00, 0x3E, 0xF0, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A6FE0C, &heapSize);
#pragma pop

/* 80A6FE30-80A6FE34 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4059 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4059 = -200.0f;
COMPILER_STRIP_GATE(0x80A6FE30, &lit_4059);
#pragma pop

/* 80A6FE34-80A6FE38 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4060 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4060 = -100.0f;
COMPILER_STRIP_GATE(0x80A6FE34, &lit_4060);
#pragma pop

/* 80A6FE38-80A6FE3C 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4061 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4061 = 200.0f;
COMPILER_STRIP_GATE(0x80A6FE38, &lit_4061);
#pragma pop

/* 80A6FE3C-80A6FE40 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4062 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4062 = 300.0f;
COMPILER_STRIP_GATE(0x80A6FE3C, &lit_4062);
#pragma pop

/* 80A6FE40-80A6FE44 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4063 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4063 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80A6FE40, &lit_4063);
#pragma pop

/* 80A6ACF4-80A6AFA8 000234 02B4+00 1/1 0/0 0/0 .text            create__11daNpc_Lud_cFv */
void daNpc_Lud_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A6FE44-80A6FE48 0000C8 0004+00 10/18 0/0 0/0 .rodata          @4218 */
SECTION_RODATA static u8 const lit_4218[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A6FE44, &lit_4218);

/* 80A6FE48-80A6FE4C 0000CC 0004+00 0/2 0/0 0/0 .rodata          @4219 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4219 = 65536.0f;
COMPILER_STRIP_GATE(0x80A6FE48, &lit_4219);
#pragma pop

/* 80A6FE4C-80A6FE50 0000D0 0004+00 0/3 0/0 0/0 .rodata          @4220 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4220 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A6FE4C, &lit_4220);
#pragma pop

/* 80A6FE50-80A6FE54 0000D4 0004+00 2/5 0/0 0/0 .rodata          @4421 */
SECTION_RODATA static f32 const lit_4421 = 1.0f;
COMPILER_STRIP_GATE(0x80A6FE50, &lit_4421);

/* 80A6AFA8-80A6B440 0004E8 0498+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_Lud_cFv */
void daNpc_Lud_c::CreateHeap() {
    // NONMATCHING
}

/* 80A6B440-80A6B47C 000980 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A6B47C-80A6B494 0009BC 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A6B494-80A6B4D0 0009D4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A6B4D0-80A6B4E8 000A10 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A6B4E8-80A6B530 000A28 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A6B530-80A6B554 000A70 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A6B554-80A6B590 000A94 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A6B590-80A6B5A8 000AD0 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A6B5A8-80A6B5E4 000AE8 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A6B5E4-80A6B5FC 000B24 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A6B5FC-80A6B630 000B3C 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_Lud_cFv */
void daNpc_Lud_c::Delete() {
    // NONMATCHING
}

/* 80A6B630-80A6B650 000B70 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_Lud_cFv */
void daNpc_Lud_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A6FE54-80A6FE58 0000D8 0004+00 1/1 0/0 0/0 .rodata          @4470 */
SECTION_RODATA static f32 const lit_4470 = 100.0f;
COMPILER_STRIP_GATE(0x80A6FE54, &lit_4470);

/* 80A6B650-80A6B6E4 000B90 0094+00 1/1 0/0 0/0 .text            Draw__11daNpc_Lud_cFv */
void daNpc_Lud_c::Draw() {
    // NONMATCHING
}

/* 80A6B6E4-80A6B704 000C24 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_Lud_cFP10fopAc_ac_c              */
void daNpc_Lud_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A6B704-80A6B75C 000C44 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpc_Lud_cFP8J3DJointi
 */
void daNpc_Lud_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80A6B75C-80A6B7CC 000C9C 0070+00 2/1 0/0 0/0 .text            getType__11daNpc_Lud_cFv */
void daNpc_Lud_c::getType() {
    // NONMATCHING
}

/* 80A6B7CC-80A6B954 000D0C 0188+00 2/1 0/0 0/0 .text            isDelete__11daNpc_Lud_cFv */
void daNpc_Lud_c::isDelete() {
    // NONMATCHING
}

/* 80A6B954-80A6BB1C 000E94 01C8+00 1/1 0/0 0/0 .text            reset__11daNpc_Lud_cFv */
void daNpc_Lud_c::reset() {
    // NONMATCHING
}

/* 80A6BB1C-80A6BBA8 00105C 008C+00 1/0 0/0 0/0 .text            afterJntAnm__11daNpc_Lud_cFi */
void daNpc_Lud_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A6FE58-80A6FE5C 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4633 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4633 = 120.0f;
COMPILER_STRIP_GATE(0x80A6FE58, &lit_4633);
#pragma pop

/* 80A6FE5C-80A6FE60 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4634 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4634 = 500.0f;
COMPILER_STRIP_GATE(0x80A6FE5C, &lit_4634);
#pragma pop

/* 80A6BBA8-80A6BD44 0010E8 019C+00 1/0 0/0 0/0 .text            setParam__11daNpc_Lud_cFv */
void daNpc_Lud_c::setParam() {
    // NONMATCHING
}

/* 80A6BD44-80A6BE6C 001284 0128+00 1/0 0/0 0/0 .text            checkChangeEvt__11daNpc_Lud_cFv */
void daNpc_Lud_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A6FE60-80A6FE64 0000E4 0004+00 6/9 0/0 0/0 .rodata          @4680 */
SECTION_RODATA static f32 const lit_4680 = -1.0f;
COMPILER_STRIP_GATE(0x80A6FE60, &lit_4680);

/* 80A6BE6C-80A6BEE4 0013AC 0078+00 1/0 0/0 0/0 .text            setAfterTalkMotion__11daNpc_Lud_cFv
 */
void daNpc_Lud_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80A6BEE4-80A6BFA4 001424 00C0+00 1/1 0/0 0/0 .text            srchActors__11daNpc_Lud_cFv */
void daNpc_Lud_c::srchActors() {
    // NONMATCHING
}

/* 80A6BFA4-80A6C044 0014E4 00A0+00 1/0 0/0 0/0 .text            evtTalk__11daNpc_Lud_cFv */
void daNpc_Lud_c::evtTalk() {
    // NONMATCHING
}

/* 80A6C044-80A6C10C 001584 00C8+00 1/0 0/0 0/0 .text            evtCutProc__11daNpc_Lud_cFv */
void daNpc_Lud_c::evtCutProc() {
    // NONMATCHING
}

/* 80A6C10C-80A6C2E4 00164C 01D8+00 1/0 0/0 0/0 .text            action__11daNpc_Lud_cFv */
void daNpc_Lud_c::action() {
    // NONMATCHING
}

/* 80A6C2E4-80A6C3A8 001824 00C4+00 1/0 0/0 0/0 .text            beforeMove__11daNpc_Lud_cFv */
void daNpc_Lud_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A6FE64-80A6FE68 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4927 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4927 = 5.0f;
COMPILER_STRIP_GATE(0x80A6FE64, &lit_4927);
#pragma pop

/* 80A6FE68-80A6FE6C 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4928 = 30.0f;
COMPILER_STRIP_GATE(0x80A6FE68, &lit_4928);
#pragma pop

/* 80A6FE6C-80A6FE70 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4929 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4929 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80A6FE6C, &lit_4929);
#pragma pop

/* 80A6FE70-80A6FE74 0000F4 0004+00 0/2 0/0 0/0 .rodata          @4930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4930 = 94.0f;
COMPILER_STRIP_GATE(0x80A6FE70, &lit_4930);
#pragma pop

/* 80A6FE74-80A6FE78 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4931 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4931 = 160.0f;
COMPILER_STRIP_GATE(0x80A6FE74, &lit_4931);
#pragma pop

/* 80A6FE78-80A6FE7C 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4932 = -79.0f;
COMPILER_STRIP_GATE(0x80A6FE78, &lit_4932);
#pragma pop

/* 80A6FE7C-80A6FE84 000100 0008+00 1/3 0/0 0/0 .rodata          @4934 */
SECTION_RODATA static u8 const lit_4934[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A6FE7C, &lit_4934);

/* 80A6C3A8-80A6C8EC 0018E8 0544+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_Lud_cFv */
void daNpc_Lud_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A6FE84-80A6FE8C 000108 0008+00 0/1 0/0 0/0 .rodata          @4994 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4994[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A6FE84, &lit_4994);
#pragma pop

/* 80A6FE8C-80A6FE94 000110 0008+00 0/1 0/0 0/0 .rodata          @4995 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4995[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A6FE8C, &lit_4995);
#pragma pop

/* 80A6FE94-80A6FE9C 000118 0008+00 0/1 0/0 0/0 .rodata          @4996 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4996[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A6FE94, &lit_4996);
#pragma pop

/* 80A6FE9C-80A6FEA0 000120 0004+00 0/1 0/0 0/0 .rodata          @5046 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5046 = 0x43050F5C;
COMPILER_STRIP_GATE(0x80A6FE9C, &lit_5046);
#pragma pop

/* 80A6FEA0-80A6FEA4 000124 0004+00 0/1 0/0 0/0 .rodata          @5047 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5047 = 66.0f / 25.0f;
COMPILER_STRIP_GATE(0x80A6FEA0, &lit_5047);
#pragma pop

/* 80A6FEA4-80A6FEA8 000128 0004+00 0/1 0/0 0/0 .rodata          @5048 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5048 = -89.0f;
COMPILER_STRIP_GATE(0x80A6FEA4, &lit_5048);
#pragma pop

/* 80A6C8EC-80A6CA9C 001E2C 01B0+00 1/0 0/0 0/0 .text            setCollision__11daNpc_Lud_cFv */
void daNpc_Lud_c::setCollision() {
    // NONMATCHING
}

/* 80A6CA9C-80A6CAA4 001FDC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_Lud_cFv */
bool daNpc_Lud_c::drawDbgInfo() {
    return false;
}

/* ############################################################################################## */
/* 80A6FEA8-80A6FEB0 00012C 0008+00 1/1 0/0 0/0 .rodata          jointNo$5056 */
SECTION_RODATA static u8 const jointNo[8] = {
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x14,
};
COMPILER_STRIP_GATE(0x80A6FEA8, &jointNo);

/* 80A6CAA4-80A6CC2C 001FE4 0188+00 1/0 0/0 0/0 .text            drawOtherMdl__11daNpc_Lud_cFv */
void daNpc_Lud_c::drawOtherMdl() {
    // NONMATCHING
}

/* 80A6CC2C-80A6CCFC 00216C 00D0+00 1/1 0/0 0/0 .text            setBowlAnm__11daNpc_Lud_cFiif */
void daNpc_Lud_c::setBowlAnm(int param_0, int param_1, f32 param_2) {
    // NONMATCHING
}

/* 80A6CCFC-80A6CD30 00223C 0034+00 1/0 0/0 0/0 .text afterSetMotionAnm__11daNpc_Lud_cFiifi */
void daNpc_Lud_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    // NONMATCHING
}

/* 80A6CD30-80A6CDF4 002270 00C4+00 1/1 0/0 0/0 .text            selectAction__11daNpc_Lud_cFv */
void daNpc_Lud_c::selectAction() {
    // NONMATCHING
}

/* 80A6CDF4-80A6CE20 002334 002C+00 2/2 0/0 0/0 .text
 * chkAction__11daNpc_Lud_cFM11daNpc_Lud_cFPCvPvPv_i            */
void daNpc_Lud_c::chkAction(int (daNpc_Lud_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A6CE20-80A6CEC8 002360 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_Lud_cFM11daNpc_Lud_cFPCvPvPv_i            */
void daNpc_Lud_c::setAction(int (daNpc_Lud_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A6FEB0-80A6FEB4 000134 0004+00 1/1 0/0 0/0 .rodata          @5221 */
SECTION_RODATA static f32 const lit_5221 = 4.0f;
COMPILER_STRIP_GATE(0x80A6FEB0, &lit_5221);

/* 80A6CEC8-80A6D01C 002408 0154+00 1/1 0/0 0/0 .text            mop__11daNpc_Lud_cFii */
void daNpc_Lud_c::mop(int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A6FECC-80A6FECC 000150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A6FF71 = "prm";
#pragma pop

/* 80A6D01C-80A6D160 00255C 0144+00 1/0 0/0 0/0 .text            cutHurry__11daNpc_Lud_cFi */
void daNpc_Lud_c::cutHurry(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A6FECC-80A6FECC 000150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A6FF75 = "timer";
SECTION_DEAD static char const* const stringBase_80A6FF7B = "timer1";
SECTION_DEAD static char const* const stringBase_80A6FF82 = "timer2";
#pragma pop

/* 80A6D160-80A6D450 0026A0 02F0+00 1/0 0/0 0/0 .text cutConversationInHotel__11daNpc_Lud_cFi */
void daNpc_Lud_c::cutConversationInHotel(int param_0) {
    // NONMATCHING
}

/* 80A6D450-80A6D708 002990 02B8+00 1/0 0/0 0/0 .text cutConversationAboutDeathMt__11daNpc_Lud_cFi
 */
void daNpc_Lud_c::cutConversationAboutDeathMt(int param_0) {
    // NONMATCHING
}

/* 80A6D708-80A6D998 002C48 0290+00 1/0 0/0 0/0 .text cutConversationAboutGoron__11daNpc_Lud_cFi
 */
void daNpc_Lud_c::cutConversationAboutGoron(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A6FEB4-80A6FEC0 000138 000C+00 0/1 0/0 0/0 .rodata          @5494 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5494[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A6FEB4, &lit_5494);
#pragma pop

/* 80A6FEC0-80A6FECC 000144 000C+00 0/1 0/0 0/0 .rodata          @5502 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5502[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80A6FEC0, &lit_5502);
#pragma pop

/* 80A6FECC-80A6FECC 000150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A6FF89 = "msgNo";
#pragma pop

/* 80A6D998-80A6DC48 002ED8 02B0+00 1/0 0/0 0/0 .text            cutNurse__11daNpc_Lud_cFi */
void daNpc_Lud_c::cutNurse(int param_0) {
    // NONMATCHING
}

/* 80A6DC48-80A6DCE8 003188 00A0+00 1/0 0/0 0/0 .text            cutClothTry__11daNpc_Lud_cFi */
void daNpc_Lud_c::cutClothTry(int param_0) {
    // NONMATCHING
}

/* 80A6DCE8-80A6DE14 003228 012C+00 1/0 0/0 0/0 .text            cutThankYou__11daNpc_Lud_cFi */
void daNpc_Lud_c::cutThankYou(int param_0) {
    // NONMATCHING
}

/* 80A6DE14-80A6E32C 003354 0518+00 1/0 0/0 0/0 .text            wait__11daNpc_Lud_cFPv */
void daNpc_Lud_c::wait(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A6FECC-80A6FECC 000150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A6FF8F = "EVT_CONVERSATION_IN_HOTEL1_e";
SECTION_DEAD static char const* const stringBase_80A6FFAC = "EVT_CONVERSATION_IN_HOTEL2_e";
#pragma pop

/* 80A6E32C-80A6E6EC 00386C 03C0+00 2/0 0/0 0/0 .text            nurse__11daNpc_Lud_cFPv */
void daNpc_Lud_c::nurse(void* param_0) {
    // NONMATCHING
}

/* 80A6E6EC-80A6E7EC 003C2C 0100+00 1/0 0/0 0/0 .text            giveSoup__11daNpc_Lud_cFPv */
void daNpc_Lud_c::giveSoup(void* param_0) {
    // NONMATCHING
}

/* 80A6E7EC-80A6E9FC 003D2C 0210+00 3/0 0/0 0/0 .text            talk__11daNpc_Lud_cFPv */
void daNpc_Lud_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80A6E9FC-80A6EA1C 003F3C 0020+00 1/0 0/0 0/0 .text            daNpc_Lud_Create__FPv */
static void daNpc_Lud_Create(void* param_0) {
    // NONMATCHING
}

/* 80A6EA1C-80A6EA3C 003F5C 0020+00 1/0 0/0 0/0 .text            daNpc_Lud_Delete__FPv */
static void daNpc_Lud_Delete(void* param_0) {
    // NONMATCHING
}

/* 80A6EA3C-80A6EA5C 003F7C 0020+00 1/0 0/0 0/0 .text            daNpc_Lud_Execute__FPv */
static void daNpc_Lud_Execute(void* param_0) {
    // NONMATCHING
}

/* 80A6EA5C-80A6EA7C 003F9C 0020+00 1/0 0/0 0/0 .text            daNpc_Lud_Draw__FPv */
static void daNpc_Lud_Draw(void* param_0) {
    // NONMATCHING
}

/* 80A6EA7C-80A6EA84 003FBC 0008+00 1/0 0/0 0/0 .text            daNpc_Lud_IsDelete__FPv */
static bool daNpc_Lud_IsDelete(void* param_0) {
    return true;
}

/* 80A6EA84-80A6EAB4 003FC4 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80A6EAB4-80A6EAFC 003FF4 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A6EAFC-80A6EE84 00403C 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A6EE84-80A6EEC0 0043C4 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80A6EEC0-80A6EEFC 004400 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80A6EEFC-80A6EF44 00443C 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A6EF44-80A6EF80 004484 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A6EF80-80A6EFC8 0044C0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80A6EFC8-80A6F010 004508 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80A6F010-80A6F414 004550 0404+00 1/1 0/0 0/0 .text
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

/* 80A6F414-80A6F418 004954 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80A6F418-80A6F514 004958 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80A6F514-80A6F518 004A54 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80A6F518-80A6F560 004A58 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80A6F560-80A6F5D0 004AA0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80A6F5D0-80A6F62C 004B10 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A6F62C-80A6F69C 004B6C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80A6F69C-80A6F6E4 004BDC 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80A6F6E4-80A6F800 004C24 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80A6F800-80A6FA08 004D40 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80A6FA08-80A6FA0C 004F48 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80A6FA1C-80A6FA24 004F5C 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A6FA24-80A6FA2C 004F64 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A6FA2C-80A6FA34 004F6C 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80A6FA38-80A6FA40 004F78 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80A6FA40-80A6FA58 004F80 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A6FA58-80A6FA5C 004F98 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80A6FA5C-80A6FA64 004F9C 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A6FA64-80A6FA94 004FA4 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80A6FA94-80A6FAC4 004FD4 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80A6FAC4-80A6FAC8 005004 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A6FAC8-80A6FACC 005008 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A6FACC-80A6FAD0 00500C 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A6FAD0-80A6FAD4 005010 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A6FAD4-80A6FAF0 005014 001C+00 4/4 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80A6FAD4(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A70B40-80A70B4C 000B74 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_Lud_Param_c */
SECTION_DATA extern void* __vt__17daNpc_Lud_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_Lud_Param_cFv,
};

/* 80A70B58-80A70B64 000008 000C+00 1/1 0/0 0/0 .bss             @3840 */
static u8 lit_3840[12];

/* 80A70B64-80A70B68 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A6FAF0-80A6FC04 005030 0114+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_lud_cpp */
void __sinit_d_a_npc_lud_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A6FAF0, __sinit_d_a_npc_lud_cpp);
#pragma pop

/* 80A6FC04-80A6FCD0 005144 00CC+00 1/1 0/0 0/0 .text
 * __ct__11daNpc_Lud_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Lud_c::daNpc_Lud_c(daNpcT_faceMotionAnmData_c const* param_0,
                             daNpcT_motionAnmData_c const* param_1,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
                             daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80A6FCD0-80A6FCD8 005210 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__11daNpc_Lud_cFv */
u16 daNpc_Lud_c::getEyeballMaterialNo() {
    return true;
}

/* 80A6FCD8-80A6FCE0 005218 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__11daNpc_Lud_cFv */
s32 daNpc_Lud_c::getHeadJointNo() {
    return 4;
}

/* 80A6FCE0-80A6FCE8 005220 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__11daNpc_Lud_cFv */
s32 daNpc_Lud_c::getNeckJointNo() {
    return 3;
}

/* 80A6FCE8-80A6FCF0 005228 0008+00 1/0 0/0 0/0 .text            getBackboneJointNo__11daNpc_Lud_cFv
 */
bool daNpc_Lud_c::getBackboneJointNo() {
    return true;
}

/* 80A6FCF0-80A6FD00 005230 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__11daNpc_Lud_cFi
 */
void daNpc_Lud_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80A6FD00-80A6FD10 005240 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__11daNpc_Lud_cFi
 */
void daNpc_Lud_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80A6FD10-80A6FD58 005250 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_Lud_Param_cFv */
daNpc_Lud_Param_c::~daNpc_Lud_Param_c() {
    // NONMATCHING
}

/* 80A6FD58-80A6FD60 005298 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80A6FD58() {
    // NONMATCHING
}

/* 80A6FD60-80A6FD68 0052A0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80A6FD60() {
    // NONMATCHING
}

/* 80A6FECC-80A6FECC 000150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
