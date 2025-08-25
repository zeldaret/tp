/**
 * @file d_a_obj_lv6egate.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv6egate.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void create1st__15daObjLv6EGate_cFv();
extern "C" void setMtx__15daObjLv6EGate_cFv();
extern "C" bool CreateHeap__15daObjLv6EGate_cFv();
extern "C" void Create__15daObjLv6EGate_cFv();
extern "C" void offDisp__15daObjLv6EGate_cFv();
extern "C" void onDisp__15daObjLv6EGate_cFv();
extern "C" void Execute__15daObjLv6EGate_cFPPA3_A4_f();
extern "C" void Draw__15daObjLv6EGate_cFv();
extern "C" void Delete__15daObjLv6EGate_cFv();
extern "C" static void daObjLv6EGate_create1st__FP15daObjLv6EGate_c();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" static void daObjLv6EGate_MoveBGDelete__FP15daObjLv6EGate_c();
extern "C" static void daObjLv6EGate_MoveBGExecute__FP15daObjLv6EGate_c();
extern "C" static void daObjLv6EGate_MoveBGDraw__FP15daObjLv6EGate_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__15daObjLv6EGate_cFv();
extern "C" extern char const* const d_a_obj_lv6egate__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_25();
extern "C" void _restgpr_25();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
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

/* ############################################################################################## */
/* 80C82BA4-80C82BA4 000034 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C82BA4 = "LV6EGATE";
#pragma pop

/* 80C82BB0-80C82BB4 -00001 0004+00 2/2 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_lv6egate__stringBase0;

/* 80C82078-80C82108 000078 0090+00 1/1 0/0 0/0 .text            create1st__15daObjLv6EGate_cFv */
void daObjLv6EGate_c::create1st() {
    // NONMATCHING
}

/* 80C82108-80C82178 000108 0070+00 2/2 0/0 0/0 .text            setMtx__15daObjLv6EGate_cFv */
void daObjLv6EGate_c::setMtx() {
    // NONMATCHING
}

/* 80C82178-80C82180 000178 0008+00 1/0 0/0 0/0 .text            CreateHeap__15daObjLv6EGate_cFv */
bool daObjLv6EGate_c::CreateHeap() {
    return true;
}

/* ############################################################################################## */
/* 80C82B70-80C82B88 000000 0018+00 2/2 0/0 0/0 .rodata          l_cull_box */
SECTION_RODATA static u8 const l_cull_box[24] = {
    0xC3, 0xFA, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC2, 0x48, 0x00, 0x00,
    0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C82B70, &l_cull_box);

/* 80C82BB4-80C82BF8 000004 0044+00 1/1 0/0 0/0 .data            l_at_cyl_src */
static dCcD_SrcCyl l_at_cyl_src = {
    {
        {0x0, {{0x100, 0x2, 0xd}, {0x400, 0x0}, 0x11}}, // mObj
        {dCcD_SE_NONE, 0x0, 0xd, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        50.0f, // mRadius
        300.0f // mHeight
    } // mCyl
};

/* 80C82180-80C822DC 000180 015C+00 1/0 0/0 0/0 .text            Create__15daObjLv6EGate_cFv */
void daObjLv6EGate_c::Create() {
    // NONMATCHING
}

/* 80C822DC-80C82330 0002DC 0054+00 2/2 0/0 0/0 .text            offDisp__15daObjLv6EGate_cFv */
void daObjLv6EGate_c::offDisp() {
    // NONMATCHING
}

/* 80C82330-80C82388 000330 0058+00 2/2 0/0 0/0 .text            onDisp__15daObjLv6EGate_cFv */
void daObjLv6EGate_c::onDisp() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C82B88-80C82B8C 000018 0004+00 0/1 0/0 0/0 .rodata          @3798 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3798 = 1.0f;
COMPILER_STRIP_GATE(0x80C82B88, &lit_3798);
#pragma pop

/* 80C82B8C-80C82B90 00001C 0004+00 0/1 0/0 0/0 .rodata          @3799 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3799 = -1.0f;
COMPILER_STRIP_GATE(0x80C82B8C, &lit_3799);
#pragma pop

/* 80C82B90-80C82B94 000020 0004+00 0/1 0/0 0/0 .rodata          @3800 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3800 = -280.0f;
COMPILER_STRIP_GATE(0x80C82B90, &lit_3800);
#pragma pop

/* 80C82B94-80C82B98 000024 0004+00 0/1 0/0 0/0 .rodata          @3801 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3801[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C82B94, &lit_3801);
#pragma pop

/* 80C82B98-80C82B9C 000028 0004+00 0/1 0/0 0/0 .rodata          @3802 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3802 = 76.25f;
COMPILER_STRIP_GATE(0x80C82B98, &lit_3802);
#pragma pop

/* 80C82B9C-80C82BA0 00002C 0004+00 0/1 0/0 0/0 .rodata          @3803 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3803 = 30.0f;
COMPILER_STRIP_GATE(0x80C82B9C, &lit_3803);
#pragma pop

/* 80C82BA0-80C82BA4 000030 0004+00 0/1 0/0 0/0 .rodata          @3804 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3804 = 50.0f;
COMPILER_STRIP_GATE(0x80C82BA0, &lit_3804);
#pragma pop

/* 80C82388-80C82690 000388 0308+00 1/0 0/0 0/0 .text Execute__15daObjLv6EGate_cFPPA3_A4_f */
void daObjLv6EGate_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80C82690-80C826A0 000690 0010+00 1/0 0/0 0/0 .text            Draw__15daObjLv6EGate_cFv */
void daObjLv6EGate_c::Draw() {
    // NONMATCHING
}

/* 80C826A0-80C826DC 0006A0 003C+00 1/0 0/0 0/0 .text            Delete__15daObjLv6EGate_cFv */
void daObjLv6EGate_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C82BF8-80C82C18 -00001 0020+00 1/0 0/0 0/0 .data            daObjLv6EGate_METHODS */
static actor_method_class daObjLv6EGate_METHODS = {
    (process_method_func)daObjLv6EGate_create1st__FP15daObjLv6EGate_c,
    (process_method_func)daObjLv6EGate_MoveBGDelete__FP15daObjLv6EGate_c,
    (process_method_func)daObjLv6EGate_MoveBGExecute__FP15daObjLv6EGate_c,
    0,
    (process_method_func)daObjLv6EGate_MoveBGDraw__FP15daObjLv6EGate_c,
};

/* 80C82C18-80C82C48 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6EGate */
extern actor_process_profile_definition g_profile_Obj_Lv6EGate = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_Lv6EGate,       // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjLv6EGate_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  668,                     // mPriority
  &daObjLv6EGate_METHODS,  // sub_method
  0x00040100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80C82C48-80C82C54 000098 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C82C54-80C82C60 0000A4 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C82C60-80C82C6C 0000B0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C82C6C-80C82C78 0000BC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C82C78-80C82CA4 0000C8 002C+00 2/2 0/0 0/0 .data            __vt__15daObjLv6EGate_c */
SECTION_DATA extern void* __vt__15daObjLv6EGate_c[11] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__15daObjLv6EGate_cFv,
    (void*)Create__15daObjLv6EGate_cFv,
    (void*)Execute__15daObjLv6EGate_cFPPA3_A4_f,
    (void*)Draw__15daObjLv6EGate_cFv,
    (void*)Delete__15daObjLv6EGate_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)__dt__15daObjLv6EGate_cFv,
};

/* 80C826DC-80C82790 0006DC 00B4+00 1/0 0/0 0/0 .text daObjLv6EGate_create1st__FP15daObjLv6EGate_c
 */
static void daObjLv6EGate_create1st(daObjLv6EGate_c* param_0) {
    // NONMATCHING
}

/* 80C82790-80C8285C 000790 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_CylFv */
// dCcD_Cyl::~dCcD_Cyl() {
extern "C" void __dt__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80C8285C-80C828E0 00085C 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
// dCcD_Cyl::dCcD_Cyl() {
extern "C" void __ct__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80C828E0-80C82928 0008E0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80C82928-80C82970 000928 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C82970-80C829CC 000970 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C829CC-80C829EC 0009CC 0020+00 1/0 0/0 0/0 .text
 * daObjLv6EGate_MoveBGDelete__FP15daObjLv6EGate_c              */
static void daObjLv6EGate_MoveBGDelete(daObjLv6EGate_c* param_0) {
    // NONMATCHING
}

/* 80C829EC-80C82A0C 0009EC 0020+00 1/0 0/0 0/0 .text
 * daObjLv6EGate_MoveBGExecute__FP15daObjLv6EGate_c             */
static void daObjLv6EGate_MoveBGExecute(daObjLv6EGate_c* param_0) {
    // NONMATCHING
}

/* 80C82A0C-80C82A38 000A0C 002C+00 1/0 0/0 0/0 .text
 * daObjLv6EGate_MoveBGDraw__FP15daObjLv6EGate_c                */
static void daObjLv6EGate_MoveBGDraw(daObjLv6EGate_c* param_0) {
    // NONMATCHING
}

/* 80C82A38-80C82A80 000A38 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C82A80-80C82B68 000A80 00E8+00 1/0 0/0 0/0 .text            __dt__15daObjLv6EGate_cFv */
daObjLv6EGate_c::~daObjLv6EGate_c() {
    // NONMATCHING
}

/* 80C82BA4-80C82BA4 000034 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
