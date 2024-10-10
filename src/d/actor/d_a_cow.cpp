/**
 * @file d_a_cow.cpp
 * 
*/

#include "d/actor/d_a_cow.h"
#include "dolphin/types.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void calcRunAnime__7daCow_cFi();
extern "C" void setBck__7daCow_cFiUcff();
extern "C" void checkBck__7daCow_cFi();
extern "C" void setEffect__7daCow_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void isChaseCowGame__7daCow_cFv();
extern "C" void setCarryStatus__7daCow_cFv();
extern "C" void setActetcStatus__7daCow_cFv();
extern "C" void checkNadeNadeFinish__7daCow_cFv();
extern "C" void checkNadeNade__7daCow_cFv();
extern "C" void setSeSnort__7daCow_cFv();
extern "C" void setRushVibration__7daCow_cFi();
extern "C" void checkThrow__7daCow_cFv();
extern "C" void setBodyAngle__7daCow_cFs();
extern "C" void setBodyAngle2__7daCow_cFs();
extern "C" void checkProcess__7daCow_cFM7daCow_cFPCvPv_v();
extern "C" void setProcess__7daCow_cFM7daCow_cFPCvPv_vi();
extern "C" void damage_check__7daCow_cFv();
extern "C" void setEnterCow20__7daCow_cFv();
extern "C" void setEnterCow10__7daCow_cFv();
extern "C" void setGroundAngle__7daCow_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" static void s_near_cow__FPvPv();
extern "C" static void s_angry_cow__FPvPv();
extern "C" static void s_angry_cow2__FPvPv();
extern "C" void checkRun__7daCow_cFv();
extern "C" void checkNearCowRun__7daCow_cFv();
extern "C" void action_wait__7daCow_cFv();
extern "C" void action_eat__7daCow_cFv();
extern "C" void action_moo__7daCow_cFv();
extern "C" void action_shake__7daCow_cFv();
extern "C" void checkNearWolf__7daCow_cFv();
extern "C" void checkPlayerWait__7daCow_cFv();
extern "C" void checkPlayerSurprise__7daCow_cFv();
extern "C" void checkPlayerPos__7daCow_cFv();
extern "C" void checkBeforeBg__7daCow_cFv();
extern "C" void checkOutOfGate__7daCow_cF4cXyz();
extern "C" void getCowshedAngle__7daCow_cFv();
extern "C" void getCowshedDist__7daCow_cFv();
extern "C" void checkCowIn__7daCow_cFff();
extern "C" void checkCowInOwn__7daCow_cFi();
extern "C" void action_run__7daCow_cFv();
extern "C" void checkCurringPen__7daCow_cFv();
extern "C" void setCowInCage__7daCow_cFv();
extern "C" void setEnterCount__7daCow_cFv();
extern "C" void action_enter__7daCow_cFv();
extern "C" void isAngry__7daCow_cFv();
extern "C" void isGuardFad__7daCow_cFv();
extern "C" void setAngryHit__7daCow_cFv();
extern "C" void checkBeforeBgAngry__7daCow_cFs();
extern "C" void setRedTev__7daCow_cFv();
extern "C" void setAngryTurn__7daCow_cFv();
extern "C" void action_angry__7daCow_cFv();
extern "C" void calcCatchPos__7daCow_cFfi();
extern "C" void executeCrazyWait__7daCow_cFv();
extern "C" void executeCrazyDash__7daCow_cFv();
extern "C" void initCrazyBeforeCatch__7daCow_cFi();
extern "C" void executeCrazyBeforeCatch__7daCow_cFv();
extern "C" void initCrazyCatch__7daCow_cFi();
extern "C" void executeCrazyCatch__7daCow_cFv();
extern "C" void initCrazyThrow__7daCow_cFi();
extern "C" void executeCrazyThrow__7daCow_cFv();
extern "C" void initCrazyAttack__7daCow_cFi();
extern "C" void executeCrazyAttack__7daCow_cFv();
extern "C" void initCrazyAway__7daCow_cFi();
extern "C" void executeCrazyAway__7daCow_cFv();
extern "C" void executeCrazyEnd__7daCow_cFv();
extern "C" void initCrazyBack__7daCow_cFi();
extern "C" void executeCrazyBack__7daCow_cFv();
extern "C" void action_crazy__7daCow_cFv();
extern "C" void executeCrazyBack2__7daCow_cFv();
extern "C" void action_thrown__7daCow_cFv();
extern "C" void checkWolfBusters__7daCow_cFv();
extern "C" void action_wolf__7daCow_cFv();
extern "C" void action_damage__7daCow_cFv();
extern "C" void action__7daCow_cFv();
extern "C" void setMtx__7daCow_cFv();
extern "C" void setAttnPos__7daCow_cFv();
extern "C" void setCollisions__7daCow_cFv();
extern "C" void Execute__7daCow_cFv();
extern "C" static void daCow_Execute__FPv();
extern "C" void CreateHeap__7daCow_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void createHeapCallBack__7daCow_cFP10fopAc_ac_c();
extern "C" void initialize__7daCow_cFv();
extern "C" void create__7daCow_cFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" static void daCow_Create__FPv();
extern "C" void ctrlJoint__7daCow_cFP8J3DJointP8J3DModel();
extern "C" void ctrlJointCallBack__7daCow_cFP8J3DJointi();
extern "C" void Draw__7daCow_cFv();
extern "C" static void daCow_Draw__FPv();
extern "C" void Delete__7daCow_cFv();
extern "C" static void daCow_Delete__FPv();
extern "C" static bool daCow_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80662CB0(void* _this, int*);
extern "C" void __sinit_d_a_cow_cpp();
extern "C" static void func_80662D60();
extern "C" static void func_80662D68();
extern "C" void getShapeAngle__7daCow_cFv();
extern "C" void checkNowWolf__9daPy_py_cFv();
extern "C" extern char const* const d_a_cow__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void mDoLib_project__FP3VecP3Vec();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_SearchByName__FsPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_cancelCarryNow__FP10fopAc_ac_c();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopCamM_GetParam__FP12camera_class();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcM_IsCreating__FUi();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void
setEffectTwo__8dPaPoT_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC4cXyzPC4cXyzPC5csXyzPC4cXyzScff();
extern "C" void dPath_GetPnt__FPC5dPathi();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LockonTarget__12dAttention_cFl();
extern "C" void LockonTruth__12dAttention_cFv();
extern "C" void request__10dAttLook_cFP10fopAc_ac_cfffsi();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dTimer_createGetIn2D__Fl4cXyz();
extern "C" void ClrCcMove__9cCcD_SttsFv();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseS__FPsss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savefpr_29();
extern "C" void _restfpr_29();
extern "C" void _savegpr_19();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 m_emitterTwoData__8dPaPoT_c[36];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" extern u8 g_meter2_info[248];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u8 g_dComIfGoat_gameInfo[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80662DB0-80662DB4 000000 0004+00 37/37 0/0 0/0 .rodata          @3987 */
SECTION_RODATA static f32 const lit_3987 = 35.0f;
COMPILER_STRIP_GATE(0x80662DB0, &lit_3987);

/* 80662DB4-80662DB8 000004 0004+00 0/6 0/0 0/0 .rodata          @3988 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3988 = 5.0f;
COMPILER_STRIP_GATE(0x80662DB4, &lit_3988);
#pragma pop

/* 80662DB8-80662DBC 000008 0004+00 6/31 0/0 0/0 .rodata          @3989 */
SECTION_RODATA static f32 const lit_3989 = 1.0f;
COMPILER_STRIP_GATE(0x80662DB8, &lit_3989);

/* 80662DBC-80662DC0 00000C 0004+00 0/5 0/0 0/0 .rodata          @3990 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3990 = 3.0f;
COMPILER_STRIP_GATE(0x80662DBC, &lit_3990);
#pragma pop

/* 80662DC0-80662DC4 000010 0004+00 0/3 0/0 0/0 .rodata          @3991 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3991 = 25.0f;
COMPILER_STRIP_GATE(0x80662DC0, &lit_3991);
#pragma pop

/* 80662DC4-80662DC8 000014 0004+00 0/2 0/0 0/0 .rodata          @3992 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3992 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x80662DC4, &lit_3992);
#pragma pop

/* 806585CC-80658730 0000EC 0164+00 6/6 0/0 0/0 .text            calcRunAnime__7daCow_cFi */
void daCow_c::calcRunAnime(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662DC8-80662DCC 000018 0004+00 12/46 0/0 0/0 .rodata          @3998 */
SECTION_RODATA static u8 const lit_3998[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80662DC8, &lit_3998);

/* 80662DCC-80662DD0 00001C 0004+00 1/3 0/0 0/0 .rodata          @3999 */
SECTION_RODATA static f32 const lit_3999 = -1.0f;
COMPILER_STRIP_GATE(0x80662DCC, &lit_3999);

/* 80662F18-80662F18 000168 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80662F18 = "Cow";
#pragma pop

/* 80658730-806587D4 000250 00A4+00 20/20 0/0 0/0 .text            setBck__7daCow_cFiUcff */
void daCow_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* 806587D4-80658830 0002F4 005C+00 1/1 0/0 0/0 .text            checkBck__7daCow_cFi */
void daCow_c::checkBck(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662DD0-80662DD4 000020 0004+00 1/10 0/0 0/0 .rodata          @4087 */
SECTION_RODATA static f32 const lit_4087 = 10.0f;
COMPILER_STRIP_GATE(0x80662DD0, &lit_4087);

/* 80662DD4-80662DD8 000024 0004+00 0/1 0/0 0/0 .rodata          @4088 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4088 = -70.0f;
COMPILER_STRIP_GATE(0x80662DD4, &lit_4088);
#pragma pop

/* 80662DD8-80662DDC 000028 0004+00 0/1 0/0 0/0 .rodata          @4089 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4089 = -25.0f;
COMPILER_STRIP_GATE(0x80662DD8, &lit_4089);
#pragma pop

/* 80662DDC-80662DE0 00002C 0004+00 0/7 0/0 0/0 .rodata          @4090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4090 = 2.0f;
COMPILER_STRIP_GATE(0x80662DDC, &lit_4090);
#pragma pop

/* 80663460-80663464 000008 0001+03 6/6 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80663464-80663468 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80663468-8066346C 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 8066346C-80663470 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80663470-80663474 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80663474-80663478 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80663478-8066347C 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 8066347C-80663480 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80663480-80663484 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80663484-80663488 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80663488-8066348C 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 8066348C-80663490 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80663490-80663494 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80663494-80663498 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80663498-8066349C 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 8066349C-806634A0 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 806634A0-806634AC 000048 000C+00 0/1 0/0 0/0 .bss             @3960 */
#pragma push
#pragma force_active on
static u8 lit_3960[12];
#pragma pop

/* 806634AC-806634B8 000054 000C+00 5/7 0/0 0/0 .bss             pen_pos__21@unnamed@d_a_cow_cpp@ */
static u8 data_806634AC[12];

/* 806634B8-806634C4 000060 000C+00 0/1 0/0 0/0 .bss             @3961 */
#pragma push
#pragma force_active on
static u8 lit_3961[12];
#pragma pop

/* 806634C4-806634D0 00006C 000C+00 1/2 0/0 0/0 .bss             gate_pos__21@unnamed@d_a_cow_cpp@
 */
static u8 data_806634C4[12];

/* 806634D0-806634D4 000078 0004+00 3/3 0/0 0/0 .bss l_CowRoomNo__21@unnamed@d_a_cow_cpp@ */
static u8 data_806634D0[4];

/* 806634D4-806634D8 00007C 0004+00 1/1 0/0 0/0 .bss             l_CowType__21@unnamed@d_a_cow_cpp@
 */
static u8 data_806634D4[4];

/* 806634D8-806634E8 000080 000C+04 0/1 0/0 0/0 .bss             @4021 */
#pragma push
#pragma force_active on
static u8 lit_4021[12 + 4 /* padding */];
#pragma pop

/* 806634E8-806634F4 000090 000C+00 0/1 0/0 0/0 .bss             runScale$4020 */
#pragma push
#pragma force_active on
static u8 runScale[12];
#pragma pop

/* 80658830-80658A68 000350 0238+00 1/1 0/0 0/0 .text            setEffect__7daCow_cFv */
void daCow_c::setEffect() {
    // NONMATCHING
}

/* 80658A68-80658AA4 000588 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662F18-80662F18 000168 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80662F1C = "F_SP00";
#pragma pop

/* 80658AA4-80658B10 0005C4 006C+00 5/5 0/0 0/0 .text            isChaseCowGame__7daCow_cFv */
void daCow_c::isChaseCowGame() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662DE0-80662DE4 000030 0004+00 0/1 0/0 0/0 .rodata          @4126 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4126 = 270.0f;
COMPILER_STRIP_GATE(0x80662DE0, &lit_4126);
#pragma pop

/* 80662DE4-80662DE8 000034 0004+00 0/1 0/0 0/0 .rodata          @4127 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4127 = 70.0f;
COMPILER_STRIP_GATE(0x80662DE4, &lit_4127);
#pragma pop

/* 80662DE8-80662DEC 000038 0004+00 0/3 0/0 0/0 .rodata          @4128 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4128 = 600.0f;
COMPILER_STRIP_GATE(0x80662DE8, &lit_4128);
#pragma pop

/* 80662DEC-80662DF0 00003C 0004+00 0/10 0/0 0/0 .rodata          @4129 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4129 = 100.0f;
COMPILER_STRIP_GATE(0x80662DEC, &lit_4129);
#pragma pop

/* 80658B10-80658C18 000630 0108+00 6/6 0/0 0/0 .text            setCarryStatus__7daCow_cFv */
void daCow_c::setCarryStatus() {
    // NONMATCHING
}

/* 80658C18-80658C78 000738 0060+00 5/5 0/0 0/0 .text            setActetcStatus__7daCow_cFv */
void daCow_c::setActetcStatus() {
    // NONMATCHING
}

/* 80658C78-80658CA4 000798 002C+00 3/3 0/0 0/0 .text            checkNadeNadeFinish__7daCow_cFv */
void daCow_c::checkNadeNadeFinish() {
    // NONMATCHING
}

/* 80658CA4-80658CD0 0007C4 002C+00 5/5 0/0 0/0 .text            checkNadeNade__7daCow_cFv */
void daCow_c::checkNadeNade() {
    // NONMATCHING
}

/* 80658CD0-80658D3C 0007F0 006C+00 3/3 0/0 0/0 .text            setSeSnort__7daCow_cFv */
void daCow_c::setSeSnort() {
    // NONMATCHING
}

/* 80658D3C-80658DB8 00085C 007C+00 2/2 0/0 0/0 .text            setRushVibration__7daCow_cFi */
void daCow_c::setRushVibration(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662F58-80662F64 000000 000C+00 13/13 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80662F64-80662F78 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80662F78-80662FB8 000020 0040+00 0/1 0/0 0/0 .data            cc_sph_src__21@unnamed@d_a_cow_cpp@
 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_80662F78[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0xFB, 0xFD, 0xFB, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00,
};
#pragma pop

/* 80662FB8-80662FBA 000060 0002+00 4/5 0/0 0/0 .data            pen_dir__21@unnamed@d_a_cow_cpp@ */
SECTION_DATA static u16 data_80662FB8 = 0xC000;

/* 80662FBA-80662FBC 000062 0002+00 1/2 0/0 0/0 .data            gate_dir__21@unnamed@d_a_cow_cpp@
 */
SECTION_DATA static u16 data_80662FBA = 0x8000;

/* 80662FBC-80662FC0 000064 0004+00 0/2 0/0 0/0 .data l_CowRoomPosY__21@unnamed@d_a_cow_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static f32 data_80662FBC = 15000.0f;
#pragma pop

/* 80662FC0-80663010 000068 0050+00 1/3 0/0 0/0 .data l_CowRoomPosX__21@unnamed@d_a_cow_cpp@ */
SECTION_DATA static u8 data_80662FC0[80] = {
    0xC6, 0x25, 0xA0, 0x00, 0xC6, 0x25, 0xA0, 0x00, 0xC6, 0x28, 0xC0, 0x00, 0xC6, 0x28, 0xC0, 0x00,
    0xC6, 0x2B, 0xE0, 0x00, 0xC6, 0x2B, 0xE0, 0x00, 0xC6, 0x2F, 0x00, 0x00, 0xC6, 0x2F, 0x00, 0x00,
    0xC6, 0x32, 0x20, 0x00, 0xC6, 0x32, 0x20, 0x00, 0xC6, 0x35, 0x40, 0x00, 0xC6, 0x35, 0x40, 0x00,
    0xC6, 0x38, 0x60, 0x00, 0xC6, 0x38, 0x60, 0x00, 0xC6, 0x3B, 0x80, 0x00, 0xC6, 0x3B, 0x80, 0x00,
    0xC6, 0x3E, 0xA0, 0x00, 0xC6, 0x3E, 0xA0, 0x00, 0xC6, 0x41, 0xC0, 0x00, 0xC6, 0x41, 0xC0, 0x00,
};

/* 80663010-80663018 0000B8 0008+00 1/3 0/0 0/0 .data l_CowRoomPosZ__21@unnamed@d_a_cow_cpp@ */
SECTION_DATA static u8 data_80663010[8] = {
    0xC6, 0x99, 0x7C, 0x00, 0xC6, 0xA3, 0x7C, 0x00,
};

/* 80663018-80663024 0000C0 000C+00 1/2 0/0 0/0 .data gWolfBustersID__21@unnamed@d_a_cow_cpp@ */
SECTION_DATA static u8 data_80663018[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80663024-80663030 -00001 000C+00 1/1 0/0 0/0 .data            @4181 */
SECTION_DATA static void* lit_4181[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_thrown__7daCow_cFv,
};

/* 80663030-8066303C -00001 000C+00 1/1 0/0 0/0 .data            @4186 */
SECTION_DATA static void* lit_4186[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_thrown__7daCow_cFv,
};

/* 80658DB8-80658E98 0008D8 00E0+00 6/6 0/0 0/0 .text            checkThrow__7daCow_cFv */
void daCow_c::checkThrow() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662DF0-80662DF4 000040 0004+00 2/3 0/0 0/0 .rodata          @4205 */
SECTION_RODATA static f32 const lit_4205 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80662DF0, &lit_4205);

/* 80662DF4-80662DF8 000044 0004+00 2/2 0/0 0/0 .rodata          @4206 */
SECTION_RODATA static f32 const lit_4206 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80662DF4, &lit_4206);

/* 80662DF8-80662E00 000048 0008+00 2/5 0/0 0/0 .rodata          @4208 */
SECTION_RODATA static u8 const lit_4208[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80662DF8, &lit_4208);

/* 80658E98-80658F94 0009B8 00FC+00 3/3 0/0 0/0 .text            setBodyAngle__7daCow_cFs */
void daCow_c::setBodyAngle(s16 param_0) {
    // NONMATCHING
}

/* 80658F94-806590E8 000AB4 0154+00 1/1 0/0 0/0 .text            setBodyAngle2__7daCow_cFs */
void daCow_c::setBodyAngle2(s16 param_0) {
    // NONMATCHING
}

/* 806590E8-80659114 000C08 002C+00 5/5 0/0 0/0 .text checkProcess__7daCow_cFM7daCow_cFPCvPv_v */
void daCow_c::checkProcess(void (daCow_c::*param_0)()) {
    // NONMATCHING
}

/* 80659114-806591BC 000C34 00A8+00 16/16 0/0 0/0 .text setProcess__7daCow_cFM7daCow_cFPCvPv_vi */
void daCow_c::setProcess(void (daCow_c::*param_0)(), int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8066303C-80663048 -00001 000C+00 0/1 0/0 0/0 .data            @4264 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4264[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_crazy__7daCow_cFv,
};
#pragma pop

/* 80663048-80663054 -00001 000C+00 0/1 0/0 0/0 .data            @4278 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4278[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_angry__7daCow_cFv,
};
#pragma pop

/* 80663054-80663060 -00001 000C+00 0/1 0/0 0/0 .data            @4285 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4285[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_damage__7daCow_cFv,
};
#pragma pop

/* 80663060-8066306C -00001 000C+00 0/1 0/0 0/0 .data            @4290 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4290[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_damage__7daCow_cFv,
};
#pragma pop

/* 8066306C-80663078 -00001 000C+00 0/1 0/0 0/0 .data            @4293 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4293[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_wait__7daCow_cFv,
};
#pragma pop

/* 80663078-80663084 -00001 000C+00 0/1 0/0 0/0 .data            @4297 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4297[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_wait__7daCow_cFv,
};
#pragma pop

/* 806591BC-8065945C 000CDC 02A0+00 1/1 0/0 0/0 .text            damage_check__7daCow_cFv */
void daCow_c::damage_check() {
    // NONMATCHING
}

/* 8065945C-80659540 000F7C 00E4+00 1/1 0/0 0/0 .text            setEnterCow20__7daCow_cFv */
void daCow_c::setEnterCow20() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80663084-806630AC 00012C 0028+00 0/1 0/0 0/0 .data            cow_number$4349 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 cow_number[40] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00,
    0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x09,
};
#pragma pop

/* 80659540-80659630 001060 00F0+00 1/1 0/0 0/0 .text            setEnterCow10__7daCow_cFv */
void daCow_c::setEnterCow10() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806630AC-806630B8 -00001 000C+00 1/1 0/0 0/0 .data            @4467 */
SECTION_DATA static void* lit_4467[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_run__7daCow_cFv,
};

/* 806630B8-806630C4 -00001 000C+00 0/1 0/0 0/0 .data            @4530 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4530[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_moo__7daCow_cFv,
};
#pragma pop

/* 806630C4-806630D0 -00001 000C+00 0/1 0/0 0/0 .data            @4537 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4537[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_run__7daCow_cFv,
};
#pragma pop

/* 806630D0-806630DC -00001 000C+00 0/1 0/0 0/0 .data            @4547 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4547[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_run__7daCow_cFv,
};
#pragma pop

/* 806630DC-806630E8 -00001 000C+00 0/1 0/0 0/0 .data            @4555 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4555[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_moo__7daCow_cFv,
};
#pragma pop

/* 806630E8-806630F4 -00001 000C+00 0/1 0/0 0/0 .data            @4561 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4561[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_moo__7daCow_cFv,
};
#pragma pop

/* 806630F4-80663100 -00001 000C+00 0/1 0/0 0/0 .data            @4566 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4566[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_eat__7daCow_cFv,
};
#pragma pop

/* 80663100-8066310C -00001 000C+00 0/1 0/0 0/0 .data            @4569 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4569[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_shake__7daCow_cFv,
};
#pragma pop

/* 8066310C-80663118 -00001 000C+00 0/1 0/0 0/0 .data            @4684 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4684[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_wait__7daCow_cFv,
};
#pragma pop

/* 80663118-80663124 -00001 000C+00 0/1 0/0 0/0 .data            @4690 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4690[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_wait__7daCow_cFv,
};
#pragma pop

/* 80663124-80663130 -00001 000C+00 0/1 0/0 0/0 .data            @4698 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4698[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_moo__7daCow_cFv,
};
#pragma pop

/* 80663130-8066313C -00001 000C+00 0/1 0/0 0/0 .data            @4704 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4704[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_moo__7daCow_cFv,
};
#pragma pop

/* 8066313C-80663148 -00001 000C+00 0/1 0/0 0/0 .data            @4709 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4709[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_shake__7daCow_cFv,
};
#pragma pop

/* 80663148-80663154 -00001 000C+00 0/1 0/0 0/0 .data            @4712 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4712[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_wait__7daCow_cFv,
};
#pragma pop

/* 80663154-80663160 -00001 000C+00 0/1 0/0 0/0 .data            @4809 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4809[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_wait__7daCow_cFv,
};
#pragma pop

/* 80663160-8066316C -00001 000C+00 0/1 0/0 0/0 .data            @4817 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4817[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_shake__7daCow_cFv,
};
#pragma pop

/* 8066316C-80663178 -00001 000C+00 0/1 0/0 0/0 .data            @4822 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4822[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_eat__7daCow_cFv,
};
#pragma pop

/* 80663178-80663184 -00001 000C+00 0/1 0/0 0/0 .data            @4827 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4827[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_shake__7daCow_cFv,
};
#pragma pop

/* 80663184-80663190 -00001 000C+00 0/1 0/0 0/0 .data            @4830 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4830[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_wait__7daCow_cFv,
};
#pragma pop

/* 80663190-8066319C -00001 000C+00 0/1 0/0 0/0 .data            @4897 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4897[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_wait__7daCow_cFv,
};
#pragma pop

/* 8066319C-806631A8 -00001 000C+00 0/1 0/0 0/0 .data            @4903 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4903[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_wait__7daCow_cFv,
};
#pragma pop

/* 806631A8-806631B4 -00001 000C+00 0/1 0/0 0/0 .data            @4909 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4909[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_moo__7daCow_cFv,
};
#pragma pop

/* 806631B4-806631C0 -00001 000C+00 0/1 0/0 0/0 .data            @4915 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4915[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_moo__7daCow_cFv,
};
#pragma pop

/* 806631C0-806631CC -00001 000C+00 0/1 0/0 0/0 .data            @4920 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4920[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_eat__7daCow_cFv,
};
#pragma pop

/* 806631CC-806631D8 -00001 000C+00 0/1 0/0 0/0 .data            @4923 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4923[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_wait__7daCow_cFv,
};
#pragma pop

/* 806631D8-806631E4 -00001 000C+00 1/1 0/0 0/0 .data            @5493 */
SECTION_DATA static void* lit_5493[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_enter__7daCow_cFv,
};

/* 806631E4-806631F0 -00001 000C+00 0/1 0/0 0/0 .data            @5592 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5592[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_enter__7daCow_cFv,
};
#pragma pop

/* 806631F0-806631FC -00001 000C+00 0/1 0/0 0/0 .data            @5603 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5603[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_angry__7daCow_cFv,
};
#pragma pop

/* 806631FC-80663208 -00001 000C+00 0/1 0/0 0/0 .data            @5610 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5610[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_wait__7daCow_cFv,
};
#pragma pop

/* 80663208-80663214 -00001 000C+00 1/1 0/0 0/0 .data            @5818 */
SECTION_DATA static void* lit_5818[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_wait__7daCow_cFv,
};

/* 80663214-80663220 -00001 000C+00 1/1 0/0 0/0 .data            @5969 */
SECTION_DATA static void* lit_5969[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_angry__7daCow_cFv,
};

/* 80663220-8066322C -00001 000C+00 1/1 0/0 0/0 .data            @5984 */
SECTION_DATA static void* lit_5984[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_wolf__7daCow_cFv,
};

/* 8066322C-80663238 -00001 000C+00 0/1 0/0 0/0 .data            @6091 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6091[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_run__7daCow_cFv,
};
#pragma pop

/* 80663238-80663244 -00001 000C+00 0/1 0/0 0/0 .data            @6104 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6104[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_run__7daCow_cFv,
};
#pragma pop

/* 80663244-80663250 -00001 000C+00 0/1 0/0 0/0 .data            @6171 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6171[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_run__7daCow_cFv,
};
#pragma pop

/* 80663250-80663270 -00001 0020+00 1/1 0/0 0/0 .data            @6981 */
SECTION_DATA static void* lit_6981[8] = {
    (void*)(((char*)executeCrazyBack__7daCow_cFv) + 0x44),
    (void*)(((char*)executeCrazyBack__7daCow_cFv) + 0x260),
    (void*)(((char*)executeCrazyBack__7daCow_cFv) + 0x298),
    (void*)(((char*)executeCrazyBack__7daCow_cFv) + 0x32C),
    (void*)(((char*)executeCrazyBack__7daCow_cFv) + 0x368),
    (void*)(((char*)executeCrazyBack__7daCow_cFv) + 0x388),
    (void*)(((char*)executeCrazyBack__7daCow_cFv) + 0x3A4),
    (void*)(((char*)executeCrazyBack__7daCow_cFv) + 0x45C),
};

/* 80663270-80663294 -00001 0024+00 1/1 0/0 0/0 .data            @7039 */
SECTION_DATA static void* lit_7039[9] = {
    (void*)(((char*)action_crazy__7daCow_cFv) + 0x1D8),
    (void*)(((char*)action_crazy__7daCow_cFv) + 0x1E4),
    (void*)(((char*)action_crazy__7daCow_cFv) + 0x1F0),
    (void*)(((char*)action_crazy__7daCow_cFv) + 0x1FC),
    (void*)(((char*)action_crazy__7daCow_cFv) + 0x208),
    (void*)(((char*)action_crazy__7daCow_cFv) + 0x214),
    (void*)(((char*)action_crazy__7daCow_cFv) + 0x220),
    (void*)(((char*)action_crazy__7daCow_cFv) + 0x22C),
    (void*)(((char*)action_crazy__7daCow_cFv) + 0x238),
};

/* 80663294-806632A0 -00001 000C+00 0/1 0/0 0/0 .data            @7046 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7046[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_run__7daCow_cFv,
};
#pragma pop

/* 806632A0-806632AC -00001 000C+00 0/1 0/0 0/0 .data            @7052 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7052[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_angry__7daCow_cFv,
};
#pragma pop

/* 806632AC-806632B8 -00001 000C+00 0/1 0/0 0/0 .data            @7060 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7060[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_moo__7daCow_cFv,
};
#pragma pop

/* 806632B8-806632C4 -00001 000C+00 0/0 0/0 0/0 .data            @7144 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7144[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_run__7daCow_cFv,
};
#pragma pop

/* 806632C4-806632D0 -00001 000C+00 0/0 0/0 0/0 .data            @7150 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7150[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_wait__7daCow_cFv,
};
#pragma pop

/* 806632D0-806632DC -00001 000C+00 0/0 0/0 0/0 .data            @7153 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7153[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_wait__7daCow_cFv,
};
#pragma pop

/* 806632DC-80663300 -00001 0024+00 1/1 0/0 0/0 .data            @7189 */
SECTION_DATA static void* lit_7189[9] = {
    (void*)(((char*)action_thrown__7daCow_cFv) + 0x210),
    (void*)(((char*)action_thrown__7daCow_cFv) + 0x210),
    (void*)(((char*)action_thrown__7daCow_cFv) + 0xBC),
    (void*)(((char*)action_thrown__7daCow_cFv) + 0xC8),
    (void*)(((char*)action_thrown__7daCow_cFv) + 0xD4),
    (void*)(((char*)action_thrown__7daCow_cFv) + 0xE0),
    (void*)(((char*)action_thrown__7daCow_cFv) + 0xEC),
    (void*)(((char*)action_thrown__7daCow_cFv) + 0x210),
    (void*)(((char*)action_thrown__7daCow_cFv) + 0x208),
};

/* 80663300-8066330C -00001 000C+00 1/1 0/0 0/0 .data            @7207 */
SECTION_DATA static void* lit_7207[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_wolf__7daCow_cFv,
};

/* 8066330C-80663318 -00001 000C+00 0/1 0/0 0/0 .data            @7244 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7244[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_run__7daCow_cFv,
};
#pragma pop

/* 80663318-80663324 -00001 000C+00 0/1 0/0 0/0 .data            @7267 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7267[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_angry__7daCow_cFv,
};
#pragma pop

/* 80663324-80663330 -00001 000C+00 0/1 0/0 0/0 .data            @7277 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7277[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_angry__7daCow_cFv,
};
#pragma pop

/* 80663330-8066333C -00001 000C+00 1/1 0/0 0/0 .data            @7505 */
SECTION_DATA static void* lit_7505[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_angry__7daCow_cFv,
};

/* 8066333C-80663348 -00001 000C+00 0/1 0/0 0/0 .data            @7816 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7816[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_crazy__7daCow_cFv,
};
#pragma pop

/* 80663348-80663354 -00001 000C+00 0/1 0/0 0/0 .data            @7822 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7822[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_shake__7daCow_cFv,
};
#pragma pop

/* 80663354-80663360 -00001 000C+00 0/1 0/0 0/0 .data            @7827 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7827[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_moo__7daCow_cFv,
};
#pragma pop

/* 80663360-8066336C -00001 000C+00 0/1 0/0 0/0 .data            @7832 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7832[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_eat__7daCow_cFv,
};
#pragma pop

/* 8066336C-80663378 -00001 000C+00 0/1 0/0 0/0 .data            @7835 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7835[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_wait__7daCow_cFv,
};
#pragma pop

/* 80663378-80663384 -00001 000C+00 1/1 0/0 0/0 .data            @8186 */
SECTION_DATA static void* lit_8186[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_crazy__7daCow_cFv,
};

/* 80663384-80663390 -00001 000C+00 1/1 0/0 0/0 .data            @8188 */
SECTION_DATA static void* lit_8188[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)action_thrown__7daCow_cFv,
};

/* 80663390-806633B0 -00001 0020+00 1/0 0/0 0/0 .data            daCow_MethodTable */
static actor_method_class daCow_MethodTable = {
    (process_method_func)daCow_Create__FPv,
    (process_method_func)daCow_Delete__FPv,
    (process_method_func)daCow_Execute__FPv,
    (process_method_func)daCow_IsDelete__FPv,
    (process_method_func)daCow_Draw__FPv,
};

/* 806633B0-806633E0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_COW */
extern actor_process_profile_definition g_profile_COW = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_COW,               // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daCow_c),        // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  692,                    // mPriority
  &daCow_MethodTable,     // sub_method
  0x00040100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 806633E0-806633EC 000488 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806633EC-806633F8 000494 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806633F8-80663404 0004A0 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80663404-80663410 0004AC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80663410-8066341C 0004B8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8066341C-80663440 0004C4 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80662D68,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80662D60,
};

/* 80663440-8066344C 0004E8 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8066344C-80663458 0004F4 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80659630-806596E4 001150 00B4+00 1/1 0/0 0/0 .text            setGroundAngle__7daCow_cFv */
void daCow_c::setGroundAngle() {
    // NONMATCHING
}

/* 806596E4-8065972C 001204 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806634F4-806634F8 00009C 0004+00 0/3 0/0 0/0 .bss             m_near_dist */
#pragma push
#pragma force_active on
static u8 m_near_dist[4];
#pragma pop

/* 806634F8-806634FC -00001 0004+00 0/3 0/0 0/0 .bss             None */
#pragma push
#pragma force_active on
/* 806634F8 0002+00 data_806634F8 m_view_angle_wide */
/* 806634FA 0002+00 data_806634FA m_view_angle */
static u8 struct_806634F8[4];
#pragma pop

/* 8065972C-80659814 00124C 00E8+00 2/2 0/0 0/0 .text            s_near_cow__FPvPv */
static void s_near_cow(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662E00-80662E04 000050 0004+00 1/7 0/0 0/0 .rodata          @4446 */
SECTION_RODATA static f32 const lit_4446 = 500.0f;
COMPILER_STRIP_GATE(0x80662E00, &lit_4446);

/* 806634FC-80663500 0000A4 0002+02 4/4 0/0 0/0 .bss             m_angry_cow */
static u8 m_angry_cow[2 + 2 /* padding */];

/* 80659814-806598D4 001334 00C0+00 1/1 0/0 0/0 .text            s_angry_cow__FPvPv */
static void s_angry_cow(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 806598D4-80659970 0013F4 009C+00 1/1 0/0 0/0 .text            s_angry_cow2__FPvPv */
static void s_angry_cow2(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80659970-806599C0 001490 0050+00 1/1 0/0 0/0 .text            checkRun__7daCow_cFv */
void daCow_c::checkRun() {
    // NONMATCHING
}

/* 806599C0-80659ADC 0014E0 011C+00 4/4 0/0 0/0 .text            checkNearCowRun__7daCow_cFv */
void daCow_c::checkNearCowRun() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662E04-80662E08 000054 0004+00 0/5 0/0 0/0 .rodata          @4649 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4649 = 300.0f;
COMPILER_STRIP_GATE(0x80662E04, &lit_4649);
#pragma pop

/* 80662E08-80662E0C 000058 0004+00 0/6 0/0 0/0 .rodata          @4650 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4650 = 12.0f;
COMPILER_STRIP_GATE(0x80662E08, &lit_4650);
#pragma pop

/* 80662E0C-80662E10 00005C 0004+00 1/3 0/0 0/0 .rodata          @4651 */
SECTION_RODATA static f32 const lit_4651 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80662E0C, &lit_4651);

/* 80662E10-80662E18 000060 0004+04 0/3 0/0 0/0 .rodata          @4652 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4652[1 + 1 /* padding */] = {
    1.0f / 10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80662E10, &lit_4652);
#pragma pop

/* 80662E18-80662E20 000068 0008+00 0/13 0/0 0/0 .rodata          @4653 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4653[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80662E18, &lit_4653);
#pragma pop

/* 80662E20-80662E28 000070 0008+00 0/13 0/0 0/0 .rodata          @4654 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4654[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80662E20, &lit_4654);
#pragma pop

/* 80662E28-80662E30 000078 0008+00 0/13 0/0 0/0 .rodata          @4655 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4655[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80662E28, &lit_4655);
#pragma pop

/* 80662E30-80662E34 000080 0004+00 0/4 0/0 0/0 .rodata          @4656 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4656 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80662E30, &lit_4656);
#pragma pop

/* 80662E34-80662E38 000084 0004+00 0/6 0/0 0/0 .rodata          @4657 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4657 = 0.5f;
COMPILER_STRIP_GATE(0x80662E34, &lit_4657);
#pragma pop

/* 80659ADC-8065A0E8 0015FC 060C+00 15/0 0/0 0/0 .text            action_wait__7daCow_cFv */
void daCow_c::action_wait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662E38-80662E3C 000088 0004+00 0/4 0/0 0/0 .rodata          @4786 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4786 = 40.0f;
COMPILER_STRIP_GATE(0x80662E38, &lit_4786);
#pragma pop

/* 80662E3C-80662E40 00008C 0004+00 0/2 0/0 0/0 .rodata          @4787 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4787 = 68.0f;
COMPILER_STRIP_GATE(0x80662E3C, &lit_4787);
#pragma pop

/* 80662E40-80662E44 000090 0004+00 0/1 0/0 0/0 .rodata          @4788 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4788 = 98.0f;
COMPILER_STRIP_GATE(0x80662E40, &lit_4788);
#pragma pop

/* 8065A0E8-8065A594 001C08 04AC+00 4/0 0/0 0/0 .text            action_eat__7daCow_cFv */
void daCow_c::action_eat() {
    // NONMATCHING
}

/* 8065A594-8065A8A4 0020B4 0310+00 9/0 0/0 0/0 .text            action_moo__7daCow_cFv */
void daCow_c::action_moo() {
    // NONMATCHING
}

/* 8065A8A4-8065ACC8 0023C4 0424+00 5/0 0/0 0/0 .text            action_shake__7daCow_cFv */
void daCow_c::action_shake() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662E44-80662E48 000094 0004+00 1/1 0/0 0/0 .rodata          @5007 */
SECTION_RODATA static f32 const lit_5007 = 3000.0f;
COMPILER_STRIP_GATE(0x80662E44, &lit_5007);

/* 8065ACC8-8065AD2C 0027E8 0064+00 4/4 0/0 0/0 .text            checkNearWolf__7daCow_cFv */
void daCow_c::checkNearWolf() {
    // NONMATCHING
}

/* 8065AD2C-8065ADB0 00284C 0084+00 5/5 0/0 0/0 .text            checkPlayerWait__7daCow_cFv */
void daCow_c::checkPlayerWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662E48-80662E4C 000098 0004+00 2/5 0/0 0/0 .rodata          @5049 */
SECTION_RODATA static f32 const lit_5049 = 1500.0f;
COMPILER_STRIP_GATE(0x80662E48, &lit_5049);

/* 8065ADB0-8065AE88 0028D0 00D8+00 2/2 0/0 0/0 .text            checkPlayerSurprise__7daCow_cFv */
void daCow_c::checkPlayerSurprise() {
    // NONMATCHING
}

/* 8065AE88-8065B034 0029A8 01AC+00 2/2 0/0 0/0 .text            checkPlayerPos__7daCow_cFv */
void daCow_c::checkPlayerPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662E4C-80662E54 00009C 0006+02 0/1 0/0 0/0 .rodata          @5133 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5133[6 + 2 /* padding */] = {
    0x00,
    0x00,
    0xE0,
    0x00,
    0x20,
    0x00,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80662E4C, &lit_5133);
#pragma pop

/* 80662E54-80662E58 0000A4 0004+00 0/4 0/0 0/0 .rodata          @5362 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5362 = 110.0f;
COMPILER_STRIP_GATE(0x80662E54, &lit_5362);
#pragma pop

/* 80662E58-80662E5C 0000A8 0004+00 0/4 0/0 0/0 .rodata          @5363 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5363 = 1000.0f;
COMPILER_STRIP_GATE(0x80662E58, &lit_5363);
#pragma pop

/* 80662E5C-80662E60 0000AC 0004+00 0/3 0/0 0/0 .rodata          @5364 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5364 = 700.0f;
COMPILER_STRIP_GATE(0x80662E5C, &lit_5364);
#pragma pop

/* 80662E60-80662E64 0000B0 0004+00 0/3 0/0 0/0 .rodata          @5365 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5365 = 800.0f;
COMPILER_STRIP_GATE(0x80662E60, &lit_5365);
#pragma pop

/* 80662E64-80662E68 0000B4 0004+00 0/1 0/0 0/0 .rodata          @5366 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5366 = 560.0f;
COMPILER_STRIP_GATE(0x80662E64, &lit_5366);
#pragma pop

/* 8065B034-8065B760 002B54 072C+00 2/2 0/0 0/0 .text            checkBeforeBg__7daCow_cFv */
void daCow_c::checkBeforeBg() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662E68-80662E6C 0000B8 0004+00 1/1 0/0 0/0 .rodata          @5409 */
SECTION_RODATA static f32 const lit_5409 = 1100.0f;
COMPILER_STRIP_GATE(0x80662E68, &lit_5409);

/* 8065B760-8065B8A8 003280 0148+00 6/6 0/0 0/0 .text            checkOutOfGate__7daCow_cF4cXyz */
void daCow_c::checkOutOfGate(cXyz param_0) {
    // NONMATCHING
}

/* 8065B8A8-8065B8D8 0033C8 0030+00 3/3 0/0 0/0 .text            getCowshedAngle__7daCow_cFv */
void daCow_c::getCowshedAngle() {
    // NONMATCHING
}

/* 8065B8D8-8065BA30 0033F8 0158+00 1/1 0/0 0/0 .text            getCowshedDist__7daCow_cFv */
void daCow_c::getCowshedDist() {
    // NONMATCHING
}

/* 8065BA30-8065BB34 003550 0104+00 2/2 0/0 0/0 .text            checkCowIn__7daCow_cFff */
void daCow_c::checkCowIn(f32 param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662E6C-80662E70 0000BC 0004+00 1/4 0/0 0/0 .rodata          @5516 */
SECTION_RODATA static f32 const lit_5516 = 250.0f;
COMPILER_STRIP_GATE(0x80662E6C, &lit_5516);

/* 80662E70-80662E74 0000C0 0004+00 1/1 0/0 0/0 .rodata          @5517 */
SECTION_RODATA static f32 const lit_5517 = 220.0f;
COMPILER_STRIP_GATE(0x80662E70, &lit_5517);

/* 8065BB34-8065BC68 003654 0134+00 5/5 0/0 0/0 .text            checkCowInOwn__7daCow_cFi */
void daCow_c::checkCowInOwn(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662E74-80662E78 0000C4 0004+00 1/3 0/0 0/0 .rodata          @5651 */
SECTION_RODATA static f32 const lit_5651 = 20.0f;
COMPILER_STRIP_GATE(0x80662E74, &lit_5651);

/* 80662E78-80662E7C 0000C8 0004+00 0/8 0/0 0/0 .rodata          @5652 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5652 = 200.0f;
COMPILER_STRIP_GATE(0x80662E78, &lit_5652);
#pragma pop

/* 80662E7C-80662E80 0000CC 0004+00 0/7 0/0 0/0 .rodata          @5653 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5653 = 30.0f;
COMPILER_STRIP_GATE(0x80662E7C, &lit_5653);
#pragma pop

/* 80662E80-80662E84 0000D0 0004+00 0/4 0/0 0/0 .rodata          @5654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5654 = 4.0f;
COMPILER_STRIP_GATE(0x80662E80, &lit_5654);
#pragma pop

/* 80662E84-80662E88 0000D4 0004+00 0/2 0/0 0/0 .rodata          @5655 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5655 = 45.0f;
COMPILER_STRIP_GATE(0x80662E84, &lit_5655);
#pragma pop

/* 80662E88-80662E8C 0000D8 0004+00 1/6 0/0 0/0 .rodata          @5656 */
SECTION_RODATA static f32 const lit_5656 = 50.0f;
COMPILER_STRIP_GATE(0x80662E88, &lit_5656);

/* 8065BC68-8065C32C 003788 06C4+00 9/0 0/0 0/0 .text            action_run__7daCow_cFv */
void daCow_c::action_run() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662E8C-80662E90 0000DC 0004+00 0/2 0/0 0/0 .rodata          @5714 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5714 = 2500.0f;
COMPILER_STRIP_GATE(0x80662E8C, &lit_5714);
#pragma pop

/* 8065C32C-8065C508 003E4C 01DC+00 1/1 0/0 0/0 .text            checkCurringPen__7daCow_cFv */
void daCow_c::checkCurringPen() {
    // NONMATCHING
}

/* 8065C508-8065C680 004028 0178+00 2/2 0/0 0/0 .text            setCowInCage__7daCow_cFv */
void daCow_c::setCowInCage() {
    // NONMATCHING
}

/* 8065C680-8065C70C 0041A0 008C+00 2/2 0/0 0/0 .text            setEnterCount__7daCow_cFv */
void daCow_c::setEnterCount() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662E90-80662E94 0000E0 0004+00 0/2 0/0 0/0 .rodata          @5963 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5963 = 80.0f;
COMPILER_STRIP_GATE(0x80662E90, &lit_5963);
#pragma pop

/* 80662E94-80662E98 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5964 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5964 = 2000.0f;
COMPILER_STRIP_GATE(0x80662E94, &lit_5964);
#pragma pop

/* 80662E98-80662E9C 0000E8 0004+00 0/1 0/0 0/0 .rodata          @5965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5965 = 1.5f;
COMPILER_STRIP_GATE(0x80662E98, &lit_5965);
#pragma pop

/* 8065C70C-8065CFBC 00422C 08B0+00 2/0 0/0 0/0 .text            action_enter__7daCow_cFv */
void daCow_c::action_enter() {
    // NONMATCHING
}

/* 8065CFBC-8065D03C 004ADC 0080+00 4/4 0/0 1/1 .text            isAngry__7daCow_cFv */
void daCow_c::isAngry() {
    // NONMATCHING
}

/* 8065D03C-8065D0B8 004B5C 007C+00 1/1 0/0 1/1 .text            isGuardFad__7daCow_cFv */
void daCow_c::isGuardFad() {
    // NONMATCHING
}

/* 8065D0B8-8065D17C 004BD8 00C4+00 0/0 0/0 1/1 .text            setAngryHit__7daCow_cFv */
void daCow_c::setAngryHit() {
    // NONMATCHING
}

/* 8065D17C-8065D230 004C9C 00B4+00 1/1 0/0 0/0 .text            checkBeforeBgAngry__7daCow_cFs */
void daCow_c::checkBeforeBgAngry(s16 param_0) {
    // NONMATCHING
}

/* 8065D230-8065D29C 004D50 006C+00 2/2 0/0 0/0 .text            setRedTev__7daCow_cFv */
void daCow_c::setRedTev() {
    // NONMATCHING
}

/* 8065D29C-8065D2F0 004DBC 0054+00 1/1 0/0 0/0 .text            setAngryTurn__7daCow_cFv */
void daCow_c::setAngryTurn() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662E9C-80662EA0 0000EC 0004+00 0/1 0/0 0/0 .rodata          @6253 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6253 = 75.0f;
COMPILER_STRIP_GATE(0x80662E9C, &lit_6253);
#pragma pop

/* 80662EA0-80662EA4 0000F0 0004+00 0/4 0/0 0/0 .rodata          @6254 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6254 = 60.0f;
COMPILER_STRIP_GATE(0x80662EA0, &lit_6254);
#pragma pop

/* 80662EA4-80662EA8 0000F4 0004+00 0/2 0/0 0/0 .rodata          @6255 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6255 = 15.0f;
COMPILER_STRIP_GATE(0x80662EA4, &lit_6255);
#pragma pop

/* 80662EA8-80662EAC 0000F8 0004+00 0/1 0/0 0/0 .rodata          @6256 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6256 = 350.0f;
COMPILER_STRIP_GATE(0x80662EA8, &lit_6256);
#pragma pop

/* 80662EAC-80662EB0 0000FC 0004+00 0/1 0/0 0/0 .rodata          @6257 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6257 = 1200.0f;
COMPILER_STRIP_GATE(0x80662EAC, &lit_6257);
#pragma pop

/* 8065D2F0-8065DC08 004E10 0918+00 7/0 0/0 0/0 .text            action_angry__7daCow_cFv */
void daCow_c::action_angry() {
    // NONMATCHING
}

/* 8065DC08-8065DE70 005728 0268+00 4/4 0/0 0/0 .text            calcCatchPos__7daCow_cFfi */
void daCow_c::calcCatchPos(f32 param_0, int param_1) {
    // NONMATCHING
}

/* 8065DE70-8065DF40 005990 00D0+00 1/1 0/0 0/0 .text            executeCrazyWait__7daCow_cFv */
void daCow_c::executeCrazyWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662EB0-80662EB4 000100 0004+00 0/2 0/0 0/0 .rodata          @6502 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6502 = -200.0f;
COMPILER_STRIP_GATE(0x80662EB0, &lit_6502);
#pragma pop

/* 8065DF40-8065E6BC 005A60 077C+00 1/1 0/0 0/0 .text            executeCrazyDash__7daCow_cFv */
void daCow_c::executeCrazyDash() {
    // NONMATCHING
}

/* 8065E6BC-8065E6E8 0061DC 002C+00 2/2 0/0 0/0 .text            initCrazyBeforeCatch__7daCow_cFi */
void daCow_c::initCrazyBeforeCatch(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662EB4-80662EB8 000104 0004+00 0/3 0/0 0/0 .rodata          @6527 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6527 = -220.0f;
COMPILER_STRIP_GATE(0x80662EB4, &lit_6527);
#pragma pop

/* 8065E6E8-8065E7D0 006208 00E8+00 2/2 0/0 0/0 .text            executeCrazyBeforeCatch__7daCow_cFv
 */
void daCow_c::executeCrazyBeforeCatch() {
    // NONMATCHING
}

/* 8065E7D0-8065E888 0062F0 00B8+00 3/3 0/0 0/0 .text            initCrazyCatch__7daCow_cFi */
void daCow_c::initCrazyCatch(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662EB8-80662EBC 000108 0004+00 0/2 0/0 0/0 .rodata          @6599 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6599 = -260.0f;
COMPILER_STRIP_GATE(0x80662EB8, &lit_6599);
#pragma pop

/* 8065E888-8065EAF4 0063A8 026C+00 2/2 0/0 0/0 .text            executeCrazyCatch__7daCow_cFv */
void daCow_c::executeCrazyCatch() {
    // NONMATCHING
}

/* 8065EAF4-8065EBF0 006614 00FC+00 1/1 0/0 0/0 .text            initCrazyThrow__7daCow_cFi */
void daCow_c::initCrazyThrow(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662EBC-80662EC0 00010C 0004+00 0/1 0/0 0/0 .rodata          @6706 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6706 = 34.0f;
COMPILER_STRIP_GATE(0x80662EBC, &lit_6706);
#pragma pop

/* 80662EC0-80662EC4 000110 0004+00 0/4 0/0 0/0 .rodata          @6707 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6707 = -4.0f;
COMPILER_STRIP_GATE(0x80662EC0, &lit_6707);
#pragma pop

/* 8065EBF0-8065F088 006710 0498+00 2/2 0/0 0/0 .text            executeCrazyThrow__7daCow_cFv */
void daCow_c::executeCrazyThrow() {
    // NONMATCHING
}

/* 8065F088-8065F144 006BA8 00BC+00 3/3 0/0 0/0 .text            initCrazyAttack__7daCow_cFi */
void daCow_c::initCrazyAttack(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662EC4-80662EC8 000114 0004+00 0/2 0/0 0/0 .rodata          @6765 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6765 = 7.0f;
COMPILER_STRIP_GATE(0x80662EC4, &lit_6765);
#pragma pop

/* 8065F144-8065F308 006C64 01C4+00 2/2 0/0 0/0 .text            executeCrazyAttack__7daCow_cFv */
void daCow_c::executeCrazyAttack() {
    // NONMATCHING
}

/* 8065F308-8065F37C 006E28 0074+00 1/1 0/0 0/0 .text            initCrazyAway__7daCow_cFi */
void daCow_c::initCrazyAway(int param_0) {
    // NONMATCHING
}

/* 8065F37C-8065F6E0 006E9C 0364+00 1/1 0/0 0/0 .text            executeCrazyAway__7daCow_cFv */
void daCow_c::executeCrazyAway() {
    // NONMATCHING
}

/* 8065F6E0-8065F744 007200 0064+00 1/1 0/0 0/0 .text            executeCrazyEnd__7daCow_cFv */
void daCow_c::executeCrazyEnd() {
    // NONMATCHING
}

/* 8065F744-8065F7DC 007264 0098+00 1/1 0/0 0/0 .text            initCrazyBack__7daCow_cFi */
void daCow_c::initCrazyBack(int param_0) {
    // NONMATCHING
}

/* 8065F7DC-8065FE50 0072FC 0674+00 2/1 0/0 0/0 .text            executeCrazyBack__7daCow_cFv */
void daCow_c::executeCrazyBack() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662F18-80662F18 000168 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80662F23 = "WILDGOAT";
SECTION_DEAD static char const* const stringBase_80662F2C = "WILDGOAT_SUCCESS";
SECTION_DEAD static char const* const stringBase_80662F3D = "WILDGOAT_FAILURE";
#pragma pop

/* 8065FE50-8066010C 007970 02BC+00 4/0 0/0 0/0 .text            action_crazy__7daCow_cFv */
void daCow_c::action_crazy() {
    // NONMATCHING
}

/* 8066010C-80660544 007C2C 0438+00 1/1 0/0 0/0 .text            executeCrazyBack2__7daCow_cFv */
void daCow_c::executeCrazyBack2() {
    // NONMATCHING
}

/* 80660544-806607B8 008064 0274+00 4/0 0/0 0/0 .text            action_thrown__7daCow_cFv */
void daCow_c::action_thrown() {
    // NONMATCHING
}

/* 806607B8-806608F0 0082D8 0138+00 1/1 0/0 0/0 .text            checkWolfBusters__7daCow_cFv */
void daCow_c::checkWolfBusters() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662EC8-80662ECC 000118 0004+00 0/0 0/0 0/0 .rodata          @6980 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6980 = 11.0f;
COMPILER_STRIP_GATE(0x80662EC8, &lit_6980);
#pragma pop

/* 80662ECC-80662ED0 00011C 0004+00 0/2 0/0 0/0 .rodata          @7493 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7493 = 90.0f;
COMPILER_STRIP_GATE(0x80662ECC, &lit_7493);
#pragma pop

/* 80662ED0-80662ED4 000120 0004+00 0/1 0/0 0/0 .rodata          @7494 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7494 = 36.0f;
COMPILER_STRIP_GATE(0x80662ED0, &lit_7494);
#pragma pop

/* 80662ED4-80662ED8 000124 0004+00 0/1 0/0 0/0 .rodata          @7495 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7495 = 150.0f;
COMPILER_STRIP_GATE(0x80662ED4, &lit_7495);
#pragma pop

/* 806608F0-806612DC 008410 09EC+00 2/0 0/0 0/0 .text            action_wolf__7daCow_cFv */
void daCow_c::action_wolf() {
    // NONMATCHING
}

/* 806612DC-806613EC 008DFC 0110+00 2/0 0/0 0/0 .text            action_damage__7daCow_cFv */
void daCow_c::action_damage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662ED8-80662EDC 000128 0004+00 0/1 0/0 0/0 .rodata          @7551 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7551 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80662ED8, &lit_7551);
#pragma pop

/* 80662EDC-80662EE0 00012C 0004+00 0/1 0/0 0/0 .rodata          @7552 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7552 = -300.0f;
COMPILER_STRIP_GATE(0x80662EDC, &lit_7552);
#pragma pop

/* 806613EC-80661580 008F0C 0194+00 1/1 0/0 0/0 .text            action__7daCow_cFv */
void daCow_c::action() {
    // NONMATCHING
}

/* 80661580-806615EC 0090A0 006C+00 1/1 0/0 0/0 .text            setMtx__7daCow_cFv */
void daCow_c::setMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662EE0-80662EE4 000130 0004+00 0/1 0/0 0/0 .rodata          @7624 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7624 = 18.0f;
COMPILER_STRIP_GATE(0x80662EE0, &lit_7624);
#pragma pop

/* 806615EC-80661720 00910C 0134+00 1/1 0/0 0/0 .text            setAttnPos__7daCow_cFv */
void daCow_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662EE4-80662EE8 000134 0004+00 0/1 0/0 0/0 .rodata          @7686 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7686 = -30.0f;
COMPILER_STRIP_GATE(0x80662EE4, &lit_7686);
#pragma pop

/* 80663500-80663504 0000A8 0004+00 0/0 0/0 0/0 .bss             m_search_range */
#pragma push
#pragma force_active on
static u8 m_search_range[4];
#pragma pop

/* 80663504-80663514 0000AC 000C+04 0/1 0/0 0/0 .bss             @7631 */
#pragma push
#pragma force_active on
static u8 lit_7631[12 + 4 /* padding */];
#pragma pop

/* 80663514-80663520 0000BC 000C+00 0/1 0/0 0/0 .bss             headOfst$7630 */
#pragma push
#pragma force_active on
static u8 headOfst[12];
#pragma pop

/* 80663520-80663530 0000C8 000C+04 0/1 0/0 0/0 .bss             @7635 */
#pragma push
#pragma force_active on
static u8 lit_7635[12 + 4 /* padding */];
#pragma pop

/* 80663530-8066353C 0000D8 000C+00 0/1 0/0 0/0 .bss             backBornOfst$7634 */
#pragma push
#pragma force_active on
static u8 backBornOfst[12];
#pragma pop

/* 8066353C-8066354C 0000E4 000C+04 0/1 0/0 0/0 .bss             @7639 */
#pragma push
#pragma force_active on
static u8 lit_7639[12 + 4 /* padding */];
#pragma pop

/* 8066354C-80663558 0000F4 000C+00 0/1 0/0 0/0 .bss             waistOfst$7638 */
#pragma push
#pragma force_active on
static u8 waistOfst[12];
#pragma pop

/* 80661720-80661940 009240 0220+00 1/1 0/0 0/0 .text            setCollisions__7daCow_cFv */
void daCow_c::setCollisions() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662EE8-80662EEC 000138 0004+00 0/2 0/0 0/0 .rodata          @7722 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7722 = 120.0f;
COMPILER_STRIP_GATE(0x80662EE8, &lit_7722);
#pragma pop

/* 80661940-80661AD0 009460 0190+00 2/2 0/0 0/0 .text            Execute__7daCow_cFv */
void daCow_c::Execute() {
    // NONMATCHING
}

/* 80661AD0-80661AF0 0095F0 0020+00 1/0 0/0 0/0 .text            daCow_Execute__FPv */
static void daCow_Execute(void* param_0) {
    // NONMATCHING
}

/* 80661AF0-80661CDC 009610 01EC+00 1/1 0/0 0/0 .text            CreateHeap__7daCow_cFv */
void daCow_c::CreateHeap() {
    // NONMATCHING
}

/* 80661CDC-80661D24 0097FC 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80661D24-80661D44 009844 0020+00 1/1 0/0 0/0 .text createHeapCallBack__7daCow_cFP10fopAc_ac_c
 */
void daCow_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662EEC-80662EF0 00013C 0004+00 0/1 0/0 0/0 .rodata          @7945 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7945 = -100.0f;
COMPILER_STRIP_GATE(0x80662EEC, &lit_7945);
#pragma pop

/* 80662EF0-80662EF8 000140 0004+04 0/1 0/0 0/0 .rodata          @7946 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7946[1 + 1 /* padding */] = {
    1300.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80662EF0, &lit_7946);
#pragma pop

/* 80662EF8-80662F00 000148 0008+00 0/1 0/0 0/0 .rodata          @7948 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7948[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80662EF8, &lit_7948);
#pragma pop

/* 80661D44-80662228 009864 04E4+00 1/1 0/0 0/0 .text            initialize__7daCow_cFv */
void daCow_c::initialize() {
    // NONMATCHING
}

/* 80662228-806623D4 009D48 01AC+00 1/1 0/0 0/0 .text            create__7daCow_cFv */
void daCow_c::create() {
    // NONMATCHING
}

/* 806623D4-806624A0 009EF4 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 806624A0-80662524 009FC0 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80662524-8066256C 00A044 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8066256C-806625B4 00A08C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 806625B4-80662624 00A0D4 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80662624-80662680 00A144 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80662680-806626F0 00A1A0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 806626F0-80662710 00A210 0020+00 1/0 0/0 0/0 .text            daCow_Create__FPv */
static void daCow_Create(void* param_0) {
    // NONMATCHING
}

/* 80662710-80662920 00A230 0210+00 1/1 0/0 0/0 .text ctrlJoint__7daCow_cFP8J3DJointP8J3DModel */
void daCow_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 80662920-8066296C 00A440 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__7daCow_cFP8J3DJointi */
void daCow_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662F00-80662F04 000150 0004+00 0/1 0/0 0/0 .rodata          @8223 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8223 = -20.0f;
COMPILER_STRIP_GATE(0x80662F00, &lit_8223);
#pragma pop

/* 80662F18-80662F18 000168 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80662F4E = "MAKI_OP";
#pragma pop

/* 8066296C-80662BC4 00A48C 0258+00 1/1 0/0 0/0 .text            Draw__7daCow_cFv */
void daCow_c::Draw() {
    // NONMATCHING
}

/* 80662BC4-80662BE4 00A6E4 0020+00 1/0 0/0 0/0 .text            daCow_Draw__FPv */
static void daCow_Draw(void* param_0) {
    // NONMATCHING
}

/* 80662BE4-80662C40 00A704 005C+00 1/1 0/0 0/0 .text            Delete__7daCow_cFv */
void daCow_c::Delete() {
    // NONMATCHING
}

/* 80662C40-80662C60 00A760 0020+00 1/0 0/0 0/0 .text            daCow_Delete__FPv */
static void daCow_Delete(void* param_0) {
    // NONMATCHING
}

/* 80662C60-80662C68 00A780 0008+00 1/0 0/0 0/0 .text            daCow_IsDelete__FPv */
static bool daCow_IsDelete(void* param_0) {
    return true;
}

/* 80662C68-80662CB0 00A788 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80662CB0-80662CCC 00A7D0 001C+00 4/4 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80662CB0(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80662F04-80662F08 000154 0004+00 0/1 0/0 0/0 .rodata          @8264 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8264 = -10200.0f;
COMPILER_STRIP_GATE(0x80662F04, &lit_8264);
#pragma pop

/* 80662F08-80662F0C 000158 0004+00 0/1 0/0 0/0 .rodata          @8265 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8265 = 15000.0f;
COMPILER_STRIP_GATE(0x80662F08, &lit_8265);
#pragma pop

/* 80662F0C-80662F10 00015C 0004+00 0/1 0/0 0/0 .rodata          @8266 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8266 = -20246.0f;
COMPILER_STRIP_GATE(0x80662F0C, &lit_8266);
#pragma pop

/* 80662F10-80662F14 000160 0004+00 0/1 0/0 0/0 .rodata          @8267 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8267 = -9246.0f;
COMPILER_STRIP_GATE(0x80662F10, &lit_8267);
#pragma pop

/* 80662F14-80662F18 000164 0004+00 0/1 0/0 0/0 .rodata          @8268 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8268 = -22763.0f;
COMPILER_STRIP_GATE(0x80662F14, &lit_8268);
#pragma pop

/* 80662CCC-80662D60 00A7EC 0094+00 0/0 1/0 0/0 .text            __sinit_d_a_cow_cpp */
void __sinit_d_a_cow_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80662CCC, __sinit_d_a_cow_cpp);
#pragma pop

/* 80662D60-80662D68 00A880 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80662D60() {
    // NONMATCHING
}

/* 80662D68-80662D70 00A888 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80662D68() {
    // NONMATCHING
}

/* 80662D70-80662D84 00A890 0014+00 1/1 0/0 0/0 .text            getShapeAngle__7daCow_cFv */
void daCow_c::getShapeAngle() {
    // NONMATCHING
}

/* 80662D84-80662D9C 00A8A4 0018+00 5/5 0/0 0/0 .text            checkNowWolf__9daPy_py_cFv */
// void daPy_py_c::checkNowWolf() {
extern "C" void checkNowWolf__9daPy_py_cFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80663558-8066355C 000100 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80663558[4];
#pragma pop

/* 8066355C-80663560 000104 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8066355C[4];
#pragma pop

/* 80663560-80663564 000108 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80663560[4];
#pragma pop

/* 80663564-80663568 00010C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80663564[4];
#pragma pop

/* 80663568-8066356C 000110 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80663568[4];
#pragma pop

/* 8066356C-80663570 000114 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8066356C[4];
#pragma pop

/* 80663570-80663574 000118 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80663570[4];
#pragma pop

/* 80663574-80663578 00011C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80663574[4];
#pragma pop

/* 80663578-8066357C 000120 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80663578[4];
#pragma pop

/* 8066357C-80663580 000124 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8066357C[4];
#pragma pop

/* 80663580-80663584 000128 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80663580[4];
#pragma pop

/* 80663584-80663588 00012C 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80663584[4];
#pragma pop

/* 80663588-8066358C 000130 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80663588[4];
#pragma pop

/* 8066358C-80663590 000134 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8066358C[4];
#pragma pop

/* 80663590-80663594 000138 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80663590[4];
#pragma pop

/* 80663594-80663598 00013C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80663594[4];
#pragma pop

/* 80663598-8066359C 000140 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80663598[4];
#pragma pop

/* 8066359C-806635A0 000144 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8066359C[4];
#pragma pop

/* 806635A0-806635A4 000148 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_806635A0[4];
#pragma pop

/* 806635A4-806635A8 00014C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_806635A4[4];
#pragma pop

/* 806635A8-806635AC 000150 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_806635A8[4];
#pragma pop

/* 806635AC-806635B0 000154 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806635AC[4];
#pragma pop

/* 806635B0-806635B4 000158 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806635B0[4];
#pragma pop

/* 806635B4-806635B8 00015C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806635B4[4];
#pragma pop

/* 806635B8-806635BC 000160 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_806635B8[4];
#pragma pop

/* 80662F18-80662F18 000168 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */