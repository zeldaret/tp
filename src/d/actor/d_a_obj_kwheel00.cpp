/**
 * @file d_a_obj_kwheel00.cpp
 * 
*/

#include "d/actor/d_a_obj_kwheel00.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void create1st__15daObjKWheel00_cFv();
extern "C" static void searchLv3Water__FPvPv();
extern "C" void setMtx__15daObjKWheel00_cFv();
extern "C" void CreateHeap__15daObjKWheel00_cFv();
extern "C" void Create__15daObjKWheel00_cFv();
extern "C" void Execute__15daObjKWheel00_cFPPA3_A4_f();
extern "C" void Draw__15daObjKWheel00_cFv();
extern "C" void Delete__15daObjKWheel00_cFv();
extern "C" void eventStart__15daObjKWheel00_cFv();
extern "C" static void daObjKWheel00_create1st__FP15daObjKWheel00_c();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" static void daObjKWheel00_MoveBGDelete__FP15daObjKWheel00_c();
extern "C" static void daObjKWheel00_MoveBGExecute__FP15daObjKWheel00_c();
extern "C" static void daObjKWheel00_MoveBGDraw__FP15daObjKWheel00_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__17dEvLib_callback_cFv();
extern "C" bool eventStart__17dEvLib_callback_cFv();
extern "C" bool eventRun__17dEvLib_callback_cFv();
extern "C" bool eventEnd__17dEvLib_callback_cFv();
extern "C" void __dt__15daObjKWheel00_cFv();
extern "C" static void func_80C4E7E8();
extern "C" static void func_80C4E7F0();
extern "C" extern char const* const d_a_obj_kwheel00__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void eventUpdate__17dEvLib_callback_cFv();
extern "C" void orderEvent__17dEvLib_callback_cFiii();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
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
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void cM_rndFX__Ff();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_21();
extern "C" void _savegpr_27();
extern "C" void _restgpr_21();
extern "C" void _restgpr_27();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80C4E800-80C4E808 000000 0008+00 2/2 0/0 0/0 .rodata          l_dzbidx */
SECTION_RODATA static u8 const l_dzbidx[8] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07,
};
COMPILER_STRIP_GATE(0x80C4E800, &l_dzbidx);

/* 80C4E85C-80C4E85C 00005C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C4E85C = "K_Wheel00";
SECTION_DEAD static char const* const stringBase_80C4E866 = "S_wheel00";
#pragma pop

/* 80C4E870-80C4E878 -00001 0008+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName[2] = {
    (void*)&d_a_obj_kwheel00__stringBase0,
    (void*)(((char*)&d_a_obj_kwheel00__stringBase0) + 0xA),
};

/* 80C4D6F8-80C4D7A8 000078 00B0+00 1/1 0/0 0/0 .text            create1st__15daObjKWheel00_cFv */
void daObjKWheel00_c::create1st() {
    // NONMATCHING
}

/* 80C4D7A8-80C4D86C 000128 00C4+00 1/1 0/0 0/0 .text            searchLv3Water__FPvPv */
static void searchLv3Water(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4E808-80C4E810 000008 0008+00 1/1 0/0 0/0 .rodata          l_bmdidx */
SECTION_RODATA static u8 const l_bmdidx[8] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80C4E808, &l_bmdidx);

/* 80C4E810-80C4E840 000010 0030+00 1/1 0/0 0/0 .rodata          l_cull_box */
SECTION_RODATA static u8 const l_cull_box[48] = {
    0xC4, 0x4F, 0x80, 0x00, 0xC4, 0x4F, 0x80, 0x00, 0xC5, 0x1C, 0x40, 0x00, 0x44, 0x4F, 0x80, 0x00,
    0x44, 0x4F, 0x80, 0x00, 0x43, 0x48, 0x00, 0x00, 0xC4, 0x0C, 0x00, 0x00, 0xC4, 0x0C, 0x00, 0x00,
    0xC3, 0xAF, 0x00, 0x00, 0x44, 0x0C, 0x00, 0x00, 0x44, 0x0C, 0x00, 0x00, 0x43, 0xAF, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C4E810, &l_cull_box);

/* 80C4E840-80C4E844 000040 0004+00 1/2 0/0 0/0 .rodata          @3696 */
SECTION_RODATA static f32 const lit_3696 = 1.0f;
COMPILER_STRIP_GATE(0x80C4E840, &lit_3696);

/* 80C4E844-80C4E848 000044 0004+00 1/1 0/0 0/0 .rodata          @3697 */
SECTION_RODATA static f32 const lit_3697 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C4E844, &lit_3697);

/* 80C4D86C-80C4D9B8 0001EC 014C+00 2/2 0/0 0/0 .text            setMtx__15daObjKWheel00_cFv */
void daObjKWheel00_c::setMtx() {
    // NONMATCHING
}

/* 80C4D9B8-80C4DA38 000338 0080+00 1/0 0/0 0/0 .text            CreateHeap__15daObjKWheel00_cFv */
void daObjKWheel00_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4E878-80C4E8B8 000008 0040+00 1/1 0/0 0/0 .data            l_sphSrc */
static dCcD_SrcSph l_sphSrc = {
    {
        {0x0, {{0x0, 0x1, 0x0}, {0xd8fbfdff, 0x0}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x1}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 160.0f} // mSph
    } // mSphAttr
};

/* 80C4E8B8-80C4E8C0 000048 0008+00 2/2 0/0 0/0 .data            l_se_angle */
SECTION_DATA static u8 l_se_angle[8] = {
    0x00, 0x00, 0x3F, 0xFF, 0x7F, 0xFF, 0xBF, 0xFF,
};

/* 80C4DA38-80C4DBBC 0003B8 0184+00 1/0 0/0 0/0 .text            Create__15daObjKWheel00_cFv */
void daObjKWheel00_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4E848-80C4E84C 000048 0004+00 0/1 0/0 0/0 .rodata          @3904 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3904 = 830.0f;
COMPILER_STRIP_GATE(0x80C4E848, &lit_3904);
#pragma pop

/* 80C4E84C-80C4E850 00004C 0004+00 0/1 0/0 0/0 .rodata          @3905 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3905 = 560.0f;
COMPILER_STRIP_GATE(0x80C4E84C, &lit_3905);
#pragma pop

/* 80C4E850-80C4E854 000050 0004+00 0/1 0/0 0/0 .rodata          @3906 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3906 = -1.0f;
COMPILER_STRIP_GATE(0x80C4E850, &lit_3906);
#pragma pop

/* 80C4E854-80C4E858 000054 0004+00 0/1 0/0 0/0 .rodata          @3907 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3907 = 160.0f;
COMPILER_STRIP_GATE(0x80C4E854, &lit_3907);
#pragma pop

/* 80C4E858-80C4E85C 000058 0004+00 0/1 0/0 0/0 .rodata          @3908 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3908 = 140.0f;
COMPILER_STRIP_GATE(0x80C4E858, &lit_3908);
#pragma pop

/* 80C4E8C0-80C4E920 000050 0060+00 1/1 0/0 0/0 .data            l_pos */
SECTION_DATA static u8 l_pos[96] = {
    0x44, 0x4F, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x44, 0x4F, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC4, 0x4F, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC4, 0x4F, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x44, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x44, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC4, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC4, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C4DBBC-80C4E1B0 00053C 05F4+00 1/0 0/0 0/0 .text Execute__15daObjKWheel00_cFPPA3_A4_f */
void daObjKWheel00_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80C4E1B0-80C4E254 000B30 00A4+00 1/0 0/0 0/0 .text            Draw__15daObjKWheel00_cFv */
void daObjKWheel00_c::Draw() {
    // NONMATCHING
}

/* 80C4E254-80C4E298 000BD4 0044+00 1/0 0/0 0/0 .text            Delete__15daObjKWheel00_cFv */
void daObjKWheel00_c::Delete() {
    // NONMATCHING
}

/* 80C4E298-80C4E2C0 000C18 0028+00 2/1 0/0 0/0 .text            eventStart__15daObjKWheel00_cFv */
void daObjKWheel00_c::eventStart() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4E920-80C4E940 -00001 0020+00 1/0 0/0 0/0 .data            daObjKWheel00_METHODS */
static actor_method_class daObjKWheel00_METHODS = {
    (process_method_func)daObjKWheel00_create1st__FP15daObjKWheel00_c,
    (process_method_func)daObjKWheel00_MoveBGDelete__FP15daObjKWheel00_c,
    (process_method_func)daObjKWheel00_MoveBGExecute__FP15daObjKWheel00_c,
    0,
    (process_method_func)daObjKWheel00_MoveBGDraw__FP15daObjKWheel00_c,
};

/* 80C4E940-80C4E970 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_KWheel00 */
extern actor_process_profile_definition g_profile_Obj_KWheel00 = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_KWheel00,       // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjKWheel00_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  662,                     // mPriority
  &daObjKWheel00_METHODS,  // sub_method
  0x00040100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80C4E970-80C4E97C 000100 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C4E97C-80C4E988 00010C 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C4E988-80C4E994 000118 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C4E994-80C4E9A0 000124 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80C4E9A0-80C4E9B8 000130 0018+00 3/3 0/0 0/0 .data            __vt__17dEvLib_callback_c */
SECTION_DATA extern void* __vt__17dEvLib_callback_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17dEvLib_callback_cFv,
    (void*)eventStart__17dEvLib_callback_cFv,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
};

/* 80C4E9B8-80C4EA00 000148 0048+00 2/2 0/0 0/0 .data            __vt__15daObjKWheel00_c */
SECTION_DATA extern void* __vt__15daObjKWheel00_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__15daObjKWheel00_cFv,
    (void*)Create__15daObjKWheel00_cFv,
    (void*)Execute__15daObjKWheel00_cFPPA3_A4_f,
    (void*)Draw__15daObjKWheel00_cFv,
    (void*)Delete__15daObjKWheel00_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C4E7F0,
    (void*)func_80C4E7E8,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
    (void*)__dt__15daObjKWheel00_cFv,
    (void*)eventStart__15daObjKWheel00_cFv,
};

/* 80C4E2C0-80C4E394 000C40 00D4+00 1/0 0/0 0/0 .text daObjKWheel00_create1st__FP15daObjKWheel00_c
 */
static void daObjKWheel00_create1st(daObjKWheel00_c* param_0) {
    // NONMATCHING
}

/* 80C4E394-80C4E460 000D14 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80C4E460-80C4E4E4 000DE0 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80C4E4E4-80C4E52C 000E64 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80C4E52C-80C4E574 000EAC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C4E574-80C4E5D0 000EF4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C4E5D0-80C4E5F0 000F50 0020+00 1/0 0/0 0/0 .text
 * daObjKWheel00_MoveBGDelete__FP15daObjKWheel00_c              */
static void daObjKWheel00_MoveBGDelete(daObjKWheel00_c* param_0) {
    // NONMATCHING
}

/* 80C4E5F0-80C4E610 000F70 0020+00 1/0 0/0 0/0 .text
 * daObjKWheel00_MoveBGExecute__FP15daObjKWheel00_c             */
static void daObjKWheel00_MoveBGExecute(daObjKWheel00_c* param_0) {
    // NONMATCHING
}

/* 80C4E610-80C4E63C 000F90 002C+00 1/0 0/0 0/0 .text
 * daObjKWheel00_MoveBGDraw__FP15daObjKWheel00_c                */
static void daObjKWheel00_MoveBGDraw(daObjKWheel00_c* param_0) {
    // NONMATCHING
}

/* 80C4E63C-80C4E684 000FBC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C4E684-80C4E6CC 001004 0048+00 1/0 0/0 0/0 .text            __dt__17dEvLib_callback_cFv */
// dEvLib_callback_c::~dEvLib_callback_c() {
extern "C" void __dt__17dEvLib_callback_cFv() {
    // NONMATCHING
}

/* 80C4E6CC-80C4E6D4 00104C 0008+00 1/0 0/0 0/0 .text            eventStart__17dEvLib_callback_cFv
 */
// bool dEvLib_callback_c::eventStart()() {
extern "C" bool eventStart__17dEvLib_callback_cFv() {
    return true;
}

/* 80C4E6D4-80C4E6DC 001054 0008+00 2/0 0/0 0/0 .text            eventRun__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventRun() {
extern "C" bool eventRun__17dEvLib_callback_cFv() {
    return true;
}

/* 80C4E6DC-80C4E6E4 00105C 0008+00 2/0 0/0 0/0 .text            eventEnd__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventEnd() {
extern "C" bool eventEnd__17dEvLib_callback_cFv() {
    return true;
}

/* 80C4E6E4-80C4E7E8 001064 0104+00 2/1 0/0 0/0 .text            __dt__15daObjKWheel00_cFv */
daObjKWheel00_c::~daObjKWheel00_c() {
    // NONMATCHING
}

/* 80C4E7E8-80C4E7F0 001168 0008+00 1/0 0/0 0/0 .text @1448@eventStart__15daObjKWheel00_cFv */
static void func_80C4E7E8() {
    // NONMATCHING
}

/* 80C4E7F0-80C4E7F8 001170 0008+00 1/0 0/0 0/0 .text            @1448@__dt__15daObjKWheel00_cFv */
static void func_80C4E7F0() {
    // NONMATCHING
}

/* 80C4E85C-80C4E85C 00005C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
