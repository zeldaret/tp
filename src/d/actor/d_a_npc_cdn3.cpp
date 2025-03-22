/**
 * @file d_a_npc_cdn3.cpp
 * 
*/

#include "d/actor/d_a_npc_cdn3.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void createHeapCallBack__FP10fopAc_ac_c();
extern "C" void setAction__11daNpcCdn3_cFQ211daNpcCdn3_c6Mode_e();
extern "C" void callInit__11daNpcCdn3_cFv();
extern "C" void callExecute__11daNpcCdn3_cFv();
extern "C" void initWait__11daNpcCdn3_cFv();
extern "C" void executeWait__11daNpcCdn3_cFv();
extern "C" void initPath__11daNpcCdn3_cFv();
extern "C" void executePath__11daNpcCdn3_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void __dt__4cXyzFv();
extern "C" void initTalk__11daNpcCdn3_cFv();
extern "C" void executeTalk__11daNpcCdn3_cFv();
extern "C" void initEscape__11daNpcCdn3_cFv();
extern "C" void executeEscape__11daNpcCdn3_cFv();
extern "C" void initFear__11daNpcCdn3_cFv();
extern "C" void executeFear__11daNpcCdn3_cFv();
extern "C" void initFear2__11daNpcCdn3_cFv();
extern "C" void executeFear2__11daNpcCdn3_cFv();
extern "C" void initFight__11daNpcCdn3_cFv();
extern "C" void executeFight__11daNpcCdn3_cFv();
extern "C" void initRelief__11daNpcCdn3_cFv();
extern "C" void executeRelief__11daNpcCdn3_cFv();
extern "C" void setAngle__11daNpcCdn3_cFv();
extern "C" void pathMoveF__11daNpcCdn3_cFv();
extern "C" void ctrlMsgAnm__11daNpcCdn3_cFv();
extern "C" static void s_sub1__FPvPv();
extern "C" void searchNextScheduleTagSub__11daNpcCdn3_cFP10fopAc_ac_c();
extern "C" static void s_sub2__FPvPv();
extern "C" void searchFirstScheduleTagSub__11daNpcCdn3_cFP10fopAc_ac_c();
extern "C" void checkSchedule__11daNpcCdn3_cFv();
extern "C" void setSchedule__11daNpcCdn3_cFP15daTagSchedule_c();
extern "C" void isInShop__11daNpcCdn3_cFv();
extern "C" void isChairStyle__11daNpcCdn3_cFv();
extern "C" void isNoTurnTalk__11daNpcCdn3_cFv();
extern "C" void waita__11daNpcCdn3_cFPv();
extern "C" void talka__11daNpcCdn3_cFPv();
extern "C" void waitwall__11daNpcCdn3_cFPv();
extern "C" void talkwall__11daNpcCdn3_cFPv();
extern "C" void talkbwall__11daNpcCdn3_cFPv();
extern "C" void talkb__11daNpcCdn3_cFPv();
extern "C" void talkc__11daNpcCdn3_cFPv();
extern "C" void waitb__11daNpcCdn3_cFPv();
extern "C" void sitwaita__11daNpcCdn3_cFPv();
extern "C" void sittalka__11daNpcCdn3_cFPv();
extern "C" void sittalkab__11daNpcCdn3_cFPv();
extern "C" void sitwaitb__11daNpcCdn3_cFPv();
extern "C" void sittalkb__11daNpcCdn3_cFPv();
extern "C" void sittalkbb__11daNpcCdn3_cFPv();
extern "C" void looka__11daNpcCdn3_cFPv();
extern "C" void lookb__11daNpcCdn3_cFPv();
extern "C" void playm__11daNpcCdn3_cFPv();
extern "C" void turnr__11daNpcCdn3_cFPv();
extern "C" void turnl__11daNpcCdn3_cFPv();
extern "C" void walka__11daNpcCdn3_cFPv();
extern "C" void walkb__11daNpcCdn3_cFPv();
extern "C" void runa__11daNpcCdn3_cFPv();
extern "C" void runb__11daNpcCdn3_cFPv();
extern "C" void browsea__11daNpcCdn3_cFPv();
extern "C" void browseb__11daNpcCdn3_cFPv();
extern "C" void dance__11daNpcCdn3_cFPv();
extern "C" void ladytalka__11daNpcCdn3_cFPv();
extern "C" void ladytalkb__11daNpcCdn3_cFPv();
extern "C" void normtalka__11daNpcCdn3_cFPv();
extern "C" void normtalkb__11daNpcCdn3_cFPv();
extern "C" void sellme__11daNpcCdn3_cFPv();
extern "C" void sing__11daNpcCdn3_cFPv();
extern "C" static void daNpcCdn3_Create__FPv();
extern "C" void create__11daNpcCdn3_cFv();
extern "C" void create_init__11daNpcCdn3_cFv();
extern "C" void setMtx__11daNpcCdn3_cFv();
extern "C" void lookat__11daNpcCdn3_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" static void daNpcCdn3_Delete__FPv();
extern "C" void __dt__11daNpcCdn3_cFv();
extern "C" static void daNpcCdn3_Execute__FPv();
extern "C" void execute__11daNpcCdn3_cFv();
extern "C" void checkTimeSchedule__11daNpcCdn3_cFv();
extern "C" static void daNpcCdn3_Draw__FPv();
extern "C" static bool daNpcCdn3_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_npc_cdn3_cpp();
extern "C" static void func_8097EFD8();
extern "C" static void func_8097EFE0();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__10daNpcCd2_cFv();
extern "C" void __dt__16dNpcLib_lookat_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" extern char const* const d_a_npc_cdn3__stringBase0;
extern "C" u8 ActionTable__11daNpcCdn3_c[192];
extern "C" void* m_funcTbl__11daNpcCdn3_c[44];
extern "C" u8 m_seq00_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq01_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq02_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq03_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq04_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq05_funcTbl__11daNpcCdn3_c[48];
extern "C" u8 m_seq06_funcTbl__11daNpcCdn3_c[48];
extern "C" u8 m_seq07_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq08_funcTbl__11daNpcCdn3_c[84];
extern "C" u8 m_seq09_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq10_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq11_funcTbl__11daNpcCdn3_c[72];
extern "C" u8 m_seq12_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq13_funcTbl__11daNpcCdn3_c[72];
extern "C" u8 m_seq14_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq15_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq16_funcTbl__11daNpcCdn3_c[84];
extern "C" u8 m_seq17_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq18_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq19_funcTbl__11daNpcCdn3_c[84];
extern "C" u8 m_seq20_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq21_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq22_funcTbl__11daNpcCdn3_c[48];
extern "C" u8 m_seq23_funcTbl__11daNpcCdn3_c[84];
extern "C" u8 m_seq24_funcTbl__11daNpcCdn3_c[60];
extern "C" u8 m_seq25_funcTbl__11daNpcCdn3_c[84];
extern "C" u8 m_seq26_funcTbl__11daNpcCdn3_c[36];
extern "C" u8 m_seq27_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq28_funcTbl__11daNpcCdn3_c[36];
extern "C" u8 m_seq29_funcTbl__11daNpcCdn3_c[36];
extern "C" u8 m_seq30_funcTbl__11daNpcCdn3_c[72];
extern "C" u8 m_seq31_funcTbl__11daNpcCdn3_c[72];
extern "C" u8 m_seq32_funcTbl__11daNpcCdn3_c[84];
extern "C" u8 m_seq33_funcTbl__11daNpcCdn3_c[84];
extern "C" u8 m_seq34_funcTbl__11daNpcCdn3_c[108];
extern "C" u8 m_seq35_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq36_funcTbl__11daNpcCdn3_c[48];
extern "C" u8 m_seq37_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq38_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq39_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq40_funcTbl__11daNpcCdn3_c[36];
extern "C" u8 m_seq41_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq42_funcTbl__11daNpcCdn3_c[24];
extern "C" u8 m_seq43_funcTbl__11daNpcCdn3_c[36];

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void setMorf__13mDoExt_morf_cFf();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_getPolygonAngle__FPC8cM3dGPlas();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void onSwitch__12dSv_danBit_cFi();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void convPId__14dEvt_control_cFUi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
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
extern "C" void NpcCreate__10daNpcCd2_cFi();
extern "C" void ObjCreate__10daNpcCd2_cFi();
extern "C" void ChairCreate__10daNpcCd2_cFf();
extern "C" void isM___10daNpcCd2_cFv();
extern "C" void getAnmP__10daNpcCd2_cFii();
extern "C" void setAttention__10daNpcCd2_cFi();
extern "C" void loadResrc__10daNpcCd2_cFii();
extern "C" void removeResrc__10daNpcCd2_cFii();
extern "C" void setEnvTevCol__10daNpcCd2_cFv();
extern "C" void setRoomNo__10daNpcCd2_cFv();
extern "C" void animation__10daNpcCd2_cFi();
extern "C" void setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii();
extern "C" void drawShadow__10daNpcCd2_cFf();
extern "C" void drawObj__10daNpcCd2_cFiP8J3DModelf();
extern "C" void drawNpc__10daNpcCd2_cFv();
extern "C" void getEscapeTag__10daNpcCd2_cFv();
extern "C" void checkFearSituation__10daNpcCd2_cFv();
extern "C" void setPath__11PathTrace_cFiiiP4cXyzb();
extern "C" void checkPoint__11PathTrace_cF4cXyzf();
extern "C" void checkPathEnd__11PathTrace_cF4cXyzf();
extern "C" void getTargetPoint__11PathTrace_cFP3Vec();
extern "C" void setNextPoint__11PathTrace_cFR4cXyz();
extern "C" void checkObstacle__11PathTrace_cFP10fopAc_ac_c();
extern "C" void checkNowWolfEyeUp__9daPy_py_cFv();
extern "C" void dKy_getdaytime_hour__Fv();
extern "C" void dKy_getdaytime_minute__Fv();
extern "C" void dKy_getDarktime_hour__Fv();
extern "C" void dKy_getDarktime_minute__Fv();
extern "C" void dKy_getDarktime_week__Fv();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_get_dayofweek__Fv();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void getActor__12dMsgObject_cFv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void __ct__16dNpcLib_lookat_cFv();
extern "C" void init__16dNpcLib_lookat_cFP8J3DModelPiP5csXyzP5csXyz();
extern "C" void action__16dNpcLib_lookat_cF4cXyz4cXyzP10fopAc_ac_cPA4_fi();
extern "C" void dbView__16dNpcLib_lookat_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__5csXyzFsss();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleY__FRC3VecRC3Vec();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void __ct__17Z2CreatureCitizenFv();
extern "C" void __dt__17Z2CreatureCitizenFv();
extern "C" void playVoice__17Z2CreatureCitizenFi();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __destroy_arr();
extern "C" void __ptmf_test();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 const m_cylDat__10daNpcCd2_c[68];
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 l_Cd2_HIO[16396];
extern "C" f32 Zero__4cXyz[3];

//
// Declarations:
//

/* 80978CD8-80978DD4 000078 00FC+00 1/1 0/0 0/0 .text            createHeapCallBack__FP10fopAc_ac_c
 */
static void createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

UNK_REL_DATA

/* 8097F788-8097F848 0000E0 00C0+00 1/2 0/0 0/0 .data            ActionTable__11daNpcCdn3_c */
daNpcCdn3_c::actionFunc daNpcCdn3_c::ActionTable[16] = {
    &daNpcCdn3_c::initWait,
    &daNpcCdn3_c::executeWait,
    &daNpcCdn3_c::initPath,
    &daNpcCdn3_c::executePath,
    &daNpcCdn3_c::initTalk,
    &daNpcCdn3_c::executeTalk,
    &daNpcCdn3_c::initEscape,
    &daNpcCdn3_c::executeEscape,
    &daNpcCdn3_c::initFear,
    &daNpcCdn3_c::executeFear,
    &daNpcCdn3_c::initFear2,
    &daNpcCdn3_c::executeFear2,
    &daNpcCdn3_c::initFight,
    &daNpcCdn3_c::executeFight,
    &daNpcCdn3_c::initRelief,
    &daNpcCdn3_c::executeRelief,
};

/* 80978DD4-80978E18 000174 0044+00 9/9 0/0 0/0 .text
 * setAction__11daNpcCdn3_cFQ211daNpcCdn3_c6Mode_e              */
void daNpcCdn3_c::setAction(daNpcCdn3_c::Mode_e param_0) {
    // NONMATCHING
}

/* 80978E18-80978E40 0001B8 0028+00 1/1 0/0 0/0 .text            callInit__11daNpcCdn3_cFv */
void daNpcCdn3_c::callInit() {
    // NONMATCHING
}

/* 80978E40-80978E6C 0001E0 002C+00 1/1 0/0 0/0 .text            callExecute__11daNpcCdn3_cFv */
void daNpcCdn3_c::callExecute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8097F904-8097F91C 00025C 0018+00 1/1 0/0 0/0 .data            m_seq00_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq00_funcTbl__11daNpcCdn3_c[24];

/* 8097F928-8097F940 000280 0018+00 1/1 0/0 0/0 .data            m_seq01_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq01_funcTbl__11daNpcCdn3_c[24];

/* 8097F94C-8097F964 0002A4 0018+00 1/1 0/0 0/0 .data            m_seq02_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq02_funcTbl__11daNpcCdn3_c[24];

/* 8097F970-8097F988 0002C8 0018+00 1/1 0/0 0/0 .data            m_seq03_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq03_funcTbl__11daNpcCdn3_c[24];

/* 8097F994-8097F9AC 0002EC 0018+00 1/1 0/0 0/0 .data            m_seq04_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq04_funcTbl__11daNpcCdn3_c[24];

/* 8097F9D0-8097FA00 000328 0030+00 1/1 0/0 0/0 .data            m_seq05_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq05_funcTbl__11daNpcCdn3_c[48];

/* 8097FA24-8097FA54 00037C 0030+00 1/1 0/0 0/0 .data            m_seq06_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq06_funcTbl__11daNpcCdn3_c[48];

/* 8097FA60-8097FA78 0003B8 0018+00 1/1 0/0 0/0 .data            m_seq07_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq07_funcTbl__11daNpcCdn3_c[24];

/* 8097FAC0-8097FB14 000418 0054+00 1/1 0/0 0/0 .data            m_seq08_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq08_funcTbl__11daNpcCdn3_c[84];

/* 8097FB20-8097FB38 000478 0018+00 1/1 0/0 0/0 .data            m_seq09_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq09_funcTbl__11daNpcCdn3_c[24];

/* 8097FB44-8097FB5C 00049C 0018+00 1/1 0/0 0/0 .data            m_seq10_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq10_funcTbl__11daNpcCdn3_c[24];

/* 8097FB98-8097FBE0 0004F0 0048+00 1/1 0/0 0/0 .data            m_seq11_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq11_funcTbl__11daNpcCdn3_c[72];

/* 8097FBEC-8097FC04 000544 0018+00 1/1 0/0 0/0 .data            m_seq12_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq12_funcTbl__11daNpcCdn3_c[24];

/* 8097FC40-8097FC88 000598 0048+00 1/1 0/0 0/0 .data            m_seq13_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq13_funcTbl__11daNpcCdn3_c[72];

/* 8097FC94-8097FCAC 0005EC 0018+00 1/1 0/0 0/0 .data            m_seq14_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq14_funcTbl__11daNpcCdn3_c[24];

/* 8097FCB8-8097FCD0 000610 0018+00 1/1 0/0 0/0 .data            m_seq15_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq15_funcTbl__11daNpcCdn3_c[24];

/* 8097FD18-8097FD6C 000670 0054+00 1/1 0/0 0/0 .data            m_seq16_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq16_funcTbl__11daNpcCdn3_c[84];

/* 8097FD78-8097FD90 0006D0 0018+00 1/1 0/0 0/0 .data            m_seq17_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq17_funcTbl__11daNpcCdn3_c[24];

/* 8097FD9C-8097FDB4 0006F4 0018+00 1/1 0/0 0/0 .data            m_seq18_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq18_funcTbl__11daNpcCdn3_c[24];

/* 8097FDFC-8097FE50 000754 0054+00 1/1 0/0 0/0 .data            m_seq19_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq19_funcTbl__11daNpcCdn3_c[84];

/* 8097FE5C-8097FE74 0007B4 0018+00 1/1 0/0 0/0 .data            m_seq20_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq20_funcTbl__11daNpcCdn3_c[24];

/* 8097FE80-8097FE98 0007D8 0018+00 1/1 0/0 0/0 .data            m_seq21_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq21_funcTbl__11daNpcCdn3_c[24];

/* 8097FEBC-8097FEEC 000814 0030+00 1/1 0/0 0/0 .data            m_seq22_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq22_funcTbl__11daNpcCdn3_c[48];

/* 8097FF34-8097FF88 00088C 0054+00 1/1 0/0 0/0 .data            m_seq23_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq23_funcTbl__11daNpcCdn3_c[84];

/* 8097FFB8-8097FFF4 000910 003C+00 1/1 0/0 0/0 .data            m_seq24_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq24_funcTbl__11daNpcCdn3_c[60];

/* 8098003C-80980090 000994 0054+00 1/1 0/0 0/0 .data            m_seq25_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq25_funcTbl__11daNpcCdn3_c[84];

/* 809800A8-809800CC 000A00 0024+00 1/1 0/0 0/0 .data            m_seq26_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq26_funcTbl__11daNpcCdn3_c[36];

/* 809800D8-809800F0 000A30 0018+00 1/1 0/0 0/0 .data            m_seq27_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq27_funcTbl__11daNpcCdn3_c[24];

/* 80980108-8098012C 000A60 0024+00 1/1 0/0 0/0 .data            m_seq28_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq28_funcTbl__11daNpcCdn3_c[36];

/* 80980144-80980168 000A9C 0024+00 1/1 0/0 0/0 .data            m_seq29_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq29_funcTbl__11daNpcCdn3_c[36];

/* 809801A4-809801EC 000AFC 0048+00 1/1 0/0 0/0 .data            m_seq30_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq30_funcTbl__11daNpcCdn3_c[72];

/* 80980228-80980270 000B80 0048+00 1/1 0/0 0/0 .data            m_seq31_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq31_funcTbl__11daNpcCdn3_c[72];

/* 809802B8-8098030C 000C10 0054+00 1/1 0/0 0/0 .data            m_seq32_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq32_funcTbl__11daNpcCdn3_c[84];

/* 80980354-809803A8 000CAC 0054+00 1/1 0/0 0/0 .data            m_seq33_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq33_funcTbl__11daNpcCdn3_c[84];

/* 80980408-80980474 000D60 006C+00 1/1 0/0 0/0 .data            m_seq34_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq34_funcTbl__11daNpcCdn3_c[108];

/* 80980480-80980498 000DD8 0018+00 1/1 0/0 0/0 .data            m_seq35_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq35_funcTbl__11daNpcCdn3_c[24];

/* 809804BC-809804EC 000E14 0030+00 1/1 0/0 0/0 .data            m_seq36_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq36_funcTbl__11daNpcCdn3_c[48];

/* 809804F8-80980510 000E50 0018+00 1/1 0/0 0/0 .data            m_seq37_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq37_funcTbl__11daNpcCdn3_c[24];

/* 8098051C-80980534 000E74 0018+00 1/1 0/0 0/0 .data            m_seq38_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq38_funcTbl__11daNpcCdn3_c[24];

/* 80980540-80980558 000E98 0018+00 1/1 0/0 0/0 .data            m_seq39_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq39_funcTbl__11daNpcCdn3_c[24];

/* 80980570-80980594 000EC8 0024+00 1/1 0/0 0/0 .data            m_seq40_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq40_funcTbl__11daNpcCdn3_c[36];

/* 809805A0-809805B8 000EF8 0018+00 1/1 0/0 0/0 .data            m_seq41_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq41_funcTbl__11daNpcCdn3_c[24];

/* 809805C4-809805DC 000F1C 0018+00 1/1 0/0 0/0 .data            m_seq42_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq42_funcTbl__11daNpcCdn3_c[24];

/* 809805F4-80980618 000F4C 0024+00 1/1 0/0 0/0 .data            m_seq43_funcTbl__11daNpcCdn3_c */
extern "C" u8 m_seq43_funcTbl__11daNpcCdn3_c[36];

/* 8097F540-8097F544 000000 0004+00 13/13 0/0 0/0 .rodata          @4037 */
SECTION_RODATA static u8 const lit_4037[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8097F540, &lit_4037);

/* 8097F848-8097F8F8 -00001 00B0+00 5/5 0/0 0/0 .data            m_funcTbl__11daNpcCdn3_c */
SECTION_DATA void* daNpcCdn3_c::m_funcTbl[44] = {
    (void*)&daNpcCdn3_c::m_seq00_funcTbl, (void*)&daNpcCdn3_c::m_seq01_funcTbl,
    (void*)&daNpcCdn3_c::m_seq02_funcTbl, (void*)&daNpcCdn3_c::m_seq03_funcTbl,
    (void*)&daNpcCdn3_c::m_seq04_funcTbl, (void*)&daNpcCdn3_c::m_seq05_funcTbl,
    (void*)&daNpcCdn3_c::m_seq06_funcTbl, (void*)&daNpcCdn3_c::m_seq07_funcTbl,
    (void*)&daNpcCdn3_c::m_seq08_funcTbl, (void*)&daNpcCdn3_c::m_seq09_funcTbl,
    (void*)&daNpcCdn3_c::m_seq10_funcTbl, (void*)&daNpcCdn3_c::m_seq11_funcTbl,
    (void*)&daNpcCdn3_c::m_seq12_funcTbl, (void*)&daNpcCdn3_c::m_seq13_funcTbl,
    (void*)&daNpcCdn3_c::m_seq14_funcTbl, (void*)&daNpcCdn3_c::m_seq15_funcTbl,
    (void*)&daNpcCdn3_c::m_seq16_funcTbl, (void*)&daNpcCdn3_c::m_seq17_funcTbl,
    (void*)&daNpcCdn3_c::m_seq18_funcTbl, (void*)&daNpcCdn3_c::m_seq19_funcTbl,
    (void*)&daNpcCdn3_c::m_seq20_funcTbl, (void*)&daNpcCdn3_c::m_seq21_funcTbl,
    (void*)&daNpcCdn3_c::m_seq22_funcTbl, (void*)&daNpcCdn3_c::m_seq23_funcTbl,
    (void*)&daNpcCdn3_c::m_seq24_funcTbl, (void*)&daNpcCdn3_c::m_seq25_funcTbl,
    (void*)&daNpcCdn3_c::m_seq26_funcTbl, (void*)&daNpcCdn3_c::m_seq27_funcTbl,
    (void*)&daNpcCdn3_c::m_seq28_funcTbl, (void*)&daNpcCdn3_c::m_seq29_funcTbl,
    (void*)&daNpcCdn3_c::m_seq30_funcTbl, (void*)&daNpcCdn3_c::m_seq31_funcTbl,
    (void*)&daNpcCdn3_c::m_seq32_funcTbl, (void*)&daNpcCdn3_c::m_seq33_funcTbl,
    (void*)&daNpcCdn3_c::m_seq34_funcTbl, (void*)&daNpcCdn3_c::m_seq35_funcTbl,
    (void*)&daNpcCdn3_c::m_seq36_funcTbl, (void*)&daNpcCdn3_c::m_seq37_funcTbl,
    (void*)&daNpcCdn3_c::m_seq38_funcTbl, (void*)&daNpcCdn3_c::m_seq39_funcTbl,
    (void*)&daNpcCdn3_c::m_seq40_funcTbl, (void*)&daNpcCdn3_c::m_seq41_funcTbl,
    (void*)&daNpcCdn3_c::m_seq42_funcTbl, (void*)&daNpcCdn3_c::m_seq43_funcTbl,
};

/* 8097F8F8-8097F904 -00001 000C+00 0/1 0/0 0/0 .data            @5102 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5102[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097F904-8097F91C 00025C 0018+00 1/1 0/0 0/0 .data            m_seq00_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq00_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097F91C-8097F928 -00001 000C+00 0/1 0/0 0/0 .data            @5103 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5103[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)runa__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097F928-8097F940 000280 0018+00 1/1 0/0 0/0 .data            m_seq01_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq01_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097F940-8097F94C -00001 000C+00 0/1 0/0 0/0 .data            @5104 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5104[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097F94C-8097F964 0002A4 0018+00 1/1 0/0 0/0 .data            m_seq02_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq02_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097F964-8097F970 -00001 000C+00 0/1 0/0 0/0 .data            @5105 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5105[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097F970-8097F988 0002C8 0018+00 1/1 0/0 0/0 .data            m_seq03_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq03_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097F988-8097F994 -00001 000C+00 0/1 0/0 0/0 .data            @5106 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5106[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)runb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097F994-8097F9AC 0002EC 0018+00 1/1 0/0 0/0 .data            m_seq04_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq04_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097F9AC-8097F9B8 -00001 000C+00 0/1 0/0 0/0 .data            @5107 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5107[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turnr__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097F9B8-8097F9C4 -00001 000C+00 0/1 0/0 0/0 .data            @5108 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5108[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097F9C4-8097F9D0 -00001 000C+00 0/1 0/0 0/0 .data            @5109 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5109[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097F9D0-8097FA00 000328 0030+00 1/1 0/0 0/0 .data            m_seq05_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq05_funcTbl[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FA00-8097FA0C -00001 000C+00 0/1 0/0 0/0 .data            @5110 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5110[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turnl__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FA0C-8097FA18 -00001 000C+00 0/1 0/0 0/0 .data            @5111 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5111[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FA18-8097FA24 -00001 000C+00 0/1 0/0 0/0 .data            @5112 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5112[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FA24-8097FA54 00037C 0030+00 1/1 0/0 0/0 .data            m_seq06_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq06_funcTbl[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FA54-8097FA60 -00001 000C+00 0/1 0/0 0/0 .data            @5113 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5113[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitwall__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FA60-8097FA78 0003B8 0018+00 1/1 0/0 0/0 .data            m_seq07_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq07_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FA78-8097FA84 -00001 000C+00 0/1 0/0 0/0 .data            @5114 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5114[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkwall__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FA84-8097FA90 -00001 000C+00 0/1 0/0 0/0 .data            @5115 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5115[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitwall__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FA90-8097FA9C -00001 000C+00 0/1 0/0 0/0 .data            @5116 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5116[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkbwall__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FA9C-8097FAA8 -00001 000C+00 0/1 0/0 0/0 .data            @5117 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5117[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitwall__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FAA8-8097FAB4 -00001 000C+00 0/1 0/0 0/0 .data            @5118 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5118[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkwall__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FAB4-8097FAC0 -00001 000C+00 0/1 0/0 0/0 .data            @5119 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5119[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkbwall__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FAC0-8097FB14 000418 0054+00 1/1 0/0 0/0 .data            m_seq08_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq08_funcTbl[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FB14-8097FB20 -00001 000C+00 0/1 0/0 0/0 .data            @5120 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5120[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FB20-8097FB38 000478 0018+00 1/1 0/0 0/0 .data            m_seq09_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq09_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FB38-8097FB44 -00001 000C+00 0/1 0/0 0/0 .data            @5121 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5121[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkc__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FB44-8097FB5C 00049C 0018+00 1/1 0/0 0/0 .data            m_seq10_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq10_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FB5C-8097FB68 -00001 000C+00 0/1 0/0 0/0 .data            @5122 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5122[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FB68-8097FB74 -00001 000C+00 0/1 0/0 0/0 .data            @5123 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5123[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FB74-8097FB80 -00001 000C+00 0/1 0/0 0/0 .data            @5124 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5124[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FB80-8097FB8C -00001 000C+00 0/1 0/0 0/0 .data            @5125 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5125[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FB8C-8097FB98 -00001 000C+00 0/1 0/0 0/0 .data            @5126 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5126[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkc__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FB98-8097FBE0 0004F0 0048+00 1/1 0/0 0/0 .data            m_seq11_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq11_funcTbl[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FBE0-8097FBEC -00001 000C+00 0/1 0/0 0/0 .data            @5127 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5127[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FBEC-8097FC04 000544 0018+00 1/1 0/0 0/0 .data            m_seq12_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq12_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FC04-8097FC10 -00001 000C+00 0/1 0/0 0/0 .data            @5128 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5128[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)browsea__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FC10-8097FC1C -00001 000C+00 0/1 0/0 0/0 .data            @5129 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5129[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)browseb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FC1C-8097FC28 -00001 000C+00 0/1 0/0 0/0 .data            @5130 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5130[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FC28-8097FC34 -00001 000C+00 0/1 0/0 0/0 .data            @5131 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5131[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FC34-8097FC40 -00001 000C+00 0/1 0/0 0/0 .data            @5132 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5132[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FC40-8097FC88 000598 0048+00 1/1 0/0 0/0 .data            m_seq13_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq13_funcTbl[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FC88-8097FC94 -00001 000C+00 0/1 0/0 0/0 .data            @5133 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5133[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FC94-8097FCAC 0005EC 0018+00 1/1 0/0 0/0 .data            m_seq14_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq14_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FCAC-8097FCB8 -00001 000C+00 0/1 0/0 0/0 .data            @5134 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5134[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sitwaita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FCB8-8097FCD0 000610 0018+00 1/1 0/0 0/0 .data            m_seq15_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq15_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FCD0-8097FCDC -00001 000C+00 0/1 0/0 0/0 .data            @5135 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5135[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FCDC-8097FCE8 -00001 000C+00 0/1 0/0 0/0 .data            @5136 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5136[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sitwaita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FCE8-8097FCF4 -00001 000C+00 0/1 0/0 0/0 .data            @5137 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5137[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalkab__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FCF4-8097FD00 -00001 000C+00 0/1 0/0 0/0 .data            @5138 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5138[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sitwaita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FD00-8097FD0C -00001 000C+00 0/1 0/0 0/0 .data            @5139 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5139[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FD0C-8097FD18 -00001 000C+00 0/1 0/0 0/0 .data            @5140 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5140[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalkab__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FD18-8097FD6C 000670 0054+00 1/1 0/0 0/0 .data            m_seq16_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq16_funcTbl[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FD6C-8097FD78 -00001 000C+00 0/1 0/0 0/0 .data            @5141 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5141[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)playm__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FD78-8097FD90 0006D0 0018+00 1/1 0/0 0/0 .data            m_seq17_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq17_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FD90-8097FD9C -00001 000C+00 0/1 0/0 0/0 .data            @5142 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5142[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sitwaitb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FD9C-8097FDB4 0006F4 0018+00 1/1 0/0 0/0 .data            m_seq18_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq18_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FDB4-8097FDC0 -00001 000C+00 0/1 0/0 0/0 .data            @5143 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5143[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FDC0-8097FDCC -00001 000C+00 0/1 0/0 0/0 .data            @5144 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5144[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sitwaitb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FDCC-8097FDD8 -00001 000C+00 0/1 0/0 0/0 .data            @5145 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5145[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalkbb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FDD8-8097FDE4 -00001 000C+00 0/1 0/0 0/0 .data            @5146 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5146[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sitwaitb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FDE4-8097FDF0 -00001 000C+00 0/1 0/0 0/0 .data            @5147 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5147[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FDF0-8097FDFC -00001 000C+00 0/1 0/0 0/0 .data            @5148 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5148[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalkbb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FDFC-8097FE50 000754 0054+00 1/1 0/0 0/0 .data            m_seq19_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq19_funcTbl[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FE50-8097FE5C -00001 000C+00 0/1 0/0 0/0 .data            @5149 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5149[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)looka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FE5C-8097FE74 0007B4 0018+00 1/1 0/0 0/0 .data            m_seq20_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq20_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FE74-8097FE80 -00001 000C+00 0/1 0/0 0/0 .data            @5150 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5150[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)lookb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FE80-8097FE98 0007D8 0018+00 1/1 0/0 0/0 .data            m_seq21_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq21_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FE98-8097FEA4 -00001 000C+00 0/1 0/0 0/0 .data            @5151 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5151[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)looka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FEA4-8097FEB0 -00001 000C+00 0/1 0/0 0/0 .data            @5152 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5152[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)lookb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FEB0-8097FEBC -00001 000C+00 0/1 0/0 0/0 .data            @5153 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5153[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FEBC-8097FEEC 000814 0030+00 1/1 0/0 0/0 .data            m_seq22_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq22_funcTbl[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FEEC-8097FEF8 -00001 000C+00 0/1 0/0 0/0 .data            @5154 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5154[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FEF8-8097FF04 -00001 000C+00 0/1 0/0 0/0 .data            @5155 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5155[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FF04-8097FF10 -00001 000C+00 0/1 0/0 0/0 .data            @5156 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5156[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FF10-8097FF1C -00001 000C+00 0/1 0/0 0/0 .data            @5157 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5157[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FF1C-8097FF28 -00001 000C+00 0/1 0/0 0/0 .data            @5158 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5158[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FF28-8097FF34 -00001 000C+00 0/1 0/0 0/0 .data            @5159 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5159[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FF34-8097FF88 00088C 0054+00 1/1 0/0 0/0 .data            m_seq23_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq23_funcTbl[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FF88-8097FF94 -00001 000C+00 0/1 0/0 0/0 .data            @5160 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5160[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FF94-8097FFA0 -00001 000C+00 0/1 0/0 0/0 .data            @5161 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5161[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FFA0-8097FFAC -00001 000C+00 0/1 0/0 0/0 .data            @5162 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5162[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkc__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FFAC-8097FFB8 -00001 000C+00 0/1 0/0 0/0 .data            @5163 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5163[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8097FFB8-8097FFF4 000910 003C+00 1/1 0/0 0/0 .data            m_seq24_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq24_funcTbl[60] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8097FFF4-80980000 -00001 000C+00 0/1 0/0 0/0 .data            @5164 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5164[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)browsea__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980000-8098000C -00001 000C+00 0/1 0/0 0/0 .data            @5165 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5165[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)browseb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8098000C-80980018 -00001 000C+00 0/1 0/0 0/0 .data            @5166 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5166[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980018-80980024 -00001 000C+00 0/1 0/0 0/0 .data            @5167 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5167[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980024-80980030 -00001 000C+00 0/1 0/0 0/0 .data            @5168 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5168[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkc__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980030-8098003C -00001 000C+00 0/1 0/0 0/0 .data            @5169 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5169[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8098003C-80980090 000994 0054+00 1/1 0/0 0/0 .data            m_seq25_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq25_funcTbl[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80980090-8098009C -00001 000C+00 0/1 0/0 0/0 .data            @5170 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5170[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)browsea__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8098009C-809800A8 -00001 000C+00 0/1 0/0 0/0 .data            @5171 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5171[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)browseb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809800A8-809800CC 000A00 0024+00 1/1 0/0 0/0 .data            m_seq26_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq26_funcTbl[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 809800CC-809800D8 -00001 000C+00 0/1 0/0 0/0 .data            @5172 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5172[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)dance__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809800D8-809800F0 000A30 0018+00 1/1 0/0 0/0 .data            m_seq27_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq27_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 809800F0-809800FC -00001 000C+00 0/1 0/0 0/0 .data            @5173 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5173[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ladytalka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809800FC-80980108 -00001 000C+00 0/1 0/0 0/0 .data            @5174 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5174[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)normtalka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980108-8098012C 000A60 0024+00 1/1 0/0 0/0 .data            m_seq28_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq28_funcTbl[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8098012C-80980138 -00001 000C+00 0/1 0/0 0/0 .data            @5175 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5175[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ladytalkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980138-80980144 -00001 000C+00 0/1 0/0 0/0 .data            @5176 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5176[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)normtalkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980144-80980168 000A9C 0024+00 1/1 0/0 0/0 .data            m_seq29_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq29_funcTbl[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80980168-80980174 -00001 000C+00 0/1 0/0 0/0 .data            @5177 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5177[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980174-80980180 -00001 000C+00 0/1 0/0 0/0 .data            @5178 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5178[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ladytalka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980180-8098018C -00001 000C+00 0/1 0/0 0/0 .data            @5179 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5179[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8098018C-80980198 -00001 000C+00 0/1 0/0 0/0 .data            @5180 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5180[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980198-809801A4 -00001 000C+00 0/1 0/0 0/0 .data            @5181 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5181[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809801A4-809801EC 000AFC 0048+00 1/1 0/0 0/0 .data            m_seq30_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq30_funcTbl[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 809801EC-809801F8 -00001 000C+00 0/1 0/0 0/0 .data            @5182 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5182[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809801F8-80980204 -00001 000C+00 0/1 0/0 0/0 .data            @5183 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5183[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ladytalkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980204-80980210 -00001 000C+00 0/1 0/0 0/0 .data            @5184 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5184[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980210-8098021C -00001 000C+00 0/1 0/0 0/0 .data            @5185 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5185[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8098021C-80980228 -00001 000C+00 0/1 0/0 0/0 .data            @5186 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5186[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980228-80980270 000B80 0048+00 1/1 0/0 0/0 .data            m_seq31_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq31_funcTbl[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80980270-8098027C -00001 000C+00 0/1 0/0 0/0 .data            @5187 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5187[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8098027C-80980288 -00001 000C+00 0/1 0/0 0/0 .data            @5188 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5188[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ladytalka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980288-80980294 -00001 000C+00 0/1 0/0 0/0 .data            @5189 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5189[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980294-809802A0 -00001 000C+00 0/1 0/0 0/0 .data            @5190 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5190[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809802A0-809802AC -00001 000C+00 0/1 0/0 0/0 .data            @5191 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5191[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809802AC-809802B8 -00001 000C+00 0/1 0/0 0/0 .data            @5192 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5192[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)normtalka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809802B8-8098030C 000C10 0054+00 1/1 0/0 0/0 .data            m_seq32_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq32_funcTbl[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8098030C-80980318 -00001 000C+00 0/1 0/0 0/0 .data            @5193 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5193[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980318-80980324 -00001 000C+00 0/1 0/0 0/0 .data            @5194 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5194[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ladytalkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980324-80980330 -00001 000C+00 0/1 0/0 0/0 .data            @5195 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5195[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980330-8098033C -00001 000C+00 0/1 0/0 0/0 .data            @5196 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5196[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8098033C-80980348 -00001 000C+00 0/1 0/0 0/0 .data            @5197 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5197[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980348-80980354 -00001 000C+00 0/1 0/0 0/0 .data            @5198 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5198[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)normtalkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980354-809803A8 000CAC 0054+00 1/1 0/0 0/0 .data            m_seq33_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq33_funcTbl[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 809803A8-809803B4 -00001 000C+00 0/1 0/0 0/0 .data            @5199 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5199[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809803B4-809803C0 -00001 000C+00 0/1 0/0 0/0 .data            @5200 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5200[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ladytalka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809803C0-809803CC -00001 000C+00 0/1 0/0 0/0 .data            @5201 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5201[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ladytalkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809803CC-809803D8 -00001 000C+00 0/1 0/0 0/0 .data            @5202 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5202[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809803D8-809803E4 -00001 000C+00 0/1 0/0 0/0 .data            @5203 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5203[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809803E4-809803F0 -00001 000C+00 0/1 0/0 0/0 .data            @5204 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5204[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809803F0-809803FC -00001 000C+00 0/1 0/0 0/0 .data            @5205 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5205[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)normtalka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809803FC-80980408 -00001 000C+00 0/1 0/0 0/0 .data            @5206 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5206[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)normtalkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980408-80980474 000D60 006C+00 1/1 0/0 0/0 .data            m_seq34_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq34_funcTbl[108] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80980474-80980480 -00001 000C+00 0/1 0/0 0/0 .data            @5207 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5207[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sellme__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980480-80980498 000DD8 0018+00 1/1 0/0 0/0 .data            m_seq35_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq35_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80980498-809804A4 -00001 000C+00 0/1 0/0 0/0 .data            @5208 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5208[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ladytalkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809804A4-809804B0 -00001 000C+00 0/1 0/0 0/0 .data            @5209 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5209[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809804B0-809804BC -00001 000C+00 0/1 0/0 0/0 .data            @5210 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5210[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809804BC-809804EC 000E14 0030+00 1/1 0/0 0/0 .data            m_seq36_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq36_funcTbl[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 809804EC-809804F8 -00001 000C+00 0/1 0/0 0/0 .data            @5211 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5211[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sing__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809804F8-80980510 000E50 0018+00 1/1 0/0 0/0 .data            m_seq37_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq37_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80980510-8098051C -00001 000C+00 0/1 0/0 0/0 .data            @5212 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5212[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 8098051C-80980534 000E74 0018+00 1/1 0/0 0/0 .data            m_seq38_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq38_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80980534-80980540 -00001 000C+00 0/1 0/0 0/0 .data            @5213 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5213[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalkab__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980540-80980558 000E98 0018+00 1/1 0/0 0/0 .data            m_seq39_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq39_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80980558-80980564 -00001 000C+00 0/1 0/0 0/0 .data            @5214 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5214[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalka__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980564-80980570 -00001 000C+00 0/1 0/0 0/0 .data            @5215 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5215[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalkab__11daNpcCdn3_cFPv,
};
#pragma pop

/* 80980570-80980594 000EC8 0024+00 1/1 0/0 0/0 .data            m_seq40_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq40_funcTbl[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80980594-809805A0 -00001 000C+00 0/1 0/0 0/0 .data            @5216 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5216[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809805A0-809805B8 000EF8 0018+00 1/1 0/0 0/0 .data            m_seq41_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq41_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 809805B8-809805C4 -00001 000C+00 0/1 0/0 0/0 .data            @5217 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5217[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalkbb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809805C4-809805DC 000F1C 0018+00 1/1 0/0 0/0 .data            m_seq42_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq42_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 809805DC-809805E8 -00001 000C+00 0/1 0/0 0/0 .data            @5218 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5218[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalkb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809805E8-809805F4 -00001 000C+00 0/1 0/0 0/0 .data            @5219 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5219[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalkbb__11daNpcCdn3_cFPv,
};
#pragma pop

/* 809805F4-80980618 000F4C 0024+00 1/1 0/0 0/0 .data            m_seq43_funcTbl__11daNpcCdn3_c */
SECTION_DATA u8 daNpcCdn3_c::m_seq43_funcTbl[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80978E6C-80978ED0 00020C 0064+00 1/0 0/0 0/0 .text            initWait__11daNpcCdn3_cFv */
void daNpcCdn3_c::initWait() {
    // NONMATCHING
}

/* 80978ED0-80979080 000270 01B0+00 1/0 0/0 0/0 .text            executeWait__11daNpcCdn3_cFv */
void daNpcCdn3_c::executeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8097F544-8097F548 000004 0004+00 36/46 0/0 0/0 .rodata          @4091 */
SECTION_RODATA static f32 const lit_4091 = 1.0f;
COMPILER_STRIP_GATE(0x8097F544, &lit_4091);

/* 8097F548-8097F550 000008 0004+04 34/42 0/0 0/0 .rodata          @4092 */
SECTION_RODATA static f32 const lit_4092[1 + 1 /* padding */] = {
    12.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8097F548, &lit_4092);

/* 80979080-80979144 000420 00C4+00 1/0 0/0 0/0 .text            initPath__11daNpcCdn3_cFv */
void daNpcCdn3_c::initPath() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8097F550-8097F558 000010 0008+00 0/2 0/0 0/0 .rodata          @4280 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4280[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8097F550, &lit_4280);
#pragma pop

/* 8097F558-8097F560 000018 0008+00 0/2 0/0 0/0 .rodata          @4281 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4281[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8097F558, &lit_4281);
#pragma pop

/* 8097F560-8097F568 000020 0008+00 0/2 0/0 0/0 .rodata          @4282 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4282[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8097F560, &lit_4282);
#pragma pop

/* 8097F568-8097F56C 000028 0004+00 0/2 0/0 0/0 .rodata          @4283 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4283 = 2.0f;
COMPILER_STRIP_GATE(0x8097F568, &lit_4283);
#pragma pop

/* 8097F5AC-8097F5AC 00006C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8097F5AC =
    "城下町の町人 パス点引数設定値異常 引数1モーションシーケンス=%dが異常です。\n";
#pragma pop

/* 80980618-80980638 -00001 0020+00 1/1 0/0 0/0 .data            @5488 */
SECTION_DATA static void* lit_5488[8] = {
    (void*)(((char*)create__11daNpcCdn3_cFv) + 0x22C),
    (void*)(((char*)create__11daNpcCdn3_cFv) + 0x234),
    (void*)(((char*)create__11daNpcCdn3_cFv) + 0x23C),
    (void*)(((char*)create__11daNpcCdn3_cFv) + 0x244),
    (void*)(((char*)create__11daNpcCdn3_cFv) + 0x24C),
    (void*)(((char*)create__11daNpcCdn3_cFv) + 0x254),
    (void*)(((char*)create__11daNpcCdn3_cFv) + 0x25C),
    (void*)(((char*)create__11daNpcCdn3_cFv) + 0x264),
};

/* 80980638-80980658 -00001 0020+00 1/1 0/0 0/0 .data            @5487 */
SECTION_DATA static void* lit_5487[8] = {
    (void*)(((char*)create__11daNpcCdn3_cFv) + 0x194),
    (void*)(((char*)create__11daNpcCdn3_cFv) + 0x19C),
    (void*)(((char*)create__11daNpcCdn3_cFv) + 0x1A4),
    (void*)(((char*)create__11daNpcCdn3_cFv) + 0x1AC),
    (void*)(((char*)create__11daNpcCdn3_cFv) + 0x1B4),
    (void*)(((char*)create__11daNpcCdn3_cFv) + 0x1BC),
    (void*)(((char*)create__11daNpcCdn3_cFv) + 0x1C4),
    (void*)(((char*)create__11daNpcCdn3_cFv) + 0x1CC),
};

/* 80980658-80980678 -00001 0020+00 1/0 0/0 0/0 .data            daNpcCdn3_METHODS */
static actor_method_class daNpcCdn3_METHODS = {
    (process_method_func)daNpcCdn3_Create__FPv,
    (process_method_func)daNpcCdn3_Delete__FPv,
    (process_method_func)daNpcCdn3_Execute__FPv,
    (process_method_func)daNpcCdn3_IsDelete__FPv,
    (process_method_func)daNpcCdn3_Draw__FPv,
};

/* 80980678-809806A8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_CD3 */
extern actor_process_profile_definition g_profile_NPC_CD3 = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_CD3,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcCdn3_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  395,                    // mPriority
  &daNpcCdn3_METHODS,     // sub_method
  0x00040107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 809806A8-809806B4 001000 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 809806B4-809806C0 00100C 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 809806C0-809806CC 001018 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 809806CC-809806D8 001024 000C+00 2/2 0/0 0/0 .data            __vt__16dNpcLib_lookat_c */
SECTION_DATA extern void* __vt__16dNpcLib_lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16dNpcLib_lookat_cFv,
};

/* 809806D8-809806E4 001030 000C+00 3/3 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 809806E4-809806F0 00103C 000C+00 2/2 0/0 0/0 .data            __vt__11daNpcCdn3_c */
SECTION_DATA extern void* __vt__11daNpcCdn3_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpcCdn3_cFv,
};

/* 809806F0-809806FC 001048 000C+00 3/3 0/0 0/1 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 809806FC-80980708 001054 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80980708-8098072C 001060 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8097EFE0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8097EFD8,
};

/* 8098072C-80980738 001084 000C+00 2/2 0/0 0/0 .data            __vt__10daNpcCd2_c */
SECTION_DATA extern void* __vt__10daNpcCd2_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10daNpcCd2_cFv,
};

/* 80980738-80980744 001090 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80979144-809799B0 0004E4 086C+00 1/0 0/0 0/0 .text            executePath__11daNpcCdn3_cFv */
void daNpcCdn3_c::executePath() {
    // NONMATCHING
}

/* 809799B0-809799F8 000D50 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 809799F8-80979A34 000D98 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80979A34-80979B2C 000DD4 00F8+00 1/0 0/0 0/0 .text            initTalk__11daNpcCdn3_cFv */
void daNpcCdn3_c::initTalk() {
    // NONMATCHING
}

/* 80979B2C-80979F08 000ECC 03DC+00 1/0 0/0 0/0 .text            executeTalk__11daNpcCdn3_cFv */
void daNpcCdn3_c::executeTalk() {
    // NONMATCHING
}

/* 80979F08-8097A028 0012A8 0120+00 1/0 0/0 0/0 .text            initEscape__11daNpcCdn3_cFv */
void daNpcCdn3_c::initEscape() {
    // NONMATCHING
}

/* 8097A028-8097A398 0013C8 0370+00 1/0 0/0 0/0 .text            executeEscape__11daNpcCdn3_cFv */
void daNpcCdn3_c::executeEscape() {
    // NONMATCHING
}

/* 8097A398-8097A518 001738 0180+00 1/0 0/0 0/0 .text            initFear__11daNpcCdn3_cFv */
void daNpcCdn3_c::initFear() {
    // NONMATCHING
}

/* 8097A518-8097A60C 0018B8 00F4+00 1/0 0/0 0/0 .text            executeFear__11daNpcCdn3_cFv */
void daNpcCdn3_c::executeFear() {
    // NONMATCHING
}

/* 8097A60C-8097A6AC 0019AC 00A0+00 1/0 0/0 0/0 .text            initFear2__11daNpcCdn3_cFv */
void daNpcCdn3_c::initFear2() {
    // NONMATCHING
}

/* 8097A6AC-8097A724 001A4C 0078+00 1/0 0/0 0/0 .text            executeFear2__11daNpcCdn3_cFv */
void daNpcCdn3_c::executeFear2() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8097F56C-8097F570 00002C 0004+00 0/2 0/0 0/0 .rodata          @4583 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4583 = -40.0f;
COMPILER_STRIP_GATE(0x8097F56C, &lit_4583);
#pragma pop

/* 8097F570-8097F574 000030 0004+00 0/2 0/0 0/0 .rodata          @4584 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4584 = -10.0f;
COMPILER_STRIP_GATE(0x8097F570, &lit_4584);
#pragma pop

/* 8097F574-8097F578 000034 0004+00 0/1 0/0 0/0 .rodata          @4585 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4585 = -80.0f;
COMPILER_STRIP_GATE(0x8097F574, &lit_4585);
#pragma pop

/* 8097F578-8097F57C 000038 0004+00 0/2 0/0 0/0 .rodata          @4586 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4586 = 40.0f;
COMPILER_STRIP_GATE(0x8097F578, &lit_4586);
#pragma pop

/* 8097F57C-8097F580 00003C 0004+00 0/2 0/0 0/0 .rodata          @4587 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4587 = 190.0f;
COMPILER_STRIP_GATE(0x8097F57C, &lit_4587);
#pragma pop

/* 8097F580-8097F584 000040 0004+00 0/1 0/0 0/0 .rodata          @4588 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4588 = 200.0f;
COMPILER_STRIP_GATE(0x8097F580, &lit_4588);
#pragma pop

/* 8097A724-8097A7E0 001AC4 00BC+00 1/0 0/0 0/0 .text            initFight__11daNpcCdn3_cFv */
void daNpcCdn3_c::initFight() {
    // NONMATCHING
}

/* 8097A7E0-8097A960 001B80 0180+00 1/0 0/0 0/0 .text            executeFight__11daNpcCdn3_cFv */
void daNpcCdn3_c::executeFight() {
    // NONMATCHING
}

/* 8097A960-8097A9E4 001D00 0084+00 1/0 0/0 0/0 .text            initRelief__11daNpcCdn3_cFv */
void daNpcCdn3_c::initRelief() {
    // NONMATCHING
}

/* 8097A9E4-8097ABDC 001D84 01F8+00 1/0 0/0 0/0 .text            executeRelief__11daNpcCdn3_cFv */
void daNpcCdn3_c::executeRelief() {
    // NONMATCHING
}

/* 8097ABDC-8097ABE8 001F7C 000C+00 3/3 0/0 0/0 .text            setAngle__11daNpcCdn3_cFv */
void daNpcCdn3_c::setAngle() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8097F584-8097F588 000044 0004+00 0/1 0/0 0/0 .rodata          @4752 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4752 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x8097F584, &lit_4752);
#pragma pop

/* 8097F588-8097F58C 000048 0004+00 0/1 0/0 0/0 .rodata          @4753 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4753 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x8097F588, &lit_4753);
#pragma pop

/* 8097F58C-8097F590 00004C 0004+00 0/1 0/0 0/0 .rodata          @4754 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4754 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x8097F58C, &lit_4754);
#pragma pop

/* 8097F590-8097F594 000050 0004+00 0/1 0/0 0/0 .rodata          @4755 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4755 = 1.5f;
COMPILER_STRIP_GATE(0x8097F590, &lit_4755);
#pragma pop

/* 8097F594-8097F598 000054 0004+00 0/1 0/0 0/0 .rodata          @4756 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4756 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x8097F594, &lit_4756);
#pragma pop

/* 8097F598-8097F59C 000058 0004+00 0/1 0/0 0/0 .rodata          @4757 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4757 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x8097F598, &lit_4757);
#pragma pop

/* 8097ABE8-8097AF14 001F88 032C+00 2/2 0/0 0/0 .text            pathMoveF__11daNpcCdn3_cFv */
void daNpcCdn3_c::pathMoveF() {
    // NONMATCHING
}

/* 8097AF14-8097AFE0 0022B4 00CC+00 1/1 0/0 0/0 .text            ctrlMsgAnm__11daNpcCdn3_cFv */
void daNpcCdn3_c::ctrlMsgAnm() {
    // NONMATCHING
}

/* 8097AFE0-8097B04C 002380 006C+00 1/1 0/0 0/0 .text            s_sub1__FPvPv */
static void s_sub1(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8097B04C-8097B128 0023EC 00DC+00 1/1 0/0 0/0 .text
 * searchNextScheduleTagSub__11daNpcCdn3_cFP10fopAc_ac_c        */
void daNpcCdn3_c::searchNextScheduleTagSub(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8097B128-8097B194 0024C8 006C+00 1/1 0/0 0/0 .text            s_sub2__FPvPv */
static void s_sub2(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8097B194-8097B288 002534 00F4+00 1/1 0/0 0/0 .text
 * searchFirstScheduleTagSub__11daNpcCdn3_cFP10fopAc_ac_c       */
void daNpcCdn3_c::searchFirstScheduleTagSub(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8097B288-8097B38C 002628 0104+00 2/2 0/0 0/0 .text            checkSchedule__11daNpcCdn3_cFv */
void daNpcCdn3_c::checkSchedule() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8097F5AC-8097F5AC 00006C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8097F5F8 =
    "城下町の町人 スケジュールタグ設定値異常 引数1モーションシーケンス=%dが異常です。\n";
#pragma pop

/* 8097B38C-8097B5A8 00272C 021C+00 3/3 0/0 0/0 .text
 * setSchedule__11daNpcCdn3_cFP15daTagSchedule_c                */
void daNpcCdn3_c::setSchedule(daTagSchedule_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8097F5AC-8097F5AC 00006C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8097F64A = "R_SP160";
#pragma pop

/* 8097B5A8-8097B60C 002948 0064+00 2/2 0/0 0/0 .text            isInShop__11daNpcCdn3_cFv */
void daNpcCdn3_c::isInShop() {
    // NONMATCHING
}

/* 8097B60C-8097B684 0029AC 0078+00 3/3 0/0 0/0 .text            isChairStyle__11daNpcCdn3_cFv */
void daNpcCdn3_c::isChairStyle() {
    // NONMATCHING
}

/* 8097B684-8097B6D0 002A24 004C+00 2/2 0/0 0/0 .text            isNoTurnTalk__11daNpcCdn3_cFv */
void daNpcCdn3_c::isNoTurnTalk() {
    // NONMATCHING
}

/* 8097B6D0-8097B754 002A70 0084+00 21/0 0/0 0/0 .text            waita__11daNpcCdn3_cFPv */
void daNpcCdn3_c::waita(void* param_0) {
    // NONMATCHING
}

/* 8097B754-8097B7D8 002AF4 0084+00 15/0 0/0 0/0 .text            talka__11daNpcCdn3_cFPv */
void daNpcCdn3_c::talka(void* param_0) {
    // NONMATCHING
}

/* 8097B7D8-8097B85C 002B78 0084+00 3/0 0/0 0/0 .text            waitwall__11daNpcCdn3_cFPv */
void daNpcCdn3_c::waitwall(void* param_0) {
    // NONMATCHING
}

/* 8097B85C-8097B8E0 002BFC 0084+00 2/0 0/0 0/0 .text            talkwall__11daNpcCdn3_cFPv */
void daNpcCdn3_c::talkwall(void* param_0) {
    // NONMATCHING
}

/* 8097B8E0-8097B964 002C80 0084+00 2/0 0/0 0/0 .text            talkbwall__11daNpcCdn3_cFPv */
void daNpcCdn3_c::talkbwall(void* param_0) {
    // NONMATCHING
}

/* 8097B964-8097B9E8 002D04 0084+00 12/0 0/0 0/0 .text            talkb__11daNpcCdn3_cFPv */
void daNpcCdn3_c::talkb(void* param_0) {
    // NONMATCHING
}

/* 8097B9E8-8097BA6C 002D88 0084+00 4/0 0/0 0/0 .text            talkc__11daNpcCdn3_cFPv */
void daNpcCdn3_c::talkc(void* param_0) {
    // NONMATCHING
}

/* 8097BA6C-8097BAF0 002E0C 0084+00 2/0 0/0 0/0 .text            waitb__11daNpcCdn3_cFPv */
void daNpcCdn3_c::waitb(void* param_0) {
    // NONMATCHING
}

/* 8097BAF0-8097BB74 002E90 0084+00 3/0 0/0 0/0 .text            sitwaita__11daNpcCdn3_cFPv */
void daNpcCdn3_c::sitwaita(void* param_0) {
    // NONMATCHING
}

/* 8097BB74-8097BBF8 002F14 0084+00 4/0 0/0 0/0 .text            sittalka__11daNpcCdn3_cFPv */
void daNpcCdn3_c::sittalka(void* param_0) {
    // NONMATCHING
}

/* 8097BBF8-8097BC7C 002F98 0084+00 4/0 0/0 0/0 .text            sittalkab__11daNpcCdn3_cFPv */
void daNpcCdn3_c::sittalkab(void* param_0) {
    // NONMATCHING
}

/* 8097BC7C-8097BD00 00301C 0084+00 3/0 0/0 0/0 .text            sitwaitb__11daNpcCdn3_cFPv */
void daNpcCdn3_c::sitwaitb(void* param_0) {
    // NONMATCHING
}

/* 8097BD00-8097BD84 0030A0 0084+00 4/0 0/0 0/0 .text            sittalkb__11daNpcCdn3_cFPv */
void daNpcCdn3_c::sittalkb(void* param_0) {
    // NONMATCHING
}

/* 8097BD84-8097BE08 003124 0084+00 4/0 0/0 0/0 .text            sittalkbb__11daNpcCdn3_cFPv */
void daNpcCdn3_c::sittalkbb(void* param_0) {
    // NONMATCHING
}

/* 8097BE08-8097BE8C 0031A8 0084+00 2/0 0/0 0/0 .text            looka__11daNpcCdn3_cFPv */
void daNpcCdn3_c::looka(void* param_0) {
    // NONMATCHING
}

/* 8097BE8C-8097BF10 00322C 0084+00 2/0 0/0 0/0 .text            lookb__11daNpcCdn3_cFPv */
void daNpcCdn3_c::lookb(void* param_0) {
    // NONMATCHING
}

/* 8097BF10-8097C070 0032B0 0160+00 1/0 0/0 0/0 .text            playm__11daNpcCdn3_cFPv */
void daNpcCdn3_c::playm(void* param_0) {
    // NONMATCHING
}

/* 8097C070-8097C12C 003410 00BC+00 1/0 0/0 0/0 .text            turnr__11daNpcCdn3_cFPv */
void daNpcCdn3_c::turnr(void* param_0) {
    // NONMATCHING
}

/* 8097C12C-8097C1E8 0034CC 00BC+00 1/0 0/0 0/0 .text            turnl__11daNpcCdn3_cFPv */
void daNpcCdn3_c::turnl(void* param_0) {
    // NONMATCHING
}

/* 8097C1E8-8097C250 003588 0068+00 1/0 0/0 0/0 .text            walka__11daNpcCdn3_cFPv */
void daNpcCdn3_c::walka(void* param_0) {
    // NONMATCHING
}

/* 8097C250-8097C2B8 0035F0 0068+00 1/0 0/0 0/0 .text            walkb__11daNpcCdn3_cFPv */
void daNpcCdn3_c::walkb(void* param_0) {
    // NONMATCHING
}

/* 8097C2B8-8097C320 003658 0068+00 1/0 0/0 0/0 .text            runa__11daNpcCdn3_cFPv */
void daNpcCdn3_c::runa(void* param_0) {
    // NONMATCHING
}

/* 8097C320-8097C388 0036C0 0068+00 1/0 0/0 0/0 .text            runb__11daNpcCdn3_cFPv */
void daNpcCdn3_c::runb(void* param_0) {
    // NONMATCHING
}

/* 8097C388-8097C40C 003728 0084+00 3/0 0/0 0/0 .text            browsea__11daNpcCdn3_cFPv */
void daNpcCdn3_c::browsea(void* param_0) {
    // NONMATCHING
}

/* 8097C40C-8097C490 0037AC 0084+00 3/0 0/0 0/0 .text            browseb__11daNpcCdn3_cFPv */
void daNpcCdn3_c::browseb(void* param_0) {
    // NONMATCHING
}

/* 8097C490-8097C5B0 003830 0120+00 1/0 0/0 0/0 .text            dance__11daNpcCdn3_cFPv */
void daNpcCdn3_c::dance(void* param_0) {
    // NONMATCHING
}

/* 8097C5B0-8097C634 003950 0084+00 4/0 0/0 0/0 .text            ladytalka__11daNpcCdn3_cFPv */
void daNpcCdn3_c::ladytalka(void* param_0) {
    // NONMATCHING
}

/* 8097C634-8097C6B8 0039D4 0084+00 5/0 0/0 0/0 .text            ladytalkb__11daNpcCdn3_cFPv */
void daNpcCdn3_c::ladytalkb(void* param_0) {
    // NONMATCHING
}

/* 8097C6B8-8097C73C 003A58 0084+00 3/0 0/0 0/0 .text            normtalka__11daNpcCdn3_cFPv */
void daNpcCdn3_c::normtalka(void* param_0) {
    // NONMATCHING
}

/* 8097C73C-8097C7C0 003ADC 0084+00 3/0 0/0 0/0 .text            normtalkb__11daNpcCdn3_cFPv */
void daNpcCdn3_c::normtalkb(void* param_0) {
    // NONMATCHING
}

/* 8097C7C0-8097C844 003B60 0084+00 1/0 0/0 0/0 .text            sellme__11daNpcCdn3_cFPv */
void daNpcCdn3_c::sellme(void* param_0) {
    // NONMATCHING
}

/* 8097C844-8097C8F0 003BE4 00AC+00 1/0 0/0 0/0 .text            sing__11daNpcCdn3_cFPv */
void daNpcCdn3_c::sing(void* param_0) {
    // NONMATCHING
}

/* 8097C8F0-8097C910 003C90 0020+00 1/0 0/0 0/0 .text            daNpcCdn3_Create__FPv */
static void daNpcCdn3_Create(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8097F5AC-8097F5AC 00006C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8097F652 =
    "城下町の町人 マップツール設定値異常 引数1モーションシーケンス=%dが異常です。\n";
#pragma pop

/* 8097C910-8097CC58 003CB0 0348+00 3/1 0/0 0/0 .text            create__11daNpcCdn3_cFv */
void daNpcCdn3_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8097F59C-8097F5A0 00005C 0004+00 0/1 0/0 0/0 .rodata          @5585 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5585 = -3.0f;
COMPILER_STRIP_GATE(0x8097F59C, &lit_5585);
#pragma pop

/* 8097F5AC-8097F5AC 00006C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8097F6A0 = "F_SP116";
#pragma pop

/* 8097CC58-8097D078 003FF8 0420+00 1/1 0/0 0/0 .text            create_init__11daNpcCdn3_cFv */
void daNpcCdn3_c::create_init() {
    // NONMATCHING
}

/* 8097D078-8097D120 004418 00A8+00 2/2 0/0 0/0 .text            setMtx__11daNpcCdn3_cFv */
void daNpcCdn3_c::setMtx() {
    // NONMATCHING
}

/* 8097D120-8097D614 0044C0 04F4+00 1/1 0/0 0/0 .text            lookat__11daNpcCdn3_cFv */
void daNpcCdn3_c::lookat() {
    // NONMATCHING
}

/* 8097D614-8097D650 0049B4 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 8097D650-8097D684 0049F0 0034+00 1/0 0/0 0/0 .text            daNpcCdn3_Delete__FPv */
static void daNpcCdn3_Delete(void* param_0) {
    // NONMATCHING
}

/* 8097D684-8097D728 004A24 00A4+00 1/0 0/0 0/0 .text            __dt__11daNpcCdn3_cFv */
daNpcCdn3_c::~daNpcCdn3_c() {
    // NONMATCHING
}

/* 8097D728-8097D748 004AC8 0020+00 1/0 0/0 0/0 .text            daNpcCdn3_Execute__FPv */
static void daNpcCdn3_Execute(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8097F5A0-8097F5A4 000060 0004+00 1/1 0/0 0/0 .rodata          @5944 */
SECTION_RODATA static f32 const lit_5944 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x8097F5A0, &lit_5944);

/* 8097F5A4-8097F5A8 000064 0004+00 1/1 0/0 0/0 .rodata          @5945 */
SECTION_RODATA static f32 const lit_5945 = 25.0f;
COMPILER_STRIP_GATE(0x8097F5A4, &lit_5945);

/* 8097D748-8097DABC 004AE8 0374+00 1/1 0/0 0/0 .text            execute__11daNpcCdn3_cFv */
void daNpcCdn3_c::execute() {
    // NONMATCHING
}

/* 8097DABC-8097DEF4 004E5C 0438+00 1/1 0/0 0/0 .text            checkTimeSchedule__11daNpcCdn3_cFv
 */
void daNpcCdn3_c::checkTimeSchedule() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8097F5A8-8097F5AC 000068 0004+00 1/1 0/0 0/0 .rodata          @6103 */
SECTION_RODATA static f32 const lit_6103 = 60.0f;
COMPILER_STRIP_GATE(0x8097F5A8, &lit_6103);

/* 8097DEF4-8097E000 005294 010C+00 1/0 0/0 0/0 .text            daNpcCdn3_Draw__FPv */
static void daNpcCdn3_Draw(void* param_0) {
    // NONMATCHING
}

/* 8097E000-8097E008 0053A0 0008+00 1/0 0/0 0/0 .text            daNpcCdn3_IsDelete__FPv */
static bool daNpcCdn3_IsDelete(void* param_0) {
    return true;
}

/* 8097E008-8097E050 0053A8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 8097E050-8097EFD8 0053F0 0F88+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_cdn3_cpp */
void __sinit_d_a_npc_cdn3_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8097E050, __sinit_d_a_npc_cdn3_cpp);
#pragma pop

/* 8097EFD8-8097EFE0 006378 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8097EFD8() {
    // NONMATCHING
}

/* 8097EFE0-8097EFE8 006380 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8097EFE0() {
    // NONMATCHING
}

/* 8097EFE8-8097F030 006388 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 8097F030-8097F280 0063D0 0250+00 2/1 0/0 0/0 .text            __dt__10daNpcCd2_cFv */
// daNpcCd2_c::~daNpcCd2_c() {
extern "C" void __dt__10daNpcCd2_cFv() {
    // NONMATCHING
}

/* 8097F280-8097F368 006620 00E8+00 1/0 0/0 0/0 .text            __dt__16dNpcLib_lookat_cFv */
// dNpcLib_lookat_c::~dNpcLib_lookat_c() {
extern "C" void __dt__16dNpcLib_lookat_cFv() {
    // NONMATCHING
}

/* 8097F368-8097F3B0 006708 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 8097F3B0-8097F3F8 006750 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8097F3F8-8097F454 006798 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8097F454-8097F4C4 0067F4 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8097F4C4-8097F534 006864 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8097F5AC-8097F5AC 00006C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
