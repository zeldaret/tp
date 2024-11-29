/**
 * @file d_a_npc_coach.cpp
 * 
*/

#include "d/actor/d_a_npc_coach.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" static void jointHorseCallBack__FP8J3DJointi();
extern "C" static void jointFrontWheelCallBack__FP8J3DJointi();
extern "C" static void jointRearWheelCallBack__FP8J3DJointi();
extern "C" static void jointCoachCallBack__FP8J3DJointi();
extern "C" static void arrowStickCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_cR4cXyz();
extern "C" void __dt__4cXyzFv();
extern "C" void hitFireArrow__12daNpcCoach_cF4cXyz();
extern "C" void deleteFireArrow__12daNpcCoach_cFUi();
extern "C" void deleteFireArrowFromList__12daNpcCoach_cFUi();
extern "C" void setPosAngle__12daNpcCoach_cFR4cXyzR5csXyz();
extern "C" void ctrlJointHorse__12daNpcCoach_cFP8J3DJointP8J3DModel();
extern "C" void initCoachPosition__12daNpcCoach_cFR3VecR4SVec();
extern "C" static void s_sub__FPvPv();
extern "C" void changeAtherPath__12daNpcCoach_cFScR4cXyzR5csXyz();
extern "C" static void createSolidHeap__FP10fopAc_ac_c();
extern "C" void createHeap__12daNpcCoach_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daNpcCoach_Execute__FP12daNpcCoach_c();
extern "C" void execute__12daNpcCoach_cFv();
extern "C" void checkCoachDamage__12daNpcCoach_cFv();
extern "C" void setCoachBlazing__12daNpcCoach_cFUc();
extern "C" void reinsExecute__12daNpcCoach_cFv();
extern "C" void reinsInit__12daNpcCoach_cFv();
extern "C" void calcCoachMotion__12daNpcCoach_cFv();
extern "C" void calcRearWheelRotate__12daNpcCoach_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void calcHarnessMotion__12daNpcCoach_cFv();
extern "C" void calcFrontWheelRotate__12daNpcCoach_cFv();
extern "C" void calcHorseMotion__12daNpcCoach_cFv();
extern "C" void calcHorseAnm__12daNpcCoach_cFv();
extern "C" void calcHorsePath__12daNpcCoach_cFv();
extern "C" static void daNpcCoach_Draw__FP12daNpcCoach_c();
extern "C" void draw__12daNpcCoach_cFv();
extern "C" static bool daNpcCoach_IsDelete__FP12daNpcCoach_c();
extern "C" static void daNpcCoach_Delete__FP12daNpcCoach_c();
extern "C" void __dt__12daNpcCoach_cFv();
extern "C" void __dt__16daNpcChHarness_cFv();
extern "C" void __dt__14daNpcChCoach_cFv();
extern "C" void __dt__8dCcD_CylFv();
extern "C" static void daNpcCoach_Create__FP10fopAc_ac_c();
extern "C" void create__12daNpcCoach_cFv();
extern "C" void create_init__12daNpcCoach_cFv();
extern "C" void initCollision__12daNpcCoach_cFv();
extern "C" void initBaseMtx__12daNpcCoach_cFv();
extern "C" void setBaseMtx__12daNpcCoach_cFv();
extern "C" void initCoachBlazing__12daNpcCoach_cFv();
extern "C" void __ct__12daNpcCoach_cFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __ct__11J3DLightObjFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" static void func_809A4EB8();
extern "C" static void func_809A4EC0();
extern "C" u8 const M_attr__12daNpcCoach_c[160];
extern "C" extern char const* const d_a_npc_coach__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoMtx_MtxToRot__FPA4_CfP5csXyz();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void
__ct__15mDoExt_McaMorf2FP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__15mDoExt_McaMorf2FP15J3DAnmTransformP15J3DAnmTransformfiffff();
extern "C" void setAnmRate__15mDoExt_McaMorf2Ff();
extern "C" void play__15mDoExt_McaMorf2FUlSc();
extern "C" void entryDL__15mDoExt_McaMorf2Fv();
extern "C" void modelCalc__15mDoExt_McaMorf2Fv();
extern "C" void stopZelAnime__15mDoExt_McaMorf2Fv();
extern "C" void init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi();
extern "C" void update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_setStageLayer__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_delete__FUi();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopAcM_getPolygonAngle__FPC8cM3dGPlas();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcEx_SearchByID__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onTbox__12dSv_memBit_cFi();
extern "C" void offTbox__12dSv_memBit_cFi();
extern "C" void onSwitch__12dSv_danBit_cFi();
extern "C" void offSwitch__12dSv_danBit_cFi();
extern "C" void isSwitch__12dSv_danBit_cCFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetPnt__FPC5dPathi();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void setPosition__7dTres_cFiUcPC3Veci();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_tevstr_init__FP12dKy_tevstr_cScUc();
extern "C" void dKy_BossSpotLight_set__FP4cXyzfffP8_GXColorfUcUc();
extern "C" void setFloatingMessage__13dMeter2Info_cFUssb();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void __dv__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void func_802807E0();
extern "C" void __dt__14Z2SoundObjBaseFv();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void __ct__14Z2CreatureRideFv();
extern "C" void __dt__14Z2CreatureRideFv();
extern "C" void init__14Z2CreatureRideFP3VecP3VecUcUc();
extern "C" void __ct__15Z2SoundObjCoachFv();
extern "C" void startWheelSound__15Z2SoundObjCoachFf();
extern "C" void startFireSound__15Z2SoundObjCoachFUs();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __as__12J3DLightInfoFRC12J3DLightInfo();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_17();
extern "C" void _savegpr_21();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_17();
extern "C" void _restgpr_21();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19mDoExt_3DlineMat1_c[5];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__15Z2SoundObjCoach[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" extern u8 g_meter2_info[248];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mParticleTracePCB__13dPa_control_c[4 + 4 /* padding */];
extern "C" void getHandPos1__11daNpcTheB_cFi();
extern "C" void getHandPos2__11daNpcTheB_cFi();

//
// Declarations:
//

/* 8099D6D8-8099D72C 000078 0054+00 1/1 0/0 0/0 .text            jointHorseCallBack__FP8J3DJointi */
static void jointHorseCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 8099D72C-8099D80C 0000CC 00E0+00 1/1 0/0 0/0 .text jointFrontWheelCallBack__FP8J3DJointi */
static void jointFrontWheelCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 8099D80C-8099D8EC 0001AC 00E0+00 1/1 0/0 0/0 .text jointRearWheelCallBack__FP8J3DJointi */
static void jointRearWheelCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809A4ED0-809A4F70 000000 00A0+00 19/19 0/0 0/0 .rodata          M_attr__12daNpcCoach_c */
SECTION_RODATA u8 const daNpcCoach_c::M_attr[160] = {
    0xC0, 0x40, 0x00, 0x00, 0xC3, 0x48, 0x00, 0x00, 0xBE, 0x80, 0x00, 0x00, 0xC3, 0xC1, 0x80, 0x00,
    0xC3, 0x3E, 0x00, 0x00, 0x42, 0xA4, 0x00, 0x00, 0x42, 0xC0, 0x00, 0x00, 0x42, 0xA0, 0x00, 0x00,
    0x3F, 0x00, 0x00, 0x00, 0x3F, 0x59, 0x99, 0x9A, 0x40, 0xC0, 0x00, 0x00, 0x41, 0xB0, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x44, 0xBB, 0x80, 0x00, 0x41, 0x80, 0x00, 0x00, 0x42, 0x78, 0x00, 0x00, 0xC2, 0x6B, 0x5A, 0x02,
    0x42, 0x87, 0x41, 0x06, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x19, 0x99, 0x9A, 0x41, 0xA0, 0x00, 0x00,
    0x00, 0x0D, 0x18, 0x00, 0x01, 0x00, 0x04, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x05, 0xDC, 0x07, 0x00, 0x00, 0x00, 0x44, 0x7A, 0x00, 0x00,
    0xE0, 0x00, 0x40, 0x00, 0x00, 0x00, 0xFF, 0x50, 0x00, 0x03, 0x00, 0x00, 0x45, 0xBB, 0x80, 0x00,
    0x41, 0x20, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19,
};
COMPILER_STRIP_GATE(0x809A4ED0, &daNpcCoach_c::M_attr);

/* 809A4F70-809A4F74 0000A0 0004+00 3/19 0/0 0/0 .rodata          @4121 */
SECTION_RODATA static u8 const lit_4121[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809A4F70, &lit_4121);

/* 8099D8EC-8099D9AC 00028C 00C0+00 1/1 0/0 0/0 .text            jointCoachCallBack__FP8J3DJointi */
static void jointCoachCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 8099D9AC-8099DA24 00034C 0078+00 1/1 0/0 0/0 .text
 * arrowStickCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_cR4cXyz  */
static void arrowStickCallBack(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2,
                                   cXyz& param_3) {
    // NONMATCHING
}

/* 8099DA24-8099DA60 0003C4 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 8099DA60-8099DBA4 000400 0144+00 1/1 0/0 0/0 .text            hitFireArrow__12daNpcCoach_cF4cXyz
 */
void daNpcCoach_c::hitFireArrow(cXyz param_0) {
    // NONMATCHING
}

/* 8099DBA4-8099DCE8 000544 0144+00 0/0 0/0 1/1 .text            deleteFireArrow__12daNpcCoach_cFUi
 */
void daNpcCoach_c::deleteFireArrow(unsigned int param_0) {
    // NONMATCHING
}

/* 8099DCE8-8099DD28 000688 0040+00 0/0 0/0 1/1 .text deleteFireArrowFromList__12daNpcCoach_cFUi
 */
void daNpcCoach_c::deleteFireArrowFromList(unsigned int param_0) {
    // NONMATCHING
}

/* 8099DD28-8099DD7C 0006C8 0054+00 0/0 0/0 3/3 .text setPosAngle__12daNpcCoach_cFR4cXyzR5csXyz */
void daNpcCoach_c::setPosAngle(cXyz& param_0, csXyz& param_1) {
    // NONMATCHING
}

/* 8099DD7C-8099DE18 00071C 009C+00 1/1 0/0 0/0 .text
 * ctrlJointHorse__12daNpcCoach_cFP8J3DJointP8J3DModel          */
void daNpcCoach_c::ctrlJointHorse(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809A4F74-809A4F78 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4358 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4358 = 500.0f;
COMPILER_STRIP_GATE(0x809A4F74, &lit_4358);
#pragma pop

/* 8099DE18-8099E0E0 0007B8 02C8+00 2/2 0/0 0/0 .text
 * initCoachPosition__12daNpcCoach_cFR3VecR4SVec                */
void daNpcCoach_c::initCoachPosition(Vec& param_0, SVec& param_1) {
    // NONMATCHING
}

/* 8099E0E0-8099E138 000A80 0058+00 1/1 0/0 0/0 .text            s_sub__FPvPv */
static void s_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809A4F78-809A4FBC 0000A8 0044+00 1/1 0/0 0/0 .rodata
 * ccCylSrc$localstatic3$initCollision__12daNpcCoach_cFv        */
SECTION_RODATA static u8 const data_809A4F78[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x24, 0x20, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x79,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809A4F78, &data_809A4F78);

/* 809A4FBC-809A4FFC 0000EC 0040+00 1/1 0/0 0/0 .rodata
 * ccSphSrc$localstatic4$initCollision__12daNpcCoach_cFv        */
SECTION_RODATA static u8 const data_809A4FBC[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809A4FBC, &data_809A4FBC);

/* 809A4FFC-809A5000 00012C 0004+00 0/2 0/0 0/0 .rodata          @4845 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4845 = 1000000000.0f;
COMPILER_STRIP_GATE(0x809A4FFC, &lit_4845);
#pragma pop

/* 809A5000-809A5008 000130 0008+00 0/7 0/0 0/0 .rodata          @4846 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4846[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809A5000, &lit_4846);
#pragma pop

/* 809A5008-809A5010 000138 0008+00 0/7 0/0 0/0 .rodata          @4847 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4847[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809A5008, &lit_4847);
#pragma pop

/* 809A5010-809A5018 000140 0008+00 0/7 0/0 0/0 .rodata          @4848 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4848[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809A5010, &lit_4848);
#pragma pop

/* 8099E138-8099E4A0 000AD8 0368+00 2/2 0/0 0/0 .text
 * changeAtherPath__12daNpcCoach_cFScR4cXyzR5csXyz              */
void daNpcCoach_c::changeAtherPath(s8 param_0, cXyz& param_1, csXyz& param_2) {
    // NONMATCHING
}

/* 8099E4A0-8099E4C0 000E40 0020+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static void createSolidHeap(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809A5018-809A502C 000148 0014+00 1/1 0/0 0/0 .rodata
 * ParticleName$localstatic3$setCoachBlazing__12daNpcCoach_cFUc */
SECTION_RODATA static u8 const data_809A5018[20] = {
    0x85, 0xF0, 0x85, 0xEF, 0x85, 0xE7, 0x85, 0xE8, 0x85, 0xE9,
    0x85, 0xEA, 0x85, 0xEB, 0x85, 0xEC, 0x85, 0xED, 0x85, 0xEE,
};
COMPILER_STRIP_GATE(0x809A5018, &data_809A5018);

/* 809A502C-809A5030 00015C 0004+00 2/11 0/0 0/0 .rodata          @5111 */
SECTION_RODATA static f32 const lit_5111 = 1.0f;
COMPILER_STRIP_GATE(0x809A502C, &lit_5111);

/* 809A5120-809A5120 000250 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809A5120 = "Coach";
#pragma pop

/* 809A5130-809A5134 -00001 0004+00 7/7 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_npc_coach__stringBase0;

/* 809A5134-809A51AC 000004 0078+00 2/2 0/0 0/0 .data            l_horseAnmParam */
SECTION_DATA static u8 l_horseAnmParam[120] = {
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x11, 0x40, 0xC0, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x40, 0xC0,
    0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x41, 0xB0, 0x00, 0x00, 0x40,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x41, 0xB0, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0E, 0x41, 0xF0, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0E, 0x41, 0xF0, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x42, 0x20,
    0x00, 0x00, 0x40, 0x33, 0x33, 0x33, 0x00, 0x00, 0x00, 0x0D, 0x42, 0x20, 0x00, 0x00, 0x40,
    0x33, 0x33, 0x33, 0xFF, 0xFF, 0xFF, 0xFF, 0x42, 0x20, 0x00, 0x00, 0x40, 0x33, 0x33, 0x33,
};

/* 809A51AC-809A51B0 00007C 0004+00 1/1 0/0 0/0 .data
 * l_color$localstatic3$reinsDraw__12daNpcCoach_cFv             */
SECTION_DATA static u8 data_809A51AC[4] = {
    0x14,
    0x0F,
    0x00,
    0xFF,
};

/* 809A51B0-809A51D0 -00001 0020+00 1/0 0/0 0/0 .data            l_daNpcCoach_Method */
static actor_method_class l_daNpcCoach_Method = {
    (process_method_func)daNpcCoach_Create__FP10fopAc_ac_c,
    (process_method_func)daNpcCoach_Delete__FP12daNpcCoach_c,
    (process_method_func)daNpcCoach_Execute__FP12daNpcCoach_c,
    (process_method_func)daNpcCoach_IsDelete__FP12daNpcCoach_c,
    (process_method_func)daNpcCoach_Draw__FP12daNpcCoach_c,
};

/* 809A51D0-809A5200 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_COACH */
extern actor_process_profile_definition g_profile_NPC_COACH = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_COACH,         // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcCoach_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  330,                    // mPriority
  &l_daNpcCoach_Method,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 809A5200-809A5214 0000D0 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 809A5214-809A5220 0000E4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 809A5220-809A522C 0000F0 000C+00 6/6 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 809A522C-809A5238 0000FC 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 809A5238-809A525C 000108 0024+00 5/5 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809A4EC0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809A4EB8,
};

/* 809A525C-809A5268 00012C 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 809A5268-809A5274 000138 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 809A5274-809A5280 000144 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 809A5280-809A528C 000150 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 809A528C-809A5298 00015C 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8099E4C0-8099EAD8 000E60 0618+00 1/1 0/0 0/0 .text            createHeap__12daNpcCoach_cFv */
void daNpcCoach_c::createHeap() {
    // NONMATCHING
}

/* 8099EAD8-8099EB20 001478 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 8099EB20-8099EB40 0014C0 0020+00 1/0 0/0 0/0 .text daNpcCoach_Execute__FP12daNpcCoach_c */
static void daNpcCoach_Execute(daNpcCoach_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809A5030-809A5034 000160 0004+00 0/1 0/0 0/0 .rodata          @5133 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5133 = 0x000000FF;
COMPILER_STRIP_GATE(0x809A5030, &lit_5133);
#pragma pop

/* 809A5034-809A5038 000164 0004+00 0/5 0/0 0/0 .rodata          @5250 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5250 = 15.0f;
COMPILER_STRIP_GATE(0x809A5034, &lit_5250);
#pragma pop

/* 809A5038-809A503C 000168 0004+00 0/3 0/0 0/0 .rodata          @5251 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5251 = -1.0f;
COMPILER_STRIP_GATE(0x809A5038, &lit_5251);
#pragma pop

/* 809A503C-809A5040 00016C 0004+00 0/1 0/0 0/0 .rodata          @5252 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5252 = 20.0f;
COMPILER_STRIP_GATE(0x809A503C, &lit_5252);
#pragma pop

/* 809A5040-809A5044 000170 0004+00 0/3 0/0 0/0 .rodata          @5253 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5253 = -90.0f;
COMPILER_STRIP_GATE(0x809A5040, &lit_5253);
#pragma pop

/* 809A5044-809A5048 000174 0004+00 0/1 0/0 0/0 .rodata          @5254 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5254 = 0x3B11A2B4;
COMPILER_STRIP_GATE(0x809A5044, &lit_5254);
#pragma pop

/* 809A5048-809A5050 000178 0008+00 0/9 0/0 0/0 .rodata          @5256 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5256[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809A5048, &lit_5256);
#pragma pop

/* 8099EB40-8099EEA0 0014E0 0360+00 1/1 0/0 0/0 .text            execute__12daNpcCoach_cFv */
void daNpcCoach_c::execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809A5050-809A5054 000180 0004+00 0/1 0/0 0/0 .rodata          @5307 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5307 = 125.0f;
COMPILER_STRIP_GATE(0x809A5050, &lit_5307);
#pragma pop

/* 8099EEA0-8099F1B8 001840 0318+00 1/2 0/0 0/0 .text            checkCoachDamage__12daNpcCoach_cFv
 */
void daNpcCoach_c::checkCoachDamage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809A5054-809A5058 000184 0004+00 0/1 0/0 0/0 .rodata          @5397 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5397 = 1.5f;
COMPILER_STRIP_GATE(0x809A5054, &lit_5397);
#pragma pop

/* 809A5058-809A505C 000188 0004+00 0/1 0/0 0/0 .rodata          @5398 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5398 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x809A5058, &lit_5398);
#pragma pop

/* 809A505C-809A5060 00018C 0004+00 0/1 0/0 0/0 .rodata          @5399 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5399 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x809A505C, &lit_5399);
#pragma pop

/* 809A5060-809A5064 000190 0004+00 0/2 0/0 0/0 .rodata          @5400 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5400 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x809A5060, &lit_5400);
#pragma pop

/* 8099F1B8-8099F4BC 001B58 0304+00 1/1 0/0 0/0 .text            setCoachBlazing__12daNpcCoach_cFUc
 */
void daNpcCoach_c::setCoachBlazing(u8 param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809A5064-809A5068 000194 0004+00 0/2 0/0 0/0 .rodata          @5600 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5600 = 63.0f;
COMPILER_STRIP_GATE(0x809A5064, &lit_5600);
#pragma pop

/* 809A5068-809A506C 000198 0004+00 0/2 0/0 0/0 .rodata          @5601 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5601 = 17.0f;
COMPILER_STRIP_GATE(0x809A5068, &lit_5601);
#pragma pop

/* 809A506C-809A5070 00019C 0004+00 0/2 0/0 0/0 .rodata          @5602 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5602 = 11.0f;
COMPILER_STRIP_GATE(0x809A506C, &lit_5602);
#pragma pop

/* 809A5070-809A5074 0001A0 0004+00 0/2 0/0 0/0 .rodata          @5603 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5603 = -11.0f;
COMPILER_STRIP_GATE(0x809A5070, &lit_5603);
#pragma pop

/* 8099F4BC-8099F988 001E5C 04CC+00 1/1 0/0 0/0 .text            reinsExecute__12daNpcCoach_cFv */
void daNpcCoach_c::reinsExecute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809A5074-809A5078 0001A4 0004+00 0/3 0/0 0/0 .rodata          @5710 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5710 = 2.0f;
COMPILER_STRIP_GATE(0x809A5074, &lit_5710);
#pragma pop

/* 809A5078-809A507C 0001A8 0004+00 0/1 0/0 0/0 .rodata          @5711 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5711 = 6.0f;
COMPILER_STRIP_GATE(0x809A5078, &lit_5711);
#pragma pop

/* 8099F988-8099FCF4 002328 036C+00 1/1 0/0 0/0 .text            reinsInit__12daNpcCoach_cFv */
void daNpcCoach_c::reinsInit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809A507C-809A5080 0001AC 0004+00 0/3 0/0 0/0 .rodata          @5928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5928 = 1500.0f;
COMPILER_STRIP_GATE(0x809A507C, &lit_5928);
#pragma pop

/* 809A5080-809A5084 0001B0 0004+00 0/1 0/0 0/0 .rodata          @5929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5929 = 35.0f;
COMPILER_STRIP_GATE(0x809A5080, &lit_5929);
#pragma pop

/* 809A5084-809A5088 0001B4 0004+00 0/1 0/0 0/0 .rodata          @5930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5930 = 65.0f;
COMPILER_STRIP_GATE(0x809A5084, &lit_5930);
#pragma pop

/* 809A5088-809A508C 0001B8 0004+00 0/1 0/0 0/0 .rodata          @5931 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5931 = -20.0f;
COMPILER_STRIP_GATE(0x809A5088, &lit_5931);
#pragma pop

/* 809A508C-809A5090 0001BC 0004+00 0/2 0/0 0/0 .rodata          @5932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5932 = 0.5f;
COMPILER_STRIP_GATE(0x809A508C, &lit_5932);
#pragma pop

/* 809A5090-809A5094 0001C0 0004+00 0/2 0/0 0/0 .rodata          @5933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5933 = 108.0f;
COMPILER_STRIP_GATE(0x809A5090, &lit_5933);
#pragma pop

/* 809A5094-809A5098 0001C4 0004+00 0/2 0/0 0/0 .rodata          @5934 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5934 = 290.0f;
COMPILER_STRIP_GATE(0x809A5094, &lit_5934);
#pragma pop

/* 8099FCF4-809A0728 002694 0A34+00 1/1 0/0 0/0 .text            calcCoachMotion__12daNpcCoach_cFv
 */
void daNpcCoach_c::calcCoachMotion() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809A5098-809A509C 0001C8 0004+00 0/2 0/0 0/0 .rodata          @6072 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6072 = 65535.0f;
COMPILER_STRIP_GATE(0x809A5098, &lit_6072);
#pragma pop

/* 809A509C-809A50A0 0001CC 0004+00 0/1 0/0 0/0 .rodata          @6073 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6073 = 0x43DBE958;
COMPILER_STRIP_GATE(0x809A509C, &lit_6073);
#pragma pop

/* 809A50A0-809A50A4 0001D0 0004+00 0/1 0/0 0/0 .rodata          @6074 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6074 = 0x4420A762;
COMPILER_STRIP_GATE(0x809A50A0, &lit_6074);
#pragma pop

/* 809A50A4-809A50A8 0001D4 0004+00 0/2 0/0 0/0 .rodata          @6075 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6075 = 128.0f;
COMPILER_STRIP_GATE(0x809A50A4, &lit_6075);
#pragma pop

/* 809A0728-809A0DB8 0030C8 0690+00 1/1 0/0 0/0 .text calcRearWheelRotate__12daNpcCoach_cFv */
void daNpcCoach_c::calcRearWheelRotate() {
    // NONMATCHING
}

/* 809A0DB8-809A0E00 003758 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809A50A8-809A50AC 0001D8 0004+00 0/1 0/0 0/0 .rodata          @6173 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6173 = 160.0f;
COMPILER_STRIP_GATE(0x809A50A8, &lit_6173);
#pragma pop

/* 809A0E00-809A1180 0037A0 0380+00 1/1 0/0 0/0 .text            calcHarnessMotion__12daNpcCoach_cFv
 */
void daNpcCoach_c::calcHarnessMotion() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809A50AC-809A50B0 0001DC 0004+00 0/1 0/0 0/0 .rodata          @6308 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6308 = 0x43ACC9A0;
COMPILER_STRIP_GATE(0x809A50AC, &lit_6308);
#pragma pop

/* 809A50B0-809A50B4 0001E0 0004+00 0/1 0/0 0/0 .rodata          @6309 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6309 = 0x440B34A4;
COMPILER_STRIP_GATE(0x809A50B0, &lit_6309);
#pragma pop

/* 809A1180-809A1810 003B20 0690+00 1/1 0/0 0/0 .text calcFrontWheelRotate__12daNpcCoach_cFv */
void daNpcCoach_c::calcFrontWheelRotate() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809A50B4-809A50B8 0001E4 0004+00 0/1 0/0 0/0 .rodata          @6420 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6420 = 16384.0f;
COMPILER_STRIP_GATE(0x809A50B4, &lit_6420);
#pragma pop

/* 809A50B8-809A50BC 0001E8 0004+00 0/1 0/0 0/0 .rodata          @6421 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6421 = 7.0f / 100.0f;
COMPILER_STRIP_GATE(0x809A50B8, &lit_6421);
#pragma pop

/* 809A50BC-809A50C0 0001EC 0004+00 0/1 0/0 0/0 .rodata          @6422 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6422 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x809A50BC, &lit_6422);
#pragma pop

/* 809A50C0-809A50C4 0001F0 0004+00 0/1 0/0 0/0 .rodata          @6423 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6423 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x809A50C0, &lit_6423);
#pragma pop

/* 809A50C4-809A50C8 0001F4 0004+00 0/1 0/0 0/0 .rodata          @6424 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6424 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x809A50C4, &lit_6424);
#pragma pop

/* 809A50C8-809A50CC 0001F8 0004+00 0/1 0/0 0/0 .rodata          @6425 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6425 = 135.0f;
COMPILER_STRIP_GATE(0x809A50C8, &lit_6425);
#pragma pop

/* 809A50CC-809A50D0 0001FC 0004+00 0/1 0/0 0/0 .rodata          @6426 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6426 = 83.0f;
COMPILER_STRIP_GATE(0x809A50CC, &lit_6426);
#pragma pop

/* 809A1810-809A1BE0 0041B0 03D0+00 1/1 0/0 0/0 .text            calcHorseMotion__12daNpcCoach_cFv
 */
void daNpcCoach_c::calcHorseMotion() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809A50D0-809A50D4 000200 0004+00 0/2 0/0 0/0 .rodata          @6773 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6773 = 8.0f;
COMPILER_STRIP_GATE(0x809A50D0, &lit_6773);
#pragma pop

/* 809A50D4-809A50D8 000204 0004+00 0/1 0/0 0/0 .rodata          @6774 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6774 = 90.0f;
COMPILER_STRIP_GATE(0x809A50D4, &lit_6774);
#pragma pop

/* 809A1BE0-809A2740 004580 0B60+00 1/1 0/0 0/0 .text            calcHorseAnm__12daNpcCoach_cFv */
void daNpcCoach_c::calcHorseAnm() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809A50D8-809A50DC 000208 0004+00 0/1 0/0 0/0 .rodata          @6958 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6958 = 4096.0f;
COMPILER_STRIP_GATE(0x809A50D8, &lit_6958);
#pragma pop

/* 809A50DC-809A50E0 00020C 0004+00 0/1 0/0 0/0 .rodata          @6959 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6959 = -4096.0f;
COMPILER_STRIP_GATE(0x809A50DC, &lit_6959);
#pragma pop

/* 809A50E0-809A50E4 000210 0004+00 0/1 0/0 0/0 .rodata          @6960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6960 = 30.0f;
COMPILER_STRIP_GATE(0x809A50E0, &lit_6960);
#pragma pop

/* 809A50E4-809A50E8 000214 0004+00 0/1 0/0 0/0 .rodata          @6961 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6961 = 10.0f;
COMPILER_STRIP_GATE(0x809A50E4, &lit_6961);
#pragma pop

/* 809A2740-809A2E98 0050E0 0758+00 1/1 0/0 0/0 .text            calcHorsePath__12daNpcCoach_cFv */
void daNpcCoach_c::calcHorsePath() {
    // NONMATCHING
}

/* 809A2E98-809A2EB8 005838 0020+00 1/0 0/0 0/0 .text            daNpcCoach_Draw__FP12daNpcCoach_c
 */
static void daNpcCoach_Draw(daNpcCoach_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809A50E8-809A50EC 000218 0004+00 0/2 0/0 0/0 .rodata          @7066 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7066 = 150.0f;
COMPILER_STRIP_GATE(0x809A50E8, &lit_7066);
#pragma pop

/* 809A50EC-809A50F0 00021C 0004+00 0/1 0/0 0/0 .rodata          @7067 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7067 = 1000.0f;
COMPILER_STRIP_GATE(0x809A50EC, &lit_7067);
#pragma pop

/* 809A50F0-809A50F4 000220 0004+00 0/2 0/0 0/0 .rodata          @7068 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7068 = 100.0f;
COMPILER_STRIP_GATE(0x809A50F0, &lit_7068);
#pragma pop

/* 809A50F4-809A50F8 000224 0004+00 0/1 0/0 0/0 .rodata          @7069 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7069 = 1400.0f;
COMPILER_STRIP_GATE(0x809A50F4, &lit_7069);
#pragma pop

/* 809A2EB8-809A3300 005858 0448+00 1/1 0/0 0/0 .text            draw__12daNpcCoach_cFv */
void daNpcCoach_c::draw() {
    // NONMATCHING
}

/* 809A3300-809A3308 005CA0 0008+00 1/0 0/0 0/0 .text daNpcCoach_IsDelete__FP12daNpcCoach_c */
static bool daNpcCoach_IsDelete(daNpcCoach_c* param_0) {
    return true;
}

/* 809A3308-809A3330 005CA8 0028+00 1/0 0/0 0/0 .text            daNpcCoach_Delete__FP12daNpcCoach_c
 */
static void daNpcCoach_Delete(daNpcCoach_c* param_0) {
    // NONMATCHING
}

/* 809A3330-809A3570 005CD0 0240+00 1/1 0/0 0/0 .text            __dt__12daNpcCoach_cFv */
daNpcCoach_c::~daNpcCoach_c() {
    // NONMATCHING
}

/* 809A3570-809A3674 005F10 0104+00 1/1 0/0 0/0 .text            __dt__16daNpcChHarness_cFv */
daNpcChHarness_c::~daNpcChHarness_c() {
    // NONMATCHING
}

/* 809A3674-809A3798 006014 0124+00 1/1 0/0 0/0 .text            __dt__14daNpcChCoach_cFv */
daNpcChCoach_c::~daNpcChCoach_c() {
    // NONMATCHING
}

/* 809A3798-809A3864 006138 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_CylFv */
// dCcD_Cyl::~dCcD_Cyl() {
extern "C" void __dt__8dCcD_CylFv() {
    // NONMATCHING
}

/* 809A3864-809A3884 006204 0020+00 1/0 0/0 0/0 .text            daNpcCoach_Create__FP10fopAc_ac_c
 */
static void daNpcCoach_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809A3884-809A3928 006224 00A4+00 1/1 0/0 0/0 .text            create__12daNpcCoach_cFv */
void daNpcCoach_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809A50F8-809A50FC 000228 0004+00 0/1 0/0 0/0 .rodata          @7443 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7443 = -180.0f;
COMPILER_STRIP_GATE(0x809A50F8, &lit_7443);
#pragma pop

/* 809A50FC-809A5100 00022C 0004+00 0/1 0/0 0/0 .rodata          @7444 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7444 = -750.0f;
COMPILER_STRIP_GATE(0x809A50FC, &lit_7444);
#pragma pop

/* 809A5100-809A5104 000230 0004+00 0/1 0/0 0/0 .rodata          @7445 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7445 = 180.0f;
COMPILER_STRIP_GATE(0x809A5100, &lit_7445);
#pragma pop

/* 809A5104-809A5108 000234 0004+00 0/1 0/0 0/0 .rodata          @7446 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7446 = 450.0f;
COMPILER_STRIP_GATE(0x809A5104, &lit_7446);
#pragma pop

/* 809A5108-809A510C 000238 0004+00 0/1 0/0 0/0 .rodata          @7447 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7447 = 200.0f;
COMPILER_STRIP_GATE(0x809A5108, &lit_7447);
#pragma pop

/* 809A5120-809A5120 000250 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809A5126 = "F_SP123";
#pragma pop

/* 809A3928-809A4078 0062C8 0750+00 1/1 0/0 0/0 .text            create_init__12daNpcCoach_cFv */
void daNpcCoach_c::create_init() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809A510C-809A5110 00023C 0004+00 0/1 0/0 0/0 .rodata          @7496 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7496 = 45.0f;
COMPILER_STRIP_GATE(0x809A510C, &lit_7496);
#pragma pop

/* 809A5110-809A5114 000240 0004+00 0/1 0/0 0/0 .rodata          @7497 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7497 = 50.0f;
COMPILER_STRIP_GATE(0x809A5110, &lit_7497);
#pragma pop

/* 809A5114-809A5118 000244 0004+00 0/1 0/0 0/0 .rodata          @7498 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7498 = 250.0f;
COMPILER_STRIP_GATE(0x809A5114, &lit_7498);
#pragma pop

/* 809A5118-809A511C 000248 0004+00 0/1 0/0 0/0 .rodata          @7499 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7499 = 85.0f;
COMPILER_STRIP_GATE(0x809A5118, &lit_7499);
#pragma pop

/* 809A511C-809A5120 00024C 0004+00 0/1 0/0 0/0 .rodata          @7500 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7500 = 120.0f;
COMPILER_STRIP_GATE(0x809A511C, &lit_7500);
#pragma pop

/* 809A4078-809A43A0 006A18 0328+00 1/1 0/0 0/0 .text            initCollision__12daNpcCoach_cFv */
void daNpcCoach_c::initCollision() {
    // NONMATCHING
}

/* 809A43A0-809A43DC 006D40 003C+00 1/1 0/0 0/0 .text            initBaseMtx__12daNpcCoach_cFv */
void daNpcCoach_c::initBaseMtx() {
    // NONMATCHING
}

/* 809A43DC-809A46C4 006D7C 02E8+00 1/1 0/0 0/0 .text            setBaseMtx__12daNpcCoach_cFv */
void daNpcCoach_c::setBaseMtx() {
    // NONMATCHING
}

/* 809A46C4-809A48A8 007064 01E4+00 1/1 0/0 0/0 .text            initCoachBlazing__12daNpcCoach_cFv
 */
void daNpcCoach_c::initCoachBlazing() {
    // NONMATCHING
}

/* 809A48A8-809A4B9C 007248 02F4+00 1/1 0/0 0/0 .text            __ct__12daNpcCoach_cFv */
daNpcCoach_c::daNpcCoach_c() {
    // NONMATCHING
}

/* 809A4B9C-809A4BF8 00753C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 809A4BF8-809A4C68 007598 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809A4C68-809A4CB0 007608 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 809A4CB0-809A4CF8 007650 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 809A4CF8-809A4D40 007698 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 809A4D40-809A4D78 0076E0 0038+00 1/1 0/0 0/0 .text            __ct__11J3DLightObjFv */
// J3DLightObj::J3DLightObj() {
extern "C" void __ct__11J3DLightObjFv() {
    // NONMATCHING
}

/* 809A4D78-809A4D7C 007718 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 809A4D7C-809A4E00 00771C 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
// dCcD_Cyl::dCcD_Cyl() {
extern "C" void __ct__8dCcD_CylFv() {
    // NONMATCHING
}

/* 809A4E00-809A4E70 0077A0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809A4E70-809A4EB8 007810 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 809A4EB8-809A4EC0 007858 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809A4EB8() {
    // NONMATCHING
}

/* 809A4EC0-809A4EC8 007860 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809A4EC0() {
    // NONMATCHING
}

/* 809A5120-809A5120 000250 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
