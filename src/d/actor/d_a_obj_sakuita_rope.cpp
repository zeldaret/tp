/**
 * @file d_a_obj_sakuita_rope.cpp
 * 
*/

#include "d/actor/d_a_obj_sakuita_rope.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void setModelData__9Sakuita_cFP12J3DModelData();
extern "C" void create__9Sakuita_cFP4cXyzsSc();
extern "C" void execute__9Sakuita_cFP4cXyzs();
extern "C" void draw__9Sakuita_cFv();
extern "C" void initBaseMtx__9Sakuita_cFv();
extern "C" void setBaseMtx__9Sakuita_cFv();
extern "C" void setPlatePos__9Sakuita_cFP4cXyz();
extern "C" void calcAngle__9Sakuita_cFv();
extern "C" void create_init__14daObjItaRope_cFv();
extern "C" void initBaseMtx__14daObjItaRope_cFv();
extern "C" void setBaseMtx__14daObjItaRope_cFv();
extern "C" void setNormalRopePos__14daObjItaRope_cFv();
extern "C" static void createSolidHeap__FP10fopAc_ac_c();
extern "C" void __dt__9Sakuita_cFv();
extern "C" void __ct__9Sakuita_cFv();
extern "C" void __dt__10RopeWork_cFv();
extern "C" void __ct__10RopeWork_cFv();
extern "C" static void daObjItaRope_Draw__FP14daObjItaRope_c();
extern "C" static void daObjItaRope_Execute__FP14daObjItaRope_c();
extern "C" static bool daObjItaRope_IsDelete__FP14daObjItaRope_c();
extern "C" static void daObjItaRope_Delete__FP14daObjItaRope_c();
extern "C" static void daObjItaRope_Create__FP10fopAc_ac_c();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" u8 const M_attr__14daObjItaRope_c[20];
extern "C" extern char const* const d_a_obj_sakuita_rope__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi();
extern "C" void update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc();
extern "C" void removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai();
extern "C" void entrySimpleModel__14dComIfG_play_cFP8J3DModeli();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void dKyw_get_AllWind_vecpow__FP4cXyz();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void* __nwa__FUl();
extern "C" void __dl__FPv();
extern "C" void __destroy_new_array();
extern "C" void __construct_new_array();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19mDoExt_3DlineMat1_c[5];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];

//
// Declarations:
//

/* 80CC5238-80CC527C 000078 0044+00 1/1 0/0 0/0 .text setModelData__9Sakuita_cFP12J3DModelData */
void Sakuita_c::setModelData(J3DModelData* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC68F0-80CC6904 000000 0014+00 4/4 0/0 0/0 .rodata          M_attr__14daObjItaRope_c */
SECTION_RODATA u8 const daObjItaRope_c::M_attr[20] = {
    0xC0, 0xA0, 0x00, 0x00, 0x3E, 0x4C, 0xCC, 0xCD, 0x3F, 0x00,
    0x00, 0x00, 0x3F, 0x4C, 0xCC, 0xCD, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CC68F0, &daObjItaRope_c::M_attr);

/* 80CC6904-80CC6908 000014 0004+00 1/2 0/0 0/0 .rodata          @3634 */
SECTION_RODATA static f32 const lit_3634 = 75.0f;
COMPILER_STRIP_GATE(0x80CC6904, &lit_3634);

/* 80CC6908-80CC690C 000018 0004+00 1/4 0/0 0/0 .rodata          @3635 */
SECTION_RODATA static u8 const lit_3635[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CC6908, &lit_3635);

/* 80CC527C-80CC5314 0000BC 0098+00 1/1 0/0 0/0 .text            create__9Sakuita_cFP4cXyzsSc */
void Sakuita_c::create(cXyz* param_0, s16 param_1, s8 param_2) {
    // NONMATCHING
}

/* 80CC5314-80CC5354 000154 0040+00 1/1 0/0 0/0 .text            execute__9Sakuita_cFP4cXyzs */
void Sakuita_c::execute(cXyz* param_0, s16 param_1) {
    // NONMATCHING
}

/* 80CC5354-80CC5390 000194 003C+00 1/1 0/0 0/0 .text            draw__9Sakuita_cFv */
void Sakuita_c::draw() {
    // NONMATCHING
}

/* 80CC5390-80CC53B0 0001D0 0020+00 1/1 0/0 0/0 .text            initBaseMtx__9Sakuita_cFv */
void Sakuita_c::initBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC690C-80CC6910 00001C 0004+00 1/1 0/0 0/0 .rodata          @3669 */
SECTION_RODATA static f32 const lit_3669 = 6.0f;
COMPILER_STRIP_GATE(0x80CC690C, &lit_3669);

/* 80CC53B0-80CC5444 0001F0 0094+00 2/2 0/0 0/0 .text            setBaseMtx__9Sakuita_cFv */
void Sakuita_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC6910-80CC6918 000020 0008+00 0/2 0/0 0/0 .rodata          @3746 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3746[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CC6910, &lit_3746);
#pragma pop

/* 80CC6918-80CC6920 000028 0008+00 0/2 0/0 0/0 .rodata          @3747 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3747[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CC6918, &lit_3747);
#pragma pop

/* 80CC6920-80CC6928 000030 0008+00 0/2 0/0 0/0 .rodata          @3748 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3748[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CC6920, &lit_3748);
#pragma pop

/* 80CC6928-80CC692C 000038 0004+00 0/2 0/0 0/0 .rodata          @3749 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3749 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CC6928, &lit_3749);
#pragma pop

/* 80CC692C-80CC6930 00003C 0004+00 0/1 0/0 0/0 .rodata          @3750 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3750 = -60.0f;
COMPILER_STRIP_GATE(0x80CC692C, &lit_3750);
#pragma pop

/* 80CC6930-80CC6934 000040 0004+00 0/1 0/0 0/0 .rodata          @3751 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3751 = 15.0f;
COMPILER_STRIP_GATE(0x80CC6930, &lit_3751);
#pragma pop

/* 80CC6934-80CC6938 000044 0004+00 0/1 0/0 0/0 .rodata          @3752 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3752 = 100.0f;
COMPILER_STRIP_GATE(0x80CC6934, &lit_3752);
#pragma pop

/* 80CC6938-80CC693C 000048 0004+00 0/1 0/0 0/0 .rodata          @3753 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3753 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CC6938, &lit_3753);
#pragma pop

/* 80CC693C-80CC6940 00004C 0004+00 0/1 0/0 0/0 .rodata          @3754 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3754 = 8192.0f;
COMPILER_STRIP_GATE(0x80CC693C, &lit_3754);
#pragma pop

/* 80CC6940-80CC6944 000050 0004+00 0/1 0/0 0/0 .rodata          @3755 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3755 = 900.0f;
COMPILER_STRIP_GATE(0x80CC6940, &lit_3755);
#pragma pop

/* 80CC6944-80CC6948 000054 0004+00 0/2 0/0 0/0 .rodata          @3756 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3756 = -75.0f;
COMPILER_STRIP_GATE(0x80CC6944, &lit_3756);
#pragma pop

/* 80CC6948-80CC6950 000058 0004+04 0/2 0/0 0/0 .rodata          @3757 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3757[1 + 1 /* padding */] = {
    0.5f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80CC6948, &lit_3757);
#pragma pop

/* 80CC5444-80CC5720 000284 02DC+00 1/1 0/0 0/0 .text            setPlatePos__9Sakuita_cFP4cXyz */
void Sakuita_c::setPlatePos(cXyz* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC6950-80CC6958 000060 0008+00 1/2 0/0 0/0 .rodata          @3776 */
SECTION_RODATA static u8 const lit_3776[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CC6950, &lit_3776);

/* 80CC5720-80CC57E4 000560 00C4+00 2/2 0/0 0/0 .text            calcAngle__9Sakuita_cFv */
void Sakuita_c::calcAngle() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC6958-80CC695C 000068 0004+00 0/1 0/0 0/0 .rodata          @3953 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3953 = 1.0f;
COMPILER_STRIP_GATE(0x80CC6958, &lit_3953);
#pragma pop

/* 80CC695C-80CC6960 00006C 0004+00 0/1 0/0 0/0 .rodata          @3954 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3954 = 3.0f;
COMPILER_STRIP_GATE(0x80CC695C, &lit_3954);
#pragma pop

/* 80CC6960-80CC6964 000070 0004+00 0/1 0/0 0/0 .rodata          @3955 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3955 = -140.0f;
COMPILER_STRIP_GATE(0x80CC6960, &lit_3955);
#pragma pop

/* 80CC6964-80CC6968 000074 0004+00 0/1 0/0 0/0 .rodata          @3956 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3956 = 20.0f;
COMPILER_STRIP_GATE(0x80CC6964, &lit_3956);
#pragma pop

/* 80CC6970-80CC6970 000080 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CC6970 = "A_Sakuita";
SECTION_DEAD static char const* const stringBase_80CC697A = "A_Sakuita.bmd";
#pragma pop

/* 80CC6998-80CC699C -00001 0004+00 4/4 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_sakuita_rope__stringBase0;

/* 80CC57E4-80CC5E48 000624 0664+00 1/1 0/0 0/0 .text            create_init__14daObjItaRope_cFv */
void daObjItaRope_c::create_init() {
    // NONMATCHING
}

/* 80CC5E48-80CC5E7C 000C88 0034+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjItaRope_cFv */
void daObjItaRope_c::initBaseMtx() {
    // NONMATCHING
}

/* 80CC5E7C-80CC5ECC 000CBC 0050+00 1/1 0/0 0/0 .text            setBaseMtx__14daObjItaRope_cFv */
void daObjItaRope_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC6968-80CC696C 000078 0004+00 0/1 0/0 0/0 .rodata          @4094 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4094 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CC6968, &lit_4094);
#pragma pop

/* 80CC5ECC-80CC622C 000D0C 0360+00 2/2 0/0 0/0 .text setNormalRopePos__14daObjItaRope_cFv */
void daObjItaRope_c::setNormalRopePos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC696C-80CC6970 00007C 0004+00 1/1 0/0 0/0 .rodata          @4149 */
SECTION_RODATA static f32 const lit_4149 = 2.0f;
COMPILER_STRIP_GATE(0x80CC696C, &lit_4149);

/* 80CC6970-80CC6970 000080 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CC6988 = "Obj_Rope.bti";
#pragma pop

/* 80CC622C-80CC63E4 00106C 01B8+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static void createSolidHeap(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CC63E4-80CC6420 001224 003C+00 2/2 0/0 0/0 .text            __dt__9Sakuita_cFv */
Sakuita_c::~Sakuita_c() {
    // NONMATCHING
}

/* 80CC6420-80CC6424 001260 0004+00 1/1 0/0 0/0 .text            __ct__9Sakuita_cFv */
Sakuita_c::Sakuita_c() {
    /* empty function */
}

/* 80CC6424-80CC6460 001264 003C+00 2/2 0/0 0/0 .text            __dt__10RopeWork_cFv */
RopeWork_c::~RopeWork_c() {
    // NONMATCHING
}

/* 80CC6460-80CC6464 0012A0 0004+00 1/1 0/0 0/0 .text            __ct__10RopeWork_cFv */
RopeWork_c::RopeWork_c() {
    /* empty function */
}

/* ############################################################################################## */
/* 80CC699C-80CC69A0 000004 0004+00 1/1 0/0 0/0 .data
 * l_color$localstatic3$draw__14daObjItaRope_cFv                */
SECTION_DATA static u8 data_80CC699C[4] = {
    0x14,
    0x0F,
    0x00,
    0xFF,
};

/* 80CC6464-80CC652C 0012A4 00C8+00 1/0 0/0 0/0 .text daObjItaRope_Draw__FP14daObjItaRope_c */
static void daObjItaRope_Draw(daObjItaRope_c* param_0) {
    // NONMATCHING
}

/* 80CC652C-80CC6610 00136C 00E4+00 1/0 0/0 0/0 .text daObjItaRope_Execute__FP14daObjItaRope_c */
static void daObjItaRope_Execute(daObjItaRope_c* param_0) {
    // NONMATCHING
}

/* 80CC6610-80CC6618 001450 0008+00 1/0 0/0 0/0 .text daObjItaRope_IsDelete__FP14daObjItaRope_c */
static bool daObjItaRope_IsDelete(daObjItaRope_c* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80CC69A0-80CC69C0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjItaRope_Method */
static actor_method_class l_daObjItaRope_Method = {
    (process_method_func)daObjItaRope_Create__FP10fopAc_ac_c,
    (process_method_func)daObjItaRope_Delete__FP14daObjItaRope_c,
    (process_method_func)daObjItaRope_Execute__FP14daObjItaRope_c,
    (process_method_func)daObjItaRope_IsDelete__FP14daObjItaRope_c,
    (process_method_func)daObjItaRope_Draw__FP14daObjItaRope_c,
};

/* 80CC69C0-80CC69F0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_ItaRope */
extern actor_process_profile_definition g_profile_Obj_ItaRope = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_ItaRope,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjItaRope_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  35,                     // mPriority
  &l_daObjItaRope_Method, // sub_method
  0x00040180,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CC69F0-80CC6A04 000058 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 80CC6A04-80CC6A10 00006C 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80CC6A10-80CC6A1C 000078 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80CC6618-80CC6738 001458 0120+00 1/0 0/0 0/0 .text daObjItaRope_Delete__FP14daObjItaRope_c */
static void daObjItaRope_Delete(daObjItaRope_c* param_0) {
    // NONMATCHING
}

/* 80CC6738-80CC6844 001578 010C+00 1/0 0/0 0/0 .text            daObjItaRope_Create__FP10fopAc_ac_c
 */
static void daObjItaRope_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CC6844-80CC68A0 001684 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CC68A0-80CC68E8 0016E0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CC6970-80CC6970 000080 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
