/**
 * d_a_obj_dmelevator.cpp
 *
 */

#include "d/actor/d_a_obj_dmelevator.h"
#include "d/d_procname.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void __dt__4cXyzFv();
extern "C" static void nodeCallBackForSw__FP8J3DJointi();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" void initBaseMtx__17daObjDmElevator_cFv();
extern "C" void setBaseMtx__17daObjDmElevator_cFv();
extern "C" void Create__17daObjDmElevator_cFv();
extern "C" void init__17daObjDmElevator_cFv();
extern "C" void CreateHeap__17daObjDmElevator_cFv();
extern "C" void create1st__17daObjDmElevator_cFv();
extern "C" void Execute__17daObjDmElevator_cFPPA3_A4_f();
extern "C" void setting_ride_flag__17daObjDmElevator_cFv();
extern "C" void event_sw_proc_call__17daObjDmElevator_cFv();
extern "C" void actionSwPauseNoneInit__17daObjDmElevator_cFv();
extern "C" void actionSwPauseNone__17daObjDmElevator_cFv();
extern "C" void actionSwPauseOrderInit__17daObjDmElevator_cFv();
extern "C" void actionSwPauseOrder__17daObjDmElevator_cFv();
extern "C" void actionSwPauseInit__17daObjDmElevator_cFv();
extern "C" void actionSwPause__17daObjDmElevator_cFv();
extern "C" void calc_top_pos__17daObjDmElevator_cFv();
extern "C" void mode_sw_proc_call__17daObjDmElevator_cFv();
extern "C" void modeSwWaitLowerInit__17daObjDmElevator_cFv();
extern "C" void modeSwWaitLower__17daObjDmElevator_cFv();
extern "C" void modeSwLowerInit__17daObjDmElevator_cFv();
extern "C" void modeSwLower__17daObjDmElevator_cFv();
extern "C" void modeSwWaitUpperInit__17daObjDmElevator_cFv();
extern "C" void modeSwWaitUpper__17daObjDmElevator_cFv();
extern "C" void modeSwUpperInit__17daObjDmElevator_cFv();
extern "C" void modeSwUpper__17daObjDmElevator_cFv();
extern "C" void event_proc_call__17daObjDmElevator_cFv();
extern "C" void actionWait__17daObjDmElevator_cFv();
extern "C" void actionOrderEvent__17daObjDmElevator_cFv();
extern "C" void actionEvent__17daObjDmElevator_cFv();
extern "C" void actionStartEvent__17daObjDmElevator_cFv();
extern "C" void actionMoveStart__17daObjDmElevator_cFv();
extern "C" void actionDead__17daObjDmElevator_cFv();
extern "C" void demoProc__17daObjDmElevator_cFv();
extern "C" void moveInit__17daObjDmElevator_cFv();
extern "C" void moveProc__17daObjDmElevator_cFv();
extern "C" void Draw__17daObjDmElevator_cFv();
extern "C" void Delete__17daObjDmElevator_cFv();
extern "C" static void daObjDmElevator_create1st__FP17daObjDmElevator_c();
extern "C" static void daObjDmElevator_MoveBGDelete__FP17daObjDmElevator_c();
extern "C" static void daObjDmElevator_MoveBGExecute__FP17daObjDmElevator_c();
extern "C" static void daObjDmElevator_MoveBGDraw__FP17daObjDmElevator_c();
extern "C" void func_80BDF844(void* _this, u8*);
extern "C" extern char const* const d_a_obj_dmelevator__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void dPath_GetPnt__FPC5dPathi();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80BDF870-80BDF87C 000000 000C+00 11/11 0/0 0/0 .rodata          l_swOffset */
static const Vec l_swOffset = {
    0.0f,
    162.0f,
    -77.0f,
};

/* 80BDF87C-80BDF880 00000C 0004+00 0/2 0/0 0/0 .rodata          @3718 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3718 = -50.0f;
COMPILER_STRIP_GATE(0x80BDF87C, &lit_3718);
#pragma pop

/* 80BDF880-80BDF884 000010 0004+00 5/13 0/0 0/0 .rodata          @3719 */
SECTION_RODATA static u8 const lit_3719[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BDF880, &lit_3719);

/* 80BDF884-80BDF888 000014 0004+00 0/1 0/0 0/0 .rodata          @3720 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3720 = 50.0f;
COMPILER_STRIP_GATE(0x80BDF884, &lit_3720);
#pragma pop

/* 80BDFB38-80BDFB3C 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80BDFB3C-80BDFB40 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80BDFB40-80BDFB44 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80BDFB44-80BDFB48 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80BDFB48-80BDFB4C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80BDFB4C-80BDFB50 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80BDFB50-80BDFB54 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80BDFB54-80BDFB58 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80BDFB58-80BDFB5C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80BDFB5C-80BDFB60 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80BDFB60-80BDFB64 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80BDFB64-80BDFB68 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80BDFB68-80BDFB6C 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80BDFB6C-80BDFB70 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80BDFB70-80BDFB74 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80BDFB74-80BDFB78 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80BDFB78-80BDFB88 000048 000C+04 0/1 0/0 0/0 .bss             @3654 */
#pragma push
#pragma force_active on
static u8 lit_3654[12 + 4 /* padding */];
#pragma pop

/* 80BDFB88-80BDFB94 000058 000C+00 0/1 0/0 0/0 .bss             @3657 */
#pragma push
#pragma force_active on
static u8 lit_3657[12];
#pragma pop

/* 80BDFB94-80BDFBA0 000064 000C+00 0/1 0/0 0/0 .bss             @3658 */
#pragma push
#pragma force_active on
static u8 lit_3658[12];
#pragma pop

/* 80BDFBA0-80BDFBAC 000070 000C+00 0/1 0/0 0/0 .bss             @3659 */
#pragma push
#pragma force_active on
static u8 lit_3659[12];
#pragma pop

/* 80BDFBAC-80BDFBDC 00007C 0030+00 0/1 0/0 0/0 .bss             l_push_check_pos$3653 */
#pragma push
#pragma force_active on
static u8 l_push_check_pos[48];
#pragma pop

/* 80BDD96C-80BDDBB4 0000EC 0248+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* 80BDDBB4-80BDDBF0 000334 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz()
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80BDDBF0-80BDDCA0 000370 00B0+00 1/1 0/0 0/0 .text            nodeCallBackForSw__FP8J3DJointi */
static void nodeCallBackForSw(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80BDDCA0-80BDDD38 000420 0098+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80BDDD38-80BDDD90 0004B8 0058+00 1/1 0/0 0/0 .text            initBaseMtx__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::initBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDF888-80BDF88C 000018 0004+00 1/1 0/0 0/0 .rodata          @3821 */
SECTION_RODATA static f32 const lit_3821 = -17.0f;
COMPILER_STRIP_GATE(0x80BDF888, &lit_3821);

/* 80BDDD90-80BDDEFC 000510 016C+00 2/2 0/0 0/0 .text            setBaseMtx__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDF88C-80BDF890 00001C 0004+00 0/3 0/0 0/0 .rodata          @3875 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3875 = -24.0f;
COMPILER_STRIP_GATE(0x80BDF88C, &lit_3875);
#pragma pop

/* 80BDF890-80BDF894 000020 0004+00 0/1 0/0 0/0 .rodata          @3876 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3876 = -250.0f;
COMPILER_STRIP_GATE(0x80BDF890, &lit_3876);
#pragma pop

/* 80BDF894-80BDF898 000024 0004+00 0/1 0/0 0/0 .rodata          @3877 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3877 = -350.0f;
COMPILER_STRIP_GATE(0x80BDF894, &lit_3877);
#pragma pop

/* 80BDF898-80BDF89C 000028 0004+00 0/1 0/0 0/0 .rodata          @3878 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3878 = 250.0f;
COMPILER_STRIP_GATE(0x80BDF898, &lit_3878);
#pragma pop

/* 80BDF89C-80BDF8A0 00002C 0004+00 0/1 0/0 0/0 .rodata          @3879 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3879 = 450.0f;
COMPILER_STRIP_GATE(0x80BDF89C, &lit_3879);
#pragma pop

/* 80BDF8A0-80BDF8A8 000030 0004+04 0/1 0/0 0/0 .rodata          @3880 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3880[1 + 1 /* padding */] = {
    400.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80BDF8A0, &lit_3880);
#pragma pop

/* 80BDF8EC-80BDF8EC 00007C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BDF8EC = "H_Elevato";
SECTION_DEAD static char const* const stringBase_80BDF8F6 = "D_Hfsw00";
SECTION_DEAD static char const* const stringBase_80BDF8FF = "ELEVATOR_MOVE";
SECTION_DEAD static char const* const stringBase_80BDF90D = "ELEVATOR_MOVE2";
SECTION_DEAD static char const* const stringBase_80BDF91C = "dmele";
SECTION_DEAD static char const* const stringBase_80BDF922 = "F_SP110";
SECTION_DEAD static char const* const stringBase_80BDF92A = "R_SP110";
#pragma pop

/* 80BDF944-80BDF950 000000 000C+00 4/4 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80BDF950-80BDF964 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
SECTION_DATA static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 80BDF964-80BDF968 -00001 0004+00 3/4 0/0 0/0 .data            l_el_arcName */
SECTION_DATA static void* l_el_arcName = (void*)&d_a_obj_dmelevator__stringBase0;

/* 80BDF968-80BDF96C -00001 0004+00 3/3 0/0 0/0 .data            l_sw_arcName */
SECTION_DATA static void* l_sw_arcName = (void*)(((char*)&d_a_obj_dmelevator__stringBase0) + 0xA);

/* 80BDF96C-80BDF970 -00001 0004+00 0/1 0/0 0/0 .data            l_eventName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_eventName = (void*)(((char*)&d_a_obj_dmelevator__stringBase0) + 0x13);
#pragma pop

/* 80BDF970-80BDF974 -00001 0004+00 0/1 0/0 0/0 .data            l_eventName2 */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_eventName2 = (void*)(((char*)&d_a_obj_dmelevator__stringBase0) + 0x21);
#pragma pop

/* 80BDDEFC-80BDE0A4 00067C 01A8+00 1/0 0/0 0/0 .text            Create__17daObjDmElevator_cFv */
int daObjDmElevator_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDF8A8-80BDF8B0 000038 0008+00 0/2 0/0 0/0 .rodata          @3936 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3936[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BDF8A8, &lit_3936);
#pragma pop

/* 80BDF8B0-80BDF8B8 000040 0008+00 0/2 0/0 0/0 .rodata          @3937 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3937[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BDF8B0, &lit_3937);
#pragma pop

/* 80BDF8B8-80BDF8C0 000048 0008+00 0/2 0/0 0/0 .rodata          @3938 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3938[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BDF8B8, &lit_3938);
#pragma pop

/* 80BDF8C0-80BDF8C4 000050 0004+00 0/1 0/0 0/0 .rodata          @3939 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3939 = 100.0f;
COMPILER_STRIP_GATE(0x80BDF8C0, &lit_3939);
#pragma pop

/* 80BDF8C4-80BDF8C8 000054 0004+00 0/2 0/0 0/0 .rodata          @3940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3940 = 200.0f;
COMPILER_STRIP_GATE(0x80BDF8C4, &lit_3940);
#pragma pop

/* 80BDE0A4-80BDE2F8 000824 0254+00 1/1 0/0 0/0 .text            init__17daObjDmElevator_cFv */
int daObjDmElevator_c::init() {
    // NONMATCHING
}

/* 80BDE2F8-80BDE448 000A78 0150+00 1/0 0/0 0/0 .text            CreateHeap__17daObjDmElevator_cFv
 */
int daObjDmElevator_c::CreateHeap() {
    // NONMATCHING
}

/* 80BDE448-80BDE500 000BC8 00B8+00 1/1 0/0 0/0 .text            create1st__17daObjDmElevator_cFv */
int daObjDmElevator_c::create1st() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDF8C8-80BDF8CC 000058 0004+00 1/1 0/0 0/0 .rodata          @3987 */
SECTION_RODATA static f32 const lit_3987 = 65535.0f;
COMPILER_STRIP_GATE(0x80BDF8C8, &lit_3987);

/* 80BDF8CC-80BDF8D0 00005C 0004+00 1/1 0/0 0/0 .rodata          @3988 */
SECTION_RODATA static u32 const lit_3988 = 0x43FB53D2;
COMPILER_STRIP_GATE(0x80BDF8CC, &lit_3988);

/* 80BDE500-80BDE5F8 000C80 00F8+00 1/0 0/0 0/0 .text Execute__17daObjDmElevator_cFPPA3_A4_f */
int daObjDmElevator_c::Execute(Mtx**) {
    // NONMATCHING
}

/* 80BDE5F8-80BDE6FC 000D78 0104+00 1/1 0/0 0/0 .text setting_ride_flag__17daObjDmElevator_cFv */
void daObjDmElevator_c::setting_ride_flag() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDF974-80BDF978 -00001 0004+00 1/1 0/0 0/0 .data            l_staffName */
SECTION_DATA static void* l_staffName = (void*)(((char*)&d_a_obj_dmelevator__stringBase0) + 0x30);

/* 80BDF978-80BDF984 -00001 000C+00 0/1 0/0 0/0 .data            @4026 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4026[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionSwPauseNone__17daObjDmElevator_cFv,
};
#pragma pop

/* 80BDF984-80BDF990 -00001 000C+00 0/1 0/0 0/0 .data            @4027 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4027[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionSwPauseOrder__17daObjDmElevator_cFv,
};
#pragma pop

/* 80BDF990-80BDF99C -00001 000C+00 0/1 0/0 0/0 .data            @4028 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4028[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionSwPause__17daObjDmElevator_cFv,
};
#pragma pop

/* 80BDF99C-80BDF9C0 000058 0024+00 0/1 0/0 0/0 .data            l_func$4025 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func_4025[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80BDFBDC-80BDFBE0 -00001 0004+00 3/3 0/0 0/0 .bss             None */
/* 80BDFBDC 0001+00 data_80BDFBDC None */
/* 80BDFBDD 0001+00 data_80BDFBDD None */
/* 80BDFBDE 0002+00 data_80BDFBDE None */
static u8 struct_80BDFBDC[4];

/* 80BDE6FC-80BDE7A0 000E7C 00A4+00 1/1 0/0 0/0 .text event_sw_proc_call__17daObjDmElevator_cFv */
void daObjDmElevator_c::event_sw_proc_call() {
    // NONMATCHING
}

/* 80BDE7A0-80BDE7AC 000F20 000C+00 2/2 0/0 0/0 .text actionSwPauseNoneInit__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::actionSwPauseNoneInit() {
    // NONMATCHING
}

/* 80BDE7AC-80BDE7B0 000F2C 0004+00 1/0 0/0 0/0 .text actionSwPauseNone__17daObjDmElevator_cFv */
void daObjDmElevator_c::actionSwPauseNone() {
    /* empty function */
}

/* 80BDE7B0-80BDE808 000F30 0058+00 1/1 0/0 0/0 .text
 * actionSwPauseOrderInit__17daObjDmElevator_cFv                */
void daObjDmElevator_c::actionSwPauseOrderInit() {
    // NONMATCHING
}

/* 80BDE808-80BDE83C 000F88 0034+00 1/0 0/0 0/0 .text actionSwPauseOrder__17daObjDmElevator_cFv */
void daObjDmElevator_c::actionSwPauseOrder() {
    // NONMATCHING
}

/* 80BDE83C-80BDE868 000FBC 002C+00 1/1 0/0 0/0 .text actionSwPauseInit__17daObjDmElevator_cFv */
void daObjDmElevator_c::actionSwPauseInit() {
    // NONMATCHING
}

/* 80BDE868-80BDE8D0 000FE8 0068+00 1/0 0/0 0/0 .text actionSwPause__17daObjDmElevator_cFv */
void daObjDmElevator_c::actionSwPause() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDF8D0-80BDF8D4 000060 0004+00 0/1 0/0 0/0 .rodata          @4090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4090 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BDF8D0, &lit_4090);
#pragma pop

/* 80BDF8D4-80BDF8D8 000064 0004+00 0/1 0/0 0/0 .rodata          @4091 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4091 = 0.5f;
COMPILER_STRIP_GATE(0x80BDF8D4, &lit_4091);
#pragma pop

/* 80BDF8D8-80BDF8DC 000068 0004+00 3/10 0/0 0/0 .rodata          @4092 */
SECTION_RODATA static f32 const lit_4092 = 1.0f;
COMPILER_STRIP_GATE(0x80BDF8D8, &lit_4092);

/* 80BDE8D0-80BDE960 001050 0090+00 1/1 0/0 0/0 .text            calc_top_pos__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::calc_top_pos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDF9C0-80BDF9CC -00001 000C+00 0/1 0/0 0/0 .data            @4097 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4097[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeSwWaitLower__17daObjDmElevator_cFv,
};
#pragma pop

/* 80BDF9CC-80BDF9D8 -00001 000C+00 0/1 0/0 0/0 .data            @4098 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4098[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeSwLower__17daObjDmElevator_cFv,
};
#pragma pop

/* 80BDF9D8-80BDF9E4 -00001 000C+00 0/1 0/0 0/0 .data            @4099 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4099[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeSwWaitUpper__17daObjDmElevator_cFv,
};
#pragma pop

/* 80BDF9E4-80BDF9F0 -00001 000C+00 0/1 0/0 0/0 .data            @4100 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4100[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeSwUpper__17daObjDmElevator_cFv,
};
#pragma pop

/* 80BDF9F0-80BDFA20 0000AC 0030+00 0/1 0/0 0/0 .data            l_mode_func$4096 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_mode_func[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80BDE960-80BDEA1C 0010E0 00BC+00 1/1 0/0 0/0 .text mode_sw_proc_call__17daObjDmElevator_cFv */
void daObjDmElevator_c::mode_sw_proc_call() {
    // NONMATCHING
}

/* 80BDEA1C-80BDEA44 00119C 0028+00 1/1 0/0 0/0 .text modeSwWaitLowerInit__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::modeSwWaitLowerInit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDF8DC-80BDF8E0 00006C 0004+00 1/5 0/0 0/0 .rodata          @4141 */
SECTION_RODATA static f32 const lit_4141 = -1.0f;
COMPILER_STRIP_GATE(0x80BDF8DC, &lit_4141);

/* 80BDF8E0-80BDF8E4 000070 0004+00 0/1 0/0 0/0 .rodata          @4142 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4142 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BDF8E0, &lit_4142);
#pragma pop

/* 80BDEA44-80BDEB88 0011C4 0144+00 1/0 0/0 0/0 .text modeSwWaitLower__17daObjDmElevator_cFv */
void daObjDmElevator_c::modeSwWaitLower() {
    // NONMATCHING
}

/* 80BDEB88-80BDEC10 001308 0088+00 1/1 0/0 0/0 .text modeSwLowerInit__17daObjDmElevator_cFv */
void daObjDmElevator_c::modeSwLowerInit() {
    // NONMATCHING
}

/* 80BDEC10-80BDEC94 001390 0084+00 1/0 0/0 0/0 .text            modeSwLower__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::modeSwLower() {
    // NONMATCHING
}

/* 80BDEC94-80BDECB4 001414 0020+00 2/2 0/0 0/0 .text modeSwWaitUpperInit__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::modeSwWaitUpperInit() {
    // NONMATCHING
}

/* 80BDECB4-80BDECE0 001434 002C+00 1/0 0/0 0/0 .text modeSwWaitUpper__17daObjDmElevator_cFv */
void daObjDmElevator_c::modeSwWaitUpper() {
    // NONMATCHING
}

/* 80BDECE0-80BDED64 001460 0084+00 1/1 0/0 0/0 .text modeSwUpperInit__17daObjDmElevator_cFv */
void daObjDmElevator_c::modeSwUpperInit() {
    // NONMATCHING
}

/* 80BDED64-80BDEDE0 0014E4 007C+00 1/0 0/0 0/0 .text            modeSwUpper__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::modeSwUpper() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDFA20-80BDFA2C -00001 000C+00 0/1 0/0 0/0 .data            @4197 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4197[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWait__17daObjDmElevator_cFv,
};
#pragma pop

/* 80BDFA2C-80BDFA38 -00001 000C+00 0/1 0/0 0/0 .data            @4198 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4198[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOrderEvent__17daObjDmElevator_cFv,
};
#pragma pop

/* 80BDFA38-80BDFA44 -00001 000C+00 0/1 0/0 0/0 .data            @4199 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4199[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionEvent__17daObjDmElevator_cFv,
};
#pragma pop

/* 80BDFA44-80BDFA50 -00001 000C+00 0/1 0/0 0/0 .data            @4200 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4200[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionStartEvent__17daObjDmElevator_cFv,
};
#pragma pop

/* 80BDFA50-80BDFA5C -00001 000C+00 0/1 0/0 0/0 .data            @4201 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4201[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionMoveStart__17daObjDmElevator_cFv,
};
#pragma pop

/* 80BDFA5C-80BDFA68 -00001 000C+00 0/1 0/0 0/0 .data            @4202 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4202[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionDead__17daObjDmElevator_cFv,
};
#pragma pop

/* 80BDFA68-80BDFAB0 000124 0048+00 0/1 0/0 0/0 .data            l_func$4196 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func_4196[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80BDEDE0-80BDEECC 001560 00EC+00 1/1 0/0 0/0 .text event_proc_call__17daObjDmElevator_cFv */
void daObjDmElevator_c::event_proc_call() {
    // NONMATCHING
}

/* 80BDEECC-80BDEF60 00164C 0094+00 1/0 0/0 0/0 .text            actionWait__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::actionWait() {
    // NONMATCHING
}

/* 80BDEF60-80BDF000 0016E0 00A0+00 1/0 0/0 0/0 .text actionOrderEvent__17daObjDmElevator_cFv */
void daObjDmElevator_c::actionOrderEvent() {
    // NONMATCHING
}

/* 80BDF000-80BDF068 001780 0068+00 1/0 0/0 0/0 .text            actionEvent__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::actionEvent() {
    // NONMATCHING
}

/* 80BDF068-80BDF0A0 0017E8 0038+00 1/0 0/0 0/0 .text actionStartEvent__17daObjDmElevator_cFv */
void daObjDmElevator_c::actionStartEvent() {
    // NONMATCHING
}

/* 80BDF0A0-80BDF168 001820 00C8+00 1/0 0/0 0/0 .text actionMoveStart__17daObjDmElevator_cFv */
void daObjDmElevator_c::actionMoveStart() {
    // NONMATCHING
}

/* 80BDF168-80BDF16C 0018E8 0004+00 1/0 0/0 0/0 .text            actionDead__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::actionDead() {
    /* empty function */
}

/* ############################################################################################## */
/* 80BDF8EC-80BDF8EC 00007C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BDF932 = "WAIT";
SECTION_DEAD static char const* const stringBase_80BDF937 = "MOVE";
SECTION_DEAD static char const* const stringBase_80BDF93C = "Timer";
#pragma pop

/* 80BDFAB0-80BDFAB8 -00001 0008+00 1/1 0/0 0/0 .data            action_table$4279 */
static char* action_table[2] = {
    "WAIT",
    "MOVE",
};

/* 80BDF16C-80BDF320 0018EC 01B4+00 3/3 0/0 0/0 .text            demoProc__17daObjDmElevator_cFv */
int daObjDmElevator_c::demoProc() {
    // NONMATCHING
}

/* 80BDF320-80BDF3B8 001AA0 0098+00 2/2 0/0 0/0 .text            moveInit__17daObjDmElevator_cFv */
void daObjDmElevator_c::moveInit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDF8E4-80BDF8E8 000074 0004+00 0/1 0/0 0/0 .rodata          @4399 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4399 = 10.0f;
COMPILER_STRIP_GATE(0x80BDF8E4, &lit_4399);
#pragma pop

/* 80BDF8E8-80BDF8EC 000078 0004+00 0/1 0/0 0/0 .rodata          @4400 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4400 = -10.0f;
COMPILER_STRIP_GATE(0x80BDF8E8, &lit_4400);
#pragma pop

/* 80BDF3B8-80BDF618 001B38 0260+00 2/2 0/0 0/0 .text            moveProc__17daObjDmElevator_cFv */
int daObjDmElevator_c::moveProc() {
    // NONMATCHING
}

/* 80BDF618-80BDF6DC 001D98 00C4+00 1/0 0/0 0/0 .text            Draw__17daObjDmElevator_cFv */
int daObjDmElevator_c::Draw() {
    // NONMATCHING
}

/* 80BDF6DC-80BDF764 001E5C 0088+00 1/0 0/0 0/0 .text            Delete__17daObjDmElevator_cFv */
int daObjDmElevator_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDFAB8-80BDFAD8 -00001 0020+00 1/0 0/0 0/0 .data            daObjDmElevator_METHODS */
static actor_method_class daObjDmElevator_METHODS = {
    (process_method_func)daObjDmElevator_create1st__FP17daObjDmElevator_c,
    (process_method_func)daObjDmElevator_MoveBGDelete__FP17daObjDmElevator_c,
    (process_method_func)daObjDmElevator_MoveBGExecute__FP17daObjDmElevator_c,
    0,
    (process_method_func)daObjDmElevator_MoveBGDraw__FP17daObjDmElevator_c,
};

/* 80BDFAD8-80BDFB08 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Elevator */
extern actor_process_profile_definition g_profile_Obj_Elevator = {
  fpcLy_CURRENT_e,          // mLayerID
  3,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_Obj_Elevator,        // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daObjDmElevator_c),// mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  542,                      // mPriority
  &daObjDmElevator_METHODS, // sub_method
  0x00044100,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80BDFB08-80BDFB30 0001C4 0028+00 1/1 0/0 0/0 .data            __vt__17daObjDmElevator_c */
SECTION_DATA extern void* __vt__17daObjDmElevator_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__17daObjDmElevator_cFv,
    (void*)Create__17daObjDmElevator_cFv,
    (void*)Execute__17daObjDmElevator_cFPPA3_A4_f,
    (void*)Draw__17daObjDmElevator_cFv,
    (void*)Delete__17daObjDmElevator_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80BDF764-80BDF7D8 001EE4 0074+00 1/0 0/0 0/0 .text
 * daObjDmElevator_create1st__FP17daObjDmElevator_c             */
static void daObjDmElevator_create1st(daObjDmElevator_c* i_this) {
    // NONMATCHING
}

/* 80BDF7D8-80BDF7F8 001F58 0020+00 1/0 0/0 0/0 .text
 * daObjDmElevator_MoveBGDelete__FP17daObjDmElevator_c          */
static void daObjDmElevator_MoveBGDelete(daObjDmElevator_c* i_this) {
    // NONMATCHING
}

/* 80BDF7F8-80BDF818 001F78 0020+00 1/0 0/0 0/0 .text
 * daObjDmElevator_MoveBGExecute__FP17daObjDmElevator_c         */
static void daObjDmElevator_MoveBGExecute(daObjDmElevator_c* i_this) {
    // NONMATCHING
}

/* 80BDF818-80BDF844 001F98 002C+00 1/0 0/0 0/0 .text
 * daObjDmElevator_MoveBGDraw__FP17daObjDmElevator_c            */
static void daObjDmElevator_MoveBGDraw(daObjDmElevator_c* i_this) {
    // NONMATCHING
}

/* 80BDF844-80BDF860 001FC4 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_80BDF844(void* _this, u8* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDFBE0-80BDFBE4 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80BDFBE0[4];
#pragma pop

/* 80BDFBE4-80BDFBE8 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80BDFBE4[4];
#pragma pop

/* 80BDFBE8-80BDFBEC 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80BDFBE8[4];
#pragma pop

/* 80BDFBEC-80BDFBF0 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80BDFBEC[4];
#pragma pop

/* 80BDFBF0-80BDFBF4 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BDFBF0[4];
#pragma pop

/* 80BDFBF4-80BDFBF8 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BDFBF4[4];
#pragma pop

/* 80BDFBF8-80BDFBFC 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80BDFBF8[4];
#pragma pop

/* 80BDFBFC-80BDFC00 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80BDFBFC[4];
#pragma pop

/* 80BDFC00-80BDFC04 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80BDFC00[4];
#pragma pop

/* 80BDFC04-80BDFC08 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80BDFC04[4];
#pragma pop

/* 80BDFC08-80BDFC0C 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80BDFC08[4];
#pragma pop

/* 80BDFC0C-80BDFC10 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80BDFC0C[4];
#pragma pop

/* 80BDFC10-80BDFC14 0000E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80BDFC10[4];
#pragma pop

/* 80BDFC14-80BDFC18 0000E4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BDFC14[4];
#pragma pop

/* 80BDFC18-80BDFC1C 0000E8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80BDFC18[4];
#pragma pop

/* 80BDFC1C-80BDFC20 0000EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80BDFC1C[4];
#pragma pop

/* 80BDFC20-80BDFC24 0000F0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80BDFC20[4];
#pragma pop

/* 80BDFC24-80BDFC28 0000F4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80BDFC24[4];
#pragma pop

/* 80BDFC28-80BDFC2C 0000F8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80BDFC28[4];
#pragma pop

/* 80BDFC2C-80BDFC30 0000FC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80BDFC2C[4];
#pragma pop

/* 80BDFC30-80BDFC34 000100 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80BDFC30[4];
#pragma pop

/* 80BDFC34-80BDFC38 000104 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BDFC34[4];
#pragma pop

/* 80BDFC38-80BDFC3C 000108 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BDFC38[4];
#pragma pop

/* 80BDFC3C-80BDFC40 00010C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BDFC3C[4];
#pragma pop

/* 80BDFC40-80BDFC44 000110 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80BDFC40[4];
#pragma pop

/* 80BDF8EC-80BDF8EC 00007C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
