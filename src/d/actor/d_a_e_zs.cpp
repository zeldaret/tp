/**
 * @file d_a_e_zs.cpp
 * 
*/

#include "d/actor/d_a_e_zs.h"
#include "dol2asm.h"
#include "d/actor/d_a_b_ds.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" void __ct__12daE_ZS_HIO_cFv();
extern "C" void draw__8daE_ZS_cFv();
extern "C" static void daE_ZS_Draw__FP8daE_ZS_c();
extern "C" void setBck__8daE_ZS_cFiUcff();
extern "C" void setActionMode__8daE_ZS_cFii();
extern "C" void damage_check__8daE_ZS_cFv();
extern "C" static void s_BossSearch__FPvPv();
extern "C" void mBossHandCheck__8daE_ZS_cFv();
extern "C" void executeAppear__8daE_ZS_cFv();
extern "C" void executeWait__8daE_ZS_cFv();
extern "C" void executeDamage__8daE_ZS_cFv();
extern "C" void executeDrive__8daE_ZS_cFv();
extern "C" void action__8daE_ZS_cFv();
extern "C" void mtx_set__8daE_ZS_cFv();
extern "C" void cc_set__8daE_ZS_cFv();
extern "C" void execute__8daE_ZS_cFv();
extern "C" static void daE_ZS_Execute__FP8daE_ZS_c();
extern "C" static bool daE_ZS_IsDelete__FP8daE_ZS_c();
extern "C" void _delete__8daE_ZS_cFv();
extern "C" static void daE_ZS_Delete__FP8daE_ZS_c();
extern "C" void CreateHeap__8daE_ZS_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_ZS_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" static void daE_ZS_Create__FP8daE_ZS_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_ZS_HIO_cFv();
extern "C" void __sinit_d_a_e_zs_cpp();
extern "C" static void func_80834E60();
extern "C" static void func_80834E68();
extern "C" void getHandPosR__8daB_DS_cFv();
extern "C" void getHandPosL__8daB_DS_cFv();
extern "C" extern char const* const d_a_e_zs__stringBase0;

//
// External References:
//

extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
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
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void _savegpr_19();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 808352FC-80835300 00002C 0004+00 1/1 0/0 0/0 .rodata          @3930 */
SECTION_RODATA static f32 const lit_3930 = 7.0f / 5.0f;
COMPILER_STRIP_GATE(0x808352FC, &lit_3930);

/* 80835300-80835304 000030 0004+00 1/1 0/0 0/0 .rodata          @3931 */
SECTION_RODATA static f32 const lit_3931 = 1200.0f;
COMPILER_STRIP_GATE(0x80835300, &lit_3931);

/* 80835384-808353C8 000038 0044+00 1/1 0/0 0/0 .data            cc_zs_src__22@unnamed@d_a_e_zs_cpp@
 */
SECTION_DATA static u8 data_80835384[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x75,
    0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x02, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00,
};

/* 808353C8-808353D0 00007C 0006+02 1/1 0/0 0/0 .data            eff_Damage_id$3979 */
SECTION_DATA static u8 eff_Damage_id[6 + 2 /* padding */] = {
    0x8B,
    0xE9,
    0x8B,
    0xEA,
    0x8B,
    0xEB,
    /* padding */
    0x00,
    0x00,
};

/* 808353D0-808353D4 000084 0004+00 1/1 0/0 0/0 .data            eff_Appear_id$4194 */
SECTION_DATA static u8 eff_Appear_id[4] = {
    0x8B,
    0xE7,
    0x8B,
    0xE8,
};

/* 808353D4-808353DC 000088 0008+00 1/1 0/0 0/0 .data            w_eff_id$4324 */
SECTION_DATA static u8 w_eff_id[8] = {
    0x85, 0x4C, 0x85, 0x4D, 0x85, 0x4E, 0x85, 0x4F,
};

/* 808353DC-808353FC -00001 0020+00 1/0 0/0 0/0 .data            l_daE_ZS_Method */
static actor_method_class l_daE_ZS_Method = {
    (process_method_func)daE_ZS_Create__FP8daE_ZS_c,
    (process_method_func)daE_ZS_Delete__FP8daE_ZS_c,
    (process_method_func)daE_ZS_Execute__FP8daE_ZS_c,
    (process_method_func)daE_ZS_IsDelete__FP8daE_ZS_c,
    (process_method_func)daE_ZS_Draw__FP8daE_ZS_c,
};

/* 808353FC-8083542C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_ZS */
extern actor_process_profile_definition g_profile_E_ZS = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_ZS,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_ZS_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  170,                    // mPriority
  &l_daE_ZS_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 8083542C-80835438 0000E0 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80835438-80835444 0000EC 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80835444-80835450 0000F8 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80835450-8083545C 000104 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 8083545C-80835468 000110 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80835468-8083548C 00011C 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80834E68,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80834E60,
};

/* 8083548C-80835498 000140 000C+00 2/2 0/0 0/0 .data            __vt__12daE_ZS_HIO_c */
SECTION_DATA extern void* __vt__12daE_ZS_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_ZS_HIO_cFv,
};

/* 808330AC-808330DC 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__12daE_ZS_HIO_cFv */
daE_ZS_HIO_c::daE_ZS_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80835304-80835308 000034 0004+00 0/3 0/0 0/0 .rodata          @3960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3960 = 10.0f;
COMPILER_STRIP_GATE(0x80835304, &lit_3960);
#pragma pop

/* 80835308-8083530C 000038 0004+00 0/1 0/0 0/0 .rodata          @3961 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3961 = 700.0f;
COMPILER_STRIP_GATE(0x80835308, &lit_3961);
#pragma pop

/* 808330DC-808331C4 00011C 00E8+00 1/1 0/0 0/0 .text            draw__8daE_ZS_cFv */
void daE_ZS_c::draw() {
    // NONMATCHING
}

/* 808331C4-808331E4 000204 0020+00 1/0 0/0 0/0 .text            daE_ZS_Draw__FP8daE_ZS_c */
static void daE_ZS_Draw(daE_ZS_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8083530C-80835310 00003C 0004+00 1/3 0/0 0/0 .rodata          @3971 */
SECTION_RODATA static f32 const lit_3971 = -1.0f;
COMPILER_STRIP_GATE(0x8083530C, &lit_3971);

/* 80835344-80835344 000074 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80835344 = "E_ZS";
#pragma pop

/* 808331E4-80833290 000224 00AC+00 4/4 0/0 0/0 .text            setBck__8daE_ZS_cFiUcff */
void daE_ZS_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* 80833290-8083329C 0002D0 000C+00 7/7 0/0 0/0 .text            setActionMode__8daE_ZS_cFii */
void daE_ZS_c::setActionMode(int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808354A0-808354A4 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_808354A0[4];

/* 808354A4-808354B0 00000C 000C+00 1/1 0/0 0/0 .bss             @3925 */
static u8 lit_3925[12];

/* 808354B0-808354C0 000018 0010+00 6/6 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[16];

/* 8083329C-8083364C 0002DC 03B0+00 1/1 0/0 0/0 .text            damage_check__8daE_ZS_cFv */
void daE_ZS_c::damage_check() {
    // NONMATCHING
}

/* 8083364C-80833698 00068C 004C+00 4/4 0/0 0/0 .text            s_BossSearch__FPvPv */
static void s_BossSearch(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80835310-80835314 000040 0004+00 0/1 0/0 0/0 .rodata          @4183 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4183 = 400.0f;
COMPILER_STRIP_GATE(0x80835310, &lit_4183);
#pragma pop

/* 80833698-80833964 0006D8 02CC+00 2/2 0/0 0/0 .text            mBossHandCheck__8daE_ZS_cFv */
void daE_ZS_c::mBossHandCheck() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80835314-80835318 000044 0004+00 0/1 0/0 0/0 .rodata          @4276 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4276 = -240.0f;
COMPILER_STRIP_GATE(0x80835314, &lit_4276);
#pragma pop

/* 80835318-8083531C 000048 0004+00 0/4 0/0 0/0 .rodata          @4277 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4277 = 3.0f;
COMPILER_STRIP_GATE(0x80835318, &lit_4277);
#pragma pop

/* 8083531C-80835320 00004C 0004+00 0/1 0/0 0/0 .rodata          @4278 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4278 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x8083531C, &lit_4278);
#pragma pop

/* 80835320-80835324 000050 0004+00 0/2 0/0 0/0 .rodata          @4279 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4279 = -2.0f;
COMPILER_STRIP_GATE(0x80835320, &lit_4279);
#pragma pop

/* 808354C0-808354C4 -00001 0004+00 3/3 0/0 0/0 .bss             None */
/* 808354C0 0001+00 data_808354C0 None */
/* 808354C1 0003+00 data_808354C1 None */
static u8 struct_808354C0[4];

/* 80833964-80833D30 0009A4 03CC+00 1/1 0/0 0/0 .text            executeAppear__8daE_ZS_cFv */
void daE_ZS_c::executeAppear() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80835324-80835328 000054 0004+00 0/1 0/0 0/0 .rodata          @4318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4318 = 0.5f;
COMPILER_STRIP_GATE(0x80835324, &lit_4318);
#pragma pop

/* 80835328-8083532C 000058 0004+00 0/2 0/0 0/0 .rodata          @4319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4319 = 5.0f;
COMPILER_STRIP_GATE(0x80835328, &lit_4319);
#pragma pop

/* 80833D30-80833F1C 000D70 01EC+00 1/2 0/0 0/0 .text            executeWait__8daE_ZS_cFv */
void daE_ZS_c::executeWait() {
    // NONMATCHING
}

/* 80833F1C-80834108 000F5C 01EC+00 1/1 0/0 0/0 .text            executeDamage__8daE_ZS_cFv */
void daE_ZS_c::executeDamage() {
    // NONMATCHING
}

/* 80834108-808342C8 001148 01C0+00 1/1 0/0 0/0 .text            executeDrive__8daE_ZS_cFv */
void daE_ZS_c::executeDrive() {
    // NONMATCHING
}

/* 808342C8-80834478 001308 01B0+00 1/1 0/0 0/0 .text            action__8daE_ZS_cFv */
void daE_ZS_c::action() {
    // NONMATCHING
}

/* 80834478-80834518 0014B8 00A0+00 1/1 0/0 0/0 .text            mtx_set__8daE_ZS_cFv */
void daE_ZS_c::mtx_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8083532C-80835330 00005C 0004+00 0/1 0/0 0/0 .rodata          @4498 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4498 = 25.0f;
COMPILER_STRIP_GATE(0x8083532C, &lit_4498);
#pragma pop

/* 80835330-80835334 000060 0004+00 0/1 0/0 0/0 .rodata          @4499 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4499 = 280.0f;
COMPILER_STRIP_GATE(0x80835330, &lit_4499);
#pragma pop

/* 80835334-80835338 000064 0004+00 0/1 0/0 0/0 .rodata          @4500 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4500 = 50.0f;
COMPILER_STRIP_GATE(0x80835334, &lit_4500);
#pragma pop

/* 80834518-80834650 001558 0138+00 1/1 0/0 0/0 .text            cc_set__8daE_ZS_cFv */
void daE_ZS_c::cc_set() {
    // NONMATCHING
}

/* 80834650-808346BC 001690 006C+00 1/1 0/0 0/0 .text            execute__8daE_ZS_cFv */
void daE_ZS_c::execute() {
    // NONMATCHING
}

/* 808346BC-808346DC 0016FC 0020+00 2/1 0/0 0/0 .text            daE_ZS_Execute__FP8daE_ZS_c */
static void daE_ZS_Execute(daE_ZS_c* param_0) {
    // NONMATCHING
}

/* 808346DC-808346E4 00171C 0008+00 1/0 0/0 0/0 .text            daE_ZS_IsDelete__FP8daE_ZS_c */
static bool daE_ZS_IsDelete(daE_ZS_c* param_0) {
    return true;
}

/* 808346E4-80834758 001724 0074+00 1/1 0/0 0/0 .text            _delete__8daE_ZS_cFv */
void daE_ZS_c::_delete() {
    // NONMATCHING
}

/* 80834758-80834778 001798 0020+00 1/0 0/0 0/0 .text            daE_ZS_Delete__FP8daE_ZS_c */
static void daE_ZS_Delete(daE_ZS_c* param_0) {
    // NONMATCHING
}

/* 80834778-80834864 0017B8 00EC+00 1/1 0/0 0/0 .text            CreateHeap__8daE_ZS_cFv */
void daE_ZS_c::CreateHeap() {
    // NONMATCHING
}

/* 80834864-80834884 0018A4 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80835338-8083533C 000068 0004+00 0/1 0/0 0/0 .rodata          @4647 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4647 = -200.0f;
COMPILER_STRIP_GATE(0x80835338, &lit_4647);
#pragma pop

/* 8083533C-80835340 00006C 0004+00 0/1 0/0 0/0 .rodata          @4648 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4648 = 200.0f;
COMPILER_STRIP_GATE(0x8083533C, &lit_4648);
#pragma pop

/* 80835340-80835344 000070 0004+00 0/1 0/0 0/0 .rodata          @4649 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4649 = 60.0f;
COMPILER_STRIP_GATE(0x80835340, &lit_4649);
#pragma pop

/* 80834884-80834BA8 0018C4 0324+00 1/1 0/0 0/0 .text            create__8daE_ZS_cFv */
void daE_ZS_c::create() {
    // NONMATCHING
}

/* 80834BA8-80834BF0 001BE8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80834BF0-80834C38 001C30 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80834C38-80834C94 001C78 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80834C94-80834D04 001CD4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80834D04-80834D74 001D44 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80834D74-80834D94 001DB4 0020+00 1/0 0/0 0/0 .text            daE_ZS_Create__FP8daE_ZS_c */
static void daE_ZS_Create(daE_ZS_c* param_0) {
    // NONMATCHING
}

/* 80834D94-80834DDC 001DD4 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80834DDC-80834E24 001E1C 0048+00 2/1 0/0 0/0 .text            __dt__12daE_ZS_HIO_cFv */
daE_ZS_HIO_c::~daE_ZS_HIO_c() {
    // NONMATCHING
}

/* 80834E24-80834E60 001E64 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_zs_cpp */
void __sinit_d_a_e_zs_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80834E24, __sinit_d_a_e_zs_cpp);
#pragma pop

/* 80834E60-80834E68 001EA0 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80834E60() {
    // NONMATCHING
}

/* 80834E68-80834E70 001EA8 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80834E68() {
    // NONMATCHING
}

/* 80835284-808352A0 0022C4 001C+00 1/1 0/0 0/0 .text            getHandPosR__8daB_DS_cFv */
// void daB_DS_c::getHandPosR() {
extern "C" void getHandPosR__8daB_DS_cFv() {
    // NONMATCHING
}

/* 808352A0-808352BC 0022E0 001C+00 1/1 0/0 0/0 .text            getHandPosL__8daB_DS_cFv */
// void daB_DS_c::getHandPosL() {
extern "C" void getHandPosL__8daB_DS_cFv() {
    // NONMATCHING
}

/* 80835344-80835344 000074 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
