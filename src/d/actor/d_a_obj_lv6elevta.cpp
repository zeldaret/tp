/**
 * @file d_a_obj_lv6elevta.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv6elevta.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void create1st__16daObjLv6ElevtA_cFv();
extern "C" void setMtx__16daObjLv6ElevtA_cFv();
extern "C" void CreateHeap__16daObjLv6ElevtA_cFv();
extern "C" void Create__16daObjLv6ElevtA_cFv();
extern "C" static void searchObjLv6SwTurn__FPvPv();
extern "C" void eventStart__16daObjLv6ElevtA_cFv();
extern "C" void moveAngle__16daObjLv6ElevtA_cFPv();
extern "C" void Execute__16daObjLv6ElevtA_cFPPA3_A4_f();
extern "C" void Draw__16daObjLv6ElevtA_cFv();
extern "C" void Delete__16daObjLv6ElevtA_cFv();
extern "C" static void daObjLv6ElevtA_create1st__FP16daObjLv6ElevtA_c();
extern "C" static void daObjLv6ElevtA_MoveBGDelete__FP16daObjLv6ElevtA_c();
extern "C" static void daObjLv6ElevtA_MoveBGExecute__FP16daObjLv6ElevtA_c();
extern "C" static void daObjLv6ElevtA_MoveBGDraw__FP16daObjLv6ElevtA_c();
extern "C" void __dt__17dEvLib_callback_cFv();
extern "C" bool eventStart__17dEvLib_callback_cFv();
extern "C" bool eventRun__17dEvLib_callback_cFv();
extern "C" bool eventEnd__17dEvLib_callback_cFv();
extern "C" void __dt__16daObjLv6ElevtA_cFv();
extern "C" static void func_80C837F8();
extern "C" static void func_80C83800();
extern "C" extern char const* const d_a_obj_lv6elevta__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
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
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
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
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80C83848-80C83848 000038 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C83848 = "Lv6ElevtA";
#pragma pop

/* 80C83854-80C83858 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_lv6elevta__stringBase0;

/* 80C82D38-80C82DC8 000078 0090+00 1/1 0/0 0/0 .text            create1st__16daObjLv6ElevtA_cFv */
void daObjLv6ElevtA_c::create1st() {
    // NONMATCHING
}

/* 80C82DC8-80C82E38 000108 0070+00 2/2 0/0 0/0 .text            setMtx__16daObjLv6ElevtA_cFv */
void daObjLv6ElevtA_c::setMtx() {
    // NONMATCHING
}

/* 80C82E38-80C82EA8 000178 0070+00 1/0 0/0 0/0 .text            CreateHeap__16daObjLv6ElevtA_cFv */
void daObjLv6ElevtA_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C83810-80C83828 000000 0018+00 2/2 0/0 0/0 .rodata          l_cull_box */
SECTION_RODATA static u8 const l_cull_box[24] = {
    0xC3, 0xC4, 0x90, 0xA4, 0xC5, 0x3B, 0x80, 0x00, 0xC4, 0x3B, 0x80, 0x00,
    0x43, 0xC4, 0x90, 0xA4, 0x43, 0x16, 0x00, 0x00, 0x43, 0xC4, 0x90, 0xA4,
};
COMPILER_STRIP_GATE(0x80C83810, &l_cull_box);

/* 80C82EA8-80C82FA4 0001E8 00FC+00 1/0 0/0 0/0 .text            Create__16daObjLv6ElevtA_cFv */
void daObjLv6ElevtA_c::Create() {
    // NONMATCHING
}

/* 80C82FA4-80C83028 0002E4 0084+00 1/1 0/0 0/0 .text            searchObjLv6SwTurn__FPvPv */
static void searchObjLv6SwTurn(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80C83028-80C830BC 000368 0094+00 2/1 0/0 0/0 .text            eventStart__16daObjLv6ElevtA_cFv */
void daObjLv6ElevtA_c::eventStart() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C83828-80C8382C 000018 0004+00 0/1 0/0 0/0 .rodata          @3752 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3752 = 1500.0f;
COMPILER_STRIP_GATE(0x80C83828, &lit_3752);
#pragma pop

/* 80C8382C-80C83830 00001C 0004+00 0/1 0/0 0/0 .rodata          @3753 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3753 = 16383.0f;
COMPILER_STRIP_GATE(0x80C8382C, &lit_3753);
#pragma pop

/* 80C83830-80C83834 000020 0004+00 0/1 0/0 0/0 .rodata          @3754 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3754 = 800.0f;
COMPILER_STRIP_GATE(0x80C83830, &lit_3754);
#pragma pop

/* 80C83834-80C83838 000024 0004+00 1/2 0/0 0/0 .rodata          @3755 */
SECTION_RODATA static f32 const lit_3755 = 1.0f;
COMPILER_STRIP_GATE(0x80C83834, &lit_3755);

/* 80C83838-80C83840 000028 0004+04 1/2 0/0 0/0 .rodata          @3756 */
SECTION_RODATA static f32 const lit_3756[1 + 1 /* padding */] = {
    -1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C83838, &lit_3756);

/* 80C83840-80C83848 000030 0008+00 0/1 0/0 0/0 .rodata          @3758 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3758[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C83840, &lit_3758);
#pragma pop

/* 80C830BC-80C8321C 0003FC 0160+00 1/1 0/0 0/0 .text            moveAngle__16daObjLv6ElevtA_cFPv */
void daObjLv6ElevtA_c::moveAngle(void* param_0) {
    // NONMATCHING
}

/* 80C8321C-80C83538 00055C 031C+00 1/0 0/0 0/0 .text Execute__16daObjLv6ElevtA_cFPPA3_A4_f */
void daObjLv6ElevtA_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80C83538-80C835DC 000878 00A4+00 1/0 0/0 0/0 .text            Draw__16daObjLv6ElevtA_cFv */
void daObjLv6ElevtA_c::Draw() {
    // NONMATCHING
}

/* 80C835DC-80C83618 00091C 003C+00 1/0 0/0 0/0 .text            Delete__16daObjLv6ElevtA_cFv */
void daObjLv6ElevtA_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C83858-80C83878 -00001 0020+00 1/0 0/0 0/0 .data            daObjLv6ElevtA_METHODS */
static actor_method_class daObjLv6ElevtA_METHODS = {
    (process_method_func)daObjLv6ElevtA_create1st__FP16daObjLv6ElevtA_c,
    (process_method_func)daObjLv6ElevtA_MoveBGDelete__FP16daObjLv6ElevtA_c,
    (process_method_func)daObjLv6ElevtA_MoveBGExecute__FP16daObjLv6ElevtA_c,
    0,
    (process_method_func)daObjLv6ElevtA_MoveBGDraw__FP16daObjLv6ElevtA_c,
};

/* 80C83878-80C838A8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6ElevtA */
extern actor_process_profile_definition g_profile_Obj_Lv6ElevtA = {
  fpcLy_CURRENT_e,          // mLayerID
  2,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_Obj_Lv6ElevtA,       // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daObjLv6ElevtA_c), // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  669,                      // mPriority
  &daObjLv6ElevtA_METHODS,  // sub_method
  0x00040100,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80C838A8-80C838C0 000054 0018+00 3/3 0/0 0/0 .data            __vt__17dEvLib_callback_c */
SECTION_DATA extern void* __vt__17dEvLib_callback_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17dEvLib_callback_cFv,
    (void*)eventStart__17dEvLib_callback_cFv,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
};

/* 80C838C0-80C83908 00006C 0048+00 2/2 0/0 0/0 .data            __vt__16daObjLv6ElevtA_c */
SECTION_DATA extern void* __vt__16daObjLv6ElevtA_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__16daObjLv6ElevtA_cFv,
    (void*)Create__16daObjLv6ElevtA_cFv,
    (void*)Execute__16daObjLv6ElevtA_cFPPA3_A4_f,
    (void*)Draw__16daObjLv6ElevtA_cFv,
    (void*)Delete__16daObjLv6ElevtA_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C83800,
    (void*)func_80C837F8,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
    (void*)__dt__16daObjLv6ElevtA_cFv,
    (void*)eventStart__16daObjLv6ElevtA_cFv,
};

/* 80C83618-80C83698 000958 0080+00 1/0 0/0 0/0 .text
 * daObjLv6ElevtA_create1st__FP16daObjLv6ElevtA_c               */
static void daObjLv6ElevtA_create1st(daObjLv6ElevtA_c* param_0) {
    // NONMATCHING
}

/* 80C83698-80C836B8 0009D8 0020+00 1/0 0/0 0/0 .text
 * daObjLv6ElevtA_MoveBGDelete__FP16daObjLv6ElevtA_c            */
static void daObjLv6ElevtA_MoveBGDelete(daObjLv6ElevtA_c* param_0) {
    // NONMATCHING
}

/* 80C836B8-80C836D8 0009F8 0020+00 1/0 0/0 0/0 .text
 * daObjLv6ElevtA_MoveBGExecute__FP16daObjLv6ElevtA_c           */
static void daObjLv6ElevtA_MoveBGExecute(daObjLv6ElevtA_c* param_0) {
    // NONMATCHING
}

/* 80C836D8-80C83704 000A18 002C+00 1/0 0/0 0/0 .text
 * daObjLv6ElevtA_MoveBGDraw__FP16daObjLv6ElevtA_c              */
static void daObjLv6ElevtA_MoveBGDraw(daObjLv6ElevtA_c* param_0) {
    // NONMATCHING
}

/* 80C83704-80C8374C 000A44 0048+00 1/0 0/0 0/0 .text            __dt__17dEvLib_callback_cFv */
// dEvLib_callback_c::~dEvLib_callback_c() {
extern "C" void __dt__17dEvLib_callback_cFv() {
    // NONMATCHING
}

/* 80C8374C-80C83754 000A8C 0008+00 1/0 0/0 0/0 .text            eventStart__17dEvLib_callback_cFv
 */
// bool dEvLib_callback_c::eventStart() {
extern "C" bool eventStart__17dEvLib_callback_cFv() {
    return true;
}

/* 80C83754-80C8375C 000A94 0008+00 2/0 0/0 0/0 .text            eventRun__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventRun() {
extern "C" bool eventRun__17dEvLib_callback_cFv() {
    return true;
}

/* 80C8375C-80C83764 000A9C 0008+00 2/0 0/0 0/0 .text            eventEnd__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventEnd() {
extern "C" bool eventEnd__17dEvLib_callback_cFv() {
    return true;
}

/* 80C83764-80C837F8 000AA4 0094+00 2/1 0/0 0/0 .text            __dt__16daObjLv6ElevtA_cFv */
daObjLv6ElevtA_c::~daObjLv6ElevtA_c() {
    // NONMATCHING
}

/* 80C837F8-80C83800 000B38 0008+00 1/0 0/0 0/0 .text @1448@eventStart__16daObjLv6ElevtA_cFv */
static void func_80C837F8() {
    // NONMATCHING
}

/* 80C83800-80C83808 000B40 0008+00 1/0 0/0 0/0 .text            @1448@__dt__16daObjLv6ElevtA_cFv */
static void func_80C83800() {
    // NONMATCHING
}

/* 80C83848-80C83848 000038 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
