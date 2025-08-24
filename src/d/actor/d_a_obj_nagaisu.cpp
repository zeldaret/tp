/**
 * @file d_a_obj_nagaisu.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_nagaisu.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" static void daObjNagaisu_c_createHeap__FP10fopAc_ac_c();
extern "C" void __ct__14daObjNagaisu_cFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__14daObjNagaisu_cFv();
extern "C" void createHeap__14daObjNagaisu_cFv();
extern "C" void create__14daObjNagaisu_cFv();
extern "C" void Delete__14daObjNagaisu_cFv();
extern "C" void draw__14daObjNagaisu_cFv();
extern "C" void execute__14daObjNagaisu_cFv();
extern "C" void init__14daObjNagaisu_cFv();
extern "C" void setIsu__14daObjNagaisu_cFv();
extern "C" void __ct__15daObjIsuChild_cFv();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__15daObjIsuChild_cFv();
extern "C" void createHeap__15daObjIsuChild_cFv();
extern "C" void create__15daObjIsuChild_cFP14daObjNagaisu_cP9dCcD_Stts();
extern "C" void execute__15daObjIsuChild_cFv();
extern "C" void draw__15daObjIsuChild_cFP6dMdl_c();
extern "C" void Delete__15daObjIsuChild_cFv();
extern "C" void chkHit__15daObjIsuChild_cFv();
extern "C" void callEmt__15daObjIsuChild_cFv();
extern "C" static void daObjNagaisu_create__FP14daObjNagaisu_c();
extern "C" static void daObjNagaisu_Delete__FP14daObjNagaisu_c();
extern "C" static void daObjNagaisu_execute__FP14daObjNagaisu_c();
extern "C" static void daObjNagaisu_draw__FP14daObjNagaisu_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" u8 const REMOVE_ISU_IDX__14daObjNagaisu_c[28];
extern "C" u8 const s_CcDCyl__15daObjIsuChild_c[68];
extern "C" extern char const* const d_a_obj_nagaisu__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void entryObj__6dMdl_cFP10dMdl_obj_c();
extern "C" void entry__10dMdl_mng_cFP12J3DModelDataUsi();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__5csXyzFsss();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_22();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80C9F3B8-80C9F3D8 000078 0020+00 1/1 0/0 0/0 .text daObjNagaisu_c_createHeap__FP10fopAc_ac_c */
static void daObjNagaisu_c_createHeap(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA0400-80CA0400 0000A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CA0400 = "Nagaisu";
#pragma pop

/* 80CA0408-80CA040C -00001 0004+00 4/4 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_nagaisu__stringBase0;

/* 80CA040C-80CA042C -00001 0020+00 1/0 0/0 0/0 .data            daObjNagaisu_METHODS */
static actor_method_class daObjNagaisu_METHODS = {
    (process_method_func)daObjNagaisu_create__FP14daObjNagaisu_c,
    (process_method_func)daObjNagaisu_Delete__FP14daObjNagaisu_c,
    (process_method_func)daObjNagaisu_execute__FP14daObjNagaisu_c,
    0,
    (process_method_func)daObjNagaisu_draw__FP14daObjNagaisu_c,
};

/* 80CA042C-80CA045C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Nagaisu */
extern actor_process_profile_definition g_profile_Obj_Nagaisu = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_Nagaisu,        // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjNagaisu_c),  // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  739,                     // mPriority
  &daObjNagaisu_METHODS,   // sub_method
  0x00040000,              // mStatus
  fopAc_ENV_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80CA045C-80CA0468 000054 000C+00 2/2 0/0 0/0 .data            __vt__15daObjIsuChild_c */
SECTION_DATA extern void* __vt__15daObjIsuChild_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daObjIsuChild_cFv,
};

/* 80CA0468-80CA0474 000060 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80CA0474-80CA0480 00006C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80CA0480-80CA048C 000078 000C+00 2/2 0/0 0/0 .data            __vt__14daObjNagaisu_c */
SECTION_DATA extern void* __vt__14daObjNagaisu_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daObjNagaisu_cFv,
};

/* 80C9F3D8-80C9F45C 000098 0084+00 2/2 0/0 0/0 .text            __ct__14daObjNagaisu_cFv */
daObjNagaisu_c::daObjNagaisu_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA048C-80CA0498 000084 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80CA0498-80CA04A4 000090 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C9F45C-80C9F4B8 00011C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C9F4B8-80C9F5A8 000178 00F0+00 1/0 0/0 0/0 .text            __dt__14daObjNagaisu_cFv */
daObjNagaisu_c::~daObjNagaisu_c() {
    // NONMATCHING
}

/* 80C9F5A8-80C9F668 000268 00C0+00 1/1 0/0 0/0 .text            createHeap__14daObjNagaisu_cFv */
void daObjNagaisu_c::createHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA035C-80CA0378 000000 001C+00 3/3 0/0 0/0 .rodata          REMOVE_ISU_IDX__14daObjNagaisu_c */
SECTION_RODATA u8 const daObjNagaisu_c::REMOVE_ISU_IDX[28] = {
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00,
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x1D,
};
COMPILER_STRIP_GATE(0x80CA035C, &daObjNagaisu_c::REMOVE_ISU_IDX);

/* 80CA0378-80CA03BC 00001C 0044+00 0/1 0/0 0/0 .rodata          s_CcDCyl__15daObjIsuChild_c */
#pragma push
#pragma force_active on
SECTION_RODATA u8 const daObjIsuChild_c::s_CcDCyl[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x40, 0x00, 0x20, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CA0378, &daObjIsuChild_c::s_CcDCyl);
#pragma pop

/* 80CA03BC-80CA03C0 000060 0004+00 1/1 0/0 0/0 .rodata          @3731 */
SECTION_RODATA static f32 const lit_3731 = 3300.0f;
COMPILER_STRIP_GATE(0x80CA03BC, &lit_3731);

/* 80C9F668-80C9F7A8 000328 0140+00 1/1 0/0 0/0 .text            create__14daObjNagaisu_cFv */
void daObjNagaisu_c::create() {
    // NONMATCHING
}

/* 80C9F7A8-80C9F81C 000468 0074+00 1/1 0/0 0/0 .text            Delete__14daObjNagaisu_cFv */
void daObjNagaisu_c::Delete() {
    // NONMATCHING
}

/* 80C9F81C-80C9F8C4 0004DC 00A8+00 1/1 0/0 0/0 .text            draw__14daObjNagaisu_cFv */
void daObjNagaisu_c::draw() {
    // NONMATCHING
}

/* 80C9F8C4-80C9F914 000584 0050+00 1/1 0/0 0/0 .text            execute__14daObjNagaisu_cFv */
void daObjNagaisu_c::execute() {
    // NONMATCHING
}

/* 80C9F914-80C9F944 0005D4 0030+00 1/1 0/0 0/0 .text            init__14daObjNagaisu_cFv */
void daObjNagaisu_c::init() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA03C0-80CA03C4 000064 0004+00 0/1 0/0 0/0 .rodata          @3820 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3820 = 600.0f;
COMPILER_STRIP_GATE(0x80CA03C0, &lit_3820);
#pragma pop

/* 80CA03C4-80CA03C8 000068 0004+00 0/1 0/0 0/0 .rodata          @3821 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3821 = 300.0f;
COMPILER_STRIP_GATE(0x80CA03C4, &lit_3821);
#pragma pop

/* 80CA03C8-80CA03CC 00006C 0004+00 0/1 0/0 0/0 .rodata          @3822 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3822 = 790.0f;
COMPILER_STRIP_GATE(0x80CA03C8, &lit_3822);
#pragma pop

/* 80CA03CC-80CA03D0 000070 0004+00 0/1 0/0 0/0 .rodata          @3823 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3823 = 280.0f;
COMPILER_STRIP_GATE(0x80CA03CC, &lit_3823);
#pragma pop

/* 80C9F944-80C9FA90 000604 014C+00 1/1 0/0 0/0 .text            setIsu__14daObjNagaisu_cFv */
void daObjNagaisu_c::setIsu() {
    // NONMATCHING
}

/* 80C9FA90-80C9FAFC 000750 006C+00 1/1 0/0 0/0 .text            __ct__15daObjIsuChild_cFv */
daObjIsuChild_c::daObjIsuChild_c() {
    // NONMATCHING
}

/* 80C9FAFC-80C9FBC8 0007BC 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_CylFv */
// dCcD_Cyl::~dCcD_Cyl() {
extern "C" void __dt__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80C9FBC8-80C9FC4C 000888 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
// dCcD_Cyl::dCcD_Cyl() {
extern "C" void __ct__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80C9FC4C-80C9FC94 00090C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80C9FC94-80C9FCDC 000954 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C9FCDC-80C9FD4C 00099C 0070+00 3/2 0/0 0/0 .text            __dt__15daObjIsuChild_cFv */
daObjIsuChild_c::~daObjIsuChild_c() {
    // NONMATCHING
}

/* 80C9FD4C-80C9FE28 000A0C 00DC+00 1/1 0/0 0/0 .text            createHeap__15daObjIsuChild_cFv */
void daObjIsuChild_c::createHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA03D0-80CA03D8 000074 0008+00 0/1 0/0 0/0 .rodata          COL_OFFSET_X$3919 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const COL_OFFSET_X[8] = {
    0x00, 0x00, 0x00, 0x3C, 0xFF, 0xFF, 0xFF, 0xC4,
};
COMPILER_STRIP_GATE(0x80CA03D0, &COL_OFFSET_X);
#pragma pop

/* 80CA03D8-80CA03DC 00007C 0004+00 0/1 0/0 0/0 .rodata          @3940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3940 = -50.0f;
COMPILER_STRIP_GATE(0x80CA03D8, &lit_3940);
#pragma pop

/* 80CA03DC-80CA03E0 000080 0004+00 0/1 0/0 0/0 .rodata          @3941 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3941 = 180.0f;
COMPILER_STRIP_GATE(0x80CA03DC, &lit_3941);
#pragma pop

/* 80CA03E0-80CA03E4 000084 0004+00 0/1 0/0 0/0 .rodata          @3942 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3942 = 65.0f;
COMPILER_STRIP_GATE(0x80CA03E0, &lit_3942);
#pragma pop

/* 80CA03E4-80CA03EC 000088 0008+00 0/1 0/0 0/0 .rodata          @3944 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3944[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CA03E4, &lit_3944);
#pragma pop

/* 80C9FE28-80C9FF54 000AE8 012C+00 1/1 0/0 0/0 .text
 * create__15daObjIsuChild_cFP14daObjNagaisu_cP9dCcD_Stts       */
void daObjIsuChild_c::create(daObjNagaisu_c* param_0, dCcD_Stts* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA03EC-80CA03F0 000090 0004+00 1/2 0/0 0/0 .rodata          @3963 */
SECTION_RODATA static f32 const lit_3963 = 1.0f;
COMPILER_STRIP_GATE(0x80CA03EC, &lit_3963);

/* 80CA03F0-80CA03F4 000094 0004+00 1/1 0/0 0/0 .rodata          @3964 */
SECTION_RODATA static f32 const lit_3964 = -1.0f;
COMPILER_STRIP_GATE(0x80CA03F0, &lit_3964);

/* 80C9FF54-80CA0034 000C14 00E0+00 1/1 0/0 0/0 .text            execute__15daObjIsuChild_cFv */
void daObjIsuChild_c::execute() {
    // NONMATCHING
}

/* 80CA0034-80CA00B8 000CF4 0084+00 1/1 0/0 0/0 .text            draw__15daObjIsuChild_cFP6dMdl_c */
void daObjIsuChild_c::draw(dMdl_c* param_0) {
    // NONMATCHING
}

/* 80CA00B8-80CA0118 000D78 0060+00 2/2 0/0 0/0 .text            Delete__15daObjIsuChild_cFv */
void daObjIsuChild_c::Delete() {
    // NONMATCHING
}

/* 80CA0118-80CA0180 000DD8 0068+00 1/1 0/0 0/0 .text            chkHit__15daObjIsuChild_cFv */
void daObjIsuChild_c::chkHit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA03F4-80CA03FC 000098 0008+00 0/1 0/0 0/0 .rodata          PARTICLE_NAME$4004 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const PARTICLE_NAME[8] = {
    0x8A, 0xE7, 0x8A, 0xE8, 0x8A, 0xE9, 0x8A, 0xEA,
};
COMPILER_STRIP_GATE(0x80CA03F4, &PARTICLE_NAME);
#pragma pop

/* 80CA03FC-80CA0400 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4029 = 1.25f;
COMPILER_STRIP_GATE(0x80CA03FC, &lit_4029);
#pragma pop

/* 80CA0180-80CA0258 000E40 00D8+00 1/1 0/0 0/0 .text            callEmt__15daObjIsuChild_cFv */
void daObjIsuChild_c::callEmt() {
    // NONMATCHING
}

/* 80CA0258-80CA02AC 000F18 0054+00 1/0 0/0 0/0 .text daObjNagaisu_create__FP14daObjNagaisu_c */
static void daObjNagaisu_create(daObjNagaisu_c* param_0) {
    // NONMATCHING
}

/* 80CA02AC-80CA02CC 000F6C 0020+00 1/0 0/0 0/0 .text daObjNagaisu_Delete__FP14daObjNagaisu_c */
static void daObjNagaisu_Delete(daObjNagaisu_c* param_0) {
    // NONMATCHING
}

/* 80CA02CC-80CA02EC 000F8C 0020+00 1/0 0/0 0/0 .text daObjNagaisu_execute__FP14daObjNagaisu_c */
static void daObjNagaisu_execute(daObjNagaisu_c* param_0) {
    // NONMATCHING
}

/* 80CA02EC-80CA030C 000FAC 0020+00 1/0 0/0 0/0 .text daObjNagaisu_draw__FP14daObjNagaisu_c */
static void daObjNagaisu_draw(daObjNagaisu_c* param_0) {
    // NONMATCHING
}

/* 80CA030C-80CA0354 000FCC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CA0400-80CA0400 0000A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
