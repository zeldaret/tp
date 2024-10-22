/**
 * @file d_a_b_zant_mobile.cpp
 * 
*/

#include "d/actor/d_a_b_zant_mobile.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__15daB_ZANTZ_HIO_cFv();
extern "C" void draw__11daB_ZANTZ_cFv();
extern "C" static void daB_ZANTZ_Draw__FP11daB_ZANTZ_c();
extern "C" void setSnortEffect__11daB_ZANTZ_cFi();
extern "C" void calcSnortEffect__11daB_ZANTZ_cFv();
extern "C" void setMouthMode__11daB_ZANTZ_cFUc();
extern "C" void setAppearMode__11daB_ZANTZ_cFUc();
extern "C" void getGroundPos__11daB_ZANTZ_cFv();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" void action__11daB_ZANTZ_cFv();
extern "C" void cc_set__11daB_ZANTZ_cFv();
extern "C" void execute__11daB_ZANTZ_cFv();
extern "C" static void daB_ZANTZ_Execute__FP11daB_ZANTZ_c();
extern "C" static bool daB_ZANTZ_IsDelete__FP11daB_ZANTZ_c();
extern "C" void _delete__11daB_ZANTZ_cFv();
extern "C" static void daB_ZANTZ_Delete__FP11daB_ZANTZ_c();
extern "C" void CreateHeap__11daB_ZANTZ_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__11daB_ZANTZ_cFv();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" static void daB_ZANTZ_Create__FP11daB_ZANTZ_c();
extern "C" void __dt__15daB_ZANTZ_HIO_cFv();
extern "C" void __sinit_d_a_b_zant_mobile_cpp();
extern "C" static void func_80652710();
extern "C" static void func_80652718();
extern "C" static void func_80652720();
extern "C" extern char const* const d_a_b_zant_mobile__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetActorPointer__4cBgSCFi();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _restgpr_24();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 8065273C-80652740 000000 0004+00 10/10 0/0 0/0 .rodata          @3649 */
SECTION_RODATA static f32 const lit_3649 = 1.0f;
COMPILER_STRIP_GATE(0x8065273C, &lit_3649);

/* 806527DC-8065281C 000000 0040+00 1/1 0/0 0/0 .data
 * cc_zant_src__31@unnamed@d_a_b_zant_mobile_cpp@               */
SECTION_DATA static u8 data_806527DC[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x55, 0x09, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 8065281C-80652860 000040 0044+00 1/1 0/0 0/0 .data
 * cc_zant_snort_src__31@unnamed@d_a_b_zant_mobile_cpp@         */
SECTION_DATA static u8 data_8065281C[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x55,
    0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 80652860-80652880 -00001 0020+00 1/0 0/0 0/0 .data            l_daB_ZANTZ_Method */
static actor_method_class l_daB_ZANTZ_Method = {
    (process_method_func)daB_ZANTZ_Create__FP11daB_ZANTZ_c,
    (process_method_func)daB_ZANTZ_Delete__FP11daB_ZANTZ_c,
    (process_method_func)daB_ZANTZ_Execute__FP11daB_ZANTZ_c,
    (process_method_func)daB_ZANTZ_IsDelete__FP11daB_ZANTZ_c,
    (process_method_func)daB_ZANTZ_Draw__FP11daB_ZANTZ_c,
};

/* 80652880-806528B0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_B_ZANTZ */
extern actor_process_profile_definition g_profile_B_ZANTZ = {
  fpcLy_CURRENT_e,        // mLayerID
  4,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_B_ZANTZ,           // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daB_ZANTZ_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  228,                    // mPriority
  &l_daB_ZANTZ_Method,    // sub_method
  0x00040000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 806528B0-806528BC 0000D4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806528BC-806528C8 0000E0 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806528C8-806528D4 0000EC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 806528D4-806528E0 0000F8 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 806528E0-80652910 000104 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80652710,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80652720,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80652718,
};

/* 80652910-8065291C 000134 000C+00 2/2 0/0 0/0 .data            __vt__15daB_ZANTZ_HIO_c */
SECTION_DATA extern void* __vt__15daB_ZANTZ_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daB_ZANTZ_HIO_cFv,
};

/* 8065078C-806507B0 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__15daB_ZANTZ_HIO_cFv */
daB_ZANTZ_HIO_c::daB_ZANTZ_HIO_c() {
    // NONMATCHING
}

/* 806507B0-80650834 000110 0084+00 1/1 0/0 0/0 .text            draw__11daB_ZANTZ_cFv */
void daB_ZANTZ_c::draw() {
    // NONMATCHING
}

/* 80650834-80650854 000194 0020+00 1/0 0/0 0/0 .text            daB_ZANTZ_Draw__FP11daB_ZANTZ_c */
static void daB_ZANTZ_Draw(daB_ZANTZ_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80652740-80652744 000004 0004+00 1/4 0/0 0/0 .rodata          @3688 */
SECTION_RODATA static f32 const lit_3688 = -1.0f;
COMPILER_STRIP_GATE(0x80652740, &lit_3688);

/* 80650854-806508E0 0001B4 008C+00 0/0 0/0 2/2 .text            setSnortEffect__11daB_ZANTZ_cFi */
void daB_ZANTZ_c::setSnortEffect(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80652744-80652748 000008 0004+00 0/1 0/0 0/0 .rodata          @3746 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3746 = 5.0f;
COMPILER_STRIP_GATE(0x80652744, &lit_3746);
#pragma pop

/* 80652748-8065274C 00000C 0004+00 0/1 0/0 0/0 .rodata          @3747 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3747 = 1.5f;
COMPILER_STRIP_GATE(0x80652748, &lit_3747);
#pragma pop

/* 8065274C-80652750 000010 0004+00 0/1 0/0 0/0 .rodata          @3748 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3748 = 150.0f;
COMPILER_STRIP_GATE(0x8065274C, &lit_3748);
#pragma pop

/* 80652750-80652754 000014 0004+00 0/1 0/0 0/0 .rodata          @3749 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3749 = 800.0f;
COMPILER_STRIP_GATE(0x80652750, &lit_3749);
#pragma pop

/* 80652754-80652758 000018 0004+00 0/1 0/0 0/0 .rodata          @3750 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3750 = 1000.0f;
COMPILER_STRIP_GATE(0x80652754, &lit_3750);
#pragma pop

/* 80652758-8065275C 00001C 0004+00 0/1 0/0 0/0 .rodata          @3751 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3751 = 900.0f;
COMPILER_STRIP_GATE(0x80652758, &lit_3751);
#pragma pop

/* 8065275C-80652760 000020 0004+00 0/2 0/0 0/0 .rodata          @3752 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3752 = 300.0f;
COMPILER_STRIP_GATE(0x8065275C, &lit_3752);
#pragma pop

/* 80652760-80652764 000024 0004+00 0/1 0/0 0/0 .rodata          @3753 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3753 = -150.0f;
COMPILER_STRIP_GATE(0x80652760, &lit_3753);
#pragma pop

/* 80652764-80652768 000028 0004+00 0/1 0/0 0/0 .rodata          @3754 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3754 = 30.0f;
COMPILER_STRIP_GATE(0x80652764, &lit_3754);
#pragma pop

/* 80652768-8065276C 00002C 0004+00 0/3 0/0 0/0 .rodata          @3755 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3755 = 10.0f;
COMPILER_STRIP_GATE(0x80652768, &lit_3755);
#pragma pop

/* 806508E0-80650B7C 000240 029C+00 1/1 0/0 0/0 .text            calcSnortEffect__11daB_ZANTZ_cFv */
void daB_ZANTZ_c::calcSnortEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8065276C-80652770 000030 0004+00 1/6 0/0 0/0 .rodata          @3795 */
SECTION_RODATA static u8 const lit_3795[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8065276C, &lit_3795);

/* 806527D0-806527D0 000094 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806527D0 = "B_zan";
#pragma pop

/* 80650B7C-80650D0C 0004DC 0190+00 0/0 0/0 3/3 .text            setMouthMode__11daB_ZANTZ_cFUc */
void daB_ZANTZ_c::setMouthMode(u8 param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80652770-80652774 000034 0004+00 0/1 0/0 0/0 .rodata          @3899 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3899 = 2000.0f;
COMPILER_STRIP_GATE(0x80652770, &lit_3899);
#pragma pop

/* 80652774-80652778 000038 0004+00 0/1 0/0 0/0 .rodata          @3900 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3900 = 3000.0f;
COMPILER_STRIP_GATE(0x80652774, &lit_3900);
#pragma pop

/* 80650D0C-806510C0 00066C 03B4+00 0/0 0/0 1/1 .text            setAppearMode__11daB_ZANTZ_cFUc */
void daB_ZANTZ_c::setAppearMode(u8 param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80652778-8065277C 00003C 0004+00 0/1 0/0 0/0 .rodata          @3909 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3909 = 4000.0f;
COMPILER_STRIP_GATE(0x80652778, &lit_3909);
#pragma pop

/* 8065277C-80652780 000040 0004+00 0/1 0/0 0/0 .rodata          @3939 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3939 = -1000000000.0f;
COMPILER_STRIP_GATE(0x8065277C, &lit_3939);
#pragma pop

/* 806510C0-80651204 000A20 0144+00 2/2 0/0 0/0 .text            getGroundPos__11daB_ZANTZ_cFv */
void daB_ZANTZ_c::getGroundPos() {
    // NONMATCHING
}

/* 80651204-8065127C 000B64 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80652780-80652784 000044 0004+00 0/1 0/0 0/0 .rodata          @4120 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4120 = 4.0f;
COMPILER_STRIP_GATE(0x80652780, &lit_4120);
#pragma pop

/* 80652784-80652788 000048 0004+00 0/1 0/0 0/0 .rodata          @4121 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4121 = 15.0f;
COMPILER_STRIP_GATE(0x80652784, &lit_4121);
#pragma pop

/* 80652788-8065278C 00004C 0004+00 0/1 0/0 0/0 .rodata          @4122 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4122 = 40.0f;
COMPILER_STRIP_GATE(0x80652788, &lit_4122);
#pragma pop

/* 8065278C-80652790 000050 0004+00 0/1 0/0 0/0 .rodata          @4123 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4123 = 6.0f;
COMPILER_STRIP_GATE(0x8065278C, &lit_4123);
#pragma pop

/* 80652790-80652794 000054 0004+00 0/1 0/0 0/0 .rodata          @4124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4124 = 9.0f;
COMPILER_STRIP_GATE(0x80652790, &lit_4124);
#pragma pop

/* 80652794-80652798 000058 0004+00 0/1 0/0 0/0 .rodata          @4125 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4125 = 13.0f;
COMPILER_STRIP_GATE(0x80652794, &lit_4125);
#pragma pop

/* 80652798-8065279C 00005C 0004+00 0/1 0/0 0/0 .rodata          @4126 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4126 = 16.0f;
COMPILER_STRIP_GATE(0x80652798, &lit_4126);
#pragma pop

/* 8065279C-806527A0 000060 0004+00 0/1 0/0 0/0 .rodata          @4127 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4127 = 26.0f;
COMPILER_STRIP_GATE(0x8065279C, &lit_4127);
#pragma pop

/* 806527A0-806527A4 000064 0004+00 0/1 0/0 0/0 .rodata          @4128 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4128 = 3500.0f;
COMPILER_STRIP_GATE(0x806527A0, &lit_4128);
#pragma pop

/* 806527A4-806527A8 000068 0004+00 0/1 0/0 0/0 .rodata          @4129 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4129 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x806527A4, &lit_4129);
#pragma pop

/* 806527A8-806527AC 00006C 0004+00 0/1 0/0 0/0 .rodata          @4130 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4130 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x806527A8, &lit_4130);
#pragma pop

/* 806527AC-806527B0 000070 0004+00 0/1 0/0 0/0 .rodata          @4131 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4131 = 17.0f / 10.0f;
COMPILER_STRIP_GATE(0x806527AC, &lit_4131);
#pragma pop

/* 806527B0-806527B4 000074 0004+00 0/1 0/0 0/0 .rodata          @4132 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4132 = 500.0f;
COMPILER_STRIP_GATE(0x806527B0, &lit_4132);
#pragma pop

/* 806527B4-806527BC 000078 0008+00 0/1 0/0 0/0 .rodata          @4135 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4135[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806527B4, &lit_4135);
#pragma pop

/* 8065127C-80651B1C 000BDC 08A0+00 1/1 0/0 0/0 .text            action__11daB_ZANTZ_cFv */
void daB_ZANTZ_c::action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806527BC-806527C0 000080 0004+00 0/1 0/0 0/0 .rodata          @4171 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4171 = 100.0f;
COMPILER_STRIP_GATE(0x806527BC, &lit_4171);
#pragma pop

/* 806527C0-806527C4 000084 0004+00 0/1 0/0 0/0 .rodata          @4172 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4172 = 130.0f;
COMPILER_STRIP_GATE(0x806527C0, &lit_4172);
#pragma pop

/* 806527C4-806527C8 000088 0004+00 0/1 0/0 0/0 .rodata          @4173 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4173 = 230.0f;
COMPILER_STRIP_GATE(0x806527C4, &lit_4173);
#pragma pop

/* 80651B1C-80651C20 00147C 0104+00 1/1 0/0 0/0 .text            cc_set__11daB_ZANTZ_cFv */
void daB_ZANTZ_c::cc_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80652928-8065292C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80652928[4];

/* 8065292C-80652938 00000C 000C+00 1/1 0/0 0/0 .bss             @3644 */
static u8 lit_3644[12];

/* 80652938-80652944 000018 000C+00 3/3 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[12];

/* 80651C20-80651CF4 001580 00D4+00 1/1 0/0 0/0 .text            execute__11daB_ZANTZ_cFv */
void daB_ZANTZ_c::execute() {
    // NONMATCHING
}

/* 80651CF4-80651D14 001654 0020+00 1/0 0/0 0/0 .text            daB_ZANTZ_Execute__FP11daB_ZANTZ_c
 */
static void daB_ZANTZ_Execute(daB_ZANTZ_c* param_0) {
    // NONMATCHING
}

/* 80651D14-80651D1C 001674 0008+00 1/0 0/0 0/0 .text            daB_ZANTZ_IsDelete__FP11daB_ZANTZ_c
 */
static bool daB_ZANTZ_IsDelete(daB_ZANTZ_c* param_0) {
    return true;
}

/* ############################################################################################## */
/* 806527D0-806527D0 000094 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806527D6 = "B_oh";
#pragma pop

/* 80651D1C-80651DA4 00167C 0088+00 1/1 0/0 0/0 .text            _delete__11daB_ZANTZ_cFv */
void daB_ZANTZ_c::_delete() {
    // NONMATCHING
}

/* 80651DA4-80651DC4 001704 0020+00 1/0 0/0 0/0 .text            daB_ZANTZ_Delete__FP11daB_ZANTZ_c
 */
static void daB_ZANTZ_Delete(daB_ZANTZ_c* param_0) {
    // NONMATCHING
}

/* 80651DC4-80651FD0 001724 020C+00 1/1 0/0 0/0 .text            CreateHeap__11daB_ZANTZ_cFv */
void daB_ZANTZ_c::CreateHeap() {
    // NONMATCHING
}

/* 80651FD0-80652018 001930 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80652018-80652038 001978 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806527C8-806527CC 00008C 0004+00 0/1 0/0 0/0 .rodata          @4373 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4373 = -400.0f;
COMPILER_STRIP_GATE(0x806527C8, &lit_4373);
#pragma pop

/* 806527CC-806527D0 000090 0004+00 0/1 0/0 0/0 .rodata          @4374 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4374 = 400.0f;
COMPILER_STRIP_GATE(0x806527CC, &lit_4374);
#pragma pop

/* 80652038-806522F4 001998 02BC+00 1/1 0/0 0/0 .text            create__11daB_ZANTZ_cFv */
void daB_ZANTZ_c::create() {
    // NONMATCHING
}

/* 806522F4-806523C0 001C54 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_CylFv */
// dCcD_Cyl::~dCcD_Cyl() {
extern "C" void __dt__8dCcD_CylFv() {
    // NONMATCHING
}

/* 806523C0-80652444 001D20 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
// dCcD_Cyl::dCcD_Cyl() {
extern "C" void __ct__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80652444-8065248C 001DA4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 8065248C-806524D4 001DEC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 806524D4-806525A0 001E34 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 806525A0-80652624 001F00 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80652624-8065266C 001F84 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8065266C-8065268C 001FCC 0020+00 1/0 0/0 0/0 .text            daB_ZANTZ_Create__FP11daB_ZANTZ_c
 */
static void daB_ZANTZ_Create(daB_ZANTZ_c* param_0) {
    // NONMATCHING
}

/* 8065268C-806526D4 001FEC 0048+00 2/1 0/0 0/0 .text            __dt__15daB_ZANTZ_HIO_cFv */
daB_ZANTZ_HIO_c::~daB_ZANTZ_HIO_c() {
    // NONMATCHING
}

/* 806526D4-80652710 002034 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_b_zant_mobile_cpp */
void __sinit_d_a_b_zant_mobile_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806526D4, __sinit_d_a_b_zant_mobile_cpp);
#pragma pop

/* 80652710-80652718 002070 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_80652710() {
    // NONMATCHING
}

/* 80652718-80652720 002078 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_80652718() {
    // NONMATCHING
}

/* 80652720-80652728 002080 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_80652720() {
    // NONMATCHING
}

/* 806527D0-806527D0 000094 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */