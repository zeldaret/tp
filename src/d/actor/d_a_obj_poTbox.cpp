/**
 * @file d_a_obj_poTbox.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_poTbox.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__14daPoTbox_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__10daPoTbox_cFv();
extern "C" void CreateHeap__10daPoTbox_cFv();
extern "C" void create__10daPoTbox_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void Execute__10daPoTbox_cFPPA3_A4_f();
extern "C" void init_modeWait__10daPoTbox_cFv();
extern "C" void modeWait__10daPoTbox_cFv();
extern "C" void init_modeOpen__10daPoTbox_cFv();
extern "C" void modeOpen__10daPoTbox_cFv();
extern "C" void init_modeOpenEnd__10daPoTbox_cFv();
extern "C" void modeOpenEnd__10daPoTbox_cFv();
extern "C" void init_modeEnd__10daPoTbox_cFv();
extern "C" void modeEnd__10daPoTbox_cFv();
extern "C" void Draw__10daPoTbox_cFv();
extern "C" void Delete__10daPoTbox_cFv();
extern "C" static void daPoTbox_Draw__FP10daPoTbox_c();
extern "C" static void daPoTbox_Execute__FP10daPoTbox_c();
extern "C" static void daPoTbox_Delete__FP10daPoTbox_c();
extern "C" static void daPoTbox_Create__FP10fopAc_ac_c();
extern "C" void __dt__14daPoTbox_HIO_cFv();
extern "C" void __sinit_d_a_obj_poTbox_cpp();
extern "C" extern char const* const d_a_obj_poTbox__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool Create__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80CB4FC0-80CB4FC4 000000 0004+00 1/1 0/0 0/0 .rodata          @3628 */
SECTION_RODATA static f32 const lit_3628 = 2.0f;
COMPILER_STRIP_GATE(0x80CB4FC0, &lit_3628);

/* 80CB4FC4-80CB4FC8 000004 0004+00 1/1 0/0 0/0 .rodata          @3629 */
SECTION_RODATA static f32 const lit_3629 = 12.0f;
COMPILER_STRIP_GATE(0x80CB4FC4, &lit_3629);

/* 80CB4FDC-80CB4FDC 00001C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CB4FDC = "pouBox0";
SECTION_DEAD static char const* const stringBase_80CB4FE4 = "pouBox1";
#pragma pop

/* 80CB500C-80CB5014 -00001 0008+00 3/3 0/0 0/0 .data            l_type */
SECTION_DATA static void* l_type[2] = {
    (void*)&d_a_obj_poTbox__stringBase0,
    (void*)(((char*)&d_a_obj_poTbox__stringBase0) + 0x8),
};

/* 80CB5014-80CB501C 000028 0008+00 1/1 0/0 0/0 .data            l_bmdIdx */
SECTION_DATA static u8 l_bmdIdx[8] = {
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x08,
};

/* 80CB501C-80CB5024 000030 0008+00 1/1 0/0 0/0 .data            l_dzbIdx */
SECTION_DATA static u8 l_dzbIdx[8] = {
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x0B,
};

/* 80CB5024-80CB5030 -00001 000C+00 0/1 0/0 0/0 .data            @3867 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3867[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__10daPoTbox_cFv,
};
#pragma pop

/* 80CB5030-80CB503C -00001 000C+00 0/1 0/0 0/0 .data            @3868 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3868[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeOpen__10daPoTbox_cFv,
};
#pragma pop

/* 80CB503C-80CB5048 -00001 000C+00 0/1 0/0 0/0 .data            @3869 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3869[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeOpenEnd__10daPoTbox_cFv,
};
#pragma pop

/* 80CB5048-80CB5054 -00001 000C+00 0/1 0/0 0/0 .data            @3870 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3870[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeEnd__10daPoTbox_cFv,
};
#pragma pop

/* 80CB5054-80CB5084 000068 0030+00 0/1 0/0 0/0 .data            mode_proc$3866 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80CB5084-80CB50A4 -00001 0020+00 1/0 0/0 0/0 .data            l_daPoTbox_Method */
static actor_method_class l_daPoTbox_Method = {
    (process_method_func)daPoTbox_Create__FP10fopAc_ac_c,
    (process_method_func)daPoTbox_Delete__FP10daPoTbox_c,
    (process_method_func)daPoTbox_Execute__FP10daPoTbox_c,
    0,
    (process_method_func)daPoTbox_Draw__FP10daPoTbox_c,
};

/* 80CB50A4-80CB50D4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_poTbox */
extern actor_process_profile_definition g_profile_Obj_poTbox = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_poTbox,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daPoTbox_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  660,                    // mPriority
  &l_daPoTbox_Method,     // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CB50D4-80CB50E0 0000E8 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80CB50E0-80CB5108 0000F4 0028+00 1/1 0/0 0/0 .data            __vt__10daPoTbox_c */
SECTION_DATA extern void* __vt__10daPoTbox_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__10daPoTbox_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__10daPoTbox_cFPPA3_A4_f,
    (void*)Draw__10daPoTbox_cFv,
    (void*)Delete__10daPoTbox_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80CB5108-80CB5114 00011C 000C+00 2/2 0/0 0/0 .data            __vt__14daPoTbox_HIO_c */
SECTION_DATA extern void* __vt__14daPoTbox_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daPoTbox_HIO_cFv,
};

/* 80CB5114-80CB5120 000128 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80CB424C-80CB4280 0000EC 0034+00 1/1 0/0 0/0 .text            __ct__14daPoTbox_HIO_cFv */
daPoTbox_HIO_c::daPoTbox_HIO_c() {
    // NONMATCHING
}

/* 80CB4280-80CB42C8 000120 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80CB42C8-80CB43D0 000168 0108+00 2/2 0/0 0/0 .text            setBaseMtx__10daPoTbox_cFv */
void daPoTbox_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB4FC8-80CB4FD0 000008 0004+04 3/3 0/0 0/0 .rodata          @3724 */
SECTION_RODATA static f32 const lit_3724[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80CB4FC8, &lit_3724);

/* 80CB43D0-80CB46C4 000270 02F4+00 1/0 0/0 0/0 .text            CreateHeap__10daPoTbox_cFv */
void daPoTbox_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB4FD0-80CB4FD8 000010 0008+00 1/1 0/0 0/0 .rodata          @3835 */
SECTION_RODATA static u8 const lit_3835[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CB4FD0, &lit_3835);

/* 80CB46C4-80CB4954 000564 0290+00 1/1 0/0 0/0 .text            create__10daPoTbox_cFv */
void daPoTbox_c::create() {
    // NONMATCHING
}

/* 80CB4954-80CB499C 0007F4 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB5128-80CB5134 000008 000C+00 1/1 0/0 0/0 .bss             @3622 */
static u8 lit_3622[12];

/* 80CB5134-80CB5140 000014 000C+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[12];

/* 80CB5140-80CB5144 000020 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80CB5140[4];

/* 80CB499C-80CB4AA8 00083C 010C+00 1/0 0/0 0/0 .text            Execute__10daPoTbox_cFPPA3_A4_f */
void daPoTbox_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80CB4AA8-80CB4AB4 000948 000C+00 1/1 0/0 0/0 .text            init_modeWait__10daPoTbox_cFv */
void daPoTbox_c::init_modeWait() {
    // NONMATCHING
}

/* 80CB4AB4-80CB4B10 000954 005C+00 1/0 0/0 0/0 .text            modeWait__10daPoTbox_cFv */
void daPoTbox_c::modeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB4FD8-80CB4FDC 000018 0004+00 1/1 0/0 0/0 .rodata          @3926 */
SECTION_RODATA static f32 const lit_3926 = -1.0f;
COMPILER_STRIP_GATE(0x80CB4FD8, &lit_3926);

/* 80CB4B10-80CB4BF8 0009B0 00E8+00 1/1 0/0 0/0 .text            init_modeOpen__10daPoTbox_cFv */
void daPoTbox_c::init_modeOpen() {
    // NONMATCHING
}

/* 80CB4BF8-80CB4C54 000A98 005C+00 1/0 0/0 0/0 .text            modeOpen__10daPoTbox_cFv */
void daPoTbox_c::modeOpen() {
    // NONMATCHING
}

/* 80CB4C54-80CB4C60 000AF4 000C+00 2/2 0/0 0/0 .text            init_modeOpenEnd__10daPoTbox_cFv */
void daPoTbox_c::init_modeOpenEnd() {
    // NONMATCHING
}

/* 80CB4C60-80CB4C84 000B00 0024+00 1/0 0/0 0/0 .text            modeOpenEnd__10daPoTbox_cFv */
void daPoTbox_c::modeOpenEnd() {
    // NONMATCHING
}

/* 80CB4C84-80CB4C90 000B24 000C+00 1/1 0/0 0/0 .text            init_modeEnd__10daPoTbox_cFv */
void daPoTbox_c::init_modeEnd() {
    // NONMATCHING
}

/* 80CB4C90-80CB4C94 000B30 0004+00 1/0 0/0 0/0 .text            modeEnd__10daPoTbox_cFv */
void daPoTbox_c::modeEnd() {
    /* empty function */
}

/* 80CB4C94-80CB4E14 000B34 0180+00 1/0 0/0 0/0 .text            Draw__10daPoTbox_cFv */
void daPoTbox_c::Draw() {
    // NONMATCHING
}

/* 80CB4E14-80CB4E88 000CB4 0074+00 1/0 0/0 0/0 .text            Delete__10daPoTbox_cFv */
void daPoTbox_c::Delete() {
    // NONMATCHING
}

/* 80CB4E88-80CB4EB4 000D28 002C+00 1/0 0/0 0/0 .text            daPoTbox_Draw__FP10daPoTbox_c */
static void daPoTbox_Draw(daPoTbox_c* param_0) {
    // NONMATCHING
}

/* 80CB4EB4-80CB4ED4 000D54 0020+00 1/0 0/0 0/0 .text            daPoTbox_Execute__FP10daPoTbox_c */
static void daPoTbox_Execute(daPoTbox_c* param_0) {
    // NONMATCHING
}

/* 80CB4ED4-80CB4EF4 000D74 0020+00 1/0 0/0 0/0 .text            daPoTbox_Delete__FP10daPoTbox_c */
static void daPoTbox_Delete(daPoTbox_c* param_0) {
    // NONMATCHING
}

/* 80CB4EF4-80CB4F14 000D94 0020+00 1/0 0/0 0/0 .text            daPoTbox_Create__FP10fopAc_ac_c */
static void daPoTbox_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CB4F14-80CB4F70 000DB4 005C+00 2/1 0/0 0/0 .text            __dt__14daPoTbox_HIO_cFv */
daPoTbox_HIO_c::~daPoTbox_HIO_c() {
    // NONMATCHING
}

/* 80CB4F70-80CB4FAC 000E10 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_poTbox_cpp */
void __sinit_d_a_obj_poTbox_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80CB4F70, __sinit_d_a_obj_poTbox_cpp);
#pragma pop

/* 80CB4FDC-80CB4FDC 00001C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
