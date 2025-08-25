/**
 * @file d_a_npc_du.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_du.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__14daNpc_Du_HIO_cFv();
extern "C" static void anm_init__FP12npc_du_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daNpc_Du_Draw__FP12npc_du_class();
extern "C" static void npc_du_normal__FP12npc_du_class();
extern "C" static void npc_du_away__FP12npc_du_class();
extern "C" static void npc_du_swim__FP12npc_du_class();
extern "C" static void npc_du_message__FP12npc_du_class();
extern "C" static void action__FP12npc_du_class();
extern "C" static void message__FP12npc_du_class();
extern "C" static void daNpc_Du_Execute__FP12npc_du_class();
extern "C" static bool daNpc_Du_IsDelete__FP12npc_du_class();
extern "C" static void daNpc_Du_Delete__FP12npc_du_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daNpc_Du_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__14daNpc_Du_HIO_cFv();
extern "C" void __sinit_d_a_npc_du_cpp();
extern "C" static void func_809B1824();
extern "C" static void func_809B182C();
extern "C" extern char const* const d_a_npc_du__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void entryDL__14mDoExt_McaMorfFv();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
extern "C" void cDmrNowMidnaTalk__Fv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_wayBgCheck__FPC10fopAc_ac_cff();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
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
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
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
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 809B1848-809B184C 000000 0004+00 10/10 0/0 0/0 .rodata          @3762 */
SECTION_RODATA static f32 const lit_3762 = 1.0f;
COMPILER_STRIP_GATE(0x809B1848, &lit_3762);

/* 809B18EC-809B18F4 000000 0008+00 1/1 0/0 0/0 .data            walk_se$4161 */
SECTION_DATA static u8 walk_se[8] = {
    0x00, 0x06, 0x00, 0x58, 0x00, 0x06, 0x00, 0x59,
};

/* 809B18F4-809B18FC 000008 0008+00 1/1 0/0 0/0 .data            run_se$4162 */
SECTION_DATA static u8 run_se[8] = {
    0x00, 0x06, 0x00, 0x5A, 0x00, 0x06, 0x00, 0x5B,
};

/* 809B18FC-809B193C 000010 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4342 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 20.0f} // mSph
    } // mSphAttr
};

/* 809B193C-809B195C -00001 0020+00 1/0 0/0 0/0 .data            l_daNpc_Du_Method */
static actor_method_class l_daNpc_Du_Method = {
    (process_method_func)daNpc_Du_Create__FP10fopAc_ac_c,
    (process_method_func)daNpc_Du_Delete__FP12npc_du_class,
    (process_method_func)daNpc_Du_Execute__FP12npc_du_class,
    (process_method_func)daNpc_Du_IsDelete__FP12npc_du_class,
    (process_method_func)daNpc_Du_Draw__FP12npc_du_class,
};

/* 809B195C-809B198C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_DU */
extern actor_process_profile_definition g_profile_NPC_DU = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_NPC_DU,           // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(npc_du_class),  // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  722,                   // mPriority
  &l_daNpc_Du_Method,    // sub_method
  0x08044100,            // mStatus
  fopAc_NPC_e,           // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/* 809B198C-809B1998 0000A0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 809B1998-809B19A4 0000AC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 809B19A4-809B19C8 0000B8 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809B182C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809B1824,
};

/* 809B19C8-809B19D4 0000DC 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 809B19D4-809B19E0 0000E8 000C+00 2/2 0/0 0/0 .data            __vt__14daNpc_Du_HIO_c */
SECTION_DATA extern void* __vt__14daNpc_Du_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daNpc_Du_HIO_cFv,
};

/* 809AFD4C-809AFD70 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__14daNpc_Du_HIO_cFv */
daNpc_Du_HIO_c::daNpc_Du_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B184C-809B1850 000004 0004+00 1/6 0/0 0/0 .rodata          @3776 */
SECTION_RODATA static u8 const lit_3776[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809B184C, &lit_3776);

/* 809B1850-809B1854 000008 0004+00 1/3 0/0 0/0 .rodata          @3777 */
SECTION_RODATA static f32 const lit_3777 = -1.0f;
COMPILER_STRIP_GATE(0x809B1850, &lit_3777);

/* 809B18DC-809B18DC 000094 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809B18DC = "Npc_du";
#pragma pop

/* 809AFD70-809AFE20 000110 00B0+00 4/4 0/0 0/0 .text            anm_init__FP12npc_du_classifUcf */
static void anm_init(npc_du_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* 809AFE20-809B0014 0001C0 01F4+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B1854-809B1858 00000C 0004+00 0/5 0/0 0/0 .rodata          @3864 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3864 = 100.0f;
COMPILER_STRIP_GATE(0x809B1854, &lit_3864);
#pragma pop

/* 809B1858-809B185C 000010 0004+00 0/1 0/0 0/0 .rodata          @3865 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3865 = 400.0f;
COMPILER_STRIP_GATE(0x809B1858, &lit_3865);
#pragma pop

/* 809B185C-809B1860 000014 0004+00 0/1 0/0 0/0 .rodata          @3866 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3866 = 40.0f;
COMPILER_STRIP_GATE(0x809B185C, &lit_3866);
#pragma pop

/* 809B0014-809B0114 0003B4 0100+00 1/0 0/0 0/0 .text            daNpc_Du_Draw__FP12npc_du_class */
static void daNpc_Du_Draw(npc_du_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B1860-809B1864 000018 0004+00 0/1 0/0 0/0 .rodata          @3905 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3905 = 50.0f;
COMPILER_STRIP_GATE(0x809B1860, &lit_3905);
#pragma pop

/* 809B1864-809B1868 00001C 0004+00 0/1 0/0 0/0 .rodata          @3906 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3906 = 70.0f;
COMPILER_STRIP_GATE(0x809B1864, &lit_3906);
#pragma pop

/* 809B1868-809B186C 000020 0004+00 0/4 0/0 0/0 .rodata          @3907 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3907 = 10.0f;
COMPILER_STRIP_GATE(0x809B1868, &lit_3907);
#pragma pop

/* 809B186C-809B1870 000024 0004+00 0/4 0/0 0/0 .rodata          @3908 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3908 = 30.0f;
COMPILER_STRIP_GATE(0x809B186C, &lit_3908);
#pragma pop

/* 809B1870-809B1874 000028 0004+00 0/2 0/0 0/0 .rodata          @3909 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3909 = 8000.0f;
COMPILER_STRIP_GATE(0x809B1870, &lit_3909);
#pragma pop

/* 809B1874-809B1878 00002C 0004+00 0/2 0/0 0/0 .rodata          @3910 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3910 = 500.0f;
COMPILER_STRIP_GATE(0x809B1874, &lit_3910);
#pragma pop

/* 809B1878-809B187C 000030 0004+00 0/2 0/0 0/0 .rodata          @3911 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3911 = 60.0f;
COMPILER_STRIP_GATE(0x809B1878, &lit_3911);
#pragma pop

/* 809B187C-809B1880 000034 0004+00 0/4 0/0 0/0 .rodata          @3912 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3912 = 2.0f;
COMPILER_STRIP_GATE(0x809B187C, &lit_3912);
#pragma pop

/* 809B1880-809B1884 000038 0004+00 0/2 0/0 0/0 .rodata          @3913 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3913 = 5.0f;
COMPILER_STRIP_GATE(0x809B1880, &lit_3913);
#pragma pop

/* 809B1884-809B1888 00003C 0004+00 0/1 0/0 0/0 .rodata          @3914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3914 = 200.0f;
COMPILER_STRIP_GATE(0x809B1884, &lit_3914);
#pragma pop

/* 809B0114-809B0360 0004B4 024C+00 1/1 0/0 0/0 .text            npc_du_normal__FP12npc_du_class */
static void npc_du_normal(npc_du_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B1888-809B188C 000040 0004+00 0/1 0/0 0/0 .rodata          @3944 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3944 = 2.5f;
COMPILER_STRIP_GATE(0x809B1888, &lit_3944);
#pragma pop

/* 809B188C-809B1890 000044 0004+00 0/1 0/0 0/0 .rodata          @3945 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3945 = 8.0f;
COMPILER_STRIP_GATE(0x809B188C, &lit_3945);
#pragma pop

/* 809B1890-809B1894 000048 0004+00 0/1 0/0 0/0 .rodata          @3946 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3946 = 300.0f;
COMPILER_STRIP_GATE(0x809B1890, &lit_3946);
#pragma pop

/* 809B1894-809B1898 00004C 0004+00 0/1 0/0 0/0 .rodata          @3947 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3947 = 10000.0f;
COMPILER_STRIP_GATE(0x809B1894, &lit_3947);
#pragma pop

/* 809B0360-809B04E0 000700 0180+00 1/1 0/0 0/0 .text            npc_du_away__FP12npc_du_class */
static void npc_du_away(npc_du_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B1898-809B189C 000050 0004+00 0/2 0/0 0/0 .rodata          @3992 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3992 = 20.0f;
COMPILER_STRIP_GATE(0x809B1898, &lit_3992);
#pragma pop

/* 809B189C-809B18A0 000054 0004+00 0/1 0/0 0/0 .rodata          @3993 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3993 = 3.0f;
COMPILER_STRIP_GATE(0x809B189C, &lit_3993);
#pragma pop

/* 809B18A0-809B18A4 000058 0004+00 0/1 0/0 0/0 .rodata          @3994 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3994 = 1.5f;
COMPILER_STRIP_GATE(0x809B18A0, &lit_3994);
#pragma pop

/* 809B04E0-809B0774 000880 0294+00 1/1 0/0 0/0 .text            npc_du_swim__FP12npc_du_class */
static void npc_du_swim(npc_du_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B18A4-809B18A8 00005C 0004+00 0/2 0/0 0/0 .rodata          @4024 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4024 = 0.5f;
COMPILER_STRIP_GATE(0x809B18A4, &lit_4024);
#pragma pop

/* 809B18A8-809B18AC 000060 0004+00 0/1 0/0 0/0 .rodata          @4025 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4025 = 220.0f;
COMPILER_STRIP_GATE(0x809B18A8, &lit_4025);
#pragma pop

/* 809B0774-809B08E0 000B14 016C+00 1/1 0/0 0/0 .text            npc_du_message__FP12npc_du_class */
static void npc_du_message(npc_du_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B18AC-809B18B0 000064 0004+00 0/1 0/0 0/0 .rodata          @4092 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4092 = 150.0f;
COMPILER_STRIP_GATE(0x809B18AC, &lit_4092);
#pragma pop

/* 809B18B0-809B18B4 000068 0004+00 0/1 0/0 0/0 .rodata          @4093 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4093 = -80.0f;
COMPILER_STRIP_GATE(0x809B18B0, &lit_4093);
#pragma pop

/* 809B18B4-809B18B8 00006C 0004+00 0/1 0/0 0/0 .rodata          @4094 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4094 = 15.0f;
COMPILER_STRIP_GATE(0x809B18B4, &lit_4094);
#pragma pop

/* 809B18B8-809B18BC 000070 0004+00 0/1 0/0 0/0 .rodata          @4095 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4095 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x809B18B8, &lit_4095);
#pragma pop

/* 809B18BC-809B18C0 000074 0004+00 0/1 0/0 0/0 .rodata          @4096 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4096 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x809B18BC, &lit_4096);
#pragma pop

/* 809B18C0-809B18C4 000078 0004+00 0/1 0/0 0/0 .rodata          @4097 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4097 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x809B18C0, &lit_4097);
#pragma pop

/* 809B18C4-809B18C8 00007C 0004+00 0/1 0/0 0/0 .rodata          @4098 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4098 = 5000.0f;
COMPILER_STRIP_GATE(0x809B18C4, &lit_4098);
#pragma pop

/* 809B08E0-809B0CBC 000C80 03DC+00 1/1 0/0 0/0 .text            action__FP12npc_du_class */
static void action(npc_du_class* param_0) {
    // NONMATCHING
}

/* 809B0CBC-809B0DE0 00105C 0124+00 1/1 0/0 0/0 .text            message__FP12npc_du_class */
static void message(npc_du_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B18C8-809B18D0 000080 0008+00 0/1 0/0 0/0 .rodata          @4237 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4237[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809B18C8, &lit_4237);
#pragma pop

/* 809B19E8-809B19EC 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_809B19E8[4];

/* 809B19EC-809B19F8 00000C 000C+00 1/1 0/0 0/0 .bss             @3757 */
static u8 lit_3757[12];

/* 809B19F8-809B1A04 000018 000C+00 3/3 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[12];

/* 809B0DE0-809B116C 001180 038C+00 2/1 0/0 0/0 .text            daNpc_Du_Execute__FP12npc_du_class
 */
static void daNpc_Du_Execute(npc_du_class* param_0) {
    // NONMATCHING
}

/* 809B116C-809B1174 00150C 0008+00 1/0 0/0 0/0 .text            daNpc_Du_IsDelete__FP12npc_du_class
 */
static bool daNpc_Du_IsDelete(npc_du_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 809B18DC-809B18DC 000094 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809B18E3 = "Npc_Du";
#pragma pop

/* 809B1174-809B11E0 001514 006C+00 1/0 0/0 0/0 .text            daNpc_Du_Delete__FP12npc_du_class
 */
static void daNpc_Du_Delete(npc_du_class* param_0) {
    // NONMATCHING
}

/* 809B11E0-809B13C8 001580 01E8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809B13C8-809B1410 001768 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809B18D0-809B18D4 000088 0004+00 0/1 0/0 0/0 .rodata          @4408 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4408 = 25.0f;
COMPILER_STRIP_GATE(0x809B18D0, &lit_4408);
#pragma pop

/* 809B18D4-809B18D8 00008C 0004+00 0/1 0/0 0/0 .rodata          @4409 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4409 = 65536.0f;
COMPILER_STRIP_GATE(0x809B18D4, &lit_4409);
#pragma pop

/* 809B18D8-809B18DC 000090 0004+00 0/1 0/0 0/0 .rodata          @4410 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4410 = -5.0f;
COMPILER_STRIP_GATE(0x809B18D8, &lit_4410);
#pragma pop

/* 809B1410-809B16A0 0017B0 0290+00 1/0 0/0 0/0 .text            daNpc_Du_Create__FP10fopAc_ac_c */
static void daNpc_Du_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809B16A0-809B16E8 001A40 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 809B16E8-809B1730 001A88 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 809B1730-809B17A0 001AD0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809B17A0-809B17E8 001B40 0048+00 2/1 0/0 0/0 .text            __dt__14daNpc_Du_HIO_cFv */
daNpc_Du_HIO_c::~daNpc_Du_HIO_c() {
    // NONMATCHING
}

/* 809B17E8-809B1824 001B88 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_du_cpp */
void __sinit_d_a_npc_du_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x809B17E8, __sinit_d_a_npc_du_cpp);
#pragma pop

/* 809B1824-809B182C 001BC4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809B1824() {
    // NONMATCHING
}

/* 809B182C-809B1834 001BCC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809B182C() {
    // NONMATCHING
}

/* 809B18DC-809B18DC 000094 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
