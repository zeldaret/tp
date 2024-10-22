/**
 * @file d_a_e_tk_ball.cpp
 * 
*/

#include "d/actor/d_a_e_tk_ball.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void daE_TK_BALL_Draw__FP15e_tk_ball_class();
extern "C" static void simple_bg_check__FP15e_tk_ball_class();
extern "C" static void impact_eff_set__FP15e_tk_ball_class();
extern "C" static void e_tk_ball_move__FP15e_tk_ball_class();
extern "C" static void e_tk_ball_return__FP15e_tk_ball_class();
extern "C" static void e_tk_ball_drop__FP15e_tk_ball_class();
extern "C" static void action__FP15e_tk_ball_class();
extern "C" static void daE_TK_BALL_Execute__FP15e_tk_ball_class();
extern "C" static bool daE_TK_BALL_IsDelete__FP15e_tk_ball_class();
extern "C" static void daE_TK_BALL_Delete__FP15e_tk_ball_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_TK_BALL_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" extern char const* const d_a_e_tk_ball__stringBase0;

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
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LockonTarget__12dAttention_cFl();
extern "C" void LockonTruth__12dAttention_cFv();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void StartCAt__8dCcD_SphFR4cXyz();
extern "C" void MoveCAt__8dCcD_SphFR4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void __dl__FPv();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" u8 mParticleTracePCB__13dPa_control_c[4 + 4 /* padding */];

//
// Declarations:
//

/* 807BBFF8-807BC070 000078 0078+00 1/0 0/0 0/0 .text daE_TK_BALL_Draw__FP15e_tk_ball_class */
static void daE_TK_BALL_Draw(e_tk_ball_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807BD56C-807BD570 000000 0004+00 4/4 0/0 0/0 .rodata          @3710 */
SECTION_RODATA static u8 const lit_3710[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x807BD56C, &lit_3710);

/* 807BD570-807BD574 000004 0004+00 0/1 0/0 0/0 .rodata          @3711 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3711 = 30.0f;
COMPILER_STRIP_GATE(0x807BD570, &lit_3711);
#pragma pop

/* 807BD574-807BD578 000008 0004+00 1/2 0/0 0/0 .rodata          @3712 */
SECTION_RODATA static f32 const lit_3712 = -50.0f;
COMPILER_STRIP_GATE(0x807BD574, &lit_3712);

/* 807BD578-807BD57C 00000C 0004+00 0/1 0/0 0/0 .rodata          @3713 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3713 = -30.0f;
COMPILER_STRIP_GATE(0x807BD578, &lit_3713);
#pragma pop

/* 807BD57C-807BD580 000010 0004+00 0/2 0/0 0/0 .rodata          @3714 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3714 = 50.0f;
COMPILER_STRIP_GATE(0x807BD57C, &lit_3714);
#pragma pop

/* 807BC070-807BC1CC 0000F0 015C+00 3/3 0/0 0/0 .text simple_bg_check__FP15e_tk_ball_class */
static void simple_bg_check(e_tk_ball_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807BD580-807BD584 000014 0004+00 3/4 0/0 0/0 .rodata          @3763 */
SECTION_RODATA static f32 const lit_3763 = 2.0f;
COMPILER_STRIP_GATE(0x807BD580, &lit_3763);

/* 807BD584-807BD588 000018 0004+00 1/2 0/0 0/0 .rodata          @3764 */
SECTION_RODATA static f32 const lit_3764 = 1.0f;
COMPILER_STRIP_GATE(0x807BD584, &lit_3764);

/* 807BC1CC-807BC3F8 00024C 022C+00 3/3 0/0 0/0 .text            impact_eff_set__FP15e_tk_ball_class
 */
static void impact_eff_set(e_tk_ball_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807BD588-807BD58C 00001C 0004+00 0/1 0/0 0/0 .rodata          @3923 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3923 = -20.0f;
COMPILER_STRIP_GATE(0x807BD588, &lit_3923);
#pragma pop

/* 807BD58C-807BD594 000020 0008+00 0/2 0/0 0/0 .rodata          @3924 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3924[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807BD58C, &lit_3924);
#pragma pop

/* 807BD594-807BD59C 000028 0008+00 0/2 0/0 0/0 .rodata          @3925 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3925[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807BD594, &lit_3925);
#pragma pop

/* 807BD59C-807BD5A4 000030 0008+00 0/2 0/0 0/0 .rodata          @3926 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3926[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807BD59C, &lit_3926);
#pragma pop

/* 807BD5A4-807BD5A8 000038 0004+00 0/1 0/0 0/0 .rodata          @3927 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3927 = 10.0f;
COMPILER_STRIP_GATE(0x807BD5A4, &lit_3927);
#pragma pop

/* 807BD5A8-807BD5AC 00003C 0004+00 0/1 0/0 0/0 .rodata          @3928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3928 = -3.0f / 10.0f;
COMPILER_STRIP_GATE(0x807BD5A8, &lit_3928);
#pragma pop

/* 807BD5AC-807BD5B0 000040 0004+00 0/1 0/0 0/0 .rodata          @3929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3929 = 60.0f;
COMPILER_STRIP_GATE(0x807BD5AC, &lit_3929);
#pragma pop

/* 807BC3F8-807BCA18 000478 0620+00 1/1 0/0 0/0 .text            e_tk_ball_move__FP15e_tk_ball_class
 */
static void e_tk_ball_move(e_tk_ball_class* param_0) {
    // NONMATCHING
}

/* 807BCA18-807BCAF4 000A98 00DC+00 1/1 0/0 0/0 .text e_tk_ball_return__FP15e_tk_ball_class */
static void e_tk_ball_return(e_tk_ball_class* param_0) {
    // NONMATCHING
}

/* 807BCAF4-807BCB94 000B74 00A0+00 1/1 0/0 0/0 .text            e_tk_ball_drop__FP15e_tk_ball_class
 */
static void e_tk_ball_drop(e_tk_ball_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807BD5B0-807BD5B4 000044 0004+00 0/1 0/0 0/0 .rodata          @4115 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4115 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x807BD5B0, &lit_4115);
#pragma pop

/* 807BD5B4-807BD5B8 000048 0004+00 0/1 0/0 0/0 .rodata          @4116 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4116 = 300.0f;
COMPILER_STRIP_GATE(0x807BD5B4, &lit_4116);
#pragma pop

/* 807BD5B8-807BD5BC 00004C 0004+00 1/2 0/0 0/0 .rodata          @4117 */
SECTION_RODATA static f32 const lit_4117 = 32768.0f;
COMPILER_STRIP_GATE(0x807BD5B8, &lit_4117);

/* 807BD5BC-807BD5C0 000050 0004+00 0/1 0/0 0/0 .rodata          @4118 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4118 = 1.5f;
COMPILER_STRIP_GATE(0x807BD5BC, &lit_4118);
#pragma pop

/* 807BD5C0-807BD5C4 000054 0004+00 0/1 0/0 0/0 .rodata          @4119 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4119 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x807BD5C0, &lit_4119);
#pragma pop

/* 807BD5D0-807BD5D8 000000 0006+02 1/1 0/0 0/0 .data            e_id$3988 */
SECTION_DATA static u8 e_id[6 + 2 /* padding */] = {
    0x81,
    0x9D,
    0x81,
    0x9E,
    0x81,
    0x9A,
    /* padding */
    0x00,
    0x00,
};

/* 807BCB94-807BCF84 000C14 03F0+00 1/1 0/0 0/0 .text            action__FP15e_tk_ball_class */
static void action(e_tk_ball_class* param_0) {
    // NONMATCHING
}

/* 807BCF84-807BD0C0 001004 013C+00 2/1 0/0 0/0 .text daE_TK_BALL_Execute__FP15e_tk_ball_class */
static void daE_TK_BALL_Execute(e_tk_ball_class* param_0) {
    // NONMATCHING
}

/* 807BD0C0-807BD0C8 001140 0008+00 1/0 0/0 0/0 .text daE_TK_BALL_IsDelete__FP15e_tk_ball_class */
static bool daE_TK_BALL_IsDelete(e_tk_ball_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 807BD5C4-807BD5C4 000058 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807BD5C4 = "E_tk";
SECTION_DEAD static char const* const stringBase_807BD5C9 = "E_tk2";
#pragma pop

/* 807BD0C8-807BD13C 001148 0074+00 1/0 0/0 0/0 .text daE_TK_BALL_Delete__FP15e_tk_ball_class */
static void daE_TK_BALL_Delete(e_tk_ball_class* param_0) {
    // NONMATCHING
}

/* 807BD13C-807BD1EC 0011BC 00B0+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807BD5D8-807BD618 000008 0040+00 1/1 0/0 0/0 .data            at_sph_src$4199 */
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x1, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 20.0f} // mSph
    } // mSphAttr
};

/* 807BD618-807BD658 000048 0040+00 1/1 0/0 0/0 .data            tg_sph_src$4200 */
static dCcD_SrcSph tg_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_METAL, 0x5, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};

/* 807BD658-807BD678 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_TK_BALL_Method */
static actor_method_class l_daE_TK_BALL_Method = {
    (process_method_func)daE_TK_BALL_Create__FP10fopAc_ac_c,
    (process_method_func)daE_TK_BALL_Delete__FP15e_tk_ball_class,
    (process_method_func)daE_TK_BALL_Execute__FP15e_tk_ball_class,
    (process_method_func)daE_TK_BALL_IsDelete__FP15e_tk_ball_class,
    (process_method_func)daE_TK_BALL_Draw__FP15e_tk_ball_class,
};

/* 807BD678-807BD6A8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_TK_BALL */
extern actor_process_profile_definition g_profile_E_TK_BALL = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_E_TK_BALL,          // mProcName
  &g_fpcLf_Method.mBase,   // sub_method
  sizeof(e_tk_ball_class), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  151,                     // mPriority
  &l_daE_TK_BALL_Method,   // sub_method
  0x00040120,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_0_e,       // cullType
};

/* 807BD6A8-807BD6B4 0000D8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 807BD6B4-807BD6C0 0000E4 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 807BD1EC-807BD4D4 00126C 02E8+00 1/0 0/0 0/0 .text            daE_TK_BALL_Create__FP10fopAc_ac_c
 */
static void daE_TK_BALL_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 807BD4D4-807BD51C 001554 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 807BD51C-807BD564 00159C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 807BD5C4-807BD5C4 000058 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */