/**
 * @file d_a_e_bu.cpp
 * 
*/

#include "d/actor/d_a_e_bu.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__12daE_BU_HIO_cFv();
extern "C" static void bu_disappear__FP10fopAc_ac_c();
extern "C" static void anm_init__FP10e_bu_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daE_BU_Draw__FP10e_bu_class();
extern "C" static void other_bg_check__FP10e_bu_classP10fopAc_ac_c();
extern "C" static void pl_check__FP10e_bu_classfs();
extern "C" static void damage_check__FP10e_bu_class();
extern "C" static void path_check__FP10e_bu_class();
extern "C" static void fly_move__FP10e_bu_class();
extern "C" static void e_bu_wait__FP10e_bu_class();
extern "C" static void e_bu_fight_fly__FP10e_bu_class();
extern "C" static void e_bu_fight__FP10e_bu_class();
extern "C" static void e_bu_attack__FP10e_bu_class();
extern "C" static void e_bu_fly__FP10e_bu_class();
extern "C" static void e_bu_path_fly__FP10e_bu_class();
extern "C" static void e_bu_chance__FP10e_bu_class();
extern "C" static void e_bu_head__FP10e_bu_class();
extern "C" static void action__FP10e_bu_class();
extern "C" static void daE_BU_Execute__FP10e_bu_class();
extern "C" static bool daE_BU_IsDelete__FP10e_bu_class();
extern "C" static void daE_BU_Delete__FP10e_bu_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_BU_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_BU_HIO_cFv();
extern "C" void __sinit_d_a_e_bu_cpp();
extern "C" static void func_80694258();
extern "C" static void func_80694260();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" extern char const* const d_a_e_bu__stringBase0;

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
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetRoomPath__Fii();
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
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
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
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_19();
extern "C" void _savegpr_23();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_23();
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
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" u8 mParticleTracePCB__13dPa_control_c[4 + 4 /* padding */];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80694690-80694694 000000 0004+00 17/17 0/0 0/0 .rodata          @3788 */
SECTION_RODATA static f32 const lit_3788 = 100.0f;
COMPILER_STRIP_GATE(0x80694690, &lit_3788);

/* 80694694-80694698 000004 0004+00 1/13 0/0 0/0 .rodata          @3789 */
SECTION_RODATA static u8 const lit_3789[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80694694, &lit_3789);

/* 80694698-806946A0 000008 0004+04 2/13 0/0 0/0 .rodata          @3790 */
SECTION_RODATA static f32 const lit_3790[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80694698, &lit_3790);

/* 806946A0-806946A8 000010 0008+00 0/2 0/0 0/0 .rodata          @3791 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3791[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806946A0, &lit_3791);
#pragma pop

/* 806946A8-806946B0 000018 0008+00 0/2 0/0 0/0 .rodata          @3792 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3792[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806946A8, &lit_3792);
#pragma pop

/* 806946B0-806946B8 000020 0008+00 0/2 0/0 0/0 .rodata          @3793 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3793[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806946B0, &lit_3793);
#pragma pop

/* 806946B8-806946BC 000028 0004+00 0/1 0/0 0/0 .rodata          @3794 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3794 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x806946B8, &lit_3794);
#pragma pop

/* 806946BC-806946C0 00002C 0004+00 0/2 0/0 0/0 .rodata          @3809 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3809 = 1.5f;
COMPILER_STRIP_GATE(0x806946BC, &lit_3809);
#pragma pop

/* 806946C0-806946C4 000030 0004+00 0/1 0/0 0/0 .rodata          @3810 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3810 = 15.0f;
COMPILER_STRIP_GATE(0x806946C0, &lit_3810);
#pragma pop

/* 806946C4-806946C8 000034 0004+00 0/1 0/0 0/0 .rodata          @3811 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3811 = 250.0f;
COMPILER_STRIP_GATE(0x806946C4, &lit_3811);
#pragma pop

/* 806946C8-806946CC 000038 0004+00 0/2 0/0 0/0 .rodata          @3812 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3812 = 40.0f;
COMPILER_STRIP_GATE(0x806946C8, &lit_3812);
#pragma pop

/* 8069477C-80694788 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80694788-8069479C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 8069479C-806947A4 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3667 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 806947A4-806947AC 000028 0008+00 0/1 0/0 0/0 .data            e_env$3668 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 806947AC-806947B4 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3676 */
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

/* 806947B4-806947E8 -00001 0034+00 1/1 0/0 0/0 .data            @4457 */
SECTION_DATA static void* lit_4457[13] = {
    (void*)(((char*)e_bu_head__FP10e_bu_class) + 0x48),
    (void*)(((char*)e_bu_head__FP10e_bu_class) + 0x68),
    (void*)(((char*)e_bu_head__FP10e_bu_class) + 0x11C),
    (void*)(((char*)e_bu_head__FP10e_bu_class) + 0x15C),
    (void*)(((char*)e_bu_head__FP10e_bu_class) + 0x278),
    (void*)(((char*)e_bu_head__FP10e_bu_class) + 0x438),
    (void*)(((char*)e_bu_head__FP10e_bu_class) + 0x438),
    (void*)(((char*)e_bu_head__FP10e_bu_class) + 0x438),
    (void*)(((char*)e_bu_head__FP10e_bu_class) + 0x438),
    (void*)(((char*)e_bu_head__FP10e_bu_class) + 0x438),
    (void*)(((char*)e_bu_head__FP10e_bu_class) + 0x2D0),
    (void*)(((char*)e_bu_head__FP10e_bu_class) + 0x328),
    (void*)(((char*)e_bu_head__FP10e_bu_class) + 0x398),
};

/* 806947E8-80694840 -00001 0058+00 1/1 0/0 0/0 .data            @4547 */
SECTION_DATA static void* lit_4547[22] = {
    (void*)(((char*)action__FP10e_bu_class) + 0x8C),
    (void*)(((char*)action__FP10e_bu_class) + 0xA4),
    (void*)(((char*)action__FP10e_bu_class) + 0xB0),
    (void*)(((char*)action__FP10e_bu_class) + 0xBC),
    (void*)(((char*)action__FP10e_bu_class) + 0x168),
    (void*)(((char*)action__FP10e_bu_class) + 0xD4),
    (void*)(((char*)action__FP10e_bu_class) + 0xE0),
    (void*)(((char*)action__FP10e_bu_class) + 0x168),
    (void*)(((char*)action__FP10e_bu_class) + 0x168),
    (void*)(((char*)action__FP10e_bu_class) + 0x168),
    (void*)(((char*)action__FP10e_bu_class) + 0xEC),
    (void*)(((char*)action__FP10e_bu_class) + 0x168),
    (void*)(((char*)action__FP10e_bu_class) + 0x168),
    (void*)(((char*)action__FP10e_bu_class) + 0x168),
    (void*)(((char*)action__FP10e_bu_class) + 0x168),
    (void*)(((char*)action__FP10e_bu_class) + 0x104),
    (void*)(((char*)action__FP10e_bu_class) + 0x168),
    (void*)(((char*)action__FP10e_bu_class) + 0x168),
    (void*)(((char*)action__FP10e_bu_class) + 0x168),
    (void*)(((char*)action__FP10e_bu_class) + 0x168),
    (void*)(((char*)action__FP10e_bu_class) + 0x168),
    (void*)(((char*)action__FP10e_bu_class) + 0x11C),
};

/* 80694840-80694848 0000C4 0008+00 1/1 0/0 0/0 .data            fire_name$4572 */
SECTION_DATA static u8 fire_name[8] = {
    0x82, 0x1D, 0x82, 0x1E, 0x82, 0x1F, 0x82, 0x20,
};

/* 80694848-80694850 0000CC 0006+02 1/1 0/0 0/0 .data            ice_name$4573 */
SECTION_DATA static u8 ice_name[6 + 2 /* padding */] = {
    0x82,
    0x21,
    0x82,
    0x22,
    0x82,
    0x23,
    /* padding */
    0x00,
    0x00,
};

/* 80694850-80694890 0000D4 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4803 */
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

/* 80694890-806948B0 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_BU_Method */
static actor_method_class l_daE_BU_Method = {
    (process_method_func)daE_BU_Create__FP10fopAc_ac_c,
    (process_method_func)daE_BU_Delete__FP10e_bu_class,
    (process_method_func)daE_BU_Execute__FP10e_bu_class,
    (process_method_func)daE_BU_IsDelete__FP10e_bu_class,
    (process_method_func)daE_BU_Draw__FP10e_bu_class,
};

/* 806948B0-806948E0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_BU */
extern actor_process_profile_definition g_profile_E_BU = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_BU,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_bu_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  181,                    // mPriority
  &l_daE_BU_Method,       // sub_method
  0x100C0120,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 806948E0-806948EC 000164 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 806948EC-806948F8 000170 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806948F8-80694904 00017C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80694904-80694910 000188 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80694910-8069491C 000194 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8069491C-80694940 0001A0 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80694260,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80694258,
};

/* 80694940-8069494C 0001C4 000C+00 2/2 0/0 0/0 .data            __vt__12daE_BU_HIO_c */
SECTION_DATA extern void* __vt__12daE_BU_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_BU_HIO_cFv,
};

/* 806911AC-806911F0 0000EC 0044+00 1/1 0/0 0/0 .text            __ct__12daE_BU_HIO_cFv */
daE_BU_HIO_c::daE_BU_HIO_c() {
    // NONMATCHING
}

/* 806911F0-80691250 000130 0060+00 1/1 0/0 0/0 .text            bu_disappear__FP10fopAc_ac_c */
static void bu_disappear(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806946CC-806946D0 00003C 0004+00 1/1 0/0 0/0 .rodata          @3836 */
SECTION_RODATA static f32 const lit_3836 = -1.0f;
COMPILER_STRIP_GATE(0x806946CC, &lit_3836);

/* 80694770-80694770 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80694770 = "E_BU";
#pragma pop

/* 80691250-806912FC 000190 00AC+00 6/6 0/0 0/0 .text            anm_init__FP10e_bu_classifUcf */
static void anm_init(e_bu_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* 806912FC-80691458 00023C 015C+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806946D0-806946D4 000040 0004+00 1/5 0/0 0/0 .rodata          @3889 */
SECTION_RODATA static f32 const lit_3889 = 30.0f;
COMPILER_STRIP_GATE(0x806946D0, &lit_3889);

/* 80694958-8069495C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80694958[4];

/* 8069495C-80694968 00000C 000C+00 1/1 0/0 0/0 .bss             @3804 */
static u8 lit_3804[12];

/* 80694968-80694984 000018 001C+00 11/11 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[28];

/* 80691458-80691504 000398 00AC+00 1/0 0/0 0/0 .text            daE_BU_Draw__FP10e_bu_class */
static void daE_BU_Draw(e_bu_class* param_0) {
    // NONMATCHING
}

/* 80691504-806915DC 000444 00D8+00 1/1 0/0 0/0 .text other_bg_check__FP10e_bu_classP10fopAc_ac_c
 */
static void other_bg_check(e_bu_class* param_0, fopAc_ac_c* param_1) {
    // NONMATCHING
}

/* 806915DC-80691660 00051C 0084+00 5/5 0/0 0/0 .text            pl_check__FP10e_bu_classfs */
static void pl_check(e_bu_class* param_0, f32 param_1, s16 param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806946D4-806946D8 000044 0004+00 0/3 0/0 0/0 .rodata          @3968 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3968 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x806946D4, &lit_3968);
#pragma pop

/* 806946D8-806946DC 000048 0004+00 0/1 0/0 0/0 .rodata          @3969 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3969 = 80.0f;
COMPILER_STRIP_GATE(0x806946D8, &lit_3969);
#pragma pop

/* 80691660-8069182C 0005A0 01CC+00 1/1 0/0 0/0 .text            damage_check__FP10e_bu_class */
static void damage_check(e_bu_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806946DC-806946E0 00004C 0004+00 0/1 0/0 0/0 .rodata          @4001 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4001 = 50.0f;
COMPILER_STRIP_GATE(0x806946DC, &lit_4001);
#pragma pop

/* 80694984-80694A83 000034 00FF+00 1/1 0/0 0/0 .bss             check_index$4007 */
static u8 check_index[255];

/* 8069182C-80691A94 00076C 0268+00 2/2 0/0 0/0 .text            path_check__FP10e_bu_class */
static void path_check(e_bu_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806946E0-806946E4 000050 0004+00 0/4 0/0 0/0 .rodata          @4087 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4087 = 2000.0f;
COMPILER_STRIP_GATE(0x806946E0, &lit_4087);
#pragma pop

/* 806946E4-806946E8 000054 0004+00 0/1 0/0 0/0 .rodata          @4088 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4088 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x806946E4, &lit_4088);
#pragma pop

/* 80691A94-80691C24 0009D4 0190+00 4/4 0/0 0/0 .text            fly_move__FP10e_bu_class */
static void fly_move(e_bu_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806946E8-806946EC 000058 0004+00 0/1 0/0 0/0 .rodata          @4118 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4118 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x806946E8, &lit_4118);
#pragma pop

/* 806946EC-806946F0 00005C 0004+00 0/3 0/0 0/0 .rodata          @4119 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4119 = 20.0f;
COMPILER_STRIP_GATE(0x806946EC, &lit_4119);
#pragma pop

/* 806946F0-806946F4 000060 0004+00 0/5 0/0 0/0 .rodata          @4120 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4120 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x806946F0, &lit_4120);
#pragma pop

/* 806946F4-806946F8 000064 0004+00 0/1 0/0 0/0 .rodata          @4121 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4121 = 35.0f;
COMPILER_STRIP_GATE(0x806946F4, &lit_4121);
#pragma pop

/* 80691C24-80691DC4 000B64 01A0+00 1/1 0/0 0/0 .text            e_bu_wait__FP10e_bu_class */
static void e_bu_wait(e_bu_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806946F8-806946FC 000068 0004+00 0/4 0/0 0/0 .rodata          @4142 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4142 = 10.0f;
COMPILER_STRIP_GATE(0x806946F8, &lit_4142);
#pragma pop

/* 80691DC4-80691F10 000D04 014C+00 1/1 0/0 0/0 .text            e_bu_fight_fly__FP10e_bu_class */
static void e_bu_fight_fly(e_bu_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806946FC-80694700 00006C 0004+00 0/1 0/0 0/0 .rodata          @4205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4205 = 12288.0f;
COMPILER_STRIP_GATE(0x806946FC, &lit_4205);
#pragma pop

/* 80694700-80694704 000070 0004+00 0/2 0/0 0/0 .rodata          @4206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4206 = 150.0f;
COMPILER_STRIP_GATE(0x80694700, &lit_4206);
#pragma pop

/* 80691F10-8069222C 000E50 031C+00 1/1 0/0 0/0 .text            e_bu_fight__FP10e_bu_class */
static void e_bu_fight(e_bu_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80694704-80694708 000074 0004+00 0/1 0/0 0/0 .rodata          @4258 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4258 = 2.0f;
COMPILER_STRIP_GATE(0x80694704, &lit_4258);
#pragma pop

/* 80694708-8069470C 000078 0004+00 0/1 0/0 0/0 .rodata          @4259 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4259 = 120.0f;
COMPILER_STRIP_GATE(0x80694708, &lit_4259);
#pragma pop

/* 8069470C-80694710 00007C 0004+00 0/1 0/0 0/0 .rodata          @4260 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4260 = 3000.0f;
COMPILER_STRIP_GATE(0x8069470C, &lit_4260);
#pragma pop

/* 80694710-80694714 000080 0004+00 0/1 0/0 0/0 .rodata          @4261 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4261 = 70.0f;
COMPILER_STRIP_GATE(0x80694710, &lit_4261);
#pragma pop

/* 8069222C-8069243C 00116C 0210+00 1/1 0/0 0/0 .text            e_bu_attack__FP10e_bu_class */
static void e_bu_attack(e_bu_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80694714-80694718 000084 0004+00 0/1 0/0 0/0 .rodata          @4299 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4299 = 500.0f;
COMPILER_STRIP_GATE(0x80694714, &lit_4299);
#pragma pop

/* 80694718-8069471C 000088 0004+00 0/3 0/0 0/0 .rodata          @4300 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4300 = 200.0f;
COMPILER_STRIP_GATE(0x80694718, &lit_4300);
#pragma pop

/* 8069471C-80694720 00008C 0004+00 0/2 0/0 0/0 .rodata          @4301 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4301 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x8069471C, &lit_4301);
#pragma pop

/* 8069243C-8069262C 00137C 01F0+00 1/1 0/0 0/0 .text            e_bu_fly__FP10e_bu_class */
static void e_bu_fly(e_bu_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80694720-80694724 000090 0004+00 0/3 0/0 0/0 .rodata          @4362 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4362 = 3.0f;
COMPILER_STRIP_GATE(0x80694720, &lit_4362);
#pragma pop

/* 8069262C-80692930 00156C 0304+00 1/1 0/0 0/0 .text            e_bu_path_fly__FP10e_bu_class */
static void e_bu_path_fly(e_bu_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80694724-80694728 000094 0004+00 0/1 0/0 0/0 .rodata          @4381 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4381 = 0.5f;
COMPILER_STRIP_GATE(0x80694724, &lit_4381);
#pragma pop

/* 80694728-8069472C 000098 0004+00 0/1 0/0 0/0 .rodata          @4382 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4382 = 65536.0f;
COMPILER_STRIP_GATE(0x80694728, &lit_4382);
#pragma pop

/* 8069472C-80694730 00009C 0004+00 0/1 0/0 0/0 .rodata          @4383 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4383 = 5.0f;
COMPILER_STRIP_GATE(0x8069472C, &lit_4383);
#pragma pop

/* 80692930-80692AF4 001870 01C4+00 1/1 0/0 0/0 .text            e_bu_chance__FP10e_bu_class */
static void e_bu_chance(e_bu_class* param_0) {
    // NONMATCHING
}

/* 80692AF4-80693074 001A34 0580+00 2/1 0/0 0/0 .text            e_bu_head__FP10e_bu_class */
static void e_bu_head(e_bu_class* param_0) {
    // NONMATCHING
}

/* 80693074-80693528 001FB4 04B4+00 2/1 0/0 0/0 .text            action__FP10e_bu_class */
static void action(e_bu_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80694730-80694734 0000A0 0004+00 0/0 0/0 0/0 .rodata          @4451 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4451 = 10000.0f;
COMPILER_STRIP_GATE(0x80694730, &lit_4451);
#pragma pop

/* 80694734-80694738 0000A4 0004+00 0/0 0/0 0/0 .rodata          @4452 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4452 = 400.0f;
COMPILER_STRIP_GATE(0x80694734, &lit_4452);
#pragma pop

/* 80694738-8069473C 0000A8 0004+00 0/0 0/0 0/0 .rodata          @4453 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4453 = 4000.0f;
COMPILER_STRIP_GATE(0x80694738, &lit_4453);
#pragma pop

/* 8069473C-80694740 0000AC 0004+00 0/0 0/0 0/0 .rodata          @4454 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4454 = 8000.0f;
COMPILER_STRIP_GATE(0x8069473C, &lit_4454);
#pragma pop

/* 80694740-80694744 0000B0 0004+00 0/0 0/0 0/0 .rodata          @4455 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4455 = -2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80694740, &lit_4455);
#pragma pop

/* 80694744-80694748 0000B4 0004+00 0/0 0/0 0/0 .rodata          @4456 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4456 = 7.0f;
COMPILER_STRIP_GATE(0x80694744, &lit_4456);
#pragma pop

/* 80694748-8069474C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4545 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4545 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80694748, &lit_4545);
#pragma pop

/* 8069474C-80694750 0000BC 0004+00 0/0 0/0 0/0 .rodata          @4546 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4546 = 0.75f;
COMPILER_STRIP_GATE(0x8069474C, &lit_4546);
#pragma pop

/* 80694750-80694754 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4716 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4716 = 4.0f;
COMPILER_STRIP_GATE(0x80694750, &lit_4716);
#pragma pop

/* 80694754-80694758 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4717 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4717 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80694754, &lit_4717);
#pragma pop

/* 80694758-8069475C 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4718 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4718 = 30000.0f;
COMPILER_STRIP_GATE(0x80694758, &lit_4718);
#pragma pop

/* 80693528-80693A30 002468 0508+00 2/1 0/0 0/0 .text            daE_BU_Execute__FP10e_bu_class */
static void daE_BU_Execute(e_bu_class* param_0) {
    // NONMATCHING
}

/* 80693A30-80693A38 002970 0008+00 1/0 0/0 0/0 .text            daE_BU_IsDelete__FP10e_bu_class */
static bool daE_BU_IsDelete(e_bu_class* param_0) {
    return true;
}

/* 80693A38-80693AA0 002978 0068+00 1/0 0/0 0/0 .text            daE_BU_Delete__FP10e_bu_class */
static void daE_BU_Delete(e_bu_class* param_0) {
    // NONMATCHING
}

/* 80693AA0-80693BD4 0029E0 0134+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8069475C-80694760 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4918 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4918 = -200.0f;
COMPILER_STRIP_GATE(0x8069475C, &lit_4918);
#pragma pop

/* 80694760-80694768 0000D0 0004+04 0/1 0/0 0/0 .rodata          @4919 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4919[1 + 1 /* padding */] = {
    55.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80694760, &lit_4919);
#pragma pop

/* 80694768-80694770 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4921 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4921[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80694768, &lit_4921);
#pragma pop

/* 80694770-80694770 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80694775 = "E_bu";
#pragma pop

/* 80693BD4-80693FC0 002B14 03EC+00 1/0 0/0 0/0 .text            daE_BU_Create__FP10fopAc_ac_c */
static void daE_BU_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80693FC0-80694008 002F00 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80694008-80694050 002F48 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80694050-806940AC 002F90 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 806940AC-8069411C 002FEC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8069411C-8069418C 00305C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8069418C-806941D4 0030CC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 806941D4-8069421C 003114 0048+00 2/1 0/0 0/0 .text            __dt__12daE_BU_HIO_cFv */
daE_BU_HIO_c::~daE_BU_HIO_c() {
    // NONMATCHING
}

/* 8069421C-80694258 00315C 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_bu_cpp */
void __sinit_d_a_e_bu_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8069421C, __sinit_d_a_e_bu_cpp);
#pragma pop

/* 80694258-80694260 003198 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80694258() {
    // NONMATCHING
}

/* 80694260-80694268 0031A0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80694260() {
    // NONMATCHING
}

/* 80694268-8069467C 0031A8 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
static void setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    // NONMATCHING
}

/* 80694770-80694770 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
