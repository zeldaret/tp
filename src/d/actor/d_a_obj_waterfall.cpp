/**
 * @file d_a_obj_waterfall.cpp
 * 
*/

#include "d/actor/d_a_obj_waterfall.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void s_b_sub__FPvPv();
extern "C" static void s_a_sub__FPvPv();
extern "C" void search_bomb__16daObjWaterFall_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void search_arrow__16daObjWaterFall_cFv();
extern "C" void initBaseMtx__16daObjWaterFall_cFv();
extern "C" void setBaseMtx__16daObjWaterFall_cFv();
extern "C" void Create__16daObjWaterFall_cFv();
extern "C" void create__16daObjWaterFall_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_TriFv();
extern "C" void __ct__8dCcD_TriFv();
extern "C" void __dt__8cM3dGTriFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void execute__16daObjWaterFall_cFv();
extern "C" void push_player__16daObjWaterFall_cFv();
extern "C" bool draw__16daObjWaterFall_cFv();
extern "C" void _delete__16daObjWaterFall_cFv();
extern "C" static void daObjWaterFall_Draw__FP16daObjWaterFall_c();
extern "C" static void daObjWaterFall_Execute__FP16daObjWaterFall_c();
extern "C" static void daObjWaterFall_Delete__FP16daObjWaterFall_c();
extern "C" static void daObjWaterFall_Create__FP10fopAc_ac_c();
extern "C" extern char const* const d_a_obj_waterfall__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void checkWaterBomb__7dBomb_cFP10fopAc_ac_c();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_chasePosXZ__FP4cXyzRC4cXyzf();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_23();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__8dCcD_Tri[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__12cCcD_TriAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];

//
// Declarations:
//

/* ############################################################################################## */
/* 80D2FE50-80D2FE78 000000 0028+00 4/4 0/0 0/0 .bss             target_info */
static u8 target_info[40];

/* 80D2FE78-80D2FE7C 000028 0004+00 4/4 0/0 0/0 .bss             target_info_count */
static u8 target_info_count[4];

/* 80D2EC18-80D2ECA4 000078 008C+00 1/1 0/0 0/0 .text            s_b_sub__FPvPv */
static void s_b_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80D2ECA4-80D2ED14 000104 0070+00 1/1 0/0 0/0 .text            s_a_sub__FPvPv */
static void s_a_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2FD58-80D2FD5C 000000 0004+00 4/4 0/0 0/0 .rodata          @3807 */
SECTION_RODATA static u8 const lit_3807[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D2FD58, &lit_3807);

/* 80D2FD5C-80D2FD60 000004 0004+00 0/4 0/0 0/0 .rodata          @3808 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3808 = 50.0f;
COMPILER_STRIP_GATE(0x80D2FD5C, &lit_3808);
#pragma pop

/* 80D2FD60-80D2FD64 000008 0004+00 0/4 0/0 0/0 .rodata          @3809 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3809 = 100.0f;
COMPILER_STRIP_GATE(0x80D2FD60, &lit_3809);
#pragma pop

/* 80D2ED14-80D2EFF8 000174 02E4+00 1/1 0/0 0/0 .text            search_bomb__16daObjWaterFall_cFv
 */
void daObjWaterFall_c::search_bomb() {
    // NONMATCHING
}

/* 80D2EFF8-80D2F034 000458 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80D2F034-80D2F324 000494 02F0+00 1/1 0/0 0/0 .text            search_arrow__16daObjWaterFall_cFv
 */
void daObjWaterFall_c::search_arrow() {
    // NONMATCHING
}

/* 80D2F324-80D2F344 000784 0020+00 1/1 0/0 0/0 .text            initBaseMtx__16daObjWaterFall_cFv
 */
void daObjWaterFall_c::initBaseMtx() {
    // NONMATCHING
}

/* 80D2F344-80D2F39C 0007A4 0058+00 1/1 0/0 0/0 .text            setBaseMtx__16daObjWaterFall_cFv */
void daObjWaterFall_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2FD64-80D2FD68 00000C 0004+00 0/1 0/0 0/0 .rodata          @3953 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3953 = -50.0f;
COMPILER_STRIP_GATE(0x80D2FD64, &lit_3953);
#pragma pop

/* 80D2FD68-80D2FD6C 000010 0004+00 0/2 0/0 0/0 .rodata          @3954 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3954 = 10.0f;
COMPILER_STRIP_GATE(0x80D2FD68, &lit_3954);
#pragma pop

/* 80D2FD7C-80D2FD7C 000024 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D2FD7C = "sample";
#pragma pop

/* 80D2FD84-80D2FD88 -00001 0004+00 1/1 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_waterfall__stringBase0;

/* 80D2FD88-80D2FDCC 000004 0044+00 1/1 0/0 0/0 .data            l_cyl_src */
static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x2, 0x10}, 0x119}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x84}, // mGObjTg
        {0x2}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        0.0f, // mRadius
        0.0f // mHeight
    } // mCyl
};

/* 80D2F39C-80D2F5A0 0007FC 0204+00 1/1 0/0 0/0 .text            Create__16daObjWaterFall_cFv */
void daObjWaterFall_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2FDCC-80D2FDEC -00001 0020+00 1/0 0/0 0/0 .data            l_daObjWaterFall_Method */
static actor_method_class l_daObjWaterFall_Method = {
    (process_method_func)daObjWaterFall_Create__FP10fopAc_ac_c,
    (process_method_func)daObjWaterFall_Delete__FP16daObjWaterFall_c,
    (process_method_func)daObjWaterFall_Execute__FP16daObjWaterFall_c,
    0,
    (process_method_func)daObjWaterFall_Draw__FP16daObjWaterFall_c,
};

/* 80D2FDEC-80D2FE1C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_WaterFall */
extern actor_process_profile_definition g_profile_Obj_WaterFall = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_Obj_WaterFall,       // mProcName
  &g_fpcLf_Method.mBase,    // sub_method
  sizeof(daObjWaterFall_c), // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  543,                      // mPriority
  &l_daObjWaterFall_Method, // sub_method
  0x00040100,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80D2FE1C-80D2FE28 000098 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80D2FE28-80D2FE34 0000A4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGTri */
SECTION_DATA extern void* __vt__8cM3dGTri[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGTriFv,
};

/* 80D2FE34-80D2FE40 0000B0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80D2FE40-80D2FE4C 0000BC 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D2F5A0-80D2F6DC 000A00 013C+00 1/1 0/0 0/0 .text            create__16daObjWaterFall_cFv */
void daObjWaterFall_c::create() {
    // NONMATCHING
}

/* 80D2F6DC-80D2F6E0 000B3C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80D2F6E0-80D2F728 000B40 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80D2F728-80D2F770 000B88 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80D2F770-80D2F850 000BD0 00E0+00 1/1 0/0 0/0 .text            __dt__8dCcD_TriFv */
// dCcD_Tri::~dCcD_Tri() {
extern "C" void __dt__8dCcD_TriFv() {
    // NONMATCHING
}

/* 80D2F850-80D2F8E0 000CB0 0090+00 1/1 0/0 0/0 .text            __ct__8dCcD_TriFv */
// dCcD_Tri::dCcD_Tri() {
extern "C" void __ct__8dCcD_TriFv() {
    // NONMATCHING
}

/* 80D2F8E0-80D2F93C 000D40 005C+00 1/0 0/0 0/0 .text            __dt__8cM3dGTriFv */
// cM3dGTri::~cM3dGTri() {
extern "C" void __dt__8cM3dGTriFv() {
    // NONMATCHING
}

/* 80D2F93C-80D2F984 000D9C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 80D2F984-80D2FA6C 000DE4 00E8+00 1/1 0/0 0/0 .text            execute__16daObjWaterFall_cFv */
void daObjWaterFall_c::execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2FD6C-80D2FD70 000014 0004+00 0/1 0/0 0/0 .rodata          @4203 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4203 = 25.0f;
COMPILER_STRIP_GATE(0x80D2FD6C, &lit_4203);
#pragma pop

/* 80D2FD70-80D2FD74 000018 0004+00 0/1 0/0 0/0 .rodata          @4204 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4204 = -10.0f;
COMPILER_STRIP_GATE(0x80D2FD70, &lit_4204);
#pragma pop

/* 80D2FD74-80D2FD78 00001C 0004+00 0/1 0/0 0/0 .rodata          @4205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4205 = 60.0f;
COMPILER_STRIP_GATE(0x80D2FD74, &lit_4205);
#pragma pop

/* 80D2FD78-80D2FD7C 000020 0004+00 0/1 0/0 0/0 .rodata          @4206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4206 = -60.0f;
COMPILER_STRIP_GATE(0x80D2FD78, &lit_4206);
#pragma pop

/* 80D2FA6C-80D2FC94 000ECC 0228+00 1/1 0/0 0/0 .text            push_player__16daObjWaterFall_cFv
 */
void daObjWaterFall_c::push_player() {
    // NONMATCHING
}

/* 80D2FC94-80D2FC9C 0010F4 0008+00 1/1 0/0 0/0 .text            draw__16daObjWaterFall_cFv */
bool daObjWaterFall_c::draw() {
    return true;
}

/* 80D2FC9C-80D2FCD0 0010FC 0034+00 1/1 0/0 0/0 .text            _delete__16daObjWaterFall_cFv */
void daObjWaterFall_c::_delete() {
    // NONMATCHING
}

/* 80D2FCD0-80D2FCF0 001130 0020+00 1/0 0/0 0/0 .text daObjWaterFall_Draw__FP16daObjWaterFall_c */
static void daObjWaterFall_Draw(daObjWaterFall_c* param_0) {
    // NONMATCHING
}

/* 80D2FCF0-80D2FD10 001150 0020+00 1/0 0/0 0/0 .text daObjWaterFall_Execute__FP16daObjWaterFall_c
 */
static void daObjWaterFall_Execute(daObjWaterFall_c* param_0) {
    // NONMATCHING
}

/* 80D2FD10-80D2FD30 001170 0020+00 1/0 0/0 0/0 .text daObjWaterFall_Delete__FP16daObjWaterFall_c
 */
static void daObjWaterFall_Delete(daObjWaterFall_c* param_0) {
    // NONMATCHING
}

/* 80D2FD30-80D2FD50 001190 0020+00 1/0 0/0 0/0 .text daObjWaterFall_Create__FP10fopAc_ac_c */
static void daObjWaterFall_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80D2FD7C-80D2FD7C 000024 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */