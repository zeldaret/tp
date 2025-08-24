/**
 * @file d_a_obj_lv9SwShutter.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv9SwShutter.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__20daLv9SwShutter_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__16daLv9SwShutter_cFv();
extern "C" void CreateHeap__16daLv9SwShutter_cFv();
extern "C" void create__16daLv9SwShutter_cFv();
extern "C" void Execute__16daLv9SwShutter_cFPPA3_A4_f();
extern "C" void moveShutter__16daLv9SwShutter_cFv();
extern "C" void init_modeWait__16daLv9SwShutter_cFv();
extern "C" void modeWait__16daLv9SwShutter_cFv();
extern "C" void init_modeOpen__16daLv9SwShutter_cFv();
extern "C" void modeOpen__16daLv9SwShutter_cFv();
extern "C" void init_modeClose__16daLv9SwShutter_cFv();
extern "C" void modeClose__16daLv9SwShutter_cFv();
extern "C" void Draw__16daLv9SwShutter_cFv();
extern "C" void Delete__16daLv9SwShutter_cFv();
extern "C" static void daLv9SwShutter_Draw__FP16daLv9SwShutter_c();
extern "C" static void daLv9SwShutter_Execute__FP16daLv9SwShutter_c();
extern "C" static void daLv9SwShutter_Delete__FP16daLv9SwShutter_c();
extern "C" static void daLv9SwShutter_Create__FP10fopAc_ac_c();
extern "C" void __dt__20daLv9SwShutter_HIO_cFv();
extern "C" void __sinit_d_a_obj_lv9SwShutter_cpp();
extern "C" extern char const* const d_a_obj_lv9SwShutter__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotS__FPA4_fsss();
extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
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
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
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
/* 80C8D7DC-80C8D7E0 000000 0004+00 3/3 0/0 0/0 .rodata          @3627 */
SECTION_RODATA static f32 const lit_3627 = 6.0f;
COMPILER_STRIP_GATE(0x80C8D7DC, &lit_3627);

/* 80C8D7E0-80C8D7E4 000004 0004+00 0/1 0/0 0/0 .rodata          @3628 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3628 = 30.0f;
COMPILER_STRIP_GATE(0x80C8D7E0, &lit_3628);
#pragma pop

/* 80C8D7E4-80C8D7E8 000008 0004+00 0/1 0/0 0/0 .rodata          @3629 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3629 = 15.0f;
COMPILER_STRIP_GATE(0x80C8D7E4, &lit_3629);
#pragma pop

/* 80C8D82C-80C8D838 -00001 000C+00 0/1 0/0 0/0 .data            @3722 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3722[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__16daLv9SwShutter_cFv,
};
#pragma pop

/* 80C8D838-80C8D844 -00001 000C+00 0/1 0/0 0/0 .data            @3723 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3723[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeOpen__16daLv9SwShutter_cFv,
};
#pragma pop

/* 80C8D844-80C8D850 -00001 000C+00 0/1 0/0 0/0 .data            @3724 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3724[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeClose__16daLv9SwShutter_cFv,
};
#pragma pop

/* 80C8D850-80C8D874 000044 0024+00 0/1 0/0 0/0 .data            mode_proc$3721 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C8D874-80C8D894 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv9SwShutter_Method */
static actor_method_class l_daLv9SwShutter_Method = {
    (process_method_func)daLv9SwShutter_Create__FP10fopAc_ac_c,
    (process_method_func)daLv9SwShutter_Delete__FP16daLv9SwShutter_c,
    (process_method_func)daLv9SwShutter_Execute__FP16daLv9SwShutter_c,
    0,
    (process_method_func)daLv9SwShutter_Draw__FP16daLv9SwShutter_c,
};

/* 80C8D894-80C8D8C4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv9SwShutter */
extern actor_process_profile_definition g_profile_Obj_Lv9SwShutter = {
  fpcLy_CURRENT_e,          // mLayerID
  3,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_Obj_Lv9SwShutter,    // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daLv9SwShutter_c), // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  647,                      // mPriority
  &l_daLv9SwShutter_Method, // sub_method
  0x00040000,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80C8D8C4-80C8D8EC 0000B8 0028+00 1/1 0/0 0/0 .data            __vt__16daLv9SwShutter_c */
SECTION_DATA extern void* __vt__16daLv9SwShutter_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__16daLv9SwShutter_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__16daLv9SwShutter_cFPPA3_A4_f,
    (void*)Draw__16daLv9SwShutter_cFv,
    (void*)Delete__16daLv9SwShutter_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C8D8EC-80C8D8F8 0000E0 000C+00 2/2 0/0 0/0 .data            __vt__20daLv9SwShutter_HIO_c */
SECTION_DATA extern void* __vt__20daLv9SwShutter_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__20daLv9SwShutter_HIO_cFv,
};

/* 80C8D8F8-80C8D904 0000EC 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80C8CEAC-80C8CEF0 0000EC 0044+00 1/1 0/0 0/0 .text            __ct__20daLv9SwShutter_HIO_cFv */
daLv9SwShutter_HIO_c::daLv9SwShutter_HIO_c() {
    // NONMATCHING
}

/* 80C8CEF0-80C8CF38 000130 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C8D7E8-80C8D7EC 00000C 0004+00 3/5 0/0 0/0 .rodata          @3650 */
SECTION_RODATA static u8 const lit_3650[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C8D7E8, &lit_3650);

/* 80C8CF38-80C8CFD4 000178 009C+00 2/2 0/0 0/0 .text            setBaseMtx__16daLv9SwShutter_cFv */
void daLv9SwShutter_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C8D800-80C8D800 000024 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C8D800 = "L9SwShut";
#pragma pop

/* 80C8CFD4-80C8D040 000214 006C+00 1/0 0/0 0/0 .text            CreateHeap__16daLv9SwShutter_cFv */
void daLv9SwShutter_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C8D7EC-80C8D7F0 000010 0004+00 1/2 0/0 0/0 .rodata          @3708 */
SECTION_RODATA static f32 const lit_3708 = 600.0f;
COMPILER_STRIP_GATE(0x80C8D7EC, &lit_3708);

/* 80C8D040-80C8D168 000280 0128+00 1/1 0/0 0/0 .text            create__16daLv9SwShutter_cFv */
void daLv9SwShutter_c::create() {
    // NONMATCHING
}

/* 80C8D168-80C8D1B8 0003A8 0050+00 1/0 0/0 0/0 .text Execute__16daLv9SwShutter_cFPPA3_A4_f */
void daLv9SwShutter_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C8D910-80C8D91C 000008 000C+00 1/1 0/0 0/0 .bss             @3621 */
static u8 lit_3621[12];

/* 80C8D91C-80C8D930 000014 0014+00 3/3 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[20];

/* 80C8D930-80C8D934 000028 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80C8D930[4];

/* 80C8D1B8-80C8D2BC 0003F8 0104+00 1/1 0/0 0/0 .text            moveShutter__16daLv9SwShutter_cFv
 */
void daLv9SwShutter_c::moveShutter() {
    // NONMATCHING
}

/* 80C8D2BC-80C8D2C8 0004FC 000C+00 3/3 0/0 0/0 .text            init_modeWait__16daLv9SwShutter_cFv
 */
void daLv9SwShutter_c::init_modeWait() {
    // NONMATCHING
}

/* 80C8D2C8-80C8D2CC 000508 0004+00 1/0 0/0 0/0 .text            modeWait__16daLv9SwShutter_cFv */
void daLv9SwShutter_c::modeWait() {
    /* empty function */
}

/* 80C8D2CC-80C8D2D8 00050C 000C+00 1/1 0/0 0/0 .text            init_modeOpen__16daLv9SwShutter_cFv
 */
void daLv9SwShutter_c::init_modeOpen() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C8D7F0-80C8D7F4 000014 0004+00 0/1 0/0 0/0 .rodata          @3782 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3782 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C8D7F0, &lit_3782);
#pragma pop

/* 80C8D7F4-80C8D7F8 000018 0004+00 0/2 0/0 0/0 .rodata          @3783 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3783 = 5.0f;
COMPILER_STRIP_GATE(0x80C8D7F4, &lit_3783);
#pragma pop

/* 80C8D7F8-80C8D7FC 00001C 0004+00 0/2 0/0 0/0 .rodata          @3784 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3784 = 1.0f;
COMPILER_STRIP_GATE(0x80C8D7F8, &lit_3784);
#pragma pop

/* 80C8D7FC-80C8D800 000020 0004+00 0/2 0/0 0/0 .rodata          @3785 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3785 = -1.0f;
COMPILER_STRIP_GATE(0x80C8D7FC, &lit_3785);
#pragma pop

/* 80C8D2D8-80C8D440 000518 0168+00 1/0 0/0 0/0 .text            modeOpen__16daLv9SwShutter_cFv */
void daLv9SwShutter_c::modeOpen() {
    // NONMATCHING
}

/* 80C8D440-80C8D458 000680 0018+00 1/1 0/0 0/0 .text init_modeClose__16daLv9SwShutter_cFv */
void daLv9SwShutter_c::init_modeClose() {
    // NONMATCHING
}

/* 80C8D458-80C8D5D0 000698 0178+00 1/0 0/0 0/0 .text            modeClose__16daLv9SwShutter_cFv */
void daLv9SwShutter_c::modeClose() {
    // NONMATCHING
}

/* 80C8D5D0-80C8D674 000810 00A4+00 1/0 0/0 0/0 .text            Draw__16daLv9SwShutter_cFv */
void daLv9SwShutter_c::Draw() {
    // NONMATCHING
}

/* 80C8D674-80C8D6A4 0008B4 0030+00 1/0 0/0 0/0 .text            Delete__16daLv9SwShutter_cFv */
void daLv9SwShutter_c::Delete() {
    // NONMATCHING
}

/* 80C8D6A4-80C8D6D0 0008E4 002C+00 1/0 0/0 0/0 .text daLv9SwShutter_Draw__FP16daLv9SwShutter_c */
static void daLv9SwShutter_Draw(daLv9SwShutter_c* param_0) {
    // NONMATCHING
}

/* 80C8D6D0-80C8D6F0 000910 0020+00 1/0 0/0 0/0 .text daLv9SwShutter_Execute__FP16daLv9SwShutter_c
 */
static void daLv9SwShutter_Execute(daLv9SwShutter_c* param_0) {
    // NONMATCHING
}

/* 80C8D6F0-80C8D710 000930 0020+00 1/0 0/0 0/0 .text daLv9SwShutter_Delete__FP16daLv9SwShutter_c
 */
static void daLv9SwShutter_Delete(daLv9SwShutter_c* param_0) {
    // NONMATCHING
}

/* 80C8D710-80C8D730 000950 0020+00 1/0 0/0 0/0 .text daLv9SwShutter_Create__FP10fopAc_ac_c */
static void daLv9SwShutter_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C8D730-80C8D78C 000970 005C+00 2/1 0/0 0/0 .text            __dt__20daLv9SwShutter_HIO_cFv */
daLv9SwShutter_HIO_c::~daLv9SwShutter_HIO_c() {
    // NONMATCHING
}

/* 80C8D78C-80C8D7C8 0009CC 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_lv9SwShutter_cpp */
void __sinit_d_a_obj_lv9SwShutter_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C8D78C, __sinit_d_a_obj_lv9SwShutter_cpp);
#pragma pop

/* 80C8D800-80C8D800 000024 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
