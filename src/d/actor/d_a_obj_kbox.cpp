/**
 * @file d_a_obj_kbox.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_kbox.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__16daObj_Kbox_HIO_cFv();
extern "C" static void ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" static void break_eff__FP14obj_kbox_class();
extern "C" void __dt__4cXyzFv();
extern "C" static void daObj_Kbox_Draw__FP14obj_kbox_class();
extern "C" static void kbox_ground__FP14obj_kbox_class();
extern "C" static void kbox_carry__FP14obj_kbox_class();
extern "C" static void water_check__FP14obj_kbox_class();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" static void kbox_drop__FP14obj_kbox_class();
extern "C" static void kbox_float__FP14obj_kbox_class();
extern "C" static void action__FP14obj_kbox_class();
extern "C" static void daObj_Kbox_Execute__FP14obj_kbox_class();
extern "C" static bool daObj_Kbox_IsDelete__FP14obj_kbox_class();
extern "C" static void daObj_Kbox_Delete__FP14obj_kbox_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daObj_Kbox_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__16daObj_Kbox_HIO_cFv();
extern "C" void __sinit_d_a_obj_kbox_cpp();
extern "C" static void func_80C3F01C();
extern "C" static void func_80C3F024();
extern "C" static void func_80C3F02C();
extern "C" static void func_80C3F034();
extern "C" static void func_80C3F03C();
extern "C" extern char const* const d_a_obj_kbox__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void fopAcM_carryOffRevise__FP10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void
setModel__18dPa_modelEcallBackFP14JPABaseEmitterP12J3DModelDataRC12dKy_tevstr_cUcPvUcUc();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void _savegpr_21();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_21();
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
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mEcallback__18dPa_modelEcallBack[4];
extern "C" extern u8 pauseTimer__9dScnPly_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C3F058-80C3F05C 000000 0004+00 9/9 0/0 0/0 .rodata          @3648 */
SECTION_RODATA static f32 const lit_3648 = 2.0f;
COMPILER_STRIP_GATE(0x80C3F058, &lit_3648);

/* 80C3F12C-80C3F134 000000 0008+00 1/1 0/0 0/0 .data            w_eff_id$3979 */
SECTION_DATA static u8 w_eff_id[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 80C3F134-80C3F174 000008 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4145 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80C3F174-80C3F194 -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Kbox_Method */
static actor_method_class l_daObj_Kbox_Method = {
    (process_method_func)daObj_Kbox_Create__FP10fopAc_ac_c,
    (process_method_func)daObj_Kbox_Delete__FP14obj_kbox_class,
    (process_method_func)daObj_Kbox_Execute__FP14obj_kbox_class,
    (process_method_func)daObj_Kbox_IsDelete__FP14obj_kbox_class,
    (process_method_func)daObj_Kbox_Draw__FP14obj_kbox_class,
};

/* 80C3F194-80C3F1C4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_KBOX */
extern actor_process_profile_definition g_profile_OBJ_KBOX = {
  fpcLy_CURRENT_e,        // mLayerID
  8,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_OBJ_KBOX,          // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(obj_kbox_class), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  43,                     // mPriority
  &l_daObj_Kbox_Method,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C3F1C4-80C3F1D0 000098 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80C3F1D0-80C3F1DC 0000A4 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C3F1DC-80C3F200 0000B0 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C3F03C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C3F034,
};

/* 80C3F200-80C3F230 0000D4 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C3F01C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C3F02C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C3F024,
};

/* 80C3F230-80C3F23C 000104 000C+00 2/2 0/0 0/0 .data            __vt__16daObj_Kbox_HIO_c */
SECTION_DATA extern void* __vt__16daObj_Kbox_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daObj_Kbox_HIO_cFv,
};

/* 80C3D60C-80C3D630 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__16daObj_Kbox_HIO_cFv */
daObj_Kbox_HIO_c::daObj_Kbox_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C3F05C-80C3F060 000004 0004+00 0/2 0/0 0/0 .rodata          @3668 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3668 = -50.0f;
COMPILER_STRIP_GATE(0x80C3F05C, &lit_3668);
#pragma pop

/* 80C3F060-80C3F064 000008 0004+00 0/7 0/0 0/0 .rodata          @3669 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3669[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C3F060, &lit_3669);
#pragma pop

/* 80C3F064-80C3F068 00000C 0004+00 0/3 0/0 0/0 .rodata          @3670 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3670 = 20.0f;
COMPILER_STRIP_GATE(0x80C3F064, &lit_3670);
#pragma pop

/* 80C3F288-80C3F294 000048 000C+00 1/1 0/0 0/0 .bss             @3643 */
static u8 lit_3643[12];

/* 80C3F294-80C3F2A0 000054 000C+00 3/4 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[12];

/* 80C3D630-80C3D74C 000110 011C+00 1/1 0/0 0/0 .text
 * ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c            */
static void ride_call_back(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C3F068-80C3F070 000010 0006+02 1/1 0/0 0/0 .rodata          particle_id$3675 */
SECTION_RODATA static u8 const particle_id[6 + 2 /* padding */] = {
    0x82,
    0xAB,
    0x82,
    0xAC,
    0x82,
    0xAD,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C3F068, &particle_id);

/* 80C3F070-80C3F074 000018 0004+00 2/8 0/0 0/0 .rodata          @3704 */
SECTION_RODATA static f32 const lit_3704 = 1.0f;
COMPILER_STRIP_GATE(0x80C3F070, &lit_3704);

/* 80C3F108-80C3F108 0000B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C3F108 = "Always";
SECTION_DEAD static char const* const stringBase_80C3F10F = "BreakWoodBox.bmd";
#pragma pop

/* 80C3D74C-80C3D8BC 00022C 0170+00 1/1 0/0 0/0 .text            break_eff__FP14obj_kbox_class */
static void break_eff(obj_kbox_class* param_0) {
    // NONMATCHING
}

/* 80C3D8BC-80C3D8F8 00039C 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C3F074-80C3F078 00001C 0004+00 0/2 0/0 0/0 .rodata          @3741 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3741 = 125.0f;
COMPILER_STRIP_GATE(0x80C3F074, &lit_3741);
#pragma pop

/* 80C3F078-80C3F07C 000020 0004+00 0/1 0/0 0/0 .rodata          @3742 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3742 = 50.0f;
COMPILER_STRIP_GATE(0x80C3F078, &lit_3742);
#pragma pop

/* 80C3F07C-80C3F080 000024 0004+00 0/2 0/0 0/0 .rodata          @3743 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3743 = 500.0f;
COMPILER_STRIP_GATE(0x80C3F07C, &lit_3743);
#pragma pop

/* 80C3D8F8-80C3DA18 0003D8 0120+00 1/0 0/0 0/0 .text            daObj_Kbox_Draw__FP14obj_kbox_class
 */
static void daObj_Kbox_Draw(obj_kbox_class* param_0) {
    // NONMATCHING
}

/* 80C3DA18-80C3DAB4 0004F8 009C+00 1/1 0/0 0/0 .text            kbox_ground__FP14obj_kbox_class */
static void kbox_ground(obj_kbox_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C3F080-80C3F084 000028 0004+00 1/5 0/0 0/0 .rodata          @3794 */
SECTION_RODATA static f32 const lit_3794 = 10.0f;
COMPILER_STRIP_GATE(0x80C3F080, &lit_3794);

/* 80C3F084-80C3F088 00002C 0004+00 0/1 0/0 0/0 .rodata          @3795 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3795 = 17.0f;
COMPILER_STRIP_GATE(0x80C3F084, &lit_3795);
#pragma pop

/* 80C3F088-80C3F08C 000030 0004+00 0/2 0/0 0/0 .rodata          @3796 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3796 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C3F088, &lit_3796);
#pragma pop

/* 80C3F08C-80C3F090 000034 0004+00 0/1 0/0 0/0 .rodata          @3797 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3797 = -10.0f;
COMPILER_STRIP_GATE(0x80C3F08C, &lit_3797);
#pragma pop

/* 80C3DAB4-80C3DBE4 000594 0130+00 1/1 0/0 0/0 .text            kbox_carry__FP14obj_kbox_class */
static void kbox_carry(obj_kbox_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C3F090-80C3F094 000038 0004+00 1/2 0/0 0/0 .rodata          @3829 */
SECTION_RODATA static f32 const lit_3829 = 3000.0f;
COMPILER_STRIP_GATE(0x80C3F090, &lit_3829);

/* 80C3DBE4-80C3DDC4 0006C4 01E0+00 1/1 0/0 0/0 .text            water_check__FP14obj_kbox_class */
static void water_check(obj_kbox_class* param_0) {
    // NONMATCHING
}

/* 80C3DDC4-80C3DE3C 0008A4 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C3F094-80C3F098 00003C 0004+00 0/1 0/0 0/0 .rodata          @3868 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3868 = 2000.0f;
COMPILER_STRIP_GATE(0x80C3F094, &lit_3868);
#pragma pop

/* 80C3F098-80C3F09C 000040 0004+00 0/1 0/0 0/0 .rodata          @3869 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3869 = -0.5f;
COMPILER_STRIP_GATE(0x80C3F098, &lit_3869);
#pragma pop

/* 80C3F09C-80C3F0A0 000044 0004+00 0/2 0/0 0/0 .rodata          @3870 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3870 = 15.0f;
COMPILER_STRIP_GATE(0x80C3F09C, &lit_3870);
#pragma pop

/* 80C3F0A0-80C3F0A4 000048 0004+00 0/2 0/0 0/0 .rodata          @3871 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3871 = 1000.0f;
COMPILER_STRIP_GATE(0x80C3F0A0, &lit_3871);
#pragma pop

/* 80C3F0A4-80C3F0A8 00004C 0004+00 0/1 0/0 0/0 .rodata          @3872 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3872 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C3F0A4, &lit_3872);
#pragma pop

/* 80C3F0A8-80C3F0AC 000050 0004+00 0/2 0/0 0/0 .rodata          @3873 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3873 = 100.0f;
COMPILER_STRIP_GATE(0x80C3F0A8, &lit_3873);
#pragma pop

/* 80C3DE3C-80C3DFAC 00091C 0170+00 1/1 0/0 0/0 .text            kbox_drop__FP14obj_kbox_class */
static void kbox_drop(obj_kbox_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C3F0AC-80C3F0B0 000054 0004+00 0/1 0/0 0/0 .rodata          @3935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3935 = 0.25f;
COMPILER_STRIP_GATE(0x80C3F0AC, &lit_3935);
#pragma pop

/* 80C3F0B0-80C3F0B4 000058 0004+00 0/1 0/0 0/0 .rodata          @3936 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3936 = 19.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C3F0B0, &lit_3936);
#pragma pop

/* 80C3F0B4-80C3F0B8 00005C 0004+00 0/1 0/0 0/0 .rodata          @3937 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3937 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C3F0B4, &lit_3937);
#pragma pop

/* 80C3F0B8-80C3F0BC 000060 0004+00 0/2 0/0 0/0 .rodata          @3938 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3938 = 2.5f;
COMPILER_STRIP_GATE(0x80C3F0B8, &lit_3938);
#pragma pop

/* 80C3F0BC-80C3F0C0 000064 0004+00 0/2 0/0 0/0 .rodata          @3939 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3939 = 0.5f;
COMPILER_STRIP_GATE(0x80C3F0BC, &lit_3939);
#pragma pop

/* 80C3F0C0-80C3F0C4 000068 0004+00 0/2 0/0 0/0 .rodata          @3940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3940 = 60.0f;
COMPILER_STRIP_GATE(0x80C3F0C0, &lit_3940);
#pragma pop

/* 80C3F0C4-80C3F0C8 00006C 0004+00 0/1 0/0 0/0 .rodata          @3941 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3941 = 25.0f;
COMPILER_STRIP_GATE(0x80C3F0C4, &lit_3941);
#pragma pop

/* 80C3F0C8-80C3F0CC 000070 0004+00 0/1 0/0 0/0 .rodata          @3942 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3942 = 0x3B83126F;
COMPILER_STRIP_GATE(0x80C3F0C8, &lit_3942);
#pragma pop

/* 80C3F0CC-80C3F0D0 000074 0004+00 0/1 0/0 0/0 .rodata          @3943 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3943 = 30.0f;
COMPILER_STRIP_GATE(0x80C3F0CC, &lit_3943);
#pragma pop

/* 80C3F0D0-80C3F0D4 000078 0004+00 0/1 0/0 0/0 .rodata          @3944 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3944 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C3F0D0, &lit_3944);
#pragma pop

/* 80C3F0D4-80C3F0D8 00007C 0004+00 0/1 0/0 0/0 .rodata          @3945 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3945 = -20.0f;
COMPILER_STRIP_GATE(0x80C3F0D4, &lit_3945);
#pragma pop

/* 80C3F0D8-80C3F0DC 000080 0004+00 0/2 0/0 0/0 .rodata          @3946 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3946 = 5.0f;
COMPILER_STRIP_GATE(0x80C3F0D8, &lit_3946);
#pragma pop

/* 80C3DFAC-80C3E340 000A8C 0394+00 1/1 0/0 0/0 .text            kbox_float__FP14obj_kbox_class */
static void kbox_float(obj_kbox_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C3F0DC-80C3F0E0 000084 0004+00 0/1 0/0 0/0 .rodata          @4061 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4061 = 4.0f;
COMPILER_STRIP_GATE(0x80C3F0DC, &lit_4061);
#pragma pop

/* 80C3F0E0-80C3F0E4 000088 0004+00 0/1 0/0 0/0 .rodata          @4062 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4062 = -100.0f;
COMPILER_STRIP_GATE(0x80C3F0E0, &lit_4062);
#pragma pop

/* 80C3F0E4-80C3F0E8 00008C 0004+00 0/1 0/0 0/0 .rodata          @4063 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4063 = -2.0f;
COMPILER_STRIP_GATE(0x80C3F0E4, &lit_4063);
#pragma pop

/* 80C3F0E8-80C3F0EC 000090 0004+00 0/1 0/0 0/0 .rodata          @4064 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4064 = -5.0f;
COMPILER_STRIP_GATE(0x80C3F0E8, &lit_4064);
#pragma pop

/* 80C3F0EC-80C3F0F0 000094 0004+00 0/1 0/0 0/0 .rodata          @4065 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4065 = 1.25f;
COMPILER_STRIP_GATE(0x80C3F0EC, &lit_4065);
#pragma pop

/* 80C3F0F0-80C3F0F4 000098 0004+00 0/1 0/0 0/0 .rodata          @4066 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4066 = 40.0f;
COMPILER_STRIP_GATE(0x80C3F0F0, &lit_4066);
#pragma pop

/* 80C3F0F4-80C3F0F8 00009C 0004+00 0/1 0/0 0/0 .rodata          @4067 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4067 = 20000.0f;
COMPILER_STRIP_GATE(0x80C3F0F4, &lit_4067);
#pragma pop

/* 80C3F2A0-80C3F2B0 000060 000C+04 0/1 0/0 0/0 .bss             @3976 */
#pragma push
#pragma force_active on
static u8 lit_3976[12 + 4 /* padding */];
#pragma pop

/* 80C3F2B0-80C3F2BC 000070 000C+00 0/1 0/0 0/0 .bss             sc$3975 */
#pragma push
#pragma force_active on
static u8 sc[12];
#pragma pop

/* 80C3E340-80C3E8E8 000E20 05A8+00 1/1 0/0 0/0 .text            action__FP14obj_kbox_class */
static void action(obj_kbox_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C3F0F8-80C3F0FC 0000A0 0004+00 1/1 0/0 0/0 .rodata          @4092 */
SECTION_RODATA static f32 const lit_4092 = -1.0f;
COMPILER_STRIP_GATE(0x80C3F0F8, &lit_4092);

/* 80C3E8E8-80C3EA24 0013C8 013C+00 2/1 0/0 0/0 .text daObj_Kbox_Execute__FP14obj_kbox_class */
static void daObj_Kbox_Execute(obj_kbox_class* param_0) {
    // NONMATCHING
}

/* 80C3EA24-80C3EA2C 001504 0008+00 1/0 0/0 0/0 .text daObj_Kbox_IsDelete__FP14obj_kbox_class */
static bool daObj_Kbox_IsDelete(obj_kbox_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80C3F108-80C3F108 0000B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C3F120 = "Obj_kbox";
#pragma pop

/* 80C3EA2C-80C3EAAC 00150C 0080+00 1/0 0/0 0/0 .text daObj_Kbox_Delete__FP14obj_kbox_class */
static void daObj_Kbox_Delete(obj_kbox_class* param_0) {
    // NONMATCHING
}

/* 80C3EAAC-80C3EBCC 00158C 0120+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C3F0FC-80C3F100 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4209 = -200.0f;
COMPILER_STRIP_GATE(0x80C3F0FC, &lit_4209);
#pragma pop

/* 80C3F100-80C3F104 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4210 = 200.0f;
COMPILER_STRIP_GATE(0x80C3F100, &lit_4210);
#pragma pop

/* 80C3F104-80C3F108 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4211 = 65536.0f;
COMPILER_STRIP_GATE(0x80C3F104, &lit_4211);
#pragma pop

/* 80C3EBCC-80C3EE98 0016AC 02CC+00 1/0 0/0 0/0 .text            daObj_Kbox_Create__FP10fopAc_ac_c
 */
static void daObj_Kbox_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C3EE98-80C3EEE0 001978 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80C3EEE0-80C3EF28 0019C0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C3EF28-80C3EF98 001A08 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80C3EF98-80C3EFE0 001A78 0048+00 2/1 0/0 0/0 .text            __dt__16daObj_Kbox_HIO_cFv */
daObj_Kbox_HIO_c::~daObj_Kbox_HIO_c() {
    // NONMATCHING
}

/* 80C3EFE0-80C3F01C 001AC0 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_kbox_cpp */
void __sinit_d_a_obj_kbox_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C3EFE0, __sinit_d_a_obj_kbox_cpp);
#pragma pop

/* 80C3F01C-80C3F024 001AFC 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_80C3F01C() {
    // NONMATCHING
}

/* 80C3F024-80C3F02C 001B04 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_80C3F024() {
    // NONMATCHING
}

/* 80C3F02C-80C3F034 001B0C 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_80C3F02C() {
    // NONMATCHING
}

/* 80C3F034-80C3F03C 001B14 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80C3F034() {
    // NONMATCHING
}

/* 80C3F03C-80C3F044 001B1C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80C3F03C() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C3F2BC-80C3F2C0 00007C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80C3F2BC[4];
#pragma pop

/* 80C3F2C0-80C3F2C4 000080 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80C3F2C0[4];
#pragma pop

/* 80C3F2C4-80C3F2C8 000084 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80C3F2C4[4];
#pragma pop

/* 80C3F2C8-80C3F2CC 000088 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80C3F2C8[4];
#pragma pop

/* 80C3F2CC-80C3F2D0 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C3F2CC[4];
#pragma pop

/* 80C3F2D0-80C3F2D4 000090 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C3F2D0[4];
#pragma pop

/* 80C3F2D4-80C3F2D8 000094 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80C3F2D4[4];
#pragma pop

/* 80C3F2D8-80C3F2DC 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80C3F2D8[4];
#pragma pop

/* 80C3F2DC-80C3F2E0 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80C3F2DC[4];
#pragma pop

/* 80C3F2E0-80C3F2E4 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80C3F2E0[4];
#pragma pop

/* 80C3F2E4-80C3F2E8 0000A4 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80C3F2E4[4];
#pragma pop

/* 80C3F2E8-80C3F2EC 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80C3F2E8[4];
#pragma pop

/* 80C3F2EC-80C3F2F0 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80C3F2EC[4];
#pragma pop

/* 80C3F2F0-80C3F2F4 0000B0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C3F2F0[4];
#pragma pop

/* 80C3F2F4-80C3F2F8 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80C3F2F4[4];
#pragma pop

/* 80C3F2F8-80C3F2FC 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80C3F2F8[4];
#pragma pop

/* 80C3F2FC-80C3F300 0000BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80C3F2FC[4];
#pragma pop

/* 80C3F300-80C3F304 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80C3F300[4];
#pragma pop

/* 80C3F304-80C3F308 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80C3F304[4];
#pragma pop

/* 80C3F308-80C3F30C 0000C8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80C3F308[4];
#pragma pop

/* 80C3F30C-80C3F310 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80C3F30C[4];
#pragma pop

/* 80C3F310-80C3F314 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C3F310[4];
#pragma pop

/* 80C3F314-80C3F318 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C3F314[4];
#pragma pop

/* 80C3F318-80C3F31C 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C3F318[4];
#pragma pop

/* 80C3F31C-80C3F320 0000DC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80C3F31C[4];
#pragma pop

/* 80C3F108-80C3F108 0000B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
