/**
 * @file d_a_e_is.cpp
 * 
*/

#include "d/actor/d_a_e_is.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__12daE_IS_HIO_cFv();
extern "C" static void anm_init__FP10e_is_classifUcf();
extern "C" static void daE_IS_Draw__FP10e_is_class();
extern "C" static void pl_check__FP10e_is_classfs();
extern "C" static void s_stop_sub__FPvPv();
extern "C" static void damage_check__FP10e_is_class();
extern "C" static void e_is_wait__FP10e_is_class();
extern "C" static void e_is_move__FP10e_is_class();
extern "C" static void e_is_attack__FP10e_is_class();
extern "C" static void e_is_trap__FP10e_is_class();
extern "C" static void e_is_poweroff__FP10e_is_class();
extern "C" static void e_is_damage__FP10e_is_class();
extern "C" static void e_is_break__FP10e_is_class();
extern "C" static void e_is_sekizou__FP10e_is_class();
extern "C" static void action__FP10e_is_class();
extern "C" static void anm_se_set__FP10e_is_class();
extern "C" static void daE_IS_Execute__FP10e_is_class();
extern "C" static bool daE_IS_IsDelete__FP10e_is_class();
extern "C" static void daE_IS_Delete__FP10e_is_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_IS_Create__FP10fopAc_ac_c();
extern "C" void __ct__10e_is_classFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_IS_HIO_cFv();
extern "C" void __sinit_d_a_e_is_cpp();
extern "C" static void func_806F7B48();
extern "C" static void func_806F7B50();
extern "C" extern char const* const d_a_e_is__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
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
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_plAngleCheck__FPC10fopAc_ac_cs();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
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
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void StartCAt__8dCcD_SphFR4cXyz();
extern "C" void MoveCAt__8dCcD_SphFR4cXyz();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
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
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 806F7B6C-806F7B70 000000 0004+00 14/14 0/0 0/0 .rodata          @3648 */
SECTION_RODATA static f32 const lit_3648 = 1.0f;
COMPILER_STRIP_GATE(0x806F7B6C, &lit_3648);

/* 806F7B70-806F7B74 000004 0004+00 0/1 0/0 0/0 .rodata          @3649 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3649 = 7.0f;
COMPILER_STRIP_GATE(0x806F7B70, &lit_3649);
#pragma pop

/* 806F7B74-806F7B78 000008 0004+00 0/1 0/0 0/0 .rodata          @3650 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3650 = 300.0f;
COMPILER_STRIP_GATE(0x806F7B74, &lit_3650);
#pragma pop

/* 806F7B78-806F7B7C 00000C 0004+00 0/2 0/0 0/0 .rodata          @3651 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3651 = 200.0f;
COMPILER_STRIP_GATE(0x806F7B78, &lit_3651);
#pragma pop

/* 806F7B7C-806F7B80 000010 0004+00 0/1 0/0 0/0 .rodata          @3652 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3652 = 120.0f;
COMPILER_STRIP_GATE(0x806F7B7C, &lit_3652);
#pragma pop

/* 806F7C1C-806F7C28 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 806F7C28-806F7C3C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 806F7C3C-806F7C7C 000020 0040+00 0/1 0/0 0/0 .data            at_sph_src$4258 */
#pragma push
#pragma force_active on
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x4, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x2, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 30.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 806F7C7C-806F7CC0 000060 0044+00 0/1 0/0 0/0 .data            cc_cyl_src$4259 */
#pragma push
#pragma force_active on
static dCcD_SrcCyl cc_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x5, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        200.0f, // mRadius
        250.0f // mHeight
    } // mCyl
};
#pragma pop

/* 806F7CC0-806F7D00 0000A4 0040+00 0/1 0/0 0/0 .data            core_sph_src$4260 */
#pragma push
#pragma force_active on
static dCcD_SrcSph core_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdfd, 0x3}, 0x0}}, // mObj
        {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 806F7D00-806F7D20 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_IS_Method */
static actor_method_class l_daE_IS_Method = {
    (process_method_func)daE_IS_Create__FP10fopAc_ac_c,
    (process_method_func)daE_IS_Delete__FP10e_is_class,
    (process_method_func)daE_IS_Execute__FP10e_is_class,
    (process_method_func)daE_IS_IsDelete__FP10e_is_class,
    (process_method_func)daE_IS_Draw__FP10e_is_class,
};

/* 806F7D20-806F7D50 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_IS */
extern actor_process_profile_definition g_profile_E_IS = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_IS,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_is_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  184,                    // mPriority
  &l_daE_IS_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 806F7D50-806F7D5C 000134 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 806F7D5C-806F7D68 000140 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806F7D68-806F7D74 00014C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806F7D74-806F7D80 000158 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 806F7D80-806F7D8C 000164 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806F7D8C-806F7D98 000170 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806F7D98-806F7DBC 00017C 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806F7B50,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806F7B48,
};

/* 806F7DBC-806F7DC8 0001A0 000C+00 2/2 0/0 0/0 .data            __vt__12daE_IS_HIO_c */
SECTION_DATA extern void* __vt__12daE_IS_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_IS_HIO_cFv,
};

/* 806F5A4C-806F5A94 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__12daE_IS_HIO_cFv */
daE_IS_HIO_c::daE_IS_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F7B80-806F7B84 000014 0004+00 3/13 0/0 0/0 .rodata          @3666 */
SECTION_RODATA static u8 const lit_3666[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x806F7B80, &lit_3666);

/* 806F7B84-806F7B88 000018 0004+00 1/1 0/0 0/0 .rodata          @3667 */
SECTION_RODATA static f32 const lit_3667 = -1.0f;
COMPILER_STRIP_GATE(0x806F7B84, &lit_3667);

/* 806F7C14-806F7C14 0000A8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806F7C14 = "E_IS";
#pragma pop

/* 806F5A94-806F5B40 000134 00AC+00 7/7 0/0 0/0 .text            anm_init__FP10e_is_classifUcf */
static void anm_init(e_is_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F7B88-806F7B8C 00001C 0004+00 0/1 0/0 0/0 .rodata          @3710 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3710 = 242.0f;
COMPILER_STRIP_GATE(0x806F7B88, &lit_3710);
#pragma pop

/* 806F7B8C-806F7B90 000020 0004+00 0/1 0/0 0/0 .rodata          @3711 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3711 = 117.0f;
COMPILER_STRIP_GATE(0x806F7B8C, &lit_3711);
#pragma pop

/* 806F7B90-806F7B94 000024 0004+00 0/1 0/0 0/0 .rodata          @3712 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3712 = 255.0f;
COMPILER_STRIP_GATE(0x806F7B90, &lit_3712);
#pragma pop

/* 806F7B94-806F7B98 000028 0004+00 0/2 0/0 0/0 .rodata          @3713 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3713 = 80.0f;
COMPILER_STRIP_GATE(0x806F7B94, &lit_3713);
#pragma pop

/* 806F7B98-806F7B9C 00002C 0004+00 0/6 0/0 0/0 .rodata          @3714 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3714 = 10.0f;
COMPILER_STRIP_GATE(0x806F7B98, &lit_3714);
#pragma pop

/* 806F7B9C-806F7BA0 000030 0004+00 0/1 0/0 0/0 .rodata          @3715 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3715 = 55.0f;
COMPILER_STRIP_GATE(0x806F7B9C, &lit_3715);
#pragma pop

/* 806F7BA0-806F7BA4 000034 0004+00 0/1 0/0 0/0 .rodata          @3716 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3716 = 60.0f;
COMPILER_STRIP_GATE(0x806F7BA0, &lit_3716);
#pragma pop

/* 806F7BA4-806F7BA8 000038 0004+00 0/1 0/0 0/0 .rodata          @3717 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3717 = 225.0f;
COMPILER_STRIP_GATE(0x806F7BA4, &lit_3717);
#pragma pop

/* 806F7BA8-806F7BAC 00003C 0004+00 0/2 0/0 0/0 .rodata          @3718 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3718 = 150.0f;
COMPILER_STRIP_GATE(0x806F7BA8, &lit_3718);
#pragma pop

/* 806F7BAC-806F7BB0 000040 0004+00 0/4 0/0 0/0 .rodata          @3719 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3719 = 50.0f;
COMPILER_STRIP_GATE(0x806F7BAC, &lit_3719);
#pragma pop

/* 806F7BB0-806F7BB4 000044 0004+00 0/1 0/0 0/0 .rodata          @3720 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3720 = 600.0f;
COMPILER_STRIP_GATE(0x806F7BB0, &lit_3720);
#pragma pop

/* 806F5B40-806F5E38 0001E0 02F8+00 1/0 0/0 0/0 .text            daE_IS_Draw__FP10e_is_class */
static void daE_IS_Draw(e_is_class* param_0) {
    // NONMATCHING
}

/* 806F5E38-806F5EB4 0004D8 007C+00 2/2 0/0 0/0 .text            pl_check__FP10e_is_classfs */
static void pl_check(e_is_class* param_0, f32 param_1, s16 param_2) {
    // NONMATCHING
}

/* 806F5EB4-806F5F3C 000554 0088+00 1/1 0/0 0/0 .text            s_stop_sub__FPvPv */
static void s_stop_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 806F5F3C-806F6134 0005DC 01F8+00 1/1 0/0 0/0 .text            damage_check__FP10e_is_class */
static void damage_check(e_is_class* param_0) {
    // NONMATCHING
}

/* 806F6134-806F6320 0007D4 01EC+00 1/1 0/0 0/0 .text            e_is_wait__FP10e_is_class */
static void e_is_wait(e_is_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F7DD0-806F7DD4 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_806F7DD0[4];

/* 806F7DD4-806F7DE0 00000C 000C+00 1/1 0/0 0/0 .bss             @3643 */
static u8 lit_3643[12];

/* 806F7DE0-806F7DFC 000018 001C+00 4/4 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[28];

/* 806F6320-806F63FC 0009C0 00DC+00 1/1 0/0 0/0 .text            e_is_move__FP10e_is_class */
static void e_is_move(e_is_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F7BB4-806F7BB8 000048 0004+00 0/1 0/0 0/0 .rodata          @3917 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3917 = 100000.0f;
COMPILER_STRIP_GATE(0x806F7BB4, &lit_3917);
#pragma pop

/* 806F63FC-806F65BC 000A9C 01C0+00 1/1 0/0 0/0 .text            e_is_attack__FP10e_is_class */
static void e_is_attack(e_is_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F7BB8-806F7BBC 00004C 0004+00 0/2 0/0 0/0 .rodata          @3965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3965 = 20.0f;
COMPILER_STRIP_GATE(0x806F7BB8, &lit_3965);
#pragma pop

/* 806F7BBC-806F7BC0 000050 0004+00 0/3 0/0 0/0 .rodata          @3966 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3966 = 2.0f;
COMPILER_STRIP_GATE(0x806F7BBC, &lit_3966);
#pragma pop

/* 806F65BC-806F67B0 000C5C 01F4+00 1/1 0/0 0/0 .text            e_is_trap__FP10e_is_class */
static void e_is_trap(e_is_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F7BC0-806F7BC4 000054 0004+00 0/0 0/0 0/0 .rodata          @3967 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3967 = 29.0f;
COMPILER_STRIP_GATE(0x806F7BC0, &lit_3967);
#pragma pop

/* 806F7BC4-806F7BC8 000058 0004+00 0/1 0/0 0/0 .rodata          @3968 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3968 = 0.5f;
COMPILER_STRIP_GATE(0x806F7BC4, &lit_3968);
#pragma pop

/* 806F7BC8-806F7BCC 00005C 0004+00 0/0 0/0 0/0 .rodata          @3969 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3969 = 3.0f;
COMPILER_STRIP_GATE(0x806F7BC8, &lit_3969);
#pragma pop

/* 806F7BCC-806F7BD0 000060 0004+00 0/1 0/0 0/0 .rodata          @3970 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3970 = -1040.0f;
COMPILER_STRIP_GATE(0x806F7BCC, &lit_3970);
#pragma pop

/* 806F7BD0-806F7BD4 000064 0004+00 0/1 0/0 0/0 .rodata          @4007 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4007 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x806F7BD0, &lit_4007);
#pragma pop

/* 806F67B0-806F691C 000E50 016C+00 1/1 0/0 0/0 .text            e_is_poweroff__FP10e_is_class */
static void e_is_poweroff(e_is_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F7BD4-806F7BD8 000068 0004+00 0/2 0/0 0/0 .rodata          @4031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4031 = 5.0f;
COMPILER_STRIP_GATE(0x806F7BD4, &lit_4031);
#pragma pop

/* 806F691C-806F6A38 000FBC 011C+00 1/1 0/0 0/0 .text            e_is_damage__FP10e_is_class */
static void e_is_damage(e_is_class* param_0) {
    // NONMATCHING
}

/* 806F6A38-806F6B68 0010D8 0130+00 1/1 0/0 0/0 .text            e_is_break__FP10e_is_class */
static void e_is_break(e_is_class* param_0) {
    // NONMATCHING
}

/* 806F6B68-806F6B7C 001208 0014+00 1/1 0/0 0/0 .text            e_is_sekizou__FP10e_is_class */
static void e_is_sekizou(e_is_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F7BD8-806F7BDC 00006C 0004+00 0/1 0/0 0/0 .rodata          @4102 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4102 = 1000.0f;
COMPILER_STRIP_GATE(0x806F7BD8, &lit_4102);
#pragma pop

/* 806F6B7C-806F6D90 00121C 0214+00 1/1 0/0 0/0 .text            action__FP10e_is_class */
static void action(e_is_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F7BDC-806F7BE0 000070 0004+00 1/1 0/0 0/0 .rodata          @4120 */
SECTION_RODATA static f32 const lit_4120 = 39.0f;
COMPILER_STRIP_GATE(0x806F7BDC, &lit_4120);

/* 806F7BE0-806F7BE4 000074 0004+00 1/1 0/0 0/0 .rodata          @4121 */
SECTION_RODATA static f32 const lit_4121 = 19.0f;
COMPILER_STRIP_GATE(0x806F7BE0, &lit_4121);

/* 806F6D90-806F6E58 001430 00C8+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_is_class */
static void anm_se_set(e_is_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F7BE4-806F7BE8 000078 0004+00 0/1 0/0 0/0 .rodata          @4205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4205 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x806F7BE4, &lit_4205);
#pragma pop

/* 806F7BE8-806F7BEC 00007C 0004+00 0/1 0/0 0/0 .rodata          @4206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4206 = 100.0f;
COMPILER_STRIP_GATE(0x806F7BE8, &lit_4206);
#pragma pop

/* 806F7BEC-806F7BF0 000080 0004+00 0/1 0/0 0/0 .rodata          @4207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4207 = 20000.0f;
COMPILER_STRIP_GATE(0x806F7BEC, &lit_4207);
#pragma pop

/* 806F7BF0-806F7BF4 000084 0004+00 0/1 0/0 0/0 .rodata          @4208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4208 = -30000.0f;
COMPILER_STRIP_GATE(0x806F7BF0, &lit_4208);
#pragma pop

/* 806F7BF4-806F7BF8 000088 0004+00 0/1 0/0 0/0 .rodata          @4209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4209 = 15000.0f;
COMPILER_STRIP_GATE(0x806F7BF4, &lit_4209);
#pragma pop

/* 806F7BF8-806F7BFC 00008C 0004+00 0/1 0/0 0/0 .rodata          @4210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4210 = 30.0f;
COMPILER_STRIP_GATE(0x806F7BF8, &lit_4210);
#pragma pop

/* 806F7BFC-806F7C00 000090 0004+00 0/1 0/0 0/0 .rodata          @4211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4211 = 15350.0f;
COMPILER_STRIP_GATE(0x806F7BFC, &lit_4211);
#pragma pop

/* 806F6E58-806F7204 0014F8 03AC+00 2/1 0/0 0/0 .text            daE_IS_Execute__FP10e_is_class */
static void daE_IS_Execute(e_is_class* param_0) {
    // NONMATCHING
}

/* 806F7204-806F720C 0018A4 0008+00 1/0 0/0 0/0 .text            daE_IS_IsDelete__FP10e_is_class */
static bool daE_IS_IsDelete(e_is_class* param_0) {
    return true;
}

/* 806F720C-806F7274 0018AC 0068+00 1/0 0/0 0/0 .text            daE_IS_Delete__FP10e_is_class */
static void daE_IS_Delete(e_is_class* param_0) {
    // NONMATCHING
}

/* 806F7274-806F736C 001914 00F8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F7C00-806F7C04 000094 0004+00 0/1 0/0 0/0 .rodata          @4332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4332 = -500.0f;
COMPILER_STRIP_GATE(0x806F7C00, &lit_4332);
#pragma pop

/* 806F7C04-806F7C08 000098 0004+00 0/1 0/0 0/0 .rodata          @4333 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4333 = -200.0f;
COMPILER_STRIP_GATE(0x806F7C04, &lit_4333);
#pragma pop

/* 806F7C08-806F7C0C 00009C 0004+00 0/1 0/0 0/0 .rodata          @4334 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4334 = 500.0f;
COMPILER_STRIP_GATE(0x806F7C08, &lit_4334);
#pragma pop

/* 806F7C0C-806F7C10 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4335 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4335 = -7.0f;
COMPILER_STRIP_GATE(0x806F7C0C, &lit_4335);
#pragma pop

/* 806F7C10-806F7C14 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4336 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4336 = 3650.0f;
COMPILER_STRIP_GATE(0x806F7C10, &lit_4336);
#pragma pop

/* 806F736C-806F76B4 001A0C 0348+00 1/0 0/0 0/0 .text            daE_IS_Create__FP10fopAc_ac_c */
static void daE_IS_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 806F76B4-806F7868 001D54 01B4+00 1/1 0/0 0/0 .text            __ct__10e_is_classFv */
e_is_class::e_is_class() {
    // NONMATCHING
}

/* 806F7868-806F78B0 001F08 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 806F78B0-806F78F8 001F50 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 806F78F8-806F7940 001F98 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 806F7940-806F799C 001FE0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 806F799C-806F7A0C 00203C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 806F7A0C-806F7A7C 0020AC 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 806F7A7C-806F7AC4 00211C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 806F7AC4-806F7B0C 002164 0048+00 2/1 0/0 0/0 .text            __dt__12daE_IS_HIO_cFv */
daE_IS_HIO_c::~daE_IS_HIO_c() {
    // NONMATCHING
}

/* 806F7B0C-806F7B48 0021AC 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_is_cpp */
void __sinit_d_a_e_is_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806F7B0C, __sinit_d_a_e_is_cpp);
#pragma pop

/* 806F7B48-806F7B50 0021E8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_806F7B48() {
    // NONMATCHING
}

/* 806F7B50-806F7B58 0021F0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_806F7B50() {
    // NONMATCHING
}

/* 806F7C14-806F7C14 0000A8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
