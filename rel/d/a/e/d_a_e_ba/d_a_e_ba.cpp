/**
 * d_a_e_ba.cpp
 * Enemy - Keese
 */

// Matches except for the weak function setMidnaBindEffect

#include "rel/d/a/e/d_a_e_ba/d_a_e_ba.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "SSystem/SComponent/c_math.h"
#include "d/com/d_com_inf_game.h"
#include "d/s/d_s_play.h"
#include "d/a/d_a_player.h"
#include "d/d_procname.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__12daE_BA_HIO_cFv();
extern "C" static void ba_disappear__FP10fopAc_ac_c();
extern "C" static void anm_init__FP10e_ba_classifUcf();
extern "C" static void daE_BA_Draw__FP10e_ba_class();
extern "C" static void shot_b_sub__FPvPv();
extern "C" static void other_bg_check__FP10e_ba_classP10fopAc_ac_c();
extern "C" static void pl_check__FP10e_ba_classfs();
extern "C" static void damage_check__FP10e_ba_class();
extern "C" static void path_check__FP10e_ba_class();
extern "C" static void fly_move__FP10e_ba_class();
extern "C" static void e_ba_roof__FP10e_ba_class();
extern "C" static void e_ba_fight_fly__FP10e_ba_class();
extern "C" static void e_ba_fight__FP10e_ba_class();
extern "C" static void e_ba_attack__FP10e_ba_class();
extern "C" static void e_ba_fly__FP10e_ba_class();
extern "C" static void e_ba_return__FP10e_ba_class();
extern "C" static void e_ba_path_fly__FP10e_ba_class();
extern "C" static void e_ba_chance__FP10e_ba_class();
extern "C" static void e_ba_wolfbite__FP10e_ba_class();
extern "C" static void e_ba_wind__FP10e_ba_class();
extern "C" static void e_ba_appear__FP10e_ba_class();
extern "C" static void action__FP10e_ba_class();
extern "C" static void daE_BA_Execute__FP10e_ba_class();
extern "C" static bool daE_BA_IsDelete__FP10e_ba_class();
extern "C" static void daE_BA_Delete__FP10e_ba_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_BA_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_BA_HIO_cFv();
extern "C" void __sinit_d_a_e_ba_cpp();
extern "C" static void func_80681F84();
extern "C" static void func_80681F8C();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" extern char const* const d_a_e_ba__stringBase0;
static cPhs__Step daE_BA_Create(fopAc_ac_c*);
static int daE_BA_Delete(e_ba_class*);
static int daE_BA_Execute(e_ba_class*);
static int daE_BA_IsDelete(e_ba_class*);
static int daE_BA_Draw(e_ba_class*);
static int setMidnaBindEffect(fopEn_enemy_c*, Z2CreatureEnemy*, cXyz*, cXyz*);

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void __ct__12dBgS_AcchCirFv();
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
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void checkBoomerangCharge__9daPy_py_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void func_80280808();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_19();
extern "C" void _savegpr_23();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_23();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mParticleTracePCB__13dPa_control_c[4 + 4 /* padding */];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 806823BC-806823C0 000000 0004+00 20/20 0/0 0/0 .rodata          @3947 */
SECTION_RODATA static f32 const lit_3947 = 100.0f;
COMPILER_STRIP_GATE(0x806823BC, &lit_3947);

/* 806823C0-806823C4 000004 0004+00 1/16 0/0 0/0 .rodata          @3948 */
SECTION_RODATA static u8 const lit_3948[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x806823C0, &lit_3948);

/* 806823C4-806823CC 000008 0004+04 1/17 0/0 0/0 .rodata          @3949 */
SECTION_RODATA static f32 const lit_3949[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806823C4, &lit_3949);

/* 806823CC-806823D4 000010 0008+00 0/3 0/0 0/0 .rodata          @3950 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3950[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806823CC, &lit_3950);
#pragma pop

/* 806823D4-806823DC 000018 0008+00 0/3 0/0 0/0 .rodata          @3951 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3951[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806823D4, &lit_3951);
#pragma pop

/* 806823DC-806823E4 000020 0008+00 0/3 0/0 0/0 .rodata          @3952 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3952[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806823DC, &lit_3952);
#pragma pop

/* 806823E4-806823E8 000028 0004+00 0/1 0/0 0/0 .rodata          @3953 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3953 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x806823E4, &lit_3953);
#pragma pop

/* 806823E8-806823EC 00002C 0004+00 0/3 0/0 0/0 .rodata          @3968 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3968 = 15.0f;
COMPILER_STRIP_GATE(0x806823E8, &lit_3968);
#pragma pop

/* 806823EC-806823F0 000030 0004+00 0/1 0/0 0/0 .rodata          @3969 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3969 = 250.0f;
COMPILER_STRIP_GATE(0x806823EC, &lit_3969);
#pragma pop

/* 806823F0-806823F4 000034 0004+00 0/3 0/0 0/0 .rodata          @3970 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3970 = 40.0f;
COMPILER_STRIP_GATE(0x806823F0, &lit_3970);
#pragma pop

/* 8068248C-8068248C 0000D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8068248C = "E_ba";
SECTION_DEAD static char const* const stringBase_80682491 = "E_fb";
SECTION_DEAD static char const* const stringBase_80682496 = "E_ib";
#pragma pop

/* 8068249C-806824A8 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 806824A8-806824BC 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 806824BC-806824C4 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3826 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 806824C4-806824CC 000028 0008+00 0/1 0/0 0/0 .data            e_env$3827 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 806824CC-806824D4 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3835 */
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

/* 806824D4-80682514 -00001 0040+00 1/1 0/0 0/0 .data            @4748 */
SECTION_DATA static void* lit_4748[16] = {
    (void*)(((char*)action__FP10e_ba_class) + 0x88),
    (void*)(((char*)action__FP10e_ba_class) + 0x94),
    (void*)(((char*)action__FP10e_ba_class) + 0xAC),
    (void*)(((char*)action__FP10e_ba_class) + 0xC4),
    (void*)(((char*)action__FP10e_ba_class) + 0xE8),
    (void*)(((char*)action__FP10e_ba_class) + 0xF4),
    (void*)(((char*)action__FP10e_ba_class) + 0x108),
    (void*)(((char*)action__FP10e_ba_class) + 0x144),
    (void*)(((char*)action__FP10e_ba_class) + 0x144),
    (void*)(((char*)action__FP10e_ba_class) + 0x144),
    (void*)(((char*)action__FP10e_ba_class) + 0x114),
    (void*)(((char*)action__FP10e_ba_class) + 0x144),
    (void*)(((char*)action__FP10e_ba_class) + 0x144),
    (void*)(((char*)action__FP10e_ba_class) + 0x120),
    (void*)(((char*)action__FP10e_ba_class) + 0x12C),
    (void*)(((char*)action__FP10e_ba_class) + 0x138),
};

/* 80682514-8068251C 000078 0008+00 1/1 0/0 0/0 .data            fire_name$4786 */
SECTION_DATA static u8 fire_name[8] = {
    0x82, 0x16, 0x82, 0x17, 0x82, 0x18, 0x82, 0x19,
};

/* 8068251C-80682524 000080 0006+02 1/1 0/0 0/0 .data            ice_name$4787 */
SECTION_DATA static u8 ice_name[6 + 2 /* padding */] = {
    0x82,
    0x1A,
    0x82,
    0x1B,
    0x82,
    0x1C,
    /* padding */
    0x00,
    0x00,
};

/* 80682524-80682530 -00001 000C+00 1/1 0/0 0/0 .data            arc_name$4985 */
SECTION_DATA static void* arc_name[3] = {
    (void*)&d_a_e_ba__stringBase0,
    (void*)(((char*)&d_a_e_ba__stringBase0) + 0x5),
    (void*)(((char*)&d_a_e_ba__stringBase0) + 0xA),
};

/* 80682530-80682570 000094 0040+00 1/1 0/0 0/0 .data            cc_sph_src$5011 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80682570-80682590 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_BA_Method */
static actor_method_class l_daE_BA_Method = {
    (process_method_func)daE_BA_Create,
    (process_method_func)daE_BA_Delete,
    (process_method_func)daE_BA_Execute,
    (process_method_func)daE_BA_IsDelete,
    (process_method_func)daE_BA_Draw,
};

/* 80682590-806825C0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_BA */
extern actor_process_profile_definition g_profile_E_BA = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_E_BA,
    &g_fpcLf_Method.mBase,
    sizeof(e_ba_class),
    0,
    0,
    &g_fopAc_Method.base,
    0xB4,
    &l_daE_BA_Method,
    0x10050100,
    fopAc_ENEMY_e,
    fopAc_CULLBOX_CUSTOM_e,
};

/* 806825C0-806825CC 000124 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 806825CC-806825D8 000130 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806825D8-806825E4 00013C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806825E4-806825F0 000148 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806825F0-806825FC 000154 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806825FC-80682620 000160 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80681F8C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80681F84,
};

/* 80682620-8068262C 000184 000C+00 2/2 0/0 0/0 .data            __vt__12daE_BA_HIO_c */
SECTION_DATA extern void* __vt__12daE_BA_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_BA_HIO_cFv,
};

/* 8067ECEC-8067ED30 0000EC 0044+00 1/1 0/0 0/0 .text            __ct__12daE_BA_HIO_cFv */
#ifdef NONMATCHING
// matches with literals
daE_BA_HIO_c::daE_BA_HIO_c() {
    field_0x04 = -1;
    mScale = 1.0f;
    mFlySpeed = 15.0f;
    mFightDistance = 250.0f;
    mFightSpeed = 15.0f;
    mAttackSpeed = 40.0f;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_BA_HIO_c::daE_BA_HIO_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/__ct__12daE_BA_HIO_cFv.s"
}
#pragma pop
#endif

/* 8067ED30-8067ED90 000130 0060+00 2/2 0/0 0/0 .text            ba_disappear__FP10fopAc_ac_c */
static void ba_disappear(fopAc_ac_c* i_this) {
    fopAcM_createDisappear(i_this, &i_this->current.pos, 6, 0, 3);
    int sw = fopAcM_GetParam(i_this) >> 24;
    if (sw != 0xff) {
        dComIfGs_onSwitch(sw, fopAcM_GetRoomNo(i_this));
    }
}

/* ############################################################################################## */
/* 806823F4-806823F8 000038 0004+00 1/1 0/0 0/0 .rodata          @3996 */
SECTION_RODATA static f32 const lit_3996 = -1.0f;
COMPILER_STRIP_GATE(0x806823F4, &lit_3996);

/* 8067ED90-8067EE38 000190 00A8+00 11/11 0/0 0/0 .text            anm_init__FP10e_ba_classifUcf */
#ifdef NONMATCHING
// matches with literals
static void anm_init(e_ba_class* i_this, int i_index, f32 i_morf, u8 i_attr, f32 i_rate) {
    J3DAnmTransform* anm =
        static_cast<J3DAnmTransform*>(dComIfG_getObjectRes(i_this->mArcName, i_index));
    i_this->mpMorf->setAnm(anm, i_attr, i_morf, i_rate, 0.0f, -1.0f);
    i_this->mAnm = i_index;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void anm_init(e_ba_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/anm_init__FP10e_ba_classifUcf.s"
}
#pragma pop
#endif

/* 8067EE38-8067EEA8 000238 0070+00 1/0 0/0 0/0 .text            daE_BA_Draw__FP10e_ba_class */
static int daE_BA_Draw(e_ba_class* i_this) {
    J3DModel* model = i_this->mpMorf->getModel();
    g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &i_this->tevStr);
    i_this->mpMorf->entryDL();
    return 1;
}

/* 8067EEA8-8067EF20 0002A8 0078+00 1/1 0/0 0/0 .text            shot_b_sub__FPvPv */
static void* shot_b_sub(void* i_proc, void* i_this) {
    if (fopAcM_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_BOOMERANG
        && !dComIfGp_checkPlayerStatus0(0, 0x80000) && daPy_py_c::checkBoomerangCharge()
        && fopAcM_GetParam(i_proc) == 1)
    {
        return i_proc;
    }
    return NULL;
}

/* 8067EF20-8067EFF8 000320 00D8+00 1/1 0/0 0/0 .text other_bg_check__FP10e_ba_classP10fopAc_ac_c
 */
#ifdef NONMATCHING
// matches with literals
static BOOL other_bg_check(e_ba_class* i_this, fopAc_ac_c* i_other) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    dBgS_LinChk lin_chk;
    cXyz vec1, vec2;
    vec2 = i_other->current.pos;
    vec2.y += 100.0f;
    vec1 = _this->current.pos;
    vec1.y = _this->eyePos.y;
    lin_chk.Set(&vec1, &vec2, _this);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return true;
    } else {
        return false;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm BOOL other_bg_check(e_ba_class* param_0, fopAc_ac_c* param_1) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/other_bg_check__FP10e_ba_classP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* 8067EFF8-8067F0AC 0003F8 00B4+00 5/5 0/0 0/0 .text            pl_check__FP10e_ba_classfs */
static BOOL pl_check(e_ba_class* i_this, f32 i_maxDistance, s16 i_maxAngle) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    if (!daPy_getPlayerActorClass()->checkSwimUp() || dComIfGp_event_runCheck()) {
        return false;
    }

    if (player->current.pos.y < i_this->current.pos.y && i_this->mPlayerDistanceXZ < i_maxDistance)
    {
        s16 angle = i_this->shape_angle.y - i_this->mPlayerAngleY;
        if (i_maxAngle == 1 || (angle < i_maxAngle && angle > (s16)-i_maxAngle)) {
            if (!other_bg_check(i_this, player)) {
                return true;
            }
        }
    }

    return false;
}

/* ############################################################################################## */
/* 806823F8-806823FC 00003C 0004+00 0/2 0/0 0/0 .rodata          @4122 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4122 = 70.0f;
COMPILER_STRIP_GATE(0x806823F8, &lit_4122);
#pragma pop

/* 806823FC-80682400 000040 0004+00 0/1 0/0 0/0 .rodata          @4123 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4123 = 80.0f;
COMPILER_STRIP_GATE(0x806823FC, &lit_4123);
#pragma pop

/* 80682400-80682404 000044 0004+00 0/3 0/0 0/0 .rodata          @4124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4124 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80682400, &lit_4124);
#pragma pop

/* 8067F0AC-8067F2DC 0004AC 0230+00 1/1 0/0 0/0 .text            damage_check__FP10e_ba_class */
#ifdef NONMATCHING
// matches with literals
static void damage_check(e_ba_class* i_this) {
    daPy_py_c* player = static_cast<daPy_py_c*>(dComIfGp_getPlayer(0));
    if (i_this->mIFrames == 0) {
        i_this->mStts.Move();
        if (i_this->mSph.ChkTgHit()) {
            i_this->mAtInfo.mpCollider = i_this->mSph.GetTgHitObj();
            if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG)) {
                i_this->mAction = e_ba_class::ACT_WIND;
                i_this->mMode = 0;
                i_this->mType = e_ba_class::TYPE_NORMAL;
                i_this->mSph.SetAtType(AT_TYPE_CSTATUE_SWING);
            } else {
                cc_at_check(i_this, &i_this->mAtInfo);
                if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT)
                    || i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_SLINGSHOT))
                {
                    i_this->health--;
                }
                
                if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_SHIELD_ATTACK)) {
                    i_this->mAction = e_ba_class::ACT_CHANCE;
                    i_this->mMode = 0;
                    i_this->mKnockbackSpeed = 70.0f;
                    i_this->mKnockbackAngle = i_this->shape_angle.y;
                    i_this->mIsDying = false;
                    dComIfGp_getVibration().StartShock(2, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
                } else if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_WOLF_ATTACK)
                                            && player->onWolfEnemyCatch(i_this)) {
                    i_this->mAction = e_ba_class::ACT_WOLFBITE;
                    i_this->mMode = 0;
                    i_this->mIFrames = 200;
                    dScnPly_c::setPauseTimer(0);
                    i_this->mCreatureSound.startCreatureVoice(Z2SE_EN_BA_V_BITE, -1);
                } else {
                    if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK)) {
                        i_this->mIFrames = 20;
                    } else {
                        i_this->mIFrames = 10;
                    }
                    i_this->mKnockbackSpeed = 80.0f;
                    i_this->mKnockbackAngle = i_this->mAtInfo.mHitDirection;
                    if (i_this->health <= 0) {
                        i_this->mCreatureSound.startCreatureVoice(Z2SE_EN_BA_V_DEATH, -1);
                        i_this->mpMorf->setPlaySpeed(0.2f);
                        i_this->mIsDying = true;
                    }
                }
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void damage_check(e_ba_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/damage_check__FP10e_ba_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80682404-80682408 000048 0004+00 0/5 0/0 0/0 .rodata          @4156 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4156 = 50.0f;
COMPILER_STRIP_GATE(0x80682404, &lit_4156);
#pragma pop

/* 80682638-8068263C 000008 0004+00 2/2 0/0 0/0 .bss             None */
#ifdef NONMATCHING
static bool hioInit;
#else
static u8 data_80682638[4];
#endif

#ifndef NONMATCHING
/* 8068263C-80682648 00000C 000C+00 1/1 0/0 0/0 .bss             @3963 */
static u8 lit_3963[12];

/* 80682648-80682664 000018 001C+00 9/9 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[28];
#else
/* 80682648-80682664 000018 001C+00 9/9 0/0 0/0 .bss             l_HIO */
static daE_BA_HIO_c l_HIO;
#endif

#ifndef NONMATCHING
/* 80682664-80682763 000034 00FF+00 1/1 0/0 0/0 .bss             check_index$4162 */
static u8 check_index[255];
#endif

/* 8067F2DC-8067F544 0006DC 0268+00 2/3 0/0 0/0 .text            path_check__FP10e_ba_class */
#ifdef NONMATCHING
// matches with literals
static BOOL path_check(e_ba_class* i_this) {
    if (i_this->mpPath != NULL) {
        dBgS_LinChk lin_chk;
        cXyz vec1, vec2;
        vec1 = i_this->current.pos;
        vec1.y += 100.0f;
        static bool check_index[255];
        dStage_dPnt_c* point = i_this->mpPath->m_points;
        for (int i = 0; i < i_this->mpPath->m_num; i++, point++) {
            vec2.x = point->m_position.x;
            vec2.y = point->m_position.y + 100.0f;
            vec2.z = point->m_position.z;
            lin_chk.Set(&vec1, &vec2, i_this);
            if (!dComIfG_Bgsp().LineCross(&lin_chk)) {
                check_index[i] = true;
            } else {
                check_index[i] = false;
            }
        }

        f32 threshold = 0.0f;
        bool bvar5 = false;
        for (int i = 0; i < 100; i++, threshold += 50.0f) {
            point = i_this->mpPath->m_points;
            for (int j = 0; j < i_this->mpPath->m_num; j++, point++) {
                if (check_index[j]) {
                    f32 delta_x = i_this->current.pos.x - point->m_position.x;
                    f32 delta_y = i_this->current.pos.y - point->m_position.y;
                    f32 delta_z = i_this->current.pos.z - point->m_position.z;
                    f32 dist =
                        JMAFastSqrt(delta_x * delta_x + delta_y * delta_y + delta_z * delta_z);
                    if (dist < threshold) {
                        i_this->mPathPoint = j - i_this->mPathStep;
                        if (i_this->mPathPoint >= (s8)i_this->mpPath->m_num) {
                            i_this->mPathPoint = i_this->mpPath->m_num;
                        } else if (i_this->mPathPoint < 0) {
                            i_this->mPathPoint = 0;
                        }
                        bvar5 = true;
                        break;
                    }
                }
            }
            if (bvar5) {
                break;
            }
        }

        if (!bvar5) {
            i_this->field_0x5bc = 0;
        } else {
            i_this->field_0x5bc = i_this->mPathIndex + 1;
            return true;
        }
    }

    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm BOOL path_check(e_ba_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/path_check__FP10e_ba_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80682408-8068240C 00004C 0004+00 0/1 0/0 0/0 .rodata          @4242 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4242 = 2000.0f;
COMPILER_STRIP_GATE(0x80682408, &lit_4242);
#pragma pop

/* 8068240C-80682410 000050 0004+00 0/1 0/0 0/0 .rodata          @4243 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4243 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x8068240C, &lit_4243);
#pragma pop

/* 8067F544-8067F6D4 000944 0190+00 6/6 0/0 0/0 .text            fly_move__FP10e_ba_class */
#ifdef NONMATCHING
// matches with literals
static void fly_move(e_ba_class* i_this) {
    f32 delta_x = i_this->mTargetPos.x - i_this->current.pos.x;
    f32 delta_y = i_this->mTargetPos.y - i_this->current.pos.y;
    f32 delta_z = i_this->mTargetPos.z - i_this->current.pos.z;
    s16 angle_y = cM_atan2s(delta_x, delta_z);
    f32 dist_xz = JMAFastSqrt(delta_x * delta_x + delta_z * delta_z);
    s16 angle_x = -cM_atan2s(delta_y, dist_xz);
    cLib_addCalcAngleS2(&i_this->current.angle.y, angle_y, 10,
                        i_this->mBaseAngleSpeed * i_this->mSpeedRatio);
    i_this->mBaseAngleSpeed = 2000.0f;
    cLib_addCalcAngleS2(&i_this->current.angle.x, angle_x, 10,
                        i_this->mBaseAngleSpeed * i_this->mSpeedRatio);
    cLib_addCalc2(&i_this->mSpeedRatio, 1.0f, 1.0f, 0.04f);

    cXyz vec;
    vec.x = 0.0f;
    vec.y = 0.0f;
    vec.z = i_this->speedF;
    mDoMtx_YrotS(*calc_mtx, i_this->current.angle.y);
    mDoMtx_XrotM(*calc_mtx, i_this->current.angle.x);
    MtxPosition(&vec, &i_this->speed);
    i_this->current.pos += i_this->speed;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void fly_move(e_ba_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/fly_move__FP10e_ba_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80682410-80682414 000054 0004+00 0/1 0/0 0/0 .rodata          @4275 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4275 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80682410, &lit_4275);
#pragma pop

/* 80682414-80682418 000058 0004+00 0/3 0/0 0/0 .rodata          @4276 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4276 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80682414, &lit_4276);
#pragma pop

/* 80682418-8068241C 00005C 0004+00 0/5 0/0 0/0 .rodata          @4277 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4277 = 0.5f;
COMPILER_STRIP_GATE(0x80682418, &lit_4277);
#pragma pop

/* 8067F6D4-8067F81C 000AD4 0148+00 1/1 0/0 0/0 .text            e_ba_roof__FP10e_ba_class */
#ifdef NONMATCHING
// matches with literals
static void e_ba_roof(e_ba_class* i_this) {
    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, e_ba_class::ANM_WAIT, 15.0f,
                 J3DFrameCtrl::LOOP_REPEAT_e, cM_rndF(0.1f) + 0.9f);
        i_this->mMode = 1;
        break;

    case 1:
        if ((i_this->mCounter & 0x1f) == 0 && cM_rndF(1.0f) < 0.5f) {
            i_this->mCreatureSound.startCreatureVoice(Z2SE_EN_BA_V_NAKU, -1);
        }
        break;
    }

    cLib_addCalc2(&i_this->current.pos.x, i_this->home.pos.x, 0.5f, fabsf(i_this->speed.x));
    cLib_addCalc2(&i_this->current.pos.y, i_this->home.pos.y, 0.5f, fabsf(i_this->speed.y));
    cLib_addCalc2(&i_this->current.pos.z, i_this->home.pos.z, 0.5f, fabsf(i_this->speed.z));
    
    if (pl_check(i_this, i_this->mFightFlyDistance, 1)) {
        i_this->mAction = e_ba_class::ACT_FIGHT_FLY;
        i_this->mMode = 0;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_ba_roof(e_ba_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/e_ba_roof__FP10e_ba_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8068241C-80682420 000060 0004+00 0/6 0/0 0/0 .rodata          @4307 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4307 = 3.0f;
COMPILER_STRIP_GATE(0x8068241C, &lit_4307);
#pragma pop

/* 80682420-80682424 000064 0004+00 0/4 0/0 0/0 .rodata          @4308 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4308 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80682420, &lit_4308);
#pragma pop

/* 8067F81C-8067F9E0 000C1C 01C4+00 1/1 0/0 0/0 .text            e_ba_fight_fly__FP10e_ba_class */
#ifdef NONMATCHING
// matches with literals
static void e_ba_fight_fly(e_ba_class* i_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, e_ba_class::ANM_FLY, 3.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        i_this->mMode = 1;
        i_this->mSpeedRatio = 0.0f;
        break;

    case 1:
        if ((i_this->mCounter & 0xf) == 0 && cM_rndF(1.0f) < 0.5f) {
            i_this->mCreatureSound.startCreatureVoice(Z2SE_EN_BA_V_NAKU, -1);
        }
        break;
    }

    cLib_addCalc2(&i_this->speedF, l_HIO.mFlySpeed, 1.0f, l_HIO.mFlySpeed * 0.3f);
    i_this->mTargetPos = player->current.pos;
    fly_move(i_this);

    if (!pl_check(i_this, i_this->mFightFlyDistance + 50.0f, 1)) {
        if (i_this->mHomeType != e_ba_class::HOME_APPEAR) {
            if (!path_check(i_this)) {
                if (i_this->mHomeType == e_ba_class::HOME_ROOF) {
                    i_this->mAction = e_ba_class::ACT_RETURN;
                    i_this->mMode = 0;
                } else {
                    i_this->mAction = e_ba_class::ACT_FLY;
                    i_this->mMode = 0;
                }
            } else {
                i_this->mAction = e_ba_class::ACT_PATH_FLY;
                i_this->mMode = 0;
            }
        }
    } else {
        if (pl_check(i_this, l_HIO.mFightDistance, 1)) {
            i_this->mAction = e_ba_class::ACT_FIGHT;
            i_this->mMode = 0;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_ba_fight_fly(e_ba_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/e_ba_fight_fly__FP10e_ba_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80682424-80682428 000068 0004+00 0/3 0/0 0/0 .rodata          @4376 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4376 = 2.0f;
COMPILER_STRIP_GATE(0x80682424, &lit_4376);
#pragma pop

/* 80682428-8068242C 00006C 0004+00 0/5 0/0 0/0 .rodata          @4377 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4377 = 30.0f;
COMPILER_STRIP_GATE(0x80682428, &lit_4377);
#pragma pop

/* 8068242C-80682430 000070 0004+00 0/1 0/0 0/0 .rodata          @4378 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4378 = 12288.0f;
COMPILER_STRIP_GATE(0x8068242C, &lit_4378);
#pragma pop

/* 80682430-80682434 000074 0004+00 0/2 0/0 0/0 .rodata          @4379 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4379 = 150.0f;
COMPILER_STRIP_GATE(0x80682430, &lit_4379);
#pragma pop

/* 80682434-80682438 000078 0004+00 0/3 0/0 0/0 .rodata          @4380 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4380 = 10.0f;
COMPILER_STRIP_GATE(0x80682434, &lit_4380);
#pragma pop

/* 8067F9E0-8067FD68 000DE0 0388+00 1/1 0/0 0/0 .text            e_ba_fight__FP10e_ba_class */
#ifdef NONMATCHING
// matches with literals
static void e_ba_fight(e_ba_class* i_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    s16 player_angle = player->shape_angle.y;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, e_ba_class::ANM_HOVERING, 2.0f,
                 J3DFrameCtrl::LOOP_REPEAT_e, cM_rndF(0.1f) + 1.0f);
        i_this->mMode = 1;
        i_this->mTimer[0] = 0;
        i_this->mTimer[1] = cM_rndF(100.0f) + 30.0f;
        break;

    case 1:
        if (i_this->mTimer[0] == 0) {
            mDoMtx_YrotS(*calc_mtx, player_angle + (s16)cM_rndFX(12288.0f));
            cXyz vec;
            vec.x = 0.0f;
            vec.y = cM_rndF(100.0f) + 150.0f;
            vec.z = cM_rndF(150.0f) + 150.0f;
            MtxPosition(&vec, &i_this->mTargetPos);
            i_this->mTargetPos += player->current.pos;
            vec = i_this->mTargetPos - i_this->current.pos;
            mDoMtx_YrotS(*calc_mtx, cM_atan2s(vec.x, vec.z));
            f32 dist_xz = JMAFastSqrt(vec.x * vec.x + vec.z * vec.z);
            mDoMtx_XrotM(*calc_mtx, -cM_atan2s(vec.y, dist_xz));
            vec.x = 0.0f;
            vec.y = 0.0f;
            vec.z = l_HIO.mFightSpeed;
            MtxPosition(&vec, &i_this->speed);
            i_this->mTimer[0] = cM_rndF(30.0f) + 10.0f;
            i_this->mSpeedRatio = 0.0f;
        }

        if (i_this->mTimer[1] == 0) {
            i_this->mTimer[1] = cM_rndF(100.0f) + 30.0f;
            if (i_this->mHomeType != e_ba_class::HOME_APPEAR || cM_rndF(1.0f) < 0.2f) {
                i_this->mAction = e_ba_class::ACT_ATTACK;
                i_this->mMode = 0;
            }
        }
        break;
    }

    cLib_addCalc2(&i_this->current.pos.x, i_this->mTargetPos.x, 0.2f,
                  i_this->mSpeedRatio * fabsf(i_this->speed.x));
    cLib_addCalc2(&i_this->current.pos.y, i_this->mTargetPos.y, 0.2f,
                  i_this->mSpeedRatio * fabsf(i_this->speed.y));
    cLib_addCalc2(&i_this->current.pos.z, i_this->mTargetPos.z, 0.2f,
                  i_this->mSpeedRatio * fabsf(i_this->speed.z));
    cLib_addCalc2(&i_this->mSpeedRatio, 1.0f, 1.0f, 0.1f);
    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mPlayerAngleY, 4, 0x800);

    if (i_this->mHomeType != e_ba_class::HOME_APPEAR
        && !pl_check(i_this, i_this->mFightFlyDistance + 50.0f, 1))
    {
        if (!path_check(i_this)) {
            if (i_this->mHomeType == e_ba_class::HOME_ROOF) {
                i_this->mAction = e_ba_class::ACT_RETURN;
                i_this->mMode = 0;
            } else {
                i_this->mAction = e_ba_class::ACT_FLY;
                i_this->mMode = 0;
            }
        } else {
            i_this->mAction = e_ba_class::ACT_PATH_FLY;
            i_this->mMode = 0;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_ba_fight(e_ba_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/e_ba_fight__FP10e_ba_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80682438-8068243C 00007C 0004+00 0/1 0/0 0/0 .rodata          @4417 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4417 = 120.0f;
COMPILER_STRIP_GATE(0x80682438, &lit_4417);
#pragma pop

/* 8067FD68-8067FF60 001168 01F8+00 1/1 0/0 0/0 .text            e_ba_attack__FP10e_ba_class */
#ifdef NONMATCHING
// matches with literals
static void e_ba_attack(e_ba_class* i_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    f32 target_speed = 0.0f;
    i_this->mSpeedRatio = 0.0f;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, e_ba_class::ANM_FLY, 3.0f, J3DFrameCtrl::LOOP_REPEAT_e, 2.0f);
        i_this->mMode = 1;
        i_this->mTimer[1] = 20;
        break;

    case 1:
        i_this->mTargetPos = player->current.pos;
        i_this->mTargetPos.y += 120.0f;
        i_this->mSpeedRatio = 2.0f;
        if (i_this->mTimer[1] == 0) {
            i_this->mMode = 2;
            i_this->mTimer[0] = 15;
            i_this->mCreatureSound.startCreatureVoice(Z2SE_EN_BA_V_ATTACK, -1);
        }
        break;

    case 2:
        target_speed = l_HIO.mAttackSpeed;
        if (i_this->mSph.ChkAtShieldHit()) {
            i_this->mAction = e_ba_class::ACT_CHANCE;
            i_this->mMode = 0;
            i_this->mKnockbackSpeed = 70.0f;
            i_this->mKnockbackAngle = i_this->shape_angle.y;
            i_this->mIsDying = false;
            dComIfGp_getVibration().StartShock(2, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        } else {
            if (i_this->mTimer[0] == 0) {
                i_this->mMode = 3;
            }
        }
        break;

    case 3:
        if (i_this->speedF <= 1.0f) {
            i_this->mAction = e_ba_class::ACT_FIGHT;
            i_this->mMode = 0;
        }
        break;
    }

    cLib_addCalc2(&i_this->speedF, target_speed, 1.0f, l_HIO.mAttackSpeed * 0.2f);
    fly_move(i_this);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_ba_attack(e_ba_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/e_ba_attack__FP10e_ba_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8068243C-80682440 000080 0004+00 0/1 0/0 0/0 .rodata          @4459 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4459 = 500.0f;
COMPILER_STRIP_GATE(0x8068243C, &lit_4459);
#pragma pop

/* 80682440-80682444 000084 0004+00 0/3 0/0 0/0 .rodata          @4460 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4460 = 200.0f;
COMPILER_STRIP_GATE(0x80682440, &lit_4460);
#pragma pop

/* 8067FF60-8068018C 001360 022C+00 1/1 0/0 0/0 .text            e_ba_fly__FP10e_ba_class */
#ifdef NONMATCHING
// matches with literals
static void e_ba_fly(e_ba_class* i_this) {
    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, e_ba_class::ANM_FLY, 3.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        i_this->mMode = 1;
        break;

    case 1:
        if ((i_this->mCounter & 0x1f) == 0 && cM_rndF(1.0f) < 0.5f) {
            i_this->mCreatureSound.startCreatureVoice(Z2SE_EN_BA_V_NAKU, -1);
        }
        if (i_this->mTimer[0] == 0) {
            i_this->mTargetPos.x = i_this->home.pos.x + cM_rndFX(500.0f);
            i_this->mTargetPos.y = i_this->home.pos.y + cM_rndFX(200.0f);
            i_this->mTargetPos.z = i_this->home.pos.z + cM_rndFX(500.0f);
            cXyz vec = i_this->mTargetPos - i_this->current.pos;
            mDoMtx_YrotS(*calc_mtx, cM_atan2s(vec.x, vec.z));
            mDoMtx_XrotM(*calc_mtx, -cM_atan2s(vec.y, JMAFastSqrt(vec.x * vec.x + vec.z * vec.z)));
            vec.x = 0.0f;
            vec.y = 0.0f;
            vec.z = l_HIO.mFightSpeed;
            MtxPosition(&vec, &i_this->speed);
            i_this->mTimer[0] = cM_rndF(30.0f) + 10.0f;
            i_this->mSpeedRatio = 0.0f;
        }
        break;
    }

    cLib_addCalc2(&i_this->speedF, l_HIO.mFlySpeed, 1.0f, l_HIO.mFlySpeed * 0.3f);
    fly_move(i_this);
    if (pl_check(i_this, i_this->mFightFlyDistance, 1)) {
        i_this->mAction = e_ba_class::ACT_FIGHT_FLY;
        i_this->mMode = 0;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_ba_fly(e_ba_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/e_ba_fly__FP10e_ba_class.s"
}
#pragma pop
#endif

/* 8068018C-8068039C 00158C 0210+00 1/1 0/0 0/0 .text            e_ba_return__FP10e_ba_class */
#ifdef NONMATCHING
// matches with literals
static void e_ba_return(e_ba_class* i_this) {
    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, e_ba_class::ANM_FLY, 3.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        i_this->mMode = 1;
        i_this->mSpeedRatio = 0.0f;

    case 1:
        break;
    }

    cLib_addCalc2(&i_this->speedF, l_HIO.mFlySpeed, 1.0f, l_HIO.mFlySpeed * 0.3f);
    i_this->mTargetPos = i_this->home.pos;
    fly_move(i_this);

    cXyz delta = i_this->current.pos - i_this->mTargetPos;
    if (delta.abs() < 100.0f) {
        i_this->mAction = e_ba_class::ACT_ROOF;
        i_this->mMode = 0;
    } else {
        if (pl_check(i_this, i_this->mFightFlyDistance, 1)) {
            i_this->mAction = e_ba_class::ACT_FIGHT_FLY;
            i_this->mMode = 0;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_ba_return(e_ba_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/e_ba_return__FP10e_ba_class.s"
}
#pragma pop
#endif

/* 8068039C-806806B4 00179C 0318+00 1/1 0/0 0/0 .text            e_ba_path_fly__FP10e_ba_class */
#ifdef NONMATCHING
// matches with literals
static void e_ba_path_fly(e_ba_class* i_this) {
    dStage_dPnt_c* point;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, e_ba_class::ANM_FLY, 3.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        i_this->mMode = 1;
        // fallthrough

    case 1:
        if ((i_this->mCounter & 0x1f) == 0 && cM_rndF(1.0f) < 0.5f) {
            i_this->mCreatureSound.startCreatureVoice(Z2SE_EN_BA_V_NAKU, -1);
        }
        i_this->mPathPoint += i_this->mPathStep;
        if (i_this->mPathPoint >= (s8)i_this->mpPath->m_num) {
            if (dPath_ChkClose(i_this->mpPath)) {
                i_this->mPathPoint = 0;
            } else {
                i_this->mPathStep = -1;
                i_this->mPathPoint = i_this->mpPath->m_num - 2;
            }
            int next_id = i_this->mpPath->m_nextID;
            if (next_id != 0xffff) {
                i_this->mpPath = dPath_GetRoomPath(next_id, fopAcM_GetRoomNo(i_this));
            }
        } else {
            if (i_this->mPathPoint < 0) {
                i_this->mPathStep = 1;
                i_this->mPathPoint = 1;
            }
        }
        // fallthrough

    case 2:
        i_this->mMode = 3;
        point = i_this->mpPath->m_points;
        point = &point[i_this->mPathPoint];
        i_this->mSpeedRatio = 0.0f;
        i_this->mTargetPos.x = point->m_position.x + cM_rndFX(150.0f);
        i_this->mTargetPos.y = point->m_position.y + cM_rndFX(150.0f);
        i_this->mTargetPos.z = point->m_position.z + cM_rndFX(150.0f);
        break;

    case 3:
        cXyz delta = i_this->mTargetPos - i_this->current.pos;
        if (delta.abs() < 200.0f) {
            i_this->mMode = 1;
        }
        break;
    }

    cLib_addCalc2(&i_this->speedF, l_HIO.mFlySpeed, 1.0f, l_HIO.mFlySpeed * 0.3f);
    fly_move(i_this);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_ba_path_fly(e_ba_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/e_ba_path_fly__FP10e_ba_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80682444-80682448 000088 0004+00 0/1 0/0 0/0 .rodata          @4587 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4587 = 1.5f;
COMPILER_STRIP_GATE(0x80682444, &lit_4587);
#pragma pop

/* 80682448-8068244C 00008C 0004+00 0/1 0/0 0/0 .rodata          @4588 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4588 = 65536.0f;
COMPILER_STRIP_GATE(0x80682448, &lit_4588);
#pragma pop

/* 8068244C-80682450 000090 0004+00 0/1 0/0 0/0 .rodata          @4589 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4589 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x8068244C, &lit_4589);
#pragma pop

/* 806806B4-806808AC 001AB4 01F8+00 1/1 0/0 0/0 .text            e_ba_chance__FP10e_ba_class */
#ifdef NONMATCHING
// matches with literals
static void e_ba_chance(e_ba_class* i_this) {
    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, e_ba_class::ANM_HOVERING, 2.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.5f);
        i_this->mMode = 1;
        i_this->mTimer[0] = cM_rndF(30.0f) + 100.0f;
        i_this->speed.x = 0.0f;
        i_this->speed.y = 0.0f;
        i_this->speed.z = 0.0f;
        i_this->mCreatureSound.startCreatureVoice(Z2SE_EN_BA_V_BITE, -1);
        break;

    case 1:
        if (i_this->mAcch.ChkGroundHit()) {
            i_this->speed.y = cM_rndF(10.0f) + 10.0f;
            i_this->speed.x = cM_rndFX(10.0f);
            i_this->speed.z = cM_rndFX(10.0f);
            if ( cM_rndF(1.0f) < 0.5f) {
                i_this->mChanceAngle.z = 0;
            } else {
                i_this->mChanceAngle.z = -0x8000;
            }
            i_this->mChanceAngle.y = cM_rndF(0x10000);
            fopAcM_effSmokeSet1(&i_this->mSmokeKey1, &i_this->mSmokeKey2,
                                &i_this->current.pos, &i_this->shape_angle, 0.8f,
                                &i_this->tevStr, 1);
            i_this->mCreatureSound.startCreatureVoice(Z2SE_EN_BA_V_FAINT, -1);
        }

        if (i_this->mTimer[0] == 0) {
            i_this->current.angle.z = 0;
            i_this->mAction = e_ba_class::ACT_FIGHT;
            i_this->mMode = 0;
            return;
        }
        break;
    }

    i_this->current.pos += i_this->speed;
    i_this->speed.y -= 2.0f;
    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mChanceAngle.y, 2, 0x1000);
    cLib_addCalcAngleS2(&i_this->current.angle.z, i_this->mChanceAngle.z, 2, 0x1000);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_ba_chance(e_ba_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/e_ba_chance__FP10e_ba_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80682450-80682454 000094 0004+00 0/1 0/0 0/0 .rodata          @4629 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4629 = -20.0f;
COMPILER_STRIP_GATE(0x80682450, &lit_4629);
#pragma pop

/* 80682454-80682458 000098 0004+00 0/2 0/0 0/0 .rodata          @4630 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4630 = 4.0f;
COMPILER_STRIP_GATE(0x80682454, &lit_4630);
#pragma pop

/* 806808AC-80680AF4 001CAC 0248+00 1/1 0/0 0/0 .text            e_ba_wolfbite__FP10e_ba_class */
#ifdef NONMATCHING
// matches with literals
static void e_ba_wolfbite(e_ba_class* i_this) {
    daPy_py_c* player = static_cast<daPy_py_c*>(dComIfGp_getPlayer(0));

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, e_ba_class::ANM_HOLDWAIT, 0.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        i_this->mMode = 1;
        break;

    case 1:
        if (!player->checkWolfEnemyCatchOwn(i_this)) {
            if (player->checkWolfEnemyLeftThrow()) {
                i_this->current.angle.y = player->shape_angle.y + 0x4000;
            } else {
                i_this->current.angle.y = player->shape_angle.y - 0x4000;
            }
            i_this->speedF = 40.0f;
            i_this->speed.y = -20.0f;
            i_this->mCreatureSound.startCreatureVoice(Z2SE_EN_BA_V_DEATH, -1);
            anm_init(i_this, e_ba_class::ANM_DEAD, 1.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            i_this->mTimer[0] = 60;
            i_this->mMode = 2;
            i_this->health = 0;
        }
        break;

    case 2:
        if (i_this->mAcch.ChkGroundHit()) {
            i_this->mCreatureSound.startCreatureVoice(Z2SE_EN_BA_V_DEATH2, -1);
            i_this->mCreatureSound.startCreatureSound(Z2SE_CM_BODYFALL_S, 0, -1);
            i_this->mMode = 3;
        }
        // fallthrough

    case 3:
        if (i_this->mTimer[0] == 0) {
            ba_disappear(i_this);
            fopAcM_delete(i_this);
        }
        break;
    }

    cXyz vec1, vec2;
    vec1.x = 0.0f;
    vec1.y = 0.0f;
    vec1.z = i_this->speedF;
    mDoMtx_YrotS(*calc_mtx, i_this->current.angle.y);
    MtxPosition(&vec1, &vec2);
    i_this->speed.x = vec2.x;
    i_this->speed.z = vec2.z;
    i_this->current.pos += i_this->speed;
    i_this->speed.y -= 4.0f;
    if (i_this->mAcch.ChkGroundHit()) {
        cLib_addCalc0(&i_this->speedF, 1.0f, 15.0f);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_ba_wolfbite(e_ba_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/e_ba_wolfbite__FP10e_ba_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80682458-8068245C 00009C 0004+00 0/1 0/0 0/0 .rodata          @4654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4654 = 15000.0f;
COMPILER_STRIP_GATE(0x80682458, &lit_4654);
#pragma pop

/* 8068245C-80682460 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4655 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4655 = 1000.0f;
COMPILER_STRIP_GATE(0x8068245C, &lit_4655);
#pragma pop

/* 80680AF4-80680C98 001EF4 01A4+00 1/1 0/0 0/0 .text            e_ba_wind__FP10e_ba_class */
#ifdef NONMATCHING
// matches with literals
static void e_ba_wind(e_ba_class* i_this) {
    fopAc_ac_c* boomerang = (fopAc_ac_c*)fpcM_Search(shot_b_sub, i_this);
    i_this->speedF = 0.0f;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, e_ba_class::ANM_FURA2, 3.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        i_this->mMode = 1;
        i_this->mWindSpinSpeed = -(cM_rndFX(1000.0f) + 15000.0f);
        i_this->mWindOffset.x = cM_rndFX(50.0f);
        i_this->mWindOffset.y = cM_rndFX(50.0f);
        i_this->mWindOffset.z = cM_rndFX(50.0f);
        // fallthrough

    case 1:
        if (boomerang == NULL) {
            i_this->mMode = 2;
            i_this->mTimer[0] = 60;
        } else {
            i_this->current.pos = boomerang->current.pos + i_this->mWindOffset;
            i_this->mCreatureSound.startCreatureVoiceLevel(Z2SE_EN_BA_V_SPIN, -1);
        }
        break;

    case 2:
        cLib_addCalcAngleS2(&i_this->mWindSpinSpeed, 0, 4, 450);
        if (i_this->mTimer[0] == 0) {
            i_this->mAction = e_ba_class::ACT_FIGHT_FLY;
            i_this->mMode = 0;
        }
    }

    i_this->current.angle.y += i_this->mWindSpinSpeed;
    i_this->shape_angle.y = i_this->current.angle.y;
    i_this->current.angle.z = 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_ba_wind(e_ba_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/e_ba_wind__FP10e_ba_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80682460-80682464 0000A4 0004+00 0/2 0/0 0/0 .rodata          @4678 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4678 = 20.0f;
COMPILER_STRIP_GATE(0x80682460, &lit_4678);
#pragma pop

/* 80682464-80682468 0000A8 0004+00 0/2 0/0 0/0 .rodata          @4679 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4679 = 100000.0f;
COMPILER_STRIP_GATE(0x80682464, &lit_4679);
#pragma pop

/* 80682468-8068246C 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4680 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4680 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80682468, &lit_4680);
#pragma pop

/* 80680C98-80680DCC 002098 0134+00 1/1 0/0 0/0 .text            e_ba_appear__FP10e_ba_class */
#ifdef NONMATCHING
// matches with literals
static void e_ba_appear(e_ba_class* i_this) {
    cXyz vec;
    i_this->mIFrames = 60;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, e_ba_class::ANM_APPEAR, 0.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        i_this->mMode = 1;
        i_this->mTimer[0] = cM_rndF(20.0f) + 40.0f;
        i_this->speedF = 30.0f;
        mDoMtx_YrotS(*calc_mtx, i_this->current.angle.y);
        vec.x = 0.0f;
        vec.y = 0.0f;
        vec.z = 100000.0f;
        MtxPosition(&vec, &i_this->mTargetPos);
        i_this->mTargetPos += i_this->current.pos;
        // fallthrough

    case 1:
        cLib_addCalc0(&i_this->speedF, 1.0f, 0.7f);
        if (i_this->mTimer[0] == 0 || i_this->speedF < 0.1f || i_this->mAcch.ChkWallHit()) {
            i_this->mAction = e_ba_class::ACT_FIGHT_FLY;
            i_this->mMode = 0;
        }
        break;
    }

    fly_move(i_this);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_ba_appear(e_ba_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/e_ba_appear__FP10e_ba_class.s"
}
#pragma pop
#endif

/* 80680DCC-80681128 0021CC 035C+00 2/1 0/0 0/0 .text            action__FP10e_ba_class */
#ifdef NONMATCHING
// matches with literals
static void action(e_ba_class* i_this) {
    cXyz vec1, vec2, vec3;
    i_this->mPlayerAngleY = fopAcM_searchPlayerAngleY(i_this);
    i_this->mPlayerDistanceXZ = fopAcM_searchPlayerDistanceXZ(i_this);
    i_this->field_0x566 = 0;
    damage_check(i_this);
    i_this->mSph.OffAtVsPlayerBit();

    s8 link_search = false;
    switch (i_this->mAction) {
    case e_ba_class::ACT_ROOF:
        e_ba_roof(i_this);
        break;
    case e_ba_class::ACT_FIGHT_FLY:
        e_ba_fight_fly(i_this);
        i_this->field_0x566 = 1;
        link_search = true;
        break;
    case e_ba_class::ACT_FIGHT:
        e_ba_fight(i_this);
        i_this->field_0x566 = 1;
        link_search = true;
        break;
    case e_ba_class::ACT_ATTACK:
        e_ba_attack(i_this);
        i_this->mSph.OnAtVsPlayerBit();
        i_this->field_0x566 = 1;
        link_search = true;
        break;
    case e_ba_class::ACT_RETURN:
        e_ba_return(i_this);
        break;
    case e_ba_class::ACT_FLY:
        e_ba_fly(i_this);
        i_this->field_0x566 = 1;
        break;
    case e_ba_class::ACT_PATH_FLY:
        e_ba_path_fly(i_this);
        break;
    case e_ba_class::ACT_CHANCE:
        e_ba_chance(i_this);
        break;
    case e_ba_class::ACT_WOLFBITE:
        e_ba_wolfbite(i_this);
        break;
    case e_ba_class::ACT_WIND:
        e_ba_wind(i_this);
        break;
    case e_ba_class::ACT_APPEAR:
        e_ba_appear(i_this);
        link_search = true;
        break;
    }

    if (link_search) {
        i_this->mCreatureSound.setLinkSearch(true);
    } else {
        i_this->mCreatureSound.setLinkSearch(false);
    }

    if (i_this->mKnockbackSpeed > 0.1f) {
        vec1.x = 0.0f;
        vec1.y = 0.0f;
        vec1.z = -i_this->mKnockbackSpeed;
        mDoMtx_YrotS(*calc_mtx, i_this->mKnockbackAngle);
        MtxPosition(&vec1, &vec2);
        i_this->current.pos += vec2;
        cLib_addCalc0(&i_this->mKnockbackSpeed, 1.0f, 5.0f);
        if (i_this->mIsDying) {
            i_this->shape_angle.y += 0x1300;
            i_this->shape_angle.z += 0x1700;
            if (i_this->mKnockbackSpeed <= 1.0f || i_this->mAcch.ChkWallHit()) {
                fopAcM_delete(i_this);
                if (i_this->mHomeType == e_ba_class::HOME_APPEAR) {
                    int item_no = dComIfGs_getLife() <= 4 ? HEART : ARROW_10;
                    fopAcM_createItem(&i_this->current.pos, item_no, -1, -1, NULL, NULL, 0);
                    fopAcM_createDisappear(i_this, &i_this->current.pos, 6, 0, 0xff);
                } else {
                    ba_disappear(i_this);
                }
            }
        }
    } else {
        if (i_this->mAction != e_ba_class::ACT_WIND) {
            cLib_addCalcAngleS2(&i_this->shape_angle.y, i_this->current.angle.y, 4, 0x2000);
            cLib_addCalcAngleS2(&i_this->shape_angle.x, 0, 4, 0x2000);
            cLib_addCalcAngleS2(&i_this->shape_angle.z, i_this->current.angle.z, 4, 0x2000);
        }
    }

    i_this->current.pos.y -= 30.0f;
    i_this->old.pos.y -= 30.0f;
    i_this->mAcch.CrrPos(dComIfG_Bgsp());
    i_this->current.pos.y += 30.0f;
    i_this->old.pos.y += 30.0f;

    vec3.x = 0.5f;
    vec3.y = 0.5f;
    vec3.z = 0.5f;
    setMidnaBindEffect(i_this, &i_this->mCreatureSound, &i_this->eyePos, &vec3);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void action(e_ba_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/action__FP10e_ba_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8068246C-80682470 0000B0 0004+00 0/0 0/0 0/0 .rodata          @4747 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4747 = 5.0f;
COMPILER_STRIP_GATE(0x8068246C, &lit_4747);
#pragma pop

/* 80682470-80682474 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4938 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4938 = 20000.0f;
COMPILER_STRIP_GATE(0x80682470, &lit_4938);
#pragma pop

/* 80682474-80682478 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4939 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4939 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80682474, &lit_4939);
#pragma pop

/* 80681128-80681734 002528 060C+00 2/1 0/0 0/0 .text            daE_BA_Execute__FP10e_ba_class */
#ifdef NONMATCHING
// matches with literals
static int daE_BA_Execute(e_ba_class* i_this) {
    daPy_py_c* player = static_cast<daPy_py_c*>(dComIfGp_getPlayer(0));

    i_this->mCounter++;
    for (int i = 0; i < 4; i++) {
        if (i_this->mTimer[i] != 0) {
            i_this->mTimer[i]--;
        }
    }
    if (i_this->mIFrames != 0) {
        i_this->mIFrames--;
    }

    action(i_this);

    i_this->mpMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(i_this)));

    if ((i_this->mAnm == e_ba_class::ANM_HOVERING || i_this->mAnm == e_ba_class::ANM_FLY)) {
        if (i_this->mpMorf->checkFrame(4.0f)) {
            if (i_this->mAnm == e_ba_class::ANM_HOVERING) {
                i_this->mCreatureSound.startCreatureSound(Z2SE_EN_BA_WING, 0, -1);
            } else {
                i_this->mCreatureSound.startCreatureSound(Z2SE_EN_BA_WING, 0, -1);
            }
        }
    } else if (i_this->mAnm == e_ba_class::ANM_FURA2) {
        if (i_this->mpMorf->checkFrame(0.0f)) {
            i_this->mCreatureSound.startCreatureVoice(Z2SE_EN_BA_V_FURA, -1);
        }
    }

    J3DModel* model = i_this->mpMorf->getModel();
    if (i_this->mAction == e_ba_class::ACT_WOLFBITE && i_this->mMode < 2) {
        fopAcM_OffStatus(i_this, 0);
        i_this->attention_info.flags = 0;
        MTXCopy(daPy_getLinkPlayerActorClass()->getWolfMouthMatrix(), mDoMtx_stack_c::get());
        model->setBaseTRMtx(mDoMtx_stack_c::get());
        mDoMtx_stack_c::multVecZero(&i_this->current.pos);
    } else {
        if (i_this->health > 0 && !i_this->mIsDying
                    && player->current.pos.y < i_this->current.pos.y) {
            fopAcM_OnStatus(i_this, 0);
            i_this->attention_info.flags = 4;
        } else {
            fopAcM_OffStatus(i_this, 0);
            i_this->attention_info.flags = 0;
        }
        mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
        mDoMtx_stack_c::YrotM(i_this->shape_angle.y);
        mDoMtx_stack_c::ZrotM(i_this->shape_angle.z);
        mDoMtx_stack_c::scaleM(l_HIO.mScale, l_HIO.mScale, l_HIO.mScale);
        model->setBaseTRMtx(mDoMtx_stack_c::get());
    }

    i_this->mpMorf->modelCalc();
    MTXCopy(model->getAnmMtx(2), *calc_mtx);

    cXyz zero;
    zero.set(0.0f, 0.0f, 0.0f);
    MtxPosition(&zero, &i_this->eyePos);
    i_this->attention_info.position = i_this->eyePos;
    i_this->attention_info.position.y += 20.0f;

    cXyz center;
    zero.set(0.0f, 0.0f, 0.0f);
    MtxPosition(&zero, &center);
    if (i_this->mIFrames != 0) {
        center.z -= 20000.0f;
    }
    i_this->mSph.SetC(center);
    i_this->mSph.SetR(l_HIO.mScale * 30.0f);
    dComIfG_Ccsp()->Set(&i_this->mSph);

    if (i_this->mType != e_ba_class::TYPE_NORMAL) {
        i_this->field_0x6b0 = i_this->current.pos - i_this->old.pos;
        i_this->field_0x6b0 *= 0.6f;
        if (i_this->mType == e_ba_class::TYPE_FIRE) {
            static u16 fire_name[4] = {0x8216, 0x8217, 0x8218, 0x8219};
            if (i_this->mAction != e_ba_class::ACT_APPEAR) {
                for (int i = 0; i < 4; i++) {
                    i_this->mParticleKey[i] =
                        dComIfGp_particle_set(i_this->mParticleKey[i], fire_name[i],
                                              &i_this->current.pos, NULL, NULL);
                    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(i_this->mParticleKey[i]);
                    if (emitter != NULL) {
                        emitter->setGlobalSRTMatrix(i_this->mpMorf->getModel()->getAnmMtx(18));
                        emitter->setParticleCallBackPtr(dPa_control_c::getParticleTracePCB());
                        emitter->setUserWork((u32)&i_this->field_0x6b0);
                    }
                }
                i_this->mCreatureSound.startCreatureSoundLevel(Z2SE_EN_BA_FIRE, 0, -1);
            }
        } else {
            static u16 ice_name[3] = {0x821a, 0x821b, 0x821c};
            for (int i = 0; i < 3; i++) {
                i_this->mParticleKey[i] =
                    dComIfGp_particle_set(i_this->mParticleKey[i], ice_name[i],
                                          &i_this->current.pos, NULL, NULL);
                JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(i_this->mParticleKey[i]);
                if (emitter != NULL) {
                    emitter->setGlobalSRTMatrix(i_this->mpMorf->getModel()->getAnmMtx(18));
                    emitter->setParticleCallBackPtr(dPa_control_c::getParticleTracePCB());
                    emitter->setUserWork((u32)&i_this->field_0x6b0);
                }
            }
        }
    }

    i_this->attention_info.flags |= 0x200000;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daE_BA_Execute(e_ba_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/daE_BA_Execute__FP10e_ba_class.s"
}
#pragma pop
#endif

/* 80681734-8068173C 002B34 0008+00 1/0 0/0 0/0 .text            daE_BA_IsDelete__FP10e_ba_class */
static int daE_BA_IsDelete(e_ba_class* i_this) {
    return true;
}

/* 8068173C-806817A0 002B3C 0064+00 1/0 0/0 0/0 .text            daE_BA_Delete__FP10e_ba_class */
#ifdef NONMATCHING
// matches with static data
static int daE_BA_Delete(e_ba_class* i_this) {
    dComIfG_resDelete(&i_this->mPhase, i_this->mArcName);
    if (i_this->mHIOInit) {
        hioInit = false;
    }
    if (i_this->heap != NULL) {
        i_this->mpMorf->stopZelAnime();
    }
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daE_BA_Delete(e_ba_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/daE_BA_Delete__FP10e_ba_class.s"
}
#pragma pop
#endif

/* 806817A0-80681890 002BA0 00F0+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
#ifdef NONMATCHING
// matches with literals
static int useHeapInit(fopAc_ac_c* i_this) {
    e_ba_class* _this = static_cast<e_ba_class*>(i_this);
    _this->mpMorf = new mDoExt_McaMorfSO(
        static_cast<J3DModelData*>(dComIfG_getObjectRes(_this->mArcName, 13)), NULL, NULL,
        static_cast<J3DAnmTransform*>(dComIfG_getObjectRes(_this->mArcName, 10)),
        2, 1.0f, 0, -1, &_this->mCreatureSound, 0x80000, 0x11000084);
    if (_this->mpMorf == NULL || _this->mpMorf->mpModel == NULL) {
        return 0;
    } else {
        return 1;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int useHeapInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80682478-8068247C 0000BC 0004+00 0/1 0/0 0/0 .rodata          @5134 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5134 = -200.0f;
COMPILER_STRIP_GATE(0x80682478, &lit_5134);
#pragma pop

/* 8068247C-80682484 0000C0 0004+04 0/1 0/0 0/0 .rodata          @5135 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5135[1 + 1 /* padding */] = {
    65535.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8068247C, &lit_5135);
#pragma pop

/* 80682484-8068248C 0000C8 0008+00 0/1 0/0 0/0 .rodata          @5137 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5137[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80682484, &lit_5137);
#pragma pop

/* 80681890-80681CEC 002C90 045C+00 1/0 0/0 0/0 .text            daE_BA_Create__FP10fopAc_ac_c */
#ifdef NONMATCHING
// matches with literals
static cPhs__Step daE_BA_Create(fopAc_ac_c* i_this) {
    static char* arc_name[3] = {"E_ba", "E_fb", "E_ib"};

    static dCcD_SrcSph cc_sph_src = {
        {
            {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
            {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
            {0x0}, // mGObjCo
        }, // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
        } // mSphAttr
    };

    fopAcM_SetupActor(i_this, e_ba_class);
    e_ba_class* _this = static_cast<e_ba_class*>(i_this);

    _this->mType = (fopAcM_GetParam(_this) & 0xf000) >> 12;
    if (_this->mType > 2) {
        _this->mType = e_ba_class::TYPE_NORMAL;
    }
    _this->mArcName = arc_name[_this->mType];

    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&_this->mPhase, _this->mArcName);

    if (step == cPhs_COMPLEATE_e) {
        int sw = fopAcM_GetParam(_this) >> 24;
        if (sw != 0xff && dComIfGs_isSwitch(sw, fopAcM_GetRoomNo(_this))) {
            return cPhs_ERROR_e;
        }

        _this->mHomeType = fopAcM_GetParam(_this) & 0xff;
        _this->mDistanceParam = (fopAcM_GetParam(_this) >> 8) & 0xf;
        _this->mPathIndex = (fopAcM_GetParam(_this) >> 16) & 0xff;
        if (_this->mHomeType == 0xff) {
            _this->mHomeType = e_ba_class::HOME_ROOF;
        }
        if (_this->mDistanceParam == 0xf) {
            _this->mDistanceParam = 10;
        }

        _this->mFightFlyDistance = (f32)_this->mDistanceParam * 100.0f;
        if (fopAcM_SearchByName(PROC_E_PZ) != NULL) {
            _this->mFightFlyDistance = 100000.0f;
        }

        if (!fopAcM_entrySolidHeap(_this, useHeapInit, 0x2000)) {
            return cPhs_ERROR_e;
        }

        if (_this->mPathIndex != 0xff) {
            _this->mpPath = dPath_GetRoomPath(_this->mPathIndex, fopAcM_GetRoomNo(_this));
            if (_this->mpPath == NULL) {
                return cPhs_ERROR_e;
            }
            _this->field_0x5bc = _this->mPathIndex + 1;
            _this->mPathStep = 1;
            _this->mAction = e_ba_class::ACT_PATH_FLY;
        } else {
            if (_this->mHomeType == e_ba_class::HOME_FLY) {
                _this->mAction = e_ba_class::ACT_FLY;
            } else if (_this->mHomeType == e_ba_class::HOME_APPEAR) {
                _this->mAction = e_ba_class::ACT_APPEAR;
                _this->mIFrames = 10;
            }
        }

        if (!hioInit) {
            _this->mHIOInit = true;
            hioInit = true;
            l_HIO.field_0x04 = -1;
        }

        _this->attention_info.flags = 4;
        fopAcM_SetMtx(_this, _this->mpMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(_this, -200.0f, -200.0f, -200.0f);
        fopAcM_SetMax(_this, 200.0f, 200.0f, 200.0f);
        _this->health = 1;
        _this->field_0x560 = 1;

        _this->mStts.Init(30, 0, _this);
        _this->mSph.Set(cc_sph_src);
        _this->mSph.SetStts(&_this->mStts);
        if (_this->mType == e_ba_class::TYPE_FIRE) {
            _this->mSph.SetAtType(0x100);
            _this->mSph.SetAtMtrl(1);
        } else if (_this->mType == e_ba_class::TYPE_ICE) {
            _this->mSph.SetAtType(0x100);
            _this->mSph.SetAtMtrl(2);
        }

        _this->mAcch.Set(fopAcM_GetPosition_p(_this), fopAcM_GetOldPosition_p(_this), _this,
                          1, &_this->mAcchCir, fopAcM_GetSpeed_p(_this), NULL, NULL);
        _this->mAcchCir.SetWall(50.0f, 50.0f);

        _this->mCreatureSound.init(&_this->current.pos, &_this->eyePos, 3, 1);
        _this->mCreatureSound.setEnemyName("E_ba");
        _this->mAtInfo.mpSound = &_this->mCreatureSound;
        _this->mAtInfo.mPowerType = 1;
        _this->mCounter = cM_rndF(0x10000);

        daE_BA_Execute(_this);
    }
    return step;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm cPhs__Step daE_BA_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/daE_BA_Create__FP10fopAc_ac_c.s"
}
#pragma pop
#endif

#ifndef NONMATCHING
/* 80681CEC-80681D34 0030EC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 80681D34-80681D7C 003134 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80681D7C-80681DD8 00317C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80681DD8-80681E48 0031D8 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80681E48-80681EB8 003248 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80681EB8-80681F00 0032B8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80681F00-80681F48 003300 0048+00 2/1 0/0 0/0 .text            __dt__12daE_BA_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daE_BA_HIO_c::~daE_BA_HIO_c() {
extern "C" asm void __dt__12daE_BA_HIO_cFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/__dt__12daE_BA_HIO_cFv.s"
}
#pragma pop

/* 80681F48-80681F84 003348 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_ba_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_e_ba_cpp() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/__sinit_d_a_e_ba_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80681F48, __sinit_d_a_e_ba_cpp);
#pragma pop

/* 80681F84-80681F8C 003384 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80681F84() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/func_80681F84.s"
}
#pragma pop

/* 80681F8C-80681F94 00338C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80681F8C() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/func_80681F8C.s"
}
#pragma pop
#endif

/* 80681F94-806823A8 003394 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ba/d_a_e_ba/setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz.s"
}
#pragma pop

/* 8068248C-8068248C 0000D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
