/**
 * @file d_a_obj_picture.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_picture.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void daObjPicture_c_createHeap__FP10fopAc_ac_c();
extern "C" void __ct__14daObjPicture_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_CpsFv();
extern "C" void __ct__8dCcD_CpsFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__14daObjPicture_cFv();
extern "C" void createHeap__14daObjPicture_cFv();
extern "C" void create__14daObjPicture_cFv();
extern "C" void Delete__14daObjPicture_cFv();
extern "C" void draw__14daObjPicture_cFv();
extern "C" void execute__14daObjPicture_cFv();
extern "C" void init__14daObjPicture_cFv();
extern "C" void setPicModelMtx__14daObjPicture_cFv();
extern "C" void setTmgModelMtx__14daObjPicture_cFv();
extern "C" void getLinePosPic__14daObjPicture_cFiP4cXyz();
extern "C" void getPosTmg__14daObjPicture_cFP4cXyz();
extern "C" void setLinePos__14daObjPicture_cFv();
extern "C" void moveLineFall1__14daObjPicture_cFv();
extern "C" void moveLineFall2__14daObjPicture_cFv();
extern "C" void chkHitRope__14daObjPicture_cFv();
extern "C" void chkHitBombTg__14daObjPicture_cFv();
extern "C" void setPicAtCol__14daObjPicture_cFv();
extern "C" static void daObjPicture_create__FP14daObjPicture_c();
extern "C" static void daObjPicture_Delete__FP14daObjPicture_c();
extern "C" static void daObjPicture_execute__FP14daObjPicture_c();
extern "C" static void daObjPicture_draw__FP14daObjPicture_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" extern char const* const d_a_obj_picture__stringBase0;
extern "C" u8 s_CcDCps__14daObjPicture_c[76];
extern "C" u8 s_CcDCyl_pic_at__14daObjPicture_c[68];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdate__FP8J3DModel();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi();
extern "C" void update__19mDoExt_3DlineMat1_cFifR8_GXColorUsP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CpsFRC11dCcD_SrcCps();
extern "C" void CalcTgVec__8dCcD_CpsFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void __ct__8cM3dGCpsFv();
extern "C" void __dt__8cM3dGCpsFv();
extern "C" void Set__8cM3dGCpsFRC4cXyzRC4cXyzf();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcPosXZ2__FP4cXyzRC4cXyzff();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _restgpr_19();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" extern void* __vt__19mDoExt_3DlineMat1_c[5];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__8dCcD_Cps[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__12cCcD_CpsAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80CAD2F8-80CAD318 000078 0020+00 1/1 0/0 0/0 .text daObjPicture_c_createHeap__FP10fopAc_ac_c */
static void daObjPicture_c_createHeap(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CAF0DC-80CAF0DC 0000C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CAF0DC = "L9Picture";
#pragma pop

/* 80CAF0E8-80CAF0EC -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_picture__stringBase0;

/* 80CAF0EC-80CAF104 000004 0018+00 1/1 0/0 0/0 .data            l_LINE_OFFSET_POS */
SECTION_DATA static u8 l_LINE_OFFSET_POS[24] = {
    0xC2, 0xC8, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00,
    0x42, 0xC8, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00,
};

/* 80CAF104-80CAF110 00001C 000C+00 1/1 0/0 0/0 .data            l_PIC_AT_OFFSET_POS */
SECTION_DATA static u8 l_PIC_AT_OFFSET_POS[12] = {
    0x00, 0x00, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CAF110-80CAF15C 000028 004C+00 1/1 0/0 0/0 .data            s_CcDCps__14daObjPicture_c */
SECTION_DATA u8 daObjPicture_c::s_CcDCps[76] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x20, 0xA0, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x60, 0x00, 0x00,
};

/* 80CAF15C-80CAF1A0 000074 0044+00 1/1 0/0 0/0 .data            s_CcDCyl_pic_at__14daObjPicture_c
 */
SECTION_DATA u8 daObjPicture_c::s_CcDCyl_pic_at[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x79,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CAF1A0-80CAF1C0 -00001 0020+00 1/0 0/0 0/0 .data            daObjPicture_METHODS */
static actor_method_class daObjPicture_METHODS = {
    (process_method_func)daObjPicture_create__FP14daObjPicture_c,
    (process_method_func)daObjPicture_Delete__FP14daObjPicture_c,
    (process_method_func)daObjPicture_execute__FP14daObjPicture_c,
    0,
    (process_method_func)daObjPicture_draw__FP14daObjPicture_c,
};

/* 80CAF1C0-80CAF1F0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Picture */
extern actor_process_profile_definition g_profile_Obj_Picture = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Picture,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjPicture_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  742,                    // mPriority
  &daObjPicture_METHODS,  // sub_method
  0x00040180,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CAF1F0-80CAF204 000108 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 80CAF204-80CAF210 00011C 000C+00 2/2 0/0 0/0 .data            __vt__14daObjPicture_c */
SECTION_DATA extern void* __vt__14daObjPicture_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daObjPicture_cFv,
};

/* 80CAF210-80CAF21C 000128 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80CAF21C-80CAF228 000134 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80CAF228-80CAF234 000140 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80CAF234-80CAF240 00014C 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80CAD318-80CAD498 000098 0180+00 2/2 0/0 0/0 .text            __ct__14daObjPicture_cFv */
daObjPicture_c::daObjPicture_c() {
    // NONMATCHING
}

/* 80CAD498-80CAD4E0 000218 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80CAD4E0-80CAD528 000260 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80CAD528-80CAD5EC 0002A8 00C4+00 2/2 0/0 0/0 .text            __dt__8dCcD_CpsFv */
// dCcD_Cps::~dCcD_Cps() {
extern "C" void __dt__8dCcD_CpsFv() {
    // NONMATCHING
}

/* 80CAD5EC-80CAD66C 00036C 0080+00 1/1 0/0 0/0 .text            __ct__8dCcD_CpsFv */
// dCcD_Cps::dCcD_Cps() {
extern "C" void __ct__8dCcD_CpsFv() {
    // NONMATCHING
}

/* 80CAD66C-80CAD6C8 0003EC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CAD6C8-80CAD908 000448 0240+00 1/0 0/0 0/0 .text            __dt__14daObjPicture_cFv */
daObjPicture_c::~daObjPicture_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CAF01C-80CAF024 000000 0008+00 6/6 0/0 0/0 .rodata          l_dzbIdx */
SECTION_RODATA static u8 const l_dzbIdx[8] = {
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0A,
};
COMPILER_STRIP_GATE(0x80CAF01C, &l_dzbIdx);

/* 80CAF024-80CAF02C 000008 0008+00 0/1 0/0 0/0 .rodata          l_PictureBmdIdx */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_PictureBmdIdx[8] = {
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07,
};
COMPILER_STRIP_GATE(0x80CAF024, &l_PictureBmdIdx);
#pragma pop

/* 80CAF02C-80CAF030 000010 0004+00 0/3 0/0 0/0 .rodata          @3925 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3925 = 1.0f;
COMPILER_STRIP_GATE(0x80CAF02C, &lit_3925);
#pragma pop

/* 80CAF030-80CAF034 000014 0004+00 2/3 0/0 0/0 .rodata          @3926 */
SECTION_RODATA static f32 const lit_3926 = 325.0f;
COMPILER_STRIP_GATE(0x80CAF030, &lit_3926);

/* 80CAF034-80CAF038 000018 0004+00 1/2 0/0 0/0 .rodata          @3927 */
SECTION_RODATA static f32 const lit_3927 = 0.5f;
COMPILER_STRIP_GATE(0x80CAF034, &lit_3927);

/* 80CAD908-80CADC18 000688 0310+00 1/1 0/0 0/0 .text            createHeap__14daObjPicture_cFv */
void daObjPicture_c::createHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CAF038-80CAF044 00001C 000C+00 0/1 0/0 0/0 .rodata          @3958 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3958[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC3, 0x66, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CAF038, &lit_3958);
#pragma pop

/* 80CAF044-80CAF048 000028 0004+00 0/1 0/0 0/0 .rodata          @4007 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4007 = -100.0f;
COMPILER_STRIP_GATE(0x80CAF044, &lit_4007);
#pragma pop

/* 80CAF048-80CAF04C 00002C 0004+00 0/1 0/0 0/0 .rodata          @4008 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4008 = -500.0f;
COMPILER_STRIP_GATE(0x80CAF048, &lit_4008);
#pragma pop

/* 80CAF04C-80CAF050 000030 0004+00 0/1 0/0 0/0 .rodata          @4009 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4009 = 100.0f;
COMPILER_STRIP_GATE(0x80CAF04C, &lit_4009);
#pragma pop

/* 80CAF050-80CAF054 000034 0004+00 0/1 0/0 0/0 .rodata          @4010 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4010 = 1500.0f;
COMPILER_STRIP_GATE(0x80CAF050, &lit_4010);
#pragma pop

/* 80CAF054-80CAF058 000038 0004+00 0/1 0/0 0/0 .rodata          @4011 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4011 = 500.0f;
COMPILER_STRIP_GATE(0x80CAF054, &lit_4011);
#pragma pop

/* 80CAF058-80CAF05C 00003C 0004+00 0/1 0/0 0/0 .rodata          @4012 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4012 = 14.0f;
COMPILER_STRIP_GATE(0x80CAF058, &lit_4012);
#pragma pop

/* 80CAF05C-80CAF060 000040 0004+00 0/1 0/0 0/0 .rodata          @4013 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4013 = 10.0f;
COMPILER_STRIP_GATE(0x80CAF05C, &lit_4013);
#pragma pop

/* 80CAF060-80CAF064 000044 0004+00 0/1 0/0 0/0 .rodata          @4014 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4014 = 110.0f;
COMPILER_STRIP_GATE(0x80CAF060, &lit_4014);
#pragma pop

/* 80CADC18-80CADFB0 000998 0398+00 1/1 0/0 0/0 .text            create__14daObjPicture_cFv */
void daObjPicture_c::create() {
    // NONMATCHING
}

/* 80CADFB0-80CAE05C 000D30 00AC+00 1/1 0/0 0/0 .text            Delete__14daObjPicture_cFv */
void daObjPicture_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CAF064-80CAF068 000048 0004+00 1/1 0/0 0/0 .rodata          @4042 */
SECTION_RODATA static u8 const lit_4042[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CAF064, &lit_4042);

/* 80CAF068-80CAF06C 00004C 0004+00 1/1 0/0 0/0 .rodata          @4076 */
SECTION_RODATA static f32 const lit_4076 = 3.5f;
COMPILER_STRIP_GATE(0x80CAF068, &lit_4076);

/* 80CAE05C-80CAE1B8 000DDC 015C+00 1/1 0/0 0/0 .text            draw__14daObjPicture_cFv */
void daObjPicture_c::draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CAF06C-80CAF070 000050 0004+00 0/2 0/0 0/0 .rodata          @4146 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4146 = -1.0f;
COMPILER_STRIP_GATE(0x80CAF06C, &lit_4146);
#pragma pop

/* 80CAF070-80CAF074 000054 0004+00 0/3 0/0 0/0 .rodata          @4147 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4147[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CAF070, &lit_4147);
#pragma pop

/* 80CAF074-80CAF078 000058 0004+00 0/1 0/0 0/0 .rodata          @4148 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4148 = 12.0f;
COMPILER_STRIP_GATE(0x80CAF074, &lit_4148);
#pragma pop

/* 80CAF078-80CAF07C 00005C 0004+00 0/1 0/0 0/0 .rodata          @4149 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4149 = 4.0f;
COMPILER_STRIP_GATE(0x80CAF078, &lit_4149);
#pragma pop

/* 80CAF07C-80CAF080 000060 0004+00 0/1 0/0 0/0 .rodata          @4150 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4150 = 7.0f;
COMPILER_STRIP_GATE(0x80CAF07C, &lit_4150);
#pragma pop

/* 80CAF080-80CAF084 000064 0004+00 0/2 0/0 0/0 .rodata          @4151 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4151 = 5.0f;
COMPILER_STRIP_GATE(0x80CAF080, &lit_4151);
#pragma pop

/* 80CAF084-80CAF088 000068 0004+00 0/1 0/0 0/0 .rodata          @4152 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4152 = -1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CAF084, &lit_4152);
#pragma pop

/* 80CAE1B8-80CAE510 000F38 0358+00 1/1 0/0 0/0 .text            execute__14daObjPicture_cFv */
void daObjPicture_c::execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CAF088-80CAF094 00006C 000C+00 0/1 0/0 0/0 .rodata          @4156 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4156[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CAF088, &lit_4156);
#pragma pop

/* 80CAF094-80CAF098 000078 0004+00 0/1 0/0 0/0 .rodata          @4160 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4160 = -3.0f;
COMPILER_STRIP_GATE(0x80CAF094, &lit_4160);
#pragma pop

/* 80CAF098-80CAF09C 00007C 0004+00 0/1 0/0 0/0 .rodata          @4161 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4161 = 15.0f;
COMPILER_STRIP_GATE(0x80CAF098, &lit_4161);
#pragma pop

/* 80CAE510-80CAE5B0 001290 00A0+00 1/1 0/0 0/0 .text            init__14daObjPicture_cFv */
void daObjPicture_c::init() {
    // NONMATCHING
}

/* 80CAE5B0-80CAE638 001330 0088+00 2/2 0/0 0/0 .text            setPicModelMtx__14daObjPicture_cFv
 */
void daObjPicture_c::setPicModelMtx() {
    // NONMATCHING
}

/* 80CAE638-80CAE6C4 0013B8 008C+00 2/2 0/0 0/0 .text            setTmgModelMtx__14daObjPicture_cFv
 */
void daObjPicture_c::setTmgModelMtx() {
    // NONMATCHING
}

/* 80CAE6C4-80CAE744 001444 0080+00 4/4 0/0 0/0 .text getLinePosPic__14daObjPicture_cFiP4cXyz */
void daObjPicture_c::getLinePosPic(int param_0, cXyz* param_1) {
    // NONMATCHING
}

/* 80CAE744-80CAE76C 0014C4 0028+00 2/2 0/0 0/0 .text            getPosTmg__14daObjPicture_cFP4cXyz
 */
void daObjPicture_c::getPosTmg(cXyz* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CAF09C-80CAF0A0 000080 0004+00 1/1 0/0 0/0 .rodata          @4280 */
SECTION_RODATA static f32 const lit_4280 = 20.0f;
COMPILER_STRIP_GATE(0x80CAF09C, &lit_4280);

/* 80CAE76C-80CAE8E8 0014EC 017C+00 1/1 0/0 0/0 .text            setLinePos__14daObjPicture_cFv */
void daObjPicture_c::setLinePos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CAF0A0-80CAF0A4 000084 0004+00 0/1 0/0 0/0 .rodata          @4323 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4323 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x80CAF0A0, &lit_4323);
#pragma pop

/* 80CAF0A4-80CAF0A8 000088 0004+00 0/1 0/0 0/0 .rodata          @4324 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4324 = 50.0f;
COMPILER_STRIP_GATE(0x80CAF0A4, &lit_4324);
#pragma pop

/* 80CAF0A8-80CAF0AC 00008C 0004+00 0/1 0/0 0/0 .rodata          @4325 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4325 = 9.0f / 20.0f;
COMPILER_STRIP_GATE(0x80CAF0A8, &lit_4325);
#pragma pop

/* 80CAE8E8-80CAEA60 001668 0178+00 1/1 0/0 0/0 .text            moveLineFall1__14daObjPicture_cFv
 */
void daObjPicture_c::moveLineFall1() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CAF0AC-80CAF0B0 000090 0004+00 0/1 0/0 0/0 .rodata          @4432 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4432 = 8.0f;
COMPILER_STRIP_GATE(0x80CAF0AC, &lit_4432);
#pragma pop

/* 80CAF0B0-80CAF0B4 000094 0004+00 0/1 0/0 0/0 .rodata          @4433 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4433 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CAF0B0, &lit_4433);
#pragma pop

/* 80CAF0B4-80CAF0BC 000098 0008+00 0/1 0/0 0/0 .rodata          @4434 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4434[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CAF0B4, &lit_4434);
#pragma pop

/* 80CAF0BC-80CAF0C4 0000A0 0008+00 0/1 0/0 0/0 .rodata          @4435 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4435[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CAF0BC, &lit_4435);
#pragma pop

/* 80CAF0C4-80CAF0CC 0000A8 0008+00 0/1 0/0 0/0 .rodata          @4436 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4436[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CAF0C4, &lit_4436);
#pragma pop

/* 80CAF0CC-80CAF0D0 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4437 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4437 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x80CAF0CC, &lit_4437);
#pragma pop

/* 80CAF0D0-80CAF0D4 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4438 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4438 = 30.0f;
COMPILER_STRIP_GATE(0x80CAF0D0, &lit_4438);
#pragma pop

/* 80CAF0D4-80CAF0DC 0000B8 0008+00 0/1 0/0 0/0 .rodata          @4440 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4440[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CAF0D4, &lit_4440);
#pragma pop

/* 80CAEA60-80CAED28 0017E0 02C8+00 1/1 0/0 0/0 .text            moveLineFall2__14daObjPicture_cFv
 */
void daObjPicture_c::moveLineFall2() {
    // NONMATCHING
}

/* 80CAED28-80CAEDDC 001AA8 00B4+00 1/1 0/0 0/0 .text            chkHitRope__14daObjPicture_cFv */
void daObjPicture_c::chkHitRope() {
    // NONMATCHING
}

/* 80CAEDDC-80CAEE90 001B5C 00B4+00 1/1 0/0 0/0 .text            chkHitBombTg__14daObjPicture_cFv */
void daObjPicture_c::chkHitBombTg() {
    // NONMATCHING
}

/* 80CAEE90-80CAEF18 001C10 0088+00 1/1 0/0 0/0 .text            setPicAtCol__14daObjPicture_cFv */
void daObjPicture_c::setPicAtCol() {
    // NONMATCHING
}

/* 80CAEF18-80CAEF6C 001C98 0054+00 1/0 0/0 0/0 .text daObjPicture_create__FP14daObjPicture_c */
static void daObjPicture_create(daObjPicture_c* param_0) {
    // NONMATCHING
}

/* 80CAEF6C-80CAEF8C 001CEC 0020+00 1/0 0/0 0/0 .text daObjPicture_Delete__FP14daObjPicture_c */
static void daObjPicture_Delete(daObjPicture_c* param_0) {
    // NONMATCHING
}

/* 80CAEF8C-80CAEFAC 001D0C 0020+00 1/0 0/0 0/0 .text daObjPicture_execute__FP14daObjPicture_c */
static void daObjPicture_execute(daObjPicture_c* param_0) {
    // NONMATCHING
}

/* 80CAEFAC-80CAEFCC 001D2C 0020+00 1/0 0/0 0/0 .text daObjPicture_draw__FP14daObjPicture_c */
static void daObjPicture_draw(daObjPicture_c* param_0) {
    // NONMATCHING
}

/* 80CAEFCC-80CAF014 001D4C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CAF0DC-80CAF0DC 0000C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
