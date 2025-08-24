/**
 * @file d_a_obj_taFence.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_taFence.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__15daTaFence_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__11daTaFence_cFv();
extern "C" void CreateHeap__11daTaFence_cFv();
extern "C" void create__11daTaFence_cFv();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void Execute__11daTaFence_cFPPA3_A4_f();
extern "C" void fenceProc__11daTaFence_cFv();
extern "C" void init_modeWait__11daTaFence_cFv();
extern "C" void modeWait__11daTaFence_cFv();
extern "C" void init_modeMoveInit__11daTaFence_cFv();
extern "C" void modeMoveInit__11daTaFence_cFv();
extern "C" void init_modeMove__11daTaFence_cFv();
extern "C" void modeMove__11daTaFence_cFv();
extern "C" void init_modeMoveEnd__11daTaFence_cFv();
extern "C" void modeMoveEnd__11daTaFence_cFv();
extern "C" void Draw__11daTaFence_cFv();
extern "C" void Delete__11daTaFence_cFv();
extern "C" static void daTaFence_Draw__FP11daTaFence_c();
extern "C" static void daTaFence_Execute__FP11daTaFence_c();
extern "C" static void daTaFence_Delete__FP11daTaFence_c();
extern "C" static void daTaFence_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__15daTaFence_HIO_cFv();
extern "C" void __sinit_d_a_obj_taFence_cpp();
extern "C" u8 const mCcDObjInfo__11daTaFence_c[48];
extern "C" extern char const* const d_a_obj_taFence__stringBase0;
extern "C" u8 mCcDCyl__11daTaFence_c[68];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dLib_checkActorInRectangle__FP10fopAc_ac_cP10fopAc_ac_cPC4cXyzPC4cXyz();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool Create__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80D060E0-80D060E4 000000 0004+00 6/6 0/0 0/0 .rodata          @3651 */
SECTION_RODATA static u8 const lit_3651[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D060E0, &lit_3651);

/* 80D060E4-80D060E8 000004 0004+00 0/1 0/0 0/0 .rodata          @3652 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3652 = 13.0f;
COMPILER_STRIP_GATE(0x80D060E4, &lit_3652);
#pragma pop

/* 80D060E8-80D060EC 000008 0004+00 0/1 0/0 0/0 .rodata          @3653 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3653 = 200.0f;
COMPILER_STRIP_GATE(0x80D060E8, &lit_3653);
#pragma pop

/* 80D060EC-80D060F0 00000C 0004+00 0/1 0/0 0/0 .rodata          @3654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3654 = 90.0f;
COMPILER_STRIP_GATE(0x80D060EC, &lit_3654);
#pragma pop

/* 80D060F0-80D060F4 000010 0004+00 0/1 0/0 0/0 .rodata          @3655 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3655 = 45.0f;
COMPILER_STRIP_GATE(0x80D060F0, &lit_3655);
#pragma pop

/* 80D060F4-80D060F8 000014 0004+00 0/1 0/0 0/0 .rodata          @3656 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3656 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D060F4, &lit_3656);
#pragma pop

/* 80D060F8-80D060FC 000018 0004+00 0/1 0/0 0/0 .rodata          @3657 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3657 = 10.0f;
COMPILER_STRIP_GATE(0x80D060F8, &lit_3657);
#pragma pop

/* 80D060FC-80D06100 00001C 0004+00 1/3 0/0 0/0 .rodata          @3658 */
SECTION_RODATA static f32 const lit_3658 = 1.0f;
COMPILER_STRIP_GATE(0x80D060FC, &lit_3658);

/* 80D06100-80D06104 000020 0004+00 0/1 0/0 0/0 .rodata          @3659 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3659 = 100.0f;
COMPILER_STRIP_GATE(0x80D06100, &lit_3659);
#pragma pop

/* 80D06104-80D06108 000024 0004+00 0/1 0/0 0/0 .rodata          @3660 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3660 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D06104, &lit_3660);
#pragma pop

/* 80D06108-80D0610C 000028 0004+00 0/1 0/0 0/0 .rodata          @3661 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3661 = 1.5f;
COMPILER_STRIP_GATE(0x80D06108, &lit_3661);
#pragma pop

/* 80D0610C-80D06110 00002C 0004+00 0/1 0/0 0/0 .rodata          @3662 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3662 = 12.0f;
COMPILER_STRIP_GATE(0x80D0610C, &lit_3662);
#pragma pop

/* 80D06110-80D06114 000030 0004+00 0/2 0/0 0/0 .rodata          @3663 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3663 = 0.5f;
COMPILER_STRIP_GATE(0x80D06110, &lit_3663);
#pragma pop

/* 80D061C4-80D06208 000020 0044+00 2/2 0/0 0/0 .data            mCcDCyl__11daTaFence_c */
SECTION_DATA u8 daTaFence_c::mCcDCyl[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D06208-80D06214 -00001 000C+00 0/1 0/0 0/0 .data            @3870 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3870[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__11daTaFence_cFv,
};
#pragma pop

/* 80D06214-80D06220 -00001 000C+00 0/1 0/0 0/0 .data            @3871 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3871[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMoveInit__11daTaFence_cFv,
};
#pragma pop

/* 80D06220-80D0622C -00001 000C+00 0/1 0/0 0/0 .data            @3872 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3872[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMove__11daTaFence_cFv,
};
#pragma pop

/* 80D0622C-80D06238 -00001 000C+00 0/1 0/0 0/0 .data            @3873 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3873[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMoveEnd__11daTaFence_cFv,
};
#pragma pop

/* 80D06238-80D06268 000094 0030+00 0/1 0/0 0/0 .data            mode_proc$3869 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80D06268-80D06288 -00001 0020+00 1/0 0/0 0/0 .data            l_daTaFence_Method */
static actor_method_class l_daTaFence_Method = {
    (process_method_func)daTaFence_Create__FP10fopAc_ac_c,
    (process_method_func)daTaFence_Delete__FP11daTaFence_c,
    (process_method_func)daTaFence_Execute__FP11daTaFence_c,
    0,
    (process_method_func)daTaFence_Draw__FP11daTaFence_c,
};

/* 80D06288-80D062B8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_TaFence */
extern actor_process_profile_definition g_profile_Obj_TaFence = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_TaFence,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daTaFence_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  505,                    // mPriority
  &l_daTaFence_Method,    // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D062B8-80D062C4 000114 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80D062C4-80D062D0 000120 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80D062D0-80D062DC 00012C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D062DC-80D062E8 000138 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80D062E8-80D06310 000144 0028+00 1/1 0/0 0/0 .data            __vt__11daTaFence_c */
SECTION_DATA extern void* __vt__11daTaFence_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__11daTaFence_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__11daTaFence_cFPPA3_A4_f,
    (void*)Draw__11daTaFence_cFv,
    (void*)Delete__11daTaFence_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80D06310-80D0631C 00016C 000C+00 2/2 0/0 0/0 .data            __vt__15daTaFence_HIO_c */
SECTION_DATA extern void* __vt__15daTaFence_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daTaFence_HIO_cFv,
};

/* 80D0631C-80D06328 000178 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80D04E6C-80D04F44 0000EC 00D8+00 1/1 0/0 0/0 .text            __ct__15daTaFence_HIO_cFv */
daTaFence_HIO_c::daTaFence_HIO_c() {
    // NONMATCHING
}

/* 80D04F44-80D04F8C 0001C4 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80D04F8C-80D0503C 00020C 00B0+00 2/2 0/0 0/0 .text            setBaseMtx__11daTaFence_cFv */
void daTaFence_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D06198-80D06198 0000B8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D06198 = "P_Mfence";
#pragma pop

/* 80D0503C-80D050A8 0002BC 006C+00 1/0 0/0 0/0 .text            CreateHeap__11daTaFence_cFv */
void daTaFence_c::CreateHeap() {
    // NONMATCHING
}

/* 80D050A8-80D05314 000328 026C+00 1/1 0/0 0/0 .text            create__11daTaFence_cFv */
void daTaFence_c::create() {
    // NONMATCHING
}

/* 80D05314-80D053E0 000594 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_CylFv */
// dCcD_Cyl::~dCcD_Cyl() {
extern "C" void __dt__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80D053E0-80D05464 000660 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
// dCcD_Cyl::dCcD_Cyl() {
extern "C" void __ct__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80D05464-80D054AC 0006E4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80D054AC-80D054F4 00072C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80D054F4-80D05550 000774 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80D05550-80D055A0 0007D0 0050+00 1/0 0/0 0/0 .text            Execute__11daTaFence_cFPPA3_A4_f */
void daTaFence_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D06114-80D06144 000034 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__11daTaFence_c */
SECTION_RODATA u8 const daTaFence_c::mCcDObjInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x40, 0x00, 0x32, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D06114, &daTaFence_c::mCcDObjInfo);

/* 80D06144-80D06174 000064 0030+00 0/1 0/0 0/0 .rodata          l_check_area */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_check_area[48] = {
    0xC3, 0x61, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00, 0xC3, 0x61, 0x00, 0x00,
    0x43, 0x61, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00, 0x43, 0x61, 0x00, 0x00, 0x43, 0x61, 0x00, 0x00,
    0x42, 0xC8, 0x00, 0x00, 0x43, 0x61, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D06144, &l_check_area);
#pragma pop

/* 80D06174-80D06178 000094 0004+00 2/2 0/0 0/0 .rodata          @3903 */
SECTION_RODATA static u32 const lit_3903 = 0x43360B61;
COMPILER_STRIP_GATE(0x80D06174, &lit_3903);

/* 80D06330-80D0633C 000008 000C+00 1/1 0/0 0/0 .bss             @3645 */
static u8 lit_3645[12];

/* 80D0633C-80D063B0 000014 0074+00 5/5 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[116];

/* 80D063B0-80D063B4 000088 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80D063B0[4];

/* 80D055A0-80D057C4 000820 0224+00 1/1 0/0 0/0 .text            fenceProc__11daTaFence_cFv */
void daTaFence_c::fenceProc() {
    // NONMATCHING
}

/* 80D057C4-80D057D0 000A44 000C+00 1/1 0/0 0/0 .text            init_modeWait__11daTaFence_cFv */
void daTaFence_c::init_modeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D06178-80D0617C 000098 0004+00 0/1 0/0 0/0 .rodata          @3963 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3963 = 25.0f;
COMPILER_STRIP_GATE(0x80D06178, &lit_3963);
#pragma pop

/* 80D0617C-80D06180 00009C 0004+00 0/1 0/0 0/0 .rodata          @3964 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3964 = 250.0f;
COMPILER_STRIP_GATE(0x80D0617C, &lit_3964);
#pragma pop

/* 80D06180-80D06184 0000A0 0004+00 0/1 0/0 0/0 .rodata          @3965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3965 = 41.0f;
COMPILER_STRIP_GATE(0x80D06180, &lit_3965);
#pragma pop

/* 80D06184-80D06188 0000A4 0004+00 0/1 0/0 0/0 .rodata          @3966 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3966 = 205.0f;
COMPILER_STRIP_GATE(0x80D06184, &lit_3966);
#pragma pop

/* 80D06188-80D06190 0000A8 0008+00 0/1 0/0 0/0 .rodata          @3968 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3968[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D06188, &lit_3968);
#pragma pop

/* 80D057D0-80D05A54 000A50 0284+00 1/0 0/0 0/0 .text            modeWait__11daTaFence_cFv */
void daTaFence_c::modeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D06190-80D06194 0000B0 0004+00 1/2 0/0 0/0 .rodata          @3981 */
SECTION_RODATA static f32 const lit_3981 = -1.0f;
COMPILER_STRIP_GATE(0x80D06190, &lit_3981);

/* 80D05A54-80D05B5C 000CD4 0108+00 1/1 0/0 0/0 .text            init_modeMoveInit__11daTaFence_cFv
 */
void daTaFence_c::init_modeMoveInit() {
    // NONMATCHING
}

/* 80D05B5C-80D05B94 000DDC 0038+00 1/0 0/0 0/0 .text            modeMoveInit__11daTaFence_cFv */
void daTaFence_c::modeMoveInit() {
    // NONMATCHING
}

/* 80D05B94-80D05CAC 000E14 0118+00 1/1 0/0 0/0 .text            init_modeMove__11daTaFence_cFv */
void daTaFence_c::init_modeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D06194-80D06198 0000B4 0004+00 1/1 0/0 0/0 .rodata          @4028 */
SECTION_RODATA static f32 const lit_4028 = 30.0f;
COMPILER_STRIP_GATE(0x80D06194, &lit_4028);

/* 80D05CAC-80D05D2C 000F2C 0080+00 1/0 0/0 0/0 .text            modeMove__11daTaFence_cFv */
void daTaFence_c::modeMove() {
    // NONMATCHING
}

/* 80D05D2C-80D05E54 000FAC 0128+00 2/2 0/0 0/0 .text            init_modeMoveEnd__11daTaFence_cFv
 */
void daTaFence_c::init_modeMoveEnd() {
    // NONMATCHING
}

/* 80D05E54-80D05E58 0010D4 0004+00 1/0 0/0 0/0 .text            modeMoveEnd__11daTaFence_cFv */
void daTaFence_c::modeMoveEnd() {
    /* empty function */
}

/* 80D05E58-80D05EFC 0010D8 00A4+00 1/0 0/0 0/0 .text            Draw__11daTaFence_cFv */
void daTaFence_c::Draw() {
    // NONMATCHING
}

/* 80D05EFC-80D05F2C 00117C 0030+00 1/0 0/0 0/0 .text            Delete__11daTaFence_cFv */
void daTaFence_c::Delete() {
    // NONMATCHING
}

/* 80D05F2C-80D05F58 0011AC 002C+00 1/0 0/0 0/0 .text            daTaFence_Draw__FP11daTaFence_c */
static void daTaFence_Draw(daTaFence_c* param_0) {
    // NONMATCHING
}

/* 80D05F58-80D05F78 0011D8 0020+00 1/0 0/0 0/0 .text            daTaFence_Execute__FP11daTaFence_c
 */
static void daTaFence_Execute(daTaFence_c* param_0) {
    // NONMATCHING
}

/* 80D05F78-80D05F98 0011F8 0020+00 1/0 0/0 0/0 .text            daTaFence_Delete__FP11daTaFence_c
 */
static void daTaFence_Delete(daTaFence_c* param_0) {
    // NONMATCHING
}

/* 80D05F98-80D05FB8 001218 0020+00 1/0 0/0 0/0 .text            daTaFence_Create__FP10fopAc_ac_c */
static void daTaFence_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80D05FB8-80D06000 001238 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80D06000-80D0605C 001280 005C+00 2/1 0/0 0/0 .text            __dt__15daTaFence_HIO_cFv */
daTaFence_HIO_c::~daTaFence_HIO_c() {
    // NONMATCHING
}

/* 80D0605C-80D060CC 0012DC 0070+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_taFence_cpp */
void __sinit_d_a_obj_taFence_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80D0605C, __sinit_d_a_obj_taFence_cpp);
#pragma pop

/* 80D06198-80D06198 0000B8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
