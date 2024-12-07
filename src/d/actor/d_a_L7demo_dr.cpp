/**
 * @file d_a_L7demo_dr.cpp
 * 
*/

#include "d/actor/d_a_L7demo_dr.h"
#include "dol2asm.h"
#include "d/d_camera.h"

//
// Forward References:
//

extern "C" void setAction__6daDr_cFM6daDr_cFPCvPv_v();
extern "C" void action__6daDr_cFv();
extern "C" void mtx_set__6daDr_cFv();
extern "C" void draw__6daDr_cFv();
extern "C" static void daDr_Draw__FP6daDr_c();
extern "C" void wait__6daDr_cFv();
extern "C" void pl_walk__6daDr_cFv();
extern "C" void pl_turn__6daDr_cFv();
extern "C" void bridge_destroy__6daDr_cFv();
extern "C" void bridge_destroy2__6daDr_cFv();
extern "C" void execute__6daDr_cFv();
extern "C" static void daDr_Execute__FP6daDr_c();
extern "C" static bool daDr_IsDelete__FP6daDr_c();
extern "C" void _delete__6daDr_cFv();
extern "C" static void daDr_Delete__FP6daDr_c();
extern "C" void CreateHeap__6daDr_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void check_start__6daDr_cFv();
extern "C" void create__6daDr_cFv();
extern "C" static void daDr_Create__FP6daDr_c();
extern "C" extern char const* const d_a_L7demo_dr__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopOvlpM_IsPeek__Fv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __ptmf_test();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];

//
// Declarations:
//

/* 805A9238-805A92DC 000078 00A4+00 5/5 0/0 0/0 .text            setAction__6daDr_cFM6daDr_cFPCvPv_v
 */
void daDr_c::setAction(void (daDr_c::*param_0)()) {
    // NONMATCHING
}

/* 805A92DC-805A9304 00011C 0028+00 1/1 0/0 0/0 .text            action__6daDr_cFv */
void daDr_c::action() {
    // NONMATCHING
}

/* 805A9304-805A93D4 000144 00D0+00 1/1 0/0 0/0 .text            mtx_set__6daDr_cFv */
void daDr_c::mtx_set() {
    // NONMATCHING
}

/* 805A93D4-805A9458 000214 0084+00 1/1 0/0 0/0 .text            draw__6daDr_cFv */
void daDr_c::draw() {
    // NONMATCHING
}

/* 805A9458-805A9478 000298 0020+00 1/0 0/0 0/0 .text            daDr_Draw__FP6daDr_c */
static void daDr_Draw(daDr_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805AA454-805AA458 000000 0004+00 6/6 0/0 0/0 .rodata          @3864 */
SECTION_RODATA static f32 const lit_3864 = -7200.0f;
COMPILER_STRIP_GATE(0x805AA454, &lit_3864);

/* 805AA458-805AA45C 000004 0004+00 0/2 0/0 0/0 .rodata          @3865 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3865 = -200.0f;
COMPILER_STRIP_GATE(0x805AA458, &lit_3865);
#pragma pop

/* 805AA45C-805AA460 000008 0004+00 0/3 0/0 0/0 .rodata          @3866 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3866 = -12450.0f;
COMPILER_STRIP_GATE(0x805AA45C, &lit_3866);
#pragma pop

/* 805AA4D0-805AA4DC -00001 000C+00 1/1 0/0 0/0 .data            @3830 */
SECTION_DATA static void* lit_3830[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)pl_walk__6daDr_cFv,
};

/* 805AA4DC-805AA4E8 -00001 000C+00 1/1 0/0 0/0 .data            @3833 */
SECTION_DATA static void* lit_3833[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)pl_turn__6daDr_cFv,
};

/* 805A9478-805A963C 0002B8 01C4+00 2/0 0/0 0/0 .text            wait__6daDr_cFv */
void daDr_c::wait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805AA460-805AA464 00000C 0004+00 0/1 0/0 0/0 .rodata          @3946 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3946 = -4383.0f;
COMPILER_STRIP_GATE(0x805AA460, &lit_3946);
#pragma pop

/* 805AA464-805AA468 000010 0004+00 0/1 0/0 0/0 .rodata          @3947 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3947 = 285.0f;
COMPILER_STRIP_GATE(0x805AA464, &lit_3947);
#pragma pop

/* 805AA468-805AA46C 000014 0004+00 0/1 0/0 0/0 .rodata          @3948 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3948 = -4688.0f;
COMPILER_STRIP_GATE(0x805AA468, &lit_3948);
#pragma pop

/* 805AA46C-805AA470 000018 0004+00 0/1 0/0 0/0 .rodata          @3949 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3949 = 340.0f;
COMPILER_STRIP_GATE(0x805AA46C, &lit_3949);
#pragma pop

/* 805AA470-805AA474 00001C 0004+00 0/2 0/0 0/0 .rodata          @3950 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3950 = -4450.0f;
COMPILER_STRIP_GATE(0x805AA470, &lit_3950);
#pragma pop

/* 805AA474-805AA478 000020 0004+00 1/4 0/0 0/0 .rodata          @3951 */
SECTION_RODATA static u8 const lit_3951[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x805AA474, &lit_3951);

/* 805AA478-805AA47C 000024 0004+00 0/1 0/0 0/0 .rodata          @3952 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3952 = -4100.0f;
COMPILER_STRIP_GATE(0x805AA478, &lit_3952);
#pragma pop

/* 805AA4E8-805AA4F4 -00001 000C+00 1/1 0/0 0/0 .data            @3886 */
SECTION_DATA static void* lit_3886[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)pl_turn__6daDr_cFv,
};

/* 805A963C-805A9914 00047C 02D8+00 1/0 0/0 0/0 .text            pl_walk__6daDr_cFv */
void daDr_c::pl_walk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805AA4F4-805AA500 -00001 000C+00 1/1 0/0 0/0 .data            @3978 */
SECTION_DATA static void* lit_3978[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)bridge_destroy__6daDr_cFv,
};

/* 805A9914-805A9A34 000754 0120+00 2/0 0/0 0/0 .text            pl_turn__6daDr_cFv */
void daDr_c::pl_turn() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805AA47C-805AA480 000028 0004+00 0/3 0/0 0/0 .rodata          @4123 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4123 = 1.0f;
COMPILER_STRIP_GATE(0x805AA47C, &lit_4123);
#pragma pop

/* 805AA480-805AA484 00002C 0004+00 0/1 0/0 0/0 .rodata          @4124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4124 = -4600.0f;
COMPILER_STRIP_GATE(0x805AA480, &lit_4124);
#pragma pop

/* 805AA484-805AA488 000030 0004+00 0/1 0/0 0/0 .rodata          @4125 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4125 = 80.0f;
COMPILER_STRIP_GATE(0x805AA484, &lit_4125);
#pragma pop

/* 805AA488-805AA48C 000034 0004+00 0/1 0/0 0/0 .rodata          @4126 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4126 = 156.0f;
COMPILER_STRIP_GATE(0x805AA488, &lit_4126);
#pragma pop

/* 805AA48C-805AA490 000038 0004+00 0/1 0/0 0/0 .rodata          @4127 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4127 = 210.0f;
COMPILER_STRIP_GATE(0x805AA48C, &lit_4127);
#pragma pop

/* 805AA500-805AA50C -00001 000C+00 1/1 0/0 0/0 .data            @4041 */
SECTION_DATA static void* lit_4041[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)bridge_destroy2__6daDr_cFv,
};

/* 805A9A34-805A9D10 000874 02DC+00 1/0 0/0 0/0 .text            bridge_destroy__6daDr_cFv */
void daDr_c::bridge_destroy() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805AA490-805AA494 00003C 0004+00 0/1 0/0 0/0 .rodata          @4182 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4182 = -6700.0f;
COMPILER_STRIP_GATE(0x805AA490, &lit_4182);
#pragma pop

/* 805AA494-805AA498 000040 0004+00 0/1 0/0 0/0 .rodata          @4183 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4183 = -850.0f;
COMPILER_STRIP_GATE(0x805AA494, &lit_4183);
#pragma pop

/* 805AA498-805AA49C 000044 0004+00 0/1 0/0 0/0 .rodata          @4184 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4184 = -20300.0f;
COMPILER_STRIP_GATE(0x805AA498, &lit_4184);
#pragma pop

/* 805AA49C-805AA4A0 000048 0004+00 0/1 0/0 0/0 .rodata          @4185 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4185 = -900.0f;
COMPILER_STRIP_GATE(0x805AA49C, &lit_4185);
#pragma pop

/* 805AA4A0-805AA4A4 00004C 0004+00 0/1 0/0 0/0 .rodata          @4186 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4186 = -20700.0f;
COMPILER_STRIP_GATE(0x805AA4A0, &lit_4186);
#pragma pop

/* 805A9D10-805A9EE4 000B50 01D4+00 1/0 0/0 0/0 .text            bridge_destroy2__6daDr_cFv */
void daDr_c::bridge_destroy2() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805AA4A4-805AA4A8 000050 0004+00 1/1 0/0 0/0 .rodata          @4217 */
SECTION_RODATA static f32 const lit_4217 = 115.0f;
COMPILER_STRIP_GATE(0x805AA4A4, &lit_4217);

/* 805AA4A8-805AA4AC 000054 0004+00 1/1 0/0 0/0 .rodata          @4218 */
SECTION_RODATA static f32 const lit_4218 = 147.0f;
COMPILER_STRIP_GATE(0x805AA4A8, &lit_4218);

/* 805A9EE4-805A9FD4 000D24 00F0+00 1/1 0/0 0/0 .text            execute__6daDr_cFv */
void daDr_c::execute() {
    // NONMATCHING
}

/* 805A9FD4-805A9FF4 000E14 0020+00 2/1 0/0 0/0 .text            daDr_Execute__FP6daDr_c */
static void daDr_Execute(daDr_c* param_0) {
    // NONMATCHING
}

/* 805A9FF4-805A9FFC 000E34 0008+00 1/0 0/0 0/0 .text            daDr_IsDelete__FP6daDr_c */
static bool daDr_IsDelete(daDr_c* param_0) {
    return true;
}

/* ############################################################################################## */
/* 805AA4C8-805AA4C8 000074 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_805AA4C8 = "B_dr";
#pragma pop

/* 805A9FFC-805AA064 000E3C 0068+00 1/1 0/0 0/0 .text            _delete__6daDr_cFv */
void daDr_c::_delete() {
    // NONMATCHING
}

/* 805AA064-805AA084 000EA4 0020+00 1/0 0/0 0/0 .text            daDr_Delete__FP6daDr_c */
static void daDr_Delete(daDr_c* param_0) {
    // NONMATCHING
}

/* 805AA084-805AA17C 000EC4 00F8+00 1/1 0/0 0/0 .text            CreateHeap__6daDr_cFv */
void daDr_c::CreateHeap() {
    // NONMATCHING
}

/* 805AA17C-805AA19C 000FBC 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805AA4AC-805AA4B0 000058 0004+00 0/1 0/0 0/0 .rodata          @4290 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4290 = -4480.0f;
COMPILER_STRIP_GATE(0x805AA4AC, &lit_4290);
#pragma pop

/* 805AA4B0-805AA4B4 00005C 0004+00 0/1 0/0 0/0 .rodata          @4291 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4291 = -3730.0f;
COMPILER_STRIP_GATE(0x805AA4B0, &lit_4291);
#pragma pop

/* 805AA4B4-805AA4B8 000060 0004+00 0/1 0/0 0/0 .rodata          @4292 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4292 = -12800.0f;
COMPILER_STRIP_GATE(0x805AA4B4, &lit_4292);
#pragma pop

/* 805AA4B8-805AA4BC 000064 0004+00 0/1 0/0 0/0 .rodata          @4293 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4293 = -12100.0f;
COMPILER_STRIP_GATE(0x805AA4B8, &lit_4293);
#pragma pop

/* 805AA19C-805AA224 000FDC 0088+00 1/1 0/0 0/0 .text            check_start__6daDr_cFv */
void daDr_c::check_start() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805AA4BC-805AA4C0 000068 0004+00 0/1 0/0 0/0 .rodata          @4370 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4370 = -21133.0f;
COMPILER_STRIP_GATE(0x805AA4BC, &lit_4370);
#pragma pop

/* 805AA4C0-805AA4C4 00006C 0004+00 0/1 0/0 0/0 .rodata          @4371 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4371 = 4660.0f;
COMPILER_STRIP_GATE(0x805AA4C0, &lit_4371);
#pragma pop

/* 805AA4C4-805AA4C8 000070 0004+00 0/1 0/0 0/0 .rodata          @4372 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4372 = -24785.0f;
COMPILER_STRIP_GATE(0x805AA4C4, &lit_4372);
#pragma pop

/* 805AA50C-805AA518 -00001 000C+00 1/1 0/0 0/0 .data            @4306 */
SECTION_DATA static void* lit_4306[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__6daDr_cFv,
};

/* 805AA518-805AA524 -00001 000C+00 1/1 0/0 0/0 .data            @4317 */
SECTION_DATA static void* lit_4317[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__6daDr_cFv,
};

/* 805AA224-805AA42C 001064 0208+00 1/1 0/0 0/0 .text            create__6daDr_cFv */
void daDr_c::create() {
    // NONMATCHING
}

/* 805AA42C-805AA44C 00126C 0020+00 1/0 0/0 0/0 .text            daDr_Create__FP6daDr_c */
static void daDr_Create(daDr_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805AA524-805AA544 -00001 0020+00 1/0 0/0 0/0 .data            l_daDr_Method */
static actor_method_class l_daDr_Method = {
    (process_method_func)daDr_Create__FP6daDr_c,
    (process_method_func)daDr_Delete__FP6daDr_c,
    (process_method_func)daDr_Execute__FP6daDr_c,
    (process_method_func)daDr_IsDelete__FP6daDr_c,
    (process_method_func)daDr_Draw__FP6daDr_c,
};

/* 805AA544-805AA574 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_DR */
extern actor_process_profile_definition g_profile_DR = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_DR,                // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daDr_c),         // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  206,                    // mPriority
  &l_daDr_Method,         // sub_method
  0x00040000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 805AA4C8-805AA4C8 000074 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
