/**
 * @file d_a_obj_ito.cpp
 * 
*/

#include "d/actor/d_a_obj_ito.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"




//
// Forward References:
//

extern "C" void __ct__15daObj_Ito_HIO_cFv();
extern "C" static void daObj_Ito_Draw__FP13obj_ito_class();
extern "C" static void cut_line_calc__FP13obj_ito_classP5ito_si();
extern "C" void __dt__4cXyzFv();
extern "C" static void cut_line__FP13obj_ito_class();
extern "C" static void cut_set__FP13obj_ito_classi();
extern "C" static void ito_end__FP5ito_s();
extern "C" static void action__FP13obj_ito_class();
extern "C" static void daObj_Ito_Execute__FP13obj_ito_class();
extern "C" static bool daObj_Ito_IsDelete__FP13obj_ito_class();
extern "C" static void daObj_Ito_Delete__FP13obj_ito_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daObj_Ito_Create__FP10fopAc_ac_c();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__15daObj_Ito_HIO_cFv();
extern "C" void __sinit_d_a_obj_ito_cpp();
extern "C" extern char const* const d_a_obj_ito__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void init__19mDoExt_3DlineMat0_cFUsUsi();
extern "C" void update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void MtxPush__Fv();
extern "C" void MtxPull__Fv();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_14();
extern "C" void _savegpr_16();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_14();
extern "C" void _restgpr_16();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19mDoExt_3DlineMat0_c[5];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 8047D810-8047D814 000000 0004+00 7/7 0/0 0/0 .rodata          @3770 */
SECTION_RODATA static f32 const lit_3770 = 4.5f;
COMPILER_STRIP_GATE(0x8047D810, &lit_3770);

/* 8047D814-8047D818 000004 0004+00 1/1 0/0 0/0 .rodata          @3771 */
SECTION_RODATA static f32 const lit_3771 = 15.0f;
COMPILER_STRIP_GATE(0x8047D814, &lit_3771);

/* 8047D8DC-8047D91C 000000 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4829 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbffff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 8047D91C-8047D938 000040 001C+00 1/1 0/0 0/0 .data            obj_size$4835 */
SECTION_DATA static u8 obj_size[28] = {
    0x3F, 0x2A, 0x7E, 0xFA, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x33, 0x33, 0x33, 0x3F, 0x99,
    0x99, 0x9A, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x33, 0x33, 0x33, 0x3F, 0x99, 0x99, 0x9A,
};

/* 8047D938-8047D958 -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Ito_Method */
static actor_method_class l_daObj_Ito_Method = {
    (process_method_func)daObj_Ito_Create__FP10fopAc_ac_c,
    (process_method_func)daObj_Ito_Delete__FP13obj_ito_class,
    (process_method_func)daObj_Ito_Execute__FP13obj_ito_class,
    (process_method_func)daObj_Ito_IsDelete__FP13obj_ito_class,
    (process_method_func)daObj_Ito_Draw__FP13obj_ito_class,
};

/* 8047D958-8047D988 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_ITO */
extern actor_process_profile_definition g_profile_OBJ_ITO = {
  fpcLy_CURRENT_e,        // mLayerID
  4,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_OBJ_ITO,           // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(obj_ito_class),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  61,                     // mPriority
  &l_daObj_Ito_Method,    // sub_method
  0x00044100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 8047D988-8047D994 0000AC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8047D994-8047D9A0 0000B8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8047D9A0-8047D9B4 0000C4 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 8047D9B4-8047D9C0 0000D8 000C+00 2/2 0/0 0/0 .data            __vt__15daObj_Ito_HIO_c */
SECTION_DATA extern void* __vt__15daObj_Ito_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daObj_Ito_HIO_cFv,
};

/* 8047B2EC-8047B324 0000EC 0038+00 1/1 0/0 0/0 .text            __ct__15daObj_Ito_HIO_cFv */
daObj_Ito_HIO_c::daObj_Ito_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8047D818-8047D81C 000008 0004+00 0/1 0/0 0/0 .rodata          @3794 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3794 = 0x000000FF;
COMPILER_STRIP_GATE(0x8047D818, &lit_3794);
#pragma pop

/* 8047D81C-8047D820 00000C 0004+00 0/1 0/0 0/0 .rodata          @3800 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3800 = 0x000000FF;
COMPILER_STRIP_GATE(0x8047D81C, &lit_3800);
#pragma pop

/* 8047D820-8047D824 000010 0004+00 1/4 0/0 0/0 .rodata          @3820 */
SECTION_RODATA static f32 const lit_3820 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x8047D820, &lit_3820);

/* 8047D9C8-8047D9CC 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_8047D9C8[4];

/* 8047D9CC-8047D9D8 00000C 000C+00 1/1 0/0 0/0 .bss             @3765 */
static u8 lit_3765[12];

/* 8047D9D8-8047D9EC 000018 0014+00 5/5 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[20];

/* 8047B324-8047B504 000124 01E0+00 1/0 0/0 0/0 .text            daObj_Ito_Draw__FP13obj_ito_class
 */
static void daObj_Ito_Draw(obj_ito_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8047D824-8047D828 000014 0004+00 0/2 0/0 0/0 .rodata          @3940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3940 = 30.0f;
COMPILER_STRIP_GATE(0x8047D824, &lit_3940);
#pragma pop

/* 8047D828-8047D82C 000018 0004+00 0/4 0/0 0/0 .rodata          @3941 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3941[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8047D828, &lit_3941);
#pragma pop

/* 8047D82C-8047D830 00001C 0004+00 0/1 0/0 0/0 .rodata          @3942 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3942 = 0x3AEBEDFA;
COMPILER_STRIP_GATE(0x8047D82C, &lit_3942);
#pragma pop

/* 8047D830-8047D834 000020 0004+00 0/2 0/0 0/0 .rodata          @3943 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3943 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x8047D830, &lit_3943);
#pragma pop

/* 8047D834-8047D838 000024 0004+00 0/2 0/0 0/0 .rodata          @3944 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3944 = 0.5f;
COMPILER_STRIP_GATE(0x8047D834, &lit_3944);
#pragma pop

/* 8047D838-8047D83C 000028 0004+00 0/1 0/0 0/0 .rodata          @3945 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3945 = 2.0f;
COMPILER_STRIP_GATE(0x8047D838, &lit_3945);
#pragma pop

/* 8047D83C-8047D840 00002C 0004+00 2/4 0/0 0/0 .rodata          @3946 */
SECTION_RODATA static f32 const lit_3946 = 1.0f;
COMPILER_STRIP_GATE(0x8047D83C, &lit_3946);

/* 8047D840-8047D844 000030 0004+00 0/1 0/0 0/0 .rodata          @3947 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3947 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x8047D840, &lit_3947);
#pragma pop

/* 8047D844-8047D848 000034 0004+00 0/1 0/0 0/0 .rodata          @3948 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3948 = 200.0f;
COMPILER_STRIP_GATE(0x8047D844, &lit_3948);
#pragma pop

/* 8047D848-8047D850 000038 0004+04 0/1 0/0 0/0 .rodata          @3949 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3949[1 + 1 /* padding */] = {
    5.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8047D848, &lit_3949);
#pragma pop

/* 8047D850-8047D858 000040 0008+00 0/3 0/0 0/0 .rodata          @3951 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3951[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8047D850, &lit_3951);
#pragma pop

/* 8047B504-8047B9A4 000304 04A0+00 1/1 0/0 0/0 .text cut_line_calc__FP13obj_ito_classP5ito_si */
static void cut_line_calc(obj_ito_class* param_0, ito_s* param_1, int param_2) {
    // NONMATCHING
}

/* 8047B9A4-8047B9E0 0007A4 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 8047B9E0-8047BAF8 0007E0 0118+00 1/1 0/0 0/0 .text            cut_line__FP13obj_ito_class */
static void cut_line(obj_ito_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8047D858-8047D860 000048 0004+04 0/1 0/0 0/0 .rodata          @4124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4124[1 + 1 /* padding */] = {
    1.0f / 20.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8047D858, &lit_4124);
#pragma pop

/* 8047D860-8047D868 000050 0008+00 0/2 0/0 0/0 .rodata          @4125 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4125[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8047D860, &lit_4125);
#pragma pop

/* 8047D868-8047D870 000058 0008+00 0/2 0/0 0/0 .rodata          @4126 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4126[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8047D868, &lit_4126);
#pragma pop

/* 8047D870-8047D878 000060 0008+00 0/2 0/0 0/0 .rodata          @4127 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4127[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8047D870, &lit_4127);
#pragma pop

/* 8047D878-8047D87C 000068 0004+00 0/1 0/0 0/0 .rodata          @4128 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4128 = 0x3D6147AE;
COMPILER_STRIP_GATE(0x8047D878, &lit_4128);
#pragma pop

/* 8047D87C-8047D880 00006C 0004+00 0/1 0/0 0/0 .rodata          @4129 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4129 = 0x3D577319;
COMPILER_STRIP_GATE(0x8047D87C, &lit_4129);
#pragma pop

/* 8047D880-8047D884 000070 0004+00 0/2 0/0 0/0 .rodata          @4130 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4130 = 20.0f;
COMPILER_STRIP_GATE(0x8047D880, &lit_4130);
#pragma pop

/* 8047BAF8-8047BF8C 0008F8 0494+00 1/1 0/0 0/0 .text            cut_set__FP13obj_ito_classi */
static void cut_set(obj_ito_class* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8047D884-8047D888 000074 0004+00 1/1 0/0 0/0 .rodata          @4150 */
SECTION_RODATA static f32 const lit_4150 = 10.0f;
COMPILER_STRIP_GATE(0x8047D884, &lit_4150);

/* 8047BF8C-8047C034 000D8C 00A8+00 1/1 0/0 0/0 .text            ito_end__FP5ito_s */
static void ito_end(ito_s* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8047D888-8047D88C 000078 0004+00 0/1 0/0 0/0 .rodata          @4723 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4723 = 0.25f;
COMPILER_STRIP_GATE(0x8047D888, &lit_4723);
#pragma pop

/* 8047D88C-8047D890 00007C 0004+00 0/1 0/0 0/0 .rodata          @4724 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4724 = 0x3A83126F;
COMPILER_STRIP_GATE(0x8047D88C, &lit_4724);
#pragma pop

/* 8047D890-8047D894 000080 0004+00 0/1 0/0 0/0 .rodata          @4725 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4725 = 11.0f / 100.0f;
COMPILER_STRIP_GATE(0x8047D890, &lit_4725);
#pragma pop

/* 8047D894-8047D898 000084 0004+00 0/1 0/0 0/0 .rodata          @4726 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4726 = -1.0f;
COMPILER_STRIP_GATE(0x8047D894, &lit_4726);
#pragma pop

/* 8047D898-8047D89C 000088 0004+00 0/1 0/0 0/0 .rodata          @4727 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4727 = 12300.0f;
COMPILER_STRIP_GATE(0x8047D898, &lit_4727);
#pragma pop

/* 8047D89C-8047D8A0 00008C 0004+00 0/2 0/0 0/0 .rodata          @4728 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4728 = 5000.0f;
COMPILER_STRIP_GATE(0x8047D89C, &lit_4728);
#pragma pop

/* 8047D8A0-8047D8A4 000090 0004+00 0/2 0/0 0/0 .rodata          @4729 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4729 = -5000.0f;
COMPILER_STRIP_GATE(0x8047D8A0, &lit_4729);
#pragma pop

/* 8047D8A4-8047D8A8 000094 0004+00 0/1 0/0 0/0 .rodata          @4730 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4730 = 1.0f / 19.0f;
COMPILER_STRIP_GATE(0x8047D8A4, &lit_4730);
#pragma pop

/* 8047D8A8-8047D8AC 000098 0004+00 0/1 0/0 0/0 .rodata          @4731 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4731 = 2.0f / 19.0f;
COMPILER_STRIP_GATE(0x8047D8A8, &lit_4731);
#pragma pop

/* 8047D8AC-8047D8B0 00009C 0004+00 0/1 0/0 0/0 .rodata          @4732 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4732 = 2200.0f;
COMPILER_STRIP_GATE(0x8047D8AC, &lit_4732);
#pragma pop

/* 8047D8B0-8047D8B4 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4733 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4733 = 1500.0f;
COMPILER_STRIP_GATE(0x8047D8B0, &lit_4733);
#pragma pop

/* 8047C034-8047CEE4 000E34 0EB0+00 1/1 0/0 0/0 .text            action__FP13obj_ito_class */
static void action(obj_ito_class* param_0) {
    // NONMATCHING
}

/* 8047CEE4-8047CFA8 001CE4 00C4+00 1/0 0/0 0/0 .text daObj_Ito_Execute__FP13obj_ito_class */
static void daObj_Ito_Execute(obj_ito_class* param_0) {
    // NONMATCHING
}

/* 8047CFA8-8047CFB0 001DA8 0008+00 1/0 0/0 0/0 .text daObj_Ito_IsDelete__FP13obj_ito_class */
static bool daObj_Ito_IsDelete(obj_ito_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 8047D8D4-8047D8D4 0000C4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8047D8D4 = "OBJ_ITO";
#pragma pop

/* 8047CFB0-8047D024 001DB0 0074+00 1/0 0/0 0/0 .text            daObj_Ito_Delete__FP13obj_ito_class
 */
static void daObj_Ito_Delete(obj_ito_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8047D8B4-8047D8B8 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4812 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4812 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x8047D8B4, &lit_4812);
#pragma pop

/* 8047D8B8-8047D8BC 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4813 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4813 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x8047D8B8, &lit_4813);
#pragma pop

/* 8047D8BC-8047D8C0 0000AC 0004+00 0/2 0/0 0/0 .rodata          @4814 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4814 = 65535.0f;
COMPILER_STRIP_GATE(0x8047D8BC, &lit_4814);
#pragma pop

/* 8047D024-8047D1D8 001E24 01B4+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8047D8C0-8047D8C4 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4930 = -3000.0f;
COMPILER_STRIP_GATE(0x8047D8C0, &lit_4930);
#pragma pop

/* 8047D8C4-8047D8C8 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4931 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4931 = 3000.0f;
COMPILER_STRIP_GATE(0x8047D8C4, &lit_4931);
#pragma pop

/* 8047D8C8-8047D8CC 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4932 = -5374.0f;
COMPILER_STRIP_GATE(0x8047D8C8, &lit_4932);
#pragma pop

/* 8047D8CC-8047D8D0 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4933 = 4920.0f;
COMPILER_STRIP_GATE(0x8047D8CC, &lit_4933);
#pragma pop

/* 8047D8D0-8047D8D4 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4934 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4934 = -2342.0f;
COMPILER_STRIP_GATE(0x8047D8D0, &lit_4934);
#pragma pop

/* 8047D1D8-8047D594 001FD8 03BC+00 1/0 0/0 0/0 .text            daObj_Ito_Create__FP10fopAc_ac_c */
static void daObj_Ito_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8047D594-8047D598 002394 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 8047D598-8047D664 002398 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 8047D664-8047D6E8 002464 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 8047D6E8-8047D730 0024E8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8047D730-8047D778 002530 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8047D778-8047D7C0 002578 0048+00 2/1 0/0 0/0 .text            __dt__15daObj_Ito_HIO_cFv */
daObj_Ito_HIO_c::~daObj_Ito_HIO_c() {
    // NONMATCHING
}

/* 8047D7C0-8047D7FC 0025C0 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_ito_cpp */
void __sinit_d_a_obj_ito_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8047D7C0, __sinit_d_a_obj_ito_cpp);
#pragma pop

/* 8047D8D4-8047D8D4 0000C4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */