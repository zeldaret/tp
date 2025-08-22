/**
 * @file d_a_obj_lv4SlideWall.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv4SlideWall.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__15daSldWall_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__11daSldWall_cFv();
extern "C" void CreateHeap__11daSldWall_cFv();
extern "C" void create__11daSldWall_cFv();
extern "C" void Execute__11daSldWall_cFPPA3_A4_f();
extern "C" void moveWall__11daSldWall_cFv();
extern "C" void init_modeWait__11daSldWall_cFv();
extern "C" void modeWait__11daSldWall_cFv();
extern "C" void init_modeMoveOpen__11daSldWall_cFv();
extern "C" void modeMoveOpen__11daSldWall_cFv();
extern "C" void init_modeMoveClose__11daSldWall_cFv();
extern "C" void modeMoveClose__11daSldWall_cFv();
extern "C" void setSe__11daSldWall_cFv();
extern "C" void Draw__11daSldWall_cFv();
extern "C" void Delete__11daSldWall_cFv();
extern "C" static void daSldWall_Draw__FP11daSldWall_c();
extern "C" static void daSldWall_Execute__FP11daSldWall_c();
extern "C" static void daSldWall_Delete__FP11daSldWall_c();
extern "C" static void daSldWall_Create__FP10fopAc_ac_c();
extern "C" void __dt__15daSldWall_HIO_cFv();
extern "C" void __sinit_d_a_obj_lv4SlideWall_cpp();
extern "C" extern char const* const d_a_obj_lv4SlideWall__stringBase0;

//
// External References:
//

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
extern "C" void StartShock__12dVibration_cFii4cXyz();
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
/* 80C626A8-80C626AC 000000 0004+00 4/4 0/0 0/0 .rodata          @3627 */
SECTION_RODATA static f32 const lit_3627 = 900.0f;
COMPILER_STRIP_GATE(0x80C626A8, &lit_3627);

/* 80C626AC-80C626B0 000004 0004+00 1/1 0/0 0/0 .rodata          @3628 */
SECTION_RODATA static f32 const lit_3628 = 4.0f;
COMPILER_STRIP_GATE(0x80C626AC, &lit_3628);

/* 80C626F0-80C626FC -00001 000C+00 0/1 0/0 0/0 .data            @3720 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3720[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__11daSldWall_cFv,
};
#pragma pop

/* 80C626FC-80C62708 -00001 000C+00 0/1 0/0 0/0 .data            @3721 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3721[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMoveOpen__11daSldWall_cFv,
};
#pragma pop

/* 80C62708-80C62714 -00001 000C+00 0/1 0/0 0/0 .data            @3722 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3722[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMoveClose__11daSldWall_cFv,
};
#pragma pop

/* 80C62714-80C62738 000044 0024+00 0/1 0/0 0/0 .data            mode_proc$3719 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C62738-80C62758 -00001 0020+00 1/0 0/0 0/0 .data            l_daSldWall_Method */
static actor_method_class l_daSldWall_Method = {
    (process_method_func)daSldWall_Create__FP10fopAc_ac_c,
    (process_method_func)daSldWall_Delete__FP11daSldWall_c,
    (process_method_func)daSldWall_Execute__FP11daSldWall_c,
    0,
    (process_method_func)daSldWall_Draw__FP11daSldWall_c,
};

/* 80C62758-80C62788 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv4SlideWall */
extern actor_process_profile_definition g_profile_Obj_Lv4SlideWall = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv4SlideWall,  // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daSldWall_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  639,                    // mPriority
  &l_daSldWall_Method,    // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C62788-80C627B0 0000B8 0028+00 1/1 0/0 0/0 .data            __vt__11daSldWall_c */
SECTION_DATA extern void* __vt__11daSldWall_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__11daSldWall_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__11daSldWall_cFPPA3_A4_f,
    (void*)Draw__11daSldWall_cFv,
    (void*)Delete__11daSldWall_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C627B0-80C627BC 0000E0 000C+00 2/2 0/0 0/0 .data            __vt__15daSldWall_HIO_c */
SECTION_DATA extern void* __vt__15daSldWall_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daSldWall_HIO_cFv,
};

/* 80C627BC-80C627C8 0000EC 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80C61E2C-80C61E68 0000EC 003C+00 1/1 0/0 0/0 .text            __ct__15daSldWall_HIO_cFv */
daSldWall_HIO_c::daSldWall_HIO_c() {
    // NONMATCHING
}

/* 80C61E68-80C61EB0 000128 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C626B0-80C626B4 000008 0004+00 2/5 0/0 0/0 .rodata          @3649 */
SECTION_RODATA static u8 const lit_3649[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C626B0, &lit_3649);

/* 80C61EB0-80C61F4C 000170 009C+00 2/2 0/0 0/0 .text            setBaseMtx__11daSldWall_cFv */
void daSldWall_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C626C4-80C626C4 00001C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C626C4 = "L4SldWall";
#pragma pop

/* 80C61F4C-80C61FB8 00020C 006C+00 1/0 0/0 0/0 .text            CreateHeap__11daSldWall_cFv */
void daSldWall_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C627D0-80C627DC 000008 000C+00 1/1 0/0 0/0 .bss             @3621 */
static u8 lit_3621[12];

/* 80C627DC-80C627EC 000014 0010+00 5/5 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[16];

/* 80C61FB8-80C620E4 000278 012C+00 1/1 0/0 0/0 .text            create__11daSldWall_cFv */
void daSldWall_c::create() {
    // NONMATCHING
}

/* 80C620E4-80C62134 0003A4 0050+00 1/0 0/0 0/0 .text            Execute__11daSldWall_cFPPA3_A4_f */
void daSldWall_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C627EC-80C627F0 000024 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80C627EC[4];

/* 80C62134-80C62238 0003F4 0104+00 1/1 0/0 0/0 .text            moveWall__11daSldWall_cFv */
void daSldWall_c::moveWall() {
    // NONMATCHING
}

/* 80C62238-80C62244 0004F8 000C+00 3/3 0/0 0/0 .text            init_modeWait__11daSldWall_cFv */
void daSldWall_c::init_modeWait() {
    // NONMATCHING
}

/* 80C62244-80C62248 000504 0004+00 1/0 0/0 0/0 .text            modeWait__11daSldWall_cFv */
void daSldWall_c::modeWait() {
    /* empty function */
}

/* 80C62248-80C62254 000508 000C+00 1/1 0/0 0/0 .text            init_modeMoveOpen__11daSldWall_cFv
 */
void daSldWall_c::init_modeMoveOpen() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C626B4-80C626B8 00000C 0004+00 0/3 0/0 0/0 .rodata          @3763 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3763 = 1.0f;
COMPILER_STRIP_GATE(0x80C626B4, &lit_3763);
#pragma pop

/* 80C626B8-80C626BC 000010 0004+00 0/3 0/0 0/0 .rodata          @3764 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3764 = -1.0f;
COMPILER_STRIP_GATE(0x80C626B8, &lit_3764);
#pragma pop

/* 80C626BC-80C626C0 000014 0004+00 0/2 0/0 0/0 .rodata          @3765 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3765 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C626BC, &lit_3765);
#pragma pop

/* 80C626C0-80C626C4 000018 0004+00 0/2 0/0 0/0 .rodata          @3766 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3766 = 0.5f;
COMPILER_STRIP_GATE(0x80C626C0, &lit_3766);
#pragma pop

/* 80C62254-80C62314 000514 00C0+00 1/0 0/0 0/0 .text            modeMoveOpen__11daSldWall_cFv */
void daSldWall_c::modeMoveOpen() {
    // NONMATCHING
}

/* 80C62314-80C62320 0005D4 000C+00 1/1 0/0 0/0 .text            init_modeMoveClose__11daSldWall_cFv
 */
void daSldWall_c::init_modeMoveClose() {
    // NONMATCHING
}

/* 80C62320-80C623E0 0005E0 00C0+00 1/0 0/0 0/0 .text            modeMoveClose__11daSldWall_cFv */
void daSldWall_c::modeMoveClose() {
    // NONMATCHING
}

/* 80C623E0-80C6249C 0006A0 00BC+00 2/2 0/0 0/0 .text            setSe__11daSldWall_cFv */
void daSldWall_c::setSe() {
    // NONMATCHING
}

/* 80C6249C-80C62540 00075C 00A4+00 1/0 0/0 0/0 .text            Draw__11daSldWall_cFv */
void daSldWall_c::Draw() {
    // NONMATCHING
}

/* 80C62540-80C62570 000800 0030+00 1/0 0/0 0/0 .text            Delete__11daSldWall_cFv */
void daSldWall_c::Delete() {
    // NONMATCHING
}

/* 80C62570-80C6259C 000830 002C+00 1/0 0/0 0/0 .text            daSldWall_Draw__FP11daSldWall_c */
static void daSldWall_Draw(daSldWall_c* param_0) {
    // NONMATCHING
}

/* 80C6259C-80C625BC 00085C 0020+00 1/0 0/0 0/0 .text            daSldWall_Execute__FP11daSldWall_c
 */
static void daSldWall_Execute(daSldWall_c* param_0) {
    // NONMATCHING
}

/* 80C625BC-80C625DC 00087C 0020+00 1/0 0/0 0/0 .text            daSldWall_Delete__FP11daSldWall_c
 */
static void daSldWall_Delete(daSldWall_c* param_0) {
    // NONMATCHING
}

/* 80C625DC-80C625FC 00089C 0020+00 1/0 0/0 0/0 .text            daSldWall_Create__FP10fopAc_ac_c */
static void daSldWall_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C625FC-80C62658 0008BC 005C+00 2/1 0/0 0/0 .text            __dt__15daSldWall_HIO_cFv */
daSldWall_HIO_c::~daSldWall_HIO_c() {
    // NONMATCHING
}

/* 80C62658-80C62694 000918 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_lv4SlideWall_cpp */
void __sinit_d_a_obj_lv4SlideWall_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C62658, __sinit_d_a_obj_lv4SlideWall_cpp);
#pragma pop

/* 80C626C4-80C626C4 00001C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
