/**
 * @file d_a_obj_rw.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_rw.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void __ct__14daOBJ_RW_HIO_cFv();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daOBJ_RW_Draw__FP12obj_rw_class();
extern "C" static void damage_check__FP12obj_rw_class();
extern "C" static void normal__FP12obj_rw_class();
extern "C" static void action__FP12obj_rw_class();
extern "C" static void daOBJ_RW_Execute__FP12obj_rw_class();
extern "C" static bool daOBJ_RW_IsDelete__FP12obj_rw_class();
extern "C" static void daOBJ_RW_Delete__FP12obj_rw_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daOBJ_RW_Create__FP10fopAc_ac_c();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__14daOBJ_RW_HIO_cFv();
extern "C" void __sinit_d_a_obj_rw_cpp();
extern "C" extern char const* const d_a_obj_rw__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi();
extern "C" void fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void HitSeStart__5daObjFPC4cXyziPC12dCcD_GObjInfUl();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void cM_rndF__Ff();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_21();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_29();
extern "C" void _restgpr_21();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mGndCheck__11fopAcM_gc_c[84];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80CC3AF4-80CC3AF8 000000 0004+00 6/6 0/0 0/0 .rodata          @3649 */
SECTION_RODATA static f32 const lit_3649 = 1.0f;
COMPILER_STRIP_GATE(0x80CC3AF4, &lit_3649);

/* 80CC3B54-80CC3B64 000000 0010+00 1/1 0/0 0/0 .data            pole_x$3841 */
SECTION_DATA static u8 pole_x[16] = {
    0xC3, 0xAA, 0x00, 0x00, 0xC3, 0x70, 0x00, 0x00, 0x43, 0xA5, 0x00, 0x00, 0x43, 0x91, 0x00, 0x00,
};

/* 80CC3B64-80CC3B74 000010 0010+00 1/1 0/0 0/0 .data            pole_z$3842 */
SECTION_DATA static u8 pole_z[16] = {
    0x42, 0xB4, 0x00, 0x00, 0xC2, 0xB4, 0x00, 0x00, 0x42, 0xDC, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00,
};

/* 80CC3B74-80CC3BB4 000020 0040+00 1/1 0/0 0/0 .data            cc_sph_src$3951 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80CC3BB4-80CC3BF8 000060 0044+00 1/1 0/0 0/0 .data            cc_cyl_src$3952 */
static dCcD_SrcCyl cc_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        200.0f, // mRadius
        250.0f // mHeight
    } // mCyl
};

/* 80CC3BF8-80CC3C18 -00001 0020+00 1/0 0/0 0/0 .data            l_daOBJ_RW_Method */
static actor_method_class l_daOBJ_RW_Method = {
    (process_method_func)daOBJ_RW_Create__FP10fopAc_ac_c,
    (process_method_func)daOBJ_RW_Delete__FP12obj_rw_class,
    (process_method_func)daOBJ_RW_Execute__FP12obj_rw_class,
    (process_method_func)daOBJ_RW_IsDelete__FP12obj_rw_class,
    (process_method_func)daOBJ_RW_Draw__FP12obj_rw_class,
};

/* 80CC3C18-80CC3C48 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_RW */
extern actor_process_profile_definition g_profile_OBJ_RW = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_OBJ_RW,            // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(obj_rw_class),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  711,                    // mPriority
  &l_daOBJ_RW_Method,     // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CC3C48-80CC3C54 0000F4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80CC3C54-80CC3C60 000100 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80CC3C60-80CC3C6C 00010C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80CC3C6C-80CC3C78 000118 000C+00 2/2 0/0 0/0 .data            __vt__14daOBJ_RW_HIO_c */
SECTION_DATA extern void* __vt__14daOBJ_RW_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daOBJ_RW_HIO_cFv,
};

/* 80CC298C-80CC29B0 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__14daOBJ_RW_HIO_cFv */
daOBJ_RW_HIO_c::daOBJ_RW_HIO_c() {
    // NONMATCHING
}

/* 80CC29B0-80CC2A74 000110 00C4+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC3AF8-80CC3AFC 000004 0004+00 0/2 0/0 0/0 .rodata          @3721 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3721 = 100.0f;
COMPILER_STRIP_GATE(0x80CC3AF8, &lit_3721);
#pragma pop

/* 80CC3AFC-80CC3B00 000008 0004+00 0/1 0/0 0/0 .rodata          @3722 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3722 = 1500.0f;
COMPILER_STRIP_GATE(0x80CC3AFC, &lit_3722);
#pragma pop

/* 80CC3B00-80CC3B04 00000C 0004+00 0/4 0/0 0/0 .rodata          @3723 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3723[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CC3B00, &lit_3723);
#pragma pop

/* 80CC2A74-80CC2BA4 0001D4 0130+00 1/0 0/0 0/0 .text            daOBJ_RW_Draw__FP12obj_rw_class */
static void daOBJ_RW_Draw(obj_rw_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC3B04-80CC3B08 000010 0004+00 0/1 0/0 0/0 .rodata          @3791 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3791 = 50.0f;
COMPILER_STRIP_GATE(0x80CC3B04, &lit_3791);
#pragma pop

/* 80CC3B08-80CC3B0C 000014 0004+00 0/2 0/0 0/0 .rodata          @3792 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3792 = 150.0f;
COMPILER_STRIP_GATE(0x80CC3B08, &lit_3792);
#pragma pop

/* 80CC3B0C-80CC3B10 000018 0004+00 0/1 0/0 0/0 .rodata          @3793 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3793 = 0.5f;
COMPILER_STRIP_GATE(0x80CC3B0C, &lit_3793);
#pragma pop

/* 80CC3B10-80CC3B14 00001C 0004+00 0/2 0/0 0/0 .rodata          @3794 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3794 = -200.0f;
COMPILER_STRIP_GATE(0x80CC3B10, &lit_3794);
#pragma pop

/* 80CC3B14-80CC3B18 000020 0004+00 0/1 0/0 0/0 .rodata          @3795 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3795 = 70.0f;
COMPILER_STRIP_GATE(0x80CC3B14, &lit_3795);
#pragma pop

/* 80CC2BA4-80CC2E60 000304 02BC+00 1/1 0/0 0/0 .text            damage_check__FP12obj_rw_class */
static void damage_check(obj_rw_class* param_0) {
    // NONMATCHING
}

/* 80CC2E60-80CC2E78 0005C0 0018+00 1/1 0/0 0/0 .text            normal__FP12obj_rw_class */
static void normal(obj_rw_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC3B18-80CC3B1C 000024 0004+00 0/1 0/0 0/0 .rodata          @3821 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3821 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80CC3B18, &lit_3821);
#pragma pop

/* 80CC3B1C-80CC3B20 000028 0004+00 0/1 0/0 0/0 .rodata          @3822 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3822 = 5.0f;
COMPILER_STRIP_GATE(0x80CC3B1C, &lit_3822);
#pragma pop

/* 80CC3B20-80CC3B24 00002C 0004+00 0/1 0/0 0/0 .rodata          @3823 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3823 = 20.0f;
COMPILER_STRIP_GATE(0x80CC3B20, &lit_3823);
#pragma pop

/* 80CC2E78-80CC2F1C 0005D8 00A4+00 1/1 0/0 0/0 .text            action__FP12obj_rw_class */
static void action(obj_rw_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC3B24-80CC3B28 000030 0004+00 0/1 0/0 0/0 .rodata          @3895 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3895 = 30.0f;
COMPILER_STRIP_GATE(0x80CC3B24, &lit_3895);
#pragma pop

/* 80CC3B28-80CC3B2C 000034 0004+00 0/1 0/0 0/0 .rodata          @3896 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3896 = -130.0f;
COMPILER_STRIP_GATE(0x80CC3B28, &lit_3896);
#pragma pop

/* 80CC3B2C-80CC3B30 000038 0004+00 0/1 0/0 0/0 .rodata          @3897 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3897 = 200.0f;
COMPILER_STRIP_GATE(0x80CC3B2C, &lit_3897);
#pragma pop

/* 80CC3B30-80CC3B34 00003C 0004+00 0/1 0/0 0/0 .rodata          @3898 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3898 = 80.0f;
COMPILER_STRIP_GATE(0x80CC3B30, &lit_3898);
#pragma pop

/* 80CC3B34-80CC3B38 000040 0004+00 0/1 0/0 0/0 .rodata          @3899 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3899 = 220.0f;
COMPILER_STRIP_GATE(0x80CC3B34, &lit_3899);
#pragma pop

/* 80CC3B38-80CC3B3C 000044 0004+00 0/1 0/0 0/0 .rodata          @3900 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3900 = 52000.0f;
COMPILER_STRIP_GATE(0x80CC3B38, &lit_3900);
#pragma pop

/* 80CC3B3C-80CC3B44 000048 0008+00 0/1 0/0 0/0 .rodata          @3902 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3902[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CC3B3C, &lit_3902);
#pragma pop

/* 80CC3C80-80CC3C84 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80CC3C80[4];

/* 80CC3C84-80CC3C90 00000C 000C+00 1/1 0/0 0/0 .bss             @3644 */
static u8 lit_3644[12];

/* 80CC3C90-80CC3CA4 000018 0014+00 3/3 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[20];

/* 80CC2F1C-80CC32EC 00067C 03D0+00 2/1 0/0 0/0 .text            daOBJ_RW_Execute__FP12obj_rw_class
 */
static void daOBJ_RW_Execute(obj_rw_class* param_0) {
    // NONMATCHING
}

/* 80CC32EC-80CC32F4 000A4C 0008+00 1/0 0/0 0/0 .text            daOBJ_RW_IsDelete__FP12obj_rw_class
 */
static bool daOBJ_RW_IsDelete(obj_rw_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80CC3B4C-80CC3B4C 000058 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CC3B4C = "Obj_rw";
#pragma pop

/* 80CC32F4-80CC3368 000A54 0074+00 1/0 0/0 0/0 .text            daOBJ_RW_Delete__FP12obj_rw_class
 */
static void daOBJ_RW_Delete(obj_rw_class* param_0) {
    // NONMATCHING
}

/* 80CC3368-80CC3400 000AC8 0098+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC3B44-80CC3B48 000050 0004+00 0/1 0/0 0/0 .rodata          @4035 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4035 = -500.0f;
COMPILER_STRIP_GATE(0x80CC3B44, &lit_4035);
#pragma pop

/* 80CC3B48-80CC3B4C 000054 0004+00 0/1 0/0 0/0 .rodata          @4036 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4036 = 500.0f;
COMPILER_STRIP_GATE(0x80CC3B48, &lit_4036);
#pragma pop

/* 80CC3400-80CC36E4 000B60 02E4+00 1/0 0/0 0/0 .text            daOBJ_RW_Create__FP10fopAc_ac_c */
static void daOBJ_RW_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CC36E4-80CC37B0 000E44 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_CylFv */
// dCcD_Cyl::~dCcD_Cyl() {
extern "C" void __dt__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80CC37B0-80CC3834 000F10 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
// dCcD_Cyl::dCcD_Cyl() {
extern "C" void __ct__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80CC3834-80CC387C 000F94 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80CC387C-80CC38C4 000FDC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80CC38C4-80CC3990 001024 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80CC3990-80CC3A14 0010F0 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80CC3A14-80CC3A5C 001174 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80CC3A5C-80CC3AA4 0011BC 0048+00 2/1 0/0 0/0 .text            __dt__14daOBJ_RW_HIO_cFv */
daOBJ_RW_HIO_c::~daOBJ_RW_HIO_c() {
    // NONMATCHING
}

/* 80CC3AA4-80CC3AE0 001204 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_rw_cpp */
void __sinit_d_a_obj_rw_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80CC3AA4, __sinit_d_a_obj_rw_cpp);
#pragma pop

/* 80CC3B4C-80CC3B4C 000058 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
