/**
 * @file d_a_e_kg.cpp
 * 
*/

#include "d/actor/d_a_e_kg.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" void __ct__12daE_KG_HIO_cFv();
extern "C" static void anm_init__FP10e_kg_classifUcf();
extern "C" static void daE_KG_Draw__FP10e_kg_class();
extern "C" static void other_bg_check__FP10e_kg_classP10fopAc_ac_c();
extern "C" static void pl_check__FP10e_kg_classfs();
extern "C" static void damage_check__FP10e_kg_class();
extern "C" static void way_bg_check__FP10e_kg_classf();
extern "C" static void e_kg_move__FP10e_kg_class();
extern "C" static void e_kg_attack__FP10e_kg_class();
extern "C" static void e_kg_back__FP10e_kg_class();
extern "C" static void e_kg_s_damage__FP10e_kg_class();
extern "C" static void e_kg_damage__FP10e_kg_class();
extern "C" static void e_kg_roof__FP10e_kg_class();
extern "C" static void action__FP10e_kg_class();
extern "C" static void anm_se_set__FP10e_kg_class();
extern "C" static void daE_KG_Execute__FP10e_kg_class();
extern "C" static bool daE_KG_IsDelete__FP10e_kg_class();
extern "C" static void daE_KG_Delete__FP10e_kg_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daE_KG_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_KG_HIO_cFv();
extern "C" void __sinit_d_a_e_kg_cpp();
extern "C" static void func_806F9F6C();
extern "C" static void func_806F9F74();
extern "C" extern char const* const d_a_e_kg__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
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
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
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
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
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
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_19();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
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
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 806FA3D0-806FA3D4 00002C 0004+00 0/1 0/0 0/0 .rodata          @3809 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3809 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x806FA3D0, &lit_3809);
#pragma pop

/* 806FA3D4-806FA3D8 000030 0004+00 0/1 0/0 0/0 .rodata          @3810 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3810 = 10.0f;
COMPILER_STRIP_GATE(0x806FA3D4, &lit_3810);
#pragma pop

/* 806FA3D8-806FA3DC 000034 0004+00 0/1 0/0 0/0 .rodata          @3811 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3811 = 600.0f;
COMPILER_STRIP_GATE(0x806FA3D8, &lit_3811);
#pragma pop

/* 806FA4AC-806FA4D8 -00001 002C+00 1/1 0/0 0/0 .data            @4276 */
SECTION_DATA static void* lit_4276[11] = {
    (void*)(((char*)action__FP10e_kg_class) + 0x98),
    (void*)(((char*)action__FP10e_kg_class) + 0xA8),
    (void*)(((char*)action__FP10e_kg_class) + 0x108),
    (void*)(((char*)action__FP10e_kg_class) + 0xDC),
    (void*)(((char*)action__FP10e_kg_class) + 0x108),
    (void*)(((char*)action__FP10e_kg_class) + 0xCC),
    (void*)(((char*)action__FP10e_kg_class) + 0x108),
    (void*)(((char*)action__FP10e_kg_class) + 0x108),
    (void*)(((char*)action__FP10e_kg_class) + 0x108),
    (void*)(((char*)action__FP10e_kg_class) + 0xEC),
    (void*)(((char*)action__FP10e_kg_class) + 0xFC),
};

/* 806FA4D8-806FA518 000064 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4468 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x2, 0xd}, {0xdafbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 806FA518-806FA538 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_KG_Method */
static actor_method_class l_daE_KG_Method = {
    (process_method_func)daE_KG_Create__FP10fopAc_ac_c,
    (process_method_func)daE_KG_Delete__FP10e_kg_class,
    (process_method_func)daE_KG_Execute__FP10e_kg_class,
    (process_method_func)daE_KG_IsDelete__FP10e_kg_class,
    (process_method_func)daE_KG_Draw__FP10e_kg_class,
};

/* 806FA538-806FA568 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_KG */
extern actor_process_profile_definition g_profile_E_KG = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_E_KG,             // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(e_kg_class),    // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  185,                   // mPriority
  &l_daE_KG_Method,      // sub_method
  0x100C0120,            // mStatus
  fopAc_ENEMY_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/* 806FA568-806FA574 0000F4 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 806FA574-806FA580 000100 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806FA580-806FA58C 00010C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806FA58C-806FA598 000118 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806FA598-806FA5A4 000124 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806FA5A4-806FA5C8 000130 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806F9F74,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806F9F6C,
};

/* 806FA5C8-806FA5D4 000154 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 806FA5D4-806FA5E0 000160 000C+00 2/2 0/0 0/0 .data            __vt__12daE_KG_HIO_c */
SECTION_DATA extern void* __vt__12daE_KG_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_KG_HIO_cFv,
};

/* 806F7EEC-806F7F24 0000EC 0038+00 1/1 0/0 0/0 .text            __ct__12daE_KG_HIO_cFv */
daE_KG_HIO_c::daE_KG_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FA3DC-806FA3E0 000038 0004+00 1/1 0/0 0/0 .rodata          @3825 */
SECTION_RODATA static f32 const lit_3825 = -1.0f;
COMPILER_STRIP_GATE(0x806FA3DC, &lit_3825);

/* 806FA46C-806FA46C 0000C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806FA46C = "E_kg";
#pragma pop

/* 806F7F24-806F7FD0 000124 00AC+00 6/6 0/0 0/0 .text            anm_init__FP10e_kg_classifUcf */
static void anm_init(e_kg_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FA3E0-806FA3E4 00003C 0004+00 2/7 0/0 0/0 .rodata          @3853 */
SECTION_RODATA static f32 const lit_3853 = 50.0f;
COMPILER_STRIP_GATE(0x806FA3E0, &lit_3853);

/* 806FA3E4-806FA3E8 000040 0004+00 0/1 0/0 0/0 .rodata          @3854 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3854 = 700.0f;
COMPILER_STRIP_GATE(0x806FA3E4, &lit_3854);
#pragma pop

/* 806F7FD0-806F80D0 0001D0 0100+00 1/0 0/0 0/0 .text            daE_KG_Draw__FP10e_kg_class */
static void daE_KG_Draw(e_kg_class* param_0) {
    // NONMATCHING
}

/* 806F80D0-806F81A8 0002D0 00D8+00 1/1 0/0 0/0 .text other_bg_check__FP10e_kg_classP10fopAc_ac_c
 */
static void other_bg_check(e_kg_class* param_0, fopAc_ac_c* param_1) {
    // NONMATCHING
}

/* 806F81A8-806F8224 0003A8 007C+00 2/2 0/0 0/0 .text            pl_check__FP10e_kg_classfs */
static void pl_check(e_kg_class* param_0, f32 param_1, s16 param_2) {
    // NONMATCHING
}

/* 806F8224-806F8328 000424 0104+00 1/1 0/0 0/0 .text            damage_check__FP10e_kg_class */
static void damage_check(e_kg_class* param_0) {
    // NONMATCHING
}

/* 806F8328-806F8434 000528 010C+00 1/1 0/0 0/0 .text            way_bg_check__FP10e_kg_classf */
static void way_bg_check(e_kg_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FA3E8-806FA3EC 000044 0004+00 0/4 0/0 0/0 .rodata          @4001 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4001 = 0.5f;
COMPILER_STRIP_GATE(0x806FA3E8, &lit_4001);
#pragma pop

/* 806FA3EC-806FA3F0 000048 0004+00 0/1 0/0 0/0 .rodata          @4002 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4002 = 200.0f;
COMPILER_STRIP_GATE(0x806FA3EC, &lit_4002);
#pragma pop

/* 806FA3F0-806FA3F4 00004C 0004+00 0/1 0/0 0/0 .rodata          @4003 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4003 = 32768.0f;
COMPILER_STRIP_GATE(0x806FA3F0, &lit_4003);
#pragma pop

/* 806FA3F4-806FA3F8 000050 0004+00 0/2 0/0 0/0 .rodata          @4004 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4004 = 10000.0f;
COMPILER_STRIP_GATE(0x806FA3F4, &lit_4004);
#pragma pop

/* 806FA3F8-806FA3FC 000054 0004+00 0/1 0/0 0/0 .rodata          @4005 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4005 = 400.0f;
COMPILER_STRIP_GATE(0x806FA3F8, &lit_4005);
#pragma pop

/* 806FA3FC-806FA400 000058 0004+00 0/7 0/0 0/0 .rodata          @4006 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4006 = 5.0f;
COMPILER_STRIP_GATE(0x806FA3FC, &lit_4006);
#pragma pop

/* 806FA5E8-806FA5EC 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_806FA5E8[4];

/* 806FA5EC-806FA5F8 00000C 000C+00 1/1 0/0 0/0 .bss             @3804 */
static u8 lit_3804[12];

/* 806FA5F8-806FA60C 000018 0014+00 5/5 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[20];

/* 806F8434-806F8714 000634 02E0+00 1/1 0/0 0/0 .text            e_kg_move__FP10e_kg_class */
static void e_kg_move(e_kg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FA400-806FA404 00005C 0004+00 0/1 0/0 0/0 .rodata          @4075 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4075 = 2.0f;
COMPILER_STRIP_GATE(0x806FA400, &lit_4075);
#pragma pop

/* 806FA404-806FA408 000060 0004+00 0/1 0/0 0/0 .rodata          @4076 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4076 = 300.0f;
COMPILER_STRIP_GATE(0x806FA404, &lit_4076);
#pragma pop

/* 806FA408-806FA40C 000064 0004+00 0/2 0/0 0/0 .rodata          @4077 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4077 = 20.0f;
COMPILER_STRIP_GATE(0x806FA408, &lit_4077);
#pragma pop

/* 806FA40C-806FA410 000068 0004+00 0/1 0/0 0/0 .rodata          @4078 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4078 = 40.0f;
COMPILER_STRIP_GATE(0x806FA40C, &lit_4078);
#pragma pop

/* 806FA410-806FA414 00006C 0004+00 0/1 0/0 0/0 .rodata          @4079 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4079 = -10.0f;
COMPILER_STRIP_GATE(0x806FA410, &lit_4079);
#pragma pop

/* 806FA414-806FA418 000070 0004+00 0/2 0/0 0/0 .rodata          @4080 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4080 = 15.0f;
COMPILER_STRIP_GATE(0x806FA414, &lit_4080);
#pragma pop

/* 806FA418-806FA41C 000074 0004+00 0/2 0/0 0/0 .rodata          @4081 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4081 = 30.0f;
COMPILER_STRIP_GATE(0x806FA418, &lit_4081);
#pragma pop

/* 806F8714-806F8A40 000914 032C+00 1/1 0/0 0/0 .text            e_kg_attack__FP10e_kg_class */
static void e_kg_attack(e_kg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FA41C-806FA420 000078 0004+00 0/4 0/0 0/0 .rodata          @4101 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4101 = 3.0f;
COMPILER_STRIP_GATE(0x806FA41C, &lit_4101);
#pragma pop

/* 806FA420-806FA424 00007C 0004+00 0/1 0/0 0/0 .rodata          @4102 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4102 = -50.0f;
COMPILER_STRIP_GATE(0x806FA420, &lit_4102);
#pragma pop

/* 806FA424-806FA428 000080 0004+00 0/1 0/0 0/0 .rodata          @4103 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4103 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x806FA424, &lit_4103);
#pragma pop

/* 806FA428-806FA42C 000084 0004+00 0/2 0/0 0/0 .rodata          @4104 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4104 = 4.0f;
COMPILER_STRIP_GATE(0x806FA428, &lit_4104);
#pragma pop

/* 806FA42C-806FA430 000088 0004+00 0/2 0/0 0/0 .rodata          @4105 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4105 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x806FA42C, &lit_4105);
#pragma pop

/* 806F8A40-806F8B50 000C40 0110+00 1/1 0/0 0/0 .text            e_kg_back__FP10e_kg_class */
static void e_kg_back(e_kg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FA430-806FA434 00008C 0004+00 0/1 0/0 0/0 .rodata          @4126 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4126 = -40.0f;
COMPILER_STRIP_GATE(0x806FA430, &lit_4126);
#pragma pop

/* 806F8B50-806F8C90 000D50 0140+00 1/1 0/0 0/0 .text            e_kg_s_damage__FP10e_kg_class */
static void e_kg_s_damage(e_kg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FA434-806FA438 000090 0004+00 0/1 0/0 0/0 .rodata          @4163 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4163 = 45.0f;
COMPILER_STRIP_GATE(0x806FA434, &lit_4163);
#pragma pop

/* 806FA438-806FA43C 000094 0004+00 0/1 0/0 0/0 .rodata          @4164 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4164 = -35.0f;
COMPILER_STRIP_GATE(0x806FA438, &lit_4164);
#pragma pop

/* 806FA43C-806FA440 000098 0004+00 0/1 0/0 0/0 .rodata          @4165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4165 = 1700.0f;
COMPILER_STRIP_GATE(0x806FA43C, &lit_4165);
#pragma pop

/* 806FA440-806FA444 00009C 0004+00 0/1 0/0 0/0 .rodata          @4166 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4166 = 0.75f;
COMPILER_STRIP_GATE(0x806FA440, &lit_4166);
#pragma pop

/* 806FA444-806FA448 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4167 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4167 = 11.0f / 10.0f;
COMPILER_STRIP_GATE(0x806FA444, &lit_4167);
#pragma pop

/* 806FA448-806FA44C 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4168 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4168 = 0x3C75C28F;
COMPILER_STRIP_GATE(0x806FA448, &lit_4168);
#pragma pop

/* 806FA44C-806FA450 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4169 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4169 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x806FA44C, &lit_4169);
#pragma pop

/* 806F8C90-806F8F04 000E90 0274+00 1/1 0/0 0/0 .text            e_kg_damage__FP10e_kg_class */
static void e_kg_damage(e_kg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FA450-806FA454 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4198 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4198 = 25.0f;
COMPILER_STRIP_GATE(0x806FA450, &lit_4198);
#pragma pop

/* 806F8F04-806F90F8 001104 01F4+00 1/1 0/0 0/0 .text            e_kg_roof__FP10e_kg_class */
static void e_kg_roof(e_kg_class* param_0) {
    // NONMATCHING
}

/* 806F90F8-806F9400 0012F8 0308+00 2/1 0/0 0/0 .text            action__FP10e_kg_class */
static void action(e_kg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FA454-806FA45C 0000B0 0008+00 0/0 0/0 0/0 .rodata          @4278 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4278[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806FA454, &lit_4278);
#pragma pop

/* 806FA45C-806FA460 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4296 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4296 = 9.0f;
COMPILER_STRIP_GATE(0x806FA45C, &lit_4296);
#pragma pop

/* 806FA460-806FA464 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4297 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4297 = 16.0f;
COMPILER_STRIP_GATE(0x806FA460, &lit_4297);
#pragma pop

/* 806FA464-806FA468 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4298 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4298 = 23.0f;
COMPILER_STRIP_GATE(0x806FA464, &lit_4298);
#pragma pop

/* 806F9400-806F94D0 001600 00D0+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_kg_class */
static void anm_se_set(e_kg_class* param_0) {
    // NONMATCHING
}

/* 806F94D0-806F97A8 0016D0 02D8+00 2/1 0/0 0/0 .text            daE_KG_Execute__FP10e_kg_class */
static void daE_KG_Execute(e_kg_class* param_0) {
    // NONMATCHING
}

/* 806F97A8-806F97B0 0019A8 0008+00 1/0 0/0 0/0 .text            daE_KG_IsDelete__FP10e_kg_class */
static bool daE_KG_IsDelete(e_kg_class* param_0) {
    return true;
}

/* 806F97B0-806F9818 0019B0 0068+00 1/0 0/0 0/0 .text            daE_KG_Delete__FP10e_kg_class */
static void daE_KG_Delete(e_kg_class* param_0) {
    // NONMATCHING
}

/* 806F9818-806F99B8 001A18 01A0+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 806F99B8-806F9A00 001BB8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FA468-806FA46C 0000C4 0004+00 1/1 0/0 0/0 .rodata          @4549 */
SECTION_RODATA static f32 const lit_4549 = 65535.0f;
COMPILER_STRIP_GATE(0x806FA468, &lit_4549);

/* 806F9A00-806F9CD4 001C00 02D4+00 1/0 0/0 0/0 .text            daE_KG_Create__FP10fopAc_ac_c */
static void daE_KG_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 806F9CD4-806F9D1C 001ED4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 806F9D1C-806F9D64 001F1C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 806F9D64-806F9DC0 001F64 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 806F9DC0-806F9E30 001FC0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 806F9E30-806F9EA0 002030 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 806F9EA0-806F9EE8 0020A0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 806F9EE8-806F9F30 0020E8 0048+00 2/1 0/0 0/0 .text            __dt__12daE_KG_HIO_cFv */
daE_KG_HIO_c::~daE_KG_HIO_c() {
    // NONMATCHING
}

/* 806F9F30-806F9F6C 002130 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_kg_cpp */
void __sinit_d_a_e_kg_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806F9F30, __sinit_d_a_e_kg_cpp);
#pragma pop

/* 806F9F6C-806F9F74 00216C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_806F9F6C() {
    // NONMATCHING
}

/* 806F9F74-806F9F7C 002174 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_806F9F74() {
    // NONMATCHING
}

/* 806FA46C-806FA46C 0000C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
