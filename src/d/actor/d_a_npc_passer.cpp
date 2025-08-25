/**
 * @file d_a_npc_passer.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_passer.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__13daNpcPasser_cFv();
extern "C" void createHeap__13daNpcPasser_cFv();
extern "C" static void createHeapCallBack__FP10fopAc_ac_c();
extern "C" void create__13daNpcPasser_cFv();
extern "C" void execute__13daNpcPasser_cFv();
extern "C" void draw__13daNpcPasser_cFv();
extern "C" void setAction__13daNpcPasser_cFQ213daNpcPasser_c6Mode_e();
extern "C" void callInit__13daNpcPasser_cFv();
extern "C" void callExecute__13daNpcPasser_cFv();
extern "C" void initPath__13daNpcPasser_cFv();
extern "C" void executePath__13daNpcPasser_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void initEscape__13daNpcPasser_cFv();
extern "C" void executeEscape__13daNpcPasser_cFv();
extern "C" void initFear__13daNpcPasser_cFv();
extern "C" void executeFear__13daNpcPasser_cFv();
extern "C" void initFight__13daNpcPasser_cFv();
extern "C" void executeFight__13daNpcPasser_cFv();
extern "C" void initRelief__13daNpcPasser_cFv();
extern "C" void executeRelief__13daNpcPasser_cFv();
extern "C" void create_init__13daNpcPasser_cFv();
extern "C" void setAngle__13daNpcPasser_cFv();
extern "C" void setSpeed__13daNpcPasser_cFffPfi();
extern "C" void pathMoveF__13daNpcPasser_cFv();
extern "C" void setBaseMtx__13daNpcPasser_cFv();
extern "C" void initCollision__13daNpcPasser_cFv();
extern "C" void setCollision__13daNpcPasser_cFv();
extern "C" void waita__13daNpcPasser_cFPv();
extern "C" void talka__13daNpcPasser_cFPv();
extern "C" void waitwall__13daNpcPasser_cFPv();
extern "C" void talkwall__13daNpcPasser_cFPv();
extern "C" void talkbwall__13daNpcPasser_cFPv();
extern "C" void talkb__13daNpcPasser_cFPv();
extern "C" void talkc__13daNpcPasser_cFPv();
extern "C" void waitb__13daNpcPasser_cFPv();
extern "C" void sitwaita__13daNpcPasser_cFPv();
extern "C" void sittalka__13daNpcPasser_cFPv();
extern "C" void sittalkab__13daNpcPasser_cFPv();
extern "C" void sitwaitb__13daNpcPasser_cFPv();
extern "C" void sittalkb__13daNpcPasser_cFPv();
extern "C" void sittalkbb__13daNpcPasser_cFPv();
extern "C" void looka__13daNpcPasser_cFPv();
extern "C" void lookb__13daNpcPasser_cFPv();
extern "C" void playm__13daNpcPasser_cFPv();
extern "C" void turnr__13daNpcPasser_cFPv();
extern "C" void turnl__13daNpcPasser_cFPv();
extern "C" void walka__13daNpcPasser_cFPv();
extern "C" void runa__13daNpcPasser_cFPv();
extern "C" void runb__13daNpcPasser_cFPv();
extern "C" void walkb__13daNpcPasser_cFPv();
extern "C" void browsea__13daNpcPasser_cFPv();
extern "C" void browseb__13daNpcPasser_cFPv();
extern "C" void waitTime__13daNpcPasser_cFPv();
extern "C" static void daNpcPasser_Create__FPv();
extern "C" static void daNpcPasser_Delete__FPv();
extern "C" static void daNpcPasser_Execute__FPv();
extern "C" static void daNpcPasser_Draw__FPv();
extern "C" static bool daNpcPasser_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80AA59BC(void* _this, f32, f32);
extern "C" void func_80AA59F8(void* _this, int, int);
extern "C" void __sinit_d_a_npc_passer_cpp();
extern "C" static void func_80AA63F4();
extern "C" static void func_80AA63FC();
extern "C" void __dt__10daNpcCd2_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__16dNpcLib_lookat_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" u8 ActionTable__13daNpcPasser_c[120];
extern "C" void* m_funcTbl__13daNpcPasser_c[28];
extern "C" u8 m_seq00_funcTbl__13daNpcPasser_c[24];
extern "C" u8 m_seq01_funcTbl__13daNpcPasser_c[24];
extern "C" u8 m_seq02_funcTbl__13daNpcPasser_c[24];
extern "C" u8 m_seq03_funcTbl__13daNpcPasser_c[24];
extern "C" u8 m_seq04_funcTbl__13daNpcPasser_c[24];
extern "C" u8 m_seq05_funcTbl__13daNpcPasser_c[48];
extern "C" u8 m_seq06_funcTbl__13daNpcPasser_c[48];
extern "C" u8 m_seq07_funcTbl__13daNpcPasser_c[24];
extern "C" u8 m_seq08_funcTbl__13daNpcPasser_c[84];
extern "C" u8 m_seq09_funcTbl__13daNpcPasser_c[24];
extern "C" u8 m_seq10_funcTbl__13daNpcPasser_c[24];
extern "C" u8 m_seq11_funcTbl__13daNpcPasser_c[72];
extern "C" u8 m_seq12_funcTbl__13daNpcPasser_c[24];
extern "C" u8 m_seq13_funcTbl__13daNpcPasser_c[72];
extern "C" u8 m_seq14_funcTbl__13daNpcPasser_c[24];
extern "C" u8 m_seq15_funcTbl__13daNpcPasser_c[24];
extern "C" u8 m_seq16_funcTbl__13daNpcPasser_c[84];
extern "C" u8 m_seq17_funcTbl__13daNpcPasser_c[24];
extern "C" u8 m_seq18_funcTbl__13daNpcPasser_c[24];
extern "C" u8 m_seq19_funcTbl__13daNpcPasser_c[84];
extern "C" u8 m_seq20_funcTbl__13daNpcPasser_c[24];
extern "C" u8 m_seq21_funcTbl__13daNpcPasser_c[24];
extern "C" u8 m_seq22_funcTbl__13daNpcPasser_c[48];
extern "C" u8 m_seq23_funcTbl__13daNpcPasser_c[84];
extern "C" u8 m_seq24_funcTbl__13daNpcPasser_c[60];
extern "C" u8 m_seq25_funcTbl__13daNpcPasser_c[84];
extern "C" u8 m_seq26_funcTbl__13daNpcPasser_c[36];
extern "C" u8 m_seq27_funcTbl__13daNpcPasser_c[12];

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void setMorf__13mDoExt_morf_cFf();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_getPolygonAngle__FPC8cM3dGPlas();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void onSwitch__12dSv_danBit_cFi();
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
extern "C" void NpcCreate__10daNpcCd2_cFi();
extern "C" void ObjCreate__10daNpcCd2_cFi();
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
extern "C" void dKy_getdaytime_hour__Fv();
extern "C" void dKy_getdaytime_minute__Fv();
extern "C" void dKy_getDarktime_hour__Fv();
extern "C" void dKy_getDarktime_minute__Fv();
extern "C" void dKy_getDarktime_week__Fv();
extern "C" void dKy_get_dayofweek__Fv();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__16dNpcLib_lookat_cFv();
extern "C" void dbView__16dNpcLib_lookat_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void cM_rndF__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void __ct__17Z2CreatureCitizenFv();
extern "C" void __dt__17Z2CreatureCitizenFv();
extern "C" void playVoice__17Z2CreatureCitizenFi();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __destroy_arr();
extern "C" void __ptmf_test();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" u8 const m_cylDat__10daNpcCd2_c[68];
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 l_Cd2_HIO[16396];
extern "C" u8 sincosTable___5JMath[65536];

//
// Declarations:
//

/* ############################################################################################## */
/* 80AA6B90-80AA6BA8 00018C 0018+00 1/1 0/0 0/0 .data            m_seq00_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq00_funcTbl__13daNpcPasser_c[24];

/* 80AA6BB4-80AA6BCC 0001B0 0018+00 1/1 0/0 0/0 .data            m_seq01_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq01_funcTbl__13daNpcPasser_c[24];

/* 80AA6BD8-80AA6BF0 0001D4 0018+00 1/1 0/0 0/0 .data            m_seq02_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq02_funcTbl__13daNpcPasser_c[24];

/* 80AA6BFC-80AA6C14 0001F8 0018+00 1/1 0/0 0/0 .data            m_seq03_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq03_funcTbl__13daNpcPasser_c[24];

/* 80AA6C20-80AA6C38 00021C 0018+00 1/1 0/0 0/0 .data            m_seq04_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq04_funcTbl__13daNpcPasser_c[24];

/* 80AA6C5C-80AA6C8C 000258 0030+00 1/1 0/0 0/0 .data            m_seq05_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq05_funcTbl__13daNpcPasser_c[48];

/* 80AA6CB0-80AA6CE0 0002AC 0030+00 1/1 0/0 0/0 .data            m_seq06_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq06_funcTbl__13daNpcPasser_c[48];

/* 80AA6CEC-80AA6D04 0002E8 0018+00 1/1 0/0 0/0 .data            m_seq07_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq07_funcTbl__13daNpcPasser_c[24];

/* 80AA6D4C-80AA6DA0 000348 0054+00 1/1 0/0 0/0 .data            m_seq08_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq08_funcTbl__13daNpcPasser_c[84];

/* 80AA6DAC-80AA6DC4 0003A8 0018+00 1/1 0/0 0/0 .data            m_seq09_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq09_funcTbl__13daNpcPasser_c[24];

/* 80AA6DD0-80AA6DE8 0003CC 0018+00 1/1 0/0 0/0 .data            m_seq10_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq10_funcTbl__13daNpcPasser_c[24];

/* 80AA6E24-80AA6E6C 000420 0048+00 1/1 0/0 0/0 .data            m_seq11_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq11_funcTbl__13daNpcPasser_c[72];

/* 80AA6E78-80AA6E90 000474 0018+00 1/1 0/0 0/0 .data            m_seq12_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq12_funcTbl__13daNpcPasser_c[24];

/* 80AA6ECC-80AA6F14 0004C8 0048+00 1/1 0/0 0/0 .data            m_seq13_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq13_funcTbl__13daNpcPasser_c[72];

/* 80AA6F20-80AA6F38 00051C 0018+00 1/1 0/0 0/0 .data            m_seq14_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq14_funcTbl__13daNpcPasser_c[24];

/* 80AA6F44-80AA6F5C 000540 0018+00 1/1 0/0 0/0 .data            m_seq15_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq15_funcTbl__13daNpcPasser_c[24];

/* 80AA6FA4-80AA6FF8 0005A0 0054+00 1/1 0/0 0/0 .data            m_seq16_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq16_funcTbl__13daNpcPasser_c[84];

/* 80AA7004-80AA701C 000600 0018+00 1/1 0/0 0/0 .data            m_seq17_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq17_funcTbl__13daNpcPasser_c[24];

/* 80AA7028-80AA7040 000624 0018+00 1/1 0/0 0/0 .data            m_seq18_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq18_funcTbl__13daNpcPasser_c[24];

/* 80AA7088-80AA70DC 000684 0054+00 1/1 0/0 0/0 .data            m_seq19_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq19_funcTbl__13daNpcPasser_c[84];

/* 80AA70E8-80AA7100 0006E4 0018+00 1/1 0/0 0/0 .data            m_seq20_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq20_funcTbl__13daNpcPasser_c[24];

/* 80AA710C-80AA7124 000708 0018+00 1/1 0/0 0/0 .data            m_seq21_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq21_funcTbl__13daNpcPasser_c[24];

/* 80AA7148-80AA7178 000744 0030+00 1/1 0/0 0/0 .data            m_seq22_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq22_funcTbl__13daNpcPasser_c[48];

/* 80AA71C0-80AA7214 0007BC 0054+00 1/1 0/0 0/0 .data            m_seq23_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq23_funcTbl__13daNpcPasser_c[84];

/* 80AA7244-80AA7280 000840 003C+00 1/1 0/0 0/0 .data            m_seq24_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq24_funcTbl__13daNpcPasser_c[60];

/* 80AA72C8-80AA731C 0008C4 0054+00 1/1 0/0 0/0 .data            m_seq25_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq25_funcTbl__13daNpcPasser_c[84];

/* 80AA7334-80AA7358 000930 0024+00 1/1 0/0 0/0 .data            m_seq26_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq26_funcTbl__13daNpcPasser_c[36];

/* 80AA7364-80AA7370 000960 000C+00 1/1 0/0 0/0 .data            m_seq27_funcTbl__13daNpcPasser_c */
extern "C" u8 m_seq27_funcTbl__13daNpcPasser_c[12];

/* 80AA6A24-80AA6A30 -00001 000C+00 0/1 0/0 0/0 .data            @3829 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3829[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initPath__13daNpcPasser_cFv,
};
#pragma pop

/* 80AA6A30-80AA6A3C -00001 000C+00 0/1 0/0 0/0 .data            @3830 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3830[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executePath__13daNpcPasser_cFv,
};
#pragma pop

/* 80AA6A3C-80AA6A48 -00001 000C+00 0/1 0/0 0/0 .data            @3831 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3831[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initEscape__13daNpcPasser_cFv,
};
#pragma pop

/* 80AA6A48-80AA6A54 -00001 000C+00 0/1 0/0 0/0 .data            @3832 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3832[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeEscape__13daNpcPasser_cFv,
};
#pragma pop

/* 80AA6A54-80AA6A60 -00001 000C+00 0/1 0/0 0/0 .data            @3833 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3833[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initFear__13daNpcPasser_cFv,
};
#pragma pop

/* 80AA6A60-80AA6A6C -00001 000C+00 0/1 0/0 0/0 .data            @3834 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3834[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeFear__13daNpcPasser_cFv,
};
#pragma pop

/* 80AA6A6C-80AA6A78 -00001 000C+00 0/1 0/0 0/0 .data            @3835 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3835[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initFight__13daNpcPasser_cFv,
};
#pragma pop

/* 80AA6A78-80AA6A84 -00001 000C+00 0/1 0/0 0/0 .data            @3836 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3836[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeFight__13daNpcPasser_cFv,
};
#pragma pop

/* 80AA6A84-80AA6A90 -00001 000C+00 0/1 0/0 0/0 .data            @3837 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3837[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initRelief__13daNpcPasser_cFv,
};
#pragma pop

/* 80AA6A90-80AA6A9C -00001 000C+00 0/1 0/0 0/0 .data            @3838 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3838[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeRelief__13daNpcPasser_cFv,
};
#pragma pop

/* 80AA6A9C-80AA6B14 000098 0078+00 1/2 0/0 0/0 .data            ActionTable__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::ActionTable[120] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA6B14-80AA6B84 -00001 0070+00 1/1 0/0 0/0 .data            m_funcTbl__13daNpcPasser_c */
SECTION_DATA void* daNpcPasser_c::m_funcTbl[28] = {
    (void*)&daNpcPasser_c::m_seq00_funcTbl, (void*)&daNpcPasser_c::m_seq01_funcTbl,
    (void*)&daNpcPasser_c::m_seq02_funcTbl, (void*)&daNpcPasser_c::m_seq03_funcTbl,
    (void*)&daNpcPasser_c::m_seq04_funcTbl, (void*)&daNpcPasser_c::m_seq05_funcTbl,
    (void*)&daNpcPasser_c::m_seq06_funcTbl, (void*)&daNpcPasser_c::m_seq07_funcTbl,
    (void*)&daNpcPasser_c::m_seq08_funcTbl, (void*)&daNpcPasser_c::m_seq09_funcTbl,
    (void*)&daNpcPasser_c::m_seq10_funcTbl, (void*)&daNpcPasser_c::m_seq11_funcTbl,
    (void*)&daNpcPasser_c::m_seq12_funcTbl, (void*)&daNpcPasser_c::m_seq13_funcTbl,
    (void*)&daNpcPasser_c::m_seq14_funcTbl, (void*)&daNpcPasser_c::m_seq15_funcTbl,
    (void*)&daNpcPasser_c::m_seq16_funcTbl, (void*)&daNpcPasser_c::m_seq17_funcTbl,
    (void*)&daNpcPasser_c::m_seq18_funcTbl, (void*)&daNpcPasser_c::m_seq19_funcTbl,
    (void*)&daNpcPasser_c::m_seq20_funcTbl, (void*)&daNpcPasser_c::m_seq21_funcTbl,
    (void*)&daNpcPasser_c::m_seq22_funcTbl, (void*)&daNpcPasser_c::m_seq23_funcTbl,
    (void*)&daNpcPasser_c::m_seq24_funcTbl, (void*)&daNpcPasser_c::m_seq25_funcTbl,
    (void*)&daNpcPasser_c::m_seq26_funcTbl, (void*)&daNpcPasser_c::m_seq27_funcTbl,
};

/* 80AA6B84-80AA6B90 -00001 000C+00 0/1 0/0 0/0 .data            @4651 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4651[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walka__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6B90-80AA6BA8 00018C 0018+00 1/1 0/0 0/0 .data            m_seq00_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq00_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA6BA8-80AA6BB4 -00001 000C+00 0/1 0/0 0/0 .data            @4652 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4652[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)runa__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6BB4-80AA6BCC 0001B0 0018+00 1/1 0/0 0/0 .data            m_seq01_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq01_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA6BCC-80AA6BD8 -00001 000C+00 0/1 0/0 0/0 .data            @4653 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4653[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6BD8-80AA6BF0 0001D4 0018+00 1/1 0/0 0/0 .data            m_seq02_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq02_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA6BF0-80AA6BFC -00001 000C+00 0/1 0/0 0/0 .data            @4654 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4654[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6BFC-80AA6C14 0001F8 0018+00 1/1 0/0 0/0 .data            m_seq03_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq03_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA6C14-80AA6C20 -00001 000C+00 0/1 0/0 0/0 .data            @4655 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4655[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)runb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6C20-80AA6C38 00021C 0018+00 1/1 0/0 0/0 .data            m_seq04_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq04_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA6C38-80AA6C44 -00001 000C+00 0/1 0/0 0/0 .data            @4656 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4656[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turnr__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6C44-80AA6C50 -00001 000C+00 0/1 0/0 0/0 .data            @4657 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4657[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6C50-80AA6C5C -00001 000C+00 0/1 0/0 0/0 .data            @4658 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4658[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6C5C-80AA6C8C 000258 0030+00 1/1 0/0 0/0 .data            m_seq05_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq05_funcTbl[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA6C8C-80AA6C98 -00001 000C+00 0/1 0/0 0/0 .data            @4659 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4659[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turnl__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6C98-80AA6CA4 -00001 000C+00 0/1 0/0 0/0 .data            @4660 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4660[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6CA4-80AA6CB0 -00001 000C+00 0/1 0/0 0/0 .data            @4661 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4661[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6CB0-80AA6CE0 0002AC 0030+00 1/1 0/0 0/0 .data            m_seq06_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq06_funcTbl[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA6CE0-80AA6CEC -00001 000C+00 0/1 0/0 0/0 .data            @4662 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4662[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitwall__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6CEC-80AA6D04 0002E8 0018+00 1/1 0/0 0/0 .data            m_seq07_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq07_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA6D04-80AA6D10 -00001 000C+00 0/1 0/0 0/0 .data            @4663 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4663[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkwall__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6D10-80AA6D1C -00001 000C+00 0/1 0/0 0/0 .data            @4664 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4664[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitwall__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6D1C-80AA6D28 -00001 000C+00 0/1 0/0 0/0 .data            @4665 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4665[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkbwall__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6D28-80AA6D34 -00001 000C+00 0/1 0/0 0/0 .data            @4666 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4666[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitwall__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6D34-80AA6D40 -00001 000C+00 0/1 0/0 0/0 .data            @4667 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4667[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkwall__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6D40-80AA6D4C -00001 000C+00 0/1 0/0 0/0 .data            @4668 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4668[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkbwall__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6D4C-80AA6DA0 000348 0054+00 1/1 0/0 0/0 .data            m_seq08_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq08_funcTbl[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA6DA0-80AA6DAC -00001 000C+00 0/1 0/0 0/0 .data            @4669 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4669[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6DAC-80AA6DC4 0003A8 0018+00 1/1 0/0 0/0 .data            m_seq09_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq09_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA6DC4-80AA6DD0 -00001 000C+00 0/1 0/0 0/0 .data            @4670 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4670[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkc__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6DD0-80AA6DE8 0003CC 0018+00 1/1 0/0 0/0 .data            m_seq10_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq10_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA6DE8-80AA6DF4 -00001 000C+00 0/1 0/0 0/0 .data            @4671 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4671[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6DF4-80AA6E00 -00001 000C+00 0/1 0/0 0/0 .data            @4672 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4672[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6E00-80AA6E0C -00001 000C+00 0/1 0/0 0/0 .data            @4673 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4673[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6E0C-80AA6E18 -00001 000C+00 0/1 0/0 0/0 .data            @4674 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4674[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6E18-80AA6E24 -00001 000C+00 0/1 0/0 0/0 .data            @4675 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4675[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkc__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6E24-80AA6E6C 000420 0048+00 1/1 0/0 0/0 .data            m_seq11_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq11_funcTbl[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA6E6C-80AA6E78 -00001 000C+00 0/1 0/0 0/0 .data            @4676 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4676[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6E78-80AA6E90 000474 0018+00 1/1 0/0 0/0 .data            m_seq12_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq12_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA6E90-80AA6E9C -00001 000C+00 0/1 0/0 0/0 .data            @4677 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4677[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)browsea__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6E9C-80AA6EA8 -00001 000C+00 0/1 0/0 0/0 .data            @4678 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4678[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)browseb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6EA8-80AA6EB4 -00001 000C+00 0/1 0/0 0/0 .data            @4679 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4679[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6EB4-80AA6EC0 -00001 000C+00 0/1 0/0 0/0 .data            @4680 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4680[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6EC0-80AA6ECC -00001 000C+00 0/1 0/0 0/0 .data            @4681 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4681[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6ECC-80AA6F14 0004C8 0048+00 1/1 0/0 0/0 .data            m_seq13_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq13_funcTbl[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA6F14-80AA6F20 -00001 000C+00 0/1 0/0 0/0 .data            @4682 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4682[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walkb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6F20-80AA6F38 00051C 0018+00 1/1 0/0 0/0 .data            m_seq14_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq14_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA6F38-80AA6F44 -00001 000C+00 0/1 0/0 0/0 .data            @4683 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4683[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sitwaita__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6F44-80AA6F5C 000540 0018+00 1/1 0/0 0/0 .data            m_seq15_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq15_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA6F5C-80AA6F68 -00001 000C+00 0/1 0/0 0/0 .data            @4684 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4684[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalka__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6F68-80AA6F74 -00001 000C+00 0/1 0/0 0/0 .data            @4685 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4685[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sitwaita__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6F74-80AA6F80 -00001 000C+00 0/1 0/0 0/0 .data            @4686 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4686[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalkab__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6F80-80AA6F8C -00001 000C+00 0/1 0/0 0/0 .data            @4687 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4687[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sitwaita__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6F8C-80AA6F98 -00001 000C+00 0/1 0/0 0/0 .data            @4688 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4688[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalka__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6F98-80AA6FA4 -00001 000C+00 0/1 0/0 0/0 .data            @4689 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4689[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalkab__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA6FA4-80AA6FF8 0005A0 0054+00 1/1 0/0 0/0 .data            m_seq16_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq16_funcTbl[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA6FF8-80AA7004 -00001 000C+00 0/1 0/0 0/0 .data            @4690 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4690[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)playm__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA7004-80AA701C 000600 0018+00 1/1 0/0 0/0 .data            m_seq17_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq17_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA701C-80AA7028 -00001 000C+00 0/1 0/0 0/0 .data            @4691 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4691[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sitwaitb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA7028-80AA7040 000624 0018+00 1/1 0/0 0/0 .data            m_seq18_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq18_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA7040-80AA704C -00001 000C+00 0/1 0/0 0/0 .data            @4692 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4692[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalkb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA704C-80AA7058 -00001 000C+00 0/1 0/0 0/0 .data            @4693 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4693[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sitwaitb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA7058-80AA7064 -00001 000C+00 0/1 0/0 0/0 .data            @4694 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4694[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalkbb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA7064-80AA7070 -00001 000C+00 0/1 0/0 0/0 .data            @4695 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4695[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sitwaitb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA7070-80AA707C -00001 000C+00 0/1 0/0 0/0 .data            @4696 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4696[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalkb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA707C-80AA7088 -00001 000C+00 0/1 0/0 0/0 .data            @4697 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4697[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sittalkbb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA7088-80AA70DC 000684 0054+00 1/1 0/0 0/0 .data            m_seq19_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq19_funcTbl[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA70DC-80AA70E8 -00001 000C+00 0/1 0/0 0/0 .data            @4698 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4698[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)looka__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA70E8-80AA7100 0006E4 0018+00 1/1 0/0 0/0 .data            m_seq20_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq20_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA7100-80AA710C -00001 000C+00 0/1 0/0 0/0 .data            @4699 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4699[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)lookb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA710C-80AA7124 000708 0018+00 1/1 0/0 0/0 .data            m_seq21_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq21_funcTbl[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA7124-80AA7130 -00001 000C+00 0/1 0/0 0/0 .data            @4700 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4700[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)looka__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA7130-80AA713C -00001 000C+00 0/1 0/0 0/0 .data            @4701 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4701[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)lookb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA713C-80AA7148 -00001 000C+00 0/1 0/0 0/0 .data            @4702 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4702[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA7148-80AA7178 000744 0030+00 1/1 0/0 0/0 .data            m_seq22_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq22_funcTbl[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA7178-80AA7184 -00001 000C+00 0/1 0/0 0/0 .data            @4703 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4703[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA7184-80AA7190 -00001 000C+00 0/1 0/0 0/0 .data            @4704 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4704[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA7190-80AA719C -00001 000C+00 0/1 0/0 0/0 .data            @4705 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4705[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA719C-80AA71A8 -00001 000C+00 0/1 0/0 0/0 .data            @4706 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4706[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA71A8-80AA71B4 -00001 000C+00 0/1 0/0 0/0 .data            @4707 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4707[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA71B4-80AA71C0 -00001 000C+00 0/1 0/0 0/0 .data            @4708 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4708[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA71C0-80AA7214 0007BC 0054+00 1/1 0/0 0/0 .data            m_seq23_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq23_funcTbl[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA7214-80AA7220 -00001 000C+00 0/1 0/0 0/0 .data            @4709 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4709[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA7220-80AA722C -00001 000C+00 0/1 0/0 0/0 .data            @4710 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4710[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA722C-80AA7238 -00001 000C+00 0/1 0/0 0/0 .data            @4711 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4711[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkc__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA7238-80AA7244 -00001 000C+00 0/1 0/0 0/0 .data            @4712 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4712[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA7244-80AA7280 000840 003C+00 1/1 0/0 0/0 .data            m_seq24_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq24_funcTbl[60] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA7280-80AA728C -00001 000C+00 0/1 0/0 0/0 .data            @4713 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4713[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)browsea__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA728C-80AA7298 -00001 000C+00 0/1 0/0 0/0 .data            @4714 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4714[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)browseb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA7298-80AA72A4 -00001 000C+00 0/1 0/0 0/0 .data            @4715 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4715[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talka__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA72A4-80AA72B0 -00001 000C+00 0/1 0/0 0/0 .data            @4716 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4716[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA72B0-80AA72BC -00001 000C+00 0/1 0/0 0/0 .data            @4717 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4717[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkc__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA72BC-80AA72C8 -00001 000C+00 0/1 0/0 0/0 .data            @4718 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4718[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waita__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA72C8-80AA731C 0008C4 0054+00 1/1 0/0 0/0 .data            m_seq25_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq25_funcTbl[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA731C-80AA7328 -00001 000C+00 0/1 0/0 0/0 .data            @4719 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4719[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)browsea__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA7328-80AA7334 -00001 000C+00 0/1 0/0 0/0 .data            @4720 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4720[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)browseb__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA7334-80AA7358 000930 0024+00 1/1 0/0 0/0 .data            m_seq26_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq26_funcTbl[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA7358-80AA7364 -00001 000C+00 0/1 0/0 0/0 .data            @4721 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4721[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitTime__13daNpcPasser_cFPv,
};
#pragma pop

/* 80AA7364-80AA7370 000960 000C+00 1/1 0/0 0/0 .data            m_seq27_funcTbl__13daNpcPasser_c */
SECTION_DATA u8 daNpcPasser_c::m_seq27_funcTbl[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA7370-80AA7390 -00001 0020+00 1/0 0/0 0/0 .data            daNpcPasser_METHODS */
static actor_method_class daNpcPasser_METHODS = {
    (process_method_func)daNpcPasser_Create__FPv,
    (process_method_func)daNpcPasser_Delete__FPv,
    (process_method_func)daNpcPasser_Execute__FPv,
    (process_method_func)daNpcPasser_IsDelete__FPv,
    (process_method_func)daNpcPasser_Draw__FPv,
};

/* 80AA7390-80AA73C0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_PASSER */
extern actor_process_profile_definition g_profile_NPC_PASSER = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_PASSER,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcPasser_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  401,                    // mPriority
  &daNpcPasser_METHODS,   // sub_method
  0x02040107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80AA73C0-80AA73CC 0009BC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80AA73CC-80AA73F0 0009C8 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AA63FC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AA63F4,
};

/* 80AA73F0-80AA73FC 0009EC 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AA73FC-80AA7408 0009F8 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AA7408-80AA7414 000A04 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AA7414-80AA7420 000A10 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AA7420-80AA742C 000A1C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80AA742C-80AA7438 000A28 000C+00 2/2 0/0 0/0 .data            __vt__16dNpcLib_lookat_c */
SECTION_DATA extern void* __vt__16dNpcLib_lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16dNpcLib_lookat_cFv,
};

/* 80AA7438-80AA7444 000A34 000C+00 2/2 0/0 0/0 .data            __vt__10daNpcCd2_c */
SECTION_DATA extern void* __vt__10daNpcCd2_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10daNpcCd2_cFv,
};

/* 80AA7444-80AA7450 000A40 000C+00 2/2 0/0 0/0 .data            __vt__13daNpcPasser_c */
SECTION_DATA extern void* __vt__13daNpcPasser_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcPasser_cFv,
};

/* 80AA2C18-80AA2C9C 000078 0084+00 1/0 0/0 0/0 .text            __dt__13daNpcPasser_cFv */
daNpcPasser_c::~daNpcPasser_c() {
    // NONMATCHING
}

/* 80AA2C9C-80AA2D20 0000FC 0084+00 1/1 0/0 0/0 .text            createHeap__13daNpcPasser_cFv */
void daNpcPasser_c::createHeap() {
    // NONMATCHING
}

/* 80AA2D20-80AA2D40 000180 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__FP10fopAc_ac_c
 */
static void createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80AA2D40-80AA2FD4 0001A0 0294+00 1/1 0/0 0/0 .text            create__13daNpcPasser_cFv */
void daNpcPasser_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA698C-80AA6990 000000 0004+00 29/29 0/0 0/0 .rodata          @4109 */
SECTION_RODATA static f32 const lit_4109 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AA698C, &lit_4109);

/* 80AA6990-80AA6994 000004 0004+00 1/1 0/0 0/0 .rodata          @4110 */
SECTION_RODATA static f32 const lit_4110 = 25.0f;
COMPILER_STRIP_GATE(0x80AA6990, &lit_4110);

/* 80AA2FD4-80AA315C 000434 0188+00 1/1 0/0 0/0 .text            execute__13daNpcPasser_cFv */
void daNpcPasser_c::execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA6994-80AA6998 000008 0004+00 1/3 0/0 0/0 .rodata          @4123 */
SECTION_RODATA static f32 const lit_4123 = 40.0f;
COMPILER_STRIP_GATE(0x80AA6994, &lit_4123);

/* 80AA315C-80AA31EC 0005BC 0090+00 1/1 0/0 0/0 .text            draw__13daNpcPasser_cFv */
void daNpcPasser_c::draw() {
    // NONMATCHING
}

/* 80AA31EC-80AA3230 00064C 0044+00 4/4 0/0 0/0 .text
 * setAction__13daNpcPasser_cFQ213daNpcPasser_c6Mode_e          */
void daNpcPasser_c::setAction(daNpcPasser_c::Mode_e param_0) {
    // NONMATCHING
}

/* 80AA3230-80AA3258 000690 0028+00 1/1 0/0 0/0 .text            callInit__13daNpcPasser_cFv */
void daNpcPasser_c::callInit() {
    // NONMATCHING
}

/* 80AA3258-80AA3284 0006B8 002C+00 1/1 0/0 0/0 .text            callExecute__13daNpcPasser_cFv */
void daNpcPasser_c::callExecute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA6998-80AA699C 00000C 0004+00 9/36 0/0 0/0 .rodata          @4189 */
SECTION_RODATA static f32 const lit_4189 = 1.0f;
COMPILER_STRIP_GATE(0x80AA6998, &lit_4189);

/* 80AA699C-80AA69A0 000010 0004+00 7/32 0/0 0/0 .rodata          @4190 */
SECTION_RODATA static f32 const lit_4190 = 12.0f;
COMPILER_STRIP_GATE(0x80AA699C, &lit_4190);

/* 80AA3284-80AA33F0 0006E4 016C+00 1/0 0/0 0/0 .text            initPath__13daNpcPasser_cFv */
void daNpcPasser_c::initPath() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA69A0-80AA69A4 000014 0004+00 0/9 0/0 0/0 .rodata          @4289 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4289[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AA69A0, &lit_4289);
#pragma pop

/* 80AA69A4-80AA69AC 000018 0008+00 0/2 0/0 0/0 .rodata          @4290 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4290[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA69A4, &lit_4290);
#pragma pop

/* 80AA69AC-80AA69B4 000020 0008+00 0/2 0/0 0/0 .rodata          @4291 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4291[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA69AC, &lit_4291);
#pragma pop

/* 80AA69B4-80AA69BC 000028 0008+00 0/2 0/0 0/0 .rodata          @4292 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4292[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA69B4, &lit_4292);
#pragma pop

/* 80AA69BC-80AA69C0 000030 0004+00 0/21 0/0 0/0 .rodata          @4293 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4293 = 2.0f;
COMPILER_STRIP_GATE(0x80AA69BC, &lit_4293);
#pragma pop

/* 80AA33F0-80AA387C 000850 048C+00 1/0 0/0 0/0 .text            executePath__13daNpcPasser_cFv */
void daNpcPasser_c::executePath() {
    // NONMATCHING
}

/* 80AA387C-80AA38C4 000CDC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 80AA38C4-80AA39DC 000D24 0118+00 1/0 0/0 0/0 .text            initEscape__13daNpcPasser_cFv */
void daNpcPasser_c::initEscape() {
    // NONMATCHING
}

/* 80AA39DC-80AA3D4C 000E3C 0370+00 1/0 0/0 0/0 .text            executeEscape__13daNpcPasser_cFv */
void daNpcPasser_c::executeEscape() {
    // NONMATCHING
}

/* 80AA3D4C-80AA3DE4 0011AC 0098+00 1/0 0/0 0/0 .text            initFear__13daNpcPasser_cFv */
void daNpcPasser_c::initFear() {
    // NONMATCHING
}

/* 80AA3DE4-80AA3E5C 001244 0078+00 1/0 0/0 0/0 .text            executeFear__13daNpcPasser_cFv */
void daNpcPasser_c::executeFear() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA69C0-80AA69C4 000034 0004+00 0/2 0/0 0/0 .rodata          @4418 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4418 = -40.0f;
COMPILER_STRIP_GATE(0x80AA69C0, &lit_4418);
#pragma pop

/* 80AA69C4-80AA69C8 000038 0004+00 0/2 0/0 0/0 .rodata          @4419 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4419 = -10.0f;
COMPILER_STRIP_GATE(0x80AA69C4, &lit_4419);
#pragma pop

/* 80AA69C8-80AA69CC 00003C 0004+00 0/1 0/0 0/0 .rodata          @4420 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4420 = -80.0f;
COMPILER_STRIP_GATE(0x80AA69C8, &lit_4420);
#pragma pop

/* 80AA69CC-80AA69D0 000040 0004+00 0/2 0/0 0/0 .rodata          @4421 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4421 = 190.0f;
COMPILER_STRIP_GATE(0x80AA69CC, &lit_4421);
#pragma pop

/* 80AA69D0-80AA69D4 000044 0004+00 0/1 0/0 0/0 .rodata          @4422 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4422 = 200.0f;
COMPILER_STRIP_GATE(0x80AA69D0, &lit_4422);
#pragma pop

/* 80AA3E5C-80AA3F10 0012BC 00B4+00 1/0 0/0 0/0 .text            initFight__13daNpcPasser_cFv */
void daNpcPasser_c::initFight() {
    // NONMATCHING
}

/* 80AA3F10-80AA40A4 001370 0194+00 1/0 0/0 0/0 .text            executeFight__13daNpcPasser_cFv */
void daNpcPasser_c::executeFight() {
    // NONMATCHING
}

/* 80AA40A4-80AA4128 001504 0084+00 1/0 0/0 0/0 .text            initRelief__13daNpcPasser_cFv */
void daNpcPasser_c::initRelief() {
    // NONMATCHING
}

/* 80AA4128-80AA41E4 001588 00BC+00 1/0 0/0 0/0 .text            executeRelief__13daNpcPasser_cFv */
void daNpcPasser_c::executeRelief() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA69D4-80AA69D8 000048 0004+00 0/1 0/0 0/0 .rodata          @4514 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4514 = -3.0f;
COMPILER_STRIP_GATE(0x80AA69D4, &lit_4514);
#pragma pop

/* 80AA69D8-80AA69DC 00004C 0004+00 0/1 0/0 0/0 .rodata          @4515 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4515 = -30.0f;
COMPILER_STRIP_GATE(0x80AA69D8, &lit_4515);
#pragma pop

/* 80AA69DC-80AA69E0 000050 0004+00 0/1 0/0 0/0 .rodata          @4516 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4516 = 30.0f;
COMPILER_STRIP_GATE(0x80AA69DC, &lit_4516);
#pragma pop

/* 80AA41E4-80AA43A4 001644 01C0+00 1/1 0/0 0/0 .text            create_init__13daNpcPasser_cFv */
void daNpcPasser_c::create_init() {
    // NONMATCHING
}

/* 80AA43A4-80AA43B0 001804 000C+00 2/2 0/0 0/0 .text            setAngle__13daNpcPasser_cFv */
void daNpcPasser_c::setAngle() {
    // NONMATCHING
}

/* 80AA43B0-80AA44A4 001810 00F4+00 1/1 0/0 0/0 .text            setSpeed__13daNpcPasser_cFffPfi */
void daNpcPasser_c::setSpeed(f32 param_0, f32 param_1, f32* param_2, int param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA69E0-80AA69E4 000054 0004+00 0/1 0/0 0/0 .rodata          @4603 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4603 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AA69E0, &lit_4603);
#pragma pop

/* 80AA69E4-80AA69E8 000058 0004+00 0/1 0/0 0/0 .rodata          @4604 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4604 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80AA69E4, &lit_4604);
#pragma pop

/* 80AA69E8-80AA69EC 00005C 0004+00 0/1 0/0 0/0 .rodata          @4605 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4605 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80AA69E8, &lit_4605);
#pragma pop

/* 80AA69EC-80AA69F0 000060 0004+00 0/1 0/0 0/0 .rodata          @4606 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4606 = 1.5f;
COMPILER_STRIP_GATE(0x80AA69EC, &lit_4606);
#pragma pop

/* 80AA69F0-80AA69F4 000064 0004+00 0/1 0/0 0/0 .rodata          @4607 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4607 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AA69F0, &lit_4607);
#pragma pop

/* 80AA69F4-80AA69F8 000068 0004+00 0/1 0/0 0/0 .rodata          @4608 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4608 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AA69F4, &lit_4608);
#pragma pop

/* 80AA44A4-80AA4780 001904 02DC+00 2/2 0/0 0/0 .text            pathMoveF__13daNpcPasser_cFv */
void daNpcPasser_c::pathMoveF() {
    // NONMATCHING
}

/* 80AA4780-80AA47FC 001BE0 007C+00 2/2 0/0 0/0 .text            setBaseMtx__13daNpcPasser_cFv */
void daNpcPasser_c::setBaseMtx() {
    // NONMATCHING
}

/* 80AA47FC-80AA48D8 001C5C 00DC+00 1/1 0/0 0/0 .text            initCollision__13daNpcPasser_cFv */
void daNpcPasser_c::initCollision() {
    // NONMATCHING
}

/* 80AA48D8-80AA492C 001D38 0054+00 1/1 0/0 0/0 .text            setCollision__13daNpcPasser_cFv */
void daNpcPasser_c::setCollision() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA69F8-80AA69FC 00006C 0004+00 0/19 0/0 0/0 .rodata          @4730 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4730 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80AA69F8, &lit_4730);
#pragma pop

/* 80AA492C-80AA49D4 001D8C 00A8+00 10/0 0/0 0/0 .text            waita__13daNpcPasser_cFPv */
void daNpcPasser_c::waita(void* param_0) {
    // NONMATCHING
}

/* 80AA49D4-80AA4A7C 001E34 00A8+00 9/0 0/0 0/0 .text            talka__13daNpcPasser_cFPv */
void daNpcPasser_c::talka(void* param_0) {
    // NONMATCHING
}

/* 80AA4A7C-80AA4B24 001EDC 00A8+00 3/0 0/0 0/0 .text            waitwall__13daNpcPasser_cFPv */
void daNpcPasser_c::waitwall(void* param_0) {
    // NONMATCHING
}

/* 80AA4B24-80AA4BCC 001F84 00A8+00 2/0 0/0 0/0 .text            talkwall__13daNpcPasser_cFPv */
void daNpcPasser_c::talkwall(void* param_0) {
    // NONMATCHING
}

/* 80AA4BCC-80AA4C74 00202C 00A8+00 2/0 0/0 0/0 .text            talkbwall__13daNpcPasser_cFPv */
void daNpcPasser_c::talkbwall(void* param_0) {
    // NONMATCHING
}

/* 80AA4C74-80AA4D1C 0020D4 00A8+00 7/0 0/0 0/0 .text            talkb__13daNpcPasser_cFPv */
void daNpcPasser_c::talkb(void* param_0) {
    // NONMATCHING
}

/* 80AA4D1C-80AA4DC4 00217C 00A8+00 4/0 0/0 0/0 .text            talkc__13daNpcPasser_cFPv */
void daNpcPasser_c::talkc(void* param_0) {
    // NONMATCHING
}

/* 80AA4DC4-80AA4E6C 002224 00A8+00 2/0 0/0 0/0 .text            waitb__13daNpcPasser_cFPv */
void daNpcPasser_c::waitb(void* param_0) {
    // NONMATCHING
}

/* 80AA4E6C-80AA4F14 0022CC 00A8+00 3/0 0/0 0/0 .text            sitwaita__13daNpcPasser_cFPv */
void daNpcPasser_c::sitwaita(void* param_0) {
    // NONMATCHING
}

/* 80AA4F14-80AA4FBC 002374 00A8+00 2/0 0/0 0/0 .text            sittalka__13daNpcPasser_cFPv */
void daNpcPasser_c::sittalka(void* param_0) {
    // NONMATCHING
}

/* 80AA4FBC-80AA5064 00241C 00A8+00 2/0 0/0 0/0 .text            sittalkab__13daNpcPasser_cFPv */
void daNpcPasser_c::sittalkab(void* param_0) {
    // NONMATCHING
}

/* 80AA5064-80AA510C 0024C4 00A8+00 3/0 0/0 0/0 .text            sitwaitb__13daNpcPasser_cFPv */
void daNpcPasser_c::sitwaitb(void* param_0) {
    // NONMATCHING
}

/* 80AA510C-80AA51B4 00256C 00A8+00 2/0 0/0 0/0 .text            sittalkb__13daNpcPasser_cFPv */
void daNpcPasser_c::sittalkb(void* param_0) {
    // NONMATCHING
}

/* 80AA51B4-80AA525C 002614 00A8+00 2/0 0/0 0/0 .text            sittalkbb__13daNpcPasser_cFPv */
void daNpcPasser_c::sittalkbb(void* param_0) {
    // NONMATCHING
}

/* 80AA525C-80AA5304 0026BC 00A8+00 2/0 0/0 0/0 .text            looka__13daNpcPasser_cFPv */
void daNpcPasser_c::looka(void* param_0) {
    // NONMATCHING
}

/* 80AA5304-80AA53AC 002764 00A8+00 2/0 0/0 0/0 .text            lookb__13daNpcPasser_cFPv */
void daNpcPasser_c::lookb(void* param_0) {
    // NONMATCHING
}

/* 80AA53AC-80AA5454 00280C 00A8+00 1/0 0/0 0/0 .text            playm__13daNpcPasser_cFPv */
void daNpcPasser_c::playm(void* param_0) {
    // NONMATCHING
}

/* 80AA5454-80AA5510 0028B4 00BC+00 1/0 0/0 0/0 .text            turnr__13daNpcPasser_cFPv */
void daNpcPasser_c::turnr(void* param_0) {
    // NONMATCHING
}

/* 80AA5510-80AA55CC 002970 00BC+00 1/0 0/0 0/0 .text            turnl__13daNpcPasser_cFPv */
void daNpcPasser_c::turnl(void* param_0) {
    // NONMATCHING
}

/* 80AA55CC-80AA5634 002A2C 0068+00 1/0 0/0 0/0 .text            walka__13daNpcPasser_cFPv */
void daNpcPasser_c::walka(void* param_0) {
    // NONMATCHING
}

/* 80AA5634-80AA569C 002A94 0068+00 1/0 0/0 0/0 .text            runa__13daNpcPasser_cFPv */
void daNpcPasser_c::runa(void* param_0) {
    // NONMATCHING
}

/* 80AA569C-80AA5704 002AFC 0068+00 1/0 0/0 0/0 .text            runb__13daNpcPasser_cFPv */
void daNpcPasser_c::runb(void* param_0) {
    // NONMATCHING
}

/* 80AA5704-80AA576C 002B64 0068+00 1/0 0/0 0/0 .text            walkb__13daNpcPasser_cFPv */
void daNpcPasser_c::walkb(void* param_0) {
    // NONMATCHING
}

/* 80AA576C-80AA5814 002BCC 00A8+00 3/0 0/0 0/0 .text            browsea__13daNpcPasser_cFPv */
void daNpcPasser_c::browsea(void* param_0) {
    // NONMATCHING
}

/* 80AA5814-80AA58BC 002C74 00A8+00 3/0 0/0 0/0 .text            browseb__13daNpcPasser_cFPv */
void daNpcPasser_c::browseb(void* param_0) {
    // NONMATCHING
}

/* 80AA58BC-80AA58D8 002D1C 001C+00 1/0 0/0 0/0 .text            waitTime__13daNpcPasser_cFPv */
void daNpcPasser_c::waitTime(void* param_0) {
    // NONMATCHING
}

/* 80AA58D8-80AA58F8 002D38 0020+00 1/0 0/0 0/0 .text            daNpcPasser_Create__FPv */
static void daNpcPasser_Create(void* param_0) {
    // NONMATCHING
}

/* 80AA58F8-80AA592C 002D58 0034+00 1/0 0/0 0/0 .text            daNpcPasser_Delete__FPv */
static void daNpcPasser_Delete(void* param_0) {
    // NONMATCHING
}

/* 80AA592C-80AA594C 002D8C 0020+00 1/0 0/0 0/0 .text            daNpcPasser_Execute__FPv */
static void daNpcPasser_Execute(void* param_0) {
    // NONMATCHING
}

/* 80AA594C-80AA596C 002DAC 0020+00 1/0 0/0 0/0 .text            daNpcPasser_Draw__FPv */
static void daNpcPasser_Draw(void* param_0) {
    // NONMATCHING
}

/* 80AA596C-80AA5974 002DCC 0008+00 1/0 0/0 0/0 .text            daNpcPasser_IsDelete__FPv */
static bool daNpcPasser_IsDelete(void* param_0) {
    return true;
}

/* 80AA5974-80AA59BC 002DD4 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AA59BC-80AA59F8 002E1C 003C+00 19/19 0/0 0/0 .text            cLib_getRndValue<f>__Fff */
extern "C" void func_80AA59BC(void* _this, f32 param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA69FC-80AA6A04 000070 0008+00 1/1 0/0 0/0 .rodata          @4975 */
SECTION_RODATA static u8 const lit_4975[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA69FC, &lit_4975);

/* 80AA59F8-80AA5A74 002E58 007C+00 1/1 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
extern "C" void func_80AA59F8(void* _this, int param_0, int param_1) {
    // NONMATCHING
}

/* 80AA5A74-80AA63F4 002ED4 0980+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_passer_cpp */
void __sinit_d_a_npc_passer_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80AA5A74, __sinit_d_a_npc_passer_cpp);
#pragma pop

/* 80AA63F4-80AA63FC 003854 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80AA63F4() {
    // NONMATCHING
}

/* 80AA63FC-80AA6404 00385C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80AA63FC() {
    // NONMATCHING
}

/* 80AA6404-80AA6654 003864 0250+00 2/1 0/0 0/0 .text            __dt__10daNpcCd2_cFv */
// daNpcCd2_c::~daNpcCd2_c() {
extern "C" void __dt__10daNpcCd2_cFv() {
    // NONMATCHING
}

/* 80AA6654-80AA6690 003AB4 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80AA6690-80AA66CC 003AF0 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80AA66CC-80AA67B4 003B2C 00E8+00 1/0 0/0 0/0 .text            __dt__16dNpcLib_lookat_cFv */
// dNpcLib_lookat_c::~dNpcLib_lookat_c() {
extern "C" void __dt__16dNpcLib_lookat_cFv() {
    // NONMATCHING
}

/* 80AA67B4-80AA67FC 003C14 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80AA67FC-80AA6844 003C5C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80AA6844-80AA68A0 003CA4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AA68A0-80AA6910 003D00 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80AA6910-80AA6980 003D70 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}
