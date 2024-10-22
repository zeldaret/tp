/**
 * @file d_a_coach_2D.cpp
 * 
*/

#include "d/actor/d_a_coach_2D.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void draw__Q211daCoach2D_c6c_listFv();
extern "C" static void daCoach2D_createHeap__FP10fopAc_ac_c();
extern "C" void createHeap__11daCoach2D_cFv();
extern "C" void create__11daCoach2D_cFv();
extern "C" void destroy__11daCoach2D_cFv();
extern "C" void draw__11daCoach2D_cFv();
extern "C" void execute__11daCoach2D_cFv();
extern "C" void drawMeter__11daCoach2D_cFv();
extern "C" void initiate__11daCoach2D_cFv();
extern "C" void update__11daCoach2D_cFv();
extern "C" void setBrkAnime__11daCoach2D_cFb();
extern "C" static void daCoach2D_create__FP11daCoach2D_c();
extern "C" static void daCoach2D_destroy__FP11daCoach2D_c();
extern "C" static void daCoach2D_execute__FP11daCoach2D_c();
extern "C" static void daCoach2D_draw__FP11daCoach2D_c();
extern "C" void draw__12dDlst_base_cFv();
extern "C" void __dt__15daCoach2D_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void __dt__Q211daCoach2D_c6c_listFv();
extern "C" void __dt__11daCoach2D_cFv();
extern "C" void __sinit_d_a_coach_2D_cpp();
extern "C" extern char const* const d_a_coach_2D__stringBase0;

//
// External References:
//

extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getResInfo__14dRes_control_cFPCcP11dRes_info_ci();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c();
extern "C" void getStatus__12dMsgObject_cFv();
extern "C" void __ct__15dMsgScrnLight_cFUcUc();
extern "C" void draw__15dMsgScrnLight_cFPfffffffQ28JUtility6TColorQ28JUtility6TColor();
extern "C" void __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap();
extern "C" void paneTrans__8CPaneMgrFff();
extern "C" void getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs();
extern "C" void dPaneClass_showNullPane__FP9J2DScreen();
extern "C" void show__13CPaneMgrAlphaFv();
extern "C" void hide__13CPaneMgrAlphaFv();
extern "C" void setAlphaRate__13CPaneMgrAlphaFf();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void getBounds__7J2DPaneFv();
extern "C" void __ct__9J2DScreenFv();
extern "C" void setPriority__9J2DScreenFPCcUlP10JKRArchive();
extern "C" void draw__9J2DScreenFffPC14J2DGrafContext();
extern "C" void animation__9J2DScreenFv();
extern "C" void load__20J2DAnmLoaderDataBaseFPCv();
extern "C" void _savegpr_25();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_29();
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 g_meter2_info[248];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 806569CC-80656A18 0000EC 004C+00 1/0 0/0 0/0 .text            draw__Q211daCoach2D_c6c_listFv */
void daCoach2D_c::c_list::draw() {
    // NONMATCHING
}

/* 80656A18-80656A38 000138 0020+00 1/1 0/0 0/0 .text daCoach2D_createHeap__FP10fopAc_ac_c */
static void daCoach2D_createHeap(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80657954-80657954 000030 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80657954 = "Coach2D";
SECTION_DEAD static char const* const stringBase_8065795C = "zelda_game_image_fire_icon.blo";
SECTION_DEAD static char const* const stringBase_8065797B = "zelda_game_image_fire_icon.brk";
#pragma pop

/* 8065799C-806579F4 000000 0058+00 1/1 0/0 0/0 .data
 * aParam$localstatic3$__ct__15daCoach2D_HIO_cFv                */
SECTION_DATA static u8 data_8065799C[88] = {
    0x42, 0x34, 0x00, 0x00, 0xC1, 0x70, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00,
    0x00, 0x40, 0xF0, 0x00, 0x00, 0xC0, 0xD0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x00,
    0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F,
    0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x40, 0xA0, 0x00, 0x00,
    0x40, 0x40, 0x00, 0x00, 0x41, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xB9, 0x00, 0x9B, 0x00,
    0x00, 0xFF, 0xFF, 0xFF, 0x57, 0x00, 0x73, 0x00, 0x00, 0x00, 0x14, 0x00, 0x01,
};

/* 806579F4-806579F8 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_coach_2D__stringBase0;

/* 80656A38-80656D18 000158 02E0+00 1/1 0/0 0/0 .text            createHeap__11daCoach2D_cFv */
void daCoach2D_c::createHeap() {
    // NONMATCHING
}

/* 80656D18-80656D94 000438 007C+00 1/1 0/0 0/0 .text            create__11daCoach2D_cFv */
void daCoach2D_c::create() {
    // NONMATCHING
}

/* 80656D94-80656DE4 0004B4 0050+00 1/1 0/0 0/0 .text            destroy__11daCoach2D_cFv */
void daCoach2D_c::destroy() {
    // NONMATCHING
}

/* 80656DE4-80656E94 000504 00B0+00 1/1 0/0 0/0 .text            draw__11daCoach2D_cFv */
void daCoach2D_c::draw() {
    // NONMATCHING
}

/* 80656E94-80656ED0 0005B4 003C+00 1/1 0/0 0/0 .text            execute__11daCoach2D_cFv */
void daCoach2D_c::execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80657924-80657928 000000 0004+00 2/2 0/0 0/0 .rodata          @4003 */
SECTION_RODATA static f32 const lit_4003 = 180.0f;
COMPILER_STRIP_GATE(0x80657924, &lit_4003);

/* 80657928-8065792C 000004 0004+00 1/2 0/0 0/0 .rodata          @4004 */
SECTION_RODATA static u8 const lit_4004[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80657928, &lit_4004);

/* 8065792C-80657930 000008 0004+00 0/1 0/0 0/0 .rodata          @4005 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4005 = 1.0f;
COMPILER_STRIP_GATE(0x8065792C, &lit_4005);
#pragma pop

/* 80657A90-80657A9C 000008 000C+00 1/1 0/0 0/0 .bss             @3772 */
static u8 lit_3772[12];

/* 80657A9C-80657AF8 000014 005C+00 5/5 0/0 0/0 .bss             l_HOSTIO */
static u8 l_HOSTIO[92];

/* 80656ED0-8065722C 0005F0 035C+00 1/1 0/0 0/0 .text            drawMeter__11daCoach2D_cFv */
void daCoach2D_c::drawMeter() {
    // NONMATCHING
}

/* 8065722C-80657260 00094C 0034+00 1/1 0/0 0/0 .text            initiate__11daCoach2D_cFv */
void daCoach2D_c::initiate() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80657930-80657934 00000C 0004+00 0/1 0/0 0/0 .rodata          @4050 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4050 = 4.0f;
COMPILER_STRIP_GATE(0x80657930, &lit_4050);
#pragma pop

/* 80657934-80657938 000010 0004+00 0/1 0/0 0/0 .rodata          @4051 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4051 = 255.0f;
COMPILER_STRIP_GATE(0x80657934, &lit_4051);
#pragma pop

/* 80657938-8065793C 000014 0004+00 0/1 0/0 0/0 .rodata          @4052 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4052 = 70.0f;
COMPILER_STRIP_GATE(0x80657938, &lit_4052);
#pragma pop

/* 8065793C-80657944 000018 0004+04 0/1 0/0 0/0 .rodata          @4053 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4053[1 + 1 /* padding */] = {
    185.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8065793C, &lit_4053);
#pragma pop

/* 80657944-8065794C 000020 0008+00 1/2 0/0 0/0 .rodata          @4055 */
SECTION_RODATA static u8 const lit_4055[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80657944, &lit_4055);

/* 8065794C-80657954 000028 0008+00 1/2 0/0 0/0 .rodata          @4056 */
SECTION_RODATA static u8 const lit_4056[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8065794C, &lit_4056);

/* 80657260-80657490 000980 0230+00 1/1 0/0 0/0 .text            update__11daCoach2D_cFv */
void daCoach2D_c::update() {
    // NONMATCHING
}

/* 80657490-8065764C 000BB0 01BC+00 2/2 0/0 0/0 .text            setBrkAnime__11daCoach2D_cFb */
void daCoach2D_c::setBrkAnime(bool param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806579F8-80657A18 -00001 0020+00 1/0 0/0 0/0 .data            daCoach2D_METHODS */
static actor_method_class daCoach2D_METHODS = {
    (process_method_func)daCoach2D_create__FP11daCoach2D_c,
    (process_method_func)daCoach2D_destroy__FP11daCoach2D_c,
    (process_method_func)daCoach2D_execute__FP11daCoach2D_c,
    0,
    (process_method_func)daCoach2D_draw__FP11daCoach2D_c,
};

/* 80657A18-80657A48 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_COACH2D */
extern actor_process_profile_definition g_profile_COACH2D = {
  fpcLy_CURRENT_e,       // mLayerID
  3,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_COACH2D,          // mProcName
  &g_fpcLf_Method.mBase, // sub_method
  sizeof(daCoach2D_c),   // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  764,                   // mPriority
  &daCoach2D_METHODS,    // sub_method
  0x00040000,            // mStatus
  fopAc_ACTOR_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/* 80657A48-80657A54 0000AC 000C+00 1/1 0/0 0/0 .data            __vt__12dDlst_base_c */
SECTION_DATA extern void* __vt__12dDlst_base_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)draw__12dDlst_base_cFv,
};

/* 80657A54-80657A60 0000B8 000C+00 2/2 0/0 0/0 .data            __vt__11daCoach2D_c */
SECTION_DATA extern void* __vt__11daCoach2D_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daCoach2D_cFv,
};

/* 80657A60-80657A70 0000C4 0010+00 3/3 0/0 0/0 .data            __vt__Q211daCoach2D_c6c_list */
SECTION_DATA extern void* __vt__Q211daCoach2D_c6c_list[4] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)draw__Q211daCoach2D_c6c_listFv,
    (void*)__dt__Q211daCoach2D_c6c_listFv,
};

/* 8065764C-806576D4 000D6C 0088+00 1/0 0/0 0/0 .text            daCoach2D_create__FP11daCoach2D_c
 */
static void daCoach2D_create(daCoach2D_c* param_0) {
    // NONMATCHING
}

/* 806576D4-806576F4 000DF4 0020+00 1/0 0/0 0/0 .text            daCoach2D_destroy__FP11daCoach2D_c
 */
static void daCoach2D_destroy(daCoach2D_c* param_0) {
    // NONMATCHING
}

/* 806576F4-80657714 000E14 0020+00 1/0 0/0 0/0 .text            daCoach2D_execute__FP11daCoach2D_c
 */
static void daCoach2D_execute(daCoach2D_c* param_0) {
    // NONMATCHING
}

/* 80657714-80657734 000E34 0020+00 1/0 0/0 0/0 .text            daCoach2D_draw__FP11daCoach2D_c */
static void daCoach2D_draw(daCoach2D_c* param_0) {
    // NONMATCHING
}

/* 80657734-80657738 000E54 0004+00 1/0 0/0 0/0 .text            draw__12dDlst_base_cFv */
// void dDlst_base_c::draw() {
extern "C" void draw__12dDlst_base_cFv() {
    /* empty function */
}

/* ############################################################################################## */
/* 80657A70-80657A7C 0000D4 000C+00 2/2 0/0 0/0 .data            __vt__15daCoach2D_HIO_c */
SECTION_DATA extern void* __vt__15daCoach2D_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daCoach2D_HIO_cFv,
};

/* 80657A7C-80657A88 0000E0 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80657738-80657794 000E58 005C+00 2/1 0/0 0/0 .text            __dt__15daCoach2D_HIO_cFv */
daCoach2D_HIO_c::~daCoach2D_HIO_c() {
    // NONMATCHING
}

/* 80657794-806577DC 000EB4 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 806577DC-80657824 000EFC 0048+00 1/0 0/0 0/0 .text            __dt__Q211daCoach2D_c6c_listFv */
daCoach2D_c::c_list::~c_list() {
    // NONMATCHING
}

/* 80657824-8065789C 000F44 0078+00 1/0 0/0 0/0 .text            __dt__11daCoach2D_cFv */
daCoach2D_c::~daCoach2D_c() {
    // NONMATCHING
}

/* 8065789C-80657910 000FBC 0074+00 0/0 1/0 0/0 .text            __sinit_d_a_coach_2D_cpp */
void __sinit_d_a_coach_2D_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8065789C, __sinit_d_a_coach_2D_cpp);
#pragma pop

/* 80657954-80657954 000030 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */