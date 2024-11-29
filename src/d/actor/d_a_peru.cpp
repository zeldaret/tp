/**
 * @file d_a_peru.cpp
 * 
*/

#include "d/actor/d_a_peru.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__8daPeru_cFv();
extern "C" void create__8daPeru_cFv();
extern "C" void CreateHeap__8daPeru_cFv();
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
extern "C" void typeInitialize__8daPeru_cFv();
extern "C" void Delete__8daPeru_cFv();
extern "C" void Execute__8daPeru_cFv();
extern "C" void Draw__8daPeru_cFv();
extern "C" void createHeapCallBack__8daPeru_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__8daPeru_cFP8J3DJointi();
extern "C" void isDelete__8daPeru_cFv();
extern "C" void reset__8daPeru_cFv();
extern "C" void setParam__8daPeru_cFv();
extern "C" void setAfterTalkMotion__8daPeru_cFv();
extern "C" void srchActors__8daPeru_cFv();
extern "C" void evtTalk__8daPeru_cFv();
extern "C" void evtCutProc__8daPeru_cFv();
extern "C" void action__8daPeru_cFv();
extern "C" void setAttnPos__8daPeru_cFv();
extern "C" void setCollision__8daPeru_cFv();
extern "C" bool drawDbgInfo__8daPeru_cFv();
extern "C" void setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii();
extern "C" void wait__8daPeru_cFi();
extern "C" void is_AppearDemo_start__8daPeru_cFv();
extern "C" void _AppearDemoTag_delete__8daPeru_cFv();
extern "C" void talk__8daPeru_cFi();
extern "C" void jump_st__8daPeru_cFi();
extern "C" void jump_ed__8daPeru_cFi();
extern "C" void sniff__8daPeru_cFi();
extern "C" void demo_appear__8daPeru_cFi();
extern "C" void demo_walk_to_link__8daPeru_cFi();
extern "C" void demo_walk_circle__8daPeru_cFi();
extern "C" void demo_walk_to_window__8daPeru_cFi();
extern "C" void demo_walk_to_pathway__8daPeru_cFi();
extern "C" void cutAppear__8daPeru_cFi();
extern "C" void _cutAppear_Init__8daPeru_cFRCi();
extern "C" void _cutAppear_Main__8daPeru_cFRCi();
extern "C" void _catdoor_open__8daPeru_cFv();
extern "C" void _catdoor_open_demoskip__8daPeru_cFv();
extern "C" void cutAppear_skip__8daPeru_cFi();
extern "C" void _cutAppear_skip_Init__8daPeru_cFRCi();
extern "C" void _cutAppear_skip_Main__8daPeru_cFRCi();
extern "C" static void daPeru_Create__FPv();
extern "C" static void daPeru_Delete__FPv();
extern "C" static void daPeru_Execute__FPv();
extern "C" static void daPeru_Draw__FPv();
extern "C" static bool daPeru_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __dt__13daNpcT_Path_cFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __ct__18daNpcT_ActorMngr_cFv();
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
extern "C" void __sinit_d_a_peru_cpp();
extern "C" void
__ct__8daPeru_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" s32 getEyeballMaterialNo__8daPeru_cFv();
extern "C" s32 getHeadJointNo__8daPeru_cFv();
extern "C" s32 getNeckJointNo__8daPeru_cFv();
extern "C" bool getBackboneJointNo__8daPeru_cFv();
extern "C" void checkChangeJoint__8daPeru_cFi();
extern "C" void checkRemoveJoint__8daPeru_cFi();
extern "C" void beforeMove__8daPeru_cFv();
extern "C" void __dt__14daPeru_Param_cFv();
extern "C" static void func_80D4BFC4();
extern "C" static void func_80D4BFCC();
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz();
extern "C" void checkNowWolf__9daPy_py_cFv();
extern "C" u8 const m__14daPeru_Param_c[152];
extern "C" extern char const* const d_a_peru__stringBase0;
extern "C" void* mCutNameList__8daPeru_c[3];
extern "C" u8 mCutList__8daPeru_c[36];

//
// External References:
//

extern "C" void ZXYrotS__14mDoMtx_stack_cFRC5csXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_SearchByName__FsPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
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
extern "C" void initialize__13daNpcT_Path_cFv();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz();
extern "C" void calcJntRad__15daNpcT_JntAnm_cFfff();
extern "C" void calc__19daNpcT_DmgStagger_cFi();
extern "C" void tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void loadRes__8daNpcT_cFPCScPPCc();
extern "C" void deleteRes__8daNpcT_cFPCScPPCc();
extern "C" void execute__8daNpcT_cFv();
extern "C" void draw__8daNpcT_cFiifP11_GXColorS10fiii();
extern "C" void ctrlBtk__8daNpcT_cFv();
extern "C" void setMtx__8daNpcT_cFv();
extern "C" void ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel();
extern "C" void evtProc__8daNpcT_cFv();
extern "C" void setFootPos__8daNpcT_cFv();
extern "C" void setFootPrtcl__8daNpcT_cFP4cXyzff();
extern "C" bool checkCullDraw__8daNpcT_cFv();
extern "C" void twilight__8daNpcT_cFv();
extern "C" void evtOrder__8daNpcT_cFv();
extern "C" void clrParam__8daNpcT_cFv();
extern "C" void setFaceMotionAnm__8daNpcT_cFib();
extern "C" void setMotionAnm__8daNpcT_cFifi();
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getEvtAreaTagP__8daNpcT_cFii();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_onEvtBit__FUl();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
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
extern "C" void _savegpr_20();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_20();
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
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz();
extern "C" void attr__14daObjCatDoor_cCFv();
extern "C" void setBaseMtx__14daObjCatDoor_cFv();
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80D4C1B0-80D4C1B0 000150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D4C1B0 = "";
SECTION_DEAD static char const* const stringBase_80D4C1B1 = "PERU_APPEAR";
SECTION_DEAD static char const* const stringBase_80D4C1BD = "PERU_APPEAR_SKIP";
SECTION_DEAD static char const* const stringBase_80D4C1CE = "Peru";
#pragma pop

/* 80D4C1DC-80D4C1E8 000000 000C+00 3/3 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D4C1E8-80D4C1FC 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80D4C1FC-80D4C204 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x01,
};

/* 80D4C204-80D4C21C -00001 0018+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[6] = {
    (void*)&d_a_peru__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_peru__stringBase0) + 0x1),
    (void*)0x00000001,
    (void*)(((char*)&d_a_peru__stringBase0) + 0xD),
    (void*)0x00000001,
};
#pragma pop

/* 80D4C21C-80D4C224 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_peru__stringBase0,
    (void*)(((char*)&d_a_peru__stringBase0) + 0x1E),
};

/* 80D4C224-80D4C228 000048 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80D4C228-80D4C234 -00001 000C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[3] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
};

/* 80D4C234-80D4C2C0 000058 008C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[140] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80D4C2C0-80D4C3F4 0000E4 0134+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[308] = {
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80D4C3F4-80D4C444 000218 0050+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[80] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80D4C444-80D4C4E4 000268 00A0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[160] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80D4C4E4-80D4C4F0 -00001 000C+00 1/1 0/0 0/0 .data            mCutNameList__8daPeru_c */
SECTION_DATA void* daPeru_c::mCutNameList[3] = {
    (void*)&d_a_peru__stringBase0,
    (void*)(((char*)&d_a_peru__stringBase0) + 0x1),
    (void*)(((char*)&d_a_peru__stringBase0) + 0xD),
};

/* 80D4C4F0-80D4C4FC -00001 000C+00 0/1 0/0 0/0 .data            @3835 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3835[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAppear__8daPeru_cFi,
};
#pragma pop

/* 80D4C4FC-80D4C508 -00001 000C+00 0/1 0/0 0/0 .data            @3836 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3836[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAppear_skip__8daPeru_cFi,
};
#pragma pop

/* 80D4C508-80D4C52C 00032C 0024+00 1/2 0/0 0/0 .data            mCutList__8daPeru_c */
SECTION_DATA u8 daPeru_c::mCutList[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D4C52C-80D4C538 -00001 000C+00 1/1 0/0 0/0 .data            @4467 */
SECTION_DATA static void* lit_4467[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__8daPeru_cFi,
};

/* 80D4C538-80D4C544 -00001 000C+00 1/1 0/0 0/0 .data            @4568 */
SECTION_DATA static void* lit_4568[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__8daPeru_cFi,
};

/* 80D4C544-80D4C550 -00001 000C+00 1/1 0/0 0/0 .data            @4576 */
SECTION_DATA static void* lit_4576[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__8daPeru_cFi,
};

/* 80D4C550-80D4C55C -00001 000C+00 1/1 0/0 0/0 .data            @4938 */
SECTION_DATA static void* lit_4938[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__8daPeru_cFi,
};

/* 80D4C55C-80D4C568 -00001 000C+00 1/1 0/0 0/0 .data            @4943 */
SECTION_DATA static void* lit_4943[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__8daPeru_cFi,
};

/* 80D4C568-80D4C574 -00001 000C+00 1/1 0/0 0/0 .data            @5029 */
SECTION_DATA static void* lit_5029[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)jump_ed__8daPeru_cFi,
};

/* 80D4C574-80D4C580 -00001 000C+00 1/1 0/0 0/0 .data            @5082 */
SECTION_DATA static void* lit_5082[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__8daPeru_cFi,
};

/* 80D4C580-80D4C58C -00001 000C+00 1/1 0/0 0/0 .data            @5131 */
SECTION_DATA static void* lit_5131[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__8daPeru_cFi,
};

/* 80D4C58C-80D4C598 -00001 000C+00 1/1 0/0 0/0 .data            @5219 */
SECTION_DATA static void* lit_5219[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__8daPeru_cFi,
};

/* 80D4C598-80D4C5A4 -00001 000C+00 1/1 0/0 0/0 .data            @5259 */
SECTION_DATA static void* lit_5259[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__8daPeru_cFi,
};

/* 80D4C5A4-80D4C5B0 -00001 000C+00 1/1 0/0 0/0 .data            @5295 */
SECTION_DATA static void* lit_5295[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__8daPeru_cFi,
};

/* 80D4C5B0-80D4C5BC -00001 000C+00 1/1 0/0 0/0 .data            @5372 */
SECTION_DATA static void* lit_5372[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__8daPeru_cFi,
};

/* 80D4C5BC-80D4C5C8 -00001 000C+00 0/1 0/0 0/0 .data            @5460 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5460[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_appear__8daPeru_cFi,
};
#pragma pop

/* 80D4C5C8-80D4C5D4 -00001 000C+00 0/1 0/0 0/0 .data            @5464 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5464[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_walk_to_link__8daPeru_cFi,
};
#pragma pop

/* 80D4C5D4-80D4C5E0 -00001 000C+00 0/1 0/0 0/0 .data            @5467 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5467[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sniff__8daPeru_cFi,
};
#pragma pop

/* 80D4C5E0-80D4C5EC -00001 000C+00 0/1 0/0 0/0 .data            @5471 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5471[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_walk_circle__8daPeru_cFi,
};
#pragma pop

/* 80D4C5EC-80D4C5F8 -00001 000C+00 0/1 0/0 0/0 .data            @5488 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5488[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_walk_to_window__8daPeru_cFi,
};
#pragma pop

/* 80D4C5F8-80D4C604 -00001 000C+00 0/1 0/0 0/0 .data            @5493 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5493[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_walk_to_pathway__8daPeru_cFi,
};
#pragma pop

/* 80D4C604-80D4C610 -00001 000C+00 1/1 0/0 0/0 .data            @5711 */
SECTION_DATA static void* lit_5711[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)jump_st__8daPeru_cFi,
};

/* 80D4C610-80D4C61C -00001 000C+00 1/1 0/0 0/0 .data            @5846 */
SECTION_DATA static void* lit_5846[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__8daPeru_cFi,
};

/* 80D4C61C-80D4C63C -00001 0020+00 1/0 0/0 0/0 .data            daPeru_MethodTable */
static actor_method_class daPeru_MethodTable = {
    (process_method_func)daPeru_Create__FPv,
    (process_method_func)daPeru_Delete__FPv,
    (process_method_func)daPeru_Execute__FPv,
    (process_method_func)daPeru_IsDelete__FPv,
    (process_method_func)daPeru_Draw__FPv,
};

/* 80D4C63C-80D4C66C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_PERU */
extern actor_process_profile_definition g_profile_PERU = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_PERU,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daPeru_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  694,                    // mPriority
  &daPeru_MethodTable,    // sub_method
  0x08044108,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D4C66C-80D4C678 000490 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80D4C678-80D4C684 00049C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D4C684-80D4C690 0004A8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80D4C690-80D4C69C 0004B4 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80D4C69C-80D4C6C0 0004C0 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D4BFCC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D4BFC4,
};

/* 80D4C6C0-80D4C6CC 0004E4 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80D4C6CC-80D4C6D8 0004F0 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80D4C6D8-80D4C6E4 0004FC 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80D4C6E4-80D4C6F0 000508 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80D4C6F0-80D4C6FC 000514 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80D4C6FC-80D4C708 000520 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80D4C708-80D4C714 00052C 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80D4C714-80D4C7D8 000538 00C4+00 2/2 0/0 0/0 .data            __vt__8daPeru_c */
SECTION_DATA extern void* __vt__8daPeru_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8daPeru_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__8daPeru_cFi,
    (void*)checkRemoveJoint__8daPeru_cFi,
    (void*)getBackboneJointNo__8daPeru_cFv,
    (void*)getNeckJointNo__8daPeru_cFv,
    (void*)getHeadJointNo__8daPeru_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__8daPeru_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__8daNpcT_cFi,
    (void*)setParam__8daPeru_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__8daPeru_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__8daPeru_cFv,
    (void*)setAfterTalkMotion__8daPeru_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__8daPeru_cFv,
    (void*)beforeMove__8daPeru_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__8daPeru_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__8daPeru_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__8daPeru_cFv,
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

/* 80D46EEC-80D46FCC 0000EC 00E0+00 1/0 0/0 0/0 .text            __dt__8daPeru_cFv */
daPeru_c::~daPeru_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D4C060-80D4C0F8 000000 0098+00 19/19 0/0 0/0 .rodata          m__14daPeru_Param_c */
SECTION_RODATA u8 const daPeru_Param_c::m[152] = {
    0x42, 0x70, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0x66, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D4C060, &daPeru_Param_c::m);

/* 80D4C0F8-80D4C0FC 000098 0004+00 0/2 0/0 0/0 .rodata          @4050 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4050 = -300.0f;
COMPILER_STRIP_GATE(0x80D4C0F8, &lit_4050);
#pragma pop

/* 80D4C0FC-80D4C100 00009C 0004+00 0/1 0/0 0/0 .rodata          @4051 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4051 = -50.0f;
COMPILER_STRIP_GATE(0x80D4C0FC, &lit_4051);
#pragma pop

/* 80D4C100-80D4C104 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4052 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4052 = 300.0f;
COMPILER_STRIP_GATE(0x80D4C100, &lit_4052);
#pragma pop

/* 80D4C104-80D4C108 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4053 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4053 = 450.0f;
COMPILER_STRIP_GATE(0x80D4C104, &lit_4053);
#pragma pop

/* 80D46FCC-80D4720C 0001CC 0240+00 1/1 0/0 0/0 .text            create__8daPeru_cFv */
void daPeru_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D4C108-80D4C10C 0000A8 0004+00 5/20 0/0 0/0 .rodata          @4199 */
SECTION_RODATA static u8 const lit_4199[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D4C108, &lit_4199);

/* 80D4C10C-80D4C110 0000AC 0004+00 0/2 0/0 0/0 .rodata          @4200 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4200 = 65536.0f;
COMPILER_STRIP_GATE(0x80D4C10C, &lit_4200);
#pragma pop

/* 80D4C110-80D4C114 0000B0 0004+00 0/3 0/0 0/0 .rodata          @4201 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4201 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80D4C110, &lit_4201);
#pragma pop

/* 80D4C114-80D4C118 0000B4 0004+00 3/5 0/0 0/0 .rodata          @4348 */
SECTION_RODATA static f32 const lit_4348 = 1.0f;
COMPILER_STRIP_GATE(0x80D4C114, &lit_4348);

/* 80D4720C-80D474A0 00040C 0294+00 1/1 0/0 0/0 .text            CreateHeap__8daPeru_cFv */
void daPeru_c::CreateHeap() {
    // NONMATCHING
}

/* 80D474A0-80D474DC 0006A0 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80D474DC-80D474F4 0006DC 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80D474F4-80D47530 0006F4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80D47530-80D47548 000730 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80D47548-80D47590 000748 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80D47590-80D475B4 000790 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80D475B4-80D475F0 0007B4 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80D475F0-80D47608 0007F0 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80D47608-80D47644 000808 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80D47644-80D4765C 000844 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D4C118-80D4C11C 0000B8 0004+00 0/2 0/0 0/0 .rodata          @4395 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4395 = 0x45345E66;
COMPILER_STRIP_GATE(0x80D4C118, &lit_4395);
#pragma pop

/* 80D4C11C-80D4C120 0000BC 0004+00 0/2 0/0 0/0 .rodata          @4396 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4396 = -880.0f;
COMPILER_STRIP_GATE(0x80D4C11C, &lit_4396);
#pragma pop

/* 80D4C120-80D4C124 0000C0 0004+00 0/2 0/0 0/0 .rodata          @4397 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4397 = 0x45AF8A66;
COMPILER_STRIP_GATE(0x80D4C120, &lit_4397);
#pragma pop

/* 80D4765C-80D47750 00085C 00F4+00 1/1 0/0 0/0 .text            typeInitialize__8daPeru_cFv */
void daPeru_c::typeInitialize() {
    // NONMATCHING
}

/* 80D47750-80D47784 000950 0034+00 1/1 0/0 0/0 .text            Delete__8daPeru_cFv */
void daPeru_c::Delete() {
    // NONMATCHING
}

/* 80D47784-80D477A4 000984 0020+00 2/2 0/0 0/0 .text            Execute__8daPeru_cFv */
void daPeru_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D4C124-80D4C128 0000C4 0004+00 1/1 0/0 0/0 .rodata          @4430 */
SECTION_RODATA static f32 const lit_4430 = 100.0f;
COMPILER_STRIP_GATE(0x80D4C124, &lit_4430);

/* 80D477A4-80D47840 0009A4 009C+00 1/1 0/0 0/0 .text            Draw__8daPeru_cFv */
void daPeru_c::Draw() {
    // NONMATCHING
}

/* 80D47840-80D47860 000A40 0020+00 1/1 0/0 0/0 .text createHeapCallBack__8daPeru_cFP10fopAc_ac_c
 */
void daPeru_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80D47860-80D478B8 000A60 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__8daPeru_cFP8J3DJointi */
void daPeru_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80D478B8-80D478EC 000AB8 0034+00 1/1 0/0 0/0 .text            isDelete__8daPeru_cFv */
void daPeru_c::isDelete() {
    // NONMATCHING
}

/* 80D478EC-80D47B20 000AEC 0234+00 1/1 0/0 0/0 .text            reset__8daPeru_cFv */
void daPeru_c::reset() {
    // NONMATCHING
}

/* 80D47B20-80D47C4C 000D20 012C+00 1/0 0/0 0/0 .text            setParam__8daPeru_cFv */
void daPeru_c::setParam() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D4C128-80D4C12C 0000C8 0004+00 4/14 0/0 0/0 .rodata          @4548 */
SECTION_RODATA static f32 const lit_4548 = -1.0f;
COMPILER_STRIP_GATE(0x80D4C128, &lit_4548);

/* 80D47C4C-80D47CAC 000E4C 0060+00 1/0 0/0 0/0 .text            setAfterTalkMotion__8daPeru_cFv */
void daPeru_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80D47CAC-80D47D5C 000EAC 00B0+00 1/1 0/0 0/0 .text            srchActors__8daPeru_cFv */
void daPeru_c::srchActors() {
    // NONMATCHING
}

/* 80D47D5C-80D47E48 000F5C 00EC+00 1/0 0/0 0/0 .text            evtTalk__8daPeru_cFv */
void daPeru_c::evtTalk() {
    // NONMATCHING
}

/* 80D47E48-80D47F10 001048 00C8+00 1/0 0/0 0/0 .text            evtCutProc__8daPeru_cFv */
void daPeru_c::evtCutProc() {
    // NONMATCHING
}

/* 80D47F10-80D47F5C 001110 004C+00 1/0 0/0 0/0 .text            action__8daPeru_cFv */
void daPeru_c::action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D4C12C-80D4C130 0000CC 0004+00 0/2 0/0 0/0 .rodata          @4662 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4662 = 10.0f;
COMPILER_STRIP_GATE(0x80D4C12C, &lit_4662);
#pragma pop

/* 80D4C130-80D4C134 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4663 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4663 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80D4C130, &lit_4663);
#pragma pop

/* 80D4C134-80D4C138 0000D4 0004+00 0/2 0/0 0/0 .rodata          @4664 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4664 = 30.0f;
COMPILER_STRIP_GATE(0x80D4C134, &lit_4664);
#pragma pop

/* 80D4C138-80D4C140 0000D8 0008+00 1/3 0/0 0/0 .rodata          @4666 */
SECTION_RODATA static u8 const lit_4666[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D4C138, &lit_4666);

/* 80D47F5C-80D481A4 00115C 0248+00 1/0 0/0 0/0 .text            setAttnPos__8daPeru_cFv */
void daPeru_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D4C140-80D4C148 0000E0 0008+00 0/3 0/0 0/0 .rodata          @4724 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4724[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D4C140, &lit_4724);
#pragma pop

/* 80D4C148-80D4C150 0000E8 0008+00 0/3 0/0 0/0 .rodata          @4725 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4725[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D4C148, &lit_4725);
#pragma pop

/* 80D4C150-80D4C158 0000F0 0008+00 0/3 0/0 0/0 .rodata          @4726 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4726[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D4C150, &lit_4726);
#pragma pop

/* 80D4C158-80D4C160 0000F8 0008+00 1/1 0/0 0/0 .rodata          @4737 */
SECTION_RODATA static u8 const lit_4737[8] = {
    0x41, 0xA0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D4C158, &lit_4737);

/* 80D481A4-80D4835C 0013A4 01B8+00 1/0 0/0 0/0 .text            setCollision__8daPeru_cFv */
void daPeru_c::setCollision() {
    // NONMATCHING
}

/* 80D4835C-80D48364 00155C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__8daPeru_cFv */
bool daPeru_c::drawDbgInfo() {
    return false;
}

/* 80D48364-80D48414 001564 00B0+00 13/13 0/0 0/0 .text setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
 */
void daPeru_c::setAction(int (daPeru_c::*param_0)(int), int param_1) {
    // NONMATCHING
}

/* 80D48414-80D486A0 001614 028C+00 10/0 0/0 0/0 .text            wait__8daPeru_cFi */
void daPeru_c::wait(int param_0) {
    // NONMATCHING
}

/* 80D486A0-80D48720 0018A0 0080+00 1/1 0/0 0/0 .text            is_AppearDemo_start__8daPeru_cFv */
void daPeru_c::is_AppearDemo_start() {
    // NONMATCHING
}

/* 80D48720-80D48750 001920 0030+00 1/1 0/0 0/0 .text            _AppearDemoTag_delete__8daPeru_cFv
 */
void daPeru_c::_AppearDemoTag_delete() {
    // NONMATCHING
}

/* 80D48750-80D48A7C 001950 032C+00 2/0 0/0 0/0 .text            talk__8daPeru_cFi */
void daPeru_c::talk(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D4C160-80D4C164 000100 0004+00 0/1 0/0 0/0 .rodata          @5061 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5061 = -9.0f;
COMPILER_STRIP_GATE(0x80D4C160, &lit_5061);
#pragma pop

/* 80D4C164-80D4C168 000104 0004+00 0/1 0/0 0/0 .rodata          @5062 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5062 = 22.0f;
COMPILER_STRIP_GATE(0x80D4C164, &lit_5062);
#pragma pop

/* 80D4C168-80D4C16C 000108 0004+00 0/1 0/0 0/0 .rodata          @5063 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5063 = 36.0f;
COMPILER_STRIP_GATE(0x80D4C168, &lit_5063);
#pragma pop

/* 80D4C16C-80D4C170 00010C 0004+00 0/1 0/0 0/0 .rodata          @5064 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5064 = 14.5f;
COMPILER_STRIP_GATE(0x80D4C16C, &lit_5064);
#pragma pop

/* 80D4C170-80D4C174 000110 0004+00 0/1 0/0 0/0 .rodata          @5065 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5065 = 18.0f;
COMPILER_STRIP_GATE(0x80D4C170, &lit_5065);
#pragma pop

/* 80D4C174-80D4C178 000114 0004+00 0/1 0/0 0/0 .rodata          @5066 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5066 = 4.0f;
COMPILER_STRIP_GATE(0x80D4C174, &lit_5066);
#pragma pop

/* 80D48A7C-80D48C58 001C7C 01DC+00 1/0 0/0 0/0 .text            jump_st__8daPeru_cFi */
void daPeru_c::jump_st(int param_0) {
    // NONMATCHING
}

/* 80D48C58-80D48E34 001E58 01DC+00 1/0 0/0 0/0 .text            jump_ed__8daPeru_cFi */
void daPeru_c::jump_ed(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D4C178-80D4C17C 000118 0004+00 0/1 0/0 0/0 .rodata          @5169 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5169 = 23.0f;
COMPILER_STRIP_GATE(0x80D4C178, &lit_5169);
#pragma pop

/* 80D48E34-80D48FA8 002034 0174+00 1/0 0/0 0/0 .text            sniff__8daPeru_cFi */
void daPeru_c::sniff(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D4C17C-80D4C180 00011C 0004+00 0/1 0/0 0/0 .rodata          @5207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5207 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80D4C17C, &lit_5207);
#pragma pop

/* 80D48FA8-80D4910C 0021A8 0164+00 1/0 0/0 0/0 .text            demo_appear__8daPeru_cFi */
void daPeru_c::demo_appear(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D4C180-80D4C184 000120 0004+00 0/1 0/0 0/0 .rodata          @5247 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5247 = 24.0f / 5.0f;
COMPILER_STRIP_GATE(0x80D4C180, &lit_5247);
#pragma pop

/* 80D4C184-80D4C188 000124 0004+00 0/1 0/0 0/0 .rodata          @5248 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5248 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D4C184, &lit_5248);
#pragma pop

/* 80D4C188-80D4C18C 000128 0004+00 0/1 0/0 0/0 .rodata          @5249 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5249 = 130.0f;
COMPILER_STRIP_GATE(0x80D4C188, &lit_5249);
#pragma pop

/* 80D4910C-80D492A8 00230C 019C+00 1/0 0/0 0/0 .text            demo_walk_to_link__8daPeru_cFi */
void daPeru_c::demo_walk_to_link(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D4C18C-80D4C190 00012C 0004+00 0/2 0/0 0/0 .rodata          @5282 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5282 = 21.0f / 5.0f;
COMPILER_STRIP_GATE(0x80D4C18C, &lit_5282);
#pragma pop

/* 80D492A8-80D49418 0024A8 0170+00 1/0 0/0 0/0 .text            demo_walk_circle__8daPeru_cFi */
void daPeru_c::demo_walk_circle(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D4C190-80D4C194 000130 0004+00 0/1 0/0 0/0 .rodata          @5360 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5360 = 0x45405B96;
COMPILER_STRIP_GATE(0x80D4C190, &lit_5360);
#pragma pop

/* 80D4C194-80D4C198 000134 0004+00 0/1 0/0 0/0 .rodata          @5361 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5361 = 0xC4598148;
COMPILER_STRIP_GATE(0x80D4C194, &lit_5361);
#pragma pop

/* 80D4C198-80D4C19C 000138 0004+00 0/1 0/0 0/0 .rodata          @5362 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5362 = 0x45BD3A31;
COMPILER_STRIP_GATE(0x80D4C198, &lit_5362);
#pragma pop

/* 80D49418-80D4971C 002618 0304+00 1/0 0/0 0/0 .text            demo_walk_to_window__8daPeru_cFi */
void daPeru_c::demo_walk_to_window(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D4C19C-80D4C1A0 00013C 0004+00 0/1 0/0 0/0 .rodata          @5436 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5436 = 8.0f;
COMPILER_STRIP_GATE(0x80D4C19C, &lit_5436);
#pragma pop

/* 80D4C1A0-80D4C1A4 000140 0004+00 0/1 0/0 0/0 .rodata          @5437 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5437 = 0x453305F0;
COMPILER_STRIP_GATE(0x80D4C1A0, &lit_5437);
#pragma pop

/* 80D4C1A4-80D4C1A8 000144 0004+00 0/1 0/0 0/0 .rodata          @5438 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5438 = 0xC4524EE9;
COMPILER_STRIP_GATE(0x80D4C1A4, &lit_5438);
#pragma pop

/* 80D4C1A8-80D4C1AC 000148 0004+00 0/1 0/0 0/0 .rodata          @5439 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5439 = 0x45ADFCC7;
COMPILER_STRIP_GATE(0x80D4C1A8, &lit_5439);
#pragma pop

/* 80D4C1AC-80D4C1B0 00014C 0004+00 0/1 0/0 0/0 .rodata          @5440 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5440 = 60.0f;
COMPILER_STRIP_GATE(0x80D4C1AC, &lit_5440);
#pragma pop

/* 80D4971C-80D499AC 00291C 0290+00 1/0 0/0 0/0 .text            demo_walk_to_pathway__8daPeru_cFi
 */
void daPeru_c::demo_walk_to_pathway(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D4C1B0-80D4C1B0 000150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D4C1D3 = "cut_id";
#pragma pop

/* 80D499AC-80D49A40 002BAC 0094+00 1/0 0/0 0/0 .text            cutAppear__8daPeru_cFi */
void daPeru_c::cutAppear(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D4C7F0-80D4C7F4 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80D4C7F4-80D4C7F8 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80D4C7F8-80D4C7FC 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80D4C7FC-80D4C800 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80D4C800-80D4C804 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80D4C804-80D4C808 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80D4C808-80D4C80C 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80D4C80C-80D4C810 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80D4C810-80D4C814 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80D4C814-80D4C818 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80D4C818-80D4C81C 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80D4C81C-80D4C820 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80D4C820-80D4C824 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80D4C824-80D4C828 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80D4C828-80D4C82C 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80D4C82C-80D4C830 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80D4C830-80D4C83C 000048 000C+00 1/1 0/0 0/0 .bss             @3837 */
static u8 lit_3837[12];

/* 80D4C83C-80D4C840 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80D4C840-80D4C850 000058 000C+04 0/1 0/0 0/0 .bss             @5484 */
#pragma push
#pragma force_active on
static u8 lit_5484[12 + 4 /* padding */];
#pragma pop

/* 80D4C850-80D4C85C 000068 000C+00 0/1 0/0 0/0 .bss             see_pos$5483 */
#pragma push
#pragma force_active on
static u8 see_pos[12];
#pragma pop

/* 80D49A40-80D4A334 002C40 08F4+00 1/1 0/0 0/0 .text            _cutAppear_Init__8daPeru_cFRCi */
void daPeru_c::_cutAppear_Init(int const& param_0) {
    // NONMATCHING
}

/* 80D4A334-80D4A840 003534 050C+00 1/1 0/0 0/0 .text            _cutAppear_Main__8daPeru_cFRCi */
void daPeru_c::_cutAppear_Main(int const& param_0) {
    // NONMATCHING
}

/* 80D4A840-80D4A920 003A40 00E0+00 1/1 0/0 0/0 .text            _catdoor_open__8daPeru_cFv */
void daPeru_c::_catdoor_open() {
    // NONMATCHING
}

/* 80D4A920-80D4A984 003B20 0064+00 1/1 0/0 0/0 .text            _catdoor_open_demoskip__8daPeru_cFv
 */
void daPeru_c::_catdoor_open_demoskip() {
    // NONMATCHING
}

/* 80D4A984-80D4AA18 003B84 0094+00 1/0 0/0 0/0 .text            cutAppear_skip__8daPeru_cFi */
void daPeru_c::cutAppear_skip(int param_0) {
    // NONMATCHING
}

/* 80D4AA18-80D4AAF0 003C18 00D8+00 1/1 0/0 0/0 .text            _cutAppear_skip_Init__8daPeru_cFRCi
 */
void daPeru_c::_cutAppear_skip_Init(int const& param_0) {
    // NONMATCHING
}

/* 80D4AAF0-80D4AB08 003CF0 0018+00 1/1 0/0 0/0 .text            _cutAppear_skip_Main__8daPeru_cFRCi
 */
void daPeru_c::_cutAppear_skip_Main(int const& param_0) {
    // NONMATCHING
}

/* 80D4AB08-80D4AB28 003D08 0020+00 1/0 0/0 0/0 .text            daPeru_Create__FPv */
static void daPeru_Create(void* param_0) {
    // NONMATCHING
}

/* 80D4AB28-80D4AB48 003D28 0020+00 1/0 0/0 0/0 .text            daPeru_Delete__FPv */
static void daPeru_Delete(void* param_0) {
    // NONMATCHING
}

/* 80D4AB48-80D4AB68 003D48 0020+00 1/0 0/0 0/0 .text            daPeru_Execute__FPv */
static void daPeru_Execute(void* param_0) {
    // NONMATCHING
}

/* 80D4AB68-80D4AB88 003D68 0020+00 1/0 0/0 0/0 .text            daPeru_Draw__FPv */
static void daPeru_Draw(void* param_0) {
    // NONMATCHING
}

/* 80D4AB88-80D4AB90 003D88 0008+00 1/0 0/0 0/0 .text            daPeru_IsDelete__FPv */
static bool daPeru_IsDelete(void* param_0) {
    return true;
}

/* 80D4AB90-80D4ABC0 003D90 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80D4ABC0-80D4AC08 003DC0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80D4AC08-80D4AF90 003E08 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80D4AF90-80D4AFCC 004190 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80D4AFCC-80D4B008 0041CC 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80D4B008-80D4B050 004208 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80D4B050-80D4B11C 004250 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_CylFv */
// dCcD_Cyl::~dCcD_Cyl() {
extern "C" void __dt__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80D4B11C-80D4B164 00431C 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80D4B164-80D4B1E8 004364 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
// dCcD_Cyl::dCcD_Cyl() {
extern "C" void __ct__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80D4B1E8-80D4B230 0043E8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80D4B230-80D4B278 004430 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80D4B278-80D4B2B4 004478 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80D4B2B4-80D4B6B8 0044B4 0404+00 1/1 0/0 0/0 .text
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

/* 80D4B6B8-80D4B6BC 0048B8 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80D4B6BC-80D4B7B8 0048BC 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80D4B7B8-80D4B7BC 0049B8 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80D4B7BC-80D4B804 0049BC 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80D4B804-80D4B874 004A04 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80D4B874-80D4B8D0 004A74 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80D4B8D0-80D4B940 004AD0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80D4B940-80D4B988 004B40 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80D4B988-80D4BAA4 004B88 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80D4BAA4-80D4BCAC 004CA4 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80D4BCAC-80D4BCB0 004EAC 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80D4BCB0-80D4BCB8 004EB0 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootLJointNo() {
    return -1;
}

/* 80D4BCB8-80D4BCC0 004EB8 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootRJointNo() {
    return -1;
}

/* 80D4BCC0-80D4BCC8 004EC0 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80D4BCC8-80D4BCD0 004EC8 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80D4BCD0-80D4BCD4 004ED0 0004+00 1/0 0/0 0/0 .text            afterJntAnm__8daNpcT_cFi */
void daNpcT_c::afterJntAnm(int param_0) {
    /* empty function */
}

/* 80D4BCD4-80D4BCDC 004ED4 0008+00 1/0 0/0 0/0 .text            checkChangeEvt__8daNpcT_cFv */
bool daNpcT_c::checkChangeEvt() {
    return false;
}

/* 80D4BCDC-80D4BCE4 004EDC 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80D4BCE4-80D4BCE8 004EE4 0004+00 1/0 0/0 0/0 .text            afterMoved__8daNpcT_cFv */
void daNpcT_c::afterMoved() {
    /* empty function */
}

/* 80D4BCE8-80D4BCF0 004EE8 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80D4BCF0-80D4BD08 004EF0 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80D4BD08-80D4BD0C 004F08 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80D4BD0C-80D4BD10 004F0C 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80D4BD10-80D4BD18 004F10 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80D4BD18-80D4BD20 004F18 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80D4BD20-80D4BD50 004F20 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80D4BD50-80D4BD80 004F50 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80D4BD80-80D4BD84 004F80 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80D4BD84-80D4BD88 004F84 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80D4BD88-80D4BD8C 004F88 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80D4BD8C-80D4BD90 004F8C 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 80D4C7D8-80D4C7E4 0005FC 000C+00 2/2 0/0 0/0 .data            __vt__14daPeru_Param_c */
SECTION_DATA extern void* __vt__14daPeru_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daPeru_Param_cFv,
};

/* 80D4BD90-80D4BE2C 004F90 009C+00 0/0 1/0 0/0 .text            __sinit_d_a_peru_cpp */
void __sinit_d_a_peru_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80D4BD90, __sinit_d_a_peru_cpp);
#pragma pop

/* 80D4BE2C-80D4BEC4 00502C 0098+00 1/1 0/0 0/0 .text
 * __ct__8daPeru_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daPeru_c::daPeru_c(daNpcT_faceMotionAnmData_c const* param_0,
                       daNpcT_motionAnmData_c const* param_1,
                       daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
                       daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
                       daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80D4BEC4-80D4BECC 0050C4 0008+00 1/0 0/0 0/0 .text            getEyeballMaterialNo__8daPeru_cFv
 */
s32 daPeru_c::getEyeballMaterialNo() {
    return true;
}

/* 80D4BECC-80D4BED4 0050CC 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__8daPeru_cFv */
s32 daPeru_c::getHeadJointNo() {
    return 4;
}

/* 80D4BED4-80D4BEDC 0050D4 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__8daPeru_cFv */
s32 daPeru_c::getNeckJointNo() {
    return 3;
}

/* 80D4BEDC-80D4BEE4 0050DC 0008+00 1/0 0/0 0/0 .text            getBackboneJointNo__8daPeru_cFv */
bool daPeru_c::getBackboneJointNo() {
    return true;
}

/* 80D4BEE4-80D4BEF4 0050E4 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__8daPeru_cFi */
void daPeru_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80D4BEF4-80D4BF04 0050F4 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__8daPeru_cFi */
void daPeru_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80D4BF04-80D4BF7C 005104 0078+00 1/0 0/0 0/0 .text            beforeMove__8daPeru_cFv */
void daPeru_c::beforeMove() {
    // NONMATCHING
}

/* 80D4BF7C-80D4BFC4 00517C 0048+00 2/1 0/0 0/0 .text            __dt__14daPeru_Param_cFv */
daPeru_Param_c::~daPeru_Param_c() {
    // NONMATCHING
}

/* 80D4BFC4-80D4BFCC 0051C4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80D4BFC4() {
    // NONMATCHING
}

/* 80D4BFCC-80D4BFD4 0051CC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80D4BFCC() {
    // NONMATCHING
}

/* 80D4BFD4-80D4C034 0051D4 0060+00 1/1 0/0 0/0 .text chkPointInArea__15daTag_EvtArea_cF4cXyz */
// void daTag_EvtArea_c::chkPointInArea(cXyz param_0) {
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz() {
    // NONMATCHING
}

/* 80D4C034-80D4C04C 005234 0018+00 1/1 0/0 0/0 .text            checkNowWolf__9daPy_py_cFv */
// void daPy_py_c::checkNowWolf() {
extern "C" void checkNowWolf__9daPy_py_cFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D4C85C-80D4C860 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80D4C85C[4];
#pragma pop

/* 80D4C860-80D4C864 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80D4C860[4];
#pragma pop

/* 80D4C864-80D4C868 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80D4C864[4];
#pragma pop

/* 80D4C868-80D4C86C 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80D4C868[4];
#pragma pop

/* 80D4C86C-80D4C870 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D4C86C[4];
#pragma pop

/* 80D4C870-80D4C874 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D4C870[4];
#pragma pop

/* 80D4C874-80D4C878 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80D4C874[4];
#pragma pop

/* 80D4C878-80D4C87C 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80D4C878[4];
#pragma pop

/* 80D4C87C-80D4C880 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80D4C87C[4];
#pragma pop

/* 80D4C880-80D4C884 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80D4C880[4];
#pragma pop

/* 80D4C884-80D4C888 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80D4C884[4];
#pragma pop

/* 80D4C888-80D4C88C 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80D4C888[4];
#pragma pop

/* 80D4C88C-80D4C890 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80D4C88C[4];
#pragma pop

/* 80D4C890-80D4C894 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D4C890[4];
#pragma pop

/* 80D4C894-80D4C898 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80D4C894[4];
#pragma pop

/* 80D4C898-80D4C89C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80D4C898[4];
#pragma pop

/* 80D4C89C-80D4C8A0 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80D4C89C[4];
#pragma pop

/* 80D4C8A0-80D4C8A4 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80D4C8A0[4];
#pragma pop

/* 80D4C8A4-80D4C8A8 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80D4C8A4[4];
#pragma pop

/* 80D4C8A8-80D4C8AC 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80D4C8A8[4];
#pragma pop

/* 80D4C8AC-80D4C8B0 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80D4C8AC[4];
#pragma pop

/* 80D4C8B0-80D4C8B4 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D4C8B0[4];
#pragma pop

/* 80D4C8B4-80D4C8B8 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D4C8B4[4];
#pragma pop

/* 80D4C8B8-80D4C8BC 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D4C8B8[4];
#pragma pop

/* 80D4C8BC-80D4C8C0 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80D4C8BC[4];
#pragma pop

/* 80D4C1B0-80D4C1B0 000150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
