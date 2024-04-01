/**
 * @file d_a_obj_carry.cpp
 * @brief Enemy - Mini Freezard
 */

#include "rel/d/a/e/d_a_e_fz/d_a_e_fz.h"
#include "rel/d/a/d_a_mirror/d_a_mirror.h"
#include "d/d_item.h"
#include "d/a/d_a_player.h"
#include "rel/d/a/d_a_midna/d_a_midna.h"
#include "d/com/d_com_inf_game.h"
#include "SSystem/SComponent/c_math.h"
#include "SSystem/SComponent/c_xyz.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__12daE_FZ_HIO_cFv();
extern "C" void draw__8daE_FZ_cFv();
extern "C" static void daE_FZ_Draw__FP8daE_FZ_c();
extern "C" void setActionMode__8daE_FZ_cFii();
extern "C" void setReflectAngle__8daE_FZ_cFv();
extern "C" void mBoundSoundset__8daE_FZ_cFv();
extern "C" void deadnextSet__8daE_FZ_cFb();
extern "C" void damage_check__8daE_FZ_cFv();
extern "C" void way_gake_check__8daE_FZ_cFv();
extern "C" void executeWait__8daE_FZ_cFv();
extern "C" void executeMove__8daE_FZ_cFv();
extern "C" void executeAttack__8daE_FZ_cFv();
extern "C" void executeDamage__8daE_FZ_cFv();
extern "C" void executeRollMove__8daE_FZ_cFv();
extern "C" void action__8daE_FZ_cFv();
extern "C" void mtx_set__8daE_FZ_cFv();
extern "C" void cc_set__8daE_FZ_cFv();
extern "C" void execute__8daE_FZ_cFv();
extern "C" static void daE_FZ_Execute__FP8daE_FZ_c();
extern "C" void demoDelete__8daE_FZ_cFv();
extern "C" static bool daE_FZ_IsDelete__FP8daE_FZ_c();
extern "C" void _delete__8daE_FZ_cFv();
extern "C" static void daE_FZ_Delete__FP8daE_FZ_c();
extern "C" void CreateHeap__8daE_FZ_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_FZ_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__4cXyzFv();
extern "C" static void daE_FZ_Create__FP8daE_FZ_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_FZ_HIO_cFv();
extern "C" void __sinit_d_a_e_fz_cpp();
extern "C" static void func_806C14C4();
extern "C" static void func_806C14CC();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_fz__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void create__21mDoExt_invisibleModelFP8J3DModelUc();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemFromEnemyID__FUcPC4cXyziiPC5csXyzPC4cXyzPfPf();
extern "C" void fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_wayBgCheck__FPC10fopAc_ac_cff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void entry__10daMirror_cFP8J3DModel();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void forceOnEventMove__Q213dPa_control_c7level_cFUl();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetActorPointer__4cBgSCFi();
extern "C" void GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo();
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
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void checkItemGet__FUci();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void atan2sX_Z__4cXyzCFv();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void func_80280808();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_19();
extern "C" void _savegpr_23();
extern "C" void _savegpr_25();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_23();
extern "C" void _restgpr_25();
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
extern "C" u8 mParticleTracePCB__13dPa_control_c[4 + 4 /* padding */];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 806C1938-806C193C 000000 0004+00 13/13 0/0 0/0 .rodata          @3803 */
SECTION_RODATA static f32 const lit_3803 = 100.0f;
COMPILER_STRIP_GATE(0x806C1938, &lit_3803);

/* 806C193C-806C1940 000004 0004+00 1/12 0/0 0/0 .rodata          @3804 */
SECTION_RODATA static u8 const lit_3804[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x806C193C, &lit_3804);

/* 806C1940-806C1948 000008 0004+04 2/10 0/0 0/0 .rodata          @3805 */
SECTION_RODATA static f32 const lit_3805[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806C1940, &lit_3805);

/* 806C1948-806C1950 000010 0008+00 0/1 0/0 0/0 .rodata          @3806 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3806[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806C1948, &lit_3806);
#pragma pop

/* 806C1950-806C1958 000018 0008+00 0/1 0/0 0/0 .rodata          @3807 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3807[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806C1950, &lit_3807);
#pragma pop

/* 806C1958-806C1960 000020 0008+00 0/1 0/0 0/0 .rodata          @3808 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3808[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806C1958, &lit_3808);
#pragma pop

/* 806C1960-806C1964 000028 0004+00 0/1 0/0 0/0 .rodata          @3809 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3809 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x806C1960, &lit_3809);
#pragma pop

/* 806C1964-806C1968 00002C 0004+00 0/1 0/0 0/0 .rodata          @3824 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3824 = 7.0f / 5.0f;
COMPILER_STRIP_GATE(0x806C1964, &lit_3824);
#pragma pop

/* 806C1968-806C196C 000030 0004+00 0/1 0/0 0/0 .rodata          @3825 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3825 = 1000.0f;
COMPILER_STRIP_GATE(0x806C1968, &lit_3825);
#pragma pop

/* 806C196C-806C1970 000034 0004+00 0/1 0/0 0/0 .rodata          @3826 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3826 = 800.0f;
COMPILER_STRIP_GATE(0x806C196C, &lit_3826);
#pragma pop

/* 806C1970-806C1974 000038 0004+00 0/1 0/0 0/0 .rodata          @3827 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3827 = 350.0f;
COMPILER_STRIP_GATE(0x806C1970, &lit_3827);
#pragma pop

/* 806C1974-806C1978 00003C 0004+00 0/1 0/0 0/0 .rodata          @3828 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3828 = 2.0f;
COMPILER_STRIP_GATE(0x806C1974, &lit_3828);
#pragma pop

/* 806C1978-806C197C 000040 0004+00 0/1 0/0 0/0 .rodata          @3829 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3829 = 6.0f;
COMPILER_STRIP_GATE(0x806C1978, &lit_3829);
#pragma pop

/* 806C197C-806C1980 000044 0004+00 0/3 0/0 0/0 .rodata          @3830 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3830 = 10.0f;
COMPILER_STRIP_GATE(0x806C197C, &lit_3830);
#pragma pop

/* 806C1980-806C1984 000048 0004+00 0/3 0/0 0/0 .rodata          @3831 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3831 = 50.0f;
COMPILER_STRIP_GATE(0x806C1980, &lit_3831);
#pragma pop

/* 806C1984-806C1988 00004C 0004+00 0/2 0/0 0/0 .rodata          @3832 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3832 = 3.0f;
COMPILER_STRIP_GATE(0x806C1984, &lit_3832);
#pragma pop

/* 806C1988-806C198C 000050 0004+00 0/4 0/0 0/0 .rodata          @3833 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3833 = 40.0f;
COMPILER_STRIP_GATE(0x806C1988, &lit_3833);
#pragma pop

/* 806C198C-806C1990 000054 0004+00 0/1 0/0 0/0 .rodata          @3834 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3834 = 80.0f;
COMPILER_STRIP_GATE(0x806C198C, &lit_3834);
#pragma pop

/* 806C1A00-806C1A0C 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 806C1A0C-806C1A20 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 806C1A20-806C1A28 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3682 */
#pragma push
#pragma force_active on
SECTION_DATA static GXColor e_prim[2] = {
    {0xFF, 0x78, 0x00, 0x00}, 
    {0xFF, 0x64, 0x78, 0x00},
};
#pragma pop

/* 806C1A28-806C1A30 000028 0008+00 0/1 0/0 0/0 .data            e_env$3683 */
#pragma push
#pragma force_active on
SECTION_DATA static GXColor e_env[2] = {
    {0x5A, 0x2D, 0x2D, 0x00}, 
    {0x3C, 0x1E, 0x1E, 0x00},
};
#pragma pop


/* 806C1A30-806C1A38 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3691 */
#pragma push
#pragma force_active on
SECTION_DATA static u16 eff_id[3] = {
    0x029D,
    0x029E,
    0x029F,
    // /* padding */
    // 0x00,
    // 0x00,
};
#pragma pop

/* 806C1A38-806C1A78 000038 0040+00 1/1 0/0 0/0 .data            cc_fz_src__22@unnamed@d_a_e_fz_cpp@
 */
static dCcD_SrcSph cc_fz_src = {
    {
        {0x0, {{0x100, 0x1, 0x0}, {0xd0fbfdff, 0x43}, 0x65}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 806C1A78-806C1AB8 000078 0040+00 1/1 0/0 0/0 .data cc_fz_at_src__22@unnamed@d_a_e_fz_cpp@ */
static dCcD_SrcSph cc_fz_at_src = {
    {
        {0x0, {{0x100, 0x1, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 806C1AB8-806C1AD4 -00001 001C+00 1/1 0/0 0/0 .data            @4324 */
SECTION_DATA static void* lit_4324[7] = {
    (void*)(((char*)executeDamage__8daE_FZ_cFv) + 0x5C),
    (void*)(((char*)executeDamage__8daE_FZ_cFv) + 0x16C),
    (void*)(((char*)executeDamage__8daE_FZ_cFv) + 0x1A8),
    (void*)(((char*)executeDamage__8daE_FZ_cFv) + 0x2B8),
    (void*)(((char*)executeDamage__8daE_FZ_cFv) + 0x308),
    (void*)(((char*)executeDamage__8daE_FZ_cFv) + 0x178),
    (void*)(((char*)executeDamage__8daE_FZ_cFv) + 0x3F4),
};

/* 806C1AD4-806C1ADC 0000D4 0006+02 1/1 0/0 0/0 .data            ice_name$4578 */
SECTION_DATA static u16 ice_name[3] = {
    0x8221,
    0x8222,
    0x8223,
};

/* 806C1ADC-806C1AFC -00001 0020+00 1/0 0/0 0/0 .data            l_daE_FZ_Method */
SECTION_DATA static void* l_daE_FZ_Method[8] = {
    (void*)daE_FZ_Create__FP8daE_FZ_c,
    (void*)daE_FZ_Delete__FP8daE_FZ_c,
    (void*)daE_FZ_Execute__FP8daE_FZ_c,
    (void*)daE_FZ_IsDelete__FP8daE_FZ_c,
    (void*)daE_FZ_Draw__FP8daE_FZ_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 806C1AFC-806C1B2C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_FZ */
SECTION_DATA extern void* g_profile_E_FZ[12] = {
    (void*)0xFFFFFFFD, 
    (void*)0x0007FFFD,
    (void*)0x01DE0000, 
    (void*)&g_fpcLf_Method,
    (void*)0x00000C24, 
    (void*)NULL,
    (void*)NULL,       
    (void*)&g_fopAc_Method,
    (void*)0x00A90000, 
    (void*)&l_daE_FZ_Method,
    (void*)0x00040120, 
    (void*)0x02000000,
};

/* 806C1B2C-806C1B38 00012C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 806C1B38-806C1B44 000138 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806C1B44-806C1B50 000144 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806C1B50-806C1B5C 000150 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806C1B5C-806C1B68 00015C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806C1B68-806C1B8C 000168 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806C14CC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806C14C4,
};

/* 806C1B8C-806C1B98 00018C 000C+00 2/2 0/0 0/0 .data            __vt__12daE_FZ_HIO_c */
SECTION_DATA extern void* __vt__12daE_FZ_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_FZ_HIO_cFv,
};

/* 806BE94C-806BE9D4 0000EC 0088+00 1/1 0/0 0/0 .text            __ct__12daE_FZ_HIO_cFv */
#ifdef NONMATCHING
// matches except extra vtable?
daE_FZ_HIO_c::daE_FZ_HIO_c() {
    field_0x04 = -1;
    field_0x0c = FLOAT_LABEL(lit_3824);
    field_0x10 = FLOAT_LABEL(lit_3825);
    field_0x14 = FLOAT_LABEL(lit_3826);
    field_0x18 = FLOAT_LABEL(lit_3827);
    field_0x1c = FLOAT_LABEL(lit_3828);
    field_0x20 = FLOAT_LABEL(lit_3829);
    field_0x24 = FLOAT_LABEL(lit_3830);
    field_0x28 = FLOAT_LABEL(lit_3831);
    field_0x2c = FLOAT_LABEL(lit_3832);
    field_0x06 = 0x28;
    field_0x30 = FLOAT_LABEL(lit_3833);
    field_0x08 = 0x78;
    field_0x34 = FLOAT_LABEL(lit_3834);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_FZ_HIO_c::daE_FZ_HIO_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/__ct__12daE_FZ_HIO_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 806C1990-806C1994 000058 0004+00 0/3 0/0 0/0 .rodata          @3863 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3863 = 300.0f;
COMPILER_STRIP_GATE(0x806C1990, &lit_3863);
#pragma pop

/* 806BE9D4-806BEAD8 000174 0104+00 1/1 0/0 0/0 .text            draw__8daE_FZ_cFv */
#ifdef NONMATCHING
// float literals + dComIfGd_setShadow param issue maybe
s32 daE_FZ_c::draw() {
    if (field_0x714 != 2 || !checkItemGet(IRONBALL,1)) {
        return 1;
    }

    J3DModel* model = mpModel;
    
    g_env_light.settingTevStruct(0, &current.pos, &mTevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel->mModelData, &mTevStr);


    mDoExt_modelUpdateDL(mpModel);
    daMirror_c::entry(mpModel);

    cXyz pos;

    pos.set(current.pos.x,current.pos.y+10.0f,current.pos.z);
    field_0x70c = dComIfGd_setShadow(field_0x70c,1,model,&pos,0.0f,1.0f,2.0f,mObjAcch.GetGroundH(),*(mObjAcch.pm_out_poly_info),&mTevStr,0,0.0f,&dDlst_shadowControl_c::mSimpleTexObj);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 daE_FZ_c::draw() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/draw__8daE_FZ_cFv.s"
}
#pragma pop
#endif

/* 806BEAD8-806BEAF8 000278 0020+00 1/0 0/0 0/0 .text            daE_FZ_Draw__FP8daE_FZ_c */
static void daE_FZ_Draw(daE_FZ_c* i_this) {
    i_this->draw();
}

/* 806BEAF8-806BEB04 000298 000C+00 9/9 0/0 0/0 .text            setActionMode__8daE_FZ_cFii */
void daE_FZ_c::setActionMode(int i_actionMode, int i_actionPhase) {
    mActionMode = i_actionMode;
    mActionPhase = i_actionPhase;
}

/* 806BEB04-806BEBA0 0002A4 009C+00 2/2 0/0 0/0 .text            setReflectAngle__8daE_FZ_cFv */
void daE_FZ_c::setReflectAngle() {
    s16 x = current.angle.y - mLastWallHitAngle;

    if (abs(x) > 18432) {
        current.angle.y = (mLastWallHitAngle << 1) - (current.angle.y + 32768);
    } else {
        if (x > 14336) {
            current.angle.y = mLastWallHitAngle + 14336;
        } else {
            if (x < -14336) {
                current.angle.y = mLastWallHitAngle - 14336;
            }
        }
    }
}

/* 806BEBA0-806BEC08 000340 0068+00 2/2 0/0 0/0 .text            mBoundSoundset__8daE_FZ_cFv */
void daE_FZ_c::mBoundSoundset() {
    u32 speed = speedF;

    if (speed < 1)
        speed = 1;

    mCreature.startCreatureSound(Z2SE_EN_FZ_BOUND,speed,-1);
}

/* 806BEC08-806BED34 0003A8 012C+00 2/2 0/0 0/0 .text            deadnextSet__8daE_FZ_cFb */
#ifdef NONMATCHING
// float literals
void daE_FZ_c::deadnextSet(bool param_0) {
    mHealth = 0;

    if (!param_0) {
        if (field_0x714 != 3) {
            dComIfGp_getVibration().StartShock(2,0x1f,cXyz(0.0f,1.0f,0.0f));
        }
        mCreature.startCollisionSE(Z2SE_HIT_HAMMER,0x20);
    }

    mSph1.ClrTgHit();
    fopAcM_OffStatus(this,0);
    mAttentionInfo.mFlags &= 0xfffffffb;

    mSph2.OffAtSetBit();
    mSph1.OffTgSetBit();
    
    mCreature.startCreatureSound(Z2SE_EN_FZ_DEATH,0,-1);
    
    speedF = 0.0f;
    field_0x6fc = 0;
    setActionMode(ACT_DAMAGE,0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_FZ_c::deadnextSet(bool param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/deadnextSet__8daE_FZ_cFb.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 806C1994-806C1998 00005C 0004+00 1/3 0/0 0/0 .rodata          @4109 */
SECTION_RODATA static f32 const lit_4109 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x806C1994, &lit_4109);

/* 806C1BA0-806C1BA4 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_806C1BA0[4];

/* 806C1BA4-806C1BB0 00000C 000C+00 1/1 0/0 0/0 .bss             @3819 */
static u8 lit_3819[12];

/* 806C1BB0-806C1BE8 000018 0038+00 8/8 0/0 0/0 .bss             l_HIO */
static daE_FZ_HIO_c_tmp l_HIO;

/* 806BED34-806BF444 0004D4 0710+00 1/1 0/0 0/0 .text            damage_check__8daE_FZ_cFv */
#ifndef NONMATCHING
// fwd ref to function at bottom of TU
static int setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3);

void daE_FZ_c::damage_check() {
  f32 tmp = l_HIO.field_0x0c;
  
  if (1 < health) {
    scale.set(l_HIO.field_0x0c, l_HIO.field_0x0c, l_HIO.field_0x0c);
    setMidnaBindEffect(this, &mCreature, &current.pos, &scale);

    if (field_0x712 == 0) {
      cXyz pos;
      
      pos.set(dComIfGp_getPlayer(0)->current.pos);
      mStts.Move();
      
      if (field_0x714 == 3) {
        if (mSph1.ChkTgHit()) {
          mAtInfo.mpCollider = mSph1.GetTgHitObj();
          
          if (mSph1.GetTgHitObj()->ChkAtType(AT_TYPE_IRON_BALL)) {
            deadnextSet(false);
          }
        }
      } else {
        
        if (mSph1.ChkTgHit()) {
          // early load, fix later
          fopAc_ac_c* co_hit_actor = mSph1.GetCoHitAc();
          if (mObjAcch.ChkGroundHit() && mSph1.ChkCoHit() && co_hit_actor) {

            if (fopAcM_IsActor(co_hit_actor) && fopAcM_GetName(co_hit_actor) == PROC_E_FZ) {
              co_hit_actor = mSph1.GetCoHitAc();
              pos = pos - current.pos;
              
              mSph1.ClrCoHit();

              if ((DAT_80ac4b50 * 0.2 < *(float *)(iVar3 + 0x530)) ||
                 (DAT_80ac4b50 * 0.2 < *(float *)(this + 0x530))) {
                pos = pos - current.pos;
                mLastWallHitAngle = pos.atan2sX_Z();
                setReflectAngle();

                if (*(float *)(this + 0x530) <= *(float *)(iVar3 + 0x530)) {
                  uVar4 = *(undefined4 *)(iVar3 + 0x530);
                  *(undefined4 *)(this + 0x530) = uVar4;
                  *(undefined4 *)(this + 0x734) = uVar4;
                } else {
                  uVar4 = *(undefined4 *)(this + 0x530);
                  *(undefined4 *)(iVar3 + 0x530) = uVar4;
                  *(undefined4 *)(iVar3 + 0x734) = uVar4;
                }
                mBoundSoundset();
                setActionMode(ACT_DAMAGE,5);
                return;
              }
            }
          }
          iVar3 = ::dCcD_GObjInf::ChkAtHit((dCcD_GObjInf *)(this + 0xb08));
          if (iVar3 != 0) {
            pfVar2 = m_Do_graphic::dComIfGp_getPlayer(0);
            pfVar8 = (fopAc_ac_c *)::dCcD_GObjInf::GetAtHitAc((dCcD_GObjInf *)(this + 0xb08));
            sVar9 = f_op_actor_mng::fopAcM_searchPlayerAngleY(this);
            *(short *)(this + 0x4e2) = sVar9 + -0x8000;
            if (pfVar2 == pfVar8) {
              iVar3 = ::dCcD_GObjInf::ChkAtShieldHit((dCcD_GObjInf *)(this + 0xb08));
              fVar1 = DAT_80ac4b50;
              if (iVar3 == 0) {
                if (*(int *)(this + 0x72c) != 3) {
                  this[0x74a] = (daE_FZ_c)0xa;
                  setActionMode(this,3,3);
                }
              }
              else {
                *(float *)(this + 0x530) = DAT_80ac4b50;
                *(float *)(this + 0x734) = fVar1;
                setActionMode(this,3,1);
              }
              mBoundSoundset(this);
              (**(code **)(*(int *)(this + 0xb44) + 0x20))();
            }
            else {
              (**(code **)(*(int *)(this + 0xb44) + 0x20))();
            }
          }
        }
        else {
          uVar4 = ::dCcD_GObjInf::GetTgHitObj((dCcD_GObjInf *)(this + 0x9d0));
          *(undefined4 *)(this + 0xc40) = uVar4;
          pcVar5 = (cCcD_ObjHitInf *)::dCcD_GObjInf::GetTgHitObj((dCcD_GObjInf *)(this + 0x9d0));
          iVar3 = ::cCcD_ObjHitInf::ChkAtType(pcVar5,0x40);
          if (iVar3 == 0) {
            pcVar5 = (cCcD_ObjHitInf *)::dCcD_GObjInf::GetTgHitObj((dCcD_GObjInf *)(this + 0x9d0));
            iVar3 = ::cCcD_ObjHitInf::ChkAtType(pcVar5,0x10000);
            if (iVar3 == 0) {
              csXyz::csXyz(&local_80);
              ::cXyz::cXyz(&cStack60);
              ::cXyz::cXyz(&cStack72);
              ::dCcD_GObjInf::GetTgHitPosP((dCcD_GObjInf *)(this + 0x9d0));
              ::cXyz::operator_-(&cStack96,(cXyz *)(this + 0x4d4));
              ::cXyz::operator_=(&cStack60,&cStack96);
              ::cXyz::~cXyz(&cStack96);
              pVVar6 = (Vec *)::dCcD_GObjInf::GetTgHitPosP((dCcD_GObjInf *)(this + 0x9d0));
              ::cXyz::set(&cStack72,pVVar6);
              local_80.x = 0;
              local_80.y = ::cXyz::atan2sX_Z(&cStack60);
              local_80.z = 0;
              pcVar5 = (cCcD_ObjHitInf *)::dCcD_GObjInf::GetTgHitObj((dCcD_GObjInf *)(this + 0x9d0))
              ;
              iVar3 = ::cCcD_ObjHitInf::ChkAtType(pcVar5,0x80000);
              if (iVar3 == 0) {
                pcVar5 = (cCcD_ObjHitInf *)
                         ::dCcD_GObjInf::GetTgHitObj((dCcD_GObjInf *)(this + 0x9d0));
                iVar3 = ::cCcD_ObjHitInf::ChkAtType(pcVar5,0x2000);
                if (iVar3 == 0) {
                  ::cXyz::cXyz(&cStack84,DAT_80ac4b34,DAT_80ac4b34,DAT_80ac4b34);
                  f_op_kankyo_mng::dComIfGp_particle_set
                            (0x85ba,(cXyz *)(this + 0x4d4),(csXyz *)(this + 0x4e8),&cStack84);
                  pcVar5 = (cCcD_ObjHitInf *)
                           ::dCcD_GObjInf::GetTgHitObj((dCcD_GObjInf *)(this + 0x9d0));
                  iVar3 = ::cCcD_ObjHitInf::ChkAtType(pcVar5,0x4000);
                  if (iVar3 != 0) {
                    *(short *)(this + 0x56a) = *(short *)(this + 0x56a) + -0x14;
                    if (1 < *(short *)(this + 0x56a)) {
                      sVar9 = f_op_actor_mng::fopAcM_searchPlayerAngleY(this);
                      *(short *)(this + 0x4e2) = sVar9 + -0x8000;
                      fVar1 = DAT_80ac4b50;
                      *(float *)(this + 0x530) = DAT_80ac4b50;
                      *(float *)(this + 0x734) = fVar1;
                      uVar4 = JAISoundID::JAISoundID(aJStack132,0x70321);
                      (**(code **)(*(int *)(this + 0x5c8) + 0x14))(this + 0x5c8,uVar4,0,0xffffffff);
                      fVar1 = DAT_80ac4b50;
                      *(float *)(this + 0x530) = DAT_80ac4b50;
                      *(float *)(this + 0x734) = fVar1;
                      setActionMode(this,3,1);
                      d_cc_s::dComIfGp_setHitMark
                                (3,(fopAc_ac_c *)this,&cStack72,&local_80,(cXyz *)0x0,0);
                      return;
                    }
                    deadnextSet(this,true);
                    d_cc_s::dComIfGp_setHitMark
                              (1,(fopAc_ac_c *)this,&cStack72,&local_80,(cXyz *)0x0,0);
                    return;
                  }
                  pcVar5 = (cCcD_ObjHitInf *)
                           ::dCcD_GObjInf::GetTgHitObj((dCcD_GObjInf *)(this + 0x9d0));
                  iVar3 = ::cCcD_ObjHitInf::ChkAtType(pcVar5,0x400000);
                  if (iVar3 != 0) {
                    deadnextSet(this,false);
                    (**(code **)(*(int *)(this + 0xa0c) + 0x24))();
                    d_cc_s::dComIfGp_setHitMark
                              (3,(fopAc_ac_c *)this,&cStack72,&local_80,(cXyz *)0x0,0);
                    return;
                  }
                  d_cc_uty::cc_at_check(this,this + 0xc40);
                  if (this[0xc5f] == (daE_FZ_c)0x0) {
                    d_cc_s::dComIfGp_setHitMark
                              (1,(fopAc_ac_c *)this,&cStack72,&local_80,(cXyz *)0x0,0);
                  }
                  else {
                    d_cc_s::dComIfGp_setHitMark
                              (3,(fopAc_ac_c *)this,&cStack72,&local_80,(cXyz *)0x0,0);
                  }
                  *(undefined2 *)(this + 0x740) = *(undefined2 *)(this + 0xc4e);
                  setReflectAngle(this);
                  *(short *)(this + 0x4e2) = *(short *)(this + 0x4e2) + -0x8000;
                  this[0x74a] = (daE_FZ_c)0xa;
                  if (1 < *(short *)(this + 0x56a)) {
                    uVar4 = JAISoundID::JAISoundID(aJStack136,0x70321);
                    (**(code **)(*(int *)(this + 0x5c8) + 0x14))(this + 0x5c8,uVar4,0,0xffffffff);
                    fVar1 = DAT_80ac4b50;
                    *(float *)(this + 0x530) = DAT_80ac4b50;
                    *(float *)(this + 0x734) = fVar1;
                    setActionMode(this,3,1);
                    return;
                  }
                  deadnextSet(this,true);
                  return;
                }
              }
              sVar9 = f_op_actor_mng::fopAcM_searchPlayerAngleY(this);
              *(short *)(this + 0x4e2) = sVar9 + -0x8000;
              fVar1 = DAT_80ac4b50;
              *(float *)(this + 0x530) = DAT_80ac4b50;
              *(float *)(this + 0x734) = fVar1;
              mBoundSoundset(this);
              d_cc_s::dComIfGp_setHitMark(2,(fopAc_ac_c *)this,&cStack72,&local_80,(cXyz *)0x0,0);
              setActionMode(this,3,1);
              return;
            }
          }
          sVar9 = f_op_actor_mng::fopAcM_searchPlayerAngleY(this);
          *(short *)(this + 0x4e2) = sVar9 + -0x8000;
          fVar1 = DAT_80ac4b50;
          *(float *)(this + 0x530) = DAT_80ac4b50;
          *(float *)(this + 0x734) = fVar1;
          mBoundSoundset(this);
          setActionMode(this,3,1);
        }
      }
    }
  }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_FZ_c::damage_check() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/damage_check__8daE_FZ_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 806C1998-806C199C 000060 0004+00 0/3 0/0 0/0 .rodata          @4139 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4139 = 70.0f;
COMPILER_STRIP_GATE(0x806C1998, &lit_4139);
#pragma pop

/* 806C199C-806C19A0 000064 0004+00 0/2 0/0 0/0 .rodata          @4140 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4140 = -1000000000.0f;
COMPILER_STRIP_GATE(0x806C199C, &lit_4140);
#pragma pop

/* 806BF444-806BF58C 000BE4 0148+00 3/3 0/0 0/0 .text            way_gake_check__8daE_FZ_cFv */
#ifdef NONMATCHING
// float literals
bool daE_FZ_c::way_gake_check() {
    cXyz pos;
    dBgS_GndChk gnd_chk;
    
    if (mObjAcch.ChkWallHit()) {
        return false;
    }

    cMtx_YrotS((MtxP)calc_mtx,current.angle.y);

    pos.x = 0.0f;
    pos.y = 300.0f;
    pos.z = 70.0f;

    MtxPosition(&pos,&field_0x6dc);

    field_0x6dc += current.pos;
    field_0x6e8.set(field_0x6dc);
    gnd_chk.SetPos(&field_0x6e8);
    
    field_0x6e8.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
    f32 tmp = field_0x6e8.y;
    
    if (tmp == -1e+09f) {
        field_0x6e8.y = current.pos.y;
        return true;
    } else if (current.pos.y - tmp > 100.0f) {
        return true;
    }

    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daE_FZ_c::way_gake_check() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/way_gake_check__8daE_FZ_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 806C19A0-806C19A4 000068 0004+00 0/3 0/0 0/0 .rodata          @4200 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4200 = 200.0f;
COMPILER_STRIP_GATE(0x806C19A0, &lit_4200);
#pragma pop

/* 806C19A4-806C19A8 00006C 0004+00 0/1 0/0 0/0 .rodata          @4201 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4201 = 32768.0f;
COMPILER_STRIP_GATE(0x806C19A4, &lit_4201);
#pragma pop

/* 806C19A8-806C19AC 000070 0004+00 0/2 0/0 0/0 .rodata          @4202 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4202 = 10000.0f;
COMPILER_STRIP_GATE(0x806C19A8, &lit_4202);
#pragma pop

/* 806C19AC-806C19B0 000074 0004+00 0/2 0/0 0/0 .rodata          @4203 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4203 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x806C19AC, &lit_4203);
#pragma pop

/* 806C19B0-806C19B8 000078 0008+00 0/2 0/0 0/0 .rodata          @4205 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4205[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806C19B0, &lit_4205);
#pragma pop

/* 806BF58C-806BF8E8 000D2C 035C+00 1/1 0/0 0/0 .text            executeWait__8daE_FZ_cFv */
#ifdef NONMATCHING
// stack issues + float literals
void daE_FZ_c::executeWait() {
  cXyz pos;
  s16 angle;
  f32 tmp = l_HIO.field_0x14;
  
  switch (mActionPhase) {
  case 0:
    if (fopAcM_wayBgCheck(this,200.0f,50.0f)) {
      angle = cM_rndFX(10000.0f) + 32768.0f;
    } else {
      
      pos.x = orig.pos.x + cM_rndFX(l_HIO.field_0x10);
      pos.y = orig.pos.y;
      pos.z = orig.pos.z + cM_rndFX(l_HIO.field_0x10);
      
      pos = pos - current.pos; // -= doesn't appear to work here
      
      angle = pos.atan2sX_Z() - current.angle.y;

      if (angle > 12288) {
        angle = 12288;
      }
      else {
        if (angle < -12288)
          angle = -12288;
      }
    }

    mAngleFromPlayer = current.angle.y + angle;
    field_0x710 = l_HIO.field_0x06 + cM_rndFX(l_HIO.field_0x30);
    mActionPhase = 1;
  case 1:
    if (way_gake_check()) {
      cXyz pos2;
      pos2 = current.pos - orig.pos;
      angle = pos2.atan2sX_Z();
      mAngleFromPlayer = angle;
      current.angle.y = angle;
    }

    if (field_0x714 == 4) {
      field_0x710 = 10;
      speedF = 0.0f;
      angle = fopAcM_searchPlayerAngleY(this);
      mAngleFromPlayer = angle;
      current.angle.y = angle;
      tmp = l_HIO.field_0x18;
    }

    if (mObjAcch.ChkGroundHit() && dComIfG_Bgsp().GetPolyAtt0(mObjAcch.m_gnd) == 8) {
        angle = shape_angle.y - mAngleFromPlayer;
    
        if (abs(angle) < 512 && field_0x710 == 0) {
          cLib_addCalc0(&speedF, 0.1f, 0.1f);
        }  
    } else {
        cLib_addCalc0(&speedF,0.1f,l_HIO.field_0x2c);
    }
    
    if (field_0x710 == 0 && speedF < 0.2f) {
      angle = shape_angle.y - mAngleFromPlayer;

      if (abs(angle) < 512) {
        current.angle.y = shape_angle.y;
        setActionMode(ACT_MOVE,0);
      } 
    }
  }

  cLib_addCalcAngleS2(&shape_angle.y,mAngleFromPlayer,8,1280);

  if (fopAcM_searchPlayerDistance(this) <= tmp && !way_gake_check()) {
    if (!fopAcM_otherBgCheck(this,dComIfGp_getPlayer(0))) {
      current.angle.y = shape_angle.y;
      setActionMode(ACT_ATTACK,0);
    }
  }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_FZ_c::executeWait() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/executeWait__8daE_FZ_cFv.s"
}
#pragma pop
#endif

/* 806BF8E8-806BFA64 001088 017C+00 1/1 0/0 0/0 .text            executeMove__8daE_FZ_cFv */
#ifdef NONMATCHING
// float literals
void daE_FZ_c::executeMove() {
    switch (mActionPhase) {
        case 0:
            field_0x710 = l_HIO.field_0x08 + cM_rndFX(l_HIO.field_0x34);
            mActionPhase = 1; 
        case 1:
            cLib_addCalcAngleS2(&current.angle.y,mAngleFromPlayer,8,256);
            cLib_addCalc2(&speedF,l_HIO.field_0x1c,1.0f,3.0f);
            
            if (fopAcM_wayBgCheck(this, 200.0f,500.0f) != 0 || field_0x710 == 0) {
                setActionMode(ACT_WAIT,0);
            }
        default:
            if (way_gake_check()) {
                speedF = 0;
                setActionMode(ACT_WAIT,0);
            } else {
                shape_angle.y = current.angle.y;
                
                if (fopAcM_searchPlayerDistance(this) <= l_HIO.field_0x14) {
                    setActionMode(ACT_ATTACK,0);
                }
            }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_FZ_c::executeMove() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/executeMove__8daE_FZ_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 806C19B8-806C19BC 000080 0004+00 0/1 0/0 0/0 .rodata          @4243 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4243 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x806C19B8, &lit_4243);
#pragma pop

/* 806BFA64-806BFB60 001204 00FC+00 1/1 0/0 0/0 .text            executeAttack__8daE_FZ_cFv */
#ifdef NONMATCHING
// float literals
void daE_FZ_c::executeAttack() {
    switch (mActionPhase) {
    case 0:
        cLib_addCalcAngleS2(&current.angle.y,fopAcM_searchPlayerAngleY(this),8,0x300);
        if (way_gake_check() == 0) {
            cLib_addCalc2(&speedF,l_HIO.field_0x20,0.7f,1.0f);
        } else {
            speedF = 0.0f;
        }
    default:
        shape_angle.y = current.angle.y;
        if (!(fopAcM_searchPlayerDistance(this) >= l_HIO.field_0x10)) {
            if (fopAcM_otherBgCheck(this,dComIfGp_getPlayer(0)) == 0) {
                return;
            }
        }
    }

    setActionMode(ACT_WAIT,0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_FZ_c::executeAttack() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/executeAttack__8daE_FZ_cFv.s"
}
#pragma pop
#endif

/* 806BFB60-806BFF94 001300 0434+00 2/1 0/0 0/0 .text            executeDamage__8daE_FZ_cFv */
#ifdef NONMATCHING
// float literals
void daE_FZ_c::executeDamage() {
  cXyz pos;
  pos.set(l_HIO.field_0x0c, l_HIO.field_0x0c, l_HIO.field_0x0c);

  switch(mActionPhase) {
  case 0:
    dComIfGp_particle_set(0x85b8,&current.pos,&shape_angle,&pos);
    dComIfGp_particle_set(0x85b9,&current.pos,&shape_angle,&pos);

    if (field_0x714 != 3) {
      field_0x564 = 25;
      fopAcM_createItemFromEnemyID(field_0x564,&current.pos,-1,-1,0,0,0,0);
    } else {
      if (cM_rnd() < 0.2f) {
        fopAcM_createItem(&current.pos,0,-1,-1,0,0,0);
      }
    }
    fopAcM_delete(this);
    break;
  case 1:
    f32 tmp = l_HIO.field_0x28; 
    speedF = tmp;
    field_0x6fc = tmp;
  case 5:
    mStts.SetWeight(118);
    current.angle.y < 0 ? field_0x704 = 0 : field_0x704 = 1;
    mActionPhase = 2;
  case 2:
    if (mObjAcch.ChkGroundHit() && dComIfG_Bgsp().GetPolyAtt0(mObjAcch.m_gnd) == 8) {
      tmp = 1.0f;
    } else {
      tmp = 0.3f;
    }

    cLib_addCalc0(&speedF,0.1f,tmp);

    if (field_0x704 == 0) {
      s16 value = 4096.0f - (4096.0f / field_0x6fc) * (field_0x6fc - speedF);
      shape_angle.y -= value;
    } else {
      s16 value = 4096.0f - (4096.0f / field_0x6fc) * (field_0x6fc - speedF);
      shape_angle.y += value;
    }

    if (mObjAcch.ChkWallHit()) {
      mLastWallHitAngle = mAcchCir.GetWallAngleY();
      setReflectAngle();
      mBoundSoundset();
    }

    if (speedF < 0.3f) {
      current.angle.y = shape_angle.y;
      mStts.SetWeight(100);
      setActionMode(ACT_WAIT,0);
    }
    break;
  case 3:
    mAngleFromPlayer = fopAcM_searchPlayerAngleY(this);
    if (current.angle.y < 0) {
      field_0x704 = 0;
    }
    else {
      field_0x704 = 1;
    }
    tmp = l_HIO.field_0x24;
    speedF = tmp;
    field_0x6fc = tmp;
    mActionPhase = 4;
  case 4:
    if (field_0x704 == 0) {
      s16 value = 4096.0f - (4096.0f / field_0x6fc) * (field_0x6fc - speedF);
      shape_angle.y -= value;
    }
    else {
      s16 value = 4096.0f - (4096.0f / field_0x6fc) * (field_0x6fc - speedF);
      shape_angle.y += value;
    }
    
    cLib_addCalcAngleS2(&current.angle.y,mAngleFromPlayer,1,512);
    cLib_addCalc0(&speedF,0.1f,0.1f);
    
    if (mObjAcch.ChkWallHit()) {
      mLastWallHitAngle = mAcchCir.GetWallAngleY();
      setReflectAngle();
      mBoundSoundset();
    }

    if (speedF < 0.2f) {
      current.angle.y = shape_angle.y;
      setActionMode(ACT_ATTACK,0);
    }
    break;
  case 6:
    mHealth = 0;
    if (field_0x710 == 1 || mObjAcch.ChkGroundHit()) {
      mActionPhase = 0;
    }
  }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_FZ_c::executeDamage() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/executeDamage__8daE_FZ_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 806C19BC-806C19C0 000084 0004+00 0/0 0/0 0/0 .rodata          @4322 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4322 = 4096.0f;
COMPILER_STRIP_GATE(0x806C19BC, &lit_4322);
#pragma pop

/* 806C19C0-806C19C4 000088 0004+00 0/0 0/0 0/0 .rodata          @4323 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4323 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x806C19C0, &lit_4323);
#pragma pop

/* 806C19C4-806C19C8 00008C 0004+00 0/2 0/0 0/0 .rodata          @4419 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4419 = 400.0f;
COMPILER_STRIP_GATE(0x806C19C4, &lit_4419);
#pragma pop

/* 806C19C8-806C19CC 000090 0004+00 0/1 0/0 0/0 .rodata          @4420 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4420 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x806C19C8, &lit_4420);
#pragma pop

/* 806C19CC-806C19D0 000094 0004+00 0/4 0/0 0/0 .rodata          @4421 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4421 = 60.0f;
COMPILER_STRIP_GATE(0x806C19CC, &lit_4421);
#pragma pop

/* 806BFF94-806C0224 001734 0290+00 1/1 0/0 0/0 .text            executeRollMove__8daE_FZ_cFv */
#ifdef NONMATCHING
// float literals
void daE_FZ_c::executeRollMove() {
    if (fopAcM_SearchByID(fopAcM_GetLinkId(this),&mpBlizzetaActor) == 0 || !mpBlizzetaActor) return;
    u32 model_no = static_cast<daB_YO_c*>(mpBlizzetaActor)->getModelNo();
    
    if (model_no < 4 || 6 < model_no) {
        fopAcM_delete(this);
        return;
    }

    cXyz pos;

    s16 roll_angle = static_cast<daB_YO_c*>(mpBlizzetaActor)->getFrizadRollAngle();
    f32 mode_rarius = static_cast<daB_YO_c*>(mpBlizzetaActor)->getModeRarius();

    mode_rarius = 100.0f + mode_rarius;
    if (mode_rarius < 400.0f)
        mode_rarius = 400.0f;

    switch (mActionPhase) {
    case 0:
        field_0x704 = 0;
        speedF = 0.0f;
        mRadiusBase = 0;
        mActionPhase = 1;
        field_0x710 = (20 - field_0x715) * 2;
    case 1:
        if (field_0x710 == 0) {
            cLib_chaseF(&mRadiusBase,0.0f,0.03f);
        }

        cLib_chaseAngleS(&field_0x704,1024,16);
        pos = mpBlizzetaActor->current.pos;

        pos.x += (f32)(mode_rarius * cM_ssin(roll_angle + field_0x715 * 0xccc));
        pos.z += (f32)(mode_rarius * cM_scos(roll_angle + field_0x715 * 0xccc));

        current.pos = pos;
        u32 frizad_attack = static_cast<daB_YO_c*>(mpBlizzetaActor)->getFrizadAttack();

        if (frizad_attack == 3) {
            mActionPhase = 2;
            speedF = 60.0f;
            current.angle.y = cLib_targetAngleY(&static_cast<daB_YO_c*>(mpBlizzetaActor)->current.pos,&current.pos);
        }
        break;
    case 2:
        cLib_chaseF(&mRadiusBase,1.0,0.1);
        cLib_chaseAngleS(&field_0x704,512,16);
        
        if (mObjAcch.ChkWallHit() || !mObjAcch.ChkGroundHit()) {
            setActionMode(ACT_DAMAGE,0);
            mCreature.startCreatureSound(Z2SE_EN_FZ_DEATH,0,-1);
            return;
        }

        if (mSph2.ChkAtHit()) {
            if ((fopAcM_GetName(mSph2.GetAtHitAc()) == PROC_ALINK) || mSph2.ChkAtShieldHit()) {
                setActionMode(ACT_DAMAGE,0);
                return;
            }
        }
    }

    shape_angle.y += field_0x704;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_FZ_c::executeRollMove() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/executeRollMove__8daE_FZ_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 806C19D0-806C19D4 000098 0004+00 0/2 0/0 0/0 .rodata          @4517 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4517 = 35.0f;
COMPILER_STRIP_GATE(0x806C19D0, &lit_4517);
#pragma pop

/* 806C0224-806C06DC 0019C4 04B8+00 1/1 0/0 0/0 .text            action__8daE_FZ_cFv */
#ifdef NONMATCHING
// close. stack wrong, missing one clrrwi instruction, float literals
void daE_FZ_c::action() {
    int linkSearch;

    if (field_0x714 == 1 && mObjAcch.ChkGroundHit()) {
        fopAcM_OffStatus(this,0x4000);
        field_0x714 = 0;
    }

    if (!fopAcM_otherBgCheck(this,dComIfGp_getPlayer(0))) {
        fopAcM_OnStatus(this,0);
        mAttentionInfo.mFlags |= 4;
    } else {
        fopAcM_OffStatus(this,0);
        mAttentionInfo.mFlags &= 0xfffffffb;
    }

    linkSearch = false;
    damage_check();

    switch (mActionMode) {
        case ACT_WAIT:
            executeWait();
            break;
        case ACT_MOVE:
            executeMove();
            break;
        case ACT_ATTACK:    
            executeAttack();
            linkSearch = 1;
            break;
        case ACT_DAMAGE:
            executeDamage();
            break;
        case ACT_ROLLMOVE:
            executeRollMove();
            linkSearch = 1;
    }
    
    mCreature.setLinkSearch(linkSearch);
    fopAcM_posMoveF(this,mStts.GetCCMoveP());
    field_0x714 == 3 ? mAcchCir.SetWall(35.0f,70.0f) : mAcchCir.SetWall(35.0f,60.0f);
    mObjAcch.CrrPos(dComIfG_Bgsp());

    if (1 < mHealth) {
        u32 speed = speedF;

        if (speed < 1)
            speed = 1;

        mCreature.startCreatureSoundLevel(Z2SE_EN_FZ_MOVE,speed,-1);
        
        for (int i = 0; i < 4; i++) {
            // missing clrrwi instruction here
            cMtx_YrotS((MtxP)calc_mtx,current.angle.y + (i * 0x4000));

            MtxPosition(&cXyz(0.0f,100.0f,70.0f), &field_0x67c[i]);
            field_0x67c[i] += current.pos;

            MtxPosition(&cXyz(0.0f,100.0f,40.0f), &field_0x6ac[i]);
            field_0x6ac[i] += current.pos;
        }

        if (1 < mHealth && mAcchCir.ChkWallHit()) {
            if (fopAcM_GetName(dComIfG_Bgsp().GetActorPointer(mAcchCir.GetBgIndex())) != PROC_BG) {
                dBgS_LinChk lin_chk;
                dBgS_LinChk lin_chk2;

                for (int i = 0; i < 2; i++) {
                    lin_chk.Set(&field_0x67c[i],&field_0x6ac[i], this);
                    lin_chk2.Set(&field_0x67c[i+2],&field_0x6ac[i+2], this);

                    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
                        if (dComIfG_Bgsp().LineCross(&lin_chk2)) {
                            deadnextSet(false);
                            break;
                        }
                    }
                }
            }
        }
        
        if (field_0x714 != 3) {
            if (mHealth > 1 && !mObjAcch.ChkGroundHit()) {
                dBgS_GndChk gnd_chk;
                cXyz pos;

                pos.set(current.pos);
                pos.y += 300.0f;
                gnd_chk.SetPos(&pos);
                pos.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
                
                if (pos.y != -1e+09f) {
                    field_0x710 = 0;

                    if (current.pos.y - pos.y > 400.0f && field_0x713 == 0) {
                        field_0x713 = 1;
                    }
                } else {
                    field_0x710 = 0xfa;
                    setActionMode(ACT_DAMAGE,6);
                }

                if (field_0x713 != 0) {
                    field_0x713++;

                    if (10 < field_0x713) {
                        setActionMode(ACT_DAMAGE,6);
                    }
                }
            } else {
                field_0x713 = 0;
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_FZ_c::action() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/action__8daE_FZ_cFv.s"
}
#pragma pop
#endif

/* 806C06DC-806C0760 001E7C 0084+00 2/2 0/0 0/0 .text            mtx_set__8daE_FZ_cFv */
void daE_FZ_c::mtx_set() {
  mDoMtx_stack_c::transS(current.pos.x,current.pos.y,current.pos.z);
  mDoMtx_stack_c::ZXYrotM(shape_angle);
  mDoMtx_stack_c::scaleM(l_HIO.field_0x0c,l_HIO.field_0x0c,l_HIO.field_0x0c);
  mDoMtx_stack_c::scaleM(mRadiusBase,mRadiusBase,mRadiusBase);
  mpModel->i_setBaseTRMtx(mDoMtx_stack_c::get());
}

/* ############################################################################################## */
/* 806C19D4-806C19D8 00009C 0004+00 0/1 0/0 0/0 .rodata          @4562 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4562 = 25.0f;
COMPILER_STRIP_GATE(0x806C19D4, &lit_4562);
#pragma pop

/* 806C0760-806C08C4 001F00 0164+00 1/1 0/0 0/0 .text            cc_set__8daE_FZ_cFv */
#ifdef NONMATCHING
// float literals
void daE_FZ_c::cc_set() {
    cXyz pos;
    cXyz pos2;

    pos.set(0.0f,60.0f,0.0f);
    mDoMtx_stack_c::multVec(&pos,&mEyePos);
    mAttentionInfo.mPosition = mEyePos;
    mAttentionInfo.mPosition.y += 25.0f;

    mDoMtx_stack_c::copy(mpModel->getBaseTRMtx());

    pos.set(0.0f,40.0f,0.0f);
    mDoMtx_stack_c::multVec(&pos,&pos2);

    mSph1.SetC(pos2);
    mSph1.SetR(mRadiusBase * 60.0f);

    dComIfG_Ccsp()->Set(&mSph1);
    
    mDoMtx_stack_c::copy(mpModel->getBaseTRMtx());

    pos.set(0.0f,25.0f,0.0f);
    mDoMtx_stack_c::multVec(&pos,&pos2);

    mSph2.SetC(pos2);
    mSph2.SetR(mRadiusBase * 40.0f);

    dComIfG_Ccsp()->Set(&mSph2);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_FZ_c::cc_set() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/cc_set__8daE_FZ_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 806C19D8-806C19DC 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4627 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4627 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x806C19D8, &lit_4627);
#pragma pop

/* 806C08C4-806C0B00 002064 023C+00 1/1 0/0 0/0 .text            execute__8daE_FZ_cFv */
#ifdef NONMATCHING
// float literals
s32 daE_FZ_c::execute() {
    if (field_0x714 == 2) {
        if (checkItemGet(IRONBALL,1) == 0) {
            return 1;
        }

        if (mAttentionInfo.field_0x0[2] == 0) {
            mAttentionInfo.field_0x0[2] = 69;
            fopAcM_SetGroup(this,2);
            #if DEBUG
            fopAcM_OnStatus(this,0);
            #endif
            mAttentionInfo.mFlags |= 4;
        }
    }

    if (field_0x710 != 0)
        field_0x710 -= 1;

    if (field_0x711 != 0)
        field_0x711 -= 1;

    if (field_0x712 != 0)
        field_0x712 -= 1;

    action();
    mtx_set();
    cc_set();

    mCreature.framework(0,dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    field_0x664 = current.pos - next.pos;
    field_0x664 *= FLOAT_LABEL(lit_4627);

    for (int i = 0; i < 3; i++) {
        field_0x71c[i] = dComIfGp_particle_set(field_0x71c[i],ice_name[i],&current.pos,0,0);
        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x71c[i]);

        if (emitter) {
            mDoMtx_stack_c::copy(field_0x5b4->getBaseTRMtx());
            mDoMtx_stack_c::transM(FLOAT_LABEL(lit_3804),FLOAT_LABEL(lit_3833),FLOAT_LABEL(lit_3804));
            emitter->setGlobalSRTMatrix(mDoMtx_stack_c::get());
            emitter->setParticleCallBackPtr(dPa_control_c::getParticleTracePCB());
            emitter->setUserWork((u32)(&field_0x664));
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 daE_FZ_c::execute() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/execute__8daE_FZ_cFv.s"
}
#pragma pop
#endif

/* 806C0B00-806C0B20 0022A0 0020+00 1/0 0/0 0/0 .text            daE_FZ_Execute__FP8daE_FZ_c */
static void daE_FZ_Execute(daE_FZ_c* i_this) {
    i_this->execute();
}

/* 806C0B20-806C0B8C 0022C0 006C+00 0/0 0/0 1/1 .text            demoDelete__8daE_FZ_cFv */
void daE_FZ_c::demoDelete() {
    for (int i = 0; i < 3; i++) {
        dComIfGp_particle_levelEmitterOnEventMove(field_0x71c[i]);
    }

    fopAcM_delete(this);
}

/* 806C0B8C-806C0B94 00232C 0008+00 1/0 0/0 0/0 .text            daE_FZ_IsDelete__FP8daE_FZ_c */
static bool daE_FZ_IsDelete(daE_FZ_c* i_this) {
    return true;
}

/* ############################################################################################## */
/* 806C19F4-806C19F4 0000BC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806C19F4 = "E_FZ";
#pragma pop

/* 806C0B94-806C0C08 002334 0074+00 1/1 0/0 0/0 .text            _delete__8daE_FZ_cFv */
s32 daE_FZ_c::_delete() {
    dComIfG_resDelete(&mPhaseReq,"E_FZ");

    if (field_0xc21 != 0) {
        data_806C1BA0[0] = 0;
    }

    if (heap) {
        mCreature.deleteObject();
    }

    return 1;
}

/* 806C0C08-806C0C28 0023A8 0020+00 1/0 0/0 0/0 .text            daE_FZ_Delete__FP8daE_FZ_c */
static void daE_FZ_Delete(daE_FZ_c* i_this) {
    i_this->_delete();
}

/* 806C0C28-806C0CB0 0023C8 0088+00 1/1 0/0 0/0 .text            CreateHeap__8daE_FZ_cFv */
s32 daE_FZ_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes("E_FZ", 3);
    mpModel = mDoExt_J3DModel__create(model_data, 0, 0x11020203);

    if (mpModel == 0) {
        return 0;
    }

    return mInvisibleModel.create(mpModel, 1) != 0 ? 1 : 0;
}

/* 806C0CB0-806C0CD0 002450 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
  return static_cast<daE_FZ_c*>(i_this)->CreateHeap();
}

/* ############################################################################################## */
/* 806C19DC-806C19E0 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4847 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4847 = -200.0f;
COMPILER_STRIP_GATE(0x806C19DC, &lit_4847);
#pragma pop

/* 806C19E0-806C19E4 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4848 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4848 = 30.0f;
COMPILER_STRIP_GATE(0x806C19E0, &lit_4848);
#pragma pop

/* 806C19E4-806C19E8 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4849 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4849 = 4.0f;
COMPILER_STRIP_GATE(0x806C19E4, &lit_4849);
#pragma pop

/* 806C19E8-806C19EC 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4850 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4850 = 20.0f;
COMPILER_STRIP_GATE(0x806C19E8, &lit_4850);
#pragma pop

/* 806C19EC-806C19F0 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4851 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4851 = -5.0f;
COMPILER_STRIP_GATE(0x806C19EC, &lit_4851);
#pragma pop

/* 806C19F0-806C19F4 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4852 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4852 = 0.5f;
COMPILER_STRIP_GATE(0x806C19F0, &lit_4852);
#pragma pop

/* 806C19F4-806C19F4 0000BC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806C19F9 = "E_fz";
#pragma pop

/* 806C0CD0-806C1208 002470 0538+00 1/1 0/0 0/0 .text            create__8daE_FZ_cFv */
#ifdef NONMATCHING
// float literals
s32 daE_FZ_c::create() {
  fopAcM_SetupActor(this,daE_FZ_c);

  s32 phase = dComIfG_resLoad(&mPhaseReq,"E_FZ");
  if (phase == cPhs_COMPLEATE_e) {
    if (!fopAcM_entrySolidHeap(this,useHeapInit,6480)) {
      return cPhs_ERROR_e;
    }
    if (data_806C1BA0[0] == 0) {
      data_806C1BA0[0] = 1;
      field_0xc21 = 1;
      l_HIO.field_0x04 = -1;
    }

    mAttentionInfo.mFlags = 4;
    mAttentionInfo.field_0x0[2] = 69;
    
    fopAcM_SetMtx(this,mpModel->getBaseTRMtx());
    fopAcM_SetMin(this,-200.0f,-200.0f,-200.0f);
    fopAcM_SetMax(this,200.0f,200.0f,200.0f);

    mStts.Init(100,0,this);
    mHealth = 80;
    field_0x560 = 80;

    field_0x714 = fopAcM_GetParam(this);
    field_0x715 = fopAcM_GetParam(this) >> 8;
    
    if (field_0x714 == 255)
        field_0x714 = 0;
    
    if (field_0x714 == 1 || field_0x714 == 3) {
      speed.y = cM_rndFX(10.0f) + 30.0f;
      f32 rng = cM_rndFX(1.0f);
      speedF = rng + 4.0f;
      field_0x6fc = rng + 4.0f;
      if (field_0x714 == 1) {
        fopAcM_OnStatus(this,fopAcM_STATUS_UNK_004000);
      }
    }

    mObjAcch.Set(&fopAcM_GetPosition_p(this),&fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, &fopAcM_GetSpeed_p(this), 0, 0);
    
    if (field_0x714 == 3) {
      mAcchCir.SetWall(35.0f,70.0f);
    }
    else {
      mAcchCir.SetWall(20.0f,60.0f);
    }

    mObjAcch.CrrPos(dComIfG_Bgsp());

    mSph1.Set(cc_fz_src);
    mSph1.SetStts(&mStts);

    mSph2.Set(cc_fz_at_src);
    mSph2.SetStts(&mStts);

    mCreature.init(&current.pos,&mEyePos,3,1);
    mCreature.setEnemyName("E_fz");

    mAtInfo.mpSound = &mCreature;
    mAtInfo.mPowerType = 1;

    mGravity = -5.0f;

    shape_angle.z = 0;
    shape_angle.x = 0;
    
    s16 random = cM_rndFX(10000.0f);
    shape_angle.y = random;
    current.angle.y = random;

    field_0x670.set(current.pos);
    
    for (int i = 0; i < 4; i++) {
      field_0x67c[i].set(current.pos);
    }

    if (field_0x714 == 2 && !checkItemGet(IRONBALL,1)) {
      mAttentionInfo.field_0x0[2] = 0;
      fopAcM_SetGroup(this,0);
      fopAcM_OffStatus(this,0);
      mAttentionInfo.mFlags &= 0xfffffffb;
    }

    if (field_0x714 == 3) {
      mRadiusBase = 0.0f;
      mAttentionInfo.mFlags &= 0xfffffffb;
      mSph2.SetAtType(AT_TYPE_CSTATUE_SWING);
      mSph2.SetAtSpl(dCcG_At_Spl_UNK_1);
      setActionMode(ACT_ROLLMOVE,0);
    } else {
      mSph2.SetAtMtrl(2);
      mRadiusBase = 1.0f;
      cM_rnd() < 0.5f ? setActionMode(ACT_WAIT,0) : setActionMode(ACT_MOVE,0);
    }

    mtx_set();
  }

  return phase;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 daE_FZ_c::create() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/create__8daE_FZ_cFv.s"
}
#pragma pop
#endif

/* 806C1208-806C1250 0029A8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 806C1250-806C1298 0029F0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 806C1298-806C12F4 002A38 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 806C12F4-806C1364 002A94 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 806C1364-806C13D4 002B04 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 806C13D4-806C13D8 002B74 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
asm void __ct__4cXyzFv() {
    /* empty function */
}

/* 806C13D8-806C13F8 002B78 0020+00 1/0 0/0 0/0 .text            daE_FZ_Create__FP8daE_FZ_c */
static void daE_FZ_Create(daE_FZ_c* i_this) {
    i_this->create();
}

/* 806C13F8-806C1440 002B98 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 806C1440-806C1488 002BE0 0048+00 2/1 0/0 0/0 .text            __dt__12daE_FZ_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_FZ_HIO_c::~daE_FZ_HIO_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/__dt__12daE_FZ_HIO_cFv.s"
}
#pragma pop

/* 806C1488-806C14C4 002C28 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_fz_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_e_fz_cpp() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/__sinit_d_a_e_fz_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806C1488, __sinit_d_a_e_fz_cpp);
#pragma pop

/* 806C14C4-806C14CC 002C64 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_806C14C4() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/func_806C14C4.s"
}
#pragma pop

/* 806C14CC-806C14D4 002C6C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_806C14CC() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/func_806C14CC.s"
}
#pragma pop

/* 806C14D4-806C18E8 002C74 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
#ifdef NONMATCHING
// gave up on this one, it's a mess. 
// it appears to be actually defined in f_op_actor header and is in ~60 enemy actor TUs
// so needs to be solved eventually
static int setMidnaBindEffect(fopEn_enemy_c* i_actorP, Z2CreatureEnemy* i_creatureP, cXyz* param_2,
                                   cXyz* param_3) {
  int ret;
  cXyz pos3;
  daPy_py_c* player_actor = daPy_getPlayerActorClass();
  
  if (player_actor->getMidnaActor() && player_actor->checkWolfLock(i_actorP)) {
    cXyz pos;
    bool darkworld_check = dKy_darkworld_check() != false;
    
    if (i_actorP->getMidnaBindMode() == 0) {
      i_actorP->setMidnaBindMode(1);

      csXyz s_pos;
      PSMTXCopy(player_actor->getMidnaActor()->getMtxHairTop(),mDoMtx_stack_c::get());
      mDoMtx_stack_c::multVec(&cXyz(100.0f,0.0f,0.0f),&pos3);

      pos = pos3 - *param_2;

      s_pos.y = cM_atan2s(pos.x,pos.z);
      s_pos.x = -cM_atan2s(pos.y,JMAFastSqrt(pos.x * pos.x + pos.z * pos.z));
      s_pos.z = 0;

      s32 room_no = fopAcM_GetRoomNo(i_actorP);

      JPABaseEmitter* emitter = dComIfGp_particle_set(
        0x29b,
        param_3,
        &i_actorP->tevStr,
        &s_pos,
        param_3,
        0xff,
        0,
        room_no,
        &e_prim[darkworld_check],
        &e_env[darkworld_check],
        0
      );

      if (emitter) {
        emitter->setGlobalParticleHeightScale(0.01f * pos.abs());
      }

      room_no = fopAcM_GetRoomNo(i_actorP);

      dComIfGp_particle_set(
        0x29c,
        param_3,
        &i_actorP->tevStr,
        &i_actorP->shape_angle,
        param_3,
        0xff,
        0,
        room_no,
        &e_prim[darkworld_check],
        &e_env[darkworld_check],
        0
      );
      
      i_creatureP->startCreatureSound(Z2SE_MIDNA_BIND_LOCK_ON, 0, -1);
    }
    int i = 0;
    int j = 0;
    int k = 0;
    do {
      u32* bind_id = i_actorP->getMidnaBindID(k);
      s32 room_no = fopAcM_GetRoomNo(i_actorP);

      *bind_id = dComIfGp_particle_set(
        *bind_id,
        eff_id[i],
        param_2,
        &i_actorP->tevStr,
        &i_actorP->shape_angle,
        param_3,
        0xff,
        0,
        room_no,
        &e_prim[darkworld_check],
        &e_env[darkworld_check],
        0
      );

      i += 1;
      j += 2;
      k += 4;
    } while( i < 3);

    i_creatureP->startCreatureSound(Z2SE_MIDNA_BIND_LOCK_SUS, 0, -1);
    ret = 1;
  } else {
    i_actorP->setMidnaBindMode(0);
    ret = 0;
  }

  return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz.s"
}
#pragma pop
#endif

/* 806C18E8-806C1924 003088 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fz/d_a_e_fz/__dt__4cXyzFv.s"
}
#pragma pop

/* 806C19F4-806C19F4 0000BC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
