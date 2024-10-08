/**
 * @file d_a_L7op_demo_dr.cpp
 * 
*/

#include "d/actor/d_a_L7op_demo_dr.h"
#include "dol2asm.h"
#include "d/d_camera.h"


//
// Forward References:
//

extern "C" void setAction__9daL7ODR_cFM9daL7ODR_cFPCvPv_v();
extern "C" void action__9daL7ODR_cFv();
extern "C" void setDrAction__9daL7ODR_cFM9daL7ODR_cFPCvPv_v();
extern "C" void dr_action__9daL7ODR_cFv();
extern "C" void mtx_set__9daL7ODR_cFv();
extern "C" void draw__9daL7ODR_cFv();
extern "C" static void daL7ODR_Draw__FP9daL7ODR_c();
extern "C" void wait__9daL7ODR_cFv();
extern "C" void pl_walk__9daL7ODR_cFv();
extern "C" void setZoomOutCamPos__9daL7ODR_cFR4cXyzR4cXyzf();
extern "C" void dr_wait__9daL7ODR_cFv();
extern "C" void dr_fly__9daL7ODR_cFv();
extern "C" void execute__9daL7ODR_cFv();
extern "C" static void daL7ODR_Execute__FP9daL7ODR_c();
extern "C" static bool daL7ODR_IsDelete__FP9daL7ODR_c();
extern "C" void _delete__9daL7ODR_cFv();
extern "C" static void daL7ODR_Delete__FP9daL7ODR_c();
extern "C" void CreateHeap__9daL7ODR_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void check_start__9daL7ODR_cFv();
extern "C" void create__9daL7ODR_cFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" static void daL7ODR_Create__FP9daL7ODR_c();
extern "C" static void func_805ADD68();
extern "C" static void func_805ADD70();
extern "C" void changeDemoPos0__9daPy_py_cFPC4cXyz();
extern "C" void changeDemoMode__9daPy_py_cFUliis();
extern "C" void isStop__13mDoExt_morf_cFv();
extern "C" void abs__4cXyzCFRC3Vec();
extern "C" void __ct__4cXyzFRC4cXyz();
extern "C" void multVecZero__14mDoMtx_stack_cFP3Vec();
extern "C" void __as__4cXyzFRC4cXyz();
extern "C" extern char const* const d_a_L7op_demo_dr__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopMsgM_messageSetDemo__FUl();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_onZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void setRoom__13dSv_restart_cFRC4cXyzsSc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void daNpcF_getPlayerInfoFromPlayerList__FiiR4cXyzR5csXyz();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyz();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" bool __eq__4cXyzCFRC3Vec();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __ptmf_test();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 805AB098-805AB13C 000078 00A4+00 2/2 0/0 0/0 .text setAction__9daL7ODR_cFM9daL7ODR_cFPCvPv_v */
void daL7ODR_c::setAction(void (daL7ODR_c::*param_0)()) {
    // NONMATCHING
}

/* 805AB13C-805AB164 00011C 0028+00 1/1 0/0 0/0 .text            action__9daL7ODR_cFv */
void daL7ODR_c::action() {
    // NONMATCHING
}

/* 805AB164-805AB208 000144 00A4+00 2/2 0/0 0/0 .text setDrAction__9daL7ODR_cFM9daL7ODR_cFPCvPv_v
 */
void daL7ODR_c::setDrAction(void (daL7ODR_c::*param_0)()) {
    // NONMATCHING
}

/* 805AB208-805AB230 0001E8 0028+00 1/1 0/0 0/0 .text            dr_action__9daL7ODR_cFv */
void daL7ODR_c::dr_action() {
    // NONMATCHING
}

/* 805AB230-805AB2E8 000210 00B8+00 1/1 0/0 0/0 .text            mtx_set__9daL7ODR_cFv */
void daL7ODR_c::mtx_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805ADF50-805ADF54 000000 0004+00 7/7 0/0 0/0 .rodata          @3850 */
SECTION_RODATA static f32 const lit_3850 = 10.0f;
COMPILER_STRIP_GATE(0x805ADF50, &lit_3850);

/* 805ADF54-805ADF58 000004 0004+00 0/1 0/0 0/0 .rodata          @3851 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3851 = 6000.0f;
COMPILER_STRIP_GATE(0x805ADF54, &lit_3851);
#pragma pop

/* 805ADF58-805ADF5C 000008 0004+00 2/8 0/0 0/0 .rodata          @3852 */
SECTION_RODATA static u8 const lit_3852[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x805ADF58, &lit_3852);

/* 805ADF5C-805ADF60 00000C 0004+00 1/6 0/0 0/0 .rodata          @3853 */
SECTION_RODATA static f32 const lit_3853 = 1.0f;
COMPILER_STRIP_GATE(0x805ADF5C, &lit_3853);

/* 805AB2E8-805AB3D0 0002C8 00E8+00 1/1 0/0 0/0 .text            draw__9daL7ODR_cFv */
void daL7ODR_c::draw() {
    // NONMATCHING
}

/* 805AB3D0-805AB3F0 0003B0 0020+00 1/0 0/0 0/0 .text            daL7ODR_Draw__FP9daL7ODR_c */
static void daL7ODR_Draw(daL7ODR_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805AE0B8-805AE0C4 -00001 000C+00 1/1 0/0 0/0 .data            @3871 */
SECTION_DATA static void* lit_3871[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)pl_walk__9daL7ODR_cFv,
};

/* 805AB3F0-805AB520 0003D0 0130+00 1/0 0/0 0/0 .text            wait__9daL7ODR_cFv */
void daL7ODR_c::wait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805ADF60-805ADF64 000010 0004+00 0/1 0/0 0/0 .rodata          @4115 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4115 = -790.0f;
COMPILER_STRIP_GATE(0x805ADF60, &lit_4115);
#pragma pop

/* 805ADF64-805ADF68 000014 0004+00 0/1 0/0 0/0 .rodata          @4116 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4116 = 3125.0f;
COMPILER_STRIP_GATE(0x805ADF64, &lit_4116);
#pragma pop

/* 805ADF68-805ADF6C 000018 0004+00 0/1 0/0 0/0 .rodata          @4117 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4117 = -900.0f;
COMPILER_STRIP_GATE(0x805ADF68, &lit_4117);
#pragma pop

/* 805ADF6C-805ADF70 00001C 0004+00 0/1 0/0 0/0 .rodata          @4118 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4118 = 500.0f;
COMPILER_STRIP_GATE(0x805ADF6C, &lit_4118);
#pragma pop

/* 805ADF70-805ADF74 000020 0004+00 0/1 0/0 0/0 .rodata          @4119 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4119 = 4800.0f;
COMPILER_STRIP_GATE(0x805ADF70, &lit_4119);
#pragma pop

/* 805ADF74-805ADF78 000024 0004+00 0/1 0/0 0/0 .rodata          @4120 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4120 = -910.0f;
COMPILER_STRIP_GATE(0x805ADF74, &lit_4120);
#pragma pop

/* 805ADF78-805ADF7C 000028 0004+00 0/1 0/0 0/0 .rodata          @4121 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4121 = 520.0f;
COMPILER_STRIP_GATE(0x805ADF78, &lit_4121);
#pragma pop

/* 805ADF7C-805ADF80 00002C 0004+00 0/1 0/0 0/0 .rodata          @4122 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4122 = 5500.0f;
COMPILER_STRIP_GATE(0x805ADF7C, &lit_4122);
#pragma pop

/* 805ADF80-805ADF84 000030 0004+00 0/1 0/0 0/0 .rodata          @4123 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4123 = 64.0f;
COMPILER_STRIP_GATE(0x805ADF80, &lit_4123);
#pragma pop

/* 805ADF84-805ADF88 000034 0004+00 0/2 0/0 0/0 .rodata          @4124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4124 = 2.0f;
COMPILER_STRIP_GATE(0x805ADF84, &lit_4124);
#pragma pop

/* 805ADF88-805ADF8C 000038 0004+00 0/1 0/0 0/0 .rodata          @4125 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4125 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x805ADF88, &lit_4125);
#pragma pop

/* 805ADF8C-805ADF90 00003C 0004+00 0/1 0/0 0/0 .rodata          @4126 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4126 = 120.0f;
COMPILER_STRIP_GATE(0x805ADF8C, &lit_4126);
#pragma pop

/* 805ADF90-805ADF94 000040 0004+00 0/1 0/0 0/0 .rodata          @4127 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4127 = 2300.0f;
COMPILER_STRIP_GATE(0x805ADF90, &lit_4127);
#pragma pop

/* 805ADF94-805ADF98 000044 0004+00 0/2 0/0 0/0 .rodata          @4128 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4128 = 100.0f;
COMPILER_STRIP_GATE(0x805ADF94, &lit_4128);
#pragma pop

/* 805ADF98-805ADF9C 000048 0004+00 0/3 0/0 0/0 .rodata          @4129 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4129 = 3000.0f;
COMPILER_STRIP_GATE(0x805ADF98, &lit_4129);
#pragma pop

/* 805ADF9C-805ADFA0 00004C 0004+00 0/2 0/0 0/0 .rodata          @4130 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4130 = 1400.0f;
COMPILER_STRIP_GATE(0x805ADF9C, &lit_4130);
#pragma pop

/* 805AE0C4-805AE0D0 -00001 000C+00 1/1 0/0 0/0 .data            @3940 */
SECTION_DATA static void* lit_3940[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)dr_fly__9daL7ODR_cFv,
};

/* 805AE0D0-805AE0DC -00001 000C+00 1/1 0/0 0/0 .data            @3947 */
SECTION_DATA static void* lit_3947[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)dr_fly__9daL7ODR_cFv,
};

/* 805AB520-805ABC2C 000500 070C+00 1/0 0/0 0/0 .text            pl_walk__9daL7ODR_cFv */
void daL7ODR_c::pl_walk() {
    // NONMATCHING
}

/* 805ABC2C-805ABCF8 000C0C 00CC+00 1/1 0/0 0/0 .text setZoomOutCamPos__9daL7ODR_cFR4cXyzR4cXyzf
 */
void daL7ODR_c::setZoomOutCamPos(cXyz& param_0, cXyz& param_1, f32 param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805ADFA0-805ADFA4 000050 0004+00 0/1 0/0 0/0 .rodata          @4181 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4181 = 5000.0f;
COMPILER_STRIP_GATE(0x805ADFA0, &lit_4181);
#pragma pop

/* 805ADFA4-805ADFA8 000054 0004+00 0/1 0/0 0/0 .rodata          @4182 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4182 = 7000.0f;
COMPILER_STRIP_GATE(0x805ADFA4, &lit_4182);
#pragma pop

/* 805ADFA8-805ADFAC 000058 0004+00 0/2 0/0 0/0 .rodata          @4183 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4183 = 3.0f;
COMPILER_STRIP_GATE(0x805ADFA8, &lit_4183);
#pragma pop

/* 805ADFAC-805ADFB0 00005C 0004+00 0/2 0/0 0/0 .rodata          @4184 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4184 = -1.0f;
COMPILER_STRIP_GATE(0x805ADFAC, &lit_4184);
#pragma pop

/* 805ADFB0-805ADFB4 000060 0004+00 0/3 0/0 0/0 .rodata          @4185 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4185 = 20.0f;
COMPILER_STRIP_GATE(0x805ADFB0, &lit_4185);
#pragma pop

/* 805AE0AC-805AE0AC 00015C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_805AE0AC = "B_dr";
#pragma pop

/* 805ABCF8-805ABE0C 000CD8 0114+00 1/0 0/0 0/0 .text            dr_wait__9daL7ODR_cFv */
void daL7ODR_c::dr_wait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805ADFB4-805ADFB8 000064 0004+00 0/1 0/0 0/0 .rodata          @4635 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4635 = 600.0f;
COMPILER_STRIP_GATE(0x805ADFB4, &lit_4635);
#pragma pop

/* 805ADFB8-805ADFBC 000068 0004+00 0/1 0/0 0/0 .rodata          @4636 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4636 = 160.0f;
COMPILER_STRIP_GATE(0x805ADFB8, &lit_4636);
#pragma pop

/* 805ADFBC-805ADFC0 00006C 0004+00 0/1 0/0 0/0 .rodata          @4637 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4637 = 400.0f;
COMPILER_STRIP_GATE(0x805ADFBC, &lit_4637);
#pragma pop

/* 805ADFC0-805ADFC4 000070 0004+00 0/1 0/0 0/0 .rodata          @4638 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4638 = 60.0f;
COMPILER_STRIP_GATE(0x805ADFC0, &lit_4638);
#pragma pop

/* 805ADFC4-805ADFC8 000074 0004+00 0/1 0/0 0/0 .rodata          @4639 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4639 = 8.0f;
COMPILER_STRIP_GATE(0x805ADFC4, &lit_4639);
#pragma pop

/* 805ADFC8-805ADFCC 000078 0004+00 0/1 0/0 0/0 .rodata          @4640 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4640 = 1800.0f;
COMPILER_STRIP_GATE(0x805ADFC8, &lit_4640);
#pragma pop

/* 805ADFCC-805ADFD0 00007C 0004+00 0/1 0/0 0/0 .rodata          @4641 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4641 = 140.0f;
COMPILER_STRIP_GATE(0x805ADFCC, &lit_4641);
#pragma pop

/* 805ADFD0-805ADFD4 000080 0004+00 0/1 0/0 0/0 .rodata          @4642 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4642 = 4.0f;
COMPILER_STRIP_GATE(0x805ADFD0, &lit_4642);
#pragma pop

/* 805ADFD4-805ADFD8 000084 0004+00 0/1 0/0 0/0 .rodata          @4643 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4643 = 80.0f;
COMPILER_STRIP_GATE(0x805ADFD4, &lit_4643);
#pragma pop

/* 805ADFD8-805ADFDC 000088 0004+00 0/1 0/0 0/0 .rodata          @4644 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4644 = 0.5f;
COMPILER_STRIP_GATE(0x805ADFD8, &lit_4644);
#pragma pop

/* 805ADFDC-805ADFE0 00008C 0004+00 0/1 0/0 0/0 .rodata          @4645 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4645 = -1400.0f;
COMPILER_STRIP_GATE(0x805ADFDC, &lit_4645);
#pragma pop

/* 805ADFE0-805ADFE4 000090 0004+00 0/1 0/0 0/0 .rodata          @4646 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4646 = 33.0f;
COMPILER_STRIP_GATE(0x805ADFE0, &lit_4646);
#pragma pop

/* 805ADFE4-805ADFE8 000094 0004+00 0/1 0/0 0/0 .rodata          @4647 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4647 = 2674.0f;
COMPILER_STRIP_GATE(0x805ADFE4, &lit_4647);
#pragma pop

/* 805ADFE8-805ADFEC 000098 0004+00 0/1 0/0 0/0 .rodata          @4648 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4648 = 3038.0f;
COMPILER_STRIP_GATE(0x805ADFE8, &lit_4648);
#pragma pop

/* 805ADFEC-805ADFF0 00009C 0004+00 0/1 0/0 0/0 .rodata          @4649 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4649 = 240.0f;
COMPILER_STRIP_GATE(0x805ADFEC, &lit_4649);
#pragma pop

/* 805ADFF0-805ADFF4 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4650 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4650 = 90.0f;
COMPILER_STRIP_GATE(0x805ADFF0, &lit_4650);
#pragma pop

/* 805ADFF4-805ADFF8 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4651 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4651 = -140.0f;
COMPILER_STRIP_GATE(0x805ADFF4, &lit_4651);
#pragma pop

/* 805ADFF8-805ADFFC 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4652 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4652 = 2045.0f;
COMPILER_STRIP_GATE(0x805ADFF8, &lit_4652);
#pragma pop

/* 805ADFFC-805AE000 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4653 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4653 = 460.0f;
COMPILER_STRIP_GATE(0x805ADFFC, &lit_4653);
#pragma pop

/* 805AE000-805AE004 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4654 = 2800.0f;
COMPILER_STRIP_GATE(0x805AE000, &lit_4654);
#pragma pop

/* 805AE004-805AE008 0000B4 0004+00 0/2 0/0 0/0 .rodata          @4655 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4655 = 40.0f;
COMPILER_STRIP_GATE(0x805AE004, &lit_4655);
#pragma pop

/* 805AE008-805AE00C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4656 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4656 = 220.0f;
COMPILER_STRIP_GATE(0x805AE008, &lit_4656);
#pragma pop

/* 805AE00C-805AE010 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4657 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4657 = 1200.0f;
COMPILER_STRIP_GATE(0x805AE00C, &lit_4657);
#pragma pop

/* 805AE010-805AE014 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4658 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4658 = 4.5f;
COMPILER_STRIP_GATE(0x805AE010, &lit_4658);
#pragma pop

/* 805AE014-805AE018 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4659 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4659 = 85.0f;
COMPILER_STRIP_GATE(0x805AE014, &lit_4659);
#pragma pop

/* 805AE018-805AE01C 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4660 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4660 = 800.0f;
COMPILER_STRIP_GATE(0x805AE018, &lit_4660);
#pragma pop

/* 805AE01C-805AE020 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4661 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4661 = 1720.0f;
COMPILER_STRIP_GATE(0x805AE01C, &lit_4661);
#pragma pop

/* 805AE020-805AE024 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4662 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4662 = 135.0f;
COMPILER_STRIP_GATE(0x805AE020, &lit_4662);
#pragma pop

/* 805AE024-805AE028 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4663 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4663 = -21.0f;
COMPILER_STRIP_GATE(0x805AE024, &lit_4663);
#pragma pop

/* 805AE028-805AE02C 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4664 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4664 = 128.0f;
COMPILER_STRIP_GATE(0x805AE028, &lit_4664);
#pragma pop

/* 805AE02C-805AE030 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4665 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4665 = -930.0f;
COMPILER_STRIP_GATE(0x805AE02C, &lit_4665);
#pragma pop

/* 805AE030-805AE034 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4666 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4666 = 1000.0f;
COMPILER_STRIP_GATE(0x805AE030, &lit_4666);
#pragma pop

/* 805AE034-805AE038 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4667 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4667 = 3072.0f;
COMPILER_STRIP_GATE(0x805AE034, &lit_4667);
#pragma pop

/* 805AE038-805AE03C 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4668 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4668 = 96.0f;
COMPILER_STRIP_GATE(0x805AE038, &lit_4668);
#pragma pop

/* 805AE03C-805AE040 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4669 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4669 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x805AE03C, &lit_4669);
#pragma pop

/* 805AE040-805AE044 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4670 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4670 = -400.0f;
COMPILER_STRIP_GATE(0x805AE040, &lit_4670);
#pragma pop

/* 805AE044-805AE048 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4671 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4671 = 5.0f;
COMPILER_STRIP_GATE(0x805AE044, &lit_4671);
#pragma pop

/* 805AE048-805AE04C 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4672 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4672 = 35.0f;
COMPILER_STRIP_GATE(0x805AE048, &lit_4672);
#pragma pop

/* 805AE04C-805AE050 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4673 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4673 = 1700.0f;
COMPILER_STRIP_GATE(0x805AE04C, &lit_4673);
#pragma pop

/* 805AE050-805AE054 000100 0004+00 0/1 0/0 0/0 .rodata          @4674 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4674 = -680.0f;
COMPILER_STRIP_GATE(0x805AE050, &lit_4674);
#pragma pop

/* 805AE054-805AE058 000104 0004+00 0/1 0/0 0/0 .rodata          @4675 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4675 = 22.0f;
COMPILER_STRIP_GATE(0x805AE054, &lit_4675);
#pragma pop

/* 805AE058-805AE05C 000108 0004+00 0/1 0/0 0/0 .rodata          @4676 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4676 = 59.0f;
COMPILER_STRIP_GATE(0x805AE058, &lit_4676);
#pragma pop

/* 805AE05C-805AE060 00010C 0004+00 0/1 0/0 0/0 .rodata          @4677 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4677 = 92.0f;
COMPILER_STRIP_GATE(0x805AE05C, &lit_4677);
#pragma pop

/* 805AE060-805AE064 000110 0004+00 0/1 0/0 0/0 .rodata          @4678 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4678 = 125.0f;
COMPILER_STRIP_GATE(0x805AE060, &lit_4678);
#pragma pop

/* 805AE064-805AE068 000114 0004+00 0/1 0/0 0/0 .rodata          @4679 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4679 = 29.0f;
COMPILER_STRIP_GATE(0x805AE064, &lit_4679);
#pragma pop

/* 805AE068-805AE06C 000118 0004+00 0/1 0/0 0/0 .rodata          @4680 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4680 = 132.0f;
COMPILER_STRIP_GATE(0x805AE068, &lit_4680);
#pragma pop

/* 805AE06C-805AE070 00011C 0004+00 0/1 0/0 0/0 .rodata          @4681 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4681 = 200.0f;
COMPILER_STRIP_GATE(0x805AE06C, &lit_4681);
#pragma pop

/* 805AE070-805AE074 000120 0004+00 0/1 0/0 0/0 .rodata          @4682 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4682 = 7.0f;
COMPILER_STRIP_GATE(0x805AE070, &lit_4682);
#pragma pop

/* 805AE074-805AE078 000124 0004+00 0/1 0/0 0/0 .rodata          @4683 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4683 = 37.0f;
COMPILER_STRIP_GATE(0x805AE074, &lit_4683);
#pragma pop

/* 805AE078-805AE07C 000128 0004+00 0/1 0/0 0/0 .rodata          @4684 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4684 = 62.0f;
COMPILER_STRIP_GATE(0x805AE078, &lit_4684);
#pragma pop

/* 805AE07C-805AE080 00012C 0004+00 0/1 0/0 0/0 .rodata          @4685 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4685 = 2200.0f;
COMPILER_STRIP_GATE(0x805AE07C, &lit_4685);
#pragma pop

/* 805ABE0C-805AD7B4 000DEC 19A8+00 2/0 0/0 0/0 .text            dr_fly__9daL7ODR_cFv */
void daL7ODR_c::dr_fly() {
    // NONMATCHING
}

/* 805AD7B4-805AD854 002794 00A0+00 1/1 0/0 0/0 .text            execute__9daL7ODR_cFv */
void daL7ODR_c::execute() {
    // NONMATCHING
}

/* 805AD854-805AD874 002834 0020+00 2/1 0/0 0/0 .text            daL7ODR_Execute__FP9daL7ODR_c */
static void daL7ODR_Execute(daL7ODR_c* param_0) {
    // NONMATCHING
}

/* 805AD874-805AD87C 002854 0008+00 1/0 0/0 0/0 .text            daL7ODR_IsDelete__FP9daL7ODR_c */
static bool daL7ODR_IsDelete(daL7ODR_c* param_0) {
    return true;
}

/* 805AD87C-805AD8EC 00285C 0070+00 1/1 0/0 0/0 .text            _delete__9daL7ODR_cFv */
void daL7ODR_c::_delete() {
    // NONMATCHING
}

/* 805AD8EC-805AD90C 0028CC 0020+00 1/0 0/0 0/0 .text            daL7ODR_Delete__FP9daL7ODR_c */
static void daL7ODR_Delete(daL7ODR_c* param_0) {
    // NONMATCHING
}

/* 805AD90C-805ADA0C 0028EC 0100+00 1/1 0/0 0/0 .text            CreateHeap__9daL7ODR_cFv */
void daL7ODR_c::CreateHeap() {
    // NONMATCHING
}

/* 805ADA0C-805ADA2C 0029EC 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805AE080-805AE088 000130 0008+00 0/1 0/0 0/0 .rodata          @4727 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4727[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805AE080, &lit_4727);
#pragma pop

/* 805AE088-805AE090 000138 0008+00 0/1 0/0 0/0 .rodata          @4728 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4728[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805AE088, &lit_4728);
#pragma pop

/* 805AE090-805AE098 000140 0008+00 0/1 0/0 0/0 .rodata          @4729 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4729[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805AE090, &lit_4729);
#pragma pop

/* 805AE098-805AE09C 000148 0004+00 0/1 0/0 0/0 .rodata          @4826 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4826 = -890.0f;
COMPILER_STRIP_GATE(0x805AE098, &lit_4826);
#pragma pop

/* 805AE09C-805AE0A0 00014C 0004+00 0/1 0/0 0/0 .rodata          @4827 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4827 = -690.0f;
COMPILER_STRIP_GATE(0x805AE09C, &lit_4827);
#pragma pop

/* 805AE0A0-805AE0A4 000150 0004+00 0/1 0/0 0/0 .rodata          @4828 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4828 = 3200.0f;
COMPILER_STRIP_GATE(0x805AE0A0, &lit_4828);
#pragma pop

/* 805ADA2C-805ADAC0 002A0C 0094+00 1/1 0/0 0/0 .text            check_start__9daL7ODR_cFv */
void daL7ODR_c::check_start() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805AE0A4-805AE0A8 000154 0004+00 0/1 0/0 0/0 .rodata          @4888 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4888 = -20000.0f;
COMPILER_STRIP_GATE(0x805AE0A4, &lit_4888);
#pragma pop

/* 805AE0A8-805AE0AC 000158 0004+00 0/1 0/0 0/0 .rodata          @4889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4889 = 20000.0f;
COMPILER_STRIP_GATE(0x805AE0A8, &lit_4889);
#pragma pop

/* 805AE0AC-805AE0AC 00015C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_805AE0B1 = "B_DR";
#pragma pop

/* 805AE0DC-805AE0E8 -00001 000C+00 1/1 0/0 0/0 .data            @4839 */
SECTION_DATA static void* lit_4839[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__9daL7ODR_cFv,
};

/* 805AE0E8-805AE0F4 -00001 000C+00 1/1 0/0 0/0 .data            @4841 */
SECTION_DATA static void* lit_4841[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)dr_wait__9daL7ODR_cFv,
};

/* 805AE0F4-805AE114 -00001 0020+00 1/0 0/0 0/0 .data            l_daL7ODR_Method */
static actor_method_class l_daL7ODR_Method = {
    (process_method_func)daL7ODR_Create__FP9daL7ODR_c,
    (process_method_func)daL7ODR_Delete__FP9daL7ODR_c,
    (process_method_func)daL7ODR_Execute__FP9daL7ODR_c,
    (process_method_func)daL7ODR_IsDelete__FP9daL7ODR_c,
    (process_method_func)daL7ODR_Draw__FP9daL7ODR_c,
};

/* 805AE114-805AE144 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_L7ODR */
extern actor_process_profile_definition g_profile_L7ODR = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_L7ODR,             // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daL7ODR_c),      // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  222,                    // mPriority
  &l_daL7ODR_Method,      // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 805AE144-805AE168 00008C 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_805ADD70,
    (void*)NULL,
    (void*)NULL,
    (void*)func_805ADD68,
};

/* 805ADAC0-805ADCD8 002AA0 0218+00 1/1 0/0 0/0 .text            create__9daL7ODR_cFv */
void daL7ODR_c::create() {
    // NONMATCHING
}

/* 805ADCD8-805ADD48 002CB8 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 805ADD48-805ADD68 002D28 0020+00 1/0 0/0 0/0 .text            daL7ODR_Create__FP9daL7ODR_c */
static void daL7ODR_Create(daL7ODR_c* param_0) {
    // NONMATCHING
}

/* 805ADD68-805ADD70 002D48 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_805ADD68() {
    // NONMATCHING
}

/* 805ADD70-805ADD78 002D50 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_805ADD70() {
    // NONMATCHING
}

/* 805ADD78-805ADD94 002D58 001C+00 1/1 0/0 0/0 .text            changeDemoPos0__9daPy_py_cFPC4cXyz
 */
// void daPy_py_c::changeDemoPos0(cXyz const* param_0) {
extern "C" void changeDemoPos0__9daPy_py_cFPC4cXyz() {
    // NONMATCHING
}

/* 805ADD94-805ADDA8 002D74 0014+00 1/1 0/0 0/0 .text            changeDemoMode__9daPy_py_cFUliis */
// void daPy_py_c::changeDemoMode(u32 param_0, int param_1, int param_2, s16 param_3) {
extern "C" void changeDemoMode__9daPy_py_cFUliis() {
    // NONMATCHING
}

/* 805ADDA8-805ADDD8 002D88 0030+00 1/1 0/0 0/0 .text            isStop__13mDoExt_morf_cFv */
// void mDoExt_morf_c::isStop() {
extern "C" void isStop__13mDoExt_morf_cFv() {
    // NONMATCHING
}

/* 805ADDD8-805ADEEC 002DB8 0114+00 1/1 0/0 0/0 .text            abs__4cXyzCFRC3Vec */
// void cXyz::abs(Vec const& param_0) const {
extern "C" void abs__4cXyzCFRC3Vec() {
    // NONMATCHING
}

/* 805ADEEC-805ADF08 002ECC 001C+00 1/1 0/0 0/0 .text            __ct__4cXyzFRC4cXyz */
// cXyz::cXyz(cXyz const& param_0) {
extern "C" void __ct__4cXyzFRC4cXyz() {
    // NONMATCHING
}

/* 805ADF08-805ADF2C 002EE8 0024+00 1/1 0/0 0/0 .text            multVecZero__14mDoMtx_stack_cFP3Vec
 */
// void mDoMtx_stack_c::multVecZero(Vec* param_0) {
extern "C" void multVecZero__14mDoMtx_stack_cFP3Vec() {
    // NONMATCHING
}

/* 805ADF2C-805ADF48 002F0C 001C+00 1/1 0/0 0/0 .text            __as__4cXyzFRC4cXyz */
// void cXyz::operator=(cXyz const& param_0) {
extern "C" void __as__4cXyzFRC4cXyz() {
    // NONMATCHING
}

/* 805AE0AC-805AE0AC 00015C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */