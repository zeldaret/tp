/**
 * @file d_a_obj_lv4bridge.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv4bridge.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void initBaseMtx__13daObjLv4Brg_cFv();
extern "C" void setBaseMtx__13daObjLv4Brg_cFv();
extern "C" void Create__13daObjLv4Brg_cFv();
extern "C" void CreateHeap__13daObjLv4Brg_cFv();
extern "C" void create1st__13daObjLv4Brg_cFv();
extern "C" void Execute__13daObjLv4Brg_cFPPA3_A4_f();
extern "C" void action__13daObjLv4Brg_cFv();
extern "C" void mode_init_wait__13daObjLv4Brg_cFv();
extern "C" void mode_wait__13daObjLv4Brg_cFv();
extern "C" void mode_init_move__13daObjLv4Brg_cFv();
extern "C" void mode_move__13daObjLv4Brg_cFv();
extern "C" void mode_init_dead__13daObjLv4Brg_cFv();
extern "C" void mode_dead__13daObjLv4Brg_cFv();
extern "C" void eventStart__13daObjLv4Brg_cFv();
extern "C" void Draw__13daObjLv4Brg_cFv();
extern "C" void Delete__13daObjLv4Brg_cFv();
extern "C" static void daObjLv4Brg_create1st__FP13daObjLv4Brg_c();
extern "C" static void daObjLv4Brg_MoveBGDelete__FP13daObjLv4Brg_c();
extern "C" static void daObjLv4Brg_MoveBGExecute__FP13daObjLv4Brg_c();
extern "C" static void daObjLv4Brg_MoveBGDraw__FP13daObjLv4Brg_c();
extern "C" void __dt__17dEvLib_callback_cFv();
extern "C" bool eventStart__17dEvLib_callback_cFv();
extern "C" bool eventRun__17dEvLib_callback_cFv();
extern "C" bool eventEnd__17dEvLib_callback_cFv();
extern "C" void __dt__13daObjLv4Brg_cFv();
extern "C" static void func_80C63158();
extern "C" static void func_80C63160();
extern "C" extern char const* const d_a_obj_lv4bridge__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void eventUpdate__17dEvLib_callback_cFv();
extern "C" void orderEvent__17dEvLib_callback_cFiii();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
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
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 data_80C632B8[4];

//
// Declarations:
//

/* 80C62878-80C628B4 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjLv4Brg_cFv */
void daObjLv4Brg_c::initBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C63170-80C63174 000000 0004+00 6/6 0/0 0/0 .rodata          @3653 */
SECTION_RODATA static u8 const lit_3653[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C63170, &lit_3653);

/* 80C63174-80C63178 000004 0004+00 0/1 0/0 0/0 .rodata          @3654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3654 = 1700.0f;
COMPILER_STRIP_GATE(0x80C63174, &lit_3654);
#pragma pop

/* 80C63178-80C6317C 000008 0004+00 0/1 0/0 0/0 .rodata          @3655 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3655 = -5050.0f;
COMPILER_STRIP_GATE(0x80C63178, &lit_3655);
#pragma pop

/* 80C628B4-80C62994 0000B4 00E0+00 2/2 0/0 0/0 .text            setBaseMtx__13daObjLv4Brg_cFv */
void daObjLv4Brg_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C6317C-80C63180 00000C 0004+00 1/2 0/0 0/0 .rodata          @3676 */
SECTION_RODATA static f32 const lit_3676 = 2000.0f;
COMPILER_STRIP_GATE(0x80C6317C, &lit_3676);

/* 80C62994-80C62A2C 000194 0098+00 1/0 0/0 0/0 .text            Create__13daObjLv4Brg_cFv */
void daObjLv4Brg_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C63190-80C63190 000020 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C63190 = "Obj_l4brg";
#pragma pop

/* 80C631BC-80C631C0 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_lv4bridge__stringBase0;

/* 80C62A2C-80C62A9C 00022C 0070+00 1/0 0/0 0/0 .text            CreateHeap__13daObjLv4Brg_cFv */
void daObjLv4Brg_c::CreateHeap() {
    // NONMATCHING
}

/* 80C62A9C-80C62B20 00029C 0084+00 1/1 0/0 0/0 .text            create1st__13daObjLv4Brg_cFv */
void daObjLv4Brg_c::create1st() {
    // NONMATCHING
}

/* 80C62B20-80C62B6C 000320 004C+00 1/0 0/0 0/0 .text            Execute__13daObjLv4Brg_cFPPA3_A4_f
 */
void daObjLv4Brg_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C631C0-80C631CC -00001 000C+00 0/1 0/0 0/0 .data            @3702 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3702[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_wait__13daObjLv4Brg_cFv,
};
#pragma pop

/* 80C631CC-80C631D8 -00001 000C+00 0/1 0/0 0/0 .data            @3703 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3703[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_move__13daObjLv4Brg_cFv,
};
#pragma pop

/* 80C631D8-80C631E4 -00001 000C+00 0/1 0/0 0/0 .data            @3704 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3704[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_dead__13daObjLv4Brg_cFv,
};
#pragma pop

/* 80C631E4-80C63208 000048 0024+00 0/1 0/0 0/0 .data            l_func$3701 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C62B6C-80C62C28 00036C 00BC+00 1/1 0/0 0/0 .text            action__13daObjLv4Brg_cFv */
void daObjLv4Brg_c::action() {
    // NONMATCHING
}

/* 80C62C28-80C62C34 000428 000C+00 1/1 0/0 0/0 .text            mode_init_wait__13daObjLv4Brg_cFv
 */
void daObjLv4Brg_c::mode_init_wait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C63180-80C63184 000010 0004+00 2/3 0/0 0/0 .rodata          @3740 */
SECTION_RODATA static f32 const lit_3740 = 1.0f;
COMPILER_STRIP_GATE(0x80C63180, &lit_3740);

/* 80C62C34-80C62CE4 000434 00B0+00 1/0 0/0 0/0 .text            mode_wait__13daObjLv4Brg_cFv */
void daObjLv4Brg_c::mode_wait() {
    // NONMATCHING
}

/* 80C62CE4-80C62CFC 0004E4 0018+00 2/2 0/0 0/0 .text            mode_init_move__13daObjLv4Brg_cFv
 */
void daObjLv4Brg_c::mode_init_move() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C63184-80C63188 000014 0004+00 0/1 0/0 0/0 .rodata          @3766 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3766 = -1.0f;
COMPILER_STRIP_GATE(0x80C63184, &lit_3766);
#pragma pop

/* 80C63188-80C6318C 000018 0004+00 0/1 0/0 0/0 .rodata          @3767 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3767 = 20.0f;
COMPILER_STRIP_GATE(0x80C63188, &lit_3767);
#pragma pop

/* 80C6318C-80C63190 00001C 0004+00 0/1 0/0 0/0 .rodata          @3768 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3768 = 2.0f;
COMPILER_STRIP_GATE(0x80C6318C, &lit_3768);
#pragma pop

/* 80C62CFC-80C62E24 0004FC 0128+00 1/0 0/0 0/0 .text            mode_move__13daObjLv4Brg_cFv */
void daObjLv4Brg_c::mode_move() {
    // NONMATCHING
}

/* 80C62E24-80C62E30 000624 000C+00 2/2 0/0 0/0 .text            mode_init_dead__13daObjLv4Brg_cFv
 */
void daObjLv4Brg_c::mode_init_dead() {
    // NONMATCHING
}

/* 80C62E30-80C62E34 000630 0004+00 1/0 0/0 0/0 .text            mode_dead__13daObjLv4Brg_cFv */
void daObjLv4Brg_c::mode_dead() {
    /* empty function */
}

/* 80C62E34-80C62EA0 000634 006C+00 2/1 0/0 0/0 .text            eventStart__13daObjLv4Brg_cFv */
void daObjLv4Brg_c::eventStart() {
    // NONMATCHING
}

/* 80C62EA0-80C62F44 0006A0 00A4+00 1/0 0/0 0/0 .text            Draw__13daObjLv4Brg_cFv */
void daObjLv4Brg_c::Draw() {
    // NONMATCHING
}

/* 80C62F44-80C62F78 000744 0034+00 1/0 0/0 0/0 .text            Delete__13daObjLv4Brg_cFv */
void daObjLv4Brg_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C63208-80C63228 -00001 0020+00 1/0 0/0 0/0 .data            daObjLv4Brg_METHODS */
static actor_method_class daObjLv4Brg_METHODS = {
    (process_method_func)daObjLv4Brg_create1st__FP13daObjLv4Brg_c,
    (process_method_func)daObjLv4Brg_MoveBGDelete__FP13daObjLv4Brg_c,
    (process_method_func)daObjLv4Brg_MoveBGExecute__FP13daObjLv4Brg_c,
    0,
    (process_method_func)daObjLv4Brg_MoveBGDraw__FP13daObjLv4Brg_c,
};

/* 80C63228-80C63258 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv4Bridge */
extern actor_process_profile_definition g_profile_Obj_Lv4Bridge = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv4Bridge,     // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjLv4Brg_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  581,                    // mPriority
  &daObjLv4Brg_METHODS,   // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C63258-80C63270 0000BC 0018+00 3/3 0/0 0/0 .data            __vt__17dEvLib_callback_c */
SECTION_DATA extern void* __vt__17dEvLib_callback_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17dEvLib_callback_cFv,
    (void*)eventStart__17dEvLib_callback_cFv,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
};

/* 80C63270-80C632B8 0000D4 0048+00 2/2 0/0 0/0 .data            __vt__13daObjLv4Brg_c */
SECTION_DATA extern void* __vt__13daObjLv4Brg_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__13daObjLv4Brg_cFv,
    (void*)Create__13daObjLv4Brg_cFv,
    (void*)Execute__13daObjLv4Brg_cFPPA3_A4_f,
    (void*)Draw__13daObjLv4Brg_cFv,
    (void*)Delete__13daObjLv4Brg_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C63160,
    (void*)func_80C63158,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
    (void*)__dt__13daObjLv4Brg_cFv,
    (void*)eventStart__13daObjLv4Brg_cFv,
};

/* 80C62F78-80C62FF8 000778 0080+00 1/0 0/0 0/0 .text daObjLv4Brg_create1st__FP13daObjLv4Brg_c */
static void daObjLv4Brg_create1st(daObjLv4Brg_c* param_0) {
    // NONMATCHING
}

/* 80C62FF8-80C63018 0007F8 0020+00 1/0 0/0 0/0 .text daObjLv4Brg_MoveBGDelete__FP13daObjLv4Brg_c
 */
static void daObjLv4Brg_MoveBGDelete(daObjLv4Brg_c* param_0) {
    // NONMATCHING
}

/* 80C63018-80C63038 000818 0020+00 1/0 0/0 0/0 .text daObjLv4Brg_MoveBGExecute__FP13daObjLv4Brg_c
 */
static void daObjLv4Brg_MoveBGExecute(daObjLv4Brg_c* param_0) {
    // NONMATCHING
}

/* 80C63038-80C63064 000838 002C+00 1/0 0/0 0/0 .text daObjLv4Brg_MoveBGDraw__FP13daObjLv4Brg_c */
static void daObjLv4Brg_MoveBGDraw(daObjLv4Brg_c* param_0) {
    // NONMATCHING
}

/* 80C63064-80C630AC 000864 0048+00 1/0 0/0 0/0 .text            __dt__17dEvLib_callback_cFv */
// dEvLib_callback_c::~dEvLib_callback_c() {
extern "C" void __dt__17dEvLib_callback_cFv() {
    // NONMATCHING
}

/* 80C630AC-80C630B4 0008AC 0008+00 1/0 0/0 0/0 .text            eventStart__17dEvLib_callback_cFv
 */
// bool dEvLib_callback_c::eventStart() {
extern "C" bool eventStart__17dEvLib_callback_cFv() {
    return true;
}

/* 80C630B4-80C630BC 0008B4 0008+00 2/0 0/0 0/0 .text            eventRun__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventRun() {
extern "C" bool eventRun__17dEvLib_callback_cFv() {
    return true;
}

/* 80C630BC-80C630C4 0008BC 0008+00 2/0 0/0 0/0 .text            eventEnd__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventEnd() {
extern "C" bool eventEnd__17dEvLib_callback_cFv() {
    return true;
}

/* 80C630C4-80C63158 0008C4 0094+00 2/1 0/0 0/0 .text            __dt__13daObjLv4Brg_cFv */
daObjLv4Brg_c::~daObjLv4Brg_c() {
    // NONMATCHING
}

/* 80C63158-80C63160 000958 0008+00 1/0 0/0 0/0 .text            @1440@eventStart__13daObjLv4Brg_cFv
 */
static void func_80C63158() {
    // NONMATCHING
}

/* 80C63160-80C63168 000960 0008+00 1/0 0/0 0/0 .text            @1440@__dt__13daObjLv4Brg_cFv */
static void func_80C63160() {
    // NONMATCHING
}

/* 80C63190-80C63190 000020 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
