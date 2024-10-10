/**
 * @file d_a_e_gb.cpp
 * 
*/

#include "d/actor/d_a_e_gb.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"
#include "d/actor/d_a_obj_smallkey.h"



//
// Forward References:
//

extern "C" void __ct__12daE_GB_HIO_cFv();
extern "C" static void head_anm_init__FP10e_gb_classifUcf();
extern "C" static void body_anm_init__FP10e_gb_classifUcf();
extern "C" static void daE_GB_Draw__FP10e_gb_class();
extern "C" static void e_gb_wait__FP10e_gb_class();
extern "C" static void e_gb_attack_1__FP10e_gb_class();
extern "C" static void e_gb_attack_2__FP10e_gb_class();
extern "C" static void e_gb_damage__FP10e_gb_class();
extern "C" static void e_gb_end__FP10e_gb_class();
extern "C" static void e_gb_start__FP10e_gb_class();
extern "C" static void kuki_control1__FP10e_gb_class();
extern "C" static void kuki_control2__FP10e_gb_class();
extern "C" static void kuki_control3__FP10e_gb_class();
extern "C" static void s_b_sub__FPvPv();
extern "C" static void damage_check__FP10e_gb_class();
extern "C" static void action__FP10e_gb_class();
extern "C" static void e_gf_wait__FP10e_gb_class();
extern "C" static void e_gf_chance__FP10e_gb_class();
extern "C" static void e_gf_eatbomb__FP10e_gb_class();
extern "C" static void e_gf_end__FP10e_gb_class();
extern "C" static void damage_check2__FP10e_gb_class();
extern "C" static void action2__FP10e_gb_class();
extern "C" static void cam_3d_morf__FP10e_gb_classf();
extern "C" static void demo_camera__FP10e_gb_class();
extern "C" static void daE_GB_Execute__FP10e_gb_class();
extern "C" static bool daE_GB_IsDelete__FP10e_gb_class();
extern "C" static void daE_GB_Delete__FP10e_gb_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daE_GB_Create__FP10fopAc_ac_c();
extern "C" void __ct__10e_gb_classFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_GB_HIO_cFv();
extern "C" void __sinit_d_a_e_gb_cpp();
extern "C" static void func_806C701C();
extern "C" static void func_806C7024();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" void setPos__7daKey_cF4cXyz();
extern "C" extern char const* const d_a_e_gb__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotS__FPA4_fs();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void entryDL__14mDoExt_McaMorfFv();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void dEv_defaultSkipProc__FPvi();
extern "C" void dEv_noFinishSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void GetAtHitObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" bool checkBoomerangChargeTime__9daPy_py_cFv();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
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
extern "C" void MtxTrans__FfffUc();
extern "C" void MtxScale__FfffUc();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void func_802807E0();
extern "C" void func_80280808();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void setBattleBgmOff__8Z2SeqMgrFb();
extern "C" void stopAnime__10Z2CreatureFv();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_20();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_20();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
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
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();
extern "C" void actionWaitInit__7daKey_cFv();

//
// Declarations:
//

/* ############################################################################################## */
/* 806C74E8-806C74EC 000000 0004+00 20/20 0/0 0/0 .rodata          @3906 */
SECTION_RODATA static f32 const lit_3906 = 100.0f;
COMPILER_STRIP_GATE(0x806C74E8, &lit_3906);

/* 806C74EC-806C74F0 000004 0004+00 4/24 0/0 0/0 .rodata          @3907 */
SECTION_RODATA static u8 const lit_3907[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x806C74EC, &lit_3907);

/* 806C74F0-806C74F8 000008 0004+04 3/18 0/0 0/0 .rodata          @3908 */
SECTION_RODATA static f32 const lit_3908[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806C74F0, &lit_3908);

/* 806C74F8-806C7500 000010 0008+00 0/5 0/0 0/0 .rodata          @3909 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3909[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806C74F8, &lit_3909);
#pragma pop

/* 806C7500-806C7508 000018 0008+00 0/5 0/0 0/0 .rodata          @3910 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3910[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806C7500, &lit_3910);
#pragma pop

/* 806C7508-806C7510 000020 0008+00 0/5 0/0 0/0 .rodata          @3911 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3911[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806C7508, &lit_3911);
#pragma pop

/* 806C7510-806C7514 000028 0004+00 0/1 0/0 0/0 .rodata          @3912 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3912 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x806C7510, &lit_3912);
#pragma pop

/* 806C7514-806C7518 00002C 0004+00 1/1 0/0 0/0 .rodata          @3927 */
SECTION_RODATA static f32 const lit_3927 = 65.0f;
COMPILER_STRIP_GATE(0x806C7514, &lit_3927);

/* 806C76C4-806C76D0 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 806C76D0-806C76E4 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 806C76E4-806C76EC 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3785 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 806C76EC-806C76F4 000028 0008+00 0/1 0/0 0/0 .data            e_env$3786 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 806C76F4-806C76FC 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3794 */
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

/* 806C76FC-806C7700 000038 0004+00 1/1 0/0 0/0 .data            eno$4381 */
SECTION_DATA static u8 eno_4381[4] = {
    0x83,
    0x2F,
    0x83,
    0x30,
};

/* 806C7700-806C7724 00003C 0022+02 0/1 0/0 0/0 .data            pow_xa$4443 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 pow_xa[34 + 2 /* padding */] = {
    0xD0,
    0x00,
    0xD8,
    0x00,
    0xE0,
    0x00,
    0xE8,
    0x00,
    0xF0,
    0x00,
    0x00,
    0x00,
    0x10,
    0x00,
    0x18,
    0x00,
    0x20,
    0x00,
    0x28,
    0x00,
    0x30,
    0x00,
    0x38,
    0x00,
    0x30,
    0x00,
    0x20,
    0x00,
    0x10,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 806C7724-806C7748 000060 0022+02 0/1 0/0 0/0 .data            pow_xa_chance$4444 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 pow_xa_chance[34 + 2 /* padding */] = {
    0xC8,
    0x00,
    0xD0,
    0x00,
    0xD8,
    0x00,
    0xE0,
    0x00,
    0xE8,
    0x00,
    0xF0,
    0x00,
    0xF8,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x08,
    0x00,
    0x00,
    0x00,
    0x08,
    0x00,
    0x00,
    0x00,
    0x08,
    0x00,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 806C7748-806C778C 000084 0044+00 0/1 0/0 0/0 .data            wav_d$4445 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 wav_d[68] = {
    0x00, 0x00, 0x00, 0x00, 0x3E, 0x4C, 0xCC, 0xCD, 0x3E, 0xCC, 0xCC, 0xCD, 0x3F, 0x00,
    0x00, 0x00, 0x3F, 0x19, 0x99, 0x9A, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80,
    0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x19, 0x99, 0x9A,
    0x3E, 0xCC, 0xCC, 0xCD, 0x3E, 0x4C, 0xCC, 0xCD, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 806C778C-806C77B8 -00001 002C+00 1/1 0/0 0/0 .data            @4803 */
SECTION_DATA static void* lit_4803[11] = {
    (void*)(((char*)action__FP10e_gb_class) + 0x174),
    (void*)(((char*)action__FP10e_gb_class) + 0x18C),
    (void*)(((char*)action__FP10e_gb_class) + 0x1A8),
    (void*)(((char*)action__FP10e_gb_class) + 0x1C8),
    (void*)(((char*)action__FP10e_gb_class) + 0x21C),
    (void*)(((char*)action__FP10e_gb_class) + 0x1E4),
    (void*)(((char*)action__FP10e_gb_class) + 0x21C),
    (void*)(((char*)action__FP10e_gb_class) + 0x21C),
    (void*)(((char*)action__FP10e_gb_class) + 0x21C),
    (void*)(((char*)action__FP10e_gb_class) + 0x21C),
    (void*)(((char*)action__FP10e_gb_class) + 0x200),
};

/* 806C77B8-806C77C4 0000F4 000A+02 1/1 0/0 0/0 .data            eno$4864 */
SECTION_DATA static u8 eno_4864[10 + 2 /* padding */] = {
    0x82,
    0xE8,
    0x82,
    0xE9,
    0x82,
    0xEA,
    0x82,
    0xEB,
    0x82,
    0xEC,
    /* padding */
    0x00,
    0x00,
};

/* 806C77C4-806C77C8 000100 0004+00 1/1 0/0 0/0 .data            key_eno$5459 */
SECTION_DATA static u8 key_eno[4] = {
    0x82,
    0x7A,
    0x82,
    0x7B,
};

/* 806C77C8-806C7808 000104 0040+00 1/1 0/0 0/0 .data            head_cc_sph_src$5811 */
static dCcD_SrcSph head_cc_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x2, 0xd}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_HARD_BODY, 0x0, 0x1, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_STONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 806C7808-806C784C 000144 0044+00 1/1 0/0 0/0 .data            body_cyl_src$5812 */
static dCcD_SrcCyl body_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        30.0f, // mRadius
        20.0f // mHeight
    } // mCyl
};

/* 806C784C-806C786C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_GB_Method */
static actor_method_class l_daE_GB_Method = {
    (process_method_func)daE_GB_Create__FP10fopAc_ac_c,
    (process_method_func)daE_GB_Delete__FP10e_gb_class,
    (process_method_func)daE_GB_Execute__FP10e_gb_class,
    (process_method_func)daE_GB_IsDelete__FP10e_gb_class,
    (process_method_func)daE_GB_Draw__FP10e_gb_class,
};

/* 806C786C-806C789C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_GB */
extern actor_process_profile_definition g_profile_E_GB = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_GB,              // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(e_gb_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  139,                    // mPriority
  &l_daE_GB_Method,       // sub_method
  0x00040000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 806C789C-806C78A8 0001D8 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806C78A8-806C78B4 0001E4 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806C78B4-806C78C0 0001F0 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 806C78C0-806C78E4 0001FC 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806C7024,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806C701C,
};

/* 806C78E4-806C78F0 000220 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 806C78F0-806C78FC 00022C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806C78FC-806C7908 000238 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806C7908-806C7914 000244 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 806C7914-806C7920 000250 000C+00 2/2 0/0 0/0 .data            __vt__12daE_GB_HIO_c */
SECTION_DATA extern void* __vt__12daE_GB_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_GB_HIO_cFv,
};

/* 806C1CEC-806C1D3C 0000EC 0050+00 1/1 0/0 0/0 .text            __ct__12daE_GB_HIO_cFv */
daE_GB_HIO_c::daE_GB_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C7518-806C751C 000030 0004+00 3/9 0/0 0/0 .rodata          @3941 */
SECTION_RODATA static f32 const lit_3941 = -1.0f;
COMPILER_STRIP_GATE(0x806C7518, &lit_3941);

/* 806C76B8-806C76B8 0001D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806C76B8 = "E_gb";
#pragma pop

/* 806C1D3C-806C1DEC 00013C 00B0+00 7/7 0/0 0/0 .text            head_anm_init__FP10e_gb_classifUcf
 */
static void head_anm_init(e_gb_class* param_0, int param_1, f32 param_2, u8 param_3,
                              f32 param_4) {
    // NONMATCHING
}

/* 806C1DEC-806C1E9C 0001EC 00B0+00 5/5 0/0 0/0 .text            body_anm_init__FP10e_gb_classifUcf
 */
static void body_anm_init(e_gb_class* param_0, int param_1, f32 param_2, u8 param_3,
                              f32 param_4) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C751C-806C7520 000034 0004+00 0/1 0/0 0/0 .rodata          @4012 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4012 = 1400.0f;
COMPILER_STRIP_GATE(0x806C751C, &lit_4012);
#pragma pop

/* 806C1E9C-806C2078 00029C 01DC+00 1/0 0/0 0/0 .text            daE_GB_Draw__FP10e_gb_class */
static void daE_GB_Draw(e_gb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C7520-806C7524 000038 0004+00 0/4 0/0 0/0 .rodata          @4108 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4108 = 3.0f;
COMPILER_STRIP_GATE(0x806C7520, &lit_4108);
#pragma pop

/* 806C7524-806C7528 00003C 0004+00 0/6 0/0 0/0 .rodata          @4109 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4109 = 10.0f;
COMPILER_STRIP_GATE(0x806C7524, &lit_4109);
#pragma pop

/* 806C7528-806C752C 000040 0004+00 0/2 0/0 0/0 .rodata          @4110 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4110 = 1000.0f;
COMPILER_STRIP_GATE(0x806C7528, &lit_4110);
#pragma pop

/* 806C752C-806C7530 000044 0004+00 0/5 0/0 0/0 .rodata          @4111 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4111 = 30.0f;
COMPILER_STRIP_GATE(0x806C752C, &lit_4111);
#pragma pop

/* 806C7530-806C7534 000048 0004+00 0/2 0/0 0/0 .rodata          @4112 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4112 = 450.0f;
COMPILER_STRIP_GATE(0x806C7530, &lit_4112);
#pragma pop

/* 806C7534-806C7538 00004C 0004+00 0/2 0/0 0/0 .rodata          @4113 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4113 = 200.0f;
COMPILER_STRIP_GATE(0x806C7534, &lit_4113);
#pragma pop

/* 806C7538-806C753C 000050 0004+00 0/1 0/0 0/0 .rodata          @4114 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4114 = 1500.0f;
COMPILER_STRIP_GATE(0x806C7538, &lit_4114);
#pragma pop

/* 806C753C-806C7540 000054 0004+00 0/5 0/0 0/0 .rodata          @4115 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4115 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x806C753C, &lit_4115);
#pragma pop

/* 806C7540-806C7548 000058 0004+04 0/3 0/0 0/0 .rodata          @4116 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4116[1 + 1 /* padding */] = {
    1.0f / 20.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806C7540, &lit_4116);
#pragma pop

/* 806C7548-806C7550 000060 0008+00 0/2 0/0 0/0 .rodata          @4118 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4118[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806C7548, &lit_4118);
#pragma pop

/* 806C7928-806C792C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_806C7928[4];

/* 806C792C-806C7938 00000C 000C+00 1/1 0/0 0/0 .bss             @3922 */
static u8 lit_3922[12];

/* 806C7938-806C7958 000018 0020+00 6/6 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[32];

/* 806C2078-806C2560 000478 04E8+00 1/1 0/0 0/0 .text            e_gb_wait__FP10e_gb_class */
static void e_gb_wait(e_gb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C7550-806C7554 000068 0004+00 0/5 0/0 0/0 .rodata          @4217 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4217 = 20.0f;
COMPILER_STRIP_GATE(0x806C7550, &lit_4217);
#pragma pop

/* 806C7554-806C7558 00006C 0004+00 0/1 0/0 0/0 .rodata          @4218 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4218 = 1200.0f;
COMPILER_STRIP_GATE(0x806C7554, &lit_4218);
#pragma pop

/* 806C7558-806C755C 000070 0004+00 0/3 0/0 0/0 .rodata          @4219 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4219 = 0.5f;
COMPILER_STRIP_GATE(0x806C7558, &lit_4219);
#pragma pop

/* 806C755C-806C7560 000074 0004+00 0/7 0/0 0/0 .rodata          @4220 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4220 = 5.0f;
COMPILER_STRIP_GATE(0x806C755C, &lit_4220);
#pragma pop

/* 806C7560-806C7564 000078 0004+00 0/2 0/0 0/0 .rodata          @4221 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4221 = 3000.0f;
COMPILER_STRIP_GATE(0x806C7560, &lit_4221);
#pragma pop

/* 806C7564-806C7568 00007C 0004+00 0/7 0/0 0/0 .rodata          @4222 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4222 = 2.0f;
COMPILER_STRIP_GATE(0x806C7564, &lit_4222);
#pragma pop

/* 806C7568-806C756C 000080 0004+00 0/3 0/0 0/0 .rodata          @4223 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4223 = -30.0f;
COMPILER_STRIP_GATE(0x806C7568, &lit_4223);
#pragma pop

/* 806C2560-806C2AB0 000960 0550+00 1/1 0/0 0/0 .text            e_gb_attack_1__FP10e_gb_class */
static void e_gb_attack_1(e_gb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C756C-806C7570 000084 0004+00 0/1 0/0 0/0 .rodata          @4326 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4326 = 49.0f;
COMPILER_STRIP_GATE(0x806C756C, &lit_4326);
#pragma pop

/* 806C7570-806C7574 000088 0004+00 0/1 0/0 0/0 .rodata          @4327 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4327 = 16.0f;
COMPILER_STRIP_GATE(0x806C7570, &lit_4327);
#pragma pop

/* 806C7574-806C7578 00008C 0004+00 0/1 0/0 0/0 .rodata          @4328 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4328 = 6.0f;
COMPILER_STRIP_GATE(0x806C7574, &lit_4328);
#pragma pop

/* 806C7578-806C757C 000090 0004+00 0/3 0/0 0/0 .rodata          @4329 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4329 = 50.0f;
COMPILER_STRIP_GATE(0x806C7578, &lit_4329);
#pragma pop

/* 806C757C-806C7580 000094 0004+00 0/5 0/0 0/0 .rodata          @4330 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4330 = 150.0f;
COMPILER_STRIP_GATE(0x806C757C, &lit_4330);
#pragma pop

/* 806C7580-806C7584 000098 0004+00 0/1 0/0 0/0 .rodata          @4331 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4331 = 17.0f / 10.0f;
COMPILER_STRIP_GATE(0x806C7580, &lit_4331);
#pragma pop

/* 806C2AB0-806C2FC0 000EB0 0510+00 1/1 0/0 0/0 .text            e_gb_attack_2__FP10e_gb_class */
static void e_gb_attack_2(e_gb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C7584-806C7588 00009C 0004+00 0/1 0/0 0/0 .rodata          @4367 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4367 = 800.0f;
COMPILER_STRIP_GATE(0x806C7584, &lit_4367);
#pragma pop

/* 806C7588-806C7590 0000A0 0004+04 0/2 0/0 0/0 .rodata          @4368 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4368[1 + 1 /* padding */] = {
    1.0f / 5.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806C7588, &lit_4368);
#pragma pop

/* 806C2FC0-806C3194 0013C0 01D4+00 1/1 0/0 0/0 .text            e_gb_damage__FP10e_gb_class */
static void e_gb_damage(e_gb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C7590-806C7598 0000A8 0008+00 0/2 0/0 0/0 .rodata          @4415 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4415[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806C7590, &lit_4415);
#pragma pop

/* 806C3194-806C33C8 001594 0234+00 1/1 0/0 0/0 .text            e_gb_end__FP10e_gb_class */
static void e_gb_end(e_gb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C7598-806C759C 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4434 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4434 = -6112.0f;
COMPILER_STRIP_GATE(0x806C7598, &lit_4434);
#pragma pop

/* 806C759C-806C75A0 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4435 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4435 = 4520.0f;
COMPILER_STRIP_GATE(0x806C759C, &lit_4435);
#pragma pop

/* 806C75A0-806C75A4 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4436 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4436 = 10800.0f;
COMPILER_STRIP_GATE(0x806C75A0, &lit_4436);
#pragma pop

/* 806C75A4-806C75A8 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4437 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4437 = -5450.0f;
COMPILER_STRIP_GATE(0x806C75A4, &lit_4437);
#pragma pop

/* 806C75A8-806C75AC 0000C0 0004+00 0/2 0/0 0/0 .rodata          @4438 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4438 = 500.0f;
COMPILER_STRIP_GATE(0x806C75A8, &lit_4438);
#pragma pop

/* 806C75AC-806C75B0 0000C4 0004+00 0/2 0/0 0/0 .rodata          @4439 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4439 = 80.0f;
COMPILER_STRIP_GATE(0x806C75AC, &lit_4439);
#pragma pop

/* 806C33C8-806C3558 0017C8 0190+00 1/1 0/0 0/0 .text            e_gb_start__FP10e_gb_class */
static void e_gb_start(e_gb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C75B0-806C75B4 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4533 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4533 = -200.0f;
COMPILER_STRIP_GATE(0x806C75B0, &lit_4533);
#pragma pop

/* 806C75B4-806C75B8 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4534 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4534 = 0x3D0F5C29;
COMPILER_STRIP_GATE(0x806C75B4, &lit_4534);
#pragma pop

/* 806C75B8-806C75BC 0000D0 0004+00 0/2 0/0 0/0 .rodata          @4535 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4535 = 60.0f;
COMPILER_STRIP_GATE(0x806C75B8, &lit_4535);
#pragma pop

/* 806C3558-806C3904 001958 03AC+00 1/1 0/0 0/0 .text            kuki_control1__FP10e_gb_class */
static void kuki_control1(e_gb_class* param_0) {
    // NONMATCHING
}

/* 806C3904-806C3A78 001D04 0174+00 1/1 0/0 0/0 .text            kuki_control2__FP10e_gb_class */
static void kuki_control2(e_gb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C75BC-806C75C0 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4612 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4612 = 17.0f;
COMPILER_STRIP_GATE(0x806C75BC, &lit_4612);
#pragma pop

/* 806C3A78-806C3C44 001E78 01CC+00 1/1 0/0 0/0 .text            kuki_control3__FP10e_gb_class */
static void kuki_control3(e_gb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C75C0-806C75C4 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4650 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4650 = 110.0f;
COMPILER_STRIP_GATE(0x806C75C0, &lit_4650);
#pragma pop

/* 806C3C44-806C3D20 002044 00DC+00 1/1 0/0 0/0 .text            s_b_sub__FPvPv */
static void s_b_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 806C3D20-806C3F0C 002120 01EC+00 1/1 0/0 0/0 .text            damage_check__FP10e_gb_class */
static void damage_check(e_gb_class* param_0) {
    // NONMATCHING
}

/* 806C3F0C-806C44F8 00230C 05EC+00 2/1 0/0 0/0 .text            action__FP10e_gb_class */
static void action(e_gb_class* param_0) {
    // NONMATCHING
}

/* 806C44F8-806C451C 0028F8 0024+00 1/1 0/0 0/0 .text            e_gf_wait__FP10e_gb_class */
static void e_gf_wait(e_gb_class* param_0) {
    // NONMATCHING
}

/* 806C451C-806C4688 00291C 016C+00 1/1 0/0 0/0 .text            e_gf_chance__FP10e_gb_class */
static void e_gf_chance(e_gb_class* param_0) {
    // NONMATCHING
}

/* 806C4688-806C48EC 002A88 0264+00 1/1 0/0 0/0 .text            e_gf_eatbomb__FP10e_gb_class */
static void e_gf_eatbomb(e_gb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C75C4-806C75C8 0000DC 0004+00 0/0 0/0 0/0 .rodata          @4802 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4802 = 35.0f;
COMPILER_STRIP_GATE(0x806C75C4, &lit_4802);
#pragma pop

/* 806C75C8-806C75CC 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4979 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4979 = 4.0f;
COMPILER_STRIP_GATE(0x806C75C8, &lit_4979);
#pragma pop

/* 806C75CC-806C75D0 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4980 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4980 = -6.0f;
COMPILER_STRIP_GATE(0x806C75CC, &lit_4980);
#pragma pop

/* 806C48EC-806C4AB4 002CEC 01C8+00 1/1 0/0 0/0 .text            e_gf_end__FP10e_gb_class */
static void e_gf_end(e_gb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C75D0-806C75D4 0000E8 0004+00 0/1 0/0 0/0 .rodata          @5039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5039 = 47.0f;
COMPILER_STRIP_GATE(0x806C75D0, &lit_5039);
#pragma pop

/* 806C4AB4-806C4CC4 002EB4 0210+00 1/1 0/0 0/0 .text            damage_check2__FP10e_gb_class */
static void damage_check2(e_gb_class* param_0) {
    // NONMATCHING
}

/* 806C4CC4-806C4E28 0030C4 0164+00 1/1 0/0 0/0 .text            action2__FP10e_gb_class */
static void action2(e_gb_class* param_0) {
    // NONMATCHING
}

/* 806C4E28-806C4F0C 003228 00E4+00 1/1 0/0 0/0 .text            cam_3d_morf__FP10e_gb_classf */
static void cam_3d_morf(e_gb_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C75D4-806C75D8 0000EC 0004+00 0/1 0/0 0/0 .rodata          @5351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5351 = 55.0f;
COMPILER_STRIP_GATE(0x806C75D4, &lit_5351);
#pragma pop

/* 806C75D8-806C75DC 0000F0 0004+00 0/1 0/0 0/0 .rodata          @5352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5352 = -5750.0f;
COMPILER_STRIP_GATE(0x806C75D8, &lit_5352);
#pragma pop

/* 806C75DC-806C75E0 0000F4 0004+00 0/1 0/0 0/0 .rodata          @5353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5353 = 4410.0f;
COMPILER_STRIP_GATE(0x806C75DC, &lit_5353);
#pragma pop

/* 806C75E0-806C75E4 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5354 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5354 = 10684.0f;
COMPILER_STRIP_GATE(0x806C75E0, &lit_5354);
#pragma pop

/* 806C75E4-806C75E8 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5355 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5355 = -5689.0f;
COMPILER_STRIP_GATE(0x806C75E4, &lit_5355);
#pragma pop

/* 806C75E8-806C75EC 000100 0004+00 0/1 0/0 0/0 .rodata          @5356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5356 = 4747.0f;
COMPILER_STRIP_GATE(0x806C75E8, &lit_5356);
#pragma pop

/* 806C75EC-806C75F0 000104 0004+00 0/1 0/0 0/0 .rodata          @5357 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5357 = 15000.0f;
COMPILER_STRIP_GATE(0x806C75EC, &lit_5357);
#pragma pop

/* 806C75F0-806C75F4 000108 0004+00 0/1 0/0 0/0 .rodata          @5358 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5358 = -5700.0f;
COMPILER_STRIP_GATE(0x806C75F0, &lit_5358);
#pragma pop

/* 806C75F4-806C75F8 00010C 0004+00 0/1 0/0 0/0 .rodata          @5359 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5359 = 4740.0f;
COMPILER_STRIP_GATE(0x806C75F4, &lit_5359);
#pragma pop

/* 806C75F8-806C75FC 000110 0004+00 0/1 0/0 0/0 .rodata          @5360 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5360 = 14644.0f;
COMPILER_STRIP_GATE(0x806C75F8, &lit_5360);
#pragma pop

/* 806C75FC-806C7600 000114 0004+00 0/1 0/0 0/0 .rodata          @5361 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5361 = 14643.0f;
COMPILER_STRIP_GATE(0x806C75FC, &lit_5361);
#pragma pop

/* 806C7600-806C7604 000118 0004+00 0/1 0/0 0/0 .rodata          @5362 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5362 = -5723.0f;
COMPILER_STRIP_GATE(0x806C7600, &lit_5362);
#pragma pop

/* 806C7604-806C7608 00011C 0004+00 0/1 0/0 0/0 .rodata          @5363 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5363 = 4733.0f;
COMPILER_STRIP_GATE(0x806C7604, &lit_5363);
#pragma pop

/* 806C7608-806C760C 000120 0004+00 0/1 0/0 0/0 .rodata          @5364 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5364 = 14293.0f;
COMPILER_STRIP_GATE(0x806C7608, &lit_5364);
#pragma pop

/* 806C760C-806C7610 000124 0004+00 0/1 0/0 0/0 .rodata          @5365 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5365 = 4350.0f;
COMPILER_STRIP_GATE(0x806C760C, &lit_5365);
#pragma pop

/* 806C7610-806C7614 000128 0004+00 0/1 0/0 0/0 .rodata          @5366 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5366 = 9670.0f;
COMPILER_STRIP_GATE(0x806C7610, &lit_5366);
#pragma pop

/* 806C7614-806C7618 00012C 0004+00 0/1 0/0 0/0 .rodata          @5367 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5367 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x806C7614, &lit_5367);
#pragma pop

/* 806C7618-806C761C 000130 0004+00 0/1 0/0 0/0 .rodata          @5368 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5368 = 0x3A03126F;
COMPILER_STRIP_GATE(0x806C7618, &lit_5368);
#pragma pop

/* 806C761C-806C7620 000134 0004+00 0/1 0/0 0/0 .rodata          @5369 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5369 = -5690.0f;
COMPILER_STRIP_GATE(0x806C761C, &lit_5369);
#pragma pop

/* 806C7620-806C7624 000138 0004+00 0/1 0/0 0/0 .rodata          @5370 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5370 = 4432.0f;
COMPILER_STRIP_GATE(0x806C7620, &lit_5370);
#pragma pop

/* 806C7624-806C7628 00013C 0004+00 0/1 0/0 0/0 .rodata          @5371 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5371 = 9610.0f;
COMPILER_STRIP_GATE(0x806C7624, &lit_5371);
#pragma pop

/* 806C7628-806C762C 000140 0004+00 0/1 0/0 0/0 .rodata          @5372 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5372 = -5709.0f;
COMPILER_STRIP_GATE(0x806C7628, &lit_5372);
#pragma pop

/* 806C762C-806C7630 000144 0004+00 0/1 0/0 0/0 .rodata          @5373 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5373 = 4445.0f;
COMPILER_STRIP_GATE(0x806C762C, &lit_5373);
#pragma pop

/* 806C7630-806C7634 000148 0004+00 0/1 0/0 0/0 .rodata          @5374 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5374 = 9961.0f;
COMPILER_STRIP_GATE(0x806C7630, &lit_5374);
#pragma pop

/* 806C7634-806C7638 00014C 0004+00 0/1 0/0 0/0 .rodata          @5375 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5375 = -5741.0f;
COMPILER_STRIP_GATE(0x806C7634, &lit_5375);
#pragma pop

/* 806C7638-806C763C 000150 0004+00 0/1 0/0 0/0 .rodata          @5376 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5376 = 10530.0f;
COMPILER_STRIP_GATE(0x806C7638, &lit_5376);
#pragma pop

/* 806C763C-806C7640 000154 0004+00 0/1 0/0 0/0 .rodata          @5377 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5377 = -5760.0f;
COMPILER_STRIP_GATE(0x806C763C, &lit_5377);
#pragma pop

/* 806C7640-806C7644 000158 0004+00 0/1 0/0 0/0 .rodata          @5378 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5378 = 4496.0f;
COMPILER_STRIP_GATE(0x806C7640, &lit_5378);
#pragma pop

/* 806C7644-806C7648 00015C 0004+00 0/1 0/0 0/0 .rodata          @5379 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5379 = 10896.0f;
COMPILER_STRIP_GATE(0x806C7644, &lit_5379);
#pragma pop

/* 806C7648-806C764C 000160 0004+00 0/1 0/0 0/0 .rodata          @5380 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5380 = -5706.0f;
COMPILER_STRIP_GATE(0x806C7648, &lit_5380);
#pragma pop

/* 806C764C-806C7650 000164 0004+00 0/1 0/0 0/0 .rodata          @5381 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5381 = 4526.0f;
COMPILER_STRIP_GATE(0x806C764C, &lit_5381);
#pragma pop

/* 806C7650-806C7654 000168 0004+00 0/1 0/0 0/0 .rodata          @5382 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5382 = 11379.0f;
COMPILER_STRIP_GATE(0x806C7650, &lit_5382);
#pragma pop

/* 806C7654-806C7658 00016C 0004+00 0/1 0/0 0/0 .rodata          @5383 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5383 = -5687.0f;
COMPILER_STRIP_GATE(0x806C7654, &lit_5383);
#pragma pop

/* 806C7658-806C765C 000170 0004+00 0/1 0/0 0/0 .rodata          @5384 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5384 = 4505.0f;
COMPILER_STRIP_GATE(0x806C7658, &lit_5384);
#pragma pop

/* 806C765C-806C7660 000174 0004+00 0/1 0/0 0/0 .rodata          @5385 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5385 = 11008.0f;
COMPILER_STRIP_GATE(0x806C765C, &lit_5385);
#pragma pop

/* 806C7660-806C7664 000178 0004+00 0/1 0/0 0/0 .rodata          @5386 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5386 = -5624.0f;
COMPILER_STRIP_GATE(0x806C7660, &lit_5386);
#pragma pop

/* 806C7664-806C7668 00017C 0004+00 0/1 0/0 0/0 .rodata          @5387 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5387 = 4439.0f;
COMPILER_STRIP_GATE(0x806C7664, &lit_5387);
#pragma pop

/* 806C7668-806C766C 000180 0004+00 0/1 0/0 0/0 .rodata          @5388 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5388 = 9818.0f;
COMPILER_STRIP_GATE(0x806C7668, &lit_5388);
#pragma pop

/* 806C766C-806C7670 000184 0004+00 0/1 0/0 0/0 .rodata          @5389 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5389 = -5604.0f;
COMPILER_STRIP_GATE(0x806C766C, &lit_5389);
#pragma pop

/* 806C7670-806C7674 000188 0004+00 0/1 0/0 0/0 .rodata          @5390 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5390 = 4418.0f;
COMPILER_STRIP_GATE(0x806C7670, &lit_5390);
#pragma pop

/* 806C7674-806C7678 00018C 0004+00 0/1 0/0 0/0 .rodata          @5391 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5391 = 9447.0f;
COMPILER_STRIP_GATE(0x806C7674, &lit_5391);
#pragma pop

/* 806C7678-806C767C 000190 0004+00 0/1 0/0 0/0 .rodata          @5392 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5392 = 4584.0f;
COMPILER_STRIP_GATE(0x806C7678, &lit_5392);
#pragma pop

/* 806C767C-806C7680 000194 0004+00 0/1 0/0 0/0 .rodata          @5393 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5393 = 400.0f;
COMPILER_STRIP_GATE(0x806C767C, &lit_5393);
#pragma pop

/* 806C7680-806C7684 000198 0004+00 0/1 0/0 0/0 .rodata          @5394 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5394 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x806C7680, &lit_5394);
#pragma pop

/* 806C7684-806C7688 00019C 0004+00 0/1 0/0 0/0 .rodata          @5395 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5395 = 0x3B03126F;
COMPILER_STRIP_GATE(0x806C7684, &lit_5395);
#pragma pop

/* 806C7688-806C768C 0001A0 0004+00 0/1 0/0 0/0 .rodata          @5396 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5396 = 300.0f;
COMPILER_STRIP_GATE(0x806C7688, &lit_5396);
#pragma pop

/* 806C768C-806C7690 0001A4 0004+00 0/1 0/0 0/0 .rodata          @5397 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5397 = -600.0f;
COMPILER_STRIP_GATE(0x806C768C, &lit_5397);
#pragma pop

/* 806C7690-806C7694 0001A8 0004+00 0/1 0/0 0/0 .rodata          @5398 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5398 = -250.0f;
COMPILER_STRIP_GATE(0x806C7690, &lit_5398);
#pragma pop

/* 806C7694-806C7698 0001AC 0004+00 0/1 0/0 0/0 .rodata          @5399 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5399 = 120.0f;
COMPILER_STRIP_GATE(0x806C7694, &lit_5399);
#pragma pop

/* 806C4F0C-806C59F4 00330C 0AE8+00 1/1 0/0 0/0 .text            demo_camera__FP10e_gb_class */
static void demo_camera(e_gb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C7698-806C769C 0001B0 0004+00 0/1 0/0 0/0 .rodata          @5688 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5688 = -50.0f;
COMPILER_STRIP_GATE(0x806C7698, &lit_5688);
#pragma pop

/* 806C769C-806C76A0 0001B4 0004+00 0/1 0/0 0/0 .rodata          @5689 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5689 = 8.0f;
COMPILER_STRIP_GATE(0x806C769C, &lit_5689);
#pragma pop

/* 806C76A0-806C76A4 0001B8 0004+00 0/1 0/0 0/0 .rodata          @5690 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5690 = 10000.0f;
COMPILER_STRIP_GATE(0x806C76A0, &lit_5690);
#pragma pop

/* 806C76A4-806C76A8 0001BC 0004+00 0/1 0/0 0/0 .rodata          @5691 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5691 = 160.0f;
COMPILER_STRIP_GATE(0x806C76A4, &lit_5691);
#pragma pop

/* 806C76A8-806C76AC 0001C0 0004+00 0/1 0/0 0/0 .rodata          @5692 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5692 = 170.0f;
COMPILER_STRIP_GATE(0x806C76A8, &lit_5692);
#pragma pop

/* 806C76AC-806C76B0 0001C4 0004+00 0/1 0/0 0/0 .rodata          @5693 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5693 = 1.5f;
COMPILER_STRIP_GATE(0x806C76AC, &lit_5693);
#pragma pop

/* 806C76B0-806C76B4 0001C8 0004+00 0/1 0/0 0/0 .rodata          @5694 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5694 = 0x3A83126F;
COMPILER_STRIP_GATE(0x806C76B0, &lit_5694);
#pragma pop

/* 806C59F4-806C64A0 003DF4 0AAC+00 2/1 0/0 0/0 .text            daE_GB_Execute__FP10e_gb_class */
static void daE_GB_Execute(e_gb_class* param_0) {
    // NONMATCHING
}

/* 806C64A0-806C64A8 0048A0 0008+00 1/0 0/0 0/0 .text            daE_GB_IsDelete__FP10e_gb_class */
static bool daE_GB_IsDelete(e_gb_class* param_0) {
    return true;
}

/* 806C64A8-806C651C 0048A8 0074+00 1/0 0/0 0/0 .text            daE_GB_Delete__FP10e_gb_class */
static void daE_GB_Delete(e_gb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C76B8-806C76B8 0001D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806C76BD = "D_MN05";
#pragma pop

/* 806C651C-806C6894 00491C 0378+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 806C6894-806C68DC 004C94 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C76B4-806C76B8 0001CC 0004+00 0/1 0/0 0/0 .rodata          @5877 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5877 = 65535.0f;
COMPILER_STRIP_GATE(0x806C76B4, &lit_5877);
#pragma pop

/* 806C68DC-806C6B94 004CDC 02B8+00 1/0 0/0 0/0 .text            daE_GB_Create__FP10fopAc_ac_c */
static void daE_GB_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 806C6B94-806C6D34 004F94 01A0+00 1/1 0/0 0/0 .text            __ct__10e_gb_classFv */
e_gb_class::e_gb_class() {
    // NONMATCHING
}

/* 806C6D34-806C6DA4 005134 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 806C6DA4-806C6E14 0051A4 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 806C6E14-806C6E5C 005214 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 806C6E5C-806C6EA4 00525C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 806C6EA4-806C6EEC 0052A4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 806C6EEC-806C6F48 0052EC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 806C6F48-806C6F4C 005348 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 806C6F4C-806C6F50 00534C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 806C6F50-806C6F98 005350 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 806C6F98-806C6FE0 005398 0048+00 2/1 0/0 0/0 .text            __dt__12daE_GB_HIO_cFv */
daE_GB_HIO_c::~daE_GB_HIO_c() {
    // NONMATCHING
}

/* 806C6FE0-806C701C 0053E0 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_gb_cpp */
void __sinit_d_a_e_gb_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806C6FE0, __sinit_d_a_e_gb_cpp);
#pragma pop

/* 806C701C-806C7024 00541C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_806C701C() {
    // NONMATCHING
}

/* 806C7024-806C702C 005424 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_806C7024() {
    // NONMATCHING
}

/* 806C702C-806C7440 00542C 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
static void setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    // NONMATCHING
}

/* 806C7440-806C747C 005840 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 806C747C-806C74B8 00587C 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 806C74B8-806C74D4 0058B8 001C+00 1/1 0/0 0/0 .text            setPos__7daKey_cF4cXyz */
// void daKey_c::setPos(cXyz param_0) {
extern "C" void setPos__7daKey_cF4cXyz() {
    // NONMATCHING
}

/* 806C76B8-806C76B8 0001D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */