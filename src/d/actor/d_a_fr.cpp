/**
 * @file d_a_fr.cpp
 * 
*/

#include "d/actor/d_a_fr.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__10daFr_HIO_cFv();
extern "C" static void anm_init__FP8fr_classifUcf();
extern "C" static void daFr_Draw__FP8fr_class();
extern "C" static void sibuki_set__FP8fr_class();
extern "C" static void s_wd_sub__FPvPv();
extern "C" static void wd_check__FP8fr_class();
extern "C" static void way_bg_check__FP8fr_class();
extern "C" static void fr_normal__FP8fr_class();
extern "C" static void fr_away__FP8fr_class();
extern "C" static void fr_s_normal__FP8fr_class();
extern "C" static void fr_s_wait__FP8fr_class();
extern "C" static void fr_s_away__FP8fr_class();
extern "C" static void fr_eat__FP8fr_class();
extern "C" static void swim_on__FP8fr_class();
extern "C" static void swim_off__FP8fr_class();
extern "C" static void fr_message__FP8fr_class();
extern "C" static void action__FP8fr_class();
extern "C" static void message__FP8fr_class();
extern "C" static void daFr_Execute__FP8fr_class();
extern "C" static bool daFr_IsDelete__FP8fr_class();
extern "C" static void daFr_Delete__FP8fr_class();
extern "C" static void useHeapIfrt__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daFr_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__10daFr_HIO_cFv();
extern "C" void __sinit_d_a_fr_cpp();
extern "C" static void func_8051B9A4();
extern "C" static void func_8051B9AC();
extern "C" extern char const* const d_a_fr__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void entryDL__14mDoExt_McaMorfFv();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
extern "C" void cDmrNowMidnaTalk__Fv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" bool fopAcM_riverStream__FP4cXyzPsPff();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
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
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 8051B9C8-8051B9CC 000000 0004+00 15/15 0/0 0/0 .rodata          @3649 */
SECTION_RODATA static f32 const lit_3649 = 10.0f;
COMPILER_STRIP_GATE(0x8051B9C8, &lit_3649);

/* 8051B9CC-8051B9D0 000004 0004+00 1/6 0/0 0/0 .rodata          @3650 */
SECTION_RODATA static f32 const lit_3650 = 20.0f;
COMPILER_STRIP_GATE(0x8051B9CC, &lit_3650);

/* 8051B9D0-8051B9D4 000008 0004+00 0/1 0/0 0/0 .rodata          @3651 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3651 = -5.0f;
COMPILER_STRIP_GATE(0x8051B9D0, &lit_3651);
#pragma pop

/* 8051B9D4-8051B9D8 00000C 0004+00 0/2 0/0 0/0 .rodata          @3652 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3652 = 300.0f;
COMPILER_STRIP_GATE(0x8051B9D4, &lit_3652);
#pragma pop

/* 8051B9D8-8051B9DC 000010 0004+00 0/1 0/0 0/0 .rodata          @3653 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3653 = 15.0f;
COMPILER_STRIP_GATE(0x8051B9D8, &lit_3653);
#pragma pop

/* 8051B9DC-8051B9E0 000014 0004+00 0/5 0/0 0/0 .rodata          @3654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3654 = 5.0f;
COMPILER_STRIP_GATE(0x8051B9DC, &lit_3654);
#pragma pop

/* 8051B9E0-8051B9E4 000018 0004+00 0/1 0/0 0/0 .rodata          @3655 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3655 = 6.0f;
COMPILER_STRIP_GATE(0x8051B9E0, &lit_3655);
#pragma pop

/* 8051BA94-8051BB60 -00001 00CC+00 1/1 0/0 0/0 .data            @4226 */
SECTION_DATA static void* lit_4226[51] = {
    (void*)(((char*)action__FP8fr_class) + 0x68), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0x78),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0x88), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0xC8),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0x98), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xA4), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xB0), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xCC), (void*)(((char*)action__FP8fr_class) + 0xCC),
    (void*)(((char*)action__FP8fr_class) + 0xBC),
};

/* 8051BB60-8051BB80 -00001 0020+00 1/0 0/0 0/0 .data            l_daFr_Method */
static actor_method_class l_daFr_Method = {
    (process_method_func)daFr_Create__FP10fopAc_ac_c,
    (process_method_func)daFr_Delete__FP8fr_class,
    (process_method_func)daFr_Execute__FP8fr_class,
    (process_method_func)daFr_IsDelete__FP8fr_class,
    (process_method_func)daFr_Draw__FP8fr_class,
};

/* 8051BB80-8051BBB0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_FR */
extern actor_process_profile_definition g_profile_FR = {
  fpcLy_CURRENT_e,       // mLayerID
  8,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_FR,               // mProcName
  &g_fpcLf_Method.mBase, // sub_method
  sizeof(fr_class),      // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  235,                   // mPriority
  &l_daFr_Method,        // sub_method
  0x08040100,            // mStatus
  fopAc_NPC_e,           // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/* 8051BBB0-8051BBBC 00011C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8051BBBC-8051BBC8 000128 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8051BBC8-8051BBEC 000134 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8051B9AC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8051B9A4,
};

/* 8051BBEC-8051BBF8 000158 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8051BBF8-8051BC04 000164 000C+00 2/2 0/0 0/0 .data            __vt__10daFr_HIO_c */
SECTION_DATA extern void* __vt__10daFr_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10daFr_HIO_cFv,
};

/* 805198EC-8051994C 0000EC 0060+00 1/1 0/0 0/0 .text            __ct__10daFr_HIO_cFv */
daFr_HIO_c::daFr_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8051B9E4-8051B9E8 00001C 0004+00 2/9 0/0 0/0 .rodata          @3669 */
SECTION_RODATA static u8 const lit_3669[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8051B9E4, &lit_3669);

/* 8051B9E8-8051B9EC 000020 0004+00 1/2 0/0 0/0 .rodata          @3670 */
SECTION_RODATA static f32 const lit_3670 = -1.0f;
COMPILER_STRIP_GATE(0x8051B9E8, &lit_3670);

/* 8051BA88-8051BA88 0000C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8051BA88 = "Fr";
#pragma pop

/* 8051994C-805199F4 00014C 00A8+00 7/7 0/0 0/0 .text            anm_init__FP8fr_classifUcf */
static void anm_init(fr_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8051B9EC-8051B9F0 000024 0004+00 2/10 0/0 0/0 .rodata          @3691 */
SECTION_RODATA static f32 const lit_3691 = 1.0f;
COMPILER_STRIP_GATE(0x8051B9EC, &lit_3691);

/* 805199F4-80519AB8 0001F4 00C4+00 1/0 0/0 0/0 .text            daFr_Draw__FP8fr_class */
static void daFr_Draw(fr_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8051B9F0-8051B9F8 000028 0004+04 1/5 0/0 0/0 .rodata          @3700 */
SECTION_RODATA static f32 const lit_3700[1 + 1 /* padding */] = {
    3.0f / 10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8051B9F0, &lit_3700);

/* 80519AB8-80519B14 0002B8 005C+00 1/1 0/0 0/0 .text            sibuki_set__FP8fr_class */
static void sibuki_set(fr_class* param_0) {
    // NONMATCHING
}

/* 80519B14-80519B60 000314 004C+00 1/1 0/0 0/0 .text            s_wd_sub__FPvPv */
static void s_wd_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8051B9F8-8051BA00 000030 0008+00 0/1 0/0 0/0 .rodata          @3762 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3762[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8051B9F8, &lit_3762);
#pragma pop

/* 8051BA00-8051BA08 000038 0008+00 0/1 0/0 0/0 .rodata          @3763 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3763[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8051BA00, &lit_3763);
#pragma pop

/* 8051BA08-8051BA10 000040 0008+00 0/1 0/0 0/0 .rodata          @3764 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3764[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8051BA08, &lit_3764);
#pragma pop

/* 8051BA10-8051BA14 000048 0004+00 0/1 0/0 0/0 .rodata          @3765 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3765 = 22.0f;
COMPILER_STRIP_GATE(0x8051BA10, &lit_3765);
#pragma pop

/* 80519B60-80519D28 000360 01C8+00 1/1 0/0 0/0 .text            wd_check__FP8fr_class */
static void wd_check(fr_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8051BA14-8051BA18 00004C 0004+00 0/3 0/0 0/0 .rodata          @3796 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3796 = 50.0f;
COMPILER_STRIP_GATE(0x8051BA14, &lit_3796);
#pragma pop

/* 80519D28-80519E24 000528 00FC+00 4/4 0/0 0/0 .text            way_bg_check__FP8fr_class */
static void way_bg_check(fr_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8051BA18-8051BA1C 000050 0004+00 0/2 0/0 0/0 .rodata          @3849 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3849 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x8051BA18, &lit_3849);
#pragma pop

/* 8051BA1C-8051BA20 000054 0004+00 0/3 0/0 0/0 .rodata          @3850 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3850 = 2.0f;
COMPILER_STRIP_GATE(0x8051BA1C, &lit_3850);
#pragma pop

/* 8051BA20-8051BA24 000058 0004+00 0/3 0/0 0/0 .rodata          @3851 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3851 = 0.5f;
COMPILER_STRIP_GATE(0x8051BA20, &lit_3851);
#pragma pop

/* 8051BC10-8051BC14 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_8051BC10[4];

/* 8051BC14-8051BC20 00000C 000C+00 1/1 0/0 0/0 .bss             @3644 */
static u8 lit_3644[12];

/* 8051BC20-8051BC4C 000018 002C+00 9/9 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[44];

/* 80519E24-8051A0D8 000624 02B4+00 1/2 0/0 0/0 .text            fr_normal__FP8fr_class */
static void fr_normal(fr_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8051BA24-8051BA28 00005C 0004+00 0/2 0/0 0/0 .rodata          @3901 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3901 = 3.0f;
COMPILER_STRIP_GATE(0x8051BA24, &lit_3901);
#pragma pop

/* 8051BA28-8051BA2C 000060 0004+00 0/1 0/0 0/0 .rodata          @3902 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3902 = 4.0f;
COMPILER_STRIP_GATE(0x8051BA28, &lit_3902);
#pragma pop

/* 8051BA2C-8051BA30 000064 0004+00 0/2 0/0 0/0 .rodata          @3903 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3903 = 8000.0f;
COMPILER_STRIP_GATE(0x8051BA2C, &lit_3903);
#pragma pop

/* 8051BA30-8051BA34 000068 0004+00 0/2 0/0 0/0 .rodata          @3904 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3904 = 200.0f;
COMPILER_STRIP_GATE(0x8051BA30, &lit_3904);
#pragma pop

/* 8051A0D8-8051A318 0008D8 0240+00 1/2 0/0 0/0 .text            fr_away__FP8fr_class */
static void fr_away(fr_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8051BA34-8051BA38 00006C 0004+00 0/1 0/0 0/0 .rodata          @3957 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3957 = 1.5f;
COMPILER_STRIP_GATE(0x8051BA34, &lit_3957);
#pragma pop

/* 8051BA38-8051BA3C 000070 0004+00 0/2 0/0 0/0 .rodata          @3958 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3958 = 100.0f;
COMPILER_STRIP_GATE(0x8051BA38, &lit_3958);
#pragma pop

/* 8051BA3C-8051BA40 000074 0004+00 0/2 0/0 0/0 .rodata          @3959 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3959 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x8051BA3C, &lit_3959);
#pragma pop

/* 8051BA40-8051BA44 000078 0004+00 0/2 0/0 0/0 .rodata          @3960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3960 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x8051BA40, &lit_3960);
#pragma pop

/* 8051A318-8051A558 000B18 0240+00 1/1 0/0 0/0 .text            fr_s_normal__FP8fr_class */
static void fr_s_normal(fr_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8051BA44-8051BA48 00007C 0004+00 0/1 0/0 0/0 .rodata          @3981 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3981 = 30.0f;
COMPILER_STRIP_GATE(0x8051BA44, &lit_3981);
#pragma pop

/* 8051BA48-8051BA4C 000080 0004+00 0/1 0/0 0/0 .rodata          @3982 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3982 = 13.0f;
COMPILER_STRIP_GATE(0x8051BA48, &lit_3982);
#pragma pop

/* 8051BA4C-8051BA50 000084 0004+00 0/1 0/0 0/0 .rodata          @3983 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3983 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x8051BA4C, &lit_3983);
#pragma pop

/* 8051A558-8051A620 000D58 00C8+00 1/1 0/0 0/0 .text            fr_s_wait__FP8fr_class */
static void fr_s_wait(fr_class* param_0) {
    // NONMATCHING
}

/* 8051A620-8051A820 000E20 0200+00 1/1 0/0 0/0 .text            fr_s_away__FP8fr_class */
static void fr_s_away(fr_class* param_0) {
    // NONMATCHING
}

/* 8051A820-8051A904 001020 00E4+00 1/1 0/0 0/0 .text            fr_eat__FP8fr_class */
static void fr_eat(fr_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8051BA50-8051BA54 000088 0004+00 0/1 0/0 0/0 .rodata          @4108 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4108 = 0x3FAA3D71;
COMPILER_STRIP_GATE(0x8051BA50, &lit_4108);
#pragma pop

/* 8051BA54-8051BA58 00008C 0004+00 0/1 0/0 0/0 .rodata          @4109 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4109 = -5000.0f;
COMPILER_STRIP_GATE(0x8051BA54, &lit_4109);
#pragma pop

/* 8051BA58-8051BA5C 000090 0004+00 0/1 0/0 0/0 .rodata          @4110 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4110 = 700.0f;
COMPILER_STRIP_GATE(0x8051BA58, &lit_4110);
#pragma pop

/* 8051BA5C-8051BA60 000094 0004+00 0/2 0/0 0/0 .rodata          @4111 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4111 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x8051BA5C, &lit_4111);
#pragma pop

/* 8051BA60-8051BA64 000098 0004+00 0/2 0/0 0/0 .rodata          @4112 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4112 = 500.0f;
COMPILER_STRIP_GATE(0x8051BA60, &lit_4112);
#pragma pop

/* 8051A904-8051AA9C 001104 0198+00 2/2 0/0 0/0 .text            swim_on__FP8fr_class */
static void swim_on(fr_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8051BA64-8051BA68 00009C 0004+00 0/1 0/0 0/0 .rodata          @4144 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4144 = -500.0f;
COMPILER_STRIP_GATE(0x8051BA64, &lit_4144);
#pragma pop

/* 8051BA68-8051BA6C 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4145 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4145 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x8051BA68, &lit_4145);
#pragma pop

/* 8051AA9C-8051AC2C 00129C 0190+00 1/1 0/0 0/0 .text            swim_off__FP8fr_class */
static void swim_off(fr_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8051BA6C-8051BA70 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4158 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4158 = 400.0f;
COMPILER_STRIP_GATE(0x8051BA6C, &lit_4158);
#pragma pop

/* 8051AC2C-8051AD04 00142C 00D8+00 1/1 0/0 0/0 .text            fr_message__FP8fr_class */
static void fr_message(fr_class* param_0) {
    // NONMATCHING
}

/* 8051AD04-8051B04C 001504 0348+00 2/1 0/0 0/0 .text            action__FP8fr_class */
static void action(fr_class* param_0) {
    // NONMATCHING
}

/* 8051B04C-8051B170 00184C 0124+00 1/1 0/0 0/0 .text            message__FP8fr_class */
static void message(fr_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8051BA70-8051BA74 0000A8 0004+00 0/0 0/0 0/0 .rodata          @4224 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4224 = -80.0f;
COMPILER_STRIP_GATE(0x8051BA70, &lit_4224);
#pragma pop

/* 8051BA74-8051BA78 0000AC 0004+00 0/0 0/0 0/0 .rodata          @4225 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4225 = 7.0f / 20.0f;
COMPILER_STRIP_GATE(0x8051BA74, &lit_4225);
#pragma pop

/* 8051BA78-8051BA80 0000B0 0008+00 0/1 0/0 0/0 .rodata          @4322 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4322[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8051BA78, &lit_4322);
#pragma pop

/* 8051B170-8051B354 001970 01E4+00 2/1 0/0 0/0 .text            daFr_Execute__FP8fr_class */
static void daFr_Execute(fr_class* param_0) {
    // NONMATCHING
}

/* 8051B354-8051B35C 001B54 0008+00 1/0 0/0 0/0 .text            daFr_IsDelete__FP8fr_class */
static bool daFr_IsDelete(fr_class* param_0) {
    return true;
}

/* 8051B35C-8051B3B0 001B5C 0054+00 1/0 0/0 0/0 .text            daFr_Delete__FP8fr_class */
static void daFr_Delete(fr_class* param_0) {
    // NONMATCHING
}

/* 8051B3B0-8051B550 001BB0 01A0+00 1/1 0/0 0/0 .text            useHeapIfrt__FP10fopAc_ac_c */
static void useHeapIfrt(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8051B550-8051B598 001D50 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8051BA80-8051BA84 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4466 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4466 = 0.75f;
COMPILER_STRIP_GATE(0x8051BA80, &lit_4466);
#pragma pop

/* 8051BA84-8051BA88 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4467 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4467 = 65536.0f;
COMPILER_STRIP_GATE(0x8051BA84, &lit_4467);
#pragma pop

/* 8051BA88-8051BA88 0000C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8051BA8B = "F_SP127";
#pragma pop

/* 8051B598-8051B820 001D98 0288+00 1/0 0/0 0/0 .text            daFr_Create__FP10fopAc_ac_c */
static void daFr_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8051B820-8051B868 002020 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8051B868-8051B8B0 002068 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8051B8B0-8051B920 0020B0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8051B920-8051B968 002120 0048+00 2/1 0/0 0/0 .text            __dt__10daFr_HIO_cFv */
daFr_HIO_c::~daFr_HIO_c() {
    // NONMATCHING
}

/* 8051B968-8051B9A4 002168 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_fr_cpp */
void __sinit_d_a_fr_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8051B968, __sinit_d_a_fr_cpp);
#pragma pop

/* 8051B9A4-8051B9AC 0021A4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8051B9A4() {
    // NONMATCHING
}

/* 8051B9AC-8051B9B4 0021AC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8051B9AC() {
    // NONMATCHING
}

/* 8051BA88-8051BA88 0000C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */