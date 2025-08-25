/**
 * @file d_a_obj_bhashi.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_bhashi.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void initCcCylinder__13daObjBHASHI_cFv();
extern "C" void setCcCylinder__13daObjBHASHI_cFv();
extern "C" static void daObjBHASHI_Create__FP10fopAc_ac_c();
extern "C" static void daObjBHASHI_Delete__FP13daObjBHASHI_c();
extern "C" void Set_Hahen__13daObjBHASHI_cFv();
extern "C" void Set_Speed__13daObjBHASHI_cFssff();
extern "C" void Obj_Damage__13daObjBHASHI_cFv();
extern "C" void Obj_Damage__13daObjBHASHI_cF4cXyz();
extern "C" void __ct__7Hahen_cFv();
extern "C" void Wall_Check__7Hahen_cFv();
extern "C" void HahenMotion__7Hahen_cFv();
extern "C" void CheckCull__7Hahen_cFv();
extern "C" void checkViewArea__7Hahen_cFv();
extern "C" void Rolling__13daObjBHASHI_cFP4cXyzff();
extern "C" void Roll_Set__7Hahen_cFP4cXyzfs();
extern "C" void setBaseMtx__13daObjBHASHI_cFv();
extern "C" static void daObjBHASHI_Draw__FP13daObjBHASHI_c();
extern "C" static void daObjBHASHI_Execute__FP13daObjBHASHI_c();
extern "C" void CreateHeap__13daObjBHASHI_cFv();
extern "C" void create__13daObjBHASHI_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__7Hahen_cFv();
extern "C" static bool daObjBHASHI_IsDelete__FP13daObjBHASHI_c();
extern "C" void Create__13daObjBHASHI_cFv();
extern "C" void Execute__13daObjBHASHI_cFPPA3_A4_f();
extern "C" void Draw__13daObjBHASHI_cFv();
extern "C" void Delete__13daObjBHASHI_cFv();
extern "C" extern char const* const d_a_obj_bhashi__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void mDoLib_project__FP3VecP3Vec();
extern "C" void fopAcM_SearchByName__FsPP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc();
extern "C" void removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai();
extern "C" void entrySimpleModel__14dComIfG_play_cFP8J3DModeli();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void ResetTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_23();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80578A88-80578ACC 000000 0044+00 11/11 0/0 0/0 .rodata          ccCylSrc$3780 */
const static dCcD_SrcCyl ccCylSrc = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x100000, 0x1f}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        300.0f, // mRadius
        2200.0f // mHeight
    } // mCyl
};

/* 80576A58-80576AC4 000078 006C+00 1/1 0/0 0/0 .text            initCcCylinder__13daObjBHASHI_cFv
 */
void daObjBHASHI_c::initCcCylinder() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80578ACC-80578AD0 000044 0004+00 2/2 0/0 0/0 .rodata          @3795 */
SECTION_RODATA static f32 const lit_3795 = -1100.0f;
COMPILER_STRIP_GATE(0x80578ACC, &lit_3795);

/* 80576AC4-80576B34 0000E4 0070+00 1/1 0/0 0/0 .text            setCcCylinder__13daObjBHASHI_cFv */
void daObjBHASHI_c::setCcCylinder() {
    // NONMATCHING
}

/* 80576B34-80576B54 000154 0020+00 1/0 0/0 0/0 .text            daObjBHASHI_Create__FP10fopAc_ac_c
 */
static void daObjBHASHI_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80576B54-80576B78 000174 0024+00 1/0 0/0 0/0 .text daObjBHASHI_Delete__FP13daObjBHASHI_c */
static void daObjBHASHI_Delete(daObjBHASHI_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80578AD0-80578AD4 000048 0004+00 1/5 0/0 0/0 .rodata          @3829 */
SECTION_RODATA static f32 const lit_3829 = 1100.0f;
COMPILER_STRIP_GATE(0x80578AD0, &lit_3829);

/* 80578AD4-80578AD8 00004C 0004+00 1/1 0/0 0/0 .rodata          @3830 */
SECTION_RODATA static f32 const lit_3830 = 50.0f;
COMPILER_STRIP_GATE(0x80578AD4, &lit_3830);

/* 80576B78-80576C50 000198 00D8+00 2/2 0/0 0/0 .text            Set_Hahen__13daObjBHASHI_cFv */
void daObjBHASHI_c::Set_Hahen() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80578AD8-80578ADC 000050 0004+00 0/1 0/0 0/0 .rodata          @3922 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3922 = 80.0f;
COMPILER_STRIP_GATE(0x80578AD8, &lit_3922);
#pragma pop

/* 80578ADC-80578AE0 000054 0004+00 0/1 0/0 0/0 .rodata          @3923 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3923 = 350.0f;
COMPILER_STRIP_GATE(0x80578ADC, &lit_3923);
#pragma pop

/* 80578AE0-80578AE4 000058 0004+00 0/1 0/0 0/0 .rodata          @3924 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3924 = 2.5f;
COMPILER_STRIP_GATE(0x80578AE0, &lit_3924);
#pragma pop

/* 80578AE4-80578AE8 00005C 0004+00 0/1 0/0 0/0 .rodata          @3925 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3925 = 5.5f;
COMPILER_STRIP_GATE(0x80578AE4, &lit_3925);
#pragma pop

/* 80578AE8-80578AEC 000060 0004+00 0/1 0/0 0/0 .rodata          @3926 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3926 = 31.0f / 10.0f;
COMPILER_STRIP_GATE(0x80578AE8, &lit_3926);
#pragma pop

/* 80578AEC-80578AF0 000064 0004+00 0/1 0/0 0/0 .rodata          @3927 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3927 = 4.5f;
COMPILER_STRIP_GATE(0x80578AEC, &lit_3927);
#pragma pop

/* 80578AF0-80578AF4 000068 0004+00 0/2 0/0 0/0 .rodata          @3928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3928 = 2.0f;
COMPILER_STRIP_GATE(0x80578AF0, &lit_3928);
#pragma pop

/* 80578AF4-80578AF8 00006C 0004+00 0/1 0/0 0/0 .rodata          @3929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3929 = 30.0f;
COMPILER_STRIP_GATE(0x80578AF4, &lit_3929);
#pragma pop

/* 80578AF8-80578AFC 000070 0004+00 0/1 0/0 0/0 .rodata          @3930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3930 = 8192.0f;
COMPILER_STRIP_GATE(0x80578AF8, &lit_3930);
#pragma pop

/* 80578AFC-80578B00 000074 0004+00 1/9 0/0 0/0 .rodata          @3931 */
SECTION_RODATA static u8 const lit_3931[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80578AFC, &lit_3931);

/* 80578B00-80578B04 000078 0004+00 0/1 0/0 0/0 .rodata          @3932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3932 = 15000.0f;
COMPILER_STRIP_GATE(0x80578B00, &lit_3932);
#pragma pop

/* 80578B04-80578B08 00007C 0004+00 0/1 0/0 0/0 .rodata          @3933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3933 = 65536.0f;
COMPILER_STRIP_GATE(0x80578B04, &lit_3933);
#pragma pop

/* 80578B08-80578B0C 000080 0004+00 0/1 0/0 0/0 .rodata          @3934 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3934 = 1050.0f;
COMPILER_STRIP_GATE(0x80578B08, &lit_3934);
#pragma pop

/* 80578B0C-80578B10 000084 0004+00 0/1 0/0 0/0 .rodata          @3935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3935 = 60.0f;
COMPILER_STRIP_GATE(0x80578B0C, &lit_3935);
#pragma pop

/* 80578B10-80578B14 000088 0004+00 0/1 0/0 0/0 .rodata          @3936 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3936 = 10.0f;
COMPILER_STRIP_GATE(0x80578B10, &lit_3936);
#pragma pop

/* 80578B14-80578B18 00008C 0004+00 0/1 0/0 0/0 .rodata          @3937 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3937 = 20.0f;
COMPILER_STRIP_GATE(0x80578B14, &lit_3937);
#pragma pop

/* 80578B18-80578B1C 000090 0004+00 0/1 0/0 0/0 .rodata          @3938 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3938 = 1750.0f;
COMPILER_STRIP_GATE(0x80578B18, &lit_3938);
#pragma pop

/* 80578B1C-80578B20 000094 0004+00 0/1 0/0 0/0 .rodata          @3939 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3939 = 32000.0f;
COMPILER_STRIP_GATE(0x80578B1C, &lit_3939);
#pragma pop

/* 80578B20-80578B28 000098 0008+00 0/3 0/0 0/0 .rodata          @3942 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3942[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80578B20, &lit_3942);
#pragma pop

/* 80576C50-805771EC 000270 059C+00 1/1 0/0 0/0 .text            Set_Speed__13daObjBHASHI_cFssff */
void daObjBHASHI_c::Set_Speed(s16 param_0, s16 param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80578B28-80578B2C 0000A0 0004+00 0/3 0/0 0/0 .rodata          @4028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4028 = 1.0f;
COMPILER_STRIP_GATE(0x80578B28, &lit_4028);
#pragma pop

/* 80578B2C-80578B30 0000A4 0004+00 0/3 0/0 0/0 .rodata          @4029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4029 = -1.0f;
COMPILER_STRIP_GATE(0x80578B2C, &lit_4029);
#pragma pop

/* 805771EC-80577500 00080C 0314+00 1/1 0/0 0/0 .text            Obj_Damage__13daObjBHASHI_cFv */
void daObjBHASHI_c::Obj_Damage() {
    // NONMATCHING
}

/* 80577500-80577794 000B20 0294+00 0/0 0/0 1/1 .text            Obj_Damage__13daObjBHASHI_cF4cXyz
 */
void daObjBHASHI_c::Obj_Damage(cXyz param_0) {
    // NONMATCHING
}

/* 80577794-805777A4 000DB4 0010+00 1/1 0/0 0/0 .text            __ct__7Hahen_cFv */
Hahen_c::Hahen_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80578B30-80578B34 0000A8 0004+00 1/1 0/0 0/0 .rodata          @4114 */
SECTION_RODATA static f32 const lit_4114 = -1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80578B30, &lit_4114);

/* 805777A4-80577868 000DC4 00C4+00 1/1 0/0 0/0 .text            Wall_Check__7Hahen_cFv */
void Hahen_c::Wall_Check() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80578B34-80578B38 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4185 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4185 = 15.0f;
COMPILER_STRIP_GATE(0x80578B34, &lit_4185);
#pragma pop

/* 80578B38-80578B40 0000B0 0004+04 0/2 0/0 0/0 .rodata          @4186 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4186[1 + 1 /* padding */] = {
    -9.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80578B38, &lit_4186);
#pragma pop

/* 80578B40-80578B48 0000B8 0008+00 0/4 0/0 0/0 .rodata          @4187 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4187[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80578B40, &lit_4187);
#pragma pop

/* 80578B48-80578B50 0000C0 0008+00 0/4 0/0 0/0 .rodata          @4188 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4188[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80578B48, &lit_4188);
#pragma pop

/* 80578B50-80578B58 0000C8 0008+00 0/4 0/0 0/0 .rodata          @4189 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4189[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80578B50, &lit_4189);
#pragma pop

/* 80578B58-80578B5C 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4190 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4190 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80578B58, &lit_4190);
#pragma pop

/* 80578B5C-80578B60 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4191 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4191 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80578B5C, &lit_4191);
#pragma pop

/* 80578B60-80578B64 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4192 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4192 = 4.0f;
COMPILER_STRIP_GATE(0x80578B60, &lit_4192);
#pragma pop

/* 80578B64-80578B68 0000DC 0004+00 0/2 0/0 0/0 .rodata          @4193 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4193 = 5000.0f;
COMPILER_STRIP_GATE(0x80578B64, &lit_4193);
#pragma pop

/* 80578B68-80578B6C 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4194 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4194 = 8.0f;
COMPILER_STRIP_GATE(0x80578B68, &lit_4194);
#pragma pop

/* 80578B6C-80578B70 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4195 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4195 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80578B6C, &lit_4195);
#pragma pop

/* 80577868-80577C1C 000E88 03B4+00 1/1 0/0 0/0 .text            HahenMotion__7Hahen_cFv */
void Hahen_c::HahenMotion() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80578B70-80578B74 0000E8 0004+00 0/2 0/0 0/0 .rodata          @4258 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4258 = 1000.0f;
COMPILER_STRIP_GATE(0x80578B70, &lit_4258);
#pragma pop

/* 80577C1C-80577DA4 00123C 0188+00 1/1 0/0 0/0 .text            CheckCull__7Hahen_cFv */
void Hahen_c::CheckCull() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80578B74-80578B78 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4271 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4271 = -50.0f;
COMPILER_STRIP_GATE(0x80578B74, &lit_4271);
#pragma pop

/* 80578B78-80578B7C 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4272 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4272 = 658.0f;
COMPILER_STRIP_GATE(0x80578B78, &lit_4272);
#pragma pop

/* 80578B7C-80578B80 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4273 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4273 = 498.0f;
COMPILER_STRIP_GATE(0x80578B7C, &lit_4273);
#pragma pop

/* 80577DA4-80577E24 0013C4 0080+00 1/1 0/0 0/0 .text            checkViewArea__7Hahen_cFv */
void Hahen_c::checkViewArea() {
    // NONMATCHING
}

/* 80577E24-80577FE0 001444 01BC+00 1/1 0/0 0/0 .text            Rolling__13daObjBHASHI_cFP4cXyzff
 */
void daObjBHASHI_c::Rolling(cXyz* param_0, f32 param_1, f32 param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80578B80-80578B84 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4345 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4345 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80578B80, &lit_4345);
#pragma pop

/* 80578B84-80578B88 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4346 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4346 = 3.0f;
COMPILER_STRIP_GATE(0x80578B84, &lit_4346);
#pragma pop

/* 80578B88-80578B8C 000100 0004+00 0/1 0/0 0/0 .rodata          @4347 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4347 = 9.0f;
COMPILER_STRIP_GATE(0x80578B88, &lit_4347);
#pragma pop

/* 80577FE0-805781FC 001600 021C+00 1/1 0/0 0/0 .text            Roll_Set__7Hahen_cFP4cXyzfs */
void Hahen_c::Roll_Set(cXyz* param_0, f32 param_1, s16 param_2) {
    // NONMATCHING
}

/* 805781FC-805782E4 00181C 00E8+00 1/1 0/0 0/0 .text            setBaseMtx__13daObjBHASHI_cFv */
void daObjBHASHI_c::setBaseMtx() {
    // NONMATCHING
}

/* 805782E4-80578310 001904 002C+00 1/0 0/0 0/0 .text            daObjBHASHI_Draw__FP13daObjBHASHI_c
 */
static void daObjBHASHI_Draw(daObjBHASHI_c* param_0) {
    // NONMATCHING
}

/* 80578310-80578330 001930 0020+00 2/1 0/0 0/0 .text daObjBHASHI_Execute__FP13daObjBHASHI_c */
static void daObjBHASHI_Execute(daObjBHASHI_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80578BA8-80578BA8 000120 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80578BA8 = "B_Hashi";
SECTION_DEAD static char const* const stringBase_80578BB0 = "Lv9_R07_pillar.bmd";
SECTION_DEAD static char const* const stringBase_80578BC3 = "Lv9_R07_pillar_hahen.bmd";
#pragma pop

/* 80578BF0-80578BF4 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_bhashi__stringBase0;

/* 80578330-8057842C 001950 00FC+00 1/0 0/0 0/0 .text            CreateHeap__13daObjBHASHI_cFv */
void daObjBHASHI_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80578B8C-80578B90 000104 0004+00 0/1 0/0 0/0 .rodata          @4515 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4515 = 100.0f;
COMPILER_STRIP_GATE(0x80578B8C, &lit_4515);
#pragma pop

/* 80578B90-80578B94 000108 0004+00 0/2 0/0 0/0 .rodata          @4516 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4516 = -500.0f;
COMPILER_STRIP_GATE(0x80578B90, &lit_4516);
#pragma pop

/* 80578B94-80578B98 00010C 0004+00 0/2 0/0 0/0 .rodata          @4517 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4517 = 500.0f;
COMPILER_STRIP_GATE(0x80578B94, &lit_4517);
#pragma pop

/* 80578B98-80578B9C 000110 0004+00 0/1 0/0 0/0 .rodata          @4518 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4518 = 3000.0f;
COMPILER_STRIP_GATE(0x80578B98, &lit_4518);
#pragma pop

/* 80578BA8-80578BA8 000120 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80578BDC = "Lv9_R07_pillar.dzb";
#pragma pop

/* 80578BF4-80578C14 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjBHASHI_Method */
static actor_method_class l_daObjBHASHI_Method = {
    (process_method_func)daObjBHASHI_Create__FP10fopAc_ac_c,
    (process_method_func)daObjBHASHI_Delete__FP13daObjBHASHI_c,
    (process_method_func)daObjBHASHI_Execute__FP13daObjBHASHI_c,
    (process_method_func)daObjBHASHI_IsDelete__FP13daObjBHASHI_c,
    (process_method_func)daObjBHASHI_Draw__FP13daObjBHASHI_c,
};

/* 80578C14-80578C44 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_BHASHI */
extern actor_process_profile_definition g_profile_Obj_BHASHI = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_BHASHI,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjBHASHI_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  463,                    // mPriority
  &l_daObjBHASHI_Method,  // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80578C44-80578C50 000054 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80578C50-80578C5C 000060 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80578C5C-80578C84 00006C 0028+00 1/1 0/0 0/0 .data            __vt__13daObjBHASHI_c */
SECTION_DATA extern void* __vt__13daObjBHASHI_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__13daObjBHASHI_cFv,
    (void*)Create__13daObjBHASHI_cFv,
    (void*)Execute__13daObjBHASHI_cFPPA3_A4_f,
    (void*)Draw__13daObjBHASHI_cFv,
    (void*)Delete__13daObjBHASHI_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 8057842C-805786B4 001A4C 0288+00 1/1 0/0 0/0 .text            create__13daObjBHASHI_cFv */
void daObjBHASHI_c::create() {
    // NONMATCHING
}

/* 805786B4-805786FC 001CD4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 805786FC-80578744 001D1C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80578744-80578780 001D64 003C+00 1/1 0/0 0/0 .text            __dt__7Hahen_cFv */
Hahen_c::~Hahen_c() {
    // NONMATCHING
}

/* 80578780-80578788 001DA0 0008+00 1/0 0/0 0/0 .text daObjBHASHI_IsDelete__FP13daObjBHASHI_c */
static bool daObjBHASHI_IsDelete(daObjBHASHI_c* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80578B9C-80578BA0 000114 0004+00 0/1 0/0 0/0 .rodata          @4606 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4606 = -1000.0f;
COMPILER_STRIP_GATE(0x80578B9C, &lit_4606);
#pragma pop

/* 80578788-805787CC 001DA8 0044+00 1/0 0/0 0/0 .text            Create__13daObjBHASHI_cFv */
void daObjBHASHI_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80578BA0-80578BA4 000118 0004+00 1/1 0/0 0/0 .rodata          @4626 */
SECTION_RODATA static f32 const lit_4626 = 400.0f;
COMPILER_STRIP_GATE(0x80578BA0, &lit_4626);

/* 80578BA4-80578BA8 00011C 0004+00 1/1 0/0 0/0 .rodata          @4627 */
SECTION_RODATA static f32 const lit_4627 = 90.0f;
COMPILER_STRIP_GATE(0x80578BA4, &lit_4627);

/* 805787CC-805788EC 001DEC 0120+00 1/0 0/0 0/0 .text            Execute__13daObjBHASHI_cFPPA3_A4_f
 */
void daObjBHASHI_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 805788EC-805789E8 001F0C 00FC+00 1/0 0/0 0/0 .text            Draw__13daObjBHASHI_cFv */
void daObjBHASHI_c::Draw() {
    // NONMATCHING
}

/* 805789E8-80578A80 002008 0098+00 1/0 0/0 0/0 .text            Delete__13daObjBHASHI_cFv */
void daObjBHASHI_c::Delete() {
    // NONMATCHING
}

/* 80578BA8-80578BA8 000120 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
