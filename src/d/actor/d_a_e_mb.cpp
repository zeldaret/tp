/**
 * @file d_a_e_mb.cpp
 * 
*/

#include "d/actor/d_a_e_mb.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__12daE_MB_HIO_cFv();
extern "C" static void anm_init__FP10e_mb_classifUcf();
extern "C" static void daE_MB_Draw__FP10e_mb_class();
extern "C" static void e_mb_standby__FP10e_mb_class();
extern "C" static void e_mb_walk1__FP10e_mb_class();
extern "C" void __dt__4cXyzFv();
extern "C" static void e_mb_move__FP10e_mb_class();
extern "C" static void e_mb_walk2__FP10e_mb_class();
extern "C" static void e_mb_firstdemo__FP10e_mb_class();
extern "C" static void e_mb_end__FP10e_mb_class();
extern "C" static void action__FP10e_mb_class();
extern "C" static void daE_MB_Execute__FP10e_mb_class();
extern "C" static bool daE_MB_IsDelete__FP10e_mb_class();
extern "C" static void daE_MB_Delete__FP10e_mb_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daE_MB_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12daE_MB_HIO_cFv();
extern "C" void __sinit_d_a_e_mb_cpp();
extern "C" extern char const* const d_a_e_mb__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void entryDL__14mDoExt_McaMorfFv();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi();
extern "C" void update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void cDmrNowMidnaTalk__Fv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
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
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19mDoExt_3DlineMat1_c[5];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80708A10-80708A14 000000 0004+00 9/9 0/0 0/0 .rodata          @3764 */
SECTION_RODATA static f32 const lit_3764 = 1.0f;
COMPILER_STRIP_GATE(0x80708A10, &lit_3764);

/* 80708A14-80708A18 000004 0004+00 0/2 0/0 0/0 .rodata          @3765 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3765 = 50.0f;
COMPILER_STRIP_GATE(0x80708A14, &lit_3765);
#pragma pop

/* 80708A18-80708A1C 000008 0004+00 0/1 0/0 0/0 .rodata          @3766 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3766 = 1.5f;
COMPILER_STRIP_GATE(0x80708A18, &lit_3766);
#pragma pop

/* 80708A1C-80708A20 00000C 0004+00 2/9 0/0 0/0 .rodata          @3767 */
SECTION_RODATA static u8 const lit_3767[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80708A1C, &lit_3767);

/* 80708A20-80708A24 000010 0004+00 0/1 0/0 0/0 .rodata          @3768 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3768 = 70.0f;
COMPILER_STRIP_GATE(0x80708A20, &lit_3768);
#pragma pop

/* 80708AF0-80708AF4 000000 0004+00 1/1 0/0 0/0 .data            l_color$3793 */
SECTION_DATA static u8 l_color[4] = {
    0x14,
    0x0F,
    0x00,
    0xFF,
};

/* 80708AF4-80708B10 -00001 001C+00 1/1 0/0 0/0 .data            @3884 */
SECTION_DATA static void* lit_3884[7] = {
    (void*)(((char*)e_mb_standby__FP10e_mb_class) + 0x6C),
    (void*)(((char*)e_mb_standby__FP10e_mb_class) + 0xA4),
    (void*)(((char*)e_mb_standby__FP10e_mb_class) + 0xC8),
    (void*)(((char*)e_mb_standby__FP10e_mb_class) + 0x114),
    (void*)(((char*)e_mb_standby__FP10e_mb_class) + 0x254),
    (void*)(((char*)e_mb_standby__FP10e_mb_class) + 0x134),
    (void*)(((char*)e_mb_standby__FP10e_mb_class) + 0x1B4),
};

/* 80708B10-80708B50 000020 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4733 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 60.0f} // mSph
    } // mSphAttr
};

/* 80708B50-80708B70 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_MB_Method */
static actor_method_class l_daE_MB_Method = {
    (process_method_func)daE_MB_Create__FP10fopAc_ac_c,
    (process_method_func)daE_MB_Delete__FP10e_mb_class,
    (process_method_func)daE_MB_Execute__FP10e_mb_class,
    (process_method_func)daE_MB_IsDelete__FP10e_mb_class,
    (process_method_func)daE_MB_Draw__FP10e_mb_class,
};

/* 80708B70-80708BA0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_MB */
extern actor_process_profile_definition g_profile_E_MB = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_MB,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_mb_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  164,                    // mPriority
  &l_daE_MB_Method,       // sub_method
  0x00044000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80708BA0-80708BAC 0000B0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80708BAC-80708BB8 0000BC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80708BB8-80708BCC 0000C8 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 80708BCC-80708BD8 0000DC 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80708BD8-80708BE4 0000E8 000C+00 2/2 0/0 0/0 .data            __vt__12daE_MB_HIO_c */
SECTION_DATA extern void* __vt__12daE_MB_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_MB_HIO_cFv,
};

/* 8070616C-807061B4 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__12daE_MB_HIO_cFv */
daE_MB_HIO_c::daE_MB_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80708A24-80708A28 000014 0004+00 1/2 0/0 0/0 .rodata          @3782 */
SECTION_RODATA static f32 const lit_3782 = -1.0f;
COMPILER_STRIP_GATE(0x80708A24, &lit_3782);

/* 80708AE8-80708AE8 0000D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80708AE8 = "E_mb";
#pragma pop

/* 807061B4-80706260 000134 00AC+00 5/5 0/0 0/0 .text            anm_init__FP10e_mb_classifUcf */
static void anm_init(e_mb_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* 80706260-807063B0 0001E0 0150+00 1/0 0/0 0/0 .text            daE_MB_Draw__FP10e_mb_class */
static void daE_MB_Draw(e_mb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80708BF0-80708BF4 000008 0001+03 4/4 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80708BF4-80708BF8 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80708BF8-80708BFC 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80708BFC-80708C00 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80708C00-80708C04 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80708C04-80708C08 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80708C08-80708C0C 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80708C0C-80708C10 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80708C10-80708C14 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80708C14-80708C18 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80708C18-80708C1C 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80708C1C-80708C20 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80708C20-80708C24 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80708C24-80708C28 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80708C28-80708C2C 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80708C2C-80708C30 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 80708C2C 0001+00 data_80708C2C @1009 */
/* 80708C2D 0003+00 data_80708C2D None */
static u8 struct_80708C2C[4];

/* 80708C30-80708C3C 000048 000C+00 0/1 0/0 0/0 .bss             @3759 */
#pragma push
#pragma force_active on
static u8 lit_3759[12];
#pragma pop

/* 80708C3C-80708C58 000054 001C+00 2/5 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[28];

/* 80708C58-80708C64 000070 000C+00 0/1 0/0 0/0 .bss             @3824 */
#pragma push
#pragma force_active on
static u8 lit_3824[12];
#pragma pop

/* 80708C64-80708C70 00007C 000C+00 0/2 0/0 0/0 .bss             L_pos1 */
#pragma push
#pragma force_active on
static u8 L_pos1[12];
#pragma pop

/* 80708C70-80708C7C 000088 000C+00 0/1 0/0 0/0 .bss             @3825 */
#pragma push
#pragma force_active on
static u8 lit_3825[12];
#pragma pop

/* 80708C7C-80708C88 000094 000C+00 1/3 0/0 0/0 .bss             L_pos2 */
static u8 L_pos2[12];

/* 80708C88-80708C94 0000A0 000C+00 0/1 0/0 0/0 .bss             @3826 */
#pragma push
#pragma force_active on
static u8 lit_3826[12];
#pragma pop

/* 80708C94-80708CA0 0000AC 000C+00 0/2 0/0 0/0 .bss             L_Hpos */
#pragma push
#pragma force_active on
static u8 L_Hpos[12];
#pragma pop

/* 80708CA0-80708CAC 0000B8 000C+00 0/1 0/0 0/0 .bss             @3827 */
#pragma push
#pragma force_active on
static u8 lit_3827[12];
#pragma pop

/* 80708CAC-80708CB8 0000C4 000C+00 0/3 0/0 0/0 .bss             R_pos1 */
#pragma push
#pragma force_active on
static u8 R_pos1[12];
#pragma pop

/* 807063B0-8070661C 000330 026C+00 2/1 0/0 0/0 .text            e_mb_standby__FP10e_mb_class */
static void e_mb_standby(e_mb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80708A28-80708A2C 000018 0004+00 0/0 0/0 0/0 .rodata          @3880 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3880 = 250.0f;
COMPILER_STRIP_GATE(0x80708A28, &lit_3880);
#pragma pop

/* 80708A2C-80708A30 00001C 0004+00 0/1 0/0 0/0 .rodata          @3881 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3881 = 100.0f;
COMPILER_STRIP_GATE(0x80708A2C, &lit_3881);
#pragma pop

/* 80708A30-80708A34 000020 0004+00 0/0 0/0 0/0 .rodata          @3882 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3882 = 125.0f;
COMPILER_STRIP_GATE(0x80708A30, &lit_3882);
#pragma pop

/* 80708A34-80708A38 000024 0004+00 0/2 0/0 0/0 .rodata          @3883 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3883 = 30.0f;
COMPILER_STRIP_GATE(0x80708A34, &lit_3883);
#pragma pop

/* 80708A38-80708A3C 000028 0004+00 0/3 0/0 0/0 .rodata          @3943 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3943 = 5.0f;
COMPILER_STRIP_GATE(0x80708A38, &lit_3943);
#pragma pop

/* 80708A3C-80708A40 00002C 0004+00 0/2 0/0 0/0 .rodata          @3944 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3944 = 15.0f;
COMPILER_STRIP_GATE(0x80708A3C, &lit_3944);
#pragma pop

/* 80708A40-80708A48 000030 0008+00 0/4 0/0 0/0 .rodata          @3945 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3945[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80708A40, &lit_3945);
#pragma pop

/* 80708A48-80708A50 000038 0008+00 0/4 0/0 0/0 .rodata          @3946 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3946[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80708A48, &lit_3946);
#pragma pop

/* 80708A50-80708A58 000040 0008+00 0/4 0/0 0/0 .rodata          @3947 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3947[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80708A50, &lit_3947);
#pragma pop

/* 80708A58-80708A5C 000048 0004+00 0/2 0/0 0/0 .rodata          @3948 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3948 = 20.0f;
COMPILER_STRIP_GATE(0x80708A58, &lit_3948);
#pragma pop

/* 80708CB8-80708CC4 0000D0 000C+00 0/1 0/0 0/0 .bss             @3828 */
#pragma push
#pragma force_active on
static u8 lit_3828[12];
#pragma pop

/* 80708CC4-80708CD0 0000DC 000C+00 2/4 0/0 0/0 .bss             R_pos2 */
static u8 R_pos2[12];

/* 8070661C-80706898 00059C 027C+00 1/1 0/0 0/0 .text            e_mb_walk1__FP10e_mb_class */
static void e_mb_walk1(e_mb_class* param_0) {
    // NONMATCHING
}

/* 80706898-807068D4 000818 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80708A5C-80708A60 00004C 0004+00 0/2 0/0 0/0 .rodata          @4102 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4102 = 3.0f;
COMPILER_STRIP_GATE(0x80708A5C, &lit_4102);
#pragma pop

/* 80708A60-80708A64 000050 0004+00 0/1 0/0 0/0 .rodata          @4103 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4103 = 2.0f;
COMPILER_STRIP_GATE(0x80708A60, &lit_4103);
#pragma pop

/* 80708A64-80708A68 000054 0004+00 0/2 0/0 0/0 .rodata          @4104 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4104 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80708A64, &lit_4104);
#pragma pop

/* 80708A68-80708A6C 000058 0004+00 0/2 0/0 0/0 .rodata          @4105 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4105 = 400.0f;
COMPILER_STRIP_GATE(0x80708A68, &lit_4105);
#pragma pop

/* 80708A6C-80708A70 00005C 0004+00 0/1 0/0 0/0 .rodata          @4106 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4106 = 11.0f / 10.0f;
COMPILER_STRIP_GATE(0x80708A6C, &lit_4106);
#pragma pop

/* 80708A70-80708A78 000060 0008+00 0/2 0/0 0/0 .rodata          @4109 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4109[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80708A70, &lit_4109);
#pragma pop

/* 807068D4-80706F90 000854 06BC+00 1/1 0/0 0/0 .text            e_mb_move__FP10e_mb_class */
static void e_mb_move(e_mb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80708A78-80708A7C 000068 0004+00 0/1 0/0 0/0 .rodata          @4177 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4177 = 25.0f;
COMPILER_STRIP_GATE(0x80708A78, &lit_4177);
#pragma pop

/* 80708A7C-80708A80 00006C 0004+00 0/2 0/0 0/0 .rodata          @4178 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4178 = 0.5f;
COMPILER_STRIP_GATE(0x80708A7C, &lit_4178);
#pragma pop

/* 80706F90-8070723C 000F10 02AC+00 1/1 0/0 0/0 .text            e_mb_walk2__FP10e_mb_class */
static void e_mb_walk2(e_mb_class* param_0) {
    // NONMATCHING
}

/* 8070723C-80707560 0011BC 0324+00 1/1 0/0 0/0 .text            e_mb_firstdemo__FP10e_mb_class */
static void e_mb_firstdemo(e_mb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80708A80-80708A84 000070 0004+00 1/1 0/0 0/0 .rodata          @4241 */
SECTION_RODATA static f32 const lit_4241 = 20000.0f;
COMPILER_STRIP_GATE(0x80708A80, &lit_4241);

/* 80707560-80707570 0014E0 0010+00 1/1 0/0 0/0 .text            e_mb_end__FP10e_mb_class */
static void e_mb_end(e_mb_class* param_0) {
    // NONMATCHING
}

/* 80707570-80707680 0014F0 0110+00 1/1 0/0 0/0 .text            action__FP10e_mb_class */
static void action(e_mb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80708A84-80708A88 000074 0004+00 0/1 0/0 0/0 .rodata          @4601 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4601 = 32768.0f;
COMPILER_STRIP_GATE(0x80708A84, &lit_4601);
#pragma pop

/* 80708A88-80708A8C 000078 0004+00 0/1 0/0 0/0 .rodata          @4602 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4602 = -3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80708A88, &lit_4602);
#pragma pop

/* 80708A8C-80708A90 00007C 0004+00 0/1 0/0 0/0 .rodata          @4603 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4603 = 35.0f;
COMPILER_STRIP_GATE(0x80708A8C, &lit_4603);
#pragma pop

/* 80708A90-80708A94 000080 0004+00 1/2 0/0 0/0 .rodata          @4604 */
SECTION_RODATA static f32 const lit_4604 = 10.0f;
COMPILER_STRIP_GATE(0x80708A90, &lit_4604);

/* 80708A94-80708A98 000084 0004+00 0/1 0/0 0/0 .rodata          @4605 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4605 = 60.0f;
COMPILER_STRIP_GATE(0x80708A94, &lit_4605);
#pragma pop

/* 80708A98-80708A9C 000088 0004+00 0/1 0/0 0/0 .rodata          @4606 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4606 = -35.0f;
COMPILER_STRIP_GATE(0x80708A98, &lit_4606);
#pragma pop

/* 80708A9C-80708AA0 00008C 0004+00 0/1 0/0 0/0 .rodata          @4607 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4607 = 150.0f;
COMPILER_STRIP_GATE(0x80708A9C, &lit_4607);
#pragma pop

/* 80708AA0-80708AA4 000090 0004+00 0/1 0/0 0/0 .rodata          @4608 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4608 = -20000.0f;
COMPILER_STRIP_GATE(0x80708AA0, &lit_4608);
#pragma pop

/* 80708AA4-80708AA8 000094 0004+00 0/1 0/0 0/0 .rodata          @4609 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4609 = 40000.0f;
COMPILER_STRIP_GATE(0x80708AA4, &lit_4609);
#pragma pop

/* 80708AA8-80708AAC 000098 0004+00 0/1 0/0 0/0 .rodata          @4610 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4610 = 55000.0f;
COMPILER_STRIP_GATE(0x80708AA8, &lit_4610);
#pragma pop

/* 80708AAC-80708AB0 00009C 0004+00 0/1 0/0 0/0 .rodata          @4611 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4611 = 200.0f;
COMPILER_STRIP_GATE(0x80708AAC, &lit_4611);
#pragma pop

/* 80708AB0-80708AB4 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4612 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4612 = 1800.0f;
COMPILER_STRIP_GATE(0x80708AB0, &lit_4612);
#pragma pop

/* 80708AB4-80708AB8 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4613 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4613 = -500.0f;
COMPILER_STRIP_GATE(0x80708AB4, &lit_4613);
#pragma pop

/* 80708AB8-80708ABC 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4614 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4614 = 1.0f / 15.0f;
COMPILER_STRIP_GATE(0x80708AB8, &lit_4614);
#pragma pop

/* 80708CD0-80708CDC 0000E8 000C+00 0/1 0/0 0/0 .bss             @3829 */
#pragma push
#pragma force_active on
static u8 lit_3829[12];
#pragma pop

/* 80708CDC-80708CE8 0000F4 000C+00 0/2 0/0 0/0 .bss             R_Hpos */
#pragma push
#pragma force_active on
static u8 R_Hpos[12];
#pragma pop

/* 80707680-80708148 001600 0AC8+00 2/1 0/0 0/0 .text            daE_MB_Execute__FP10e_mb_class */
static void daE_MB_Execute(e_mb_class* param_0) {
    // NONMATCHING
}

/* 80708148-80708150 0020C8 0008+00 1/0 0/0 0/0 .text            daE_MB_IsDelete__FP10e_mb_class */
static bool daE_MB_IsDelete(e_mb_class* param_0) {
    return true;
}

/* 80708150-807081B8 0020D0 0068+00 1/0 0/0 0/0 .text            daE_MB_Delete__FP10e_mb_class */
static void daE_MB_Delete(e_mb_class* param_0) {
    // NONMATCHING
}

/* 807081B8-8070853C 002138 0384+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8070853C-80708584 0024BC 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80708584-8070879C 002504 0218+00 1/0 0/0 0/0 .text            daE_MB_Create__FP10fopAc_ac_c */
static void daE_MB_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8070879C-807087E4 00271C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 807087E4-8070882C 002764 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8070882C-80708874 0027AC 0048+00 2/1 0/0 0/0 .text            __dt__12daE_MB_HIO_cFv */
daE_MB_HIO_c::~daE_MB_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80708ABC-80708AC0 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4898 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4898 = -2575.0f;
COMPILER_STRIP_GATE(0x80708ABC, &lit_4898);
#pragma pop

/* 80708AC0-80708AC4 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4899 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4899 = 1050.0f;
COMPILER_STRIP_GATE(0x80708AC0, &lit_4899);
#pragma pop

/* 80708AC4-80708AC8 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4900 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4900 = 1060.0f;
COMPILER_STRIP_GATE(0x80708AC4, &lit_4900);
#pragma pop

/* 80708AC8-80708ACC 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4901 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4901 = -1944.0f;
COMPILER_STRIP_GATE(0x80708AC8, &lit_4901);
#pragma pop

/* 80708ACC-80708AD0 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4902 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4902 = -1923.0f;
COMPILER_STRIP_GATE(0x80708ACC, &lit_4902);
#pragma pop

/* 80708AD0-80708AD4 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4903 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4903 = 1432.0f;
COMPILER_STRIP_GATE(0x80708AD0, &lit_4903);
#pragma pop

/* 80708AD4-80708AD8 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4904 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4904 = 2606.0f;
COMPILER_STRIP_GATE(0x80708AD4, &lit_4904);
#pragma pop

/* 80708AD8-80708ADC 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4905 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4905 = 1070.0f;
COMPILER_STRIP_GATE(0x80708AD8, &lit_4905);
#pragma pop

/* 80708ADC-80708AE0 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4906 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4906 = 2126.0f;
COMPILER_STRIP_GATE(0x80708ADC, &lit_4906);
#pragma pop

/* 80708AE0-80708AE4 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4907 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4907 = 2099.0f;
COMPILER_STRIP_GATE(0x80708AE0, &lit_4907);
#pragma pop

/* 80708AE4-80708AE8 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4908 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4908 = 1011.0f;
COMPILER_STRIP_GATE(0x80708AE4, &lit_4908);
#pragma pop

/* 80708CE8-80708CF4 000100 000C+00 0/1 0/0 0/0 .bss             @3830 */
#pragma push
#pragma force_active on
static u8 lit_3830[12];
#pragma pop

/* 80708CF4-80708D00 00010C 000C+00 0/1 0/0 0/0 .bss             c_pos */
#pragma push
#pragma force_active on
static u8 c_pos[12];
#pragma pop

/* 80708874-807089FC 0027F4 0188+00 0/0 1/0 0/0 .text            __sinit_d_a_e_mb_cpp */
void __sinit_d_a_e_mb_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80708874, __sinit_d_a_e_mb_cpp);
#pragma pop

/* ############################################################################################## */
/* 80708D00-80708D04 000118 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80708D00[4];
#pragma pop

/* 80708D04-80708D08 00011C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80708D04[4];
#pragma pop

/* 80708D08-80708D0C 000120 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80708D08[4];
#pragma pop

/* 80708D0C-80708D10 000124 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80708D0C[4];
#pragma pop

/* 80708D10-80708D14 000128 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80708D10[4];
#pragma pop

/* 80708D14-80708D18 00012C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80708D14[4];
#pragma pop

/* 80708D18-80708D1C 000130 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80708D18[4];
#pragma pop

/* 80708D1C-80708D20 000134 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80708D1C[4];
#pragma pop

/* 80708D20-80708D24 000138 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80708D20[4];
#pragma pop

/* 80708D24-80708D28 00013C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80708D24[4];
#pragma pop

/* 80708D28-80708D2C 000140 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80708D28[4];
#pragma pop

/* 80708D2C-80708D30 000144 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80708D2C[4];
#pragma pop

/* 80708D30-80708D34 000148 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80708D30[4];
#pragma pop

/* 80708D34-80708D38 00014C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80708D34[4];
#pragma pop

/* 80708D38-80708D3C 000150 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80708D38[4];
#pragma pop

/* 80708D3C-80708D40 000154 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80708D3C[4];
#pragma pop

/* 80708D40-80708D44 000158 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80708D40[4];
#pragma pop

/* 80708D44-80708D48 00015C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80708D44[4];
#pragma pop

/* 80708D48-80708D4C 000160 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80708D48[4];
#pragma pop

/* 80708D4C-80708D50 000164 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80708D4C[4];
#pragma pop

/* 80708D50-80708D54 000168 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80708D50[4];
#pragma pop

/* 80708D54-80708D58 00016C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80708D54[4];
#pragma pop

/* 80708D58-80708D5C 000170 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80708D58[4];
#pragma pop

/* 80708D5C-80708D60 000174 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80708D5C[4];
#pragma pop

/* 80708D60-80708D64 000178 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80708D60[4];
#pragma pop

/* 80708AE8-80708AE8 0000D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
