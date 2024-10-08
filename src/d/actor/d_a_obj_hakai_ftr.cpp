/**
 * @file d_a_obj_hakai_ftr.cpp
 * 
*/

#include "d/actor/d_a_obj_hakai_ftr.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void daObjHFtr_c_createHeap__FP10fopAc_ac_c();
extern "C" void __ct__11daObjHFtr_cFv();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__11daObjHFtr_cFv();
extern "C" void createHeap__11daObjHFtr_cFv();
extern "C" void create__11daObjHFtr_cFv();
extern "C" void Delete__11daObjHFtr_cFv();
extern "C" void draw__11daObjHFtr_cFv();
extern "C" void execute__11daObjHFtr_cFv();
extern "C" void init__11daObjHFtr_cFv();
extern "C" void setModelMtx__11daObjHFtr_cFv();
extern "C" void chkHit__11daObjHFtr_cFv();
extern "C" void callEmt__11daObjHFtr_cFv();
extern "C" static void daObjHFtr_create__FP11daObjHFtr_c();
extern "C" static void daObjHFtr_Delete__FP11daObjHFtr_c();
extern "C" static void daObjHFtr_execute__FP11daObjHFtr_c();
extern "C" static void daObjHFtr_draw__FP11daObjHFtr_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" u8 const s_CcDCyl__11daObjHFtr_c[68];
extern "C" extern char const* const d_a_obj_hakai_ftr__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
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
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_20();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_20();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80C17498-80C174B8 000078 0020+00 1/1 0/0 0/0 .text daObjHFtr_c_createHeap__FP10fopAc_ac_c */
static void daObjHFtr_c_createHeap(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C18168-80C18168 0000B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C18168 = "HChair";
SECTION_DEAD static char const* const stringBase_80C1816F = "HSofa";
SECTION_DEAD static char const* const stringBase_80C18175 = "HTable";
#pragma pop

/* 80C1817C-80C18188 -00001 000C+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName[3] = {
    (void*)&d_a_obj_hakai_ftr__stringBase0,
    (void*)(((char*)&d_a_obj_hakai_ftr__stringBase0) + 0x7),
    (void*)(((char*)&d_a_obj_hakai_ftr__stringBase0) + 0xD),
};

/* 80C18188-80C181A8 -00001 0020+00 1/0 0/0 0/0 .data            daObjHFtr_METHODS */
static actor_method_class daObjHFtr_METHODS = {
    (process_method_func)daObjHFtr_create__FP11daObjHFtr_c,
    (process_method_func)daObjHFtr_Delete__FP11daObjHFtr_c,
    (process_method_func)daObjHFtr_execute__FP11daObjHFtr_c,
    0,
    (process_method_func)daObjHFtr_draw__FP11daObjHFtr_c,
};

/* 80C181A8-80C181D8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_HFtr */
extern actor_process_profile_definition g_profile_Obj_HFtr = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_HFtr,          // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObjHFtr_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  744,                    // mPriority
  &daObjHFtr_METHODS,     // sub_method
  0x00040180,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C181D8-80C181E4 00005C 000C+00 2/2 0/0 0/0 .data            __vt__11daObjHFtr_c */
SECTION_DATA extern void* __vt__11daObjHFtr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daObjHFtr_cFv,
};

/* 80C174B8-80C1753C 000098 0084+00 2/2 0/0 0/0 .text            __ct__11daObjHFtr_cFv */
daObjHFtr_c::daObjHFtr_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C181E4-80C181F0 000068 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C181F0-80C181FC 000074 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C181FC-80C18208 000080 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C18208-80C18214 00008C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C1753C-80C17608 00011C 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_CylFv */
// dCcD_Cyl::~dCcD_Cyl() {
extern "C" void __dt__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80C17608-80C1768C 0001E8 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
// dCcD_Cyl::dCcD_Cyl() {
extern "C" void __ct__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80C1768C-80C176D4 00026C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80C176D4-80C1771C 0002B4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C1771C-80C17778 0002FC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C17778-80C17874 000358 00FC+00 1/0 0/0 0/0 .text            __dt__11daObjHFtr_cFv */
daObjHFtr_c::~daObjHFtr_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C180B8-80C180C4 000000 000C+00 2/2 0/0 0/0 .rodata          l_bmdIdx */
SECTION_RODATA static u8 const l_bmdIdx[12] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80C180B8, &l_bmdIdx);

/* 80C180C4-80C180D0 00000C 000C+00 1/1 0/0 0/0 .rodata          l_dzbIdx */
SECTION_RODATA static u8 const l_dzbIdx[12] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07,
};
COMPILER_STRIP_GATE(0x80C180C4, &l_dzbIdx);

/* 80C17874-80C179B0 000454 013C+00 1/1 0/0 0/0 .text            createHeap__11daObjHFtr_cFv */
void daObjHFtr_c::createHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C180D0-80C180DC 000018 000C+00 1/1 0/0 0/0 .rodata          l_heapSize */
SECTION_RODATA static u8 const l_heapSize[12] = {
    0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00,
};
COMPILER_STRIP_GATE(0x80C180D0, &l_heapSize);

/* 80C179B0-80C17AC0 000590 0110+00 1/1 0/0 0/0 .text            create__11daObjHFtr_cFv */
void daObjHFtr_c::create() {
    // NONMATCHING
}

/* 80C17AC0-80C17B30 0006A0 0070+00 1/1 0/0 0/0 .text            Delete__11daObjHFtr_cFv */
void daObjHFtr_c::Delete() {
    // NONMATCHING
}

/* 80C17B30-80C17BD4 000710 00A4+00 1/1 0/0 0/0 .text            draw__11daObjHFtr_cFv */
void daObjHFtr_c::draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C180DC-80C18120 000024 0044+00 0/1 0/0 0/0 .rodata          s_CcDCyl__11daObjHFtr_c */
#pragma push
#pragma force_active on
SECTION_RODATA u8 const daObjHFtr_c::s_CcDCyl[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x40, 0x00, 0x20, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C180DC, &daObjHFtr_c::s_CcDCyl);
#pragma pop

/* 80C18120-80C18124 000068 0004+00 2/2 0/0 0/0 .rodata          @3863 */
SECTION_RODATA static f32 const lit_3863 = 1.0f;
COMPILER_STRIP_GATE(0x80C18120, &lit_3863);

/* 80C18124-80C18128 00006C 0004+00 1/1 0/0 0/0 .rodata          @3864 */
SECTION_RODATA static f32 const lit_3864 = -1.0f;
COMPILER_STRIP_GATE(0x80C18124, &lit_3864);

/* 80C17BD4-80C17CD0 0007B4 00FC+00 1/1 0/0 0/0 .text            execute__11daObjHFtr_cFv */
void daObjHFtr_c::execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C18128-80C18140 000070 0018+00 0/1 0/0 0/0 .rodata          COL_OFFSET_X$3868 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const COL_OFFSET_X[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32,
    0xFF, 0xFF, 0xFF, 0xCE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C18128, &COL_OFFSET_X);
#pragma pop

/* 80C18140-80C1814C 000088 000C+00 0/1 0/0 0/0 .rodata          COL_HEIGHT$3869 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const COL_HEIGHT[12] = {
    0x00, 0x00, 0x00, 0xAA, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x6E,
};
COMPILER_STRIP_GATE(0x80C18140, &COL_HEIGHT);
#pragma pop

/* 80C1814C-80C18158 000094 000C+00 0/1 0/0 0/0 .rodata          COL_RADIUS$3870 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const COL_RADIUS[12] = {
    0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00, 0x46, 0x00, 0x00, 0x00, 0x5A,
};
COMPILER_STRIP_GATE(0x80C1814C, &COL_RADIUS);
#pragma pop

/* 80C18158-80C18160 0000A0 0008+00 0/1 0/0 0/0 .rodata          @3896 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3896[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C18158, &lit_3896);
#pragma pop

/* 80C17CD0-80C17E10 0008B0 0140+00 1/1 0/0 0/0 .text            init__11daObjHFtr_cFv */
void daObjHFtr_c::init() {
    // NONMATCHING
}

/* 80C17E10-80C17E74 0009F0 0064+00 2/2 0/0 0/0 .text            setModelMtx__11daObjHFtr_cFv */
void daObjHFtr_c::setModelMtx() {
    // NONMATCHING
}

/* 80C17E74-80C17EDC 000A54 0068+00 1/1 0/0 0/0 .text            chkHit__11daObjHFtr_cFv */
void daObjHFtr_c::chkHit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C18160-80C18168 0000A8 0008+00 1/1 0/0 0/0 .rodata          PARTICLE_NAME$3926 */
SECTION_RODATA static u8 const PARTICLE_NAME[8] = {
    0x8A, 0xE7, 0x8A, 0xE8, 0x8A, 0xE9, 0x8A, 0xEA,
};
COMPILER_STRIP_GATE(0x80C18160, &PARTICLE_NAME);

/* 80C17EDC-80C17FB4 000ABC 00D8+00 1/1 0/0 0/0 .text            callEmt__11daObjHFtr_cFv */
void daObjHFtr_c::callEmt() {
    // NONMATCHING
}

/* 80C17FB4-80C18008 000B94 0054+00 1/0 0/0 0/0 .text            daObjHFtr_create__FP11daObjHFtr_c
 */
static void daObjHFtr_create(daObjHFtr_c* param_0) {
    // NONMATCHING
}

/* 80C18008-80C18028 000BE8 0020+00 1/0 0/0 0/0 .text            daObjHFtr_Delete__FP11daObjHFtr_c
 */
static void daObjHFtr_Delete(daObjHFtr_c* param_0) {
    // NONMATCHING
}

/* 80C18028-80C18048 000C08 0020+00 1/0 0/0 0/0 .text            daObjHFtr_execute__FP11daObjHFtr_c
 */
static void daObjHFtr_execute(daObjHFtr_c* param_0) {
    // NONMATCHING
}

/* 80C18048-80C18068 000C28 0020+00 1/0 0/0 0/0 .text            daObjHFtr_draw__FP11daObjHFtr_c */
static void daObjHFtr_draw(daObjHFtr_c* param_0) {
    // NONMATCHING
}

/* 80C18068-80C180B0 000C48 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C18168-80C18168 0000B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */