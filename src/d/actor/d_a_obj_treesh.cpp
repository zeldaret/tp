/**
 * @file d_a_obj_treesh.cpp
 * 
*/

#include "d/actor/d_a_obj_treesh.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__14daTreeSh_HIO_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" void initBaseMtx__10daTreeSh_cFv();
extern "C" void setBaseMtx__10daTreeSh_cFv();
extern "C" void CreateHeap__10daTreeSh_cFv();
extern "C" void Create__10daTreeSh_cFv();
extern "C" void create1st__10daTreeSh_cFv();
extern "C" void Execute__10daTreeSh_cFPPA3_A4_f();
extern "C" void Draw__10daTreeSh_cFv();
extern "C" void Delete__10daTreeSh_cFv();
extern "C" static void daTreeSh_create1st__FP10daTreeSh_c();
extern "C" void __ct__5csXyzFv();
extern "C" static void daTreeSh_MoveBGDelete__FP10daTreeSh_c();
extern "C" static void daTreeSh_MoveBGExecute__FP10daTreeSh_c();
extern "C" static void daTreeSh_MoveBGDraw__FP10daTreeSh_c();
extern "C" void __dt__14daTreeSh_HIO_cFv();
extern "C" void __sinit_d_a_obj_treesh_cpp();
extern "C" extern char const* const d_a_obj_treesh__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void dKyw_get_wind_pow__Fv();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_23();
extern "C" void _savegpr_28();
extern "C" void _restgpr_23();
extern "C" void _restgpr_28();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80D1F8E8-80D1F8E8 000020 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D1F8E8 = "M_TreeSh";
#pragma pop

/* 80D1F8F4-80D1F8F8 -00001 0004+00 4/4 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_treesh__stringBase0;

/* 80D1F8F8-80D1F918 -00001 0020+00 1/0 0/0 0/0 .data            daTreeSh_METHODS */
static actor_method_class daTreeSh_METHODS = {
    (process_method_func)daTreeSh_create1st__FP10daTreeSh_c,
    (process_method_func)daTreeSh_MoveBGDelete__FP10daTreeSh_c,
    (process_method_func)daTreeSh_MoveBGExecute__FP10daTreeSh_c,
    0,
    (process_method_func)daTreeSh_MoveBGDraw__FP10daTreeSh_c,
};

/* 80D1F918-80D1F948 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TREESH */
extern actor_process_profile_definition g_profile_TREESH = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_TREESH,            // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daTreeSh_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  431,                    // mPriority
  &daTreeSh_METHODS,      // sub_method
  0x00040180,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D1F948-80D1F970 000054 0028+00 1/1 0/0 0/0 .data            __vt__10daTreeSh_c */
SECTION_DATA extern void* __vt__10daTreeSh_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__10daTreeSh_cFv,
    (void*)Create__10daTreeSh_cFv,
    (void*)Execute__10daTreeSh_cFPPA3_A4_f,
    (void*)Draw__10daTreeSh_cFv,
    (void*)Delete__10daTreeSh_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80D1F970-80D1F97C 00007C 000C+00 2/2 0/0 0/0 .data            __vt__14daTreeSh_HIO_c */
SECTION_DATA extern void* __vt__14daTreeSh_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daTreeSh_HIO_cFv,
};

/* 80D1F97C-80D1F988 000088 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80D1F0CC-80D1F10C 0000EC 0040+00 1/1 0/0 0/0 .text            __ct__14daTreeSh_HIO_cFv */
daTreeSh_HIO_c::daTreeSh_HIO_c() {
    // NONMATCHING
}

/* 80D1F10C-80D1F148 00012C 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80D1F148-80D1F190 000168 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80D1F190-80D1F258 0001B0 00C8+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80D1F258-80D1F294 000278 003C+00 1/1 0/0 0/0 .text            initBaseMtx__10daTreeSh_cFv */
void daTreeSh_c::initBaseMtx() {
    // NONMATCHING
}

/* 80D1F294-80D1F2E8 0002B4 0054+00 1/1 0/0 0/0 .text            setBaseMtx__10daTreeSh_cFv */
void daTreeSh_c::setBaseMtx() {
    // NONMATCHING
}

/* 80D1F2E8-80D1F358 000308 0070+00 1/0 0/0 0/0 .text            CreateHeap__10daTreeSh_cFv */
void daTreeSh_c::CreateHeap() {
    // NONMATCHING
}

/* 80D1F358-80D1F414 000378 00BC+00 1/0 0/0 0/0 .text            Create__10daTreeSh_cFv */
void daTreeSh_c::Create() {
    // NONMATCHING
}

/* 80D1F414-80D1F49C 000434 0088+00 1/1 0/0 0/0 .text            create1st__10daTreeSh_cFv */
void daTreeSh_c::create1st() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D1F8C8-80D1F8CC 000000 0004+00 1/1 0/0 0/0 .rodata          @3767 */
SECTION_RODATA static f32 const lit_3767 = 15.0f;
COMPILER_STRIP_GATE(0x80D1F8C8, &lit_3767);

/* 80D1F8CC-80D1F8D0 000004 0004+00 0/1 0/0 0/0 .rodata          @3768 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3768 = 30.0f;
COMPILER_STRIP_GATE(0x80D1F8CC, &lit_3768);
#pragma pop

/* 80D1F8D0-80D1F8D4 000008 0004+00 0/1 0/0 0/0 .rodata          @3769 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3769 = 1.0f;
COMPILER_STRIP_GATE(0x80D1F8D0, &lit_3769);
#pragma pop

/* 80D1F8D4-80D1F8D8 00000C 0004+00 0/1 0/0 0/0 .rodata          @3770 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3770 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D1F8D4, &lit_3770);
#pragma pop

/* 80D1F8D8-80D1F8E0 000010 0004+04 0/1 0/0 0/0 .rodata          @3771 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3771[1 + 1 /* padding */] = {
    1.0f / 5.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80D1F8D8, &lit_3771);
#pragma pop

/* 80D1F8E0-80D1F8E8 000018 0008+00 0/1 0/0 0/0 .rodata          @3774 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3774[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D1F8E0, &lit_3774);
#pragma pop

/* 80D1F990-80D1F99C 000008 000C+00 1/1 0/0 0/0 .bss             @3618 */
static u8 lit_3618[12];

/* 80D1F99C-80D1F9AC 000014 0010+00 2/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[16];

/* 80D1F49C-80D1F648 0004BC 01AC+00 1/0 0/0 0/0 .text            Execute__10daTreeSh_cFPPA3_A4_f */
void daTreeSh_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80D1F648-80D1F6EC 000668 00A4+00 1/0 0/0 0/0 .text            Draw__10daTreeSh_cFv */
void daTreeSh_c::Draw() {
    // NONMATCHING
}

/* 80D1F6EC-80D1F720 00070C 0034+00 1/0 0/0 0/0 .text            Delete__10daTreeSh_cFv */
void daTreeSh_c::Delete() {
    // NONMATCHING
}

/* 80D1F720-80D1F7AC 000740 008C+00 1/0 0/0 0/0 .text            daTreeSh_create1st__FP10daTreeSh_c
 */
static void daTreeSh_create1st(daTreeSh_c* param_0) {
    // NONMATCHING
}

/* 80D1F7AC-80D1F7B0 0007CC 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80D1F7B0-80D1F7D0 0007D0 0020+00 1/0 0/0 0/0 .text daTreeSh_MoveBGDelete__FP10daTreeSh_c */
static void daTreeSh_MoveBGDelete(daTreeSh_c* param_0) {
    // NONMATCHING
}

/* 80D1F7D0-80D1F7F0 0007F0 0020+00 1/0 0/0 0/0 .text daTreeSh_MoveBGExecute__FP10daTreeSh_c */
static void daTreeSh_MoveBGExecute(daTreeSh_c* param_0) {
    // NONMATCHING
}

/* 80D1F7F0-80D1F81C 000810 002C+00 1/0 0/0 0/0 .text            daTreeSh_MoveBGDraw__FP10daTreeSh_c
 */
static void daTreeSh_MoveBGDraw(daTreeSh_c* param_0) {
    // NONMATCHING
}

/* 80D1F81C-80D1F878 00083C 005C+00 2/1 0/0 0/0 .text            __dt__14daTreeSh_HIO_cFv */
daTreeSh_HIO_c::~daTreeSh_HIO_c() {
    // NONMATCHING
}

/* 80D1F878-80D1F8B4 000898 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_treesh_cpp */
void __sinit_d_a_obj_treesh_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80D1F878, __sinit_d_a_obj_treesh_cpp);
#pragma pop

/* 80D1F8E8-80D1F8E8 000020 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
