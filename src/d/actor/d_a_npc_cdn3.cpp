/**
 * @file d_a_npc_cdn3.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_cdn3.h"
#include "d/d_msg_object.h"
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
extern "C" f32 Zero__4cXyz[3];

//
// Declarations:
//

/* 80978CD8-80978DD4 000078 00FC+00 1/1 0/0 0/0 .text            createHeapCallBack__FP10fopAc_ac_c
 */
static int createHeapCallBack(fopAc_ac_c* param_0) {
    daNpcCdn3_c* i_this = (daNpcCdn3_c*)param_0;
    int rv = i_this->NpcCreate(i_this->m_type);
    if (rv != 0) {
        if (i_this->mObjNum != 0) {
            rv = (i_this->field_0xac8 = i_this->ObjCreate(i_this->mObjNum)) != NULL;
            if (!rv) {
                i_this->mpMorf->stopZelAnime();
            }
        } else {
            i_this->field_0xac8 = NULL;
        }
        if (i_this->isChairStyle()) {
            f32 scale = Cd2_HIO_objScale(i_this->m_type);
            
            J3DModel* model = i_this->ChairCreate(scale);
            i_this->field_0xacc = model;
            rv = model != 0;
            if (rv == 0) {
                i_this->mpMorf->stopZelAnime();
            }
        } else {
            i_this->field_0xacc = NULL;
            rv = 1;
        }
    }
    return rv;
}

/* 8097F788-8097F848 0000E0 00C0+00 1/2 0/0 0/0 .data            ActionTable__11daNpcCdn3_c */
daNpcCdn3_c::actionFunc daNpcCdn3_c::ActionTable[8][2] = {
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
void daNpcCdn3_c::setAction(daNpcCdn3_c::Mode_e i_action) {
    JUT_ASSERT(366, i_action < MODE_MAX_e);
    mPrevMode = mMode;
    mMode = i_action;
    mAction = ActionTable[mMode];
    callInit();
}

/* 80978E18-80978E40 0001B8 0028+00 1/1 0/0 0/0 .text            callInit__11daNpcCdn3_cFv */
void daNpcCdn3_c::callInit() {
    JUT_ASSERT(408, mAction != 0);
    (this->*(mAction[0]))();
}

/* 80978E40-80978E6C 0001E0 002C+00 1/1 0/0 0/0 .text            callExecute__11daNpcCdn3_cFv */
void daNpcCdn3_c::callExecute() {
    JUT_ASSERT(421, mAction != 0);
    (this->*(mAction[1]))();
}

/* 8097F848-8097F8F8 -00001 00B0+00 5/5 0/0 0/0 .data            m_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc* daNpcCdn3_c::m_funcTbl[44] = {
    daNpcCdn3_c::m_seq00_funcTbl, daNpcCdn3_c::m_seq01_funcTbl,
    daNpcCdn3_c::m_seq02_funcTbl, daNpcCdn3_c::m_seq03_funcTbl,
    daNpcCdn3_c::m_seq04_funcTbl, daNpcCdn3_c::m_seq05_funcTbl,
    daNpcCdn3_c::m_seq06_funcTbl, daNpcCdn3_c::m_seq07_funcTbl,
    daNpcCdn3_c::m_seq08_funcTbl, daNpcCdn3_c::m_seq09_funcTbl,
    daNpcCdn3_c::m_seq10_funcTbl, daNpcCdn3_c::m_seq11_funcTbl,
    daNpcCdn3_c::m_seq12_funcTbl, daNpcCdn3_c::m_seq13_funcTbl,
    daNpcCdn3_c::m_seq14_funcTbl, daNpcCdn3_c::m_seq15_funcTbl,
    daNpcCdn3_c::m_seq16_funcTbl, daNpcCdn3_c::m_seq17_funcTbl,
    daNpcCdn3_c::m_seq18_funcTbl, daNpcCdn3_c::m_seq19_funcTbl,
    daNpcCdn3_c::m_seq20_funcTbl, daNpcCdn3_c::m_seq21_funcTbl,
    daNpcCdn3_c::m_seq22_funcTbl, daNpcCdn3_c::m_seq23_funcTbl,
    daNpcCdn3_c::m_seq24_funcTbl, daNpcCdn3_c::m_seq25_funcTbl,
    daNpcCdn3_c::m_seq26_funcTbl, daNpcCdn3_c::m_seq27_funcTbl,
    daNpcCdn3_c::m_seq28_funcTbl, daNpcCdn3_c::m_seq29_funcTbl,
    daNpcCdn3_c::m_seq30_funcTbl, daNpcCdn3_c::m_seq31_funcTbl,
    daNpcCdn3_c::m_seq32_funcTbl, daNpcCdn3_c::m_seq33_funcTbl,
    daNpcCdn3_c::m_seq34_funcTbl, daNpcCdn3_c::m_seq35_funcTbl,
    daNpcCdn3_c::m_seq36_funcTbl, daNpcCdn3_c::m_seq37_funcTbl,
    daNpcCdn3_c::m_seq38_funcTbl, daNpcCdn3_c::m_seq39_funcTbl,
    daNpcCdn3_c::m_seq40_funcTbl, daNpcCdn3_c::m_seq41_funcTbl,
    daNpcCdn3_c::m_seq42_funcTbl, daNpcCdn3_c::m_seq43_funcTbl,
};

/* 8097F904-8097F91C 00025C 0018+00 1/1 0/0 0/0 .data            m_seq00_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq00_funcTbl[2] = {&daNpcCdn3_c::walka, NULL};

/* 8097F928-8097F940 000280 0018+00 1/1 0/0 0/0 .data            m_seq01_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq01_funcTbl[2] = {&daNpcCdn3_c::runa, NULL};

/* 8097F94C-8097F964 0002A4 0018+00 1/1 0/0 0/0 .data            m_seq02_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq02_funcTbl[2] = {&daNpcCdn3_c::waita, NULL};

/* 8097F970-8097F988 0002C8 0018+00 1/1 0/0 0/0 .data            m_seq03_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq03_funcTbl[2] = {&daNpcCdn3_c::talka, NULL};

/* 8097F994-8097F9AC 0002EC 0018+00 1/1 0/0 0/0 .data            m_seq04_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq04_funcTbl[2] = {&daNpcCdn3_c::runb, NULL};

/* 8097F9D0-8097FA00 000328 0030+00 1/1 0/0 0/0 .data            m_seq05_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq05_funcTbl[4] = {&daNpcCdn3_c::turnr, &daNpcCdn3_c::waita,
                                                        &daNpcCdn3_c::talka, NULL};

/* 8097FA24-8097FA54 00037C 0030+00 1/1 0/0 0/0 .data            m_seq06_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq06_funcTbl[4] = {&daNpcCdn3_c::turnl, &daNpcCdn3_c::waita,
                                                        &daNpcCdn3_c::talka, NULL};

/* 8097FA60-8097FA78 0003B8 0018+00 1/1 0/0 0/0 .data            m_seq07_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq07_funcTbl[2] = {&daNpcCdn3_c::waitwall, NULL};

/* 8097FAC0-8097FB14 000418 0054+00 1/1 0/0 0/0 .data            m_seq08_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq08_funcTbl[7] = {
    &daNpcCdn3_c::talkwall,
    &daNpcCdn3_c::waitwall,
    &daNpcCdn3_c::talkbwall,
    &daNpcCdn3_c::waitwall,
    &daNpcCdn3_c::talkwall,
    &daNpcCdn3_c::talkbwall,
    NULL,
};

/* 8097FB20-8097FB38 000478 0018+00 1/1 0/0 0/0 .data            m_seq09_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq09_funcTbl[2] = {&daNpcCdn3_c::talkb, NULL};

/* 8097FB44-8097FB5C 00049C 0018+00 1/1 0/0 0/0 .data            m_seq10_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq10_funcTbl[2] = {&daNpcCdn3_c::talkc, NULL};

/* 8097FB98-8097FBE0 0004F0 0048+00 1/1 0/0 0/0 .data            m_seq11_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq11_funcTbl[6] = {&daNpcCdn3_c::talka, &daNpcCdn3_c::waita,
                                                        &daNpcCdn3_c::talkb, &daNpcCdn3_c::waitb,
                                                        &daNpcCdn3_c::talkc, NULL};

/* 8097FBEC-8097FC04 000544 0018+00 1/1 0/0 0/0 .data            m_seq12_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq12_funcTbl[2] = {&daNpcCdn3_c::waitb, NULL};

/* 8097FC40-8097FC88 000598 0048+00 1/1 0/0 0/0 .data            m_seq13_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq13_funcTbl[6] = {
    &daNpcCdn3_c::browsea, &daNpcCdn3_c::browseb, &daNpcCdn3_c::talka,
    &daNpcCdn3_c::talkb,   &daNpcCdn3_c::waita,   NULL};

/* 8097FC94-8097FCAC 0005EC 0018+00 1/1 0/0 0/0 .data            m_seq14_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq14_funcTbl[2] = {&daNpcCdn3_c::walkb, NULL};

/* 8097FCB8-8097FCD0 000610 0018+00 1/1 0/0 0/0 .data            m_seq15_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq15_funcTbl[2] = {&daNpcCdn3_c::sitwaita, NULL};

/* 8097FD18-8097FD6C 000670 0054+00 1/1 0/0 0/0 .data            m_seq16_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq16_funcTbl[7] = {
    &daNpcCdn3_c::sittalka,
    &daNpcCdn3_c::sitwaita,
    &daNpcCdn3_c::sittalkab,
    &daNpcCdn3_c::sitwaita,
    &daNpcCdn3_c::sittalka,
    &daNpcCdn3_c::sittalkab,
    NULL,
};

/* 8097FD78-8097FD90 0006D0 0018+00 1/1 0/0 0/0 .data            m_seq17_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq17_funcTbl[2] = {
    &daNpcCdn3_c::playm,
    NULL,
};

/* 8097FD9C-8097FDB4 0006F4 0018+00 1/1 0/0 0/0 .data            m_seq18_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq18_funcTbl[2] = {&daNpcCdn3_c::sitwaitb, NULL};

/* 8097FDFC-8097FE50 000754 0054+00 1/1 0/0 0/0 .data            m_seq19_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq19_funcTbl[7] = {
    &daNpcCdn3_c::sittalkb,
    &daNpcCdn3_c::sitwaitb,
    &daNpcCdn3_c::sittalkbb,
    &daNpcCdn3_c::sitwaitb,
    &daNpcCdn3_c::sittalkb,
    &daNpcCdn3_c::sittalkbb,
    NULL,
};

/* 8097FE5C-8097FE74 0007B4 0018+00 1/1 0/0 0/0 .data            m_seq20_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq20_funcTbl[2] = {&daNpcCdn3_c::looka, NULL};

/* 8097FE80-8097FE98 0007D8 0018+00 1/1 0/0 0/0 .data            m_seq21_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq21_funcTbl[2] = {&daNpcCdn3_c::lookb, NULL};

/* 8097FEBC-8097FEEC 000814 0030+00 1/1 0/0 0/0 .data            m_seq22_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq22_funcTbl[4] = {&daNpcCdn3_c::looka, &daNpcCdn3_c::lookb,
                                                        &daNpcCdn3_c::waita, NULL};

/* 8097FF34-8097FF88 00088C 0054+00 1/1 0/0 0/0 .data            m_seq23_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq23_funcTbl[7] = {
    &daNpcCdn3_c::talka,
    &daNpcCdn3_c::waita,
    &daNpcCdn3_c::talkb,
    &daNpcCdn3_c::waita,
    &daNpcCdn3_c::talka,
    &daNpcCdn3_c::talkb,
    NULL,
};

/* 8097FFB8-8097FFF4 000910 003C+00 1/1 0/0 0/0 .data            m_seq24_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq24_funcTbl[5] = {
    &daNpcCdn3_c::talkb, &daNpcCdn3_c::talka, &daNpcCdn3_c::talkc, &daNpcCdn3_c::waita, NULL,
};

/* 8098003C-80980090 000994 0054+00 1/1 0/0 0/0 .data            m_seq25_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq25_funcTbl[7] = {
    &daNpcCdn3_c::browsea,
    &daNpcCdn3_c::browseb,
    &daNpcCdn3_c::talka,
    &daNpcCdn3_c::talkb,
    &daNpcCdn3_c::talkc,
    &daNpcCdn3_c::waita,
    NULL,
};

/* 809800A8-809800CC 000A00 0024+00 1/1 0/0 0/0 .data            m_seq26_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq26_funcTbl[3] = {
    &daNpcCdn3_c::browsea,
    &daNpcCdn3_c::browseb,
    NULL,
};

/* 809800D8-809800F0 000A30 0018+00 1/1 0/0 0/0 .data            m_seq27_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq27_funcTbl[2] = {&daNpcCdn3_c::dance, NULL};

/* 80980108-8098012C 000A60 0024+00 1/1 0/0 0/0 .data            m_seq28_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq28_funcTbl[3] = {
    &daNpcCdn3_c::ladytalka,
    &daNpcCdn3_c::normtalka,
    NULL,
};

/* 80980144-80980168 000A9C 0024+00 1/1 0/0 0/0 .data            m_seq29_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq29_funcTbl[3] = {
    &daNpcCdn3_c::ladytalkb,
    &daNpcCdn3_c::normtalkb,
    NULL,
};

/* 809801A4-809801EC 000AFC 0048+00 1/1 0/0 0/0 .data            m_seq30_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq30_funcTbl[6] = {
    &daNpcCdn3_c::talka, &daNpcCdn3_c::ladytalka, &daNpcCdn3_c::waita,
    &daNpcCdn3_c::talkb, &daNpcCdn3_c::waita,     NULL,
};

/* 80980228-80980270 000B80 0048+00 1/1 0/0 0/0 .data            m_seq31_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq31_funcTbl[6] = {
    &daNpcCdn3_c::waita, &daNpcCdn3_c::ladytalkb, &daNpcCdn3_c::talka,
    &daNpcCdn3_c::waita, &daNpcCdn3_c::talkb,     NULL,
};

/* 809802B8-8098030C 000C10 0054+00 1/1 0/0 0/0 .data            m_seq32_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq32_funcTbl[7] = {
    &daNpcCdn3_c::talka,
    &daNpcCdn3_c::ladytalka,
    &daNpcCdn3_c::waita,
    &daNpcCdn3_c::talkb,
    &daNpcCdn3_c::waita,
    &daNpcCdn3_c::normtalka,
    NULL,
};

/* 80980354-809803A8 000CAC 0054+00 1/1 0/0 0/0 .data            m_seq33_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq33_funcTbl[7] = {
    &daNpcCdn3_c::waita,
    &daNpcCdn3_c::ladytalkb,
    &daNpcCdn3_c::talka,
    &daNpcCdn3_c::waita,
    &daNpcCdn3_c::talkb,
    &daNpcCdn3_c::normtalkb,
    NULL,
};

/* 80980408-80980474 000D60 006C+00 1/1 0/0 0/0 .data            m_seq34_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq34_funcTbl[9] = {
    &daNpcCdn3_c::talka,     &daNpcCdn3_c::ladytalka, &daNpcCdn3_c::ladytalkb,
    &daNpcCdn3_c::waita,     &daNpcCdn3_c::talkb,     &daNpcCdn3_c::waita,
    &daNpcCdn3_c::normtalka, &daNpcCdn3_c::normtalkb, NULL,
};

/* 80980480-80980498 000DD8 0018+00 1/1 0/0 0/0 .data            m_seq35_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq35_funcTbl[2] = {
    &daNpcCdn3_c::sellme,
    NULL,
};

/* 809804BC-809804EC 000E14 0030+00 1/1 0/0 0/0 .data            m_seq36_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq36_funcTbl[4] = {
    &daNpcCdn3_c::ladytalkb,
    &daNpcCdn3_c::talka,
    &daNpcCdn3_c::waita,
    NULL,
};

/* 809804F8-80980510 000E50 0018+00 1/1 0/0 0/0 .data            m_seq37_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq37_funcTbl[2] = {
    &daNpcCdn3_c::sing, NULL,
};

/* 8098051C-80980534 000E74 0018+00 1/1 0/0 0/0 .data            m_seq38_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq38_funcTbl[2] = {
    &daNpcCdn3_c::sittalka, NULL,
};

/* 80980540-80980558 000E98 0018+00 1/1 0/0 0/0 .data            m_seq39_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq39_funcTbl[2] = {
    &daNpcCdn3_c::sittalkab, NULL,
};

/* 80980570-80980594 000EC8 0024+00 1/1 0/0 0/0 .data            m_seq40_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq40_funcTbl[3] = {
    &daNpcCdn3_c::sittalka, &daNpcCdn3_c::sittalkab, NULL,
};

/* 809805A0-809805B8 000EF8 0018+00 1/1 0/0 0/0 .data            m_seq41_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq41_funcTbl[2] = {
    &daNpcCdn3_c::sittalkb, NULL,
};

/* 809805C4-809805DC 000F1C 0018+00 1/1 0/0 0/0 .data            m_seq42_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq42_funcTbl[2] = {
    &daNpcCdn3_c::sittalkbb, NULL,

};

/* 809805F4-80980618 000F4C 0024+00 1/1 0/0 0/0 .data            m_seq43_funcTbl__11daNpcCdn3_c */
daNpcCdn3_c::seqFunc daNpcCdn3_c::m_seq43_funcTbl[3] = {
    &daNpcCdn3_c::sittalkb, &daNpcCdn3_c::sittalkbb, NULL,
};

/* 80978E6C-80978ED0 00020C 0064+00 1/0 0/0 0/0 .text            initWait__11daNpcCdn3_cFv */
void daNpcCdn3_c::initWait() {
    speedF = 0.0f;
    field_0xb97 = 0;
    field_0xb94 = 1;
    (this->*(m_funcTbl[mSeqNum][field_0xb97]))(NULL);
}

/* 80978ED0-80979080 000270 01B0+00 1/0 0/0 0/0 .text            executeWait__11daNpcCdn3_cFv */
void daNpcCdn3_c::executeWait() {
    if ((this->*(m_funcTbl[mSeqNum][field_0xb97]))(NULL) != 0) {
        int newIndex;
        field_0xb97 = (m_funcTbl[mSeqNum][field_0xb97 + 1] == NULL) ? 0 : field_0xb97 + 1;
        field_0xb94 = 1;
        if (mpMorf->getAnm() == getAnmP(8, mObjNum)) {
            mCitizen.playVoice(3);
        } else if (mpMorf->getAnm() == getAnmP(49, mObjNum)) {
            mCitizen.playVoice(4);
        } else if (mpMorf->getAnm() == getAnmP(20, mObjNum) || mpMorf->getAnm() == getAnmP(21, mObjNum)) {
            mCitizen.playVoice(5);
        }
    }
    checkSchedule();
    if (checkFearSituation()) {
        if (mObjNum == 2 && (m_type == 0 || m_type == 1)) {
            setAction(MODE_FIGHT);
        } else {
            setAction(MODE_FEAR);
        }
    }
}

/* 80979080-80979144 000420 00C4+00 1/0 0/0 0/0 .text            initPath__11daNpcCdn3_cFv */
void daNpcCdn3_c::initPath() {
    setAnm((J3DAnmTransformKey*) getAnmP(2, mObjNum), 1.0f, 12.0f, 2, 0, -1);
    field_0xb68 = 2;
    field_0xb97 = 0;
    field_0xb94 = 1;
    field_0xb98 = 0;
    if (mTagSched != NULL) {
        mSeqNum = mTagSched->getSeqNum();
        if (mSeqNum >= 0 && mSeqNum < 44) {
            (this->*(m_funcTbl[mSeqNum][0]))(NULL);
        }
    }
}

/* 80979144-809799B0 0004E4 086C+00 1/0 0/0 0/0 .text            executePath__11daNpcCdn3_cFv */
void daNpcCdn3_c::executePath() {
    if (m_path.isPath()) {
        switch (field_0xb98) {
        case 0:
            if (m_path.checkPoint(current.pos, speedF)) {
                field_0xb74 = -1;
                if (m_path.getArg0() != -1) {
                    field_0xb74 = getTimeMinute() + getTimeHour() * 60 + m_path.getArg0() * 10;
                }
                mSeqNum = m_path.getArg1();
                if (m_path.checkPathEnd(current.pos, speedF)) {
                    if (getGroupID() != 0xff) {
                        if ((int)mTagSched->getStartEnd() == 1) {
                            setSchedule(field_0xb88);
                            field_0xb88 = NULL;
                            field_0xb95 = 1;
                        } else {
                            if (m_path.isClose()) {
                                m_path.setNextPoint(current.pos);
                            } else {
                                if (mSeqNum < 0 || mSeqNum >= 44) {
                                    #ifdef DEBUG
                                    JUT_PANIC(517, 0);
                                    #else
                                    OSReport_Error("城下町の町人 パス点引数設定値異常 引数1モーションシーケンス=%dが異常です。\n", mSeqNum);
                                    #endif
                                }
                                field_0xb68 = 0;
                                setAction(MODE_WAIT);
                            }
                        }
                        checkSchedule();
                    } else {
                        if (!m_path.isClose()) {
                            int time = getTime();
                            field_0xb8c = time + field_0xb90;
                            current.pos.set(m_path.getPoint(0));
                            home.pos.set(current.pos);
                            old.pos.set(current.pos);
                            current.angle.y = cLib_targetAngleY(m_path.getPoint(0), m_path.getPoint(1));
                            shape_angle.y = current.angle.y;
                            home.angle.y = current.angle.y;
                            old.angle.y = current.angle.y;
                            m_path.setPath(getPathID(), fopAcM_GetRoomNo(this), 1, &current.pos,
                                               false);
                            setAction(MODE_PATH);
                            field_0xb95 = 1;
                        }
                    }
                } else {
                    if (mSeqNum >= 0 && mSeqNum < 44) {
                        field_0xb68 = 0;
                        field_0xb98 = 1;
                    } else {
                        if (mTagSched != NULL) {
                            mSeqNum = mTagSched->getSeqNum();
                            if (mSeqNum >= 0 && mSeqNum < 44) {
                                (this->*(m_funcTbl[mSeqNum][0]))(NULL);
                            }
                        }
                        m_path.setNextPoint(current.pos);
                    }
                }
            }
            break;
        case 1:
            if (field_0xb74 != -1) {
                if ((this->*(m_funcTbl[mSeqNum][field_0xb97]))(NULL)) {
                    field_0xb97 = (m_funcTbl[mSeqNum][field_0xb97 + 1] == NULL) ? 0 : field_0xb97 + 1;
                    field_0xb94 = 1;
                }
                int time = getTime();
                if (field_0xb74 <= time) {
                    if (field_0xb68 == 0) {
                        setAnm((J3DAnmTransformKey*)getAnmP(2, mObjNum), 1.0f, 12.0f, 2, 0, -1);
                        field_0xb68 = 2;
                    }
                    field_0xb97 = 0;
                    field_0xb94 = 1;
                    m_path.setNextPoint(current.pos);
                    field_0xb98 = 0;
                }
            } else {
                if ((this->*(m_funcTbl[mSeqNum][field_0xb97]))(NULL)) {
                    if (m_funcTbl[mSeqNum][field_0xb97 + 1] == NULL) {
                        if (field_0xb68 == 0) {
                            setAnm((J3DAnmTransformKey*)getAnmP(2, mObjNum), 1.0f, 12.0f, 2, 0, -1);
                            field_0xb68 = 2;
                        }
                        field_0xb97 = 0;
                        m_path.setNextPoint(current.pos);
                        field_0xb98 = 0;
                    } else {
                        field_0xb97++;
                    }
                    field_0xb94 = 1;
                }
            }
            break;
        default:
            JUT_PANIC(598, 0);
            break;
        }

        if (field_0xb68 == 2 || field_0xb68 == 1) {
            if (!fopAcM_CheckCondition(this, 4)) {
                m_path.checkObstacle(this);
            }
            cXyz cStack_58;
            m_path.getTargetPoint(&cStack_58);
            s16 sVar10 = cLib_targetAngleY(&current.pos, &cStack_58);
            cLib_addCalcAngleS2(&shape_angle.y, sVar10, 0xd, 0x600);
            if (current.pos.y != old.pos.y) {
                s16 sVar10 = 0;
                cM3dGPla acStack_4c;
                if (dComIfG_Bgsp().GetTriPla(mAcch.m_gnd, &acStack_4c) != 0) {
                    sVar10 = fopAcM_getPolygonAngle(&acStack_4c, shape_angle.y);
                }
                if (sVar10 != 0) {
                    field_0xb64 = current.pos.y;
                }
            }
            if (mAcch.ChkWallHit() && current.pos.abs(old.pos) < 2.0f) {
                field_0xb99++;
                if (field_0xb99 > 30) {
                    setAction(MODE_RELIEF);
                }
            } else {
                field_0xb99 = 0;
            }
        }
        setAngle();
        pathMoveF();
        mAcch.CrrPos(dComIfG_Bgsp());
        if (checkFearSituation()) {
            if (mObjNum == 2 && (m_type == 0 || m_type == 1)) {
                setAction(MODE_FIGHT);
            } else {
                setAction(MODE_FEAR);
            }
        }
    }
}

/* 80979A34-80979B2C 000DD4 00F8+00 1/0 0/0 0/0 .text            initTalk__11daNpcCdn3_cFv */
void daNpcCdn3_c::initTalk() {
    field_0xb68 = 0;
    m_targetAct.entry(dComIfGp_getLinkPlayer());
    field_0xb92 = shape_angle.y;
    field_0xb80 = mpMorf->getAnm();
    field_0xb7c = mSeqNum;
    JUT_ASSERT(658, 0 != m_targetAct.getActorP());
    if (!isInShop() && !isNoTurnTalk()) {
        int uVar2;
        if (isChairStyle()) {
            uVar2 = 15;
        } else {
            uVar2 = 2;
        }
        mSeqNum = uVar2;
        field_0xb97 = 0;
        AnmNum anmNum;
        if (isChairStyle()) {
            anmNum = CD2_ANM_14;
        } else {
            anmNum = CD2_ANM_0;
        }
        setAnm((J3DAnmTransformKey*)getAnmP(anmNum, mObjNum), 1.0f, 12.0f, 2, 0, -1);
    }
    field_0xb98 = 0;
}

/* 80979B2C-80979F08 000ECC 03DC+00 1/0 0/0 0/0 .text            executeTalk__11daNpcCdn3_cFv */
void daNpcCdn3_c::executeTalk() {
    if (mpMorf->getAnm() == getAnmP(47,mObjNum)) {
        if (m_type == 17) {
            mCitizen.startCreatureVoiceLevel(Z2SE_WAD_A_MV_DANCE, -1);
        } else if (m_type == 2) {
            mCitizen.startCreatureVoiceLevel(Z2SE_MCN_A_V_DANCE, -1);
        } else if (m_type == 26) {
            mCitizen.startCreatureVoiceLevel(Z2SE_WCN_A_V_DANCE, -1);
        }
    }
    switch (field_0xb98) {
    case 0:
        if (mIsDarkWorld || isInShop() || isNoTurnTalk()) {
            field_0xb98++;
        } else {
            s16 actorAngle = fopAcM_searchActorAngleY(this, m_targetAct.getActorP());
            if (cLib_addCalcAngleS(&shape_angle.y, actorAngle, 4, 0x800, 0x10) == 0) {
                speedF = 0.0f;
                field_0xb98++;
            }
            setAngle();
        }
        break;
    case 1:
        if (dComIfGp_event_chkTalkXY()) {
            if (!dComIfGp_evmng_ChkPresentEnd()) {
                break;
            }
            field_0xb98++;
        } else {
            field_0xb98++;
        }
        mMsgFlow.init(this, mFlowNodeNum, 0, NULL);
    case 2:
        if (mMsgFlow.doFlow(this, NULL, 0)) {
            dComIfGp_event_reset();
            m_targetAct.remove();
            mSeqNum = field_0xb7c;
            if (field_0xb68 != 0) {
                setAction(mPrevMode);
            } else {
                if (!isInShop()) {
                    int iVar8 = 0;
                    if (isChairStyle()) {
                        iVar8 = 14;
                    }
                    setAnm((J3DAnmTransformKey*)getAnmP(iVar8, mObjNum), 1.0f, 12.0f, 2, 0, -1);
                }
                field_0xb98++;
            }
        } else {
            int msgAnm = ctrlMsgAnm();
            if (msgAnm != -1) {
                mSeqNum = msgAnm;
                field_0xb97 = 0;
                field_0xb94 = 1;
            }
            JUT_ASSERT(726, m_funcTbl[mSeqNum][field_0xb97] != 0);
            if ((this->*(m_funcTbl[mSeqNum][field_0xb97]))(NULL) != 0) {
                field_0xb97 = (m_funcTbl[mSeqNum][field_0xb97 + 1] == NULL) ? 0 : field_0xb97 + 1;
                field_0xb94 = 1;
            }
        }
        break;
    case 3:
        if (cLib_addCalcAngleS(&shape_angle.y, field_0xb92, 4, 0x800, 0x10) == 0) {
            setAnm((J3DAnmTransformKey*)field_0xb80, 1.0f, 12.0f, 2, 0, -1);
            setAction(mPrevMode);
        }
        setAngle();
        return;
    default:
        JUT_PANIC(741, 0);
    }    
}

/* 80979F08-8097A028 0012A8 0120+00 1/0 0/0 0/0 .text            initEscape__11daNpcCdn3_cFv */
void daNpcCdn3_c::initEscape() {
    mEscapeTag = getEscapeTag();
    JUT_ASSERT(816, mEscapeTag != 0);
    JUT_ASSERT(817, mEscapeTag->getPathID() != 0xff);
    m_path.setPath(mEscapeTag->getPathID(), fopAcM_GetRoomNo(this), 1, &current.pos, true);
    JUT_ASSERT(819, m_path.isPath());
    m_path.setNextPoint(current.pos);
    if (mObjNum == 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(41, mObjNum), 1.0f, 0.0f, 0, 0, -1);
        mCitizen.playVoice(1);
        field_0xb68 = 0;
    } else {
        setAnm((J3DAnmTransformKey*)getAnmP(4, mObjNum), 1.0f, 12.0f, 2, 0, -1);
        mCitizen.playVoice(0);
        field_0xb68 = 1;
    }
    mFlowNodeNum = 0;
    dComIfGs_onSaveDunSwitch(0x3c);
}

/* 8097A028-8097A398 0013C8 0370+00 1/0 0/0 0/0 .text            executeEscape__11daNpcCdn3_cFv */
void daNpcCdn3_c::executeEscape() {
    if (field_0xb68 == 0) {
        if (mpMorf->isStop()) {
            setAnm((J3DAnmTransformKey*)getAnmP(4, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            mCitizen.playVoice(0);
            field_0xb68 = 1;
        }
        cLib_addCalcAngleS2(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 3, 0x600);
    } else if (field_0xb68 == 1) {
        if (fopAcM_CheckCondition(this, 4)) {
            fopAcM_delete(this);
        }

        if (m_path.checkPoint(current.pos, speedF)) {
            if (m_path.checkPathEnd(current.pos, speedF)) {
                fopAcM_delete(this);
            }
            m_path.setNextPoint(current.pos);
        }
        m_path.checkObstacle(this);
        cXyz cStack_40;
        m_path.getTargetPoint(&cStack_40);
        cLib_addCalcAngleS2(&shape_angle.y, cLib_targetAngleY(&current.pos, &cStack_40), 3, 0x600);
        if (current.pos.y != old.pos.y) {
            s16 gndAngle = 0;
            cM3dGPla plane;
            if (dComIfG_Bgsp().GetTriPla(mAcch.m_gnd, &plane)) {
                gndAngle = fopAcM_getPolygonAngle(&plane, shape_angle.y);
            }
            if (gndAngle != 0) {
                field_0xb64 = current.pos.y;
            }
        }
        setAngle();
        pathMoveF();
        mAcch.CrrPos(dComIfG_Bgsp());
        if (mAcch.ChkWallHit() && current.pos.abs(old.pos) < 2.0f) {
            field_0xb99++;
            if (field_0xb99 > 30) {
                setAction(MODE_FEAR2);
            }
        } else {
            field_0xb99 = 0;
        }
    }
}

/* 8097A398-8097A518 001738 0180+00 1/0 0/0 0/0 .text            initFear__11daNpcCdn3_cFv */
void daNpcCdn3_c::initFear() {
    int a_anmNum = 0x26;
    if (mpMorf->getAnm() == getAnmP(14, mObjNum) ||
        mpMorf->getAnm() == getAnmP(15, mObjNum) ||
        mpMorf->getAnm() == getAnmP(16, mObjNum))
    {
        a_anmNum = 0x27;
    } else if (mpMorf->getAnm() == getAnmP(17, mObjNum) ||
               mpMorf->getAnm() == getAnmP(18, mObjNum) ||
               mpMorf->getAnm() == getAnmP(19, mObjNum))
    {
        a_anmNum = 0x28;
    }

    mSeqNum = a_anmNum;
    setAnm((J3DAnmTransformKey*)getAnmP(0x29, mObjNum), 1.0f, 0.0f, 0, 0, -1);
    field_0xb92 = fopAcM_searchPlayerAngleY(this);
    mFlowNodeNum = 0;
    speedF = 0.0f;
    dComIfGs_onSaveDunSwitch(0x3c);
    field_0xb68 = 0;
}

/* 8097A518-8097A60C 0018B8 00F4+00 1/0 0/0 0/0 .text            executeFear__11daNpcCdn3_cFv */
void daNpcCdn3_c::executeFear() {
    if (mpMorf->checkFrame(1.0f)) {
        mCitizen.playVoice(2);
    }
    if (mpMorf->isStop()) {
        mObjNum = 0;
        setAnm((J3DAnmTransformKey*)getAnmP(mSeqNum, mObjNum), 1.0f, 12.0f, 2, 0, -1);
        field_0xb92 = cLib_targetAngleY(fopAcM_GetPosition_p(daPy_getPlayerActorClass()), &current.pos);
    }
    cLib_addCalcAngleS2(&shape_angle.y, field_0xb92, 3, 0x600);
}

/* 8097A60C-8097A6AC 0019AC 00A0+00 1/0 0/0 0/0 .text            initFear2__11daNpcCdn3_cFv */
void daNpcCdn3_c::initFear2() {
    mObjNum = 0;
    setAnm((J3DAnmTransformKey*)getAnmP(38, mObjNum), 1.0f, 12.0f, 2, 0, -1);
    field_0xb92 = cLib_targetAngleY(fopAcM_GetPosition_p(daPy_getPlayerActorClass()), &current.pos);
    mFlowNodeNum = 0;
    speedF = 0.0f;
    field_0xb68 = 2;
}

/* 8097A6AC-8097A724 001A4C 0078+00 1/0 0/0 0/0 .text            executeFear2__11daNpcCdn3_cFv */
void daNpcCdn3_c::executeFear2() {
    if (mpMorf->checkFrame(1.0f)) {
        mCitizen.playVoice(2);
    }
    if (fopAcM_CheckCondition(this, 4)) {
        fopAcM_delete(this);
    }
    cLib_addCalcAngleS2(&shape_angle.y, field_0xb92, 3, 0x600);
}

/* 8097A724-8097A7E0 001AC4 00BC+00 1/0 0/0 0/0 .text            initFight__11daNpcCdn3_cFv */
void daNpcCdn3_c::initFight() {
    setAnm((J3DAnmTransformKey*)getAnmP(41, mObjNum), 1.0f, 0.0f, 0, 0, -1);
    mCitizen.playVoice(1);
    mFlowNodeNum = 0;
    speedF = 0;
    fopAcM_setCullSizeBox(this, -40.0f, -10.0f, -80.0f, 40.0f, 190.0f, 200.0f);
    dComIfGs_onSaveDunSwitch(0x3c);
    field_0xb68 = 0;
}

/* 8097A7E0-8097A960 001B80 0180+00 1/0 0/0 0/0 .text            executeFight__11daNpcCdn3_cFv */
void daNpcCdn3_c::executeFight() {
    if (mpMorf->isStop()) {
        setAnm((J3DAnmTransformKey*)getAnmP(42, mObjNum), 1.0f, 12.0f, 2, 0, -1);
    }
    field_0xb92 = fopAcM_searchPlayerAngleY(this);
    if (mpMorf->getAnm() != getAnmP(41, mObjNum)) {
        if (mpMorf->checkFrame(1.0f)) {
            mCitizen.playVoice(2);
        }
        if (cLib_distanceAngleS(shape_angle.y, field_0xb92) > 0x600) {
            setAnm((J3DAnmTransformKey*)getAnmP(44, mObjNum), 1.0f, 12.0f, 2, 0, -1);
        } else {
            setAnm((J3DAnmTransformKey*)getAnmP(42, mObjNum), 1.0f, 12.0f, 2, 0, -1);
        }
    }
    cLib_addCalcAngleS2(&shape_angle.y, field_0xb92, 3, 0x600);
}

/* 8097A960-8097A9E4 001D00 0084+00 1/0 0/0 0/0 .text            initRelief__11daNpcCdn3_cFv */
void daNpcCdn3_c::initRelief() {
    setAnm((J3DAnmTransformKey*)getAnmP(0, mObjNum), 1.0f, 12.0f, 2, 0, -1);
    speedF = 0.0f;
    field_0xb92 = shape_angle.y + 0x8000;
    field_0xb68 = 2;
}

/* 8097A9E4-8097ABDC 001D84 01F8+00 1/0 0/0 0/0 .text            executeRelief__11daNpcCdn3_cFv */
void daNpcCdn3_c::executeRelief() {
    if (getGroupID() == 0xff && fopAcM_CheckCondition(this, 4)) {
        int time = getTime();
        field_0xb8c = time + field_0xb90;
        current.pos.set(m_path.getPoint(0));
        home.pos.set(current.pos);
        old.pos.set(current.pos);
        current.angle.y = cLib_targetAngleY(m_path.getPoint(0), m_path.getPoint(1));
        shape_angle.y = current.angle.y;
        home.angle.y = current.angle.y;
        old.angle.y = current.angle.y;
        m_path.setPath(getPathID(), fopAcM_GetRoomNo(this), 1, &current.pos, false);
        setAction(MODE_PATH);
        field_0xb95 = 1;
    }
    if (checkFearSituation()) {
        if (mObjNum == 2 && (m_type == 0 || m_type == 1)) {
            setAction(MODE_FIGHT);
        } else {
            setAction(MODE_FEAR);
        }
    }
    cLib_addCalcAngleS2(&shape_angle.y, field_0xb92, 3, 0x600);
}

/* 8097ABDC-8097ABE8 001F7C 000C+00 3/3 0/0 0/0 .text            setAngle__11daNpcCdn3_cFv */
void daNpcCdn3_c::setAngle() {
    current.angle.y = shape_angle.y;
}

/* 8097ABE8-8097AF14 001F88 032C+00 2/2 0/0 0/0 .text            pathMoveF__11daNpcCdn3_cFv */
void daNpcCdn3_c::pathMoveF() {
    f32 walkSpeed = 0.0f;
    f32 anmSpeed = 0.0f;
    cXyz* movePos = mStts.GetCCMoveP();
    if (field_0xb68 == 2) {
        walkSpeed = Cd2_HIO_walkMaxSpeed(m_type);
        anmSpeed = Cd2_HIO_walkAnmPlaySpeed(m_type);

        cLib_chaseF(&field_0xb5c, 0.8f, 0.05f);
        setSpeed(&field_0xb60, 0.7f, walkSpeed, 0);
        setSpeed(&speedF, 0.7f, walkSpeed, 1);
    } else if (field_0xb68 == 1) {
        walkSpeed = Cd2_HIO_maxSpeed(m_type);
        anmSpeed = Cd2_HIO_anmPlaySpeed(m_type);
        if (mMode == MODE_ESCAPSE) {
            walkSpeed *= 1.5f;
            anmSpeed *= 1.5f;
        }
        cLib_chaseF(&field_0xb5c, 1.0, 0.05f);
        setSpeed(&field_0xb60, 0.7f, walkSpeed, 0);
        setSpeed(&speedF, 0.7f, walkSpeed, 1);
    } else if (field_0xb68 == 0) {
        cLib_chaseF(&field_0xb5c, 0.0, 0.05f);
        cLib_chaseF(&field_0xb60, 0.0f, 1.5f);
        cLib_chaseF(&speedF, 0.0f, 1.5f);
    }
    cXyz targetPoint;
    m_path.getTargetPoint(&targetPoint);
    if (cLib_distanceAngleS(shape_angle.y, cLib_targetAngleY(&current.pos, &targetPoint)) >= 0x2000) {
        cLib_chaseF(&field_0xb5c, 0.0f, 0.05f);
        cLib_chaseF(&field_0xb60, 0.0f, 1.2f);
        cLib_chaseF(&speedF, 0.0f, 1.2f);
    }
    fopAcM_posMoveF(this, movePos);
    if (field_0xb68 != 0) {
        walkSpeed = field_0xb60 / walkSpeed;
        if (walkSpeed > 1.0f) {
            walkSpeed = 1.0f;
        }
        f32 playSpeed = anmSpeed * walkSpeed;
        if (playSpeed < 0.6f) {
            playSpeed = 0.6f;
        }
        mpMorf->setPlaySpeed(playSpeed);
    }
}

/* 8097AF14-8097AFE0 0022B4 00CC+00 1/1 0/0 0/0 .text            ctrlMsgAnm__11daNpcCdn3_cFv */
int daNpcCdn3_c::ctrlMsgAnm() {
    int rv = -1;
    if (!eventInfo.checkCommandTalk()) {
        return -1;
    }
    if (dComIfGp_event_getTalkPartner() == this) {
        msg_class* msg_p = dMsgObject_c::getActor();
        JUT_ASSERT(1524, 0 != msg_p);
        if (msg_p->mode == 2 || msg_p->mode == 3) {
            mMsgIndex = -1;
        } else if (msg_p->mode == 6) {
            if (msg_p->msg_idx != mMsgIndex) {
                rv = dComIfGp_getMesgAnimeAttrInfo();
                mMsgIndex = msg_p->msg_idx;
            }
        } else {
            mMsgIndex = -1;
        }
    } else {
        mMsgIndex = -1;
    }
    return rv;
}

/* 8097AFE0-8097B04C 002380 006C+00 1/1 0/0 0/0 .text            s_sub1__FPvPv */
static void* s_sub1(void* param_1, void* param_2) {
    if (fopAcM_IsActor(param_1) && fopAcM_GetName(param_1) == PROC_Tag_Schedule &&
        static_cast<daNpcCdn3_c*>(param_2)->searchNextScheduleTagSub(
            static_cast<fopAc_ac_c*>(param_1)))
    {
        return param_1;
    }
    return NULL;
}

/* 8097B04C-8097B128 0023EC 00DC+00 1/1 0/0 0/0 .text
 * searchNextScheduleTagSub__11daNpcCdn3_cFP10fopAc_ac_c        */
bool daNpcCdn3_c::searchNextScheduleTagSub(fopAc_ac_c* param_1) {
    if (getGroupID() == ((daTagSchedule_c*)param_1)->getGroupID()) {
        int uVar3 = mTagSched->getStartTime();
        uVar3 = (u16)((uVar3 / 10) * 60 + (uVar3 % 10) * 10);
        int uVar4 = ((daTagSchedule_c*)param_1)->getStartTime();
        int uVar4a = (u16)((uVar4 / 10) * 60 + (uVar4 % 10) * 10);
        if (uVar4a <= (int)uVar3) {
            uVar4a += 24 * 60;
        }
        if (uVar4a > uVar3) {
            if (field_0xb88 == NULL) {
                field_0xb88 = (daTagSchedule_c*)param_1;
            } else {
                u16 uVar5 = field_0xb88->getStartTime();
                int uVar5a = (u16)((uVar5 / 10) * 60 + (uVar5 % 10) * 10);
                if (uVar5a <= uVar3) {
                    uVar5a += 24 * 60;
                }
                if (uVar4a < uVar5a) {
                    field_0xb88 = (daTagSchedule_c*)param_1;
                }
            }
        }
    }
    return 0;
}

/* 8097B128-8097B194 0024C8 006C+00 1/1 0/0 0/0 .text            s_sub2__FPvPv */
static void* s_sub2(void* param_1, void* param_2) {
    if (fopAcM_IsActor(param_1) && fopAcM_GetName(param_1) == PROC_Tag_Schedule &&
        static_cast<daNpcCdn3_c*>(param_2)->searchFirstScheduleTagSub(
            static_cast<fopAc_ac_c*>(param_1)))
    {
        return param_1;
    }
    return NULL;
}

/* 8097B194-8097B288 002534 00F4+00 1/1 0/0 0/0 .text
 * searchFirstScheduleTagSub__11daNpcCdn3_cFP10fopAc_ac_c       */
bool daNpcCdn3_c::searchFirstScheduleTagSub(fopAc_ac_c* param_1) {
    if (getGroupID() == ((daTagSchedule_c*)param_1)->getGroupID()) {
        int uVar3 = ((daTagSchedule_c*)param_1)->getStartTime();
        int uVar3a = (u16)((uVar3 / 10) * 60 + (uVar3 % 10) * 10);
        int iVar1 = getTime();
        if (mTagSched == NULL) {
            mTagSched = (daTagSchedule_c*)param_1;
        } else {
            u8 uVar4 = mTagSched->getStartTime();
            if (uVar3a > iVar1) {
                if (uVar3a < uVar4) {
                    mTagSched = (daTagSchedule_c*)param_1;
                }
            } else if (uVar3a > uVar4) {
                mTagSched = (daTagSchedule_c*)param_1;
            }
        }
    }
    return 0;
}

/* 8097B288-8097B38C 002628 0104+00 2/2 0/0 0/0 .text            checkSchedule__11daNpcCdn3_cFv */
void daNpcCdn3_c::checkSchedule() {
    if (getGroupID() != 0xff && field_0xb88 != NULL) {
        u16 rawStartTime = field_0xb88->getStartTime();
        int schedStartTime = (u16)((rawStartTime / 10) * 60 + (rawStartTime % 10) * 10);
        int currentTime = getTime();
        int currentDay = getDayOfWeek();
        int schedDay = field_0xb88->getWeekNum();
        if (schedDay == currentDay && schedStartTime <= currentTime) {
            setSchedule(field_0xb88);
            field_0xb88 = NULL;
            setAction(MODE_PATH);
        }
    }
}

/* 8097B38C-8097B5A8 00272C 021C+00 3/3 0/0 0/0 .text
 * setSchedule__11daNpcCdn3_cFP15daTagSchedule_c                */
void daNpcCdn3_c::setSchedule(daTagSchedule_c* param_1) {
    mTagSched = param_1;
    int iVar8;
    if (mTagSched->getPathID() != 0xff) {
        if (mTagSched->getStartEnd() == 0) {
            iVar8 = 1;
        } else {
            if (mTagSched->getStartEnd() == 1) {
                iVar8 = -1;
            } else {
                iVar8 = 1;
            }
        }
        m_path.setPath(mTagSched->getPathID(), fopAcM_GetRoomNo(this), iVar8,
                             &current.pos, false);
        if (iVar8 == -1) {
            m_path.setLastPointNum();
        }
    }
    u16 startTime = mTagSched->getStartTime();
    field_0xb8c = (startTime / 10) * 60 + (startTime % 10) * 10;
    mSeqNum = mTagSched->getSeqNum();
    mFlowNodeNum = mTagSched->getFlowNodeNum();
    if (mSeqNum < 0 || mSeqNum >= 44) {
        OSReport_Error("城下町の町人 スケジュールタグ設定値異常 引数1モーションシーケンス=%dが異常です。\n", mSeqNum);
        JUT_PANIC(1825, 0);
    }
    if (mTagSched->getStartEnd() == 0) {
        current.pos.set(m_path.getPoint(0));
        home.pos.set(current.pos);
        old.pos.set(current.pos);
        current.angle.y = cLib_targetAngleY(m_path.getPoint(0), m_path.getPoint(1));
        shape_angle.y = current.angle.y;
        home.angle.y = current.angle.y;
        old.angle.y = current.angle.y;
        field_0xb95 = 1;
    }
    if (m_path.isPath()) {
        setAction(MODE_PATH);
    } else {
        setAction(MODE_WAIT);
    }
    const char* dayStr = "";
    switch (mTagSched->getWeekNum()) {
    case 0:
        dayStr = "日";
        break;
    case 1:
        dayStr = "月";
        break;
    case 2:
        dayStr = "火";
        break;
    case 3:
        dayStr = "水";
        break;
    case 4:
        dayStr = "木";
        break;
    case 5:
        dayStr = "金";
        break;
    case 6:
        dayStr = "土";
        break;
    default:
        JUT_PANIC(1856, 0);
        break;
    }
    OS_REPORT("町人スケジュールセット\n");
    OS_REPORT("開始時刻: %s曜日 %d時 %d分\n", dayStr, startTime / 10, (startTime % 10) * 10);
    OS_REPORT("グループID: %d\n", mTagSched->getGroupID());
    OS_REPORT("レールID: %d\n", mTagSched->getPathID());
    OS_REPORT("モーションシーケンス: %d\n", mSeqNum);
    OS_REPORT("スタート、エンド: %d\n", mTagSched->getStartEnd());
    OS_REPORT("メッセージID: %d\n", mFlowNodeNum);
}

/* 8097B5A8-8097B60C 002948 0064+00 2/2 0/0 0/0 .text            isInShop__11daNpcCdn3_cFv */
inline bool daNpcCdn3_c::isInShop() {
    BOOL rv = FALSE;
    if (strcmp(dComIfGp_getStartStageName(), "R_SP160") == 0 && dComIfG_play_c::getLayerNo(0) <= 1) {
        rv = TRUE;
    }
    return rv;
}

/* 8097B60C-8097B684 0029AC 0078+00 3/3 0/0 0/0 .text            isChairStyle__11daNpcCdn3_cFv */
bool daNpcCdn3_c::isChairStyle() {
    if (mSeqNum == 15 || mSeqNum == 16 || (mSeqNum == 17 && isM_()) ||
        mSeqNum == 38 || mSeqNum == 39 || mSeqNum == 40)
    {
        return true;
    }
    return false;
}

/* 8097B684-8097B6D0 002A24 004C+00 2/2 0/0 0/0 .text            isNoTurnTalk__11daNpcCdn3_cFv */
bool daNpcCdn3_c::isNoTurnTalk() {
    if (mSeqNum == 7 || mSeqNum == 8 || mSeqNum == 18 || mSeqNum == 19 ||
        mSeqNum == 41 || mSeqNum == 42 || mSeqNum == 43)
    {
        return true;
    }
    return false;
}

/* 8097B6D0-8097B754 002A70 0084+00 21/0 0/0 0/0 .text            waita__11daNpcCdn3_cFPv */
int daNpcCdn3_c::waita(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(0, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097B754-8097B7D8 002AF4 0084+00 15/0 0/0 0/0 .text            talka__11daNpcCdn3_cFPv */
int daNpcCdn3_c::talka(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(6, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097B7D8-8097B85C 002B78 0084+00 3/0 0/0 0/0 .text            waitwall__11daNpcCdn3_cFPv */
int daNpcCdn3_c::waitwall(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(11, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097B85C-8097B8E0 002BFC 0084+00 2/0 0/0 0/0 .text            talkwall__11daNpcCdn3_cFPv */
int daNpcCdn3_c::talkwall(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(12, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097B8E0-8097B964 002C80 0084+00 2/0 0/0 0/0 .text            talkbwall__11daNpcCdn3_cFPv */
int daNpcCdn3_c::talkbwall(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(13, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097B964-8097B9E8 002D04 0084+00 12/0 0/0 0/0 .text            talkb__11daNpcCdn3_cFPv */
int daNpcCdn3_c::talkb(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(7, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097B9E8-8097BA6C 002D88 0084+00 4/0 0/0 0/0 .text            talkc__11daNpcCdn3_cFPv */
int daNpcCdn3_c::talkc(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(8, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097BA6C-8097BAF0 002E0C 0084+00 2/0 0/0 0/0 .text            waitb__11daNpcCdn3_cFPv */
int daNpcCdn3_c::waitb(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(1, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097BAF0-8097BB74 002E90 0084+00 3/0 0/0 0/0 .text            sitwaita__11daNpcCdn3_cFPv */
int daNpcCdn3_c::sitwaita(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(14, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097BB74-8097BBF8 002F14 0084+00 4/0 0/0 0/0 .text            sittalka__11daNpcCdn3_cFPv */
int daNpcCdn3_c::sittalka(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(15, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097BBF8-8097BC7C 002F98 0084+00 4/0 0/0 0/0 .text            sittalkab__11daNpcCdn3_cFPv */
int daNpcCdn3_c::sittalkab(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(16, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097BC7C-8097BD00 00301C 0084+00 3/0 0/0 0/0 .text            sitwaitb__11daNpcCdn3_cFPv */
int daNpcCdn3_c::sitwaitb(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(17, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097BD00-8097BD84 0030A0 0084+00 4/0 0/0 0/0 .text            sittalkb__11daNpcCdn3_cFPv */
int daNpcCdn3_c::sittalkb(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(18, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097BD84-8097BE08 003124 0084+00 4/0 0/0 0/0 .text            sittalkbb__11daNpcCdn3_cFPv */
int daNpcCdn3_c::sittalkbb(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(19, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097BE08-8097BE8C 0031A8 0084+00 2/0 0/0 0/0 .text            looka__11daNpcCdn3_cFPv */
int daNpcCdn3_c::looka(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(9, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097BE8C-8097BF10 00322C 0084+00 2/0 0/0 0/0 .text            lookb__11daNpcCdn3_cFPv */
int daNpcCdn3_c::lookb(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(10, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097BF10-8097C070 0032B0 0160+00 1/0 0/0 0/0 .text            playm__11daNpcCdn3_cFPv */
int daNpcCdn3_c::playm(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(34, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        if (isM_()) {
            if (getType() == 4) {
                mCitizen.startCreatureVoiceLevel(Z2SE_CSL_TOWN_BAND_GT_1, -1);
            } else {
                if (getType() == 5) {
                    mCitizen.startCreatureVoiceLevel(Z2SE_CSL_TOWN_BAND_GT_2, -1);
                } else {
                    if (getType() == 6) {
                        mCitizen.startCreatureVoiceLevel(Z2SE_CSL_TOWN_BAND_GT_3, -1);
                    }
                }
            }
        } else {
            mCitizen.startCreatureVoiceLevel(Z2SE_CSL_TOWN_BAND_FLUTE, -1);
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097C070-8097C12C 003410 00BC+00 1/0 0/0 0/0 .text            turnr__11daNpcCdn3_cFPv */
int daNpcCdn3_c::turnr(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(0, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xb92 = shape_angle.y - 0x4000;
            field_0xb94 = 0;
        }
        cLib_addCalcAngleS2(&shape_angle.y, field_0xb92, 4, 0x2000);
        if (abs(field_0xb92 - shape_angle.y) <= 4) {
            shape_angle.y = field_0xb92;
            return 1;
        }
        return 0;
    }
    return 0;
}

/* 8097C12C-8097C1E8 0034CC 00BC+00 1/0 0/0 0/0 .text            turnl__11daNpcCdn3_cFPv */
int daNpcCdn3_c::turnl(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(0, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xb92 = shape_angle.y + 0x4000;
            field_0xb94 = 0;
        }
        cLib_addCalcAngleS2(&shape_angle.y, field_0xb92, 4, 0x2000);
        if (abs(field_0xb92 - shape_angle.y) <= 4) {
            shape_angle.y = field_0xb92;
            return 1;
        }
        return 0;
    }
    return 0;
}

/* 8097C1E8-8097C250 003588 0068+00 1/0 0/0 0/0 .text            walka__11daNpcCdn3_cFPv */
int daNpcCdn3_c::walka(void* param_0) {
    setAnm((J3DAnmTransformKey*)getAnmP(2, mObjNum), 1.0f, 12.0f, 2, 0, -1);
    field_0xb68 = 2;
    return 1;
}

/* 8097C250-8097C2B8 0035F0 0068+00 1/0 0/0 0/0 .text            walkb__11daNpcCdn3_cFPv */
int daNpcCdn3_c::walkb(void* param_0) {
    setAnm((J3DAnmTransformKey*)getAnmP(3, mObjNum), 1.0f, 12.0f, 2, 0, -1);
    field_0xb68 = 2;
    return 1;
}

/* 8097C2B8-8097C320 003658 0068+00 1/0 0/0 0/0 .text            runa__11daNpcCdn3_cFPv */
int daNpcCdn3_c::runa(void* param_0) {
    setAnm((J3DAnmTransformKey*)getAnmP(4, mObjNum), 1.0f, 12.0f, 2, 0, -1);
    field_0xb68 = 1;
    return 1;
}

/* 8097C320-8097C388 0036C0 0068+00 1/0 0/0 0/0 .text            runb__11daNpcCdn3_cFPv */
int daNpcCdn3_c::runb(void* param_0) {
    setAnm((J3DAnmTransformKey*)getAnmP(5, mObjNum), 1.0f, 12.0f, 2, 0, -1);
    field_0xb68 = 1;
    return 1;
}

/* 8097C388-8097C40C 003728 0084+00 3/0 0/0 0/0 .text            browsea__11daNpcCdn3_cFPv */
int daNpcCdn3_c::browsea(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(20, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097C40C-8097C490 0037AC 0084+00 3/0 0/0 0/0 .text            browseb__11daNpcCdn3_cFPv */
int daNpcCdn3_c::browseb(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(21, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097C490-8097C5B0 003830 0120+00 1/0 0/0 0/0 .text            dance__11daNpcCdn3_cFPv */
int daNpcCdn3_c::dance(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(47, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        if (m_type == 17) {
            mCitizen.startCreatureVoiceLevel(Z2SE_WAD_A_MV_DANCE, -1);
        } else {
            if (m_type == 2) {
                mCitizen.startCreatureVoiceLevel(Z2SE_MCN_A_V_DANCE, -1);
            } else {
                if (m_type == 26) {
                    mCitizen.startCreatureVoiceLevel(Z2SE_WCN_A_V_DANCE, -1);
                }
            }
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097C5B0-8097C634 003950 0084+00 4/0 0/0 0/0 .text            ladytalka__11daNpcCdn3_cFPv */
int daNpcCdn3_c::ladytalka(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(48, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097C634-8097C6B8 0039D4 0084+00 5/0 0/0 0/0 .text            ladytalkb__11daNpcCdn3_cFPv */
int daNpcCdn3_c::ladytalkb(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(49, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097C6B8-8097C73C 003A58 0084+00 3/0 0/0 0/0 .text            normtalka__11daNpcCdn3_cFPv */
int daNpcCdn3_c::normtalka(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(50, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097C73C-8097C7C0 003ADC 0084+00 3/0 0/0 0/0 .text            normtalkb__11daNpcCdn3_cFPv */
int daNpcCdn3_c::normtalkb(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(51, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097C7C0-8097C844 003B60 0084+00 1/0 0/0 0/0 .text            sellme__11daNpcCdn3_cFPv */
int daNpcCdn3_c::sellme(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(52, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097C844-8097C8F0 003BE4 00AC+00 1/0 0/0 0/0 .text            sing__11daNpcCdn3_cFPv */
int daNpcCdn3_c::sing(void* param_0) {
    if (isStop()) {
        if (field_0xb94 != 0) {
            setAnm((J3DAnmTransformKey*)getAnmP(53, mObjNum), 1.0f, 12.0f, 2, 0, -1);
            field_0xaa0 = 1;
            field_0xb94 = 0;
        }
        mCitizen.startCreatureVoiceLevel(Z2SE_CSL_TOWN_BAND_VOCAL, -1);
        return field_0xaa0 == 0;
    }
    return 0;
}

/* 8097C8F0-8097C910 003C90 0020+00 1/0 0/0 0/0 .text            daNpcCdn3_Create__FPv */
static int daNpcCdn3_Create(void* i_this) {
    return static_cast<daNpcCdn3_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 8097F5AC-8097F5AC 00006C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8097F652 =
    "城下町の町人 マップツール設定値異常 引数1モーションシーケンス=%dが異常です。\n";
#pragma pop

/* 8097C910-8097CC58 003CB0 0348+00 3/1 0/0 0/0 .text            create__11daNpcCdn3_cFv */
int daNpcCdn3_c::create() {
    fopAcM_SetupActor(this, daNpcCdn3_c);
    mIsDarkWorld = dKy_darkworld_check();
    m_type = getType();
    mObjNum = getObjNum();
    mSeqNum = getSeqNum();
    mFlowNodeNum = getFlowNodeNum();
    if (mSeqNum < 0 || 44 <= mSeqNum) {
        OSReport_Error("城下町の町人 マップツール設定値異常 引数1モーションシーケンス=%dが異常です。\n", mSeqNum);
        JUT_PANIC(175, 0);
    }
    int rv = loadResrc(m_type, mObjNum);
    if (rv == cPhs_COMPLEATE_e) {
        if (fopAcM_entrySolidHeap(this, createHeapCallBack, 0x80002890) == 0) {
            OS_REPORT("アクター生成失敗しました！\n");
            return cPhs_ERROR_e;
        }
        create_init();
    }
    return rv;
}

/* 8097CC58-8097D078 003FF8 0420+00 1/1 0/0 0/0 .text            create_init__11daNpcCdn3_cFv */
// NONMATCHING - issues with initParamTime division and mod interaction with u16
void daNpcCdn3_c::create_init() {
    gravity = -3.0f;
    initTimeSchedule();
    fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
    fopAcM_setCullSizeBox(this, -40.0f, -10.0f, -40.0f, 40.0f, 190.0f,
                          40.0f);
    f32 chkWallR = Cd2_HIO_chkWallR(m_type);
    f32 chkWallH = Cd2_HIO_chkWallH(m_type);
    mAcchCir.SetWall(chkWallH, chkWallR);
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
              fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
    mAcch.SetRoofNone();
    mAcch.SetWaterNone();
    mAcch.CrrPos(dComIfG_Bgsp());
    setEnvTevCol();
    setRoomNo();
    initCollision();
    if (strcmp(dComIfGp_getStartStageName(), "F_SP116") == 0 &&
        dComIfGp_getStartStageRoomNo() == 3 && getType() == 7)
    {
        attention_info.distances[fopAc_attn_SPEAK_e] = 0xda;
        attention_info.distances[fopAc_attn_TALK_e] = 0xda;
    } else {
        attention_info.distances[fopAc_attn_SPEAK_e] = 0xd9;
        attention_info.distances[fopAc_attn_TALK_e] = 0xd9;
    }

    if (isInShop()) {
        fopAcM_OnStatus(this, 0x4000);
    }

    if (m_path.setPath(getPathID(), fopAcM_GetRoomNo(this), 1, &current.pos, false)) {
        setAction(MODE_PATH);
    } else {
        setAction(MODE_WAIT);
    }

    mpMorf->setMorf(0.0f);
    f32 gnd = mAcch.GetGroundH();
    current.pos.y = gnd;
    field_0xb64 = gnd;
    setMtx();
}

/* 8097D078-8097D120 004418 00A8+00 2/2 0/0 0/0 .text            setMtx__11daNpcCdn3_cFv */
void daNpcCdn3_c::setMtx() {
    mDoMtx_stack_c::transS(current.pos.x, field_0xb64, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
    field_0xa9c = 0;
    mpMorf->modelCalc();
    setAttention(m_type);
    lookat();
    field_0xa9c = 1;
    mpMorf->modelCalc();
    setAttention(m_type);
}

/* 8097D120-8097D614 0044C0 04F4+00 1/1 0/0 0/0 .text            lookat__11daNpcCdn3_cFv */
// NONMATCHING - stack + r3 init order
void daNpcCdn3_c::lookat() {
    int local_68[4];
    csXyz cStack_4c = csXyz(Cd2_HIO_maxLmtX_BACKBONE(m_type), Cd2_HIO_maxLmtY_BACKBONE(m_type), 0);
    csXyz cStack_46 = csXyz(Cd2_HIO_maxLmtX_NECK(m_type), Cd2_HIO_maxLmtY_NECK(m_type), 0);
    csXyz cStack_40 = csXyz(Cd2_HIO_maxLmtX_HEAD(m_type), Cd2_HIO_maxLmtY_HEAD(m_type), 0);
    csXyz cStack_60 = csXyz(Cd2_HIO_minLmtX_BACKBONE(m_type), Cd2_HIO_minLmtY_BACKBONE(m_type), 0);
    csXyz cStack_5a = csXyz(Cd2_HIO_minLmtX_NECK(m_type), Cd2_HIO_minLmtY_NECK(m_type), 0);
    csXyz cStack_54 = csXyz(Cd2_HIO_minLmtX_HEAD(m_type), Cd2_HIO_minLmtY_HEAD(m_type), 0);
    cXyz cStack_80(cXyz::Zero);
    if (isM_()) {
        local_68[0] = 1;
        local_68[1] = 2;
        local_68[2] = 3;
        local_68[3] = -1;
    } else {
        local_68[0] = 1;
        local_68[1] = 2;
        local_68[2] = 3;
        local_68[3] = -1;
    }
    mLookat.init(mpMorf->getModel(), local_68, &cStack_4c,&cStack_60);
    Mtx afStack_38;
    if (m_targetAct.getActorP() != NULL) {
        cMtx_copy(mpMorf->getModel()->getBaseTRMtx(), afStack_38);
        cStack_80 = m_targetAct.getActorP()->eyePos;
    } else {
        cMtx_copy(mpMorf->getModel()->getBaseTRMtx(), afStack_38);
        cStack_80 = cXyz::Zero;
    }
    mLookat.action(cStack_80, eyePos, this, afStack_38, m_targetAct.getActorP() != NULL);
}

/* 8097D650-8097D684 0049F0 0034+00 1/0 0/0 0/0 .text            daNpcCdn3_Delete__FPv */
static int daNpcCdn3_Delete(void* i_this) {
    static_cast<daNpcCdn3_c*>(i_this)->~daNpcCdn3_c();
    return 1;
}

/* 8097D684-8097D728 004A24 00A4+00 1/0 0/0 0/0 .text            __dt__11daNpcCdn3_cFv */
daNpcCdn3_c::~daNpcCdn3_c() {
    removeResrc(m_type, mObjNum);
    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
}

/* 8097D728-8097D748 004AC8 0020+00 1/0 0/0 0/0 .text            daNpcCdn3_Execute__FPv */
static int daNpcCdn3_Execute(void* i_this) {
    return static_cast<daNpcCdn3_c*>(i_this)->execute();
}

/* 8097D748-8097DABC 004AE8 0374+00 1/1 0/0 0/0 .text            execute__11daNpcCdn3_cFv */
// NONMATCHING - isInShop bool issue
int daNpcCdn3_c::execute() {
    mAcchCir.SetWallH(Cd2_HIO_chkWallH(m_type));
    mAcchCir.SetWallR(Cd2_HIO_chkWallR(m_type));
    checkTimeSchedule();
    if (field_0xb95 != 0) {
        fopAcM_OnStatus(this, 0x8000000);
    } else {
        fopAcM_OffStatus(this, 0x8000000);
    }
    if (field_0xb95 != 0) {
        if (!mIsDarkWorld && daPy_py_c::checkNowWolf()) {
            fopAcM_delete(this);
        }
        return 1;
    } else {
        if (getGroupID() == 0xff && mMode == MODE_WAIT && !isInShop() && !isOrchestra() &&
            fopAcM_CheckCondition(this, 4))
        {
            return 1;
        }
        if (!chkEvent()) {
            orderEvent();
        }
        callExecute();
        cLib_addCalc2(&field_0xb64, current.pos.y, 0.4f, 25.0f);
        animation(-1);
        setCollision();
        setMtx();
    }
    return 1;
}

inline bool daNpcCdn3_c::searchFirstScheduleTag(fopAc_ac_c* param_1) {
    field_0xb88 = NULL;
    fpcM_Search(s_sub2, this);
    if (mTagSched != NULL) {
        mTagSched->setWeekNum((u32)getDayOfWeek() % 7);
    }
    return mTagSched != NULL;
}

inline bool daNpcCdn3_c::searchNextScheduleTag() {
    if (mTagSched == NULL) {
        return 0;
    }
    field_0xb88 = 0;
    fpcM_Search(s_sub1, this);
    if (field_0xb88 != 0) {
        u32 uVar2 = mTagSched->getWeekNum();
        u32 bVar3 = mTagSched->getStartTime();
        u32 bVar4 = field_0xb88->getStartTime();
        if (bVar4 <= bVar3) {
            uVar2 = (uVar2 + 1) % 7;
        }
        field_0xb88->setWeekNum(uVar2 % 7);
    }
    return field_0xb88 != NULL;
}

/* 8097DABC-8097DEF4 004E5C 0438+00 1/1 0/0 0/0 .text            checkTimeSchedule__11daNpcCdn3_cFv
 */
// NONMATCHING - getLastPointNum issues
void daNpcCdn3_c::checkTimeSchedule() {
    int iVar2 = getTime();
    if (getGroupID() == 0xff) {
        if (field_0xb96 == 0 && fopAcM_CheckCondition(this, 4)) {
            if (field_0xb8c <= iVar2 && field_0xb8e > iVar2) {
                field_0xb95 = 0;
            } else {
                field_0xb95 = 1;
            }
        }
    } else {
        if (mTagSched == NULL) {
            if (searchFirstScheduleTag(this)) {
                setSchedule(mTagSched);
                if (mTagSched->getStartEnd() == 1) {
                    if (field_0xb88 == 0) {
                        searchNextScheduleTag();
                    }
                    setSchedule(field_0xb88);
                    field_0xb88 = NULL;
                    field_0xb95 = 1;
                } else if (field_0xb8c < iVar2) {
                    current.pos.set(m_path.getPoint(m_path.getLastPointNum()));
                    home.pos.set(current.pos);
                    old.pos.set(current.pos);
                    current.angle.y =
                        cLib_targetAngleY(m_path.getPoint(m_path.getLastPointNum()),
                                          m_path.getPoint(m_path.getLastPointNum() - 1));
                    shape_angle.y = current.angle.y;
                    home.angle.y = current.angle.y;
                    old.angle.y = current.angle.y;
                    m_path.setLastPointNum();
                }
            }
        } else if (field_0xb95 != 0 && mTagSched->getStartEnd() != 1) {
            int day = getDayOfWeek();
            int schedDay = mTagSched->getWeekNum();
            if (schedDay == day && field_0xb8c <= iVar2) {
                field_0xb95 = 0;
            }
        }
        if (field_0xb88 == 0) {
            searchNextScheduleTag();
        }
    }
}

inline int daNpcCdn3_c::draw() {
    if (field_0xb95 != 0) {
        return 1;
    }
    drawNpc();
    drawObj(mObjNum, field_0xac8, Cd2_HIO_objScale(m_type));
    if (field_0xacc != NULL) {
        g_env_light.setLightTevColorType_MAJI(field_0xacc,
            &tevStr);
        dComIfGd_setListBG();
        mDoExt_modelUpdateDL(field_0xacc);
        dComIfGd_setList();
    }
    drawShadow(60.0f);
    mLookat.dbView();
    return 1;
}

/* 8097DEF4-8097E000 005294 010C+00 1/0 0/0 0/0 .text            daNpcCdn3_Draw__FPv */
static int daNpcCdn3_Draw(void* i_this) {
    return static_cast<daNpcCdn3_c*>(i_this)->draw();
}

/* 8097E000-8097E008 0053A0 0008+00 1/0 0/0 0/0 .text            daNpcCdn3_IsDelete__FPv */
static int daNpcCdn3_IsDelete(void* i_this) {
    return 1;
}

/* 80980658-80980678 -00001 0020+00 1/0 0/0 0/0 .data            daNpcCdn3_METHODS */
static actor_method_class daNpcCdn3_METHODS = {
    (process_method_func)daNpcCdn3_Create,
    (process_method_func)daNpcCdn3_Delete,
    (process_method_func)daNpcCdn3_Execute,
    (process_method_func)daNpcCdn3_IsDelete,
    (process_method_func)daNpcCdn3_Draw,
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

/* 8097F5AC-8097F5AC 00006C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
