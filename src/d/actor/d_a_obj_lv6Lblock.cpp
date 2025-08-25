/**
 * @file d_a_obj_lv6Lblock.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv6Lblock.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__17daLv6Lblock_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__13daLv6Lblock_cFv();
extern "C" void CreateHeap__13daLv6Lblock_cFv();
extern "C" void create__13daLv6Lblock_cFv();
extern "C" void isSwitch__13daLv6Lblock_cFv();
extern "C" void Execute__13daLv6Lblock_cFPPA3_A4_f();
extern "C" void moveBlock__13daLv6Lblock_cFv();
extern "C" void init_modeWait__13daLv6Lblock_cFv();
extern "C" void modeWait__13daLv6Lblock_cFv();
extern "C" void init_modeLiftUp__13daLv6Lblock_cFv();
extern "C" void modeLiftUp__13daLv6Lblock_cFv();
extern "C" void init_modeLiftDown__13daLv6Lblock_cFv();
extern "C" void modeLiftDown__13daLv6Lblock_cFv();
extern "C" void Draw__13daLv6Lblock_cFv();
extern "C" void Delete__13daLv6Lblock_cFv();
extern "C" static void daLv6Lblock_Draw__FP13daLv6Lblock_c();
extern "C" static void daLv6Lblock_Execute__FP13daLv6Lblock_c();
extern "C" static void daLv6Lblock_Delete__FP13daLv6Lblock_c();
extern "C" static void daLv6Lblock_Create__FP10fopAc_ac_c();
extern "C" void __dt__17daLv6Lblock_HIO_cFv();
extern "C" void __sinit_d_a_obj_lv6Lblock_cpp();
extern "C" extern char const* const d_a_obj_lv6Lblock__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
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
/* 80C73CBC-80C73CC0 000000 0004+00 3/3 0/0 0/0 .rodata          @3627 */
SECTION_RODATA static f32 const lit_3627 = 15.0f;
COMPILER_STRIP_GATE(0x80C73CBC, &lit_3627);

/* 80C73D04-80C73D0C 000020 0008+00 1/1 0/0 0/0 .data            l_liftUpMax */
SECTION_DATA static u8 l_liftUpMax[8] = {
    0x43, 0x96, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00,
};

/* 80C73D0C-80C73D18 -00001 000C+00 0/1 0/0 0/0 .data            @3734 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3734[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__13daLv6Lblock_cFv,
};
#pragma pop

/* 80C73D18-80C73D24 -00001 000C+00 0/1 0/0 0/0 .data            @3735 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3735[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeLiftUp__13daLv6Lblock_cFv,
};
#pragma pop

/* 80C73D24-80C73D30 -00001 000C+00 0/1 0/0 0/0 .data            @3736 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3736[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeLiftDown__13daLv6Lblock_cFv,
};
#pragma pop

/* 80C73D30-80C73D54 00004C 0024+00 0/1 0/0 0/0 .data            mode_proc$3733 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C73D54-80C73D74 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv6Lblock_Method */
static actor_method_class l_daLv6Lblock_Method = {
    (process_method_func)daLv6Lblock_Create__FP10fopAc_ac_c,
    (process_method_func)daLv6Lblock_Delete__FP13daLv6Lblock_c,
    (process_method_func)daLv6Lblock_Execute__FP13daLv6Lblock_c,
    0,
    (process_method_func)daLv6Lblock_Draw__FP13daLv6Lblock_c,
};

/* 80C73D74-80C73DA4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6Lblock */
extern actor_process_profile_definition g_profile_Obj_Lv6Lblock = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv6Lblock,     // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daLv6Lblock_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  625,                    // mPriority
  &l_daLv6Lblock_Method,  // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C73DA4-80C73DCC 0000C0 0028+00 1/1 0/0 0/0 .data            __vt__13daLv6Lblock_c */
SECTION_DATA extern void* __vt__13daLv6Lblock_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__13daLv6Lblock_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__13daLv6Lblock_cFPPA3_A4_f,
    (void*)Draw__13daLv6Lblock_cFv,
    (void*)Delete__13daLv6Lblock_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C73DCC-80C73DD8 0000E8 000C+00 2/2 0/0 0/0 .data            __vt__17daLv6Lblock_HIO_c */
SECTION_DATA extern void* __vt__17daLv6Lblock_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daLv6Lblock_HIO_cFv,
};

/* 80C73DD8-80C73DE4 0000F4 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80C733EC-80C7341C 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__17daLv6Lblock_HIO_cFv */
daLv6Lblock_HIO_c::daLv6Lblock_HIO_c() {
    // NONMATCHING
}

/* 80C7341C-80C73464 00011C 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80C73464-80C734EC 000164 0088+00 2/2 0/0 0/0 .text            setBaseMtx__13daLv6Lblock_cFv */
void daLv6Lblock_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C73CD8-80C73CD8 00001C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C73CD8 = "L6Lblock";
#pragma pop

/* 80C734EC-80C73558 0001EC 006C+00 1/0 0/0 0/0 .text            CreateHeap__13daLv6Lblock_cFv */
void daLv6Lblock_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C73CC0-80C73CC4 000004 0004+00 1/1 0/0 0/0 .rodata          @3709 */
SECTION_RODATA static f32 const lit_3709 = 300.0f;
COMPILER_STRIP_GATE(0x80C73CC0, &lit_3709);

/* 80C73558-80C736C0 000258 0168+00 1/1 0/0 0/0 .text            create__13daLv6Lblock_cFv */
void daLv6Lblock_c::create() {
    // NONMATCHING
}

/* 80C736C0-80C7370C 0003C0 004C+00 2/2 0/0 0/0 .text            isSwitch__13daLv6Lblock_cFv */
void daLv6Lblock_c::isSwitch() {
    // NONMATCHING
}

/* 80C7370C-80C7375C 00040C 0050+00 1/0 0/0 0/0 .text            Execute__13daLv6Lblock_cFPPA3_A4_f
 */
void daLv6Lblock_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C73DF0-80C73DFC 000008 000C+00 1/1 0/0 0/0 .bss             @3621 */
static u8 lit_3621[12];

/* 80C73DFC-80C73E0C 000014 0010+00 3/3 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[16];

/* 80C73E0C-80C73E10 000024 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80C73E0C[4];

/* 80C7375C-80C73850 00045C 00F4+00 1/1 0/0 0/0 .text            moveBlock__13daLv6Lblock_cFv */
void daLv6Lblock_c::moveBlock() {
    // NONMATCHING
}

/* 80C73850-80C7385C 000550 000C+00 3/3 0/0 0/0 .text            init_modeWait__13daLv6Lblock_cFv */
void daLv6Lblock_c::init_modeWait() {
    // NONMATCHING
}

/* 80C7385C-80C73860 00055C 0004+00 1/0 0/0 0/0 .text            modeWait__13daLv6Lblock_cFv */
void daLv6Lblock_c::modeWait() {
    /* empty function */
}

/* 80C73860-80C7386C 000560 000C+00 1/1 0/0 0/0 .text            init_modeLiftUp__13daLv6Lblock_cFv
 */
void daLv6Lblock_c::init_modeLiftUp() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C73CC4-80C73CC8 000008 0004+00 0/2 0/0 0/0 .rodata          @3777 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3777 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C73CC4, &lit_3777);
#pragma pop

/* 80C73CC8-80C73CCC 00000C 0004+00 0/2 0/0 0/0 .rodata          @3778 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3778 = 5.0f;
COMPILER_STRIP_GATE(0x80C73CC8, &lit_3778);
#pragma pop

/* 80C73CCC-80C73CD0 000010 0004+00 0/2 0/0 0/0 .rodata          @3779 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3779 = 1.0f;
COMPILER_STRIP_GATE(0x80C73CCC, &lit_3779);
#pragma pop

/* 80C73CD0-80C73CD4 000014 0004+00 0/2 0/0 0/0 .rodata          @3780 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3780 = -1.0f;
COMPILER_STRIP_GATE(0x80C73CD0, &lit_3780);
#pragma pop

/* 80C73CD4-80C73CD8 000018 0004+00 0/2 0/0 0/0 .rodata          @3781 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3781[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C73CD4, &lit_3781);
#pragma pop

/* 80C7386C-80C7398C 00056C 0120+00 1/0 0/0 0/0 .text            modeLiftUp__13daLv6Lblock_cFv */
void daLv6Lblock_c::modeLiftUp() {
    // NONMATCHING
}

/* 80C7398C-80C73998 00068C 000C+00 1/1 0/0 0/0 .text init_modeLiftDown__13daLv6Lblock_cFv */
void daLv6Lblock_c::init_modeLiftDown() {
    // NONMATCHING
}

/* 80C73998-80C73AB0 000698 0118+00 1/0 0/0 0/0 .text            modeLiftDown__13daLv6Lblock_cFv */
void daLv6Lblock_c::modeLiftDown() {
    // NONMATCHING
}

/* 80C73AB0-80C73B54 0007B0 00A4+00 1/0 0/0 0/0 .text            Draw__13daLv6Lblock_cFv */
void daLv6Lblock_c::Draw() {
    // NONMATCHING
}

/* 80C73B54-80C73B84 000854 0030+00 1/0 0/0 0/0 .text            Delete__13daLv6Lblock_cFv */
void daLv6Lblock_c::Delete() {
    // NONMATCHING
}

/* 80C73B84-80C73BB0 000884 002C+00 1/0 0/0 0/0 .text            daLv6Lblock_Draw__FP13daLv6Lblock_c
 */
static void daLv6Lblock_Draw(daLv6Lblock_c* param_0) {
    // NONMATCHING
}

/* 80C73BB0-80C73BD0 0008B0 0020+00 1/0 0/0 0/0 .text daLv6Lblock_Execute__FP13daLv6Lblock_c */
static void daLv6Lblock_Execute(daLv6Lblock_c* param_0) {
    // NONMATCHING
}

/* 80C73BD0-80C73BF0 0008D0 0020+00 1/0 0/0 0/0 .text daLv6Lblock_Delete__FP13daLv6Lblock_c */
static void daLv6Lblock_Delete(daLv6Lblock_c* param_0) {
    // NONMATCHING
}

/* 80C73BF0-80C73C10 0008F0 0020+00 1/0 0/0 0/0 .text            daLv6Lblock_Create__FP10fopAc_ac_c
 */
static void daLv6Lblock_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C73C10-80C73C6C 000910 005C+00 2/1 0/0 0/0 .text            __dt__17daLv6Lblock_HIO_cFv */
daLv6Lblock_HIO_c::~daLv6Lblock_HIO_c() {
    // NONMATCHING
}

/* 80C73C6C-80C73CA8 00096C 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_lv6Lblock_cpp */
void __sinit_d_a_obj_lv6Lblock_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C73C6C, __sinit_d_a_obj_lv6Lblock_cpp);
#pragma pop

/* 80C73CD8-80C73CD8 00001C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
