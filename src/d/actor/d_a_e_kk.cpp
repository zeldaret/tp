/**
 * @file d_a_e_kk.cpp
 * 
*/

#include "d/actor/d_a_e_kk.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__12daE_KK_HIO_cFv();
extern "C" void ctrlJoint__8daE_KK_cFP8J3DJointP8J3DModel();
extern "C" void JointCallBack__8daE_KK_cFP8J3DJointi();
extern "C" void draw__8daE_KK_cFv();
extern "C" static void daE_KK_Draw__FP8daE_KK_c();
extern "C" void setBck__8daE_KK_cFiUcff();
extern "C" void setWeaponBck__8daE_KK_cFiUcff();
extern "C" void mCutTypeCheck__8daE_KK_cFi();
extern "C" void setActionMode__8daE_KK_cFii();
extern "C" void damage_check__8daE_KK_cFv();
extern "C" void nextActionCheck__8daE_KK_cFv();
extern "C" void way_gake_check__8daE_KK_cFv();
extern "C" void mDeadEffSet__8daE_KK_cFR4cXyz();
extern "C" void executeWait__8daE_KK_cFv();
extern "C" void executeIcicleWait__8daE_KK_cFv();
extern "C" void executeWalk__8daE_KK_cFv();
extern "C" void executeSpearThrow__8daE_KK_cFv();
extern "C" void executeBackWalk__8daE_KK_cFv();
extern "C" void executeYoroke__8daE_KK_cFv();
extern "C" void executeGuard__8daE_KK_cFv();
extern "C" void executeDamage__8daE_KK_cFv();
extern "C" void executeAttack__8daE_KK_cFv();
extern "C" void executeDead__8daE_KK_cFv();
extern "C" void executeWeaponMove__8daE_KK_cFv();
extern "C" void action__8daE_KK_cFv();
extern "C" void mtx_set__8daE_KK_cFv();
extern "C" void weapon_mtx_set__8daE_KK_cFv();
extern "C" void cc_set__8daE_KK_cFv();
extern "C" void execute__8daE_KK_cFv();
extern "C" static void daE_KK_Execute__FP8daE_KK_c();
extern "C" static bool daE_KK_IsDelete__FP8daE_KK_c();
extern "C" void _delete__8daE_KK_cFv();
extern "C" static void daE_KK_Delete__FP8daE_KK_c();
extern "C" void CreateHeap__8daE_KK_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_KK_cFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__4cXyzFv();
extern "C" static void daE_KK_Create__FP8daE_KK_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_KK_HIO_cFv();
extern "C" void __sinit_d_a_e_kk_cpp();
extern "C" static void func_806FF174();
extern "C" static void func_806FF17C();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_kk__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void checkItemGet__FUci();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void atan2sX_Z__4cXyzCFv();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" extern u8 pauseTimer__9dScnPly_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 806FF5E8-806FF5EC 000000 0004+00 21/21 0/0 0/0 .rodata          @3792 */
SECTION_RODATA static f32 const lit_3792 = 100.0f;
COMPILER_STRIP_GATE(0x806FF5E8, &lit_3792);

/* 806FF5EC-806FF5F0 000004 0004+00 2/17 0/0 0/0 .rodata          @3793 */
SECTION_RODATA static u8 const lit_3793[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x806FF5EC, &lit_3793);

/* 806FF5F0-806FF5F8 000008 0004+04 2/17 0/0 0/0 .rodata          @3794 */
SECTION_RODATA static f32 const lit_3794[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806FF5F0, &lit_3794);

/* 806FF5F8-806FF600 000010 0008+00 0/1 0/0 0/0 .rodata          @3795 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3795[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806FF5F8, &lit_3795);
#pragma pop

/* 806FF600-806FF608 000018 0008+00 0/1 0/0 0/0 .rodata          @3796 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3796[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806FF600, &lit_3796);
#pragma pop

/* 806FF608-806FF610 000020 0008+00 0/1 0/0 0/0 .rodata          @3797 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3797[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806FF608, &lit_3797);
#pragma pop

/* 806FF610-806FF614 000028 0004+00 0/1 0/0 0/0 .rodata          @3798 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3798 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x806FF610, &lit_3798);
#pragma pop

/* 806FF614-806FF618 00002C 0004+00 0/1 0/0 0/0 .rodata          @3813 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3813 = 1500.0f;
COMPILER_STRIP_GATE(0x806FF614, &lit_3813);
#pragma pop

/* 806FF618-806FF61C 000030 0004+00 0/1 0/0 0/0 .rodata          @3814 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3814 = 900.0f;
COMPILER_STRIP_GATE(0x806FF618, &lit_3814);
#pragma pop

/* 806FF61C-806FF620 000034 0004+00 0/2 0/0 0/0 .rodata          @3815 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3815 = 1000.0f;
COMPILER_STRIP_GATE(0x806FF61C, &lit_3815);
#pragma pop

/* 806FF6C4-806FF6D0 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 806FF6D0-806FF6E4 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 806FF6E4-806FF6EC 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3671 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 806FF6EC-806FF6F4 000028 0008+00 0/1 0/0 0/0 .data            e_env$3672 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 806FF6F4-806FF6FC 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3680 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_id[6 + 2 /* padding */] = {
    0x02,
    0x9D,
    0x02,
    0x9E,
    0x02,
    0x9F,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 806FF6FC-806FF740 000038 0044+00 1/1 0/0 0/0 .data            cc_kk_src__22@unnamed@d_a_e_kk_cpp@
 */
SECTION_DATA static u8 data_806FF6FC[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0xD8, 0xFB, 0xF9, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x75,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x14, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 806FF740-806FF780 00007C 0040+00 1/1 0/0 0/0 .data cc_kk_at_src__22@unnamed@d_a_e_kk_cpp@ */
SECTION_DATA static u8 data_806FF740[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 806FF780-806FF7AC -00001 002C+00 1/1 0/0 0/0 .data            @5172 */
SECTION_DATA static void* lit_5172[11] = {
    (void*)(((char*)action__8daE_KK_cFv) + 0x4C), (void*)(((char*)action__8daE_KK_cFv) + 0x58),
    (void*)(((char*)action__8daE_KK_cFv) + 0x64), (void*)(((char*)action__8daE_KK_cFv) + 0x70),
    (void*)(((char*)action__8daE_KK_cFv) + 0x80), (void*)(((char*)action__8daE_KK_cFv) + 0x8C),
    (void*)(((char*)action__8daE_KK_cFv) + 0x98), (void*)(((char*)action__8daE_KK_cFv) + 0xA8),
    (void*)(((char*)action__8daE_KK_cFv) + 0xB4), (void*)(((char*)action__8daE_KK_cFv) + 0xD0),
    (void*)(((char*)action__8daE_KK_cFv) + 0xC4),
};

/* 806FF7AC-806FF7CC -00001 0020+00 1/0 0/0 0/0 .data            l_daE_KK_Method */
static actor_method_class l_daE_KK_Method = {
    (process_method_func)daE_KK_Create__FP8daE_KK_c,
    (process_method_func)daE_KK_Delete__FP8daE_KK_c,
    (process_method_func)daE_KK_Execute__FP8daE_KK_c,
    (process_method_func)daE_KK_IsDelete__FP8daE_KK_c,
    (process_method_func)daE_KK_Draw__FP8daE_KK_c,
};

/* 806FF7CC-806FF7FC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_KK */
extern actor_process_profile_definition g_profile_E_KK = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_KK,              // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daE_KK_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  171,                    // mPriority
  &l_daE_KK_Method,       // sub_method
  0x00040120,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 806FF7FC-806FF808 000138 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 806FF808-806FF814 000144 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806FF814-806FF820 000150 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806FF820-806FF82C 00015C 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806FF82C-806FF838 000168 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 806FF838-806FF844 000174 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806FF844-806FF868 000180 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806FF17C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806FF174,
};

/* 806FF868-806FF874 0001A4 000C+00 2/2 0/0 0/0 .data            __vt__12daE_KK_HIO_c */
SECTION_DATA extern void* __vt__12daE_KK_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_KK_HIO_cFv,
};

/* 806FA70C-806FA75C 0000EC 0050+00 1/1 0/0 0/0 .text            __ct__12daE_KK_HIO_cFv */
daE_KK_HIO_c::daE_KK_HIO_c() {
    // NONMATCHING
}

/* 806FA75C-806FA7FC 00013C 00A0+00 1/1 0/0 0/0 .text ctrlJoint__8daE_KK_cFP8J3DJointP8J3DModel */
void daE_KK_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 806FA7FC-806FA848 0001DC 004C+00 1/1 0/0 0/0 .text JointCallBack__8daE_KK_cFP8J3DJointi */
void daE_KK_c::JointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FF620-806FF624 000038 0004+00 0/4 0/0 0/0 .rodata          @3920 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3920 = 10.0f;
COMPILER_STRIP_GATE(0x806FF620, &lit_3920);
#pragma pop

/* 806FF624-806FF628 00003C 0004+00 0/2 0/0 0/0 .rodata          @3921 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3921 = 2000.0f;
COMPILER_STRIP_GATE(0x806FF624, &lit_3921);
#pragma pop

/* 806FA848-806FAA48 000228 0200+00 1/1 0/0 0/0 .text            draw__8daE_KK_cFv */
void daE_KK_c::draw() {
    // NONMATCHING
}

/* 806FAA48-806FAA68 000428 0020+00 1/0 0/0 0/0 .text            daE_KK_Draw__FP8daE_KK_c */
static void daE_KK_Draw(daE_KK_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FF628-806FF62C 000040 0004+00 2/5 0/0 0/0 .rodata          @3931 */
SECTION_RODATA static f32 const lit_3931 = -1.0f;
COMPILER_STRIP_GATE(0x806FF628, &lit_3931);

/* 806FF6B8-806FF6B8 0000D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806FF6B8 = "E_KK";
#pragma pop

/* 806FAA68-806FAB14 000448 00AC+00 10/10 0/0 0/0 .text            setBck__8daE_KK_cFiUcff */
void daE_KK_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* 806FAB14-806FABC0 0004F4 00AC+00 5/5 0/0 0/0 .text            setWeaponBck__8daE_KK_cFiUcff */
void daE_KK_c::setWeaponBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* 806FABC0-806FAC80 0005A0 00C0+00 1/1 0/0 0/0 .text            mCutTypeCheck__8daE_KK_cFi */
void daE_KK_c::mCutTypeCheck(int param_0) {
    // NONMATCHING
}

/* 806FAC80-806FAC8C 000660 000C+00 7/7 0/0 0/0 .text            setActionMode__8daE_KK_cFii */
void daE_KK_c::setActionMode(int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FF62C-806FF630 000044 0004+00 0/2 0/0 0/0 .rodata          @4140 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4140 = -70.0f;
COMPILER_STRIP_GATE(0x806FF62C, &lit_4140);
#pragma pop

/* 806FF880-806FF884 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_806FF880[4];

/* 806FF884-806FF890 00000C 000C+00 1/1 0/0 0/0 .bss             @3808 */
static u8 lit_3808[12];

/* 806FF890-806FF8AC 000018 001C+00 13/13 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[28];

/* 806FAC8C-806FB2EC 00066C 0660+00 1/1 0/0 0/0 .text            damage_check__8daE_KK_cFv */
void daE_KK_c::damage_check() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FF630-806FF634 000048 0004+00 1/2 0/0 0/0 .rodata          @4202 */
SECTION_RODATA static f32 const lit_4202 = 200.0f;
COMPILER_STRIP_GATE(0x806FF630, &lit_4202);

/* 806FF634-806FF638 00004C 0004+00 1/3 0/0 0/0 .rodata          @4203 */
SECTION_RODATA static f32 const lit_4203 = 50.0f;
COMPILER_STRIP_GATE(0x806FF634, &lit_4203);

/* 806FB2EC-806FB4F4 000CCC 0208+00 8/8 0/0 0/0 .text            nextActionCheck__8daE_KK_cFv */
void daE_KK_c::nextActionCheck() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FF638-806FF63C 000050 0004+00 0/5 0/0 0/0 .rodata          @4254 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4254 = 300.0f;
COMPILER_STRIP_GATE(0x806FF638, &lit_4254);
#pragma pop

/* 806FF63C-806FF640 000054 0004+00 0/1 0/0 0/0 .rodata          @4255 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4255 = -1000000000.0f;
COMPILER_STRIP_GATE(0x806FF63C, &lit_4255);
#pragma pop

/* 806FB4F4-806FB6C0 000ED4 01CC+00 2/2 0/0 0/0 .text            way_gake_check__8daE_KK_cFv */
void daE_KK_c::way_gake_check() {
    // NONMATCHING
}

/* 806FB6C0-806FB7D8 0010A0 0118+00 3/3 0/0 0/0 .text            mDeadEffSet__8daE_KK_cFR4cXyz */
void daE_KK_c::mDeadEffSet(cXyz& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FF640-806FF644 000058 0004+00 0/10 0/0 0/0 .rodata          @4304 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4304 = 3.0f;
COMPILER_STRIP_GATE(0x806FF640, &lit_4304);
#pragma pop

/* 806FF644-806FF648 00005C 0004+00 0/2 0/0 0/0 .rodata          @4305 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4305 = 60.0f;
COMPILER_STRIP_GATE(0x806FF644, &lit_4305);
#pragma pop

/* 806FB7D8-806FB908 0011B8 0130+00 1/1 0/0 0/0 .text            executeWait__8daE_KK_cFv */
void daE_KK_c::executeWait() {
    // NONMATCHING
}

/* 806FB908-806FBB1C 0012E8 0214+00 1/1 0/0 0/0 .text            executeIcicleWait__8daE_KK_cFv */
void daE_KK_c::executeIcicleWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FF648-806FF64C 000060 0004+00 0/1 0/0 0/0 .rodata          @4425 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4425 = 5.0f;
COMPILER_STRIP_GATE(0x806FF648, &lit_4425);
#pragma pop

/* 806FF64C-806FF650 000064 0004+00 0/1 0/0 0/0 .rodata          @4426 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4426 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x806FF64C, &lit_4426);
#pragma pop

/* 806FF650-806FF654 000068 0004+00 0/2 0/0 0/0 .rodata          @4427 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4427 = 2.0f;
COMPILER_STRIP_GATE(0x806FF650, &lit_4427);
#pragma pop

/* 806FBB1C-806FBE98 0014FC 037C+00 1/1 0/0 0/0 .text            executeWalk__8daE_KK_cFv */
void daE_KK_c::executeWalk() {
    // NONMATCHING
}

/* 806FBE98-806FC370 001878 04D8+00 1/1 0/0 0/0 .text            executeSpearThrow__8daE_KK_cFv */
void daE_KK_c::executeSpearThrow() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FF654-806FF658 00006C 0004+00 0/2 0/0 0/0 .rodata          @4656 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4656 = 0.5f;
COMPILER_STRIP_GATE(0x806FF654, &lit_4656);
#pragma pop

/* 806FF658-806FF65C 000070 0004+00 0/1 0/0 0/0 .rodata          @4657 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4657 = 15.0f;
COMPILER_STRIP_GATE(0x806FF658, &lit_4657);
#pragma pop

/* 806FC370-806FC75C 001D50 03EC+00 1/1 0/0 0/0 .text            executeBackWalk__8daE_KK_cFv */
void daE_KK_c::executeBackWalk() {
    // NONMATCHING
}

/* 806FC75C-806FC8F4 00213C 0198+00 1/1 0/0 0/0 .text            executeYoroke__8daE_KK_cFv */
void daE_KK_c::executeYoroke() {
    // NONMATCHING
}

/* 806FC8F4-806FCA28 0022D4 0134+00 1/1 0/0 0/0 .text            executeGuard__8daE_KK_cFv */
void daE_KK_c::executeGuard() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FF65C-806FF660 000074 0004+00 0/1 0/0 0/0 .rodata          @4745 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4745 = -80.0f;
COMPILER_STRIP_GATE(0x806FF65C, &lit_4745);
#pragma pop

/* 806FF660-806FF664 000078 0004+00 0/1 0/0 0/0 .rodata          @4746 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4746 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x806FF660, &lit_4746);
#pragma pop

/* 806FCA28-806FCC34 002408 020C+00 1/1 0/0 0/0 .text            executeDamage__8daE_KK_cFv */
void daE_KK_c::executeDamage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FF664-806FF668 00007C 0004+00 0/2 0/0 0/0 .rodata          @4847 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4847 = 600.0f;
COMPILER_STRIP_GATE(0x806FF664, &lit_4847);
#pragma pop

/* 806FF668-806FF66C 000080 0004+00 0/2 0/0 0/0 .rodata          @4848 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4848 = 20.0f;
COMPILER_STRIP_GATE(0x806FF668, &lit_4848);
#pragma pop

/* 806FF66C-806FF670 000084 0004+00 0/3 0/0 0/0 .rodata          @4849 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4849 = 80.0f;
COMPILER_STRIP_GATE(0x806FF66C, &lit_4849);
#pragma pop

/* 806FCC34-806FD068 002614 0434+00 1/1 0/0 0/0 .text            executeAttack__8daE_KK_cFv */
void daE_KK_c::executeAttack() {
    // NONMATCHING
}

/* 806FD068-806FD294 002A48 022C+00 1/1 0/0 0/0 .text            executeDead__8daE_KK_cFv */
void daE_KK_c::executeDead() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FF670-806FF674 000088 0004+00 0/1 0/0 0/0 .rodata          @5078 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5078 = 120.0f;
COMPILER_STRIP_GATE(0x806FF670, &lit_5078);
#pragma pop

/* 806FF674-806FF678 00008C 0004+00 0/1 0/0 0/0 .rodata          @5079 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5079 = 7.0f;
COMPILER_STRIP_GATE(0x806FF674, &lit_5079);
#pragma pop

/* 806FF678-806FF67C 000090 0004+00 0/1 0/0 0/0 .rodata          @5080 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5080 = 1.5f;
COMPILER_STRIP_GATE(0x806FF678, &lit_5080);
#pragma pop

/* 806FF67C-806FF680 000094 0004+00 0/1 0/0 0/0 .rodata          @5081 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5081 = -300.0f;
COMPILER_STRIP_GATE(0x806FF67C, &lit_5081);
#pragma pop

/* 806FF680-806FF688 000098 0004+04 0/1 0/0 0/0 .rodata          @5082 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5082[1 + 1 /* padding */] = {
    -2.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806FF680, &lit_5082);
#pragma pop

/* 806FF688-806FF690 0000A0 0008+00 0/3 0/0 0/0 .rodata          @5084 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5084[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806FF688, &lit_5084);
#pragma pop

/* 806FD294-806FD930 002C74 069C+00 1/1 0/0 0/0 .text            executeWeaponMove__8daE_KK_cFv */
void daE_KK_c::executeWeaponMove() {
    // NONMATCHING
}

/* 806FD930-806FDD0C 003310 03DC+00 2/1 0/0 0/0 .text            action__8daE_KK_cFv */
void daE_KK_c::action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FF690-806FF694 0000A8 0004+00 0/1 0/0 0/0 .rodata          @5170 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5170 = 70.0f;
COMPILER_STRIP_GATE(0x806FF690, &lit_5170);
#pragma pop

/* 806FF694-806FF698 0000AC 0004+00 0/0 0/0 0/0 .rodata          @5171 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5171 = 150.0f;
COMPILER_STRIP_GATE(0x806FF694, &lit_5171);
#pragma pop

/* 806FF698-806FF69C 0000B0 0004+00 0/1 0/0 0/0 .rodata          @5233 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5233 = 230.0f;
COMPILER_STRIP_GATE(0x806FF698, &lit_5233);
#pragma pop

/* 806FF69C-806FF6A0 0000B4 0004+00 0/2 0/0 0/0 .rodata          @5234 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5234 = -60.0f;
COMPILER_STRIP_GATE(0x806FF69C, &lit_5234);
#pragma pop

/* 806FDD0C-806FDF0C 0036EC 0200+00 2/2 0/0 0/0 .text            mtx_set__8daE_KK_cFv */
void daE_KK_c::mtx_set() {
    // NONMATCHING
}

/* 806FDF0C-806FE0B8 0038EC 01AC+00 2/2 0/0 0/0 .text            weapon_mtx_set__8daE_KK_cFv */
void daE_KK_c::weapon_mtx_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FF6A0-806FF6A4 0000B8 0004+00 0/1 0/0 0/0 .rodata          @5333 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5333 = 250.0f;
COMPILER_STRIP_GATE(0x806FF6A0, &lit_5333);
#pragma pop

/* 806FF6A4-806FF6A8 0000BC 0004+00 0/1 0/0 0/0 .rodata          @5334 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5334 = 40.0f;
COMPILER_STRIP_GATE(0x806FF6A4, &lit_5334);
#pragma pop

/* 806FE0B8-806FE2A8 003A98 01F0+00 1/1 0/0 0/0 .text            cc_set__8daE_KK_cFv */
void daE_KK_c::cc_set() {
    // NONMATCHING
}

/* 806FE2A8-806FE3B8 003C88 0110+00 1/1 0/0 0/0 .text            execute__8daE_KK_cFv */
void daE_KK_c::execute() {
    // NONMATCHING
}

/* 806FE3B8-806FE3D8 003D98 0020+00 1/0 0/0 0/0 .text            daE_KK_Execute__FP8daE_KK_c */
static void daE_KK_Execute(daE_KK_c* param_0) {
    // NONMATCHING
}

/* 806FE3D8-806FE3E0 003DB8 0008+00 1/0 0/0 0/0 .text            daE_KK_IsDelete__FP8daE_KK_c */
static bool daE_KK_IsDelete(daE_KK_c* param_0) {
    return true;
}

/* 806FE3E0-806FE460 003DC0 0080+00 1/1 0/0 0/0 .text            _delete__8daE_KK_cFv */
void daE_KK_c::_delete() {
    // NONMATCHING
}

/* 806FE460-806FE480 003E40 0020+00 1/0 0/0 0/0 .text            daE_KK_Delete__FP8daE_KK_c */
static void daE_KK_Delete(daE_KK_c* param_0) {
    // NONMATCHING
}

/* 806FE480-806FE698 003E60 0218+00 1/1 0/0 0/0 .text            CreateHeap__8daE_KK_cFv */
void daE_KK_c::CreateHeap() {
    // NONMATCHING
}

/* 806FE698-806FE6B8 004078 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FF6A8-806FF6AC 0000C0 0004+00 0/1 0/0 0/0 .rodata          @5668 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5668 = -3.0f;
COMPILER_STRIP_GATE(0x806FF6A8, &lit_5668);
#pragma pop

/* 806FF6AC-806FF6B0 0000C4 0004+00 0/1 0/0 0/0 .rodata          @5669 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5669 = -600.0f;
COMPILER_STRIP_GATE(0x806FF6AC, &lit_5669);
#pragma pop

/* 806FF6B0-806FF6B8 0000C8 0008+00 0/1 0/0 0/0 .rodata          @5671 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5671[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806FF6B0, &lit_5671);
#pragma pop

/* 806FF6B8-806FF6B8 0000D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806FF6BD = "E_kk";
#pragma pop

/* 806FE6B8-806FED20 004098 0668+00 1/1 0/0 0/0 .text            create__8daE_KK_cFv */
void daE_KK_c::create() {
    // NONMATCHING
}

/* 806FED20-806FEDA4 004700 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 806FEDA4-806FEE70 004784 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 806FEE70-806FEEB8 004850 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 806FEEB8-806FEF00 004898 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 806FEF00-806FEF48 0048E0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 806FEF48-806FEFA4 004928 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 806FEFA4-806FF014 004984 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 806FF014-806FF084 0049F4 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 806FF084-806FF088 004A64 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 806FF088-806FF0A8 004A68 0020+00 1/0 0/0 0/0 .text            daE_KK_Create__FP8daE_KK_c */
static void daE_KK_Create(daE_KK_c* param_0) {
    // NONMATCHING
}

/* 806FF0A8-806FF0F0 004A88 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 806FF0F0-806FF138 004AD0 0048+00 2/1 0/0 0/0 .text            __dt__12daE_KK_HIO_cFv */
daE_KK_HIO_c::~daE_KK_HIO_c() {
    // NONMATCHING
}

/* 806FF138-806FF174 004B18 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_kk_cpp */
void __sinit_d_a_e_kk_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806FF138, __sinit_d_a_e_kk_cpp);
#pragma pop

/* 806FF174-806FF17C 004B54 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_806FF174() {
    // NONMATCHING
}

/* 806FF17C-806FF184 004B5C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_806FF17C() {
    // NONMATCHING
}

/* 806FF184-806FF598 004B64 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
static void setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    // NONMATCHING
}

/* 806FF598-806FF5D4 004F78 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 806FF6B8-806FF6B8 0000D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */