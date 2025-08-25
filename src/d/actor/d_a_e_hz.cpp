/**
 * @file d_a_e_hz.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_hz.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"
#include "d/actor/d_a_obj_carry.h"
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" void __ct__12daE_HZ_HIO_cFv();
extern "C" void setBck__8daE_HZ_cFiUcff();
extern "C" void checkBck__8daE_HZ_cFi();
extern "C" void draw__8daE_HZ_cFv();
extern "C" static void daE_HZ_Draw__FP8daE_HZ_c();
extern "C" static void s_obj_sub__FPvPv();
extern "C" void setActionMode__8daE_HZ_cFi();
extern "C" void checkHideStart__8daE_HZ_cFv();
extern "C" void checkAttackStart__8daE_HZ_cFv();
extern "C" void checkArrowCharge__8daE_HZ_cFv();
extern "C" void setTgSetBit__8daE_HZ_cFi();
extern "C" void isWait__8daE_HZ_cFv();
extern "C" void checkFall__8daE_HZ_cFv();
extern "C" void setCloseSmokeEffect__8daE_HZ_cFv();
extern "C" void executeWait__8daE_HZ_cFv();
extern "C" void getHideSpeed__8daE_HZ_cFv();
extern "C" void executeHide__8daE_HZ_cFv();
extern "C" void executeAttack__8daE_HZ_cFv();
extern "C" void initBackWalk__8daE_HZ_cFv();
extern "C" void executeAway__8daE_HZ_cFv();
extern "C" void setWindEnd__8daE_HZ_cFv();
extern "C" void executeWind__8daE_HZ_cFv();
extern "C" void executeChance__8daE_HZ_cFv();
extern "C" void initRollDamage__8daE_HZ_cFv();
extern "C" void doRollDamage__8daE_HZ_cFv();
extern "C" void executeDamage__8daE_HZ_cFv();
extern "C" void executeDeath__8daE_HZ_cFv();
extern "C" void setWindChanceEnd__8daE_HZ_cFv();
extern "C" void executeWindChance__8daE_HZ_cFv();
extern "C" void executeWindWalk__8daE_HZ_cFv();
extern "C" void setWaterEffect__8daE_HZ_cFv();
extern "C" void executeWaterDeath__8daE_HZ_cFv();
extern "C" void executeDeathWait__8daE_HZ_cFv();
extern "C" void damage_check__8daE_HZ_cFv();
extern "C" void checkWaterSurface__8daE_HZ_cFv();
extern "C" void action__8daE_HZ_cFv();
extern "C" void mtx_set__8daE_HZ_cFv();
extern "C" void cc_set__8daE_HZ_cFv();
extern "C" void execute__8daE_HZ_cFv();
extern "C" static void daE_HZ_Execute__FP8daE_HZ_c();
extern "C" static bool daE_HZ_IsDelete__FP8daE_HZ_c();
extern "C" void _delete__8daE_HZ_cFv();
extern "C" static void daE_HZ_Delete__FP8daE_HZ_c();
extern "C" void ctrlJoint__8daE_HZ_cFP8J3DJointP8J3DModel();
extern "C" void JointCallBack__8daE_HZ_cFP8J3DJointi();
extern "C" void CreateHeap__8daE_HZ_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void setInitPos__8daE_HZ_cFv();
extern "C" void create__8daE_HZ_cFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__11J3DLightObjFv();
extern "C" static void daE_HZ_Create__FP8daE_HZ_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_HZ_HIO_cFv();
extern "C" void __sinit_d_a_e_hz_cpp();
extern "C" static void func_806F03EC();
extern "C" static void func_806F03F4();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_hz__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcM_IsCreating__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void GetGroundCode__4dBgSFRC13cBgS_PolyInfo();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_pl_cut_bit_get__Fv();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void getThrowBoomerangActor__9daPy_py_cFv();
extern "C" void GetForceLockOnActor__9dCamera_cFv();
extern "C" void ForceLockOn__9dCamera_cFP10fopAc_ac_c();
extern "C" void ForceLockOff__9dCamera_cFP10fopAc_ac_c();
extern "C" void dCam_getBody__Fv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_tevstr_init__FP12dKy_tevstr_cScUc();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" bool __eq__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcPosXZ__FP4cXyzRC4cXyzfff();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __as__12J3DLightInfoFRC12J3DLightInfo();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void mode_init_drop__12daObjCarry_cFUc();
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 806F088C-806F0890 00002C 0004+00 0/2 0/0 0/0 .rodata          @3987 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3987 = 700.0f;
COMPILER_STRIP_GATE(0x806F088C, &lit_3987);
#pragma pop

/* 806F0890-806F0894 000030 0004+00 0/1 0/0 0/0 .rodata          @3988 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3988 = 1200.0f;
COMPILER_STRIP_GATE(0x806F0890, &lit_3988);
#pragma pop

/* 806F0894-806F0898 000034 0004+00 0/8 0/0 0/0 .rodata          @3989 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3989 = 20.0f;
COMPILER_STRIP_GATE(0x806F0894, &lit_3989);
#pragma pop

/* 806F0898-806F089C 000038 0004+00 0/1 0/0 0/0 .rodata          @3990 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3990 = 160.0f;
COMPILER_STRIP_GATE(0x806F0898, &lit_3990);
#pragma pop

/* 806F089C-806F08A0 00003C 0004+00 0/1 0/0 0/0 .rodata          @3991 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3991 = 5000.0f;
COMPILER_STRIP_GATE(0x806F089C, &lit_3991);
#pragma pop

/* 806F08A0-806F08A4 000040 0004+00 0/3 0/0 0/0 .rodata          @3992 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3992 = 400.0f;
COMPILER_STRIP_GATE(0x806F08A0, &lit_3992);
#pragma pop

/* 806F08A4-806F08A8 000044 0004+00 0/4 0/0 0/0 .rodata          @3993 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3993 = 15.0f;
COMPILER_STRIP_GATE(0x806F08A4, &lit_3993);
#pragma pop

/* 806F08A8-806F08AC 000048 0004+00 0/1 0/0 0/0 .rodata          @3994 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3994 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x806F08A8, &lit_3994);
#pragma pop

/* 806F08AC-806F08B0 00004C 0004+00 0/1 0/0 0/0 .rodata          @3995 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3995 = 7.0f;
COMPILER_STRIP_GATE(0x806F08AC, &lit_3995);
#pragma pop

/* 806F08B0-806F08B4 000050 0004+00 0/7 0/0 0/0 .rodata          @3996 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3996 = 50.0f;
COMPILER_STRIP_GATE(0x806F08B0, &lit_3996);
#pragma pop

/* 806F09AC-806F09B0 000038 0004+00 1/1 0/0 0/0 .data            d_HZ_JUMP_EFFECT_ID$4653 */
SECTION_DATA static u8 d_HZ_JUMP_EFFECT_ID[4] = {
    0x82,
    0xE0,
    0x82,
    0xE1,
};

/* 806F09B0-806F09B8 00003C 0008+00 1/1 0/0 0/0 .data            w_eff_id$5588 */
SECTION_DATA static u8 w_eff_id[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 806F09B8-806F09E8 -00001 0030+00 1/1 0/0 0/0 .data            @5940 */
SECTION_DATA static void* lit_5940[12] = {
    (void*)(((char*)action__8daE_HZ_cFv) + 0xA0),  (void*)(((char*)action__8daE_HZ_cFv) + 0xAC),
    (void*)(((char*)action__8daE_HZ_cFv) + 0xC0),  (void*)(((char*)action__8daE_HZ_cFv) + 0xCC),
    (void*)(((char*)action__8daE_HZ_cFv) + 0xD8),  (void*)(((char*)action__8daE_HZ_cFv) + 0xE4),
    (void*)(((char*)action__8daE_HZ_cFv) + 0xF0),  (void*)(((char*)action__8daE_HZ_cFv) + 0x104),
    (void*)(((char*)action__8daE_HZ_cFv) + 0x110), (void*)(((char*)action__8daE_HZ_cFv) + 0x11C),
    (void*)(((char*)action__8daE_HZ_cFv) + 0x128), (void*)(((char*)action__8daE_HZ_cFv) + 0x13C),
};

/* 806F09E8-806F0A28 000074 0040+00 1/1 0/0 0/0 .data            cc_sph_src$6246 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x10040, 0x3}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 806F0A28-806F0A68 0000B4 0040+00 1/1 0/0 0/0 .data            cc_sph_src2$6247 */
static dCcD_SrcSph cc_sph_src2 = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0x0}, {0xd8fafdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 806F0A68-806F0A88 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_HZ_Method */
static actor_method_class l_daE_HZ_Method = {
    (process_method_func)daE_HZ_Create__FP8daE_HZ_c,
    (process_method_func)daE_HZ_Delete__FP8daE_HZ_c,
    (process_method_func)daE_HZ_Execute__FP8daE_HZ_c,
    (process_method_func)daE_HZ_IsDelete__FP8daE_HZ_c,
    (process_method_func)daE_HZ_Draw__FP8daE_HZ_c,
};

/* 806F0A88-806F0AB8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_HZ */
extern actor_process_profile_definition g_profile_E_HZ = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_HZ,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_HZ_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  199,                    // mPriority
  &l_daE_HZ_Method,       // sub_method
  0x00040000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 806F0AB8-806F0AC4 000144 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 806F0AC4-806F0AD0 000150 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806F0AD0-806F0ADC 00015C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806F0ADC-806F0AE8 000168 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806F0AE8-806F0AF4 000174 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806F0AF4-806F0B18 000180 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806F03F4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806F03EC,
};

/* 806F0B18-806F0B24 0001A4 000C+00 2/2 0/0 0/0 .data            __vt__12daE_HZ_HIO_c */
SECTION_DATA extern void* __vt__12daE_HZ_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_HZ_HIO_cFv,
};

/* 806EA60C-806EA690 0000EC 0084+00 1/1 0/0 0/0 .text            __ct__12daE_HZ_HIO_cFv */
daE_HZ_HIO_c::daE_HZ_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F08B4-806F08B8 000054 0004+00 1/1 0/0 0/0 .rodata          @4010 */
SECTION_RODATA static f32 const lit_4010 = -1.0f;
COMPILER_STRIP_GATE(0x806F08B4, &lit_4010);

/* 806F095C-806F095C 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806F095C = "E_HZ";
#pragma pop

/* 806EA690-806EA734 000170 00A4+00 12/12 0/0 0/0 .text            setBck__8daE_HZ_cFiUcff */
void daE_HZ_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* 806EA734-806EA790 000214 005C+00 5/5 0/0 0/0 .text            checkBck__8daE_HZ_cFi */
void daE_HZ_c::checkBck(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F08B8-806F08BC 000058 0004+00 0/1 0/0 0/0 .rodata          @4064 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4064 = 800.0f;
COMPILER_STRIP_GATE(0x806F08B8, &lit_4064);
#pragma pop

/* 806EA790-806EA998 000270 0208+00 1/1 0/0 0/0 .text            draw__8daE_HZ_cFv */
void daE_HZ_c::draw() {
    // NONMATCHING
}

/* 806EA998-806EA9B8 000478 0020+00 1/0 0/0 0/0 .text            daE_HZ_Draw__FP8daE_HZ_c */
static void daE_HZ_Draw(daE_HZ_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F08BC-806F08C0 00005C 0004+00 0/6 0/0 0/0 .rodata          @4115 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4115 = 500.0f;
COMPILER_STRIP_GATE(0x806F08BC, &lit_4115);
#pragma pop

/* 806F0B70-806F0B7C 000048 000C+00 1/1 0/0 0/0 .bss             @3982 */
static u8 lit_3982[12];

/* 806F0B7C-806F0BB8 000054 003C+00 8/9 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[60];

/* 806F0BB8-806F0BBC 000090 0004+00 0/3 0/0 0/0 .bss             m_near_bomb */
#pragma push
#pragma force_active on
static u8 m_near_bomb[4];
#pragma pop

/* 806F0BBC-806F0BC0 000094 0004+00 0/3 0/0 0/0 .bss             m_near_carry */
#pragma push
#pragma force_active on
static u8 m_near_carry[4];
#pragma pop

/* 806F0BC0-806F0BC4 000098 0004+00 0/3 0/0 0/0 .bss             m_near_weapon */
#pragma push
#pragma force_active on
static u8 m_near_weapon[4];
#pragma pop

/* 806EA9B8-806EAADC 000498 0124+00 2/2 0/0 0/0 .text            s_obj_sub__FPvPv */
static s32 s_obj_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 806EAADC-806EAB68 0005BC 008C+00 16/16 0/0 0/0 .text            setActionMode__8daE_HZ_cFi */
void daE_HZ_c::setActionMode(int param_0) {
    // NONMATCHING
}

/* 806EAB68-806EAEDC 000648 0374+00 3/3 0/0 0/0 .text            checkHideStart__8daE_HZ_cFv */
void daE_HZ_c::checkHideStart() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F08C0-806F08C4 000060 0004+00 0/1 0/0 0/0 .rodata          @4262 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4262 = 110.0f;
COMPILER_STRIP_GATE(0x806F08C0, &lit_4262);
#pragma pop

/* 806F08C4-806F08C8 000064 0004+00 2/6 0/0 0/0 .rodata          @4263 */
SECTION_RODATA static f32 const lit_4263 = 2.0f;
COMPILER_STRIP_GATE(0x806F08C4, &lit_4263);

/* 806F08C8-806F08CC 000068 0004+00 0/8 0/0 0/0 .rodata          @4264 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4264 = 10.0f;
COMPILER_STRIP_GATE(0x806F08C8, &lit_4264);
#pragma pop

/* 806EAEDC-806EB05C 0009BC 0180+00 1/1 0/0 0/0 .text            checkAttackStart__8daE_HZ_cFv */
void daE_HZ_c::checkAttackStart() {
    // NONMATCHING
}

/* 806EB05C-806EB0A4 000B3C 0048+00 1/1 0/0 0/0 .text            checkArrowCharge__8daE_HZ_cFv */
void daE_HZ_c::checkArrowCharge() {
    // NONMATCHING
}

/* 806EB0A4-806EB0FC 000B84 0058+00 11/11 0/0 0/0 .text            setTgSetBit__8daE_HZ_cFi */
void daE_HZ_c::setTgSetBit(int param_0) {
    // NONMATCHING
}

/* 806EB0FC-806EB13C 000BDC 0040+00 0/0 0/0 1/1 .text            isWait__8daE_HZ_cFv */
bool daE_HZ_c::isWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F08CC-806F08D0 00006C 0004+00 0/5 0/0 0/0 .rodata          @4377 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4377 = 300.0f;
COMPILER_STRIP_GATE(0x806F08CC, &lit_4377);
#pragma pop

/* 806F08D0-806F08D4 000070 0004+00 2/3 0/0 0/0 .rodata          @4378 */
SECTION_RODATA static f32 const lit_4378 = -1000000000.0f;
COMPILER_STRIP_GATE(0x806F08D0, &lit_4378);

/* 806EB13C-806EB2E8 000C1C 01AC+00 1/1 0/0 0/0 .text            checkFall__8daE_HZ_cFv */
void daE_HZ_c::checkFall() {
    // NONMATCHING
}

/* 806EB2E8-806EB3EC 000DC8 0104+00 3/3 0/0 0/0 .text            setCloseSmokeEffect__8daE_HZ_cFv */
void daE_HZ_c::setCloseSmokeEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F08D4-806F08D8 000074 0004+00 1/4 0/0 0/0 .rodata          @4505 */
SECTION_RODATA static f32 const lit_4505 = 30.0f;
COMPILER_STRIP_GATE(0x806F08D4, &lit_4505);

/* 806F08D8-806F08DC 000078 0004+00 0/8 0/0 0/0 .rodata          @4506 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4506 = 5.0f;
COMPILER_STRIP_GATE(0x806F08D8, &lit_4506);
#pragma pop

/* 806F08DC-806F08E0 00007C 0004+00 0/3 0/0 0/0 .rodata          @4507 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4507 = 1.5f;
COMPILER_STRIP_GATE(0x806F08DC, &lit_4507);
#pragma pop

/* 806EB3EC-806EB7B0 000ECC 03C4+00 1/1 0/0 0/0 .text            executeWait__8daE_HZ_cFv */
void daE_HZ_c::executeWait() {
    // NONMATCHING
}

/* 806EB7B0-806EB818 001290 0068+00 1/1 0/0 0/0 .text            getHideSpeed__8daE_HZ_cFv */
void daE_HZ_c::getHideSpeed() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F08E0-806F08E4 000080 0004+00 0/8 0/0 0/0 .rodata          @4641 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4641 = 3.0f;
COMPILER_STRIP_GATE(0x806F08E0, &lit_4641);
#pragma pop

/* 806F08E4-806F08E8 000084 0004+00 0/4 0/0 0/0 .rodata          @4642 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4642 = 35.0f;
COMPILER_STRIP_GATE(0x806F08E4, &lit_4642);
#pragma pop

/* 806F08E8-806F08EC 000088 0004+00 0/1 0/0 0/0 .rodata          @4643 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4643 = 73.0f;
COMPILER_STRIP_GATE(0x806F08E8, &lit_4643);
#pragma pop

/* 806EB818-806EBD44 0012F8 052C+00 1/1 0/0 0/0 .text            executeHide__8daE_HZ_cFv */
void daE_HZ_c::executeHide() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F08EC-806F08F0 00008C 0004+00 0/1 0/0 0/0 .rodata          @4751 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4751 = 8.0f;
COMPILER_STRIP_GATE(0x806F08EC, &lit_4751);
#pragma pop

/* 806F08F0-806F08F4 000090 0004+00 0/2 0/0 0/0 .rodata          @4752 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4752 = 38.0f;
COMPILER_STRIP_GATE(0x806F08F0, &lit_4752);
#pragma pop

/* 806F08F4-806F08F8 000094 0004+00 0/2 0/0 0/0 .rodata          @4753 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4753 = 60.0f;
COMPILER_STRIP_GATE(0x806F08F4, &lit_4753);
#pragma pop

/* 806EBD44-806EC068 001824 0324+00 1/1 0/0 0/0 .text            executeAttack__8daE_HZ_cFv */
void daE_HZ_c::executeAttack() {
    // NONMATCHING
}

/* 806EC068-806EC348 001B48 02E0+00 2/2 0/0 0/0 .text            initBackWalk__8daE_HZ_cFv */
void daE_HZ_c::initBackWalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F08F8-806F08FC 000098 0004+00 0/1 0/0 0/0 .rodata          @4997 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4997 = 4.0f;
COMPILER_STRIP_GATE(0x806F08F8, &lit_4997);
#pragma pop

/* 806F08FC-806F0900 00009C 0004+00 0/5 0/0 0/0 .rodata          @4998 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4998 = -5.0f;
COMPILER_STRIP_GATE(0x806F08FC, &lit_4998);
#pragma pop

/* 806F0900-806F0904 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4999 = -20.0f;
COMPILER_STRIP_GATE(0x806F0900, &lit_4999);
#pragma pop

/* 806F0904-806F0908 0000A4 0004+00 0/2 0/0 0/0 .rodata          @5000 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5000 = 23.0f;
COMPILER_STRIP_GATE(0x806F0904, &lit_5000);
#pragma pop

/* 806F0908-806F090C 0000A8 0004+00 0/3 0/0 0/0 .rodata          @5001 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5001 = 14.0f;
COMPILER_STRIP_GATE(0x806F0908, &lit_5001);
#pragma pop

/* 806F090C-806F0910 0000AC 0004+00 0/2 0/0 0/0 .rodata          @5002 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5002 = 28.0f;
COMPILER_STRIP_GATE(0x806F090C, &lit_5002);
#pragma pop

/* 806EC348-806ECAEC 001E28 07A4+00 1/1 0/0 0/0 .text            executeAway__8daE_HZ_cFv */
void daE_HZ_c::executeAway() {
    // NONMATCHING
}

/* 806ECAEC-806ECB64 0025CC 0078+00 1/1 0/0 0/0 .text            setWindEnd__8daE_HZ_cFv */
void daE_HZ_c::setWindEnd() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F0910-806F0914 0000B0 0004+00 0/1 0/0 0/0 .rodata          @5308 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5308 = 1000.0f;
COMPILER_STRIP_GATE(0x806F0910, &lit_5308);
#pragma pop

/* 806F0914-806F0918 0000B4 0004+00 0/1 0/0 0/0 .rodata          @5309 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5309 = 6.0f;
COMPILER_STRIP_GATE(0x806F0914, &lit_5309);
#pragma pop

/* 806F0918-806F091C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @5310 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5310 = 8192.0f;
COMPILER_STRIP_GATE(0x806F0918, &lit_5310);
#pragma pop

/* 806F091C-806F0920 0000BC 0004+00 0/1 0/0 0/0 .rodata          @5311 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5311 = 512.0f;
COMPILER_STRIP_GATE(0x806F091C, &lit_5311);
#pragma pop

/* 806F0920-806F0924 0000C0 0004+00 0/2 0/0 0/0 .rodata          @5312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5312 = 13.0f;
COMPILER_STRIP_GATE(0x806F0920, &lit_5312);
#pragma pop

/* 806F0924-806F0928 0000C4 0004+00 0/1 0/0 0/0 .rodata          @5313 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5313 = 25.0f;
COMPILER_STRIP_GATE(0x806F0924, &lit_5313);
#pragma pop

/* 806F0928-806F0930 0000C8 0008+00 0/2 0/0 0/0 .rodata          @5315 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5315[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806F0928, &lit_5315);
#pragma pop

/* 806ECB64-806ED5B0 002644 0A4C+00 1/1 0/0 0/0 .text            executeWind__8daE_HZ_cFv */
void daE_HZ_c::executeWind() {
    // NONMATCHING
}

/* 806ED5B0-806ED6C8 003090 0118+00 1/1 0/0 0/0 .text            executeChance__8daE_HZ_cFv */
void daE_HZ_c::executeChance() {
    // NONMATCHING
}

/* 806ED6C8-806ED7A8 0031A8 00E0+00 2/2 0/0 0/0 .text            initRollDamage__8daE_HZ_cFv */
void daE_HZ_c::initRollDamage() {
    // NONMATCHING
}

/* 806ED7A8-806ED8A4 003288 00FC+00 2/2 0/0 0/0 .text            doRollDamage__8daE_HZ_cFv */
void daE_HZ_c::doRollDamage() {
    // NONMATCHING
}

/* 806ED8A4-806EDAA8 003384 0204+00 1/1 0/0 0/0 .text            executeDamage__8daE_HZ_cFv */
void daE_HZ_c::executeDamage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F0930-806F0934 0000D0 0004+00 0/1 0/0 0/0 .rodata          @5482 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5482 = 41.5f;
COMPILER_STRIP_GATE(0x806F0930, &lit_5482);
#pragma pop

/* 806F0934-806F0938 0000D4 0004+00 0/1 0/0 0/0 .rodata          @5483 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5483 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x806F0934, &lit_5483);
#pragma pop

/* 806EDAA8-806EDDCC 003588 0324+00 1/1 0/0 0/0 .text            executeDeath__8daE_HZ_cFv */
void daE_HZ_c::executeDeath() {
    // NONMATCHING
}

/* 806EDDCC-806EDDE8 0038AC 001C+00 1/1 0/0 0/0 .text            setWindChanceEnd__8daE_HZ_cFv */
void daE_HZ_c::setWindChanceEnd() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F0938-806F093C 0000D8 0004+00 0/1 0/0 0/0 .rodata          @5546 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5546 = 6144.0f;
COMPILER_STRIP_GATE(0x806F0938, &lit_5546);
#pragma pop

/* 806EDDE8-806EE120 0038C8 0338+00 1/1 0/0 0/0 .text            executeWindChance__8daE_HZ_cFv */
void daE_HZ_c::executeWindChance() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F093C-806F0940 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5580 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5580 = 24.0f;
COMPILER_STRIP_GATE(0x806F093C, &lit_5580);
#pragma pop

/* 806EE120-806EE2A4 003C00 0184+00 1/1 0/0 0/0 .text            executeWindWalk__8daE_HZ_cFv */
void daE_HZ_c::executeWindWalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F0BC4-806F0BD4 00009C 000C+04 0/1 0/0 0/0 .bss             @5585 */
#pragma push
#pragma force_active on
static u8 lit_5585[12 + 4 /* padding */];
#pragma pop

/* 806F0BD4-806F0BE0 0000AC 000C+00 0/1 0/0 0/0 .bss             sc$5584 */
#pragma push
#pragma force_active on
static u8 sc[12];
#pragma pop

/* 806EE2A4-806EE3BC 003D84 0118+00 1/1 0/0 0/0 .text            setWaterEffect__8daE_HZ_cFv */
void daE_HZ_c::setWaterEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F0940-806F0944 0000E0 0004+00 0/1 0/0 0/0 .rodata          @5703 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5703 = 36.0f;
COMPILER_STRIP_GATE(0x806F0940, &lit_5703);
#pragma pop

/* 806F0944-806F0948 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5704 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5704 = 57.0f;
COMPILER_STRIP_GATE(0x806F0944, &lit_5704);
#pragma pop

/* 806F0948-806F094C 0000E8 0004+00 0/2 0/0 0/0 .rodata          @5705 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5705 = 150.0f;
COMPILER_STRIP_GATE(0x806F0948, &lit_5705);
#pragma pop

/* 806EE3BC-806EE820 003E9C 0464+00 1/1 0/0 0/0 .text            executeWaterDeath__8daE_HZ_cFv */
void daE_HZ_c::executeWaterDeath() {
    // NONMATCHING
}

/* 806EE820-806EE978 004300 0158+00 1/1 0/0 0/0 .text            executeDeathWait__8daE_HZ_cFv */
void daE_HZ_c::executeDeathWait() {
    // NONMATCHING
}

/* 806EE978-806EEE10 004458 0498+00 1/1 0/0 0/0 .text            damage_check__8daE_HZ_cFv */
void daE_HZ_c::damage_check() {
    // NONMATCHING
}

/* 806EEE10-806EEEE4 0048F0 00D4+00 1/1 0/0 0/0 .text            checkWaterSurface__8daE_HZ_cFv */
void daE_HZ_c::checkWaterSurface() {
    // NONMATCHING
}

/* 806EEEE4-806EF144 0049C4 0260+00 2/1 0/0 0/0 .text            action__8daE_HZ_cFv */
void daE_HZ_c::action() {
    // NONMATCHING
}

/* 806EF144-806EF2C8 004C24 0184+00 1/1 0/0 0/0 .text            mtx_set__8daE_HZ_cFv */
void daE_HZ_c::mtx_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F094C-806F0950 0000EC 0004+00 1/1 0/0 0/0 .rodata          @6030 */
SECTION_RODATA static f32 const lit_6030 = 80.0f;
COMPILER_STRIP_GATE(0x806F094C, &lit_6030);

/* 806EF2C8-806EF46C 004DA8 01A4+00 1/1 0/0 0/0 .text            cc_set__8daE_HZ_cFv */
void daE_HZ_c::cc_set() {
    // NONMATCHING
}

/* 806EF46C-806EF68C 004F4C 0220+00 1/1 0/0 0/0 .text            execute__8daE_HZ_cFv */
void daE_HZ_c::execute() {
    // NONMATCHING
}

/* 806EF68C-806EF6AC 00516C 0020+00 2/1 0/0 0/0 .text            daE_HZ_Execute__FP8daE_HZ_c */
static void daE_HZ_Execute(daE_HZ_c* param_0) {
    // NONMATCHING
}

/* 806EF6AC-806EF6B4 00518C 0008+00 1/0 0/0 0/0 .text            daE_HZ_IsDelete__FP8daE_HZ_c */
static bool daE_HZ_IsDelete(daE_HZ_c* param_0) {
    return true;
}

/* 806EF6B4-806EF750 005194 009C+00 1/1 0/0 0/0 .text            _delete__8daE_HZ_cFv */
void daE_HZ_c::_delete() {
    // NONMATCHING
}

/* 806EF750-806EF770 005230 0020+00 1/0 0/0 0/0 .text            daE_HZ_Delete__FP8daE_HZ_c */
static void daE_HZ_Delete(daE_HZ_c* param_0) {
    // NONMATCHING
}

/* 806EF770-806EF880 005250 0110+00 1/1 0/0 0/0 .text ctrlJoint__8daE_HZ_cFP8J3DJointP8J3DModel */
void daE_HZ_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 806EF880-806EF8CC 005360 004C+00 1/1 0/0 0/0 .text JointCallBack__8daE_HZ_cFP8J3DJointi */
void daE_HZ_c::JointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F095C-806F095C 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806F0961 = "E_hzp";
#pragma pop

/* 806EF8CC-806EFB34 0053AC 0268+00 1/1 0/0 0/0 .text            CreateHeap__8daE_HZ_cFv */
void daE_HZ_c::CreateHeap() {
    // NONMATCHING
}

/* 806EFB34-806EFB54 005614 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 806EFB54-806EFC18 005634 00C4+00 1/1 0/0 0/0 .text            setInitPos__8daE_HZ_cFv */
void daE_HZ_c::setInitPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F0950-806F0954 0000F0 0004+00 0/1 0/0 0/0 .rodata          @6337 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6337 = -200.0f;
COMPILER_STRIP_GATE(0x806F0950, &lit_6337);
#pragma pop

/* 806F0954-806F0958 0000F4 0004+00 0/1 0/0 0/0 .rodata          @6338 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6338 = 200.0f;
COMPILER_STRIP_GATE(0x806F0954, &lit_6338);
#pragma pop

/* 806F0958-806F095C 0000F8 0004+00 0/1 0/0 0/0 .rodata          @6339 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6339 = -60.0f;
COMPILER_STRIP_GATE(0x806F0958, &lit_6339);
#pragma pop

/* 806F095C-806F095C 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806F0967 = "E_hzp2";
SECTION_DEAD static char const* const stringBase_806F096E = "E_hz";
#pragma pop

/* 806EFC18-806EFFAC 0056F8 0394+00 1/1 0/0 0/0 .text            create__8daE_HZ_cFv */
void daE_HZ_c::create() {
    // NONMATCHING
}

/* 806EFFAC-806F0078 005A8C 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 806F0078-806F00FC 005B58 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 806F00FC-806F0144 005BDC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 806F0144-806F018C 005C24 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 806F018C-806F01E8 005C6C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 806F01E8-806F0258 005CC8 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 806F0258-806F02C8 005D38 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 806F02C8-806F0300 005DA8 0038+00 1/1 0/0 0/0 .text            __ct__11J3DLightObjFv */
// J3DLightObj::J3DLightObj() {
extern "C" void __ct__11J3DLightObjFv() {
    // NONMATCHING
}

/* 806F0300-806F0320 005DE0 0020+00 1/0 0/0 0/0 .text            daE_HZ_Create__FP8daE_HZ_c */
static void daE_HZ_Create(daE_HZ_c* param_0) {
    // NONMATCHING
}

/* 806F0320-806F0368 005E00 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 806F0368-806F03B0 005E48 0048+00 2/1 0/0 0/0 .text            __dt__12daE_HZ_HIO_cFv */
daE_HZ_HIO_c::~daE_HZ_HIO_c() {
    // NONMATCHING
}

/* 806F03B0-806F03EC 005E90 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_hz_cpp */
void __sinit_d_a_e_hz_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806F03B0, __sinit_d_a_e_hz_cpp);
#pragma pop

/* 806F03EC-806F03F4 005ECC 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_806F03EC() {
    // NONMATCHING
}

/* 806F03F4-806F03FC 005ED4 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_806F03F4() {
    // NONMATCHING
}

/* 806F0810-806F084C 0062F0 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F0BE0-806F0BE4 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_806F0BE0[4];
#pragma pop

/* 806F0BE4-806F0BE8 0000BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_806F0BE4[4];
#pragma pop

/* 806F0BE8-806F0BEC 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_806F0BE8[4];
#pragma pop

/* 806F0BEC-806F0BF0 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_806F0BEC[4];
#pragma pop

/* 806F0BF0-806F0BF4 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806F0BF0[4];
#pragma pop

/* 806F0BF4-806F0BF8 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806F0BF4[4];
#pragma pop

/* 806F0BF8-806F0BFC 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_806F0BF8[4];
#pragma pop

/* 806F0BFC-806F0C00 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_806F0BFC[4];
#pragma pop

/* 806F0C00-806F0C04 0000D8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_806F0C00[4];
#pragma pop

/* 806F0C04-806F0C08 0000DC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_806F0C04[4];
#pragma pop

/* 806F0C08-806F0C0C 0000E0 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_806F0C08[4];
#pragma pop

/* 806F0C0C-806F0C10 0000E4 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_806F0C0C[4];
#pragma pop

/* 806F0C10-806F0C14 0000E8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_806F0C10[4];
#pragma pop

/* 806F0C14-806F0C18 0000EC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806F0C14[4];
#pragma pop

/* 806F0C18-806F0C1C 0000F0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_806F0C18[4];
#pragma pop

/* 806F0C1C-806F0C20 0000F4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_806F0C1C[4];
#pragma pop

/* 806F0C20-806F0C24 0000F8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_806F0C20[4];
#pragma pop

/* 806F0C24-806F0C28 0000FC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_806F0C24[4];
#pragma pop

/* 806F0C28-806F0C2C 000100 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_806F0C28[4];
#pragma pop

/* 806F0C2C-806F0C30 000104 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_806F0C2C[4];
#pragma pop

/* 806F0C30-806F0C34 000108 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_806F0C30[4];
#pragma pop

/* 806F0C34-806F0C38 00010C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806F0C34[4];
#pragma pop

/* 806F0C38-806F0C3C 000110 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806F0C38[4];
#pragma pop

/* 806F0C3C-806F0C40 000114 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806F0C3C[4];
#pragma pop

/* 806F0C40-806F0C44 000118 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_806F0C40[4];
#pragma pop

/* 806F095C-806F095C 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
