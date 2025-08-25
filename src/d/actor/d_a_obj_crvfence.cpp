/**
 * @file d_a_obj_crvfence.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_crvfence.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void CheckVec__15daObjCRVFENCE_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void Wall_Check__15daObjCRVFENCE_cF4cXyz4cXyz();
extern "C" static void daObjCRVFENCE_Create__FP10fopAc_ac_c();
extern "C" static void daObjCRVFENCE_Delete__FP15daObjCRVFENCE_c();
extern "C" void BgRelease__15daObjCRVFENCE_cFv();
extern "C" void PosSet__15daObjCRVFENCE_cFP4cXyz();
extern "C" void FenceMove__15daObjCRVFENCE_cFRUcP4cXyzP5csXyzP4cXyzRs();
extern "C" void BrokenAction__15daObjCRVFENCE_cFv();
extern "C" static void s_obj_sub__FPvPv();
extern "C" void NormalAction__15daObjCRVFENCE_cFv();
extern "C" void checkViewArea__15daObjCRVFENCE_cFP4cXyz();
extern "C" void Action__15daObjCRVFENCE_cFv();
extern "C" void setBaseMtx__15daObjCRVFENCE_cFv();
extern "C" static void daObjCRVFENCE_Draw__FP15daObjCRVFENCE_c();
extern "C" static void daObjCRVFENCE_Execute__FP15daObjCRVFENCE_c();
extern "C" void CreateHeap__15daObjCRVFENCE_cFv();
extern "C" void create__15daObjCRVFENCE_cFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __ct__4cXyzFv();
extern "C" static bool daObjCRVFENCE_IsDelete__FP15daObjCRVFENCE_c();
extern "C" void Create__15daObjCRVFENCE_cFv();
extern "C" void Execute__15daObjCRVFENCE_cFPPA3_A4_f();
extern "C" void Draw__15daObjCRVFENCE_cFv();
extern "C" void Delete__15daObjCRVFENCE_cFv();
extern "C" static void func_80BD0170();
extern "C" static void func_80BD0178();
extern "C" extern char const* const d_a_obj_crvfence__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void mDoLib_project__FP3VecP3Vec();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
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
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
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
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__5csXyzFsss();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_25();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80BD0188-80BD018C 000000 0004+00 7/7 0/0 0/0 .rodata          @3685 */
SECTION_RODATA static u8 const lit_3685[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BD0188, &lit_3685);

/* 80BCEC98-80BCED24 000078 008C+00 2/2 0/0 0/0 .text            CheckVec__15daObjCRVFENCE_cFv */
void daObjCRVFENCE_c::CheckVec() {
    // NONMATCHING
}

/* 80BCED24-80BCED60 000104 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80BCED60-80BCEE1C 000140 00BC+00 1/1 0/0 0/0 .text Wall_Check__15daObjCRVFENCE_cF4cXyz4cXyz */
void daObjCRVFENCE_c::Wall_Check(cXyz param_0, cXyz param_1) {
    // NONMATCHING
}

/* 80BCEE1C-80BCEE3C 0001FC 0020+00 1/0 0/0 0/0 .text daObjCRVFENCE_Create__FP10fopAc_ac_c */
static void daObjCRVFENCE_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80BCEE3C-80BCEE60 00021C 0024+00 1/0 0/0 0/0 .text daObjCRVFENCE_Delete__FP15daObjCRVFENCE_c */
static void daObjCRVFENCE_Delete(daObjCRVFENCE_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD020C-80BD020C 000084 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BD020C = "CrvFence";
SECTION_DEAD static char const* const stringBase_80BD0215 = "Release Error\n";
#pragma pop

/* 80BCEE60-80BCEED0 000240 0070+00 1/1 0/0 0/0 .text            BgRelease__15daObjCRVFENCE_cFv */
void daObjCRVFENCE_c::BgRelease() {
    // NONMATCHING
}

/* 80BCEED0-80BCEF30 0002B0 0060+00 1/1 0/0 0/0 .text            PosSet__15daObjCRVFENCE_cFP4cXyz */
void daObjCRVFENCE_c::PosSet(cXyz* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD018C-80BD0190 000004 0004+00 0/3 0/0 0/0 .rodata          @3761 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3761 = 20.0f;
COMPILER_STRIP_GATE(0x80BD018C, &lit_3761);
#pragma pop

/* 80BD0190-80BD0194 000008 0004+00 0/2 0/0 0/0 .rodata          @3762 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3762 = -9.0f;
COMPILER_STRIP_GATE(0x80BD0190, &lit_3762);
#pragma pop

/* 80BD0194-80BD0198 00000C 0004+00 0/1 0/0 0/0 .rodata          @3763 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3763 = -0.5f;
COMPILER_STRIP_GATE(0x80BD0194, &lit_3763);
#pragma pop

/* 80BD0198-80BD019C 000010 0004+00 0/2 0/0 0/0 .rodata          @3764 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3764 = 100.0f;
COMPILER_STRIP_GATE(0x80BD0198, &lit_3764);
#pragma pop

/* 80BD019C-80BD01A0 000014 0004+00 0/1 0/0 0/0 .rodata          @3765 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3765 = -7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BD019C, &lit_3765);
#pragma pop

/* 80BD01A0-80BD01A4 000018 0004+00 0/1 0/0 0/0 .rodata          @3766 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3766 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BD01A0, &lit_3766);
#pragma pop

/* 80BCEF30-80BCF0B0 000310 0180+00 1/1 0/0 0/0 .text
 * FenceMove__15daObjCRVFENCE_cFRUcP4cXyzP5csXyzP4cXyzRs        */
void daObjCRVFENCE_c::FenceMove(u8& param_0, cXyz* param_1, csXyz* param_2, cXyz* param_3,
                                    s16& param_4) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD01A4-80BD01A8 00001C 0004+00 0/1 0/0 0/0 .rodata          @3825 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3825 = 180.0f;
COMPILER_STRIP_GATE(0x80BD01A4, &lit_3825);
#pragma pop

/* 80BD01A8-80BD01AC 000020 0004+00 0/1 0/0 0/0 .rodata          @3826 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3826 = -180.0f;
COMPILER_STRIP_GATE(0x80BD01A8, &lit_3826);
#pragma pop

/* 80BD01AC-80BD01B0 000024 0004+00 0/1 0/0 0/0 .rodata          @3827 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3827 = 15.0f;
COMPILER_STRIP_GATE(0x80BD01AC, &lit_3827);
#pragma pop

/* 80BD01B0-80BD01B4 000028 0004+00 0/2 0/0 0/0 .rodata          @3828 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3828 = 30.0f;
COMPILER_STRIP_GATE(0x80BD01B0, &lit_3828);
#pragma pop

/* 80BD01B4-80BD01B8 00002C 0004+00 0/1 0/0 0/0 .rodata          @3829 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3829 = -25.0f;
COMPILER_STRIP_GATE(0x80BD01B4, &lit_3829);
#pragma pop

/* 80BD01B8-80BD01BC 000030 0004+00 0/1 0/0 0/0 .rodata          @3830 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3830 = 40.0f;
COMPILER_STRIP_GATE(0x80BD01B8, &lit_3830);
#pragma pop

/* 80BD01BC-80BD01C0 000034 0004+00 0/2 0/0 0/0 .rodata          @3831 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3831 = 25.0f;
COMPILER_STRIP_GATE(0x80BD01BC, &lit_3831);
#pragma pop

/* 80BD01C0-80BD01C4 000038 0004+00 0/1 0/0 0/0 .rodata          @3832 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3832 = -15.0f;
COMPILER_STRIP_GATE(0x80BD01C0, &lit_3832);
#pragma pop

/* 80BD01C4-80BD01C8 00003C 0004+00 0/2 0/0 0/0 .rodata          @3833 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3833 = 1000.0f;
COMPILER_STRIP_GATE(0x80BD01C4, &lit_3833);
#pragma pop

/* 80BCF0B0-80BCF390 000490 02E0+00 1/1 0/0 0/0 .text            BrokenAction__15daObjCRVFENCE_cFv
 */
void daObjCRVFENCE_c::BrokenAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD01C8-80BD01CC 000040 0004+00 1/1 0/0 0/0 .rodata          @3845 */
SECTION_RODATA static f32 const lit_3845 = 600.0f;
COMPILER_STRIP_GATE(0x80BD01C8, &lit_3845);

/* 80BCF390-80BCF404 000770 0074+00 1/1 0/0 0/0 .text            s_obj_sub__FPvPv */
static s32 s_obj_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD01CC-80BD01D0 000044 0004+00 1/2 0/0 0/0 .rodata          @3953 */
SECTION_RODATA static f32 const lit_3953 = 1.0f;
COMPILER_STRIP_GATE(0x80BD01CC, &lit_3953);

/* 80BD01D0-80BD01D4 000048 0004+00 0/1 0/0 0/0 .rodata          @3954 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3954 = -1.0f;
COMPILER_STRIP_GATE(0x80BD01D0, &lit_3954);
#pragma pop

/* 80BD01D4-80BD01D8 00004C 0004+00 0/1 0/0 0/0 .rodata          @3955 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3955 = 150.0f;
COMPILER_STRIP_GATE(0x80BD01D4, &lit_3955);
#pragma pop

/* 80BD01D8-80BD01DC 000050 0004+00 0/1 0/0 0/0 .rodata          @3956 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3956 = 300.0f;
COMPILER_STRIP_GATE(0x80BD01D8, &lit_3956);
#pragma pop

/* 80BD01DC-80BD01E0 000054 0004+00 0/1 0/0 0/0 .rodata          @3957 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3957 = -200.0f;
COMPILER_STRIP_GATE(0x80BD01DC, &lit_3957);
#pragma pop

/* 80BD01E0-80BD01E4 000058 0004+00 0/1 0/0 0/0 .rodata          @3958 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3958 = 50.0f;
COMPILER_STRIP_GATE(0x80BD01E0, &lit_3958);
#pragma pop

/* 80BD01E4-80BD01E8 00005C 0004+00 0/1 0/0 0/0 .rodata          @3959 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3959 = 120.0f;
COMPILER_STRIP_GATE(0x80BD01E4, &lit_3959);
#pragma pop

/* 80BD01E8-80BD01EC 000060 0004+00 0/1 0/0 0/0 .rodata          @3960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3960 = 200.0f;
COMPILER_STRIP_GATE(0x80BD01E8, &lit_3960);
#pragma pop

/* 80BCF404-80BCF7DC 0007E4 03D8+00 1/1 0/0 0/0 .text            NormalAction__15daObjCRVFENCE_cFv
 */
void daObjCRVFENCE_c::NormalAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD01EC-80BD01F0 000064 0004+00 0/1 0/0 0/0 .rodata          @3975 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3975 = 608.0f;
COMPILER_STRIP_GATE(0x80BD01EC, &lit_3975);
#pragma pop

/* 80BD01F0-80BD01F4 000068 0004+00 0/1 0/0 0/0 .rodata          @3976 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3976 = 448.0f;
COMPILER_STRIP_GATE(0x80BD01F0, &lit_3976);
#pragma pop

/* 80BCF7DC-80BCF860 000BBC 0084+00 1/1 0/0 0/0 .text checkViewArea__15daObjCRVFENCE_cFP4cXyz */
void daObjCRVFENCE_c::checkViewArea(cXyz* param_0) {
    // NONMATCHING
}

/* 80BCF860-80BCF8A4 000C40 0044+00 1/1 0/0 0/0 .text            Action__15daObjCRVFENCE_cFv */
void daObjCRVFENCE_c::Action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD01F4-80BD01F8 00006C 0004+00 1/1 0/0 0/0 .rodata          @4010 */
SECTION_RODATA static f32 const lit_4010 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BD01F4, &lit_4010);

/* 80BCF8A4-80BCF998 000C84 00F4+00 1/1 0/0 0/0 .text            setBaseMtx__15daObjCRVFENCE_cFv */
void daObjCRVFENCE_c::setBaseMtx() {
    // NONMATCHING
}

/* 80BCF998-80BCF9C4 000D78 002C+00 1/0 0/0 0/0 .text daObjCRVFENCE_Draw__FP15daObjCRVFENCE_c */
static void daObjCRVFENCE_Draw(daObjCRVFENCE_c* param_0) {
    // NONMATCHING
}

/* 80BCF9C4-80BCF9E4 000DA4 0020+00 2/1 0/0 0/0 .text daObjCRVFENCE_Execute__FP15daObjCRVFENCE_c
 */
static void daObjCRVFENCE_Execute(daObjCRVFENCE_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD020C-80BD020C 000084 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BD0224 = "CaravanFence.bmd";
SECTION_DEAD static char const* const stringBase_80BD0235 = "U_CaravanGate_PieceB.bmd";
#pragma pop

/* 80BD0260-80BD0264 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_crvfence__stringBase0;

/* 80BCF9E4-80BCFAE4 000DC4 0100+00 1/0 0/0 0/0 .text            CreateHeap__15daObjCRVFENCE_cFv */
void daObjCRVFENCE_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD01F8-80BD01FC 000070 0004+00 0/1 0/0 0/0 .rodata          @4119 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4119 = 3.0f;
COMPILER_STRIP_GATE(0x80BD01F8, &lit_4119);
#pragma pop

/* 80BD01FC-80BD0200 000074 0004+00 0/2 0/0 0/0 .rodata          @4120 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4120 = -500.0f;
COMPILER_STRIP_GATE(0x80BD01FC, &lit_4120);
#pragma pop

/* 80BD0200-80BD0204 000078 0004+00 0/2 0/0 0/0 .rodata          @4121 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4121 = 500.0f;
COMPILER_STRIP_GATE(0x80BD0200, &lit_4121);
#pragma pop

/* 80BD0204-80BD0208 00007C 0004+00 0/1 0/0 0/0 .rodata          @4122 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4122 = 450.0f;
COMPILER_STRIP_GATE(0x80BD0204, &lit_4122);
#pragma pop

/* 80BD020C-80BD020C 000084 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BD024E = "CaravanFence.dzb";
#pragma pop

/* 80BD0264-80BD0284 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjCRVFENCE_Method */
static actor_method_class l_daObjCRVFENCE_Method = {
    (process_method_func)daObjCRVFENCE_Create__FP10fopAc_ac_c,
    (process_method_func)daObjCRVFENCE_Delete__FP15daObjCRVFENCE_c,
    (process_method_func)daObjCRVFENCE_Execute__FP15daObjCRVFENCE_c,
    (process_method_func)daObjCRVFENCE_IsDelete__FP15daObjCRVFENCE_c,
    (process_method_func)daObjCRVFENCE_Draw__FP15daObjCRVFENCE_c,
};

/* 80BD0284-80BD02B4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_CRVFENCE */
extern actor_process_profile_definition g_profile_Obj_CRVFENCE = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_CRVFENCE,       // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjCRVFENCE_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  467,                     // mPriority
  &l_daObjCRVFENCE_Method, // sub_method
  0x00040180,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80BD02B4-80BD02C0 000054 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BD02C0-80BD02CC 000060 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80BD02CC-80BD02F0 00006C 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BD0178,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BD0170,
};

/* 80BD02F0-80BD0318 000090 0028+00 1/1 0/0 0/0 .data            __vt__15daObjCRVFENCE_c */
SECTION_DATA extern void* __vt__15daObjCRVFENCE_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__15daObjCRVFENCE_cFv,
    (void*)Create__15daObjCRVFENCE_cFv,
    (void*)Execute__15daObjCRVFENCE_cFPPA3_A4_f,
    (void*)Draw__15daObjCRVFENCE_cFv,
    (void*)Delete__15daObjCRVFENCE_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80BCFAE4-80BCFD6C 000EC4 0288+00 1/1 0/0 0/0 .text            create__15daObjCRVFENCE_cFv */
void daObjCRVFENCE_c::create() {
    // NONMATCHING
}

/* 80BCFD6C-80BCFE38 00114C 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80BCFE38-80BCFEBC 001218 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80BCFEBC-80BCFF04 00129C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80BCFF04-80BCFF4C 0012E4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80BCFF4C-80BCFFBC 00132C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80BCFFBC-80BCFFC0 00139C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80BCFFC0-80BCFFC8 0013A0 0008+00 1/0 0/0 0/0 .text daObjCRVFENCE_IsDelete__FP15daObjCRVFENCE_c
 */
static bool daObjCRVFENCE_IsDelete(daObjCRVFENCE_c* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80BD0208-80BD020C 000080 0004+00 0/1 0/0 0/0 .rodata          @4219 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4219 = -1000.0f;
COMPILER_STRIP_GATE(0x80BD0208, &lit_4219);
#pragma pop

/* 80BCFFC8-80BD000C 0013A8 0044+00 1/0 0/0 0/0 .text            Create__15daObjCRVFENCE_cFv */
void daObjCRVFENCE_c::Create() {
    // NONMATCHING
}

/* 80BD000C-80BD0058 0013EC 004C+00 1/0 0/0 0/0 .text Execute__15daObjCRVFENCE_cFPPA3_A4_f */
void daObjCRVFENCE_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80BD0058-80BD013C 001438 00E4+00 1/0 0/0 0/0 .text            Draw__15daObjCRVFENCE_cFv */
void daObjCRVFENCE_c::Draw() {
    // NONMATCHING
}

/* 80BD013C-80BD0170 00151C 0034+00 1/0 0/0 0/0 .text            Delete__15daObjCRVFENCE_cFv */
void daObjCRVFENCE_c::Delete() {
    // NONMATCHING
}

/* 80BD0170-80BD0178 001550 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80BD0170() {
    // NONMATCHING
}

/* 80BD0178-80BD0180 001558 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80BD0178() {
    // NONMATCHING
}

/* 80BD020C-80BD020C 000084 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
