/**
 * @file d_a_obj_thashi.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_thashi.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void initCcCylinder__13daObjTHASHI_cFv();
extern "C" static void daObjTHASHI_Create__FP10fopAc_ac_c();
extern "C" static void daObjTHASHI_Delete__FP13daObjTHASHI_c();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void setBaseMtx__13daObjTHASHI_cFv();
extern "C" static void daObjTHASHI_Draw__FP13daObjTHASHI_c();
extern "C" static void daObjTHASHI_Execute__FP13daObjTHASHI_c();
extern "C" void CreateHeap__13daObjTHASHI_cFv();
extern "C" void create__13daObjTHASHI_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" static bool daObjTHASHI_IsDelete__FP13daObjTHASHI_c();
extern "C" void Create__13daObjTHASHI_cFv();
extern "C" void Execute__13daObjTHASHI_cFPPA3_A4_f();
extern "C" void Draw__13daObjTHASHI_cFv();
extern "C" void Delete__13daObjTHASHI_cFv();
extern "C" static void func_80D0D174();
extern "C" static void func_80D0D17C();
extern "C" extern char const* const d_a_obj_thashi__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
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
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_set_func__16dBgS_MoveBgActor[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80D0D18C-80D0D1CC 000000 0040+00 2/2 0/0 0/0 .rodata          ccCylSrc$3671 */
SECTION_RODATA static u8 const ccCylSrc_3671[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x75, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0xF0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D0D18C, &ccCylSrc_3671);

/* 80D0D1CC-80D0D1D0 000040 0004+00 0/0 0/0 0/0 .rodata          @3693 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3693[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D0D1CC, &lit_3693);
#pragma pop

/* 80D0D1D0-80D0D1D4 000044 0004+00 0/0 0/0 0/0 .rodata          @3694 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3694 = 200.0f;
COMPILER_STRIP_GATE(0x80D0D1D0, &lit_3694);
#pragma pop

/* 80D0D1D4-80D0D1DC 000048 0004+04 0/0 0/0 0/0 .rodata          @3695 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3695[1 + 1 /* padding */] = {
    300.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80D0D1D4, &lit_3695);
#pragma pop

/* 80D0D1DC-80D0D1E4 000050 0008+00 0/0 0/0 0/0 .rodata          @3697 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3697[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D0D1DC, &lit_3697);
#pragma pop

/* 80D0D1E4-80D0D228 000058 0044+00 1/1 0/0 0/0 .rodata          ccCylSrc$3701 */
const static dCcD_SrcCyl ccCylSrc_3701 = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x100000, 0x1f}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x1, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        110.0f, // mRadius
        130.0f // mHeight
    } // mCyl
};

/* 80D0C238-80D0C298 000078 0060+00 1/1 0/0 0/0 .text            initCcCylinder__13daObjTHASHI_cFv
 */
void daObjTHASHI_c::initCcCylinder() {
    // NONMATCHING
}

/* 80D0C298-80D0C2B8 0000D8 0020+00 1/0 0/0 0/0 .text            daObjTHASHI_Create__FP10fopAc_ac_c
 */
static void daObjTHASHI_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80D0C2B8-80D0C2DC 0000F8 0024+00 1/0 0/0 0/0 .text daObjTHASHI_Delete__FP13daObjTHASHI_c */
static void daObjTHASHI_Delete(daObjTHASHI_c* param_0) {
    // NONMATCHING
}

/* 80D0C2DC-80D0C318 00011C 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80D0C318-80D0C354 000158 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D0D2D0-80D0D2D0 000144 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D0D2D0 = "S_thashi";
#pragma pop

/* 80D0D334-80D0D338 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_thashi__stringBase0;

/* 80D0D338-80D0D35C -00001 0024+00 1/1 0/0 0/0 .data            @4521 */
SECTION_DATA static void* lit_4521[9] = {
    (void*)(((char*)setBaseMtx__13daObjTHASHI_cFv) + 0x44),
    (void*)(((char*)setBaseMtx__13daObjTHASHI_cFv) + 0x6C),
    (void*)(((char*)setBaseMtx__13daObjTHASHI_cFv) + 0x6C),
    (void*)(((char*)setBaseMtx__13daObjTHASHI_cFv) + 0x1AC),
    (void*)(((char*)setBaseMtx__13daObjTHASHI_cFv) + 0x214),
    (void*)(((char*)setBaseMtx__13daObjTHASHI_cFv) + 0x29C),
    (void*)(((char*)setBaseMtx__13daObjTHASHI_cFv) + 0x29C),
    (void*)(((char*)setBaseMtx__13daObjTHASHI_cFv) + 0x6C),
    (void*)(((char*)setBaseMtx__13daObjTHASHI_cFv) + 0x214),
};

/* 80D0C354-80D0C608 000194 02B4+00 2/1 0/0 0/0 .text            setBaseMtx__13daObjTHASHI_cFv */
void daObjTHASHI_c::setBaseMtx() {
    // NONMATCHING
}

/* 80D0C608-80D0C634 000448 002C+00 1/0 0/0 0/0 .text            daObjTHASHI_Draw__FP13daObjTHASHI_c
 */
static void daObjTHASHI_Draw(daObjTHASHI_c* param_0) {
    // NONMATCHING
}

/* 80D0C634-80D0C654 000474 0020+00 2/1 0/0 0/0 .text daObjTHASHI_Execute__FP13daObjTHASHI_c */
static void daObjTHASHI_Execute(daObjTHASHI_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D0D2D0-80D0D2D0 000144 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D0D2D9 = "S_thashi00.bmd";
SECTION_DEAD static char const* const stringBase_80D0D2E8 = "S_thashi01.bmd";
SECTION_DEAD static char const* const stringBase_80D0D2F7 = "S_thashi03.bmd";
SECTION_DEAD static char const* const stringBase_80D0D306 = "S_thashi02.bmd";
SECTION_DEAD static char const* const stringBase_80D0D315 = "S_thashi01.dzb";
#pragma pop

/* 80D0C654-80D0C8B4 000494 0260+00 1/0 0/0 0/0 .text            CreateHeap__13daObjTHASHI_cFv */
void daObjTHASHI_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D0D228-80D0D22C 00009C 0004+00 0/0 0/0 0/0 .rodata          @3795 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3795 = 15.0f;
COMPILER_STRIP_GATE(0x80D0D228, &lit_3795);
#pragma pop

/* 80D0D22C-80D0D230 0000A0 0004+00 0/0 0/0 0/0 .rodata          @3796 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3796 = 60.0f;
COMPILER_STRIP_GATE(0x80D0D22C, &lit_3796);
#pragma pop

/* 80D0D230-80D0D234 0000A4 0004+00 0/0 0/0 0/0 .rodata          @3797 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3797 = 30.0f;
COMPILER_STRIP_GATE(0x80D0D230, &lit_3797);
#pragma pop

/* 80D0D234-80D0D238 0000A8 0004+00 0/0 0/0 0/0 .rodata          @3833 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3833 = 150.0f;
COMPILER_STRIP_GATE(0x80D0D234, &lit_3833);
#pragma pop

/* 80D0D238-80D0D23C 0000AC 0004+00 0/0 0/0 0/0 .rodata          @3834 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3834 = 10.0f;
COMPILER_STRIP_GATE(0x80D0D238, &lit_3834);
#pragma pop

/* 80D0D23C-80D0D240 0000B0 0004+00 0/0 0/0 0/0 .rodata          @3855 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3855 = 70.0f;
COMPILER_STRIP_GATE(0x80D0D23C, &lit_3855);
#pragma pop

/* 80D0D240-80D0D244 0000B4 0004+00 0/0 0/0 0/0 .rodata          @3856 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3856 = 13.0f / 20.0f;
COMPILER_STRIP_GATE(0x80D0D240, &lit_3856);
#pragma pop

/* 80D0D244-80D0D248 0000B8 0004+00 0/0 0/0 0/0 .rodata          @3857 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3857 = 0.25f;
COMPILER_STRIP_GATE(0x80D0D244, &lit_3857);
#pragma pop

/* 80D0D248-80D0D24C 0000BC 0004+00 0/0 0/0 0/0 .rodata          @3858 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3858 = 1.5f;
COMPILER_STRIP_GATE(0x80D0D248, &lit_3858);
#pragma pop

/* 80D0D24C-80D0D250 0000C0 0004+00 0/0 0/0 0/0 .rodata          @3859 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3859 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80D0D24C, &lit_3859);
#pragma pop

/* 80D0D250-80D0D254 0000C4 0004+00 0/0 0/0 0/0 .rodata          @3860 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3860 = 1.0f;
COMPILER_STRIP_GATE(0x80D0D250, &lit_3860);
#pragma pop

/* 80D0D254-80D0D258 0000C8 0004+00 0/0 0/0 0/0 .rodata          @3861 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3861 = 8192.0f;
COMPILER_STRIP_GATE(0x80D0D254, &lit_3861);
#pragma pop

/* 80D0D258-80D0D25C 0000CC 0004+00 0/0 0/0 0/0 .rodata          @3862 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3862 = 32000.0f;
COMPILER_STRIP_GATE(0x80D0D258, &lit_3862);
#pragma pop

/* 80D0D25C-80D0D260 0000D0 0004+00 0/0 0/0 0/0 .rodata          @3863 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3863 = 15000.0f;
COMPILER_STRIP_GATE(0x80D0D25C, &lit_3863);
#pragma pop

/* 80D0D260-80D0D264 0000D4 0004+00 0/0 0/0 0/0 .rodata          @3864 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3864 = 65536.0f;
COMPILER_STRIP_GATE(0x80D0D260, &lit_3864);
#pragma pop

/* 80D0D264-80D0D268 0000D8 0004+00 0/0 0/0 0/0 .rodata          @3947 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3947 = -1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80D0D264, &lit_3947);
#pragma pop

/* 80D0D268-80D0D26C 0000DC 0004+00 0/0 0/0 0/0 .rodata          @3973 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3973 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80D0D268, &lit_3973);
#pragma pop

/* 80D0D26C-80D0D270 0000E0 0004+00 0/0 0/0 0/0 .rodata          @3974 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3974 = 4.0f;
COMPILER_STRIP_GATE(0x80D0D26C, &lit_3974);
#pragma pop

/* 80D0D270-80D0D274 0000E4 0004+00 0/0 0/0 0/0 .rodata          @3975 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3975 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D0D270, &lit_3975);
#pragma pop

/* 80D0D274-80D0D278 0000E8 0004+00 0/0 0/0 0/0 .rodata          @3976 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3976 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D0D274, &lit_3976);
#pragma pop

/* 80D0D278-80D0D27C 0000EC 0004+00 0/0 0/0 0/0 .rodata          @3977 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3977 = 5000.0f;
COMPILER_STRIP_GATE(0x80D0D278, &lit_3977);
#pragma pop

/* 80D0D27C-80D0D280 0000F0 0004+00 0/0 0/0 0/0 .rodata          @3978 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3978 = 5.0f;
COMPILER_STRIP_GATE(0x80D0D27C, &lit_3978);
#pragma pop

/* 80D0D280-80D0D284 0000F4 0004+00 1/1 0/0 0/0 .rodata          @3988 */
SECTION_RODATA static f32 const lit_3988 = -9.0f;
COMPILER_STRIP_GATE(0x80D0D280, &lit_3988);

/* 80D0D284-80D0D288 0000F8 0004+00 0/0 0/0 0/0 .rodata          @4017 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4017 = 16384.0f;
COMPILER_STRIP_GATE(0x80D0D284, &lit_4017);
#pragma pop

/* 80D0D288-80D0D28C 0000FC 0004+00 0/0 0/0 0/0 .rodata          @4018 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4018 = -1.0f;
COMPILER_STRIP_GATE(0x80D0D288, &lit_4018);
#pragma pop

/* 80D0D28C-80D0D294 000100 0004+04 0/0 0/0 0/0 .rodata          @4019 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4019[1 + 1 /* padding */] = {
    450.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80D0D28C, &lit_4019);
#pragma pop

/* 80D0D294-80D0D29C 000108 0008+00 0/0 0/0 0/0 .rodata          @4270 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4270[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D0D294, &lit_4270);
#pragma pop

/* 80D0D29C-80D0D2A4 000110 0008+00 0/0 0/0 0/0 .rodata          @4271 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4271[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D0D29C, &lit_4271);
#pragma pop

/* 80D0D2A4-80D0D2AC 000118 0008+00 0/0 0/0 0/0 .rodata          @4272 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4272[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D0D2A4, &lit_4272);
#pragma pop

/* 80D0D2AC-80D0D2B0 000120 0004+00 0/0 0/0 0/0 .rodata          @4310 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4310 = 3.0f;
COMPILER_STRIP_GATE(0x80D0D2AC, &lit_4310);
#pragma pop

/* 80D0D2B0-80D0D2B4 000124 0004+00 0/0 0/0 0/0 .rodata          @4433 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4433 = 2000.0f;
COMPILER_STRIP_GATE(0x80D0D2B0, &lit_4433);
#pragma pop

/* 80D0D2B4-80D0D2B8 000128 0004+00 0/0 0/0 0/0 .rodata          @4446 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4446 = 608.0f;
COMPILER_STRIP_GATE(0x80D0D2B4, &lit_4446);
#pragma pop

/* 80D0D2B8-80D0D2BC 00012C 0004+00 0/0 0/0 0/0 .rodata          @4447 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4447 = 448.0f;
COMPILER_STRIP_GATE(0x80D0D2B8, &lit_4447);
#pragma pop

/* 80D0D2BC-80D0D2C0 000130 0004+00 1/1 0/0 0/0 .rodata          @4656 */
SECTION_RODATA static f32 const lit_4656 = -0.0f;
COMPILER_STRIP_GATE(0x80D0D2BC, &lit_4656);

/* 80D0D2D0-80D0D2D0 000144 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D0D324 = "S_thashi00.dzb";
#pragma pop

/* 80D0D35C-80D0D37C -00001 0020+00 1/0 0/0 0/0 .data            l_daObjTHASHI_Method */
static actor_method_class l_daObjTHASHI_Method = {
    (process_method_func)daObjTHASHI_Create__FP10fopAc_ac_c,
    (process_method_func)daObjTHASHI_Delete__FP13daObjTHASHI_c,
    (process_method_func)daObjTHASHI_Execute__FP13daObjTHASHI_c,
    (process_method_func)daObjTHASHI_IsDelete__FP13daObjTHASHI_c,
    (process_method_func)daObjTHASHI_Draw__FP13daObjTHASHI_c,
};

/* 80D0D37C-80D0D3AC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_THASHI */
extern actor_process_profile_definition g_profile_Obj_THASHI = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_THASHI,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjTHASHI_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  461,                    // mPriority
  &l_daObjTHASHI_Method,  // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D0D3AC-80D0D3B8 000078 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80D0D3B8-80D0D3C4 000084 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80D0D3C4-80D0D3D0 000090 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D0D3D0-80D0D3F4 00009C 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D0D17C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D0D174,
};

/* 80D0D3F4-80D0D41C 0000C0 0028+00 1/1 0/0 0/0 .data            __vt__13daObjTHASHI_c */
SECTION_DATA extern void* __vt__13daObjTHASHI_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__13daObjTHASHI_cFv,
    (void*)Create__13daObjTHASHI_cFv,
    (void*)Execute__13daObjTHASHI_cFPPA3_A4_f,
    (void*)Draw__13daObjTHASHI_cFv,
    (void*)Delete__13daObjTHASHI_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80D0C8B4-80D0CBC8 0006F4 0314+00 1/1 0/0 0/0 .text            create__13daObjTHASHI_cFv */
void daObjTHASHI_c::create() {
    // NONMATCHING
}

/* 80D0CBC8-80D0CC10 000A08 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80D0CC10-80D0CC58 000A50 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80D0CC58-80D0CD24 000A98 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80D0CD24-80D0CDA8 000B64 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80D0CDA8-80D0CDF0 000BE8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80D0CDF0-80D0CE60 000C30 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80D0CE60-80D0CE64 000CA0 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80D0CE64-80D0CE68 000CA4 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80D0CE68-80D0CE70 000CA8 0008+00 1/0 0/0 0/0 .text daObjTHASHI_IsDelete__FP13daObjTHASHI_c */
static bool daObjTHASHI_IsDelete(daObjTHASHI_c* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80D0D2C0-80D0D2C4 000134 0004+00 0/1 0/0 0/0 .rodata          @4790 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4790 = -1000.0f;
COMPILER_STRIP_GATE(0x80D0D2C0, &lit_4790);
#pragma pop

/* 80D0D2C4-80D0D2C8 000138 0004+00 0/1 0/0 0/0 .rodata          @4791 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4791 = -500.0f;
COMPILER_STRIP_GATE(0x80D0D2C4, &lit_4791);
#pragma pop

/* 80D0D2C8-80D0D2CC 00013C 0004+00 0/1 0/0 0/0 .rodata          @4792 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4792 = 1000.0f;
COMPILER_STRIP_GATE(0x80D0D2C8, &lit_4792);
#pragma pop

/* 80D0D2CC-80D0D2D0 000140 0004+00 0/1 0/0 0/0 .rodata          @4793 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4793 = 500.0f;
COMPILER_STRIP_GATE(0x80D0D2CC, &lit_4793);
#pragma pop

/* 80D0CE70-80D0CEB4 000CB0 0044+00 1/0 0/0 0/0 .text            Create__13daObjTHASHI_cFv */
void daObjTHASHI_c::Create() {
    // NONMATCHING
}

/* 80D0CEB4-80D0CEE0 000CF4 002C+00 1/0 0/0 0/0 .text            Execute__13daObjTHASHI_cFPPA3_A4_f
 */
void daObjTHASHI_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D0D41C-80D0D440 -00001 0024+00 1/1 0/0 0/0 .data            @4855 */
SECTION_DATA static void* lit_4855[9] = {
    (void*)(((char*)Draw__13daObjTHASHI_cFv) + 0x1AC),
    (void*)(((char*)Draw__13daObjTHASHI_cFv) + 0x1B8),
    (void*)(((char*)Draw__13daObjTHASHI_cFv) + 0x1B8),
    (void*)(((char*)Draw__13daObjTHASHI_cFv) + 0x1F0),
    (void*)(((char*)Draw__13daObjTHASHI_cFv) + 0x218),
    (void*)(((char*)Draw__13daObjTHASHI_cFv) + 0x244),
    (void*)(((char*)Draw__13daObjTHASHI_cFv) + 0x244),
    (void*)(((char*)Draw__13daObjTHASHI_cFv) + 0x1B8),
    (void*)(((char*)Draw__13daObjTHASHI_cFv) + 0x218),
};

/* 80D0D440-80D0D464 -00001 0024+00 1/1 0/0 0/0 .data            @4854 */
SECTION_DATA static void* lit_4854[9] = {
    (void*)(((char*)Draw__13daObjTHASHI_cFv) + 0x54),
    (void*)(((char*)Draw__13daObjTHASHI_cFv) + 0x70),
    (void*)(((char*)Draw__13daObjTHASHI_cFv) + 0x70),
    (void*)(((char*)Draw__13daObjTHASHI_cFv) + 0xDC),
    (void*)(((char*)Draw__13daObjTHASHI_cFv) + 0x118),
    (void*)(((char*)Draw__13daObjTHASHI_cFv) + 0x168),
    (void*)(((char*)Draw__13daObjTHASHI_cFv) + 0x168),
    (void*)(((char*)Draw__13daObjTHASHI_cFv) + 0x70),
    (void*)(((char*)Draw__13daObjTHASHI_cFv) + 0x118),
};

/* 80D0CEE0-80D0D140 000D20 0260+00 3/0 0/0 0/0 .text            Draw__13daObjTHASHI_cFv */
void daObjTHASHI_c::Draw() {
    // NONMATCHING
}

/* 80D0D140-80D0D174 000F80 0034+00 1/0 0/0 0/0 .text            Delete__13daObjTHASHI_cFv */
void daObjTHASHI_c::Delete() {
    // NONMATCHING
}

/* 80D0D174-80D0D17C 000FB4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80D0D174() {
    // NONMATCHING
}

/* 80D0D17C-80D0D184 000FBC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80D0D17C() {
    // NONMATCHING
}

/* 80D0D2D0-80D0D2D0 000144 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
