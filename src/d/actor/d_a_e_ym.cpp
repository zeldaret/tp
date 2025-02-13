/**
 * d_a_e_ym.cpp
 * Enemy - Shadow Insect / 闇虫 (Yami Mushi)
 */

#include "d/actor/d_a_e_ym.h"
#include "d/actor/d_a_player.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" void __ct__12daE_YM_HIO_cFv();
extern "C" void checkBck__8daE_YM_cFPCci();
extern "C" void bckSet__8daE_YM_cFiUcff();
extern "C" void bckSetFly__8daE_YM_cFiUcff();
extern "C" void draw__8daE_YM_cFv();
extern "C" static void daE_YM_Draw__FP8daE_YM_c();
extern "C" static void s_obj_sub__FPvPv();
extern "C" void setDigEffect__8daE_YM_cFv();
extern "C" void setElecEffect1__8daE_YM_cFv();
extern "C" void setElecEffect2__8daE_YM_cFv();
extern "C" void setFireEffect__8daE_YM_cFv();
extern "C" void checkWallCrash__8daE_YM_cFv();
extern "C" void checkWolfBark__8daE_YM_cFv();
extern "C" void checkSurpriseLock__8daE_YM_cFv();
extern "C" void checkRailSurprise__8daE_YM_cFv();
extern "C" void checkSurpriseNear__8daE_YM_cFv();
extern "C" void setNormalCc__8daE_YM_cFv();
extern "C" void setAppear__8daE_YM_cFv();
extern "C" void setMoveSound__8daE_YM_cFi();
extern "C" void setTurnSound__8daE_YM_cFv();
extern "C" void setActionMode__8daE_YM_cFi();
extern "C" void executeWait__8daE_YM_cFv();
extern "C" void executeMove__8daE_YM_cFv();
extern "C" void executeEscape__8daE_YM_cFv();
extern "C" void executeDown__8daE_YM_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void damage_check__8daE_YM_cFv();
extern "C" void executeWind__8daE_YM_cFv();
extern "C" void getSurpriseType__8daE_YM_cFv();
extern "C" void setSurpriseAway__8daE_YM_cFv();
extern "C" void setGoHomeType__8daE_YM_cFv();
extern "C" void executeSurprise__8daE_YM_cFv();
extern "C" void executeBack__8daE_YM_cFv();
extern "C" void executeFall__8daE_YM_cFv();
extern "C" void executeAttack__8daE_YM_cFv();
extern "C" void checkAttackEnd__8daE_YM_cFv();
extern "C" void setAttackMotion__8daE_YM_cFv();
extern "C" void executeAttackWall__8daE_YM_cFv();
extern "C" void executeDefense__8daE_YM_cFv();
extern "C" void checkFlyTerritory__8daE_YM_cFv();
extern "C" void initFly__8daE_YM_cFv();
extern "C" void executeFly__8daE_YM_cFv();
extern "C" void setInclination__8daE_YM_cFv();
extern "C" void executeFlyAttack__8daE_YM_cFv();
extern "C" void setNextPathPoint__8daE_YM_cFv();
extern "C" void checkRailDig__8daE_YM_cFv();
extern "C" void executeRail__8daE_YM_cFv();
extern "C" void executeBackRail__8daE_YM_cFv();
extern "C" void checkElectricStart__8daE_YM_cFv();
extern "C" void executeElectric__8daE_YM_cFv();
extern "C" void executeSwitch__8daE_YM_cFv();
extern "C" void initFireFly__8daE_YM_cFi();
extern "C" void executeFire__8daE_YM_cFv();
extern "C" void setRiverAttention__8daE_YM_cFv();
extern "C" void setLockByCargo__8daE_YM_cFv();
extern "C" void executeRiver__8daE_YM_cFv();
extern "C" static void s_ym_sub__FPvPv();
extern "C" void checkFrinedSamePos__8daE_YM_cFv();
extern "C" void action__8daE_YM_cFv();
extern "C" void mtx_set__8daE_YM_cFv();
extern "C" void cc_set__8daE_YM_cFv();
extern "C" void execute__8daE_YM_cFv();
extern "C" static void daE_YM_Execute__FP8daE_YM_c();
extern "C" static bool daE_YM_IsDelete__FP8daE_YM_c();
extern "C" void _delete__8daE_YM_cFv();
extern "C" static void daE_YM_Delete__FP8daE_YM_c();
extern "C" void CreateHeap__8daE_YM_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void checkBeforeBg__8daE_YM_cFs();
extern "C" void checkBeforeGround__8daE_YM_cFv();
extern "C" void checkInitialWall__8daE_YM_cFv();
extern "C" void checkWall__8daE_YM_cFv();
extern "C" void setHideType__8daE_YM_cFv();
extern "C" void create__8daE_YM_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" static void daE_YM_Create__FP8daE_YM_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_YM_HIO_cFv();
extern "C" void __sinit_d_a_e_ym_cpp();
extern "C" static void func_808154DC();
extern "C" static void func_808154E4();
extern "C" void __dt__4cXyzFv();
extern "C" void getLeftHandPos__9daPy_py_cCFv();
extern "C" void getPos__13daTag_FWall_cFUc();
extern "C" extern char const* const d_a_e_ym__stringBase0;
extern "C" u8 cc_sph_src__6E_YM_n[64];

//
// External References:
//

extern "C" void mDoMtx_XrotS__FPA4_fs();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotS__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_SearchByName__FsPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcM_IsCreating__FUi();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void isLightDropGetFlag__16dSv_light_drop_cCFUc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetPnt__FPC5dPathi();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void LockonTarget__12dAttention_cFl();
extern "C" void LockonTruth__12dAttention_cFv();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void GetGroundCode__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetGroundUpY__9dBgS_AcchFf();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__18dBgS_ObjGndChk_WtrFv();
extern "C" void __dt__18dBgS_ObjGndChk_WtrFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void GetAtHitObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void checkNowWolfEyeUp__9daPy_py_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" bool __eq__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void* __nwa__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_new_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u8 JPTracePCB4[4];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();
extern "C" void checkNextPath__8daKago_cF4cXyz();

//
// Declarations:
//

/* ############################################################################################## */
/* 80815B3C-80815B7C 000038 0040+00 1/1 0/0 0/0 .data            cc_sph_src__6E_YM_n */
dCcD_SrcSph E_YM_n::cc_sph_src = {
    {
        {0, {{0x400, 1, 13}, {0xD8FBFDFF, 3}, 0x75}},
        {dCcD_SE_METAL, 0, 0, 0, {0}},
        {dCcD_SE_NONE, 0, 0, 0, {2}},
        {0},
    },
    {
        {
            {0.0f, 0.0f, 0.0f},
            40.0f,
        },
    }
};

/* 80815B7C-80815B84 000078 0008+00 0/0 0/0 0/0 .data            w_eff_id$5427 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 w_eff_id[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};
#pragma pop

/* 80815B84-80815BA4 -00001 0020+00 1/1 0/0 0/0 .data            @6063 */
SECTION_DATA static void* lit_6063[8] = {
    (void*)(((char*)executeSurprise__8daE_YM_cFv) + 0xEC),
    (void*)(((char*)executeSurprise__8daE_YM_cFv) + 0x1F4),
    (void*)(((char*)executeSurprise__8daE_YM_cFv) + 0x708),
    (void*)(((char*)executeSurprise__8daE_YM_cFv) + 0x810),
    (void*)(((char*)executeSurprise__8daE_YM_cFv) + 0xB44),
    (void*)(((char*)executeSurprise__8daE_YM_cFv) + 0x83C),
    (void*)(((char*)executeSurprise__8daE_YM_cFv) + 0xA88),
    (void*)(((char*)executeSurprise__8daE_YM_cFv) + 0xAEC),
};

/* 80815BA4-80815BD0 -00001 002C+00 1/1 0/0 0/0 .data            @7049 */
SECTION_DATA static void* lit_7049[11] = {
    (void*)(((char*)executeFly__8daE_YM_cFv) + 0x10C),
    (void*)(((char*)executeFly__8daE_YM_cFv) + 0x13C),
    (void*)(((char*)executeFly__8daE_YM_cFv) + 0x1EC),
    (void*)(((char*)executeFly__8daE_YM_cFv) + 0x228),
    (void*)(((char*)executeFly__8daE_YM_cFv) + 0x798),
    (void*)(((char*)executeFly__8daE_YM_cFv) + 0xAB0),
    (void*)(((char*)executeFly__8daE_YM_cFv) + 0x798),
    (void*)(((char*)executeFly__8daE_YM_cFv) + 0x9BC),
    (void*)(((char*)executeFly__8daE_YM_cFv) + 0x11DC),
    (void*)(((char*)executeFly__8daE_YM_cFv) + 0x11DC),
    (void*)(((char*)executeFly__8daE_YM_cFv) + 0xFCC),
};

/* 80815BD0-80815BDC 0000CC 000C+00 1/1 0/0 0/0 .data            YM_DIG_POS_Y$7355 */
SECTION_DATA static Vec YM_DIG_POS_Y = {-15.0f, -30.0f, -70.0f};

/* 80815BDC-80815C28 -00001 004C+00 1/1 0/0 0/0 .data            @8522 */
SECTION_DATA static void* lit_8522[19] = {
    (void*)(((char*)action__8daE_YM_cFv) + 0x124), (void*)(((char*)action__8daE_YM_cFv) + 0x130),
    (void*)(((char*)action__8daE_YM_cFv) + 0x13C), (void*)(((char*)action__8daE_YM_cFv) + 0x148),
    (void*)(((char*)action__8daE_YM_cFv) + 0x154), (void*)(((char*)action__8daE_YM_cFv) + 0x160),
    (void*)(((char*)action__8daE_YM_cFv) + 0x16C), (void*)(((char*)action__8daE_YM_cFv) + 0x178),
    (void*)(((char*)action__8daE_YM_cFv) + 0x184), (void*)(((char*)action__8daE_YM_cFv) + 0x194),
    (void*)(((char*)action__8daE_YM_cFv) + 0x1A4), (void*)(((char*)action__8daE_YM_cFv) + 0x1B0),
    (void*)(((char*)action__8daE_YM_cFv) + 0x1BC), (void*)(((char*)action__8daE_YM_cFv) + 0x1CC),
    (void*)(((char*)action__8daE_YM_cFv) + 0x1D8), (void*)(((char*)action__8daE_YM_cFv) + 0x1E4),
    (void*)(((char*)action__8daE_YM_cFv) + 0x1F4), (void*)(((char*)action__8daE_YM_cFv) + 0x200),
    (void*)(((char*)action__8daE_YM_cFv) + 0x20C),
};

/* 80815C28-80815C48 -00001 0020+00 1/1 0/0 0/0 .data            @9421 */
SECTION_DATA static void* lit_9421[8] = {
    (void*)(((char*)create__8daE_YM_cFv) + 0x40C), (void*)(((char*)create__8daE_YM_cFv) + 0x434),
    (void*)(((char*)create__8daE_YM_cFv) + 0x464), (void*)(((char*)create__8daE_YM_cFv) + 0x47C),
    (void*)(((char*)create__8daE_YM_cFv) + 0x494), (void*)(((char*)create__8daE_YM_cFv) + 0x524),
    (void*)(((char*)create__8daE_YM_cFv) + 0x5B4), (void*)(((char*)create__8daE_YM_cFv) + 0x5C4),
};

/* 80815C48-80815C68 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_YM_Method */
static actor_method_class l_daE_YM_Method = {
    (process_method_func)daE_YM_Create__FP8daE_YM_c,
    (process_method_func)daE_YM_Delete__FP8daE_YM_c,
    (process_method_func)daE_YM_Execute__FP8daE_YM_c,
    (process_method_func)daE_YM_IsDelete__FP8daE_YM_c,
    (process_method_func)daE_YM_Draw__FP8daE_YM_c,
};

/* 80815C68-80815C98 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_YM */
extern actor_process_profile_definition g_profile_E_YM = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_YM,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_YM_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  194,                    // mPriority
  &l_daE_YM_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80815C98-80815CA4 000194 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80815CA4-80815CB0 0001A0 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80815CB0-80815CBC 0001AC 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80815CBC-80815CC8 0001B8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80815CC8-80815CD4 0001C4 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80815CD4-80815CF8 0001D0 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_808154E4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_808154DC,
};

/* 80815CF8-80815D04 0001F4 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80815D04-80815D10 000200 000C+00 6/6 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80815D10-80815D1C 00020C 000C+00 2/2 0/0 0/0 .data            __vt__12daE_YM_HIO_c */
SECTION_DATA extern void* __vt__12daE_YM_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_YM_HIO_cFv,
};

/* 8080812C-80808184 0000EC 0058+00 1/1 0/0 0/0 .text            __ct__12daE_YM_HIO_cFv */
daE_YM_HIO_c::daE_YM_HIO_c() {
    field_0x4 = -1;
    mFlyMoveSpeed = 20.0f;
    mFlyAttackSpeed = 30.0f;
    mModelSize = 0.6f;
    mElectricInvincibilityTimeExtension = 3.0f;
    mMoveSpeed = 13.0f;
    mSurpriseDistance = 400.0f;
    mMoveRange = 300.0f;
}


/* 80808184-808081E0 000144 005C+00 3/3 0/0 0/0 .text            checkBck__8daE_YM_cFPCci */
BOOL daE_YM_c::checkBck(char const* i_arcName, int i_resNo) {
    return field_0x5b4->getAnm() == (J3DAnmTransform*)dComIfG_getObjectRes(i_arcName, i_resNo);
}

/* 808081E0-80808328 0001A0 0148+00 18/18 0/0 0/0 .text            bckSet__8daE_YM_cFiUcff */
void daE_YM_c::bckSet(int i_resID, u8 i_attribute, f32 i_morf, f32 i_speed) {
    int tm_res_id;

    if (mFlyType == true) {
        switch (i_resID) {
        case 6:
            tm_res_id = 8;
            break;
        case 15:
            tm_res_id = 9;
            break;
        case 16:
            i_speed = 2.0f;
            tm_res_id = 10;
            break;
        case 14:
            tm_res_id = 10;
            break;
        default:
            tm_res_id = 9;
        }

        field_0x5b4->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_TM", tm_res_id), i_attribute,
                            i_morf, i_speed, 0.0f, -1.0f);
    } else {
        field_0x5b4->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_YM", i_resID), i_attribute,
                            i_morf, i_speed, 0.0f, -1.0f);
    }
}

/* 80808328-808083CC 0002E8 00A4+00 4/4 0/0 0/0 .text            bckSetFly__8daE_YM_cFiUcff */
void daE_YM_c::bckSetFly(int i_resID, u8 i_attribute, f32 i_morf, f32 i_speed) {
    field_0x5b4->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_TM", i_resID), i_attribute,
                        i_morf, i_speed, 0.0f, -1.0f);
}

/* 808083CC-80808678 00038C 02AC+00 1/1 0/0 0/0 .text            draw__8daE_YM_cFv */
int daE_YM_c::draw() {
    if (field_0x71d) {
        return 1;
    }

    if (daPy_py_c::checkNowWolfEyeUp()) {
        cLib_addCalc2(&field_0x6d4, 255.0f, 1.0f, 30.0f);
    } else if (mAction == ACT_DOWN) {
        cLib_addCalc2(&field_0x6d4, 255.0f, 1.0f, 30.0f);
    } else {
        cLib_addCalc2(&field_0x6d4, 0.0f, 1.0f, 30.0f);
    }

    bool bvar = true;

    if (field_0x710 != 0) {
        if (!field_0x6d4) {
            return 1;
        }

        if (mIsHide && mAction != ACT_RAIL && mAction != ACT_BACK_RAIL) {
            bvar = false;
        }
    } else {
        field_0x710 = 1;
    }

    if (mFlyType == true) {
        J3DShape* shape_p =
            field_0x5b4->getModel()->getModelData()->getMaterialNodePointer(1)->getShape();

        if (shape_p != NULL) {
            if (field_0x6cc) {
                shape_p->show();
            } else {
                shape_p->hide();
            }
        }
    }

    J3DModel* model_p = field_0x5b4->getModel();
    g_env_light.settingTevStruct(6, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model_p, &tevStr);

    J3DModelData* modelData_p = model_p->getModelData();
    for (u16 i = 0; i < modelData_p->getMaterialNum(); i++) {
        modelData_p->getMaterialNodePointer(i)->getTevKColor(3)->a = field_0x6d4;
    }

    if (bvar) {
        if (field_0x6dc != -70.0f) {
            field_0x5b8->entry(model_p->getModelData());
            dComIfGd_setListDark();
            field_0x5b4->entryDL();
            dComIfGd_setList();
        }

        cXyz sp40;
        sp40.set(current.pos.x, current.pos.y + 100.0f, current.pos.z);

        field_0x69c = dComIfGd_setShadow(field_0x69c, 1, model_p, &sp40, 400.0f, 0.0f,
                                         current.pos.y, field_0x760.GetGroundH(), field_0x760.m_gnd,
                                         &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    }

    return 1;
}

/* 80808678-80808698 000638 0020+00 1/0 0/0 0/0 .text            daE_YM_Draw__FP8daE_YM_c */
static int daE_YM_Draw(daE_YM_c* i_this) {
    return i_this->draw();
}

/* ############################################################################################## */
/* 80815D28-80815D2C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80815D28[4];

/* 80815D38-80815D5C 000018 0024+00 18/18 0/0 0/0 .bss             l_HIO */
static daE_YM_HIO_c l_HIO;

/* 80815D5C-80815D60 00003C 0004+00 3/3 0/0 0/0 .bss             m_near_obj */
static fopAc_ac_c* m_near_obj;

/* 80815D60-80815D64 000040 0004+00 3/3 0/0 0/0 .bss             m_obj_dist */
static f32 m_obj_dist;

/* 80808698-80808768 000658 00D0+00 2/2 0/0 0/0 .text            s_obj_sub__FPvPv */
static void* s_obj_sub(void* param_0, void* param_1) {
    fopAc_ac_c* e_ym;
    fopAc_ac_c* near_obj;

    near_obj = (fopAc_ac_c*)param_0;
    e_ym = (fopAc_ac_c*)param_1;

    if (fopAcM_IsActor(near_obj) && fopAcM_GetName(near_obj) == PROC_Obj_Carry) {
        if (!fpcM_IsCreating(fopAcM_GetID(near_obj))) {
            f32 obj_dist = fopAcM_searchActorDistanceXZ(near_obj, e_ym);

            if (obj_dist < 100.0f && obj_dist < m_obj_dist &&
                fabsf(fopAcM_searchActorDistanceY(near_obj, e_ym)) < 30.0f)
            {
                m_near_obj = near_obj;
                m_obj_dist = obj_dist;
            }
        }
    }

    return 0;
}

/* 80808768-80808884 000728 011C+00 1/1 0/0 0/0 .text            setDigEffect__8daE_YM_cFv */
void daE_YM_c::setDigEffect() {
    cXyz sp1C(field_0x68c, field_0x68c, field_0x68c);
    cXyz sp28(current.pos);
    sp28.y += field_0x6dc;

    field_0xad8 = dComIfGp_particle_set(field_0xad8, 0x83A8, &sp28, &shape_angle, &sp1C);
    field_0xadc = dComIfGp_particle_set(field_0xadc, 0x83A9, &sp28, &shape_angle, &sp1C);
}

/* 80808884-808089DC 000844 0158+00 8/8 0/0 0/0 .text            setElecEffect1__8daE_YM_cFv */
void daE_YM_c::setElecEffect1() {
    f32 fVar3 = (field_0x68c * 10.0f) / 6.0f;
    cXyz cStack_2c(fVar3, fVar3, fVar3);
    MtxP iVar5;
    if (mFlyType == true) {
        iVar5 = field_0x5b4->getModel()->getAnmMtx(8);
    } else {
        iVar5 = field_0x5b4->getModel()->getAnmMtx(0);
    }

    cXyz cStack_38(iVar5[0][3], iVar5[1][3], iVar5[2][3]);
    field_0xad8 = dComIfGp_particle_set(field_0xad8, 0x8393, &cStack_38, &tevStr, &shape_angle, &cStack_2c,
                                        0xff, 0, -1, 0, 0, 0);
    field_0xadc = dComIfGp_particle_set(field_0xadc, 0x8394, &cStack_38, &tevStr, &shape_angle, &cStack_2c,
                                        0xff, 0, -1, 0, 0, 0);
}


/* 808089DC-80808B3C 00099C 0160+00 9/9 0/0 0/0 .text            setElecEffect2__8daE_YM_cFv */
void daE_YM_c::setElecEffect2() {
    f32 fVar3 = (field_0x68c * 10.0f) / 6.0f;
    cXyz cStack_2c(fVar3, fVar3, fVar3);
    MtxP iVar5;
    if (mFlyType == true) {
        iVar5 = field_0x5b4->getModel()->getAnmMtx(8);
    } else {
        iVar5 = field_0x5b4->getModel()->getAnmMtx(0);
    }
    cXyz cStack_38(iVar5[0][3], iVar5[1][3], iVar5[2][3]);
    setElecEffect1();
    field_0xae0 = dComIfGp_particle_set(field_0xae0, 0x8395, &cStack_38, &tevStr, &shape_angle, &cStack_2c,
                                        0xff, 0, -1, 0, 0, 0);
    field_0xae4 = dComIfGp_particle_set(field_0xae4, 0x8396, &cStack_38, &tevStr, &shape_angle, &cStack_2c,
                                        0xff, 0, -1, 0, 0, 0);
}


/* 80808B3C-80808E34 000AFC 02F8+00 1/1 0/0 0/0 .text            setFireEffect__8daE_YM_cFv */
void daE_YM_c::setFireEffect() {
    // NONMATCHING
}

/* 80808E34-80809000 000DF4 01CC+00 3/3 0/0 0/0 .text            checkWallCrash__8daE_YM_cFv */
bool daE_YM_c::checkWallCrash() {
    if (mType == 1 && (daPy_getPlayerActorClass()->checkFrontRollCrash() ||
                       daPy_getPlayerActorClass()->checkWolfAttackReverse()))
    {
        cXyz tmp = daPy_getPlayerActorClass()->current.pos - field_0x670;
        if (tmp.absXZ() < 600.0f) {
            if (mTagPosP != NULL) {
                setActionMode(ACT_FLY);
            } else {
                setActionMode(ACT_FALL);
            }

            return true;
        }
    }

    return false;
}


/* ############################################################################################## */
/* 808159F8-808159FC 000064 0004+00 0/1 0/0 0/0 .rodata          @4472 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4472 = 900.0f;
COMPILER_STRIP_GATE(0x808159F8, &lit_4472);
#pragma pop

/* 80809000-80809228 000FC0 0228+00 3/3 0/0 0/0 .text            checkWolfBark__8daE_YM_cFv */
void daE_YM_c::checkWolfBark() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808159FC-80815A00 000068 0004+00 0/3 0/0 0/0 .rodata          @4603 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4603 = 150.0f;
COMPILER_STRIP_GATE(0x808159FC, &lit_4603);
#pragma pop

/* 80809228-8080963C 0011E8 0414+00 1/1 0/0 0/0 .text            checkSurpriseLock__8daE_YM_cFv */
void daE_YM_c::checkSurpriseLock() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80815A00-80815A04 00006C 0004+00 1/9 0/0 0/0 .rodata          @4618 */
SECTION_RODATA static f32 const lit_4618 = 200.0f;
COMPILER_STRIP_GATE(0x80815A00, &lit_4618);

/* 8080963C-808096EC 0015FC 00B0+00 2/2 0/0 0/0 .text            checkRailSurprise__8daE_YM_cFv */
void daE_YM_c::checkRailSurprise() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80815A04-80815A08 000070 0004+00 0/10 0/0 0/0 .rodata          @4820 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4820 = 50.0f;
COMPILER_STRIP_GATE(0x80815A04, &lit_4820);
#pragma pop

/* 80815A08-80815A0C 000074 0004+00 0/1 0/0 0/0 .rodata          @4821 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4821 = 350.0f;
COMPILER_STRIP_GATE(0x80815A08, &lit_4821);
#pragma pop

/* 80815A0C-80815A10 000078 0004+00 0/1 0/0 0/0 .rodata          @4822 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4822 = 16.0f;
COMPILER_STRIP_GATE(0x80815A0C, &lit_4822);
#pragma pop

/* 808096EC-80809D6C 0016AC 0680+00 3/3 0/0 0/0 .text            checkSurpriseNear__8daE_YM_cFv */
void daE_YM_c::checkSurpriseNear() {
    // NONMATCHING
}

/* 80809D6C-80809D84 001D2C 0018+00 6/6 0/0 0/0 .text            setNormalCc__8daE_YM_cFv */
void daE_YM_c::setNormalCc() {
    mSphCc.SetCoSPrm(0x75);
    mSphCc.SetTgType(0xD8FBFDFF);
}

/* 80809D84-80809DA8 001D44 0024+00 7/7 0/0 0/0 .text            setAppear__8daE_YM_cFv */
void daE_YM_c::setAppear() {
    mIsHide = false;

    if (field_0x6a6 != 4) {
        mType = 0;
    }

    field_0x714 = 4;
}

/* ############################################################################################## */
/* 80815A10-80815A14 00007C 0004+00 0/1 0/0 0/0 .rodata          @4871 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4871 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80815A10, &lit_4871);
#pragma pop

/* 80815A14-80815A18 000080 0004+00 1/21 0/0 0/0 .rodata          @4872 */
SECTION_RODATA static f32 const lit_4872 = 5.0f;
COMPILER_STRIP_GATE(0x80815A14, &lit_4872);

/* 80815A18-80815A1C 000084 0004+00 0/3 0/0 0/0 .rodata          @4873 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4873 = 9.0f;
COMPILER_STRIP_GATE(0x80815A18, &lit_4873);
#pragma pop

/* 80809DA8-80809EF0 001D68 0148+00 8/8 0/0 0/0 .text            setMoveSound__8daE_YM_cFi */
void daE_YM_c::setMoveSound(int param_0) {
    // NONMATCHING
}

/* 80809EF0-80809F9C 001EB0 00AC+00 3/3 0/0 0/0 .text            setTurnSound__8daE_YM_cFv */
void daE_YM_c::setTurnSound() {
    // NONMATCHING
}

/* 80809F9C-80809FC4 001F5C 0028+00 26/26 0/0 0/0 .text            setActionMode__8daE_YM_cFi */
void daE_YM_c::setActionMode(int i_action) {
    mLastAction = mAction;
    mAction = i_action;
    mMode = 0;
    field_0x6f2 = 0;
    field_0x6f0 = 0;
    current.angle.y = shape_angle.y;
}

/* ############################################################################################## */
/* 80815A1C-80815A20 000088 0004+00 0/7 0/0 0/0 .rodata          @5021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5021 = -60.0f;
COMPILER_STRIP_GATE(0x80815A1C, &lit_5021);
#pragma pop

/* 80809FC4-8080A57C 001F84 05B8+00 1/1 0/0 0/0 .text            executeWait__8daE_YM_cFv */
void daE_YM_c::executeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80815A20-80815A24 00008C 0004+00 0/5 0/0 0/0 .rodata          @5268 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5268 = 1.5f;
COMPILER_STRIP_GATE(0x80815A20, &lit_5268);
#pragma pop

/* 80815A24-80815A28 000090 0004+00 0/2 0/0 0/0 .rodata          @5269 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5269 = 32768.0f;
COMPILER_STRIP_GATE(0x80815A24, &lit_5269);
#pragma pop

/* 80815A28-80815A2C 000094 0004+00 0/10 0/0 0/0 .rodata          @5270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5270 = 40.0f;
COMPILER_STRIP_GATE(0x80815A28, &lit_5270);
#pragma pop

/* 8080A57C-8080ACB4 00253C 0738+00 1/1 0/0 0/0 .text            executeMove__8daE_YM_cFv */
void daE_YM_c::executeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80815A2C-80815A30 000098 0004+00 0/2 0/0 0/0 .rodata          @5413 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5413 = 8.0f;
COMPILER_STRIP_GATE(0x80815A2C, &lit_5413);
#pragma pop

/* 80815A30-80815A34 00009C 0004+00 0/1 0/0 0/0 .rodata          @5414 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5414 = 8192.0f;
COMPILER_STRIP_GATE(0x80815A30, &lit_5414);
#pragma pop

/* 80815A34-80815A38 0000A0 0004+00 0/1 0/0 0/0 .rodata          @5415 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5415 = 45.0f;
COMPILER_STRIP_GATE(0x80815A34, &lit_5415);
#pragma pop

/* 80815A38-80815A3C 0000A4 0004+00 0/4 0/0 0/0 .rodata          @5416 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5416 = 500.0f;
COMPILER_STRIP_GATE(0x80815A38, &lit_5416);
#pragma pop

/* 80815A3C-80815A44 0000A8 0008+00 0/4 0/0 0/0 .rodata          @5418 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5418[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80815A3C, &lit_5418);
#pragma pop

/* 8080ACB4-8080B444 002C74 0790+00 1/1 0/0 0/0 .text            executeEscape__8daE_YM_cFv */
void daE_YM_c::executeEscape() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80815A44-80815A48 0000B0 0004+00 0/2 0/0 0/0 .rodata          @5644 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5644 = -5.0f;
COMPILER_STRIP_GATE(0x80815A44, &lit_5644);
#pragma pop

/* 80815A48-80815A4C 0000B4 0004+00 0/8 0/0 0/0 .rodata          @5645 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5645 = 15.0f;
COMPILER_STRIP_GATE(0x80815A48, &lit_5645);
#pragma pop

/* 80815A4C-80815A50 0000B8 0004+00 0/9 0/0 0/0 .rodata          @5646 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5646 = 60.0f;
COMPILER_STRIP_GATE(0x80815A4C, &lit_5646);
#pragma pop

/* 80815A50-80815A54 0000BC 0004+00 0/2 0/0 0/0 .rodata          @5647 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5647 = 1000.0f;
COMPILER_STRIP_GATE(0x80815A50, &lit_5647);
#pragma pop

/* 80815A54-80815A58 0000C0 0004+00 0/1 0/0 0/0 .rodata          @5648 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5648 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80815A54, &lit_5648);
#pragma pop

/* 80815AEC-80815AEC 000158 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80815AF6 = "R_SP108";
#pragma pop

/* 8080B444-8080BB34 003404 06F0+00 2/2 0/0 0/0 .text            executeDown__8daE_YM_cFv */
void daE_YM_c::executeDown() {
    // NONMATCHING
}

/* 8080BB34-8080BB7C 003AF4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 8080BB7C-8080BCFC 003B3C 0180+00 1/1 0/0 0/0 .text            damage_check__8daE_YM_cFv */
void daE_YM_c::damage_check() {
    if (field_0x6f4 != 0 || mAction == ACT_RIVER || mAction == ACT_DOWN) {
        return;
    }

    field_0x938.Move();

    if (mSphCc.ChkTgHit()) {
        mAtInfo.mpCollider = mSphCc.GetTgHitObj();

        if (field_0x700 == 0 || !mAtInfo.mpCollider->ChkAtType(0xD8000000)) {
            cc_at_check(this, &mAtInfo);

            if (mAtInfo.mpCollider->ChkAtType(0xD8000000)) {
                field_0x6f4 = 20;
            } else {
                field_0x6f4 = 10;
            }

            if (mAtInfo.mAttackPower <= 1) {
                field_0x6f4 = 10;
            }

            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG)) {
                if (mIsHide) {
                    setActionMode(ACT_WIND);
                }
            } else if (mType != 2) {
                field_0x5bc.startCreatureSound(Z2SE_EN_YM_DEATH, 0, -1);

                if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_10000000)) {
                    dComIfGp_setHitMark(3, this, &eyePos, NULL, NULL, 0);
                }

                setActionMode(ACT_DOWN);
                executeDown();
            }
        }
    }
}

/* ############################################################################################## */
/* 80815A58-80815A5C 0000C4 0004+00 0/5 0/0 0/0 .rodata          @5724 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5724 = 25.0f;
COMPILER_STRIP_GATE(0x80815A58, &lit_5724);
#pragma pop

/* 80815A5C-80815A60 0000C8 0004+00 0/2 0/0 0/0 .rodata          @5725 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5725 = 4096.0f;
COMPILER_STRIP_GATE(0x80815A5C, &lit_5725);
#pragma pop

/* 80815A60-80815A64 0000CC 0004+00 0/1 0/0 0/0 .rodata          @5726 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5726 = 2048.0f;
COMPILER_STRIP_GATE(0x80815A60, &lit_5726);
#pragma pop

/* 8080BCFC-8080C05C 003CBC 0360+00 1/1 0/0 0/0 .text            executeWind__8daE_YM_cFv */
void daE_YM_c::executeWind() {
    // NONMATCHING
}

/* 8080C05C-8080C1FC 00401C 01A0+00 1/1 0/0 0/0 .text            getSurpriseType__8daE_YM_cFv */
void daE_YM_c::getSurpriseType() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80815A64-80815A68 0000D0 0004+00 1/1 0/0 0/0 .rodata          @5774 */
SECTION_RODATA static f32 const lit_5774 = 12.0f;
COMPILER_STRIP_GATE(0x80815A64, &lit_5774);

/* 8080C1FC-8080C24C 0041BC 0050+00 2/2 0/0 0/0 .text            setSurpriseAway__8daE_YM_cFv */
void daE_YM_c::setSurpriseAway() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80815A68-80815A6C 0000D4 0004+00 0/1 0/0 0/0 .rodata          @5792 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5792 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80815A68, &lit_5792);
#pragma pop

/* 80815A6C-80815A70 0000D8 0004+00 0/2 0/0 0/0 .rodata          @5793 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5793 = 4000.0f;
COMPILER_STRIP_GATE(0x80815A6C, &lit_5793);
#pragma pop

/* 8080C24C-8080C374 00420C 0128+00 1/1 0/0 0/0 .text            setGoHomeType__8daE_YM_cFv */
void daE_YM_c::setGoHomeType() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80815A70-80815A74 0000DC 0004+00 0/2 0/0 0/0 .rodata          @6055 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6055 = -90.0f;
COMPILER_STRIP_GATE(0x80815A70, &lit_6055);
#pragma pop

/* 80815A74-80815A78 0000E0 0004+00 0/1 0/0 0/0 .rodata          @6056 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6056 = 28.0f;
COMPILER_STRIP_GATE(0x80815A74, &lit_6056);
#pragma pop

/* 80815A78-80815A7C 0000E4 0004+00 0/2 0/0 0/0 .rodata          @6057 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6057 = 17.0f;
COMPILER_STRIP_GATE(0x80815A78, &lit_6057);
#pragma pop

/* 8080C374-8080CEE0 004334 0B6C+00 2/1 0/0 0/0 .text            executeSurprise__8daE_YM_cFv */
void daE_YM_c::executeSurprise() {
    // NONMATCHING
}

/* 8080CEE0-8080CFC8 004EA0 00E8+00 1/1 0/0 0/0 .text            executeBack__8daE_YM_cFv */
void daE_YM_c::executeBack() {
    // NONMATCHING
}

/* 8080CFC8-8080D2C8 004F88 0300+00 1/1 0/0 0/0 .text            executeFall__8daE_YM_cFv */
void daE_YM_c::executeFall() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80815A7C-80815A80 0000E8 0004+00 0/0 0/0 0/0 .rodata          @6058 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6058 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80815A7C, &lit_6058);
#pragma pop

/* 80815A80-80815A84 0000EC 0004+00 0/0 0/0 0/0 .rodata          @6059 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6059 = 650.0f;
COMPILER_STRIP_GATE(0x80815A80, &lit_6059);
#pragma pop

/* 80815A84-80815A88 0000F0 0004+00 0/1 0/0 0/0 .rodata          @6060 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6060 = 90.0f;
COMPILER_STRIP_GATE(0x80815A84, &lit_6060);
#pragma pop

/* 80815A88-80815A8C 0000F4 0004+00 0/0 0/0 0/0 .rodata          @6061 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6061 = 75.0f;
COMPILER_STRIP_GATE(0x80815A88, &lit_6061);
#pragma pop

/* 80815A8C-80815A90 0000F8 0004+00 0/1 0/0 0/0 .rodata          @6062 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6062 = 35.0f;
COMPILER_STRIP_GATE(0x80815A8C, &lit_6062);
#pragma pop

/* 80815A90-80815A94 0000FC 0004+00 0/2 0/0 0/0 .rodata          @6244 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6244 = -100.0f;
COMPILER_STRIP_GATE(0x80815A90, &lit_6244);
#pragma pop

/* 80815A94-80815A98 000100 0004+00 0/1 0/0 0/0 .rodata          @6245 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6245 = 4.0f;
COMPILER_STRIP_GATE(0x80815A94, &lit_6245);
#pragma pop

/* 8080D2C8-8080D990 005288 06C8+00 1/1 0/0 0/0 .text            executeAttack__8daE_YM_cFv */
void daE_YM_c::executeAttack() {
    // NONMATCHING
}

/* 8080D990-8080DB58 005950 01C8+00 1/1 0/0 0/0 .text            checkAttackEnd__8daE_YM_cFv */
void daE_YM_c::checkAttackEnd() {
    // NONMATCHING
}

/* 8080DB58-8080DC5C 005B18 0104+00 2/2 0/0 0/0 .text            setAttackMotion__8daE_YM_cFv */
void daE_YM_c::setAttackMotion() {
    // NONMATCHING
}

/* 8080DC5C-8080E26C 005C1C 0610+00 1/1 0/0 0/0 .text            executeAttackWall__8daE_YM_cFv */
void daE_YM_c::executeAttackWall() {
    // NONMATCHING
}

/* 8080E26C-8080E49C 00622C 0230+00 1/1 0/0 0/0 .text            executeDefense__8daE_YM_cFv */
void daE_YM_c::executeDefense() {
    // NONMATCHING
}

/* 8080E49C-8080E630 00645C 0194+00 1/1 0/0 0/0 .text            checkFlyTerritory__8daE_YM_cFv */
void daE_YM_c::checkFlyTerritory() {
    // NONMATCHING
}

/* 8080E630-8080E6A0 0065F0 0070+00 1/1 0/0 0/0 .text            initFly__8daE_YM_cFv */
void daE_YM_c::initFly() {
    attention_info.distances[fopAc_attn_BATTLE_e] = 46;
    gravity = 0.0f;
    field_0x6e4 = 0;

    if (mTagPosP != NULL) {
        field_0x670 = mTagPos;
    } else {
        field_0x670 = home.pos;
    }

    mType = 3;
    shape_angle.x = 0;
}

/* ############################################################################################## */
/* 80815A98-80815A9C 000104 0004+00 0/2 0/0 0/0 .rodata          @7042 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7042 = 14.0f;
COMPILER_STRIP_GATE(0x80815A98, &lit_7042);
#pragma pop

/* 80815A9C-80815AA0 000108 0004+00 0/1 0/0 0/0 .rodata          @7043 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7043 = -10.0f;
COMPILER_STRIP_GATE(0x80815A9C, &lit_7043);
#pragma pop

/* 8080E6A0-8080F8C8 006660 1228+00 2/1 0/0 0/0 .text            executeFly__8daE_YM_cFv */
void daE_YM_c::executeFly() {
    // NONMATCHING
}

/* 8080F8C8-8080F92C 007888 0064+00 1/1 0/0 0/0 .text            setInclination__8daE_YM_cFv */
void daE_YM_c::setInclination() {
    s16 tan = cM_atan2s(speedF, speed.y) - 0x4000;
    if (tan < -6000) {
        tan = -6000;
    }

    if (tan > 6000) {
        tan = 6000;
    }

    cLib_chaseAngleS(&shape_angle.x, tan, 0x0180);
}

/* 8080F92C-80810084 0078EC 0758+00 1/1 0/0 0/0 .text            executeFlyAttack__8daE_YM_cFv */
void daE_YM_c::executeFlyAttack() {
    // NONMATCHING
}

/* 80810084-8081013C 008044 00B8+00 1/1 0/0 0/0 .text            setNextPathPoint__8daE_YM_cFv */
void daE_YM_c::setNextPathPoint() {
    // NONMATCHING
}

/* 8081013C-8081030C 0080FC 01D0+00 1/1 0/0 0/0 .text            checkRailDig__8daE_YM_cFv */
void daE_YM_c::checkRailDig() {
    // NONMATCHING
}

/* 8081030C-80810690 0082CC 0384+00 1/1 0/0 0/0 .text            executeRail__8daE_YM_cFv */
void daE_YM_c::executeRail() {
    // NONMATCHING
}

/* 80810690-80810DF8 008650 0768+00 1/1 0/0 0/0 .text            executeBackRail__8daE_YM_cFv */
void daE_YM_c::executeBackRail() {
    // NONMATCHING
}

/* 80810DF8-80810E64 008DB8 006C+00 1/1 0/0 0/0 .text            checkElectricStart__8daE_YM_cFv */
void daE_YM_c::checkElectricStart() {
    if (field_0x6a1 == 1) {
        if (mAction != ACT_WAIT && mAction != ACT_SURPRISE) {
            field_0x6c9 = 0;
            field_0x708 = 0;
        } else if (field_0x708 != 0) {
            field_0x708--;

            if (field_0x708 == 0) {
                field_0x6c9 = 1;
            }
        }
    } else {
        field_0x6c9 = 0;
        field_0x708 = 0;
    }
}

/* ############################################################################################## */
/* 80815AA0-80815AA4 00010C 0004+00 0/2 0/0 0/0 .rodata          @7044 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7044 = 70.0f;
COMPILER_STRIP_GATE(0x80815AA0, &lit_7044);
#pragma pop

/* 80815AA4-80815AA8 000110 0004+00 0/0 0/0 0/0 .rodata          @7045 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7045 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80815AA4, &lit_7045);
#pragma pop

/* 80815AA8-80815AAC 000114 0004+00 0/0 0/0 0/0 .rodata          @7046 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7046 = -3072.0f;
COMPILER_STRIP_GATE(0x80815AA8, &lit_7046);
#pragma pop

/* 80815AAC-80815AB0 000118 0004+00 0/0 0/0 0/0 .rodata          @7047 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7047 = 5120.0f;
COMPILER_STRIP_GATE(0x80815AAC, &lit_7047);
#pragma pop

/* 80815AB0-80815AB4 00011C 0004+00 0/1 0/0 0/0 .rodata          @7048 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7048 = -15.0f;
COMPILER_STRIP_GATE(0x80815AB0, &lit_7048);
#pragma pop

/* 80815AB4-80815AB8 000120 0004+00 0/1 0/0 0/0 .rodata          @7556 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7556 = 36.0f;
COMPILER_STRIP_GATE(0x80815AB4, &lit_7556);
#pragma pop

/* 80810E64-8081105C 008E24 01F8+00 1/1 0/0 0/0 .text            executeElectric__8daE_YM_cFv */
void daE_YM_c::executeElectric() {
    // NONMATCHING
}

/* 8081105C-80811740 00901C 06E4+00 1/1 0/0 0/0 .text            executeSwitch__8daE_YM_cFv */
void daE_YM_c::executeSwitch() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80815AB8-80815ABC 000124 0004+00 0/1 0/0 0/0 .rodata          @7719 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7719 = 512.0f;
COMPILER_STRIP_GATE(0x80815AB8, &lit_7719);
#pragma pop

/* 80811740-80811838 009700 00F8+00 1/1 0/0 0/0 .text            initFireFly__8daE_YM_cFi */
void daE_YM_c::initFireFly(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80815ABC-80815AC0 000128 0004+00 0/1 0/0 0/0 .rodata          @7942 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7942 = 550.0f;
COMPILER_STRIP_GATE(0x80815ABC, &lit_7942);
#pragma pop

/* 80815AC0-80815AC4 00012C 0004+00 0/1 0/0 0/0 .rodata          @7943 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7943 = 250.0f;
COMPILER_STRIP_GATE(0x80815AC0, &lit_7943);
#pragma pop

/* 80811838-808120B0 0097F8 0878+00 1/1 0/0 0/0 .text            executeFire__8daE_YM_cFv */
void daE_YM_c::executeFire() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80815AC4-80815AC8 000130 0004+00 0/2 0/0 0/0 .rodata          @8040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8040 = 2000.0f;
COMPILER_STRIP_GATE(0x80815AC4, &lit_8040);
#pragma pop

/* 808120B0-808123C4 00A070 0314+00 1/1 0/0 0/0 .text            setRiverAttention__8daE_YM_cFv */
void daE_YM_c::setRiverAttention() {
    // NONMATCHING
}

/* 808123C4-808123D0 00A384 000C+00 0/0 0/0 1/1 .text            setLockByCargo__8daE_YM_cFv */
void daE_YM_c::setLockByCargo() {
    field_0x6f2 = 90;
}

/* ############################################################################################## */
/* 80815AC8-80815ACC 000134 0004+00 0/1 0/0 0/0 .rodata          @8350 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8350 = 1500.0f;
COMPILER_STRIP_GATE(0x80815AC8, &lit_8350);
#pragma pop

/* 80815ACC-80815AD0 000138 0004+00 0/1 0/0 0/0 .rodata          @8351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8351 = 12.0f / 5.0f;
COMPILER_STRIP_GATE(0x80815ACC, &lit_8351);
#pragma pop

/* 808123D0-80812F0C 00A390 0B3C+00 1/1 0/0 0/0 .text            executeRiver__8daE_YM_cFv */
void daE_YM_c::executeRiver() {
    // NONMATCHING
}

/* 80812F0C-80812FCC 00AECC 00C0+00 1/1 0/0 0/0 .text            s_ym_sub__FPvPv */
static void* s_ym_sub(void* param_0, void* param_1) {
    daE_YM_c* actor_a = (daE_YM_c*)param_0;
    daE_YM_c* actor_b = (daE_YM_c*)param_1;

    if (fopAcM_IsActor(actor_a) && fopAcM_GetName(actor_a) == PROC_E_YM) {
        if (!fpcM_IsCreating(fopAcM_GetID(actor_a)) && actor_a != actor_b &&
            actor_a->current.pos == actor_b->current.pos)
        {
            if (actor_b->getFriendFlag() & 1) {
                actor_a->setFriendFlag(0x84);
            } else {
                actor_a->setFriendFlag(0x82);
            }

            actor_b->setFriendFlag(0x81);
        }
    }

    return 0;
}

/* 80812FCC-8081300C 00AF8C 0040+00 1/1 0/0 0/0 .text            checkFrinedSamePos__8daE_YM_cFv */
void daE_YM_c::checkFrinedSamePos() {
    if (mFriendFlag == 0) {
        setFriendFlag(0x80);
        fpcM_Search(s_ym_sub, this);
    }
}

/* 8081300C-80813528 00AFCC 051C+00 2/1 0/0 0/0 .text            action__8daE_YM_cFv */
void daE_YM_c::action() {
    // NONMATCHING
}

/* 80813528-808135B0 00B4E8 0088+00 1/1 0/0 0/0 .text            mtx_set__8daE_YM_cFv */
void daE_YM_c::mtx_set() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + field_0x6dc, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(field_0x668);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(field_0x68c, field_0x68c, field_0x68c);

    field_0x5b4->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
    field_0x5b4->modelCalc();
}

/* ############################################################################################## */
/* 80815AD0-80815AD4 00013C 0004+00 0/1 0/0 0/0 .rodata          @8621 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8621 = -30.0f;
COMPILER_STRIP_GATE(0x80815AD0, &lit_8621);
#pragma pop

/* 80815AD4-80815AD8 000140 0004+00 0/1 0/0 0/0 .rodata          @8622 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8622 = -20.0f;
COMPILER_STRIP_GATE(0x80815AD4, &lit_8622);
#pragma pop

/* 808135B0-808138AC 00B570 02FC+00 1/1 0/0 0/0 .text            cc_set__8daE_YM_cFv */
void daE_YM_c::cc_set() {
    // NONMATCHING
}

/* 808138AC-80813A10 00B86C 0164+00 1/1 0/0 0/0 .text            execute__8daE_YM_cFv */
int daE_YM_c::execute() {
    if (field_0x71d) {
        return 1;
    }

    if (field_0x6f0 != 0) {
        field_0x6f0--;
    }

    if (field_0x6f2 != 0) {
        field_0x6f2--;
    }

    if (field_0x6f4 != 0) {
        field_0x6f4--;
    }

    if (field_0x6f6 != 0) {
        field_0x6f6--;
    }

    if (field_0x6f8 != 0) {
        field_0x6f8--;
    }

    if (field_0x6fc != 0) {
        field_0x6fc--;
    }

    if (field_0x6fe != 0) {
        field_0x6fe--;
    }

    if (field_0x700 != 0) {
        field_0x700--;
    }

    if (field_0x6fa != 0) {
        field_0x6fa--;
    }

    if (field_0x704 != 0) {
        field_0x704--;
    }

    if (field_0x70a != 0) {
        field_0x70a--;
    }

    if (field_0x70c != 0) {
        field_0x70c--;
    }

    if (field_0x70e != 0) {
        field_0x70e--;
    }

    checkElectricStart();
    action();
    mtx_set();
    cc_set();
    return 1;
}

/* 80813A10-80813A30 00B9D0 0020+00 2/1 0/0 0/0 .text            daE_YM_Execute__FP8daE_YM_c */
static int daE_YM_Execute(daE_YM_c* i_this) {
    return i_this->execute();
}

/* 80813A30-80813A38 00B9F0 0008+00 1/0 0/0 0/0 .text            daE_YM_IsDelete__FP8daE_YM_c */
static int daE_YM_IsDelete(daE_YM_c* i_this) {
    return 1;
}

/* 80813A38-80813AD0 00B9F8 0098+00 1/1 0/0 0/0 .text            _delete__8daE_YM_cFv */
int daE_YM_c::_delete() {
    if (mFlyType == true) {
        dComIfG_resDelete(&mPhase, "E_TM");
    } else {
        dComIfG_resDelete(&mPhase, "E_YM");
    }

    if (field_0xaf4) {
        data_80815D28[0] = 0;
    }

    if (heap != NULL) {
        field_0x5bc.deleteObject();
    }

    return 1;
}

/* 80813AD0-80813AF0 00BA90 0020+00 1/0 0/0 0/0 .text            daE_YM_Delete__FP8daE_YM_c */
static int daE_YM_Delete(daE_YM_c* i_this) {
    return i_this->_delete();
}

/* 80813AF0-80813E38 00BAB0 0348+00 1/1 0/0 0/0 .text            CreateHeap__8daE_YM_cFv */
int daE_YM_c::CreateHeap() {
    // NONMATCHING
}

/* 80813E38-80813E3C 00BDF8 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80813E3C-80813E84 00BDFC 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80813E84-80813EA4 00BE44 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    return static_cast<daE_YM_c*>(i_this)->CreateHeap();
}

/* ############################################################################################## */
/* 80815AD8-80815ADC 000144 0004+00 0/2 0/0 0/0 .rodata          @8964 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8964 = -200.0f;
COMPILER_STRIP_GATE(0x80815AD8, &lit_8964);
#pragma pop

/* 80815ADC-80815AE0 000148 0004+00 0/1 0/0 0/0 .rodata          @8965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8965 = 80.0f;
COMPILER_STRIP_GATE(0x80815ADC, &lit_8965);
#pragma pop

/* 80813EA4-808143A0 00BE64 04FC+00 2/2 0/0 0/0 .text            checkBeforeBg__8daE_YM_cFs */
void daE_YM_c::checkBeforeBg(s16 param_0) {
    // NONMATCHING
}

/* 808143A0-808144D8 00C360 0138+00 1/1 0/0 0/0 .text            checkBeforeGround__8daE_YM_cFv */
void daE_YM_c::checkBeforeGround() {
    // NONMATCHING
}

/* 808144D8-80814758 00C498 0280+00 1/1 0/0 0/0 .text            checkInitialWall__8daE_YM_cFv */
void daE_YM_c::checkInitialWall() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80815AE0-80815AE4 00014C 0004+00 0/1 0/0 0/0 .rodata          @9187 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9187 = -50.0f;
COMPILER_STRIP_GATE(0x80815AE0, &lit_9187);
#pragma pop

/* 80814758-80814AF0 00C718 0398+00 3/3 0/0 0/0 .text            checkWall__8daE_YM_cFv */
void daE_YM_c::checkWall() {
    // NONMATCHING
}

/* 80814AF0-80814BA4 00CAB0 00B4+00 1/1 0/0 0/0 .text            setHideType__8daE_YM_cFv */
void daE_YM_c::setHideType() {
    mIsHide = true;
    mSphCc.SetCoSPrm(0x145);
    mSphCc.SetTgType(0x10000);

    m_near_obj = NULL;
    m_obj_dist = 100.0f;

    fpcM_Search(s_obj_sub, this);

    if (m_near_obj != NULL) {
        cXyz obj_pos(m_near_obj->current.pos);

        current.pos.x = obj_pos.x;
        current.pos.z = obj_pos.z;
        field_0x6a6 = 1;
    } else {
        field_0x6a6 = 3;
    }
}

/* ############################################################################################## */
/* 80815AE4-80815AEC 000150 0008+00 0/1 0/0 0/0 .rodata          @9420 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_9420[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80815AE4, &lit_9420);
#pragma pop

/* 80815AEC-80815AEC 000158 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80815AFE = "E_ym";
#pragma pop

/* 80814BA4-80815224 00CB64 0680+00 2/1 0/0 0/0 .text            create__8daE_YM_cFv */
// NONMATCHING - literals / small issue
int daE_YM_c::create() {
    fopAcM_SetupActor(this, daE_YM_c);

    mType = fopAcM_GetParam(this);
    if (mType == 0xFF) {
        mType = 0;
    }

    mSwitchBit = fopAcM_GetParam(this) >> 0x18;

    u8 prm2 = fopAcM_GetParam(this) >> 0x10;
    if (prm2 == 0xFF) {
        prm2 = 0;
    }

    field_0x6e0 = prm2 * 100.0f;

    u8 prm1 = fopAcM_GetParam(this) >> 0x8;
    u8 tmp0 = current.angle.z >> 8;

    mTagNo = (u8)current.angle.z;
    field_0x6a1 = 1;

    if ((current.angle.x & 3) != 0) {
        field_0x6a1 = 0;
    }

    if ((current.angle.x & 12) != 0) {
        field_0x6cb = 1;
    }

    field_0x6a3 = (u8)(current.angle.x >> 8);

    if (mSwitchBit != 0xFF && dComIfGs_isSwitch(mSwitchBit, fopAcM_GetRoomNo(this))) {
        return cPhs_ERROR_e;
    }

    if ((mTagNo != 0 && mTagNo != 0xFF) || (mType == 6 || mType == 3 || mType == 7)) {
        mFlyType = true;
    } else {
        mFlyType = false;
    }

    int phase;
    if (mFlyType == true) {
        phase = dComIfG_resLoad(&mPhase, "E_TM");
    } else {
        phase = dComIfG_resLoad(&mPhase, "E_YM");
    }

    if (phase == cPhs_COMPLEATE_e) {
        current.angle.z = 0;
        current.angle.x = 0;
        shape_angle.z = 0;
        shape_angle.x = 0;

        if (!fopAcM_entrySolidHeap(this, (heapCallbackFunc)useHeapInit, 0x28B0)) {
            return cPhs_ERROR_e;
        }

        if (!data_80815D28[0]) {
            field_0xaf4 = 1;
            data_80815D28[0] = true;
            l_HIO.field_0x4 = -1;
        }

        field_0x714 = 4;
        attention_info.distances[fopAc_attn_BATTLE_e] = 58;
        fopAcM_SetMtx(this, field_0x5b4->getModel()->getBaseTRMtx());
        fopAcM_SetMin(this, -200.0f, -100.0f, -200.0f);
        fopAcM_SetMax(this, 200.0f, 100.0f, 200.0f);

        field_0x760.Set(&current.pos, &old.pos, this, 1, &field_0x720, &speed, NULL, NULL);
        field_0x760.OnLineCheck();
        field_0x720.SetWall(30.0f, 60.0f);

        health = 10;
        field_0x560 = 10;

        field_0x938.Init(100, 0, this);
        mSphCc.Set(E_YM_n::cc_sph_src);
        mSphCc.SetStts(&field_0x938);

        field_0x5bc.init(&current.pos, &eyePos, 3, 1);
        field_0x5bc.setEnemyName("E_ym");
        mAtInfo.mpSound = &field_0x5bc;
        mAtInfo.mPowerType = 1;
        field_0x68c = 0.6f;

        switch (mType) {
        case 0:
            field_0x670 = current.pos;
            setActionMode(ACT_WAIT);
            break;
        case 1:
            checkInitialWall();
            field_0x670 = current.pos;
            setActionMode(ACT_WAIT);
            break;
        case 2:
            setActionMode(ACT_WAIT);
            mMode = 100;
            break;
        case 3:
            setActionMode(ACT_FLY);
            mMode = 2;
            break;
        case 4:
            if (tmp0 != 0xFF) {
                mpPath = dPath_GetRoomPath(tmp0, fopAcM_GetRoomNo(this));

                if (mpPath != NULL) {
                    attention_info.distances[fopAc_attn_ETC_e] = 31;
                    field_0x6a6 = 4;
                    field_0x670 = current.pos;
                    setActionMode(ACT_WAIT);
                    break;
                }
            }

            mType = 0;
            field_0x670 = current.pos;
            setActionMode(ACT_WAIT);
            break;
        case 5:
            if (field_0x6a3 == 0xFF) {
                mType = 0;
                field_0x670 = current.pos;
                setActionMode(ACT_WAIT);
            } else {
                if (tmp0 != 0xFF) {
                    mpPath = dPath_GetRoomPath(tmp0, fopAcM_GetRoomNo(this));
                }

                setActionMode(ACT_SWITCH);
                if (dComIfGs_isSwitch(field_0x6a3, fopAcM_GetRoomNo(this))) {
                    mMode = 10;
                }
            }
            break;
        case 6:
            setActionMode(ACT_FIRE);
            break;
        case 7:
            if (tmp0 != 0xFF) {
                mpPath = dPath_GetRoomPath(tmp0, fopAcM_GetRoomNo(this));
            }

            if (prm1 != 0xFF) {
                field_0x6b0 = dPath_GetRoomPath(prm1, fopAcM_GetRoomNo(this));
            }

            if (mpPath != NULL || field_0x6b0 != NULL) {
                field_0x68c = 1.5f;
                setActionMode(ACT_RIVER);
                break;
            }

            return cPhs_ERROR_e;
        }

        field_0x6cc = 1;
        if (mFlyType == true && mType != 3) {
            field_0x6cc = 0;
        }

        daE_YM_Execute(this);
    }

    return phase;
}

/* 80815224-8081526C 00D1E4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8081526C-808152B4 00D22C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 808152B4-80815310 00D274 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80815310-80815380 00D2D0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80815380-808153F0 00D340 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 808153F0-80815410 00D3B0 0020+00 1/0 0/0 0/0 .text            daE_YM_Create__FP8daE_YM_c */
static int daE_YM_Create(daE_YM_c* i_this) {
    return i_this->create();
}
