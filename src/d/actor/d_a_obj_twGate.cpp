/**
 * @file d_a_obj_twGate.cpp
 * 
*/

#include "d/actor/d_a_obj_twGate.h"
#include "dol2asm.h"




//
// Forward References:
//

extern "C" void __ct__14daTwGate_HIO_cFv();
extern "C" void __dt__18fOpAcm_HIO_entry_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__10daTwGate_cFv();
extern "C" void CreateHeap__10daTwGate_cFv();
extern "C" void create__10daTwGate_cFv();
extern "C" void __dt__8cM3dGLinFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void Execute__10daTwGate_cFPPA3_A4_f();
extern "C" void Draw__10daTwGate_cFv();
extern "C" void Delete__10daTwGate_cFv();
extern "C" static void daTwGate_Draw__FP10daTwGate_c();
extern "C" static void daTwGate_Execute__FP10daTwGate_c();
extern "C" static void daTwGate_Delete__FP10daTwGate_c();
extern "C" static void daTwGate_Create__FP10fopAc_ac_c();
extern "C" void __dt__14daTwGate_HIO_cFv();
extern "C" void __sinit_d_a_obj_twGate_cpp();
extern "C" extern char const* const d_a_obj_twGate__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isDarkClearLV__21dSv_player_status_b_cCFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
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
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf();
extern "C" void SetStartEnd__8cM3dGLinFRC3VecRC3Vec();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80D20308-80D2030C 000000 0004+00 4/4 0/0 0/0 .rodata          @3638 */
SECTION_RODATA static f32 const lit_3638 = 1900.0f;
COMPILER_STRIP_GATE(0x80D20308, &lit_3638);

/* 80D20554-80D20554 00024C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D20554 = "twGtFiro";
SECTION_DEAD static char const* const stringBase_80D2055D = "twGtK0102";
SECTION_DEAD static char const* const stringBase_80D20567 = "twGtK0709";
SECTION_DEAD static char const* const stringBase_80D20571 = "";
SECTION_DEAD static char const* const stringBase_80D20572 = "twGnFiro";
SECTION_DEAD static char const* const stringBase_80D2057B = "twGnK0102";
SECTION_DEAD static char const* const stringBase_80D20585 = "twGnK0709";
SECTION_DEAD static char const* const stringBase_80D2058F = "twGnK079b";
SECTION_DEAD static char const* const stringBase_80D20599 = "twGnK1415";
SECTION_DEAD static char const* const stringBase_80D205A3 = "twGnK0616";
#pragma pop

/* 80D205B0-80D205E4 -00001 0034+00 3/3 0/0 0/0 .data            l_resNameIdx */
SECTION_DATA static void* l_resNameIdx[13] = {
    (void*)&d_a_obj_twGate__stringBase0,
    (void*)(((char*)&d_a_obj_twGate__stringBase0) + 0x9),
    (void*)(((char*)&d_a_obj_twGate__stringBase0) + 0x13),
    (void*)(((char*)&d_a_obj_twGate__stringBase0) + 0x1D),
    (void*)(((char*)&d_a_obj_twGate__stringBase0) + 0x1D),
    (void*)(((char*)&d_a_obj_twGate__stringBase0) + 0x1D),
    (void*)(((char*)&d_a_obj_twGate__stringBase0) + 0x1E),
    (void*)(((char*)&d_a_obj_twGate__stringBase0) + 0x27),
    (void*)(((char*)&d_a_obj_twGate__stringBase0) + 0x31),
    (void*)(((char*)&d_a_obj_twGate__stringBase0) + 0x3B),
    (void*)(((char*)&d_a_obj_twGate__stringBase0) + 0x45),
    (void*)(((char*)&d_a_obj_twGate__stringBase0) + 0x4F),
    (void*)(((char*)&d_a_obj_twGate__stringBase0) + 0x1D),
};

/* 80D205E4-80D20604 -00001 0020+00 1/0 0/0 0/0 .data            l_daTwGate_Method */
static actor_method_class l_daTwGate_Method = {
    (process_method_func)daTwGate_Create__FP10fopAc_ac_c,
    (process_method_func)daTwGate_Delete__FP10daTwGate_c,
    (process_method_func)daTwGate_Execute__FP10daTwGate_c,
    0,
    (process_method_func)daTwGate_Draw__FP10daTwGate_c,
};

/* 80D20604-80D20634 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_TwGate */
extern actor_process_profile_definition g_profile_Obj_TwGate = {
  fpcLy_CURRENT_e,               // mLayerID
  3,                             // mListID
  fpcPi_CURRENT_e,               // mListPrio
  PROC_Obj_TwGate,               // mProcName
  &g_fpcLf_Method.base,         // sub_method
  sizeof(daTwGate_c),            // mSize
  0,                             // mSizeOther
  0,                             // mParameters
  &g_fopAc_Method.base,          // sub_method
  539,                           // mPriority
  &l_daTwGate_Method,            // sub_method
  0x00044000,                    // mStatus
  fopAc_ACTOR_e,                 // mActorType
  fopAc_CULLBOX_CUSTOM_e,        // cullType
};

/* 80D20634-80D20640 000084 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGLin */
SECTION_DATA extern void* __vt__8cM3dGLin[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGLinFv,
};

/* 80D20640-80D2064C 000090 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80D2064C-80D20674 00009C 0028+00 1/1 0/0 0/0 .data            __vt__10daTwGate_c */
SECTION_DATA extern void* __vt__10daTwGate_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__10daTwGate_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__10daTwGate_cFPPA3_A4_f,
    (void*)Draw__10daTwGate_cFv,
    (void*)Delete__10daTwGate_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80D20674-80D20680 0000C4 000C+00 2/2 0/0 0/0 .data            __vt__14daTwGate_HIO_c */
SECTION_DATA extern void* __vt__14daTwGate_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daTwGate_HIO_cFv,
};

/* 80D20680-80D2068C 0000D0 000C+00 3/3 0/0 0/0 .data            __vt__18fOpAcm_HIO_entry_c */
SECTION_DATA extern void* __vt__18fOpAcm_HIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18fOpAcm_HIO_entry_cFv,
};

/* 80D2068C-80D20698 0000DC 000C+00 4/4 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80D1FAAC-80D1FAE0 0000EC 0034+00 1/1 0/0 0/0 .text            __ct__14daTwGate_HIO_cFv */
daTwGate_HIO_c::daTwGate_HIO_c() {
    // NONMATCHING
}

/* 80D1FAE0-80D1FB3C 000120 005C+00 1/0 0/0 0/0 .text            __dt__18fOpAcm_HIO_entry_cFv */
// fOpAcm_HIO_entry_c::~fOpAcm_HIO_entry_c() {
extern "C" void __dt__18fOpAcm_HIO_entry_cFv() {
    // NONMATCHING
}

/* 80D1FB3C-80D1FB84 00017C 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80D1FB84-80D1FC0C 0001C4 0088+00 2/2 0/0 0/0 .text            setBaseMtx__10daTwGate_cFv */
void daTwGate_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2030C-80D20340 000004 0034+00 0/2 0/0 0/0 .rodata          l_bmdIdx */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_bmdIdx[52] = {
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00,
    0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80D2030C, &l_bmdIdx);
#pragma pop

/* 80D20340-80D20374 000038 0034+00 0/1 0/0 0/0 .rodata          l_dzbIdx */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_dzbIdx[52] = {
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x0F, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00,
    0x0F, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80D20340, &l_dzbIdx);
#pragma pop

/* 80D20374-80D203A8 00006C 0034+00 0/1 0/0 0/0 .rodata          l_btkIdx */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_btkIdx[52] = {
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00,
    0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80D20374, &l_btkIdx);
#pragma pop

/* 80D203A8-80D203DC 0000A0 0034+00 0/1 0/0 0/0 .rodata          l_brkIdx */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_brkIdx[52] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00,
    0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80D203A8, &l_brkIdx);
#pragma pop

/* 80D203DC-80D20410 0000D4 0034+00 0/2 0/0 0/0 .rodata          l_twFlagIdx */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_twFlagIdx[52] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00,
    0x00, 0x00, 0x04, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
    0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80D203DC, &l_twFlagIdx);
#pragma pop

/* 80D20410-80D204AC 000108 009C+00 0/1 0/0 0/0 .rodata          l_cheeckPos0 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_cheeckPos0[156] = {
    0xC4, 0x0F, 0x26, 0xDC, 0x43, 0x9D, 0x73, 0xAC, 0xC6, 0xA2, 0x70, 0x96, 0xC6, 0xBF, 0xB1, 0xCF,
    0xC5, 0xE2, 0x17, 0xEE, 0x47, 0x8F, 0x69, 0x9F, 0x45, 0x6E, 0xD7, 0xA7, 0x45, 0x92, 0x14, 0x72,
    0xC7, 0x69, 0x42, 0x6A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xC6, 0xB7, 0x79, 0x28, 0xC5, 0xE1, 0x0D, 0xB1, 0x47, 0x90, 0x52, 0xEC,
    0x45, 0x37, 0xF9, 0x42, 0x45, 0x96, 0x23, 0xC0, 0xC7, 0x6C, 0x76, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D20410, &l_cheeckPos0);
#pragma pop

/* 80D204AC-80D20548 0001A4 009C+00 0/1 0/0 0/0 .rodata          l_cheeckPos1 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_cheeckPos1[156] = {
    0xC3, 0x32, 0x31, 0xB6, 0x43, 0x9A, 0x59, 0x66, 0xC6, 0xA1, 0x62, 0xA7, 0xC6, 0xB8, 0x74, 0x9D,
    0xC5, 0xE2, 0x17, 0xEE, 0x47, 0x90, 0x9D, 0xE0, 0x45, 0x38, 0x98, 0xDA, 0x45, 0x92, 0x14, 0x72,
    0xC7, 0x6C, 0x68, 0xD8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xC6, 0xBF, 0x33, 0x2A, 0xC5, 0xE1, 0x0D, 0xB1, 0x47, 0x8F, 0x28, 0x60,
    0x45, 0x6E, 0xD2, 0xF5, 0x45, 0x96, 0x23, 0xC0, 0xC7, 0x69, 0x3B, 0xDA, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D204AC, &l_cheeckPos1);
#pragma pop

/* 80D20548-80D2054C 000240 0004+00 0/2 0/0 0/0 .rodata          @3693 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3693 = 1.0f;
COMPILER_STRIP_GATE(0x80D20548, &lit_3693);
#pragma pop

/* 80D1FC0C-80D1FD44 00024C 0138+00 1/0 0/0 0/0 .text            CreateHeap__10daTwGate_cFv */
void daTwGate_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2054C-80D20550 000244 0004+00 0/2 0/0 0/0 .rodata          @3769 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3769 = -1.0f;
COMPILER_STRIP_GATE(0x80D2054C, &lit_3769);
#pragma pop

/* 80D1FD44-80D1FF14 000384 01D0+00 1/1 0/0 0/0 .text            create__10daTwGate_cFv */
void daTwGate_c::create() {
    // NONMATCHING
}

/* 80D1FF14-80D1FF5C 000554 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGLinFv */
// cM3dGLin::~cM3dGLin() {
extern "C" void __dt__8cM3dGLinFv() {
    // NONMATCHING
}

/* 80D1FF5C-80D1FFA4 00059C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D20550-80D20554 000248 0004+00 0/1 0/0 0/0 .rodata          @3837 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3837[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D20550, &lit_3837);
#pragma pop

/* 80D206A0-80D206AC 000008 000C+00 1/1 0/0 0/0 .bss             @3630 */
static u8 lit_3630[12];

/* 80D206AC-80D206B4 000014 0008+00 2/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[8];

/* 80D1FFA4-80D200B4 0005E4 0110+00 1/0 0/0 0/0 .text            Execute__10daTwGate_cFPPA3_A4_f */
void daTwGate_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80D200B4-80D20180 0006F4 00CC+00 1/0 0/0 0/0 .text            Draw__10daTwGate_cFv */
void daTwGate_c::Draw() {
    // NONMATCHING
}

/* 80D20180-80D201C0 0007C0 0040+00 1/0 0/0 0/0 .text            Delete__10daTwGate_cFv */
void daTwGate_c::Delete() {
    // NONMATCHING
}

/* 80D201C0-80D201EC 000800 002C+00 1/0 0/0 0/0 .text            daTwGate_Draw__FP10daTwGate_c */
static void daTwGate_Draw(daTwGate_c* param_0) {
    // NONMATCHING
}

/* 80D201EC-80D2020C 00082C 0020+00 1/0 0/0 0/0 .text            daTwGate_Execute__FP10daTwGate_c */
static void daTwGate_Execute(daTwGate_c* param_0) {
    // NONMATCHING
}

/* 80D2020C-80D2022C 00084C 0020+00 1/0 0/0 0/0 .text            daTwGate_Delete__FP10daTwGate_c */
static void daTwGate_Delete(daTwGate_c* param_0) {
    // NONMATCHING
}

/* 80D2022C-80D2024C 00086C 0020+00 1/0 0/0 0/0 .text            daTwGate_Create__FP10fopAc_ac_c */
static void daTwGate_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80D2024C-80D202B8 00088C 006C+00 2/1 0/0 0/0 .text            __dt__14daTwGate_HIO_cFv */
daTwGate_HIO_c::~daTwGate_HIO_c() {
    // NONMATCHING
}

/* 80D202B8-80D202F4 0008F8 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_twGate_cpp */
void __sinit_d_a_obj_twGate_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80D202B8, __sinit_d_a_obj_twGate_cpp);
#pragma pop

/* 80D20554-80D20554 00024C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
