/**
 * @file d_a_obj_swpush2.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_swpush2.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void getArcName__Q212daObjSwpush25Act_cFv();
extern "C" void getBmdName__Q212daObjSwpush25Act_cFv();
extern "C" void getDzbName__Q212daObjSwpush25Act_cFv();
extern "C" void getNmlBtkName__Q212daObjSwpush25Act_cFv();
extern "C" void getNmlBrkName__Q212daObjSwpush25Act_cFv();
extern "C" void getOnBtkName__Q212daObjSwpush25Act_cFv();
extern "C" void getRunBpkName__Q212daObjSwpush25Act_cFv();
extern "C" void getRunBrkName__Q212daObjSwpush25Act_cFv();
extern "C" void getRunBtkName__Q212daObjSwpush25Act_cFv();
extern "C" void prmZ_init__Q212daObjSwpush25Act_cFv();
extern "C" void is_switch2__Q212daObjSwpush25Act_cCFv();
extern "C" void solidHeapCB__Q212daObjSwpush25Act_cFP10fopAc_ac_c();
extern "C" void create_heap__Q212daObjSwpush25Act_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void create_init__Q212daObjSwpush25Act_cFv();
extern "C" void create_res_load__Q212daObjSwpush25Act_cFv();
extern "C" void Mthd_Create__Q212daObjSwpush25Act_cFv();
extern "C" void Mthd_Delete__Q212daObjSwpush25Act_cFv();
extern "C" void set_mtx__Q212daObjSwpush25Act_cFv();
extern "C" void init_mtx__Q212daObjSwpush25Act_cFv();
extern "C" void rideCB__Q212daObjSwpush25Act_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void calc_top_pos__Q212daObjSwpush25Act_cFv();
extern "C" void set_push_flag__Q212daObjSwpush25Act_cFv();
extern "C" void mode_upper_init__Q212daObjSwpush25Act_cFv();
extern "C" void mode_upper__Q212daObjSwpush25Act_cFv();
extern "C" void mode_u_l_init__Q212daObjSwpush25Act_cFv();
extern "C" void mode_u_l__Q212daObjSwpush25Act_cFv();
extern "C" void mode_lower_init__Q212daObjSwpush25Act_cFv();
extern "C" void mode_lower__Q212daObjSwpush25Act_cFv();
extern "C" void mode_l_u__Q212daObjSwpush25Act_cFv();
extern "C" void demo_non_init__Q212daObjSwpush25Act_cFv();
extern "C" void demo_non__Q212daObjSwpush25Act_cFv();
extern "C" void demo_reqPause_init__Q212daObjSwpush25Act_cFv();
extern "C" void demo_reqPause__Q212daObjSwpush25Act_cFv();
extern "C" void demo_runPause_init__Q212daObjSwpush25Act_cFi();
extern "C" void demo_runPause__Q212daObjSwpush25Act_cFv();
extern "C" void demo_stop_puase__Q212daObjSwpush25Act_cFv();
extern "C" void demo_reqSw_init__Q212daObjSwpush25Act_cFv();
extern "C" void demo_reqSw__Q212daObjSwpush25Act_cFv();
extern "C" void demo_runSw_init__Q212daObjSwpush25Act_cFv();
extern "C" void demo_runSw__Q212daObjSwpush25Act_cFv();
extern "C" void Mthd_Execute__Q212daObjSwpush25Act_cFv();
extern "C" void Mthd_Draw__Q212daObjSwpush25Act_cFv();
extern "C" static void func_80CFFB50();
extern "C" static void func_80CFFB70();
extern "C" static void func_80CFFB90();
extern "C" static void func_80CFFBB0();
extern "C" void func_80CFFBD0(void* _this, fopAc_ac_c const*, daObjSwpush2::Act_c::Prm_e,
                              daObjSwpush2::Act_c::Prm_e);
extern "C" u8 const M_arcname__Q212daObjSwpush25Act_c[9 + 3 /* padding */];
extern "C" void* const M_attr__Q212daObjSwpush25Act_c[56];
extern "C" extern char const* const d_a_obj_swpush2__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_bpkAnmFP16J3DMaterialTableP11J3DAnmColoriifss();
extern "C" void entry__13mDoExt_bpkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void revSwitch__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getEventData__16dEvent_manager_cFs();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void Move__4dBgWFv();
extern "C" void dBgW_NewSet__FP6cBgD_tUlPA3_A4_f();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void removeMatColorAnimator__16J3DMaterialTableFP11J3DAnmColor();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 struct_80CFFEF8[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 80CFFD24-80CFFD24 000130 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CFFD24 = "K_swmn00";
#pragma pop

/* 80CFE098-80CFE0A4 000078 000C+00 1/1 0/0 0/0 .text getArcName__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::getArcName() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFFD24-80CFFD24 000130 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CFFD2D = "K_hum_isw00.bmd";
#pragma pop

/* 80CFE0A4-80CFE0B4 000084 0010+00 1/1 0/0 0/0 .text getBmdName__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::getBmdName() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFFD24-80CFFD24 000130 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CFFD3D = "K_hum_isw00.dzb";
#pragma pop

/* 80CFE0B4-80CFE0C4 000094 0010+00 1/1 0/0 0/0 .text getDzbName__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::getDzbName() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFFD24-80CFFD24 000130 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CFFD4D = "K_isw_nml.btk";
#pragma pop

/* 80CFE0C4-80CFE0D4 0000A4 0010+00 1/1 0/0 0/0 .text getNmlBtkName__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::getNmlBtkName() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFFD24-80CFFD24 000130 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CFFD5B = "K_isw_nml.brk";
#pragma pop

/* 80CFE0D4-80CFE0E4 0000B4 0010+00 1/1 0/0 0/0 .text getNmlBrkName__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::getNmlBrkName() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFFD24-80CFFD24 000130 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CFFD69 = "K_isw_on.btk";
#pragma pop

/* 80CFE0E4-80CFE0F4 0000C4 0010+00 1/1 0/0 0/0 .text getOnBtkName__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::getOnBtkName() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFFD24-80CFFD24 000130 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CFFD76 = "K_isw_run.bpk";
#pragma pop

/* 80CFE0F4-80CFE104 0000D4 0010+00 1/1 0/0 0/0 .text getRunBpkName__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::getRunBpkName() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFFD24-80CFFD24 000130 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CFFD84 = "K_isw_run.brk";
#pragma pop

/* 80CFE104-80CFE114 0000E4 0010+00 1/1 0/0 0/0 .text getRunBrkName__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::getRunBrkName() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFFD24-80CFFD24 000130 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CFFD92 = "K_isw_run.btk";
#pragma pop

/* 80CFE114-80CFE124 0000F4 0010+00 1/1 0/0 0/0 .text getRunBtkName__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::getRunBtkName() {
    // NONMATCHING
}

/* 80CFE124-80CFE154 000104 0030+00 1/1 0/0 0/0 .text            prmZ_init__Q212daObjSwpush25Act_cFv
 */
void daObjSwpush2::Act_c::prmZ_init() {
    // NONMATCHING
}

/* 80CFE154-80CFE1AC 000134 0058+00 1/1 0/0 0/0 .text is_switch2__Q212daObjSwpush25Act_cCFv */
void daObjSwpush2::Act_c::is_switch2() const {
    // NONMATCHING
}

/* 80CFE1AC-80CFE1D0 00018C 0024+00 1/1 0/0 0/0 .text
 * solidHeapCB__Q212daObjSwpush25Act_cFP10fopAc_ac_c            */
void daObjSwpush2::Act_c::solidHeapCB(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFFBF4-80CFFC00 000000 0009+03 5/4 0/0 0/0 .rodata          M_arcname__Q212daObjSwpush25Act_c
 */
SECTION_RODATA u8 const daObjSwpush2::Act_c::M_arcname[9 + 3 /* padding */] = {
    0x4B,
    0x5F,
    0x73,
    0x77,
    0x6D,
    0x6E,
    0x30,
    0x30,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CFFBF4, &daObjSwpush2::Act_c::M_arcname);

/* 80CFFC00-80CFFCE0 -00001 00E0+00 7/10 0/0 0/0 .rodata          M_attr__Q212daObjSwpush25Act_c */
SECTION_RODATA void* const daObjSwpush2::Act_c::M_attr[56] = {
    (void*)0x00002000, (void*)0x00000003,
    (void*)0x3F800000, (void*)&daObjSwpush2::Act_c::M_arcname,
    (void*)0x3F666666, (void*)0x3F19999A,
    (void*)NULL,       (void*)0xBE99999A,
    (void*)0x00010006, (void*)0x0006000D,
    (void*)0x3F800000, (void*)0x40200000,
    (void*)0x00060000, (void*)0x43960000,
    (void*)0x00002000, (void*)0x00000020,
    (void*)0x3F800000, (void*)&daObjSwpush2::Act_c::M_arcname,
    (void*)0x3F666666, (void*)0x3F19999A,
    (void*)NULL,       (void*)0xBE99999A,
    (void*)0x00010006, (void*)0x0006000D,
    (void*)0x3F800000, (void*)0x40200000,
    (void*)0x00060000, (void*)0x43960000,
    (void*)0x00002000, (void*)0x00000013,
    (void*)0x3F800000, (void*)&daObjSwpush2::Act_c::M_arcname,
    (void*)0x3F666666, (void*)0x3F19999A,
    (void*)NULL,       (void*)0xBE99999A,
    (void*)0x00010006, (void*)0x0006000D,
    (void*)0x3F800000, (void*)0x40200000,
    (void*)0x00060000, (void*)0x43960000,
    (void*)0x00008000, (void*)0x0000000B,
    (void*)0x3FC00000, (void*)&daObjSwpush2::Act_c::M_arcname,
    (void*)0x3F6E147B, (void*)0x3ED70A3D,
    (void*)NULL,       (void*)NULL,
    (void*)0x00040004, (void*)0x000F0004,
    (void*)0x3F800000, (void*)0x40200000,
    (void*)0x00060000, (void*)0x43960000,
};
COMPILER_STRIP_GATE(0x80CFFC00, &daObjSwpush2::Act_c::M_attr);

/* 80CFFCE0-80CFFCE4 0000EC 0004+00 3/7 0/0 0/0 .rodata          @3857 */
SECTION_RODATA static f32 const lit_3857 = 1.0f;
COMPILER_STRIP_GATE(0x80CFFCE0, &lit_3857);

/* 80CFFCE4-80CFFCE8 0000F0 0004+00 2/5 0/0 0/0 .rodata          @3858 */
SECTION_RODATA static u8 const lit_3858[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CFFCE4, &lit_3858);

/* 80CFFDC0-80CFFDCC -00001 000C+00 0/1 0/0 0/0 .data            @4336 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4336[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_non__Q212daObjSwpush25Act_cFv,
};
#pragma pop

/* 80CFFDCC-80CFFDD8 -00001 000C+00 0/1 0/0 0/0 .data            @4337 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4337[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_reqPause__Q212daObjSwpush25Act_cFv,
};
#pragma pop

/* 80CFFDD8-80CFFDE4 -00001 000C+00 0/1 0/0 0/0 .data            @4338 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4338[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_runPause__Q212daObjSwpush25Act_cFv,
};
#pragma pop

/* 80CFFDE4-80CFFDF0 -00001 000C+00 0/1 0/0 0/0 .data            @4339 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4339[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_reqSw__Q212daObjSwpush25Act_cFv,
};
#pragma pop

/* 80CFFDF0-80CFFDFC -00001 000C+00 0/1 0/0 0/0 .data            @4340 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4340[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_runSw__Q212daObjSwpush25Act_cFv,
};
#pragma pop

/* 80CFFDFC-80CFFE38 00005C 003C+00 0/1 0/0 0/0 .data            demo_proc$4335 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 demo_proc[60] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80CFFE38-80CFFE44 -00001 000C+00 0/1 0/0 0/0 .data            @4344 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4344[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_upper__Q212daObjSwpush25Act_cFv,
};
#pragma pop

/* 80CFFE44-80CFFE50 -00001 000C+00 0/1 0/0 0/0 .data            @4345 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4345[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_u_l__Q212daObjSwpush25Act_cFv,
};
#pragma pop

/* 80CFFE50-80CFFE5C -00001 000C+00 0/1 0/0 0/0 .data            @4346 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4346[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_lower__Q212daObjSwpush25Act_cFv,
};
#pragma pop

/* 80CFFE5C-80CFFE68 -00001 000C+00 0/1 0/0 0/0 .data            @4347 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4347[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_l_u__Q212daObjSwpush25Act_cFv,
};
#pragma pop

/* 80CFFE68-80CFFE98 0000C8 0030+00 0/1 0/0 0/0 .data            mode_proc$4343 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80CFFE98-80CFFEB8 -00001 0020+00 1/0 0/0 0/0 .data
 * Mthd_Table__Q212daObjSwpush229@unnamed@d_a_obj_swpush2_cpp@  */
static actor_method_class data_80CFFE98 = {
    (process_method_func)func_80CFFB50, 
    (process_method_func)func_80CFFB70, 
    (process_method_func)func_80CFFB90, 
    0,
    (process_method_func)func_80CFFBB0,
};

/* 80CFFEB8-80CFFEE8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Swpush2 */
extern actor_process_profile_definition g_profile_Obj_Swpush2 = {
  fpcLy_CURRENT_e,        // mLayerID
  2,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Swpush2,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjSwpush2),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  12,                     // mPriority
  &data_80CFFE98,         // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CFFEE8-80CFFEF4 000148 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80CFE1D0-80CFE690 0001B0 04C0+00 1/1 0/0 0/0 .text create_heap__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::create_heap() {
    // NONMATCHING
}

/* 80CFE690-80CFE6D8 000670 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFFCE8-80CFFCEC 0000F4 0004+00 0/1 0/0 0/0 .rodata          @3936 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3936 = 150.0f;
COMPILER_STRIP_GATE(0x80CFFCE8, &lit_3936);
#pragma pop

/* 80CFFCEC-80CFFCF0 0000F8 0004+00 0/1 0/0 0/0 .rodata          @3937 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3937 = -150.0f;
COMPILER_STRIP_GATE(0x80CFFCEC, &lit_3937);
#pragma pop

/* 80CFFCF0-80CFFCF4 0000FC 0004+00 0/1 0/0 0/0 .rodata          @3938 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3938 = 60.0f;
COMPILER_STRIP_GATE(0x80CFFCF0, &lit_3938);
#pragma pop

/* 80CFFCF4-80CFFCF8 000100 0004+00 1/4 0/0 0/0 .rodata          @3939 */
SECTION_RODATA static f32 const lit_3939 = -1.0f;
COMPILER_STRIP_GATE(0x80CFFCF4, &lit_3939);

/* 80CFE6D8-80CFE8CC 0006B8 01F4+00 1/1 0/0 0/0 .text create_init__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::create_init() {
    // NONMATCHING
}

/* 80CFE8CC-80CFE928 0008AC 005C+00 1/1 0/0 0/0 .text create_res_load__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::create_res_load() {
    // NONMATCHING
}

/* 80CFE928-80CFEA3C 000908 0114+00 1/1 0/0 0/0 .text Mthd_Create__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::Mthd_Create() {
    // NONMATCHING
}

/* 80CFEA3C-80CFEAB4 000A1C 0078+00 1/1 0/0 0/0 .text Mthd_Delete__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::Mthd_Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFFCF8-80CFFCFC 000104 0004+00 1/2 0/0 0/0 .rodata          @4012 */
SECTION_RODATA static f32 const lit_4012 = -10.0f;
COMPILER_STRIP_GATE(0x80CFFCF8, &lit_4012);

/* 80CFEAB4-80CFEB3C 000A94 0088+00 2/2 0/0 0/0 .text            set_mtx__Q212daObjSwpush25Act_cFv
 */
void daObjSwpush2::Act_c::set_mtx() {
    // NONMATCHING
}

/* 80CFEB3C-80CFEB78 000B1C 003C+00 1/1 0/0 0/0 .text            init_mtx__Q212daObjSwpush25Act_cFv
 */
void daObjSwpush2::Act_c::init_mtx() {
    // NONMATCHING
}

/* 80CFEB78-80CFEBE4 000B58 006C+00 1/1 0/0 0/0 .text
 * rideCB__Q212daObjSwpush25Act_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c */
void daObjSwpush2::Act_c::rideCB(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFFCFC-80CFFD00 000108 0004+00 0/1 0/0 0/0 .rodata          @4039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4039 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80CFFCFC, &lit_4039);
#pragma pop

/* 80CFFD00-80CFFD04 00010C 0004+00 0/1 0/0 0/0 .rodata          @4040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4040 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x80CFFD00, &lit_4040);
#pragma pop

/* 80CFFD04-80CFFD08 000110 0004+00 0/1 0/0 0/0 .rodata          @4041 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4041 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80CFFD04, &lit_4041);
#pragma pop

/* 80CFFD08-80CFFD0C 000114 0004+00 0/1 0/0 0/0 .rodata          @4042 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4042 = -50.0f;
COMPILER_STRIP_GATE(0x80CFFD08, &lit_4042);
#pragma pop

/* 80CFEBE4-80CFEC4C 000BC4 0068+00 1/1 0/0 0/0 .text calc_top_pos__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::calc_top_pos() {
    // NONMATCHING
}

/* 80CFEC4C-80CFEDDC 000C2C 0190+00 1/1 0/0 0/0 .text set_push_flag__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::set_push_flag() {
    // NONMATCHING
}

/* 80CFEDDC-80CFEDFC 000DBC 0020+00 2/2 0/0 0/0 .text mode_upper_init__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::mode_upper_init() {
    // NONMATCHING
}

/* 80CFEDFC-80CFEF84 000DDC 0188+00 1/0 0/0 0/0 .text mode_upper__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::mode_upper() {
    // NONMATCHING
}

/* 80CFEF84-80CFEF98 000F64 0014+00 1/1 0/0 0/0 .text mode_u_l_init__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::mode_u_l_init() {
    // NONMATCHING
}

/* 80CFEF98-80CFF168 000F78 01D0+00 1/0 0/0 0/0 .text            mode_u_l__Q212daObjSwpush25Act_cFv
 */
void daObjSwpush2::Act_c::mode_u_l() {
    // NONMATCHING
}

/* 80CFF168-80CFF188 001148 0020+00 2/2 0/0 0/0 .text mode_lower_init__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::mode_lower_init() {
    // NONMATCHING
}

/* 80CFF188-80CFF18C 001168 0004+00 1/0 0/0 0/0 .text mode_lower__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::mode_lower() {
    /* empty function */
}

/* 80CFF18C-80CFF24C 00116C 00C0+00 1/0 0/0 0/0 .text            mode_l_u__Q212daObjSwpush25Act_cFv
 */
void daObjSwpush2::Act_c::mode_l_u() {
    // NONMATCHING
}

/* 80CFF24C-80CFF258 00122C 000C+00 4/4 0/0 0/0 .text demo_non_init__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::demo_non_init() {
    // NONMATCHING
}

/* 80CFF258-80CFF25C 001238 0004+00 1/0 0/0 0/0 .text            demo_non__Q212daObjSwpush25Act_cFv
 */
void daObjSwpush2::Act_c::demo_non() {
    /* empty function */
}

/* 80CFF25C-80CFF2B4 00123C 0058+00 1/1 0/0 0/0 .text demo_reqPause_init__Q212daObjSwpush25Act_cFv
 */
void daObjSwpush2::Act_c::demo_reqPause_init() {
    // NONMATCHING
}

/* 80CFF2B4-80CFF2EC 001294 0038+00 2/1 0/0 0/0 .text demo_reqPause__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::demo_reqPause() {
    // NONMATCHING
}

/* 80CFF2EC-80CFF31C 0012CC 0030+00 2/2 0/0 0/0 .text demo_runPause_init__Q212daObjSwpush25Act_cFi
 */
void daObjSwpush2::Act_c::demo_runPause_init(int param_0) {
    // NONMATCHING
}

/* 80CFF31C-80CFF374 0012FC 0058+00 1/0 0/0 0/0 .text demo_runPause__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::demo_runPause() {
    // NONMATCHING
}

/* 80CFF374-80CFF3C8 001354 0054+00 1/1 0/0 0/0 .text demo_stop_puase__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::demo_stop_puase() {
    // NONMATCHING
}

/* 80CFF3C8-80CFF48C 0013A8 00C4+00 1/1 0/0 0/0 .text demo_reqSw_init__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::demo_reqSw_init() {
    // NONMATCHING
}

/* 80CFF48C-80CFF500 00146C 0074+00 1/0 0/0 0/0 .text demo_reqSw__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::demo_reqSw() {
    // NONMATCHING
}

/* 80CFF500-80CFF50C 0014E0 000C+00 1/1 0/0 0/0 .text demo_runSw_init__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::demo_runSw_init() {
    // NONMATCHING
}

/* 80CFF50C-80CFF568 0014EC 005C+00 1/0 0/0 0/0 .text demo_runSw__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::demo_runSw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFFD0C-80CFFD14 000118 0008+00 0/1 0/0 0/0 .rodata          @4395 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4395[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CFFD0C, &lit_4395);
#pragma pop

/* 80CFFD14-80CFFD1C 000120 0008+00 0/1 0/0 0/0 .rodata          @4396 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4396[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CFFD14, &lit_4396);
#pragma pop

/* 80CFFD1C-80CFFD24 000128 0008+00 0/1 0/0 0/0 .rodata          @4397 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4397[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CFFD1C, &lit_4397);
#pragma pop

/* 80CFF568-80CFF8FC 001548 0394+00 1/1 0/0 0/0 .text Mthd_Execute__Q212daObjSwpush25Act_cFv */
void daObjSwpush2::Act_c::Mthd_Execute() {
    // NONMATCHING
}

/* 80CFF8FC-80CFFB50 0018DC 0254+00 1/1 0/0 0/0 .text            Mthd_Draw__Q212daObjSwpush25Act_cFv
 */
void daObjSwpush2::Act_c::Mthd_Draw() {
    // NONMATCHING
}

/* 80CFFB50-80CFFB70 001B30 0020+00 1/0 0/0 0/0 .text
 * Mthd_Create__Q212daObjSwpush229@unnamed@d_a_obj_swpush2_cpp@FPv */
static void func_80CFFB50() {
    // NONMATCHING
}

/* 80CFFB70-80CFFB90 001B50 0020+00 1/0 0/0 0/0 .text
 * Mthd_Delete__Q212daObjSwpush229@unnamed@d_a_obj_swpush2_cpp@FPv */
static void func_80CFFB70() {
    // NONMATCHING
}

/* 80CFFB90-80CFFBB0 001B70 0020+00 1/0 0/0 0/0 .text
 * Mthd_Execute__Q212daObjSwpush229@unnamed@d_a_obj_swpush2_cpp@FPv */
static void func_80CFFB90() {
    // NONMATCHING
}

/* 80CFFBB0-80CFFBD0 001B90 0020+00 1/0 0/0 0/0 .text
 * Mthd_Draw__Q212daObjSwpush229@unnamed@d_a_obj_swpush2_cpp@FPv */
static void func_80CFFBB0() {
    // NONMATCHING
}

/* 80CFFBD0-80CFFBEC 001BB0 001C+00 8/8 0/0 0/0 .text
 * PrmAbstract<Q312daObjSwpush25Act_c5Prm_e>__5daObjFPC10fopAc_ac_cQ312daObjSwpush25Act_c5Prm_eQ312daObjSwpush25Act_c5Prm_e
 */
extern "C" void func_80CFFBD0(void* _this, fopAc_ac_c const* param_0,
                                  daObjSwpush2::Act_c::Prm_e param_1,
                                  daObjSwpush2::Act_c::Prm_e param_2) {
    // NONMATCHING
}

/* 80CFFD24-80CFFD24 000130 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
