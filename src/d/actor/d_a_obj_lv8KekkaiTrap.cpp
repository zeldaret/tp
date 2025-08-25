/**
 * @file d_a_obj_lv8KekkaiTrap.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv8KekkaiTrap.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__17daKekaiTrap_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__13daKekaiTrap_cFv();
extern "C" void CreateHeap__13daKekaiTrap_cFv();
extern "C" void create__13daKekaiTrap_cFv();
extern "C" void Execute__13daKekaiTrap_cFPPA3_A4_f();
extern "C" void moveMain__13daKekaiTrap_cFv();
extern "C" void init_modeWait__13daKekaiTrap_cFv();
extern "C" void modeWait__13daKekaiTrap_cFv();
extern "C" void init_modeMoveUp__13daKekaiTrap_cFv();
extern "C" void modeMoveUp__13daKekaiTrap_cFv();
extern "C" void init_modeMoveDown__13daKekaiTrap_cFv();
extern "C" void modeMoveDown__13daKekaiTrap_cFv();
extern "C" void Draw__13daKekaiTrap_cFv();
extern "C" void Delete__13daKekaiTrap_cFv();
extern "C" static void daKekaiTrap_Draw__FP13daKekaiTrap_c();
extern "C" static void daKekaiTrap_Execute__FP13daKekaiTrap_c();
extern "C" static void daKekaiTrap_Delete__FP13daKekaiTrap_c();
extern "C" static void daKekaiTrap_Create__FP10fopAc_ac_c();
extern "C" void __dt__17daKekaiTrap_HIO_cFv();
extern "C" void __sinit_d_a_obj_lv8KekkaiTrap_cpp();
extern "C" extern char const* const d_a_obj_lv8KekkaiTrap__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
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
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C884E4-80C884E8 000000 0004+00 4/4 0/0 0/0 .rodata          @3651 */
SECTION_RODATA static u8 const lit_3651[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C884E4, &lit_3651);

/* 80C884E8-80C884EC 000004 0004+00 1/1 0/0 0/0 .rodata          @3652 */
SECTION_RODATA static f32 const lit_3652 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C884E8, &lit_3652);

/* 80C884F8-80C884F8 000014 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C884F8 = "Lv8Kekkai";
#pragma pop

/* 80C88524-80C88528 -00001 0004+00 3/3 0/0 0/0 .data            l_type */
SECTION_DATA static void* l_type = (void*)&d_a_obj_lv8KekkaiTrap__stringBase0;

/* 80C88528-80C8852C 000024 0004+00 1/1 0/0 0/0 .data            l_bmdIdx */
SECTION_DATA static u32 l_bmdIdx = 0x00000004;

/* 80C8852C-80C88530 000028 0004+00 1/1 0/0 0/0 .data            l_dzbIdx */
SECTION_DATA static u32 l_dzbIdx = 0x00000007;

/* 80C88530-80C8853C -00001 000C+00 0/1 0/0 0/0 .data            @3756 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3756[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__13daKekaiTrap_cFv,
};
#pragma pop

/* 80C8853C-80C88548 -00001 000C+00 0/1 0/0 0/0 .data            @3757 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3757[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMoveUp__13daKekaiTrap_cFv,
};
#pragma pop

/* 80C88548-80C88554 -00001 000C+00 0/1 0/0 0/0 .data            @3758 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3758[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMoveDown__13daKekaiTrap_cFv,
};
#pragma pop

/* 80C88554-80C88578 000050 0024+00 0/1 0/0 0/0 .data            mode_proc$3755 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C88578-80C88598 -00001 0020+00 1/0 0/0 0/0 .data            l_daKekaiTrap_Method */
static actor_method_class l_daKekaiTrap_Method = {
    (process_method_func)daKekaiTrap_Create__FP10fopAc_ac_c,
    (process_method_func)daKekaiTrap_Delete__FP13daKekaiTrap_c,
    (process_method_func)daKekaiTrap_Execute__FP13daKekaiTrap_c,
    0,
    (process_method_func)daKekaiTrap_Draw__FP13daKekaiTrap_c,
};

/* 80C88598-80C885C8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv8KekkaiTrap */
extern actor_process_profile_definition g_profile_Obj_Lv8KekkaiTrap = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv8KekkaiTrap, // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daKekaiTrap_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  644,                    // mPriority
  &l_daKekaiTrap_Method,  // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C885C8-80C885F0 0000C4 0028+00 1/1 0/0 0/0 .data            __vt__13daKekaiTrap_c */
SECTION_DATA extern void* __vt__13daKekaiTrap_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__13daKekaiTrap_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__13daKekaiTrap_cFPPA3_A4_f,
    (void*)Draw__13daKekaiTrap_cFv,
    (void*)Delete__13daKekaiTrap_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C885F0-80C885FC 0000EC 000C+00 2/2 0/0 0/0 .data            __vt__17daKekaiTrap_HIO_c */
SECTION_DATA extern void* __vt__17daKekaiTrap_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daKekaiTrap_HIO_cFv,
};

/* 80C885FC-80C88608 0000F8 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80C87CAC-80C87CF8 0000EC 004C+00 1/1 0/0 0/0 .text            __ct__17daKekaiTrap_HIO_cFv */
daKekaiTrap_HIO_c::daKekaiTrap_HIO_c() {
    // NONMATCHING
}

/* 80C87CF8-80C87D40 000138 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80C87D40-80C87DC8 000180 0088+00 2/2 0/0 0/0 .text            setBaseMtx__13daKekaiTrap_cFv */
void daKekaiTrap_c::setBaseMtx() {
    // NONMATCHING
}

/* 80C87DC8-80C87E48 000208 0080+00 1/0 0/0 0/0 .text            CreateHeap__13daKekaiTrap_cFv */
void daKekaiTrap_c::CreateHeap() {
    // NONMATCHING
}

/* 80C87E48-80C87FB0 000288 0168+00 1/1 0/0 0/0 .text            create__13daKekaiTrap_cFv */
void daKekaiTrap_c::create() {
    // NONMATCHING
}

/* 80C87FB0-80C88000 0003F0 0050+00 1/0 0/0 0/0 .text            Execute__13daKekaiTrap_cFPPA3_A4_f
 */
void daKekaiTrap_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C88610-80C8861C 000008 000C+00 1/1 0/0 0/0 .bss             @3645 */
static u8 lit_3645[12];

/* 80C8861C-80C88638 000014 001C+00 5/5 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[28];

/* 80C88638-80C8863C 000030 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80C88638[4];

/* 80C88000-80C88104 000440 0104+00 1/1 0/0 0/0 .text            moveMain__13daKekaiTrap_cFv */
void daKekaiTrap_c::moveMain() {
    // NONMATCHING
}

/* 80C88104-80C88110 000544 000C+00 3/3 0/0 0/0 .text            init_modeWait__13daKekaiTrap_cFv */
void daKekaiTrap_c::init_modeWait() {
    // NONMATCHING
}

/* 80C88110-80C88114 000550 0004+00 1/0 0/0 0/0 .text            modeWait__13daKekaiTrap_cFv */
void daKekaiTrap_c::modeWait() {
    /* empty function */
}

/* 80C88114-80C88138 000554 0024+00 1/1 0/0 0/0 .text            init_modeMoveUp__13daKekaiTrap_cFv
 */
void daKekaiTrap_c::init_modeMoveUp() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C884EC-80C884F0 000008 0004+00 0/2 0/0 0/0 .rodata          @3802 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3802 = 30.0f;
COMPILER_STRIP_GATE(0x80C884EC, &lit_3802);
#pragma pop

/* 80C884F0-80C884F4 00000C 0004+00 0/2 0/0 0/0 .rodata          @3803 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3803 = 1.0f;
COMPILER_STRIP_GATE(0x80C884F0, &lit_3803);
#pragma pop

/* 80C884F4-80C884F8 000010 0004+00 0/2 0/0 0/0 .rodata          @3804 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3804 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x80C884F4, &lit_3804);
#pragma pop

/* 80C88138-80C881F0 000578 00B8+00 1/0 0/0 0/0 .text            modeMoveUp__13daKekaiTrap_cFv */
void daKekaiTrap_c::modeMoveUp() {
    // NONMATCHING
}

/* 80C881F0-80C88214 000630 0024+00 1/1 0/0 0/0 .text init_modeMoveDown__13daKekaiTrap_cFv */
void daKekaiTrap_c::init_modeMoveDown() {
    // NONMATCHING
}

/* 80C88214-80C882C8 000654 00B4+00 1/0 0/0 0/0 .text            modeMoveDown__13daKekaiTrap_cFv */
void daKekaiTrap_c::modeMoveDown() {
    // NONMATCHING
}

/* 80C882C8-80C8836C 000708 00A4+00 1/0 0/0 0/0 .text            Draw__13daKekaiTrap_cFv */
void daKekaiTrap_c::Draw() {
    // NONMATCHING
}

/* 80C8836C-80C883AC 0007AC 0040+00 1/0 0/0 0/0 .text            Delete__13daKekaiTrap_cFv */
void daKekaiTrap_c::Delete() {
    // NONMATCHING
}

/* 80C883AC-80C883D8 0007EC 002C+00 1/0 0/0 0/0 .text            daKekaiTrap_Draw__FP13daKekaiTrap_c
 */
static void daKekaiTrap_Draw(daKekaiTrap_c* param_0) {
    // NONMATCHING
}

/* 80C883D8-80C883F8 000818 0020+00 1/0 0/0 0/0 .text daKekaiTrap_Execute__FP13daKekaiTrap_c */
static void daKekaiTrap_Execute(daKekaiTrap_c* param_0) {
    // NONMATCHING
}

/* 80C883F8-80C88418 000838 0020+00 1/0 0/0 0/0 .text daKekaiTrap_Delete__FP13daKekaiTrap_c */
static void daKekaiTrap_Delete(daKekaiTrap_c* param_0) {
    // NONMATCHING
}

/* 80C88418-80C88438 000858 0020+00 1/0 0/0 0/0 .text            daKekaiTrap_Create__FP10fopAc_ac_c
 */
static void daKekaiTrap_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C88438-80C88494 000878 005C+00 2/1 0/0 0/0 .text            __dt__17daKekaiTrap_HIO_cFv */
daKekaiTrap_HIO_c::~daKekaiTrap_HIO_c() {
    // NONMATCHING
}

/* 80C88494-80C884D0 0008D4 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_lv8KekkaiTrap_cpp
 */
void __sinit_d_a_obj_lv8KekkaiTrap_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C88494, __sinit_d_a_obj_lv8KekkaiTrap_cpp);
#pragma pop

/* 80C884F8-80C884F8 000014 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
