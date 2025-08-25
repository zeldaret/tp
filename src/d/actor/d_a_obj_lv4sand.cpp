/**
 * @file d_a_obj_lv4sand.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv4sand.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void initBaseMtx__14daObjLv4Sand_cFv();
extern "C" void setBaseMtx__14daObjLv4Sand_cFv();
extern "C" void Create__14daObjLv4Sand_cFv();
extern "C" void CreateHeap__14daObjLv4Sand_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void create1st__14daObjLv4Sand_cFv();
extern "C" void Execute__14daObjLv4Sand_cFPPA3_A4_f();
extern "C" void action__14daObjLv4Sand_cFv();
extern "C" void mode_init_wait__14daObjLv4Sand_cFv();
extern "C" void mode_wait__14daObjLv4Sand_cFv();
extern "C" void mode_init_move__14daObjLv4Sand_cFv();
extern "C" void mode_move__14daObjLv4Sand_cFv();
extern "C" void mode_init_dead__14daObjLv4Sand_cFv();
extern "C" void mode_dead__14daObjLv4Sand_cFv();
extern "C" void eventStart__14daObjLv4Sand_cFv();
extern "C" void Draw__14daObjLv4Sand_cFv();
extern "C" void Delete__14daObjLv4Sand_cFv();
extern "C" static void daObjLv4Sand_create1st__FP14daObjLv4Sand_c();
extern "C" static void daObjLv4Sand_MoveBGDelete__FP14daObjLv4Sand_c();
extern "C" static void daObjLv4Sand_MoveBGExecute__FP14daObjLv4Sand_c();
extern "C" static void daObjLv4Sand_MoveBGDraw__FP14daObjLv4Sand_c();
extern "C" void __dt__17dEvLib_callback_cFv();
extern "C" bool eventStart__17dEvLib_callback_cFv();
extern "C" bool eventRun__17dEvLib_callback_cFv();
extern "C" bool eventEnd__17dEvLib_callback_cFv();
extern "C" void __dt__14daObjLv4Sand_cFv();
extern "C" static void func_80C6A3A0();
extern "C" static void func_80C6A3A8();
extern "C" extern char const* const d_a_obj_lv4sand__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
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
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 data_80C6A508[4];

//
// Declarations:
//

/* 80C69A98-80C69AD4 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjLv4Sand_cFv */
void daObjLv4Sand_c::initBaseMtx() {
    // NONMATCHING
}

/* 80C69AD4-80C69B50 0000B4 007C+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjLv4Sand_cFv */
void daObjLv4Sand_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C6A3B8-80C6A3BC 000000 0004+00 3/3 0/0 0/0 .rodata          @3679 */
SECTION_RODATA static f32 const lit_3679 = -3500.0f;
COMPILER_STRIP_GATE(0x80C6A3B8, &lit_3679);

/* 80C6A3BC-80C6A3C0 000004 0004+00 2/2 0/0 0/0 .rodata          @3680 */
SECTION_RODATA static u8 const lit_3680[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C6A3BC, &lit_3680);

/* 80C69B50-80C69C28 000130 00D8+00 1/0 0/0 0/0 .text            Create__14daObjLv4Sand_cFv */
void daObjLv4Sand_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C6A3C0-80C6A3C4 000008 0004+00 1/2 0/0 0/0 .rodata          @3710 */
SECTION_RODATA static f32 const lit_3710 = 1.0f;
COMPILER_STRIP_GATE(0x80C6A3C0, &lit_3710);

/* 80C6A3D4-80C6A3D4 00001C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C6A3D4 = "P_L4Sand";
#pragma pop

/* 80C6A400-80C6A404 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_lv4sand__stringBase0;

/* 80C6A404-80C6A410 -00001 000C+00 0/1 0/0 0/0 .data            @3754 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3754[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_wait__14daObjLv4Sand_cFv,
};
#pragma pop

/* 80C6A410-80C6A41C -00001 000C+00 0/1 0/0 0/0 .data            @3755 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3755[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_move__14daObjLv4Sand_cFv,
};
#pragma pop

/* 80C6A41C-80C6A428 -00001 000C+00 0/1 0/0 0/0 .data            @3756 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3756[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_dead__14daObjLv4Sand_cFv,
};
#pragma pop

/* 80C6A428-80C6A44C 000048 0024+00 0/1 0/0 0/0 .data            l_func$3753 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C6A44C-80C6A46C -00001 0020+00 1/0 0/0 0/0 .data            daObjLv4Sand_METHODS */
static actor_method_class daObjLv4Sand_METHODS = {
    (process_method_func)daObjLv4Sand_create1st__FP14daObjLv4Sand_c,
    (process_method_func)daObjLv4Sand_MoveBGDelete__FP14daObjLv4Sand_c,
    (process_method_func)daObjLv4Sand_MoveBGExecute__FP14daObjLv4Sand_c,
    0,
    (process_method_func)daObjLv4Sand_MoveBGDraw__FP14daObjLv4Sand_c,
};

/* 80C6A46C-80C6A49C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv4Sand */
extern actor_process_profile_definition g_profile_Obj_Lv4Sand = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv4Sand,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjLv4Sand_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  573,                    // mPriority
  &daObjLv4Sand_METHODS,  // sub_method
  0x00044100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C6A49C-80C6A4B4 0000BC 0018+00 3/3 0/0 0/0 .data            __vt__17dEvLib_callback_c */
SECTION_DATA extern void* __vt__17dEvLib_callback_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17dEvLib_callback_cFv,
    (void*)eventStart__17dEvLib_callback_cFv,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
};

/* 80C6A4B4-80C6A4C0 0000D4 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80C69C28-80C69D44 000208 011C+00 1/0 0/0 0/0 .text            CreateHeap__14daObjLv4Sand_cFv */
void daObjLv4Sand_c::CreateHeap() {
    // NONMATCHING
}

/* 80C69D44-80C69D8C 000324 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80C69D8C-80C69E10 00036C 0084+00 1/1 0/0 0/0 .text            create1st__14daObjLv4Sand_cFv */
void daObjLv4Sand_c::create1st() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C6A3C4-80C6A3C8 00000C 0004+00 0/1 0/0 0/0 .rodata          @3748 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3748 = 3300.0f;
COMPILER_STRIP_GATE(0x80C6A3C4, &lit_3748);
#pragma pop

/* 80C6A3C8-80C6A3CC 000010 0004+00 0/1 0/0 0/0 .rodata          @3749 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3749 = -1.0f;
COMPILER_STRIP_GATE(0x80C6A3C8, &lit_3749);
#pragma pop

/* 80C69E10-80C69F18 0003F0 0108+00 1/0 0/0 0/0 .text            Execute__14daObjLv4Sand_cFPPA3_A4_f
 */
void daObjLv4Sand_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80C69F18-80C69FBC 0004F8 00A4+00 1/1 0/0 0/0 .text            action__14daObjLv4Sand_cFv */
void daObjLv4Sand_c::action() {
    // NONMATCHING
}

/* 80C69FBC-80C69FC8 00059C 000C+00 1/1 0/0 0/0 .text            mode_init_wait__14daObjLv4Sand_cFv
 */
void daObjLv4Sand_c::mode_init_wait() {
    // NONMATCHING
}

/* 80C69FC8-80C6A01C 0005A8 0054+00 1/0 0/0 0/0 .text            mode_wait__14daObjLv4Sand_cFv */
void daObjLv4Sand_c::mode_wait() {
    // NONMATCHING
}

/* 80C6A01C-80C6A034 0005FC 0018+00 2/2 0/0 0/0 .text            mode_init_move__14daObjLv4Sand_cFv
 */
void daObjLv4Sand_c::mode_init_move() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C6A3CC-80C6A3D0 000014 0004+00 0/1 0/0 0/0 .rodata          @3786 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3786 = 8.5f;
COMPILER_STRIP_GATE(0x80C6A3CC, &lit_3786);
#pragma pop

/* 80C6A3D0-80C6A3D4 000018 0004+00 0/1 0/0 0/0 .rodata          @3787 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3787 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C6A3D0, &lit_3787);
#pragma pop

/* 80C6A034-80C6A09C 000614 0068+00 1/0 0/0 0/0 .text            mode_move__14daObjLv4Sand_cFv */
void daObjLv4Sand_c::mode_move() {
    // NONMATCHING
}

/* 80C6A09C-80C6A0A8 00067C 000C+00 2/2 0/0 0/0 .text            mode_init_dead__14daObjLv4Sand_cFv
 */
void daObjLv4Sand_c::mode_init_dead() {
    // NONMATCHING
}

/* 80C6A0A8-80C6A0AC 000688 0004+00 1/0 0/0 0/0 .text            mode_dead__14daObjLv4Sand_cFv */
void daObjLv4Sand_c::mode_dead() {
    /* empty function */
}

/* 80C6A0AC-80C6A0D0 00068C 0024+00 2/1 0/0 0/0 .text            eventStart__14daObjLv4Sand_cFv */
void daObjLv4Sand_c::eventStart() {
    // NONMATCHING
}

/* 80C6A0D0-80C6A18C 0006B0 00BC+00 1/0 0/0 0/0 .text            Draw__14daObjLv4Sand_cFv */
void daObjLv4Sand_c::Draw() {
    // NONMATCHING
}

/* 80C6A18C-80C6A1C0 00076C 0034+00 1/0 0/0 0/0 .text            Delete__14daObjLv4Sand_cFv */
void daObjLv4Sand_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C6A4C0-80C6A508 0000E0 0048+00 2/2 0/0 0/0 .data            __vt__14daObjLv4Sand_c */
SECTION_DATA extern void* __vt__14daObjLv4Sand_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__14daObjLv4Sand_cFv,
    (void*)Create__14daObjLv4Sand_cFv,
    (void*)Execute__14daObjLv4Sand_cFPPA3_A4_f,
    (void*)Draw__14daObjLv4Sand_cFv,
    (void*)Delete__14daObjLv4Sand_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C6A3A8,
    (void*)func_80C6A3A0,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
    (void*)__dt__14daObjLv4Sand_cFv,
    (void*)eventStart__14daObjLv4Sand_cFv,
};

/* 80C6A1C0-80C6A240 0007A0 0080+00 1/0 0/0 0/0 .text daObjLv4Sand_create1st__FP14daObjLv4Sand_c
 */
static void daObjLv4Sand_create1st(daObjLv4Sand_c* param_0) {
    // NONMATCHING
}

/* 80C6A240-80C6A260 000820 0020+00 1/0 0/0 0/0 .text
 * daObjLv4Sand_MoveBGDelete__FP14daObjLv4Sand_c                */
static void daObjLv4Sand_MoveBGDelete(daObjLv4Sand_c* param_0) {
    // NONMATCHING
}

/* 80C6A260-80C6A280 000840 0020+00 1/0 0/0 0/0 .text
 * daObjLv4Sand_MoveBGExecute__FP14daObjLv4Sand_c               */
static void daObjLv4Sand_MoveBGExecute(daObjLv4Sand_c* param_0) {
    // NONMATCHING
}

/* 80C6A280-80C6A2AC 000860 002C+00 1/0 0/0 0/0 .text daObjLv4Sand_MoveBGDraw__FP14daObjLv4Sand_c
 */
static void daObjLv4Sand_MoveBGDraw(daObjLv4Sand_c* param_0) {
    // NONMATCHING
}

/* 80C6A2AC-80C6A2F4 00088C 0048+00 1/0 0/0 0/0 .text            __dt__17dEvLib_callback_cFv */
// dEvLib_callback_c::~dEvLib_callback_c() {
extern "C" void __dt__17dEvLib_callback_cFv() {
    // NONMATCHING
}

/* 80C6A2F4-80C6A2FC 0008D4 0008+00 1/0 0/0 0/0 .text            eventStart__17dEvLib_callback_cFv
 */
// bool dEvLib_callback_c::eventStart() {
extern "C" bool eventStart__17dEvLib_callback_cFv() {
    return true;
}

/* 80C6A2FC-80C6A304 0008DC 0008+00 2/0 0/0 0/0 .text            eventRun__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventRun() {
extern "C" bool eventRun__17dEvLib_callback_cFv() {
    return true;
}

/* 80C6A304-80C6A30C 0008E4 0008+00 2/0 0/0 0/0 .text            eventEnd__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventEnd() {
extern "C" bool eventEnd__17dEvLib_callback_cFv() {
    return true;
}

/* 80C6A30C-80C6A3A0 0008EC 0094+00 2/1 0/0 0/0 .text            __dt__14daObjLv4Sand_cFv */
daObjLv4Sand_c::~daObjLv4Sand_c() {
    // NONMATCHING
}

/* 80C6A3A0-80C6A3A8 000980 0008+00 1/0 0/0 0/0 .text @1440@eventStart__14daObjLv4Sand_cFv */
static void func_80C6A3A0() {
    // NONMATCHING
}

/* 80C6A3A8-80C6A3B0 000988 0008+00 1/0 0/0 0/0 .text            @1440@__dt__14daObjLv4Sand_cFv */
static void func_80C6A3A8() {
    // NONMATCHING
}

/* 80C6A3D4-80C6A3D4 00001C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
