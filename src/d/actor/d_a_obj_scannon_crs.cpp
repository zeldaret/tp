/**
 * @file d_a_obj_scannon_crs.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_scannon_crs.h"
#include "dol2asm.h"





//
// Forward References:
//

extern "C" static void daSCannonCrs_c_createHeap__FP10fopAc_ac_c();
extern "C" static void eventCallBack__FPvi();
extern "C" void __ct__14daSCannonCrs_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void __dt__14daSCannonCrs_cFv();
extern "C" void create__14daSCannonCrs_cFv();
extern "C" void Delete__14daSCannonCrs_cFv();
extern "C" void draw__14daSCannonCrs_cFv();
extern "C" void execute__14daSCannonCrs_cFv();
extern "C" void middleExe__14daSCannonCrs_cFP9daMidna_c();
extern "C" void exeModeWait__14daSCannonCrs_cFP9daMidna_c();
extern "C" void exeModePreWait__14daSCannonCrs_cFP9daMidna_c();
extern "C" void exeModeOrderEvt__14daSCannonCrs_cFP9daMidna_c();
extern "C" void exeModeTalkEvt__14daSCannonCrs_cFP9daMidna_c();
extern "C" void exeModeWarpEvt__14daSCannonCrs_cFP9daMidna_c();
extern "C" void exeModeEnd__14daSCannonCrs_cFP9daMidna_c();
extern "C" void demoExe__14daSCannonCrs_cFv();
extern "C" void init__14daSCannonCrs_cFv();
extern "C" void setModelMtx__14daSCannonCrs_cFv();
extern "C" void createHeap__14daSCannonCrs_cFv();
extern "C" void chkInTalkRange__14daSCannonCrs_cFv();
extern "C" void initEmtRt__14daSCannonCrs_cFUsiPCUsPP14JPABaseEmitter();
extern "C" void exeEmtRt__14daSCannonCrs_cFUsiPP14JPABaseEmitter();
extern "C" void callMidnaBeamEmt__14daSCannonCrs_cFv();
extern "C" static void daSCannonCrs_create__FP14daSCannonCrs_c();
extern "C" static void daSCannonCrs_Delete__FP14daSCannonCrs_c();
extern "C" static void daSCannonCrs_execute__FP14daSCannonCrs_c();
extern "C" static void daSCannonCrs_draw__FP14daSCannonCrs_c();
extern "C" void __sinit_d_a_obj_scannon_crs_cpp();
extern "C" extern char const* const d_a_obj_scannon_crs__stringBase0;
extern "C" u8 s_exeProc__14daSCannonCrs_c[72];

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGp_TargetWarpPt_set__FUc();
extern "C" void dComIfGp_TransportWarp_check__Fv();
extern "C" void onSwitch__12dSv_memBit_cFi();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void setPt2__14dEvt_control_cFPv();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void startCheck__16dEvent_manager_cFs();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void request__10dAttHint_cFP10fopAc_ac_ci();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void func_802807E0();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void getName__10JUTNameTabCFUs();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void __ptmf_test();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_23();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_meter2_info[248];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80CC9678-80CC9698 000078 0020+00 1/1 0/0 0/0 .text daSCannonCrs_c_createHeap__FP10fopAc_ac_c */
static void daSCannonCrs_c_createHeap(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CC9698-80CC973C 000098 00A4+00 1/1 0/0 0/0 .text            eventCallBack__FPvi */
static void eventCallBack(void* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CCB114-80CCB114 000094 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CCB114 = "SCanCrs";
SECTION_DEAD static char const* const stringBase_80CCB11C = "SKY_CANNON_WARP_START";
SECTION_DEAD static char const* const stringBase_80CCB132 = "effect_p";
SECTION_DEAD static char const* const stringBase_80CCB13B = "center";
SECTION_DEAD static char const* const stringBase_80CCB142 = "WAIT";
SECTION_DEAD static char const* const stringBase_80CCB147 = "BEAM_HIT";
SECTION_DEAD static char const* const stringBase_80CCB150 = "READY";
SECTION_DEAD static char const* const stringBase_80CCB156 = "UP";
#pragma pop

/* 80CCB17C-80CCB180 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_scannon_crs__stringBase0;

/* 80CCB180-80CCB184 -00001 0004+00 1/1 0/0 0/0 .data            l_eventName */
SECTION_DATA static void* l_eventName = (void*)(((char*)&d_a_obj_scannon_crs__stringBase0) + 0x8);

/* 80CCB184-80CCB188 -00001 0004+00 2/2 0/0 0/0 .data            l_staffName */
SECTION_DATA static void* l_staffName = (void*)&d_a_obj_scannon_crs__stringBase0;

/* 80CCB188-80CCB194 -00001 000C+00 0/1 0/0 0/0 .data            @3890 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3890[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)exeModeWait__14daSCannonCrs_cFP9daMidna_c,
};
#pragma pop

/* 80CCB194-80CCB1A0 -00001 000C+00 0/1 0/0 0/0 .data            @3891 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3891[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)exeModePreWait__14daSCannonCrs_cFP9daMidna_c,
};
#pragma pop

/* 80CCB1A0-80CCB1AC -00001 000C+00 0/1 0/0 0/0 .data            @3892 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3892[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)exeModeOrderEvt__14daSCannonCrs_cFP9daMidna_c,
};
#pragma pop

/* 80CCB1AC-80CCB1B8 -00001 000C+00 0/1 0/0 0/0 .data            @3893 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3893[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)exeModeTalkEvt__14daSCannonCrs_cFP9daMidna_c,
};
#pragma pop

/* 80CCB1B8-80CCB1C4 -00001 000C+00 0/1 0/0 0/0 .data            @3894 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3894[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)exeModeWarpEvt__14daSCannonCrs_cFP9daMidna_c,
};
#pragma pop

/* 80CCB1C4-80CCB1D0 -00001 000C+00 0/1 0/0 0/0 .data            @3895 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3895[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)exeModeEnd__14daSCannonCrs_cFP9daMidna_c,
};
#pragma pop

/* 80CCB1D0-80CCB218 000074 0048+00 1/2 0/0 0/0 .data            s_exeProc__14daSCannonCrs_c */
SECTION_DATA u8 daSCannonCrs_c::s_exeProc[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CCB218-80CCB228 -00001 0010+00 1/1 0/0 0/0 .data            CUT_TYPE_TABLE$4066 */
SECTION_DATA static void* CUT_TYPE_TABLE[4] = {
    (void*)(((char*)&d_a_obj_scannon_crs__stringBase0) + 0x2E),
    (void*)(((char*)&d_a_obj_scannon_crs__stringBase0) + 0x33),
    (void*)(((char*)&d_a_obj_scannon_crs__stringBase0) + 0x3C),
    (void*)(((char*)&d_a_obj_scannon_crs__stringBase0) + 0x42),
};

/* 80CCB228-80CCB248 -00001 0020+00 1/0 0/0 0/0 .data            daSCannonCrs_METHODS */
static actor_method_class daSCannonCrs_METHODS = {
    (process_method_func)daSCannonCrs_create__FP14daSCannonCrs_c,
    (process_method_func)daSCannonCrs_Delete__FP14daSCannonCrs_c,
    (process_method_func)daSCannonCrs_execute__FP14daSCannonCrs_c,
    0,
    (process_method_func)daSCannonCrs_draw__FP14daSCannonCrs_c,
};

/* 80CCB248-80CCB278 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SCannonCrs */
extern actor_process_profile_definition g_profile_Obj_SCannonCrs = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_SCannonCrs,    // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daSCannonCrs_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  736,                    // mPriority
  &daSCannonCrs_METHODS,  // sub_method
  0x00044180,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CCB278-80CCB284 00011C 000C+00 2/2 0/0 0/0 .data            __vt__14daSCannonCrs_c */
SECTION_DATA extern void* __vt__14daSCannonCrs_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daSCannonCrs_cFv,
};

/* 80CCB284-80CCB290 000128 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80CC973C-80CC97F4 00013C 00B8+00 2/2 0/0 0/0 .text            __ct__14daSCannonCrs_cFv */
daSCannonCrs_c::daSCannonCrs_c() {
    // NONMATCHING
}

/* 80CC97F4-80CC983C 0001F4 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80CC983C-80CC9910 00023C 00D4+00 1/0 0/0 0/0 .text            __dt__14daSCannonCrs_cFv */
daSCannonCrs_c::~daSCannonCrs_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CCB080-80CCB088 000000 0008+00 6/6 0/0 0/0 .rodata          DISAP_PARTICLE_NAME */
SECTION_RODATA static u8 const DISAP_PARTICLE_NAME[8] = {
    0x8B, 0x2B, 0x8B, 0x2C, 0x8B, 0x2D, 0x8B, 0x2E,
};
COMPILER_STRIP_GATE(0x80CCB080, &DISAP_PARTICLE_NAME);

/* 80CCB088-80CCB090 000008 0008+00 0/1 0/0 0/0 .rodata          BEAM_PARTICLE_NAME */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const BEAM_PARTICLE_NAME[8] = {
    0x8B, 0x43, 0x8B, 0x44, 0x8B, 0x45, 0x8B, 0x46,
};
COMPILER_STRIP_GATE(0x80CCB088, &BEAM_PARTICLE_NAME);
#pragma pop

/* 80CCB090-80CCB094 000010 0004+00 0/1 0/0 0/0 .rodata          @3822 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3822 = -500.0f;
COMPILER_STRIP_GATE(0x80CCB090, &lit_3822);
#pragma pop

/* 80CCB094-80CCB098 000014 0004+00 0/1 0/0 0/0 .rodata          @3823 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3823 = -100.0f;
COMPILER_STRIP_GATE(0x80CCB094, &lit_3823);
#pragma pop

/* 80CCB098-80CCB09C 000018 0004+00 0/1 0/0 0/0 .rodata          @3824 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3824 = 500.0f;
COMPILER_STRIP_GATE(0x80CCB098, &lit_3824);
#pragma pop

/* 80CCB09C-80CCB0A0 00001C 0004+00 0/1 0/0 0/0 .rodata          @3825 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3825 = 2500.0f;
COMPILER_STRIP_GATE(0x80CCB09C, &lit_3825);
#pragma pop

/* 80CC9910-80CC9B10 000310 0200+00 1/1 0/0 0/0 .text            create__14daSCannonCrs_cFv */
void daSCannonCrs_c::create() {
    // NONMATCHING
}

/* 80CC9B10-80CC9B80 000510 0070+00 1/1 0/0 0/0 .text            Delete__14daSCannonCrs_cFv */
void daSCannonCrs_c::Delete() {
    // NONMATCHING
}

/* 80CC9B80-80CC9C64 000580 00E4+00 1/1 0/0 0/0 .text            draw__14daSCannonCrs_cFv */
void daSCannonCrs_c::draw() {
    // NONMATCHING
}

/* 80CC9C64-80CC9CA4 000664 0040+00 1/1 0/0 0/0 .text            execute__14daSCannonCrs_cFv */
void daSCannonCrs_c::execute() {
    // NONMATCHING
}

/* 80CC9CA4-80CC9D60 0006A4 00BC+00 1/1 0/0 0/0 .text middleExe__14daSCannonCrs_cFP9daMidna_c */
void daSCannonCrs_c::middleExe(daMidna_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CCB0A0-80CCB0A4 000020 0004+00 0/2 0/0 0/0 .rodata          @3949 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3949 = 4750.0f;
COMPILER_STRIP_GATE(0x80CCB0A0, &lit_3949);
#pragma pop

/* 80CCB0A4-80CCB0A8 000024 0004+00 0/2 0/0 0/0 .rodata          @3950 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3950 = -1520.0f;
COMPILER_STRIP_GATE(0x80CCB0A4, &lit_3950);
#pragma pop

/* 80CCB0A8-80CCB0AC 000028 0004+00 0/2 0/0 0/0 .rodata          @3951 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3951 = -3900.0f;
COMPILER_STRIP_GATE(0x80CCB0A8, &lit_3951);
#pragma pop

/* 80CCB0AC-80CCB0B0 00002C 0004+00 1/4 0/0 0/0 .rodata          @3952 */
SECTION_RODATA static f32 const lit_3952 = 1.0f;
COMPILER_STRIP_GATE(0x80CCB0AC, &lit_3952);

/* 80CCB0B0-80CCB0B4 000030 0004+00 0/2 0/0 0/0 .rodata          @3953 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3953 = -1.0f;
COMPILER_STRIP_GATE(0x80CCB0B0, &lit_3953);
#pragma pop

/* 80CC9D60-80CC9F34 000760 01D4+00 1/0 0/0 0/0 .text exeModeWait__14daSCannonCrs_cFP9daMidna_c */
void daSCannonCrs_c::exeModeWait(daMidna_c* param_0) {
    // NONMATCHING
}

/* 80CC9F34-80CC9F80 000934 004C+00 1/0 0/0 0/0 .text exeModePreWait__14daSCannonCrs_cFP9daMidna_c
 */
void daSCannonCrs_c::exeModePreWait(daMidna_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CCB0B4-80CCB0B8 000034 0004+00 1/4 0/0 0/0 .rodata          @4033 */
SECTION_RODATA static u8 const lit_4033[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CCB0B4, &lit_4033);

/* 80CCB0B8-80CCB0C0 000038 0008+00 0/2 0/0 0/0 .rodata          @4034 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4034[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CCB0B8, &lit_4034);
#pragma pop

/* 80CCB0C0-80CCB0C8 000040 0008+00 0/2 0/0 0/0 .rodata          @4035 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4035[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CCB0C0, &lit_4035);
#pragma pop

/* 80CCB0C8-80CCB0D0 000048 0008+00 0/2 0/0 0/0 .rodata          @4036 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4036[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CCB0C8, &lit_4036);
#pragma pop

/* 80CCB0D0-80CCB0D4 000050 0004+00 0/1 0/0 0/0 .rodata          @4037 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4037 = 5.0f;
COMPILER_STRIP_GATE(0x80CCB0D0, &lit_4037);
#pragma pop

/* 80CC9F80-80CCA240 000980 02C0+00 1/0 0/0 0/0 .text
 * exeModeOrderEvt__14daSCannonCrs_cFP9daMidna_c                */
void daSCannonCrs_c::exeModeOrderEvt(daMidna_c* param_0) {
    // NONMATCHING
}

/* 80CCA240-80CCA2CC 000C40 008C+00 1/0 0/0 0/0 .text exeModeTalkEvt__14daSCannonCrs_cFP9daMidna_c
 */
void daSCannonCrs_c::exeModeTalkEvt(daMidna_c* param_0) {
    // NONMATCHING
}

/* 80CCA2CC-80CCA344 000CCC 0078+00 1/0 0/0 0/0 .text exeModeWarpEvt__14daSCannonCrs_cFP9daMidna_c
 */
void daSCannonCrs_c::exeModeWarpEvt(daMidna_c* param_0) {
    // NONMATCHING
}

/* 80CCA344-80CCA348 000D44 0004+00 1/0 0/0 0/0 .text exeModeEnd__14daSCannonCrs_cFP9daMidna_c */
void daSCannonCrs_c::exeModeEnd(daMidna_c* param_0) {
    /* empty function */
}

/* ############################################################################################## */
/* 80CCB0D4-80CCB0D8 000054 0004+00 0/1 0/0 0/0 .rodata          @4189 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4189 = 35.0f;
COMPILER_STRIP_GATE(0x80CCB0D4, &lit_4189);
#pragma pop

/* 80CCB0D8-80CCB0DC 000058 0004+00 0/1 0/0 0/0 .rodata          @4190 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4190 = 88.0f;
COMPILER_STRIP_GATE(0x80CCB0D8, &lit_4190);
#pragma pop

/* 80CCB0DC-80CCB0E0 00005C 0004+00 0/1 0/0 0/0 .rodata          @4191 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4191 = 240.0f;
COMPILER_STRIP_GATE(0x80CCB0DC, &lit_4191);
#pragma pop

/* 80CCA348-80CCA74C 000D48 0404+00 1/1 0/0 0/0 .text            demoExe__14daSCannonCrs_cFv */
void daSCannonCrs_c::demoExe() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CCB0E0-80CCB0EC 000060 000C+00 0/1 0/0 0/0 .rodata          MIDNA_WAIT_POS_OFFSET$4195 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const MIDNA_WAIT_POS_OFFSET[12] = {
    0x42, 0xC8, 0x00, 0x00, 0x44, 0x61, 0x00, 0x00, 0x42, 0xB4, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CCB0E0, &MIDNA_WAIT_POS_OFFSET);
#pragma pop

/* 80CCB0EC-80CCB0F0 00006C 0004+00 0/1 0/0 0/0 .rodata          @4205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4205 = 200.0f;
COMPILER_STRIP_GATE(0x80CCB0EC, &lit_4205);
#pragma pop

/* 80CCB0F0-80CCB0F8 000070 0004+04 0/1 0/0 0/0 .rodata          @4206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4206[1 + 1 /* padding */] = {
    10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80CCB0F0, &lit_4206);
#pragma pop

/* 80CCB0F8-80CCB100 000078 0008+00 0/1 0/0 0/0 .rodata          @4208 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4208[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CCB0F8, &lit_4208);
#pragma pop

/* 80CCA74C-80CCA848 00114C 00FC+00 1/1 0/0 0/0 .text            init__14daSCannonCrs_cFv */
void daSCannonCrs_c::init() {
    // NONMATCHING
}

/* 80CCA848-80CCA8CC 001248 0084+00 2/2 0/0 0/0 .text            setModelMtx__14daSCannonCrs_cFv */
void daSCannonCrs_c::setModelMtx() {
    // NONMATCHING
}

/* 80CCA8CC-80CCAAC4 0012CC 01F8+00 1/1 0/0 0/0 .text            createHeap__14daSCannonCrs_cFv */
void daSCannonCrs_c::createHeap() {
    // NONMATCHING
}

/* 80CCAAC4-80CCAB24 0014C4 0060+00 2/2 0/0 0/0 .text            chkInTalkRange__14daSCannonCrs_cFv
 */
void daSCannonCrs_c::chkInTalkRange() {
    // NONMATCHING
}

/* 80CCAB24-80CCAC48 001524 0124+00 1/1 0/0 0/0 .text
 * initEmtRt__14daSCannonCrs_cFUsiPCUsPP14JPABaseEmitter        */
void daSCannonCrs_c::initEmtRt(u16 param_0, int param_1, u16 const* param_2,
                                   JPABaseEmitter** param_3) {
    // NONMATCHING
}

/* 80CCAC48-80CCACD0 001648 0088+00 1/1 0/0 0/0 .text
 * exeEmtRt__14daSCannonCrs_cFUsiPP14JPABaseEmitter             */
void daSCannonCrs_c::exeEmtRt(u16 param_0, int param_1, JPABaseEmitter** param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CCB100-80CCB10C 000080 000C+00 0/1 0/0 0/0 .rodata          MIDNA_BEAM_OFFSET$4360 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const MIDNA_BEAM_OFFSET[12] = {
    0x00, 0x00, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CCB100, &MIDNA_BEAM_OFFSET);
#pragma pop

/* 80CCB10C-80CCB110 00008C 0004+00 0/1 0/0 0/0 .rodata          @4434 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4434 = 400.0f;
COMPILER_STRIP_GATE(0x80CCB10C, &lit_4434);
#pragma pop

/* 80CCB110-80CCB114 000090 0004+00 0/1 0/0 0/0 .rodata          @4435 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4435 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80CCB110, &lit_4435);
#pragma pop

/* 80CCACD0-80CCAF20 0016D0 0250+00 1/1 0/0 0/0 .text callMidnaBeamEmt__14daSCannonCrs_cFv */
void daSCannonCrs_c::callMidnaBeamEmt() {
    // NONMATCHING
}

/* 80CCAF20-80CCAF74 001920 0054+00 1/0 0/0 0/0 .text daSCannonCrs_create__FP14daSCannonCrs_c */
static void daSCannonCrs_create(daSCannonCrs_c* param_0) {
    // NONMATCHING
}

/* 80CCAF74-80CCAF94 001974 0020+00 1/0 0/0 0/0 .text daSCannonCrs_Delete__FP14daSCannonCrs_c */
static void daSCannonCrs_Delete(daSCannonCrs_c* param_0) {
    // NONMATCHING
}

/* 80CCAF94-80CCAFB4 001994 0020+00 1/0 0/0 0/0 .text daSCannonCrs_execute__FP14daSCannonCrs_c */
static void daSCannonCrs_execute(daSCannonCrs_c* param_0) {
    // NONMATCHING
}

/* 80CCAFB4-80CCAFD4 0019B4 0020+00 1/0 0/0 0/0 .text daSCannonCrs_draw__FP14daSCannonCrs_c */
static void daSCannonCrs_draw(daSCannonCrs_c* param_0) {
    // NONMATCHING
}

/* 80CCAFD4-80CCB074 0019D4 00A0+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_scannon_crs_cpp */
void __sinit_d_a_obj_scannon_crs_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80CCAFD4, __sinit_d_a_obj_scannon_crs_cpp);
#pragma pop

/* 80CCB114-80CCB114 000094 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
