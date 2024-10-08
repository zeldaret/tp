/**
 * @file d_a_obj_tp.cpp
 * 
*/

#include "d/actor/d_a_obj_tp.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void daObj_Tp_Draw__FP12obj_tp_class();
extern "C" static void anm_init__FP12obj_tp_classifUcf();
extern "C" static void s_tp_sub__FPvPv();
extern "C" static void daObj_Tp_Execute__FP12obj_tp_class();
extern "C" static bool daObj_Tp_IsDelete__FP12obj_tp_class();
extern "C" static void daObj_Tp_Delete__FP12obj_tp_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daObj_Tp_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" extern char const* const d_a_obj_tp__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void entryDL__14mDoExt_McaMorfFv();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void setEffectMtx__13J3DTexMtxInfoFPA4_f();
extern "C" void simpleCalcMaterial__12J3DModelDataFUsPA4_f();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_19();
extern "C" void _savegpr_22();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_22();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80D1EE2C-80D1EE30 000000 0004+00 4/4 0/0 0/0 .rodata          @3879 */
SECTION_RODATA static f32 const lit_3879 = 1.0f;
COMPILER_STRIP_GATE(0x80D1EE2C, &lit_3879);

/* 80D1EE30-80D1EE34 000004 0004+00 0/1 0/0 0/0 .rodata          @3880 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3880 = -1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80D1EE30, &lit_3880);
#pragma pop

/* 80D1EE34-80D1EE38 000008 0004+00 1/3 0/0 0/0 .rodata          @3881 */
SECTION_RODATA static u8 const lit_3881[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D1EE34, &lit_3881);

/* 80D1D578-80D1D764 000078 01EC+00 1/0 0/0 0/0 .text            daObj_Tp_Draw__FP12obj_tp_class */
static void daObj_Tp_Draw(obj_tp_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D1EE38-80D1EE3C 00000C 0004+00 1/1 0/0 0/0 .rodata          @3898 */
SECTION_RODATA static f32 const lit_3898 = -1.0f;
COMPILER_STRIP_GATE(0x80D1EE38, &lit_3898);

/* 80D1EE98-80D1EE98 00006C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D1EE98 = "Obj_tp";
#pragma pop

/* 80D1D764-80D1D850 000264 00EC+00 1/1 0/0 0/0 .text            anm_init__FP12obj_tp_classifUcf */
static void anm_init(obj_tp_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* 80D1D850-80D1D8C8 000350 0078+00 1/1 0/0 0/0 .text            s_tp_sub__FPvPv */
static void s_tp_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D1EEA0-80D1EEAC 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D1EEAC-80D1EEC0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
SECTION_DATA static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 80D1EEC0-80D1EEE0 -00001 0020+00 1/1 0/0 0/0 .data            @4263 */
SECTION_DATA static void* lit_4263[8] = {
    (void*)(((char*)daObj_Tp_Execute__FP12obj_tp_class) + 0x12C),
    (void*)(((char*)daObj_Tp_Execute__FP12obj_tp_class) + 0x190),
    (void*)(((char*)daObj_Tp_Execute__FP12obj_tp_class) + 0x204),
    (void*)(((char*)daObj_Tp_Execute__FP12obj_tp_class) + 0x244),
    (void*)(((char*)daObj_Tp_Execute__FP12obj_tp_class) + 0x2A0),
    (void*)(((char*)daObj_Tp_Execute__FP12obj_tp_class) + 0x3B8),
    (void*)(((char*)daObj_Tp_Execute__FP12obj_tp_class) + 0x460),
    (void*)(((char*)daObj_Tp_Execute__FP12obj_tp_class) + 0x60C),
};

/* 80D1D8C8-80D1E460 0003C8 0B98+00 3/1 0/0 0/0 .text            daObj_Tp_Execute__FP12obj_tp_class
 */
static void daObj_Tp_Execute(obj_tp_class* param_0) {
    // NONMATCHING
}

/* 80D1E460-80D1E468 000F60 0008+00 1/0 0/0 0/0 .text            daObj_Tp_IsDelete__FP12obj_tp_class
 */
static bool daObj_Tp_IsDelete(obj_tp_class* param_0) {
    return true;
}

/* 80D1E468-80D1E4C0 000F68 0058+00 1/0 0/0 0/0 .text            daObj_Tp_Delete__FP12obj_tp_class
 */
static void daObj_Tp_Delete(obj_tp_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D1EEE0-80D1EEE8 000040 0008+00 0/1 0/0 0/0 .data            bmd$4283 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 bmd[8] = {
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x12,
};
#pragma pop

/* 80D1EEE8-80D1EEF0 000048 0008+00 0/1 0/0 0/0 .data            brk$4284 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 brk[8] = {
    0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x18,
};
#pragma pop

/* 80D1EEF0-80D1EEF8 000050 0008+00 0/1 0/0 0/0 .data            eff_bmd$4296 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_bmd[8] = {
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x10,
};
#pragma pop

/* 80D1EEF8-80D1EF00 000058 0008+00 0/1 0/0 0/0 .data            eff_btk$4297 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_btk[8] = {
    0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x1C,
};
#pragma pop

/* 80D1EF00-80D1EF08 000060 0008+00 0/1 0/0 0/0 .data            eff_brk$4298 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_brk[8] = {
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x16,
};
#pragma pop

/* 80D1EF08-80D1EF4C 000068 0044+00 1/1 0/0 0/0 .data            cc_cyl_src$4468 */
static dCcD_SrcCyl cc_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fafdbf, 0x11}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_METAL, 0x2, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        50.0f, // mRadius
        360.0f // mHeight
    } // mCyl
};

/* 80D1EF4C-80D1EF6C -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Tp_Method */
static actor_method_class l_daObj_Tp_Method = {
    (process_method_func)daObj_Tp_Create__FP10fopAc_ac_c,
    (process_method_func)daObj_Tp_Delete__FP12obj_tp_class,
    (process_method_func)daObj_Tp_Execute__FP12obj_tp_class,
    (process_method_func)daObj_Tp_IsDelete__FP12obj_tp_class,
    (process_method_func)daObj_Tp_Draw__FP12obj_tp_class,
};

/* 80D1EF6C-80D1EF9C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_TP */
extern actor_process_profile_definition g_profile_OBJ_TP = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_OBJ_TP,            // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(obj_tp_class),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  59,                     // mPriority
  &l_daObj_Tp_Method,     // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D1EF9C-80D1EFA8 0000FC 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80D1EFA8-80D1EFB4 000108 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80D1EFB4-80D1EFC0 000114 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80D1EFC0-80D1EFCC 000120 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D1EFCC-80D1EFD8 00012C 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80D1E4C0-80D1E908 000FC0 0448+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80D1E908-80D1E950 001408 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D1EE3C-80D1EE40 000010 0004+00 0/0 0/0 0/0 .rodata          @4247 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4247 = 10.0f;
COMPILER_STRIP_GATE(0x80D1EE3C, &lit_4247);
#pragma pop

/* 80D1EE40-80D1EE44 000014 0004+00 0/0 0/0 0/0 .rodata          @4248 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4248 = 9.0f;
COMPILER_STRIP_GATE(0x80D1EE40, &lit_4248);
#pragma pop

/* 80D1EE44-80D1EE48 000018 0004+00 0/0 0/0 0/0 .rodata          @4249 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4249 = 17.0f;
COMPILER_STRIP_GATE(0x80D1EE44, &lit_4249);
#pragma pop

/* 80D1EE48-80D1EE4C 00001C 0004+00 0/0 0/0 0/0 .rodata          @4250 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4250 = 38.0f;
COMPILER_STRIP_GATE(0x80D1EE48, &lit_4250);
#pragma pop

/* 80D1EE4C-80D1EE50 000020 0004+00 0/0 0/0 0/0 .rodata          @4251 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4251 = 36.0f;
COMPILER_STRIP_GATE(0x80D1EE4C, &lit_4251);
#pragma pop

/* 80D1EE50-80D1EE54 000024 0004+00 0/0 0/0 0/0 .rodata          @4252 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4252 = -2.0f;
COMPILER_STRIP_GATE(0x80D1EE50, &lit_4252);
#pragma pop

/* 80D1EE54-80D1EE5C 000028 0008+00 0/0 0/0 0/0 .rodata          @4253 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4253[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D1EE54, &lit_4253);
#pragma pop

/* 80D1EE5C-80D1EE64 000030 0008+00 0/0 0/0 0/0 .rodata          @4254 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4254[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D1EE5C, &lit_4254);
#pragma pop

/* 80D1EE64-80D1EE6C 000038 0008+00 0/0 0/0 0/0 .rodata          @4255 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4255[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D1EE64, &lit_4255);
#pragma pop

/* 80D1EE6C-80D1EE70 000040 0004+00 0/0 0/0 0/0 .rodata          @4256 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4256 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80D1EE6C, &lit_4256);
#pragma pop

/* 80D1EE70-80D1EE74 000044 0004+00 0/0 0/0 0/0 .rodata          @4257 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4257 = 50.0f;
COMPILER_STRIP_GATE(0x80D1EE70, &lit_4257);
#pragma pop

/* 80D1EE74-80D1EE78 000048 0004+00 0/0 0/0 0/0 .rodata          @4258 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4258 = 150.0f;
COMPILER_STRIP_GATE(0x80D1EE74, &lit_4258);
#pragma pop

/* 80D1EE78-80D1EE7C 00004C 0004+00 0/1 0/0 0/0 .rodata          @4259 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4259 = 300.0f;
COMPILER_STRIP_GATE(0x80D1EE78, &lit_4259);
#pragma pop

/* 80D1EE7C-80D1EE80 000050 0004+00 0/0 0/0 0/0 .rodata          @4260 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4260 = 19.0f;
COMPILER_STRIP_GATE(0x80D1EE7C, &lit_4260);
#pragma pop

/* 80D1EE80-80D1EE84 000054 0004+00 0/0 0/0 0/0 .rodata          @4261 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4261 = 3000.0f;
COMPILER_STRIP_GATE(0x80D1EE80, &lit_4261);
#pragma pop

/* 80D1EE84-80D1EE88 000058 0004+00 0/0 0/0 0/0 .rodata          @4262 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4262 = 5000.0f;
COMPILER_STRIP_GATE(0x80D1EE84, &lit_4262);
#pragma pop

/* 80D1EE88-80D1EE8C 00005C 0004+00 0/1 0/0 0/0 .rodata          @4580 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4580 = -300.0f;
COMPILER_STRIP_GATE(0x80D1EE88, &lit_4580);
#pragma pop

/* 80D1EE8C-80D1EE90 000060 0004+00 0/1 0/0 0/0 .rodata          @4581 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4581 = -20000.0f;
COMPILER_STRIP_GATE(0x80D1EE8C, &lit_4581);
#pragma pop

/* 80D1EE90-80D1EE94 000064 0004+00 0/1 0/0 0/0 .rodata          @4582 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4582 = 20000.0f;
COMPILER_STRIP_GATE(0x80D1EE90, &lit_4582);
#pragma pop

/* 80D1EE94-80D1EE98 000068 0004+00 0/1 0/0 0/0 .rodata          @4583 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4583 = 65536.0f;
COMPILER_STRIP_GATE(0x80D1EE94, &lit_4583);
#pragma pop

/* 80D1E950-80D1ECF0 001450 03A0+00 1/0 0/0 0/0 .text            daObj_Tp_Create__FP10fopAc_ac_c */
static void daObj_Tp_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80D1ECF0-80D1ED38 0017F0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80D1ED38-80D1ED80 001838 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80D1ED80-80D1EDDC 001880 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80D1EDDC-80D1EE24 0018DC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80D1EE98-80D1EE98 00006C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */