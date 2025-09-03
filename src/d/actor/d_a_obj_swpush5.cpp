/**
 * @file d_a_obj_swpush5.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_swpush5.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" void initBaseMtx__10daObjSw5_cFv();
extern "C" void setBaseMtx__10daObjSw5_cFv();
extern "C" void Create__10daObjSw5_cFv();
extern "C" void CreateHeap__10daObjSw5_cFv();
extern "C" void create__10daObjSw5_cFv();
extern "C" void Execute__10daObjSw5_cFPPA3_A4_f();
extern "C" void setting_ride_flag__10daObjSw5_cFv();
extern "C" bool checkPushable__10daObjSw5_cFv();
extern "C" void event_proc_call__10daObjSw5_cFv();
extern "C" void actionPauseNoneInit__10daObjSw5_cFv();
extern "C" void actionPauseNone__10daObjSw5_cFv();
extern "C" void actionPauseOrderInit__10daObjSw5_cFv();
extern "C" void actionPauseOrder__10daObjSw5_cFv();
extern "C" void actionPauseInit__10daObjSw5_cFv();
extern "C" void actionPause__10daObjSw5_cFv();
extern "C" void actionWait__10daObjSw5_cFv();
extern "C" void actionOrder__10daObjSw5_cFv();
extern "C" void actionEvent__10daObjSw5_cFv();
extern "C" void calc_top_pos__10daObjSw5_cFv();
extern "C" void mode_proc_call__10daObjSw5_cFv();
extern "C" void modeWaitLowerInit__10daObjSw5_cFv();
extern "C" void modeWaitLower__10daObjSw5_cFv();
extern "C" void modeLowerInit__10daObjSw5_cFv();
extern "C" void modeLower__10daObjSw5_cFv();
extern "C" void modeWaitUpperInit__10daObjSw5_cFv();
extern "C" void modeWaitUpper__10daObjSw5_cFv();
extern "C" void modeUpperInit__10daObjSw5_cFv();
extern "C" void modeUpper__10daObjSw5_cFv();
extern "C" void Draw__10daObjSw5_cFv();
extern "C" void Delete__10daObjSw5_cFv();
extern "C" static void daObjSw5_Draw__FP10daObjSw5_c();
extern "C" static void daObjSw5_Execute__FP10daObjSw5_c();
extern "C" static void daObjSw5_Delete__FP10daObjSw5_c();
extern "C" static void daObjSw5_Create__FP10fopAc_ac_c();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_obj_swpush5__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
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
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 8059C6A4-8059C6AC 000000 0008+00 7/7 0/0 0/0 .rodata          l_dzbIdx */
SECTION_RODATA static u8 const l_dzbIdx[8] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08,
};
COMPILER_STRIP_GATE(0x8059C6A4, &l_dzbIdx);

/* 8059C6AC-8059C6B0 000008 0004+00 0/1 0/0 0/0 .rodata          @3718 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3718 = -50.0f;
COMPILER_STRIP_GATE(0x8059C6AC, &lit_3718);
#pragma pop

/* 8059C6B0-8059C6B4 00000C 0004+00 3/7 0/0 0/0 .rodata          @3719 */
SECTION_RODATA static u8 const lit_3719[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8059C6B0, &lit_3719);

/* 8059C6B4-8059C6B8 000010 0004+00 0/1 0/0 0/0 .rodata          @3720 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3720 = 50.0f;
COMPILER_STRIP_GATE(0x8059C6B4, &lit_3720);
#pragma pop

/* 8059C8B0-8059C8C0 000048 000C+04 0/1 0/0 0/0 .bss             @3654 */
#pragma push
#pragma force_active on
static u8 lit_3654[12 + 4 /* padding */];
#pragma pop

/* 8059C8C0-8059C8CC 000058 000C+00 0/1 0/0 0/0 .bss             @3657 */
#pragma push
#pragma force_active on
static u8 lit_3657[12];
#pragma pop

/* 8059C8CC-8059C8D8 000064 000C+00 0/1 0/0 0/0 .bss             @3658 */
#pragma push
#pragma force_active on
static u8 lit_3658[12];
#pragma pop

/* 8059C8D8-8059C8E4 000070 000C+00 0/1 0/0 0/0 .bss             @3659 */
#pragma push
#pragma force_active on
static u8 lit_3659[12];
#pragma pop

/* 8059C8E4-8059C914 00007C 0030+00 0/1 0/0 0/0 .bss             l_push_check_pos$3653 */
#pragma push
#pragma force_active on
static u8 l_push_check_pos[48];
#pragma pop

/* 8059B4EC-8059B754 0000EC 0268+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* 8059B754-8059B804 000354 00B0+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 8059B804-8059B88C 000404 0088+00 1/1 0/0 0/0 .text            initBaseMtx__10daObjSw5_cFv */
void daObjSw5_c::initBaseMtx() {
    // NONMATCHING
}

/* 8059B88C-8059B920 00048C 0094+00 2/2 0/0 0/0 .text            setBaseMtx__10daObjSw5_cFv */
void daObjSw5_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8059C6B8-8059C6BC 000014 0004+00 1/3 0/0 0/0 .rodata          @3815 */
SECTION_RODATA static f32 const lit_3815 = -25.0f;
COMPILER_STRIP_GATE(0x8059C6B8, &lit_3815);

/* 8059B920-8059BA1C 000520 00FC+00 1/0 0/0 0/0 .text            Create__10daObjSw5_cFv */
void daObjSw5_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8059C6D0-8059C6D0 00002C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8059C6D0 = "D_Hfsw00";
#pragma pop

/* 8059C6FC-8059C700 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_swpush5__stringBase0;

/* 8059BA1C-8059BB1C 00061C 0100+00 1/0 0/0 0/0 .text            CreateHeap__10daObjSw5_cFv */
void daObjSw5_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8059C700-8059C70C -00001 000C+00 0/1 0/0 0/0 .data            @3907 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3907[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionPauseNone__10daObjSw5_cFv,
};
#pragma pop

/* 8059C70C-8059C718 -00001 000C+00 0/1 0/0 0/0 .data            @3908 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3908[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionPauseOrder__10daObjSw5_cFv,
};
#pragma pop

/* 8059C718-8059C724 -00001 000C+00 0/1 0/0 0/0 .data            @3909 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3909[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionPause__10daObjSw5_cFv,
};
#pragma pop

/* 8059C724-8059C730 -00001 000C+00 0/1 0/0 0/0 .data            @3910 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3910[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWait__10daObjSw5_cFv,
};
#pragma pop

/* 8059C730-8059C73C -00001 000C+00 0/1 0/0 0/0 .data            @3911 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3911[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOrder__10daObjSw5_cFv,
};
#pragma pop

/* 8059C73C-8059C748 -00001 000C+00 0/1 0/0 0/0 .data            @3912 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3912[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionEvent__10daObjSw5_cFv,
};
#pragma pop

/* 8059C748-8059C790 00006C 0048+00 0/1 0/0 0/0 .data            l_func$3906 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 8059C790-8059C79C -00001 000C+00 0/1 0/0 0/0 .data            @3993 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3993[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWaitLower__10daObjSw5_cFv,
};
#pragma pop

/* 8059C79C-8059C7A8 -00001 000C+00 0/1 0/0 0/0 .data            @3994 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3994[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeLower__10daObjSw5_cFv,
};
#pragma pop

/* 8059C7A8-8059C7B4 -00001 000C+00 0/1 0/0 0/0 .data            @3995 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3995[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWaitUpper__10daObjSw5_cFv,
};
#pragma pop

/* 8059C7B4-8059C7C0 -00001 000C+00 0/1 0/0 0/0 .data            @3996 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3996[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeUpper__10daObjSw5_cFv,
};
#pragma pop

/* 8059C7C0-8059C7F0 0000E4 0030+00 0/1 0/0 0/0 .data            l_mode_func$3992 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_mode_func[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 8059C7F0-8059C810 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjSw5_Method */
static actor_method_class l_daObjSw5_Method = {
    (process_method_func)daObjSw5_Create__FP10fopAc_ac_c,
    (process_method_func)daObjSw5_Delete__FP10daObjSw5_c,
    (process_method_func)daObjSw5_Execute__FP10daObjSw5_c,
    0,
    (process_method_func)daObjSw5_Draw__FP10daObjSw5_c,
};

/* 8059C810-8059C840 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Swpush5 */
extern actor_process_profile_definition g_profile_Obj_Swpush5 = {
  fpcLy_CURRENT_e,        // mLayerID
  2,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Swpush5,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjSw5_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  13,                     // mPriority
  &l_daObjSw5_Method,     // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 8059C840-8059C868 000164 0028+00 1/1 0/0 0/0 .data            __vt__10daObjSw5_c */
SECTION_DATA extern void* __vt__10daObjSw5_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__10daObjSw5_cFv,
    (void*)Create__10daObjSw5_cFv,
    (void*)Execute__10daObjSw5_cFPPA3_A4_f,
    (void*)Draw__10daObjSw5_cFv,
    (void*)Delete__10daObjSw5_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 8059BB1C-8059BBD4 00071C 00B8+00 1/1 0/0 0/0 .text            create__10daObjSw5_cFv */
void daObjSw5_c::create() {
    // NONMATCHING
}

/* 8059BBD4-8059BC70 0007D4 009C+00 1/0 0/0 0/0 .text            Execute__10daObjSw5_cFPPA3_A4_f */
void daObjSw5_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 8059BC70-8059BD24 000870 00B4+00 1/1 0/0 0/0 .text            setting_ride_flag__10daObjSw5_cFv
 */
void daObjSw5_c::setting_ride_flag() {
    // NONMATCHING
}

/* 8059BD24-8059BD2C 000924 0008+00 1/1 0/0 0/0 .text            checkPushable__10daObjSw5_cFv */
bool daObjSw5_c::checkPushable() {
    return true;
}

/* ############################################################################################## */
/* 8059C914-8059C918 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 8059C914 0001+00 data_8059C914 None */
/* 8059C915 0003+00 data_8059C915 None */
static u8 struct_8059C914[4];

/* 8059BD2C-8059BE18 00092C 00EC+00 1/1 0/0 0/0 .text            event_proc_call__10daObjSw5_cFv */
void daObjSw5_c::event_proc_call() {
    // NONMATCHING
}

/* 8059BE18-8059BE24 000A18 000C+00 2/2 0/0 0/0 .text            actionPauseNoneInit__10daObjSw5_cFv
 */
void daObjSw5_c::actionPauseNoneInit() {
    // NONMATCHING
}

/* 8059BE24-8059BE28 000A24 0004+00 1/0 0/0 0/0 .text            actionPauseNone__10daObjSw5_cFv */
void daObjSw5_c::actionPauseNone() {
    /* empty function */
}

/* 8059BE28-8059BE80 000A28 0058+00 1/1 0/0 0/0 .text actionPauseOrderInit__10daObjSw5_cFv */
void daObjSw5_c::actionPauseOrderInit() {
    // NONMATCHING
}

/* 8059BE80-8059BEB4 000A80 0034+00 1/0 0/0 0/0 .text            actionPauseOrder__10daObjSw5_cFv */
void daObjSw5_c::actionPauseOrder() {
    // NONMATCHING
}

/* 8059BEB4-8059BEE0 000AB4 002C+00 1/1 0/0 0/0 .text            actionPauseInit__10daObjSw5_cFv */
void daObjSw5_c::actionPauseInit() {
    // NONMATCHING
}

/* 8059BEE0-8059BF48 000AE0 0068+00 1/0 0/0 0/0 .text            actionPause__10daObjSw5_cFv */
void daObjSw5_c::actionPause() {
    // NONMATCHING
}

/* 8059BF48-8059BF4C 000B48 0004+00 1/0 0/0 0/0 .text            actionWait__10daObjSw5_cFv */
void daObjSw5_c::actionWait() {
    /* empty function */
}

/* 8059BF4C-8059BF50 000B4C 0004+00 1/0 0/0 0/0 .text            actionOrder__10daObjSw5_cFv */
void daObjSw5_c::actionOrder() {
    /* empty function */
}

/* 8059BF50-8059BF54 000B50 0004+00 1/0 0/0 0/0 .text            actionEvent__10daObjSw5_cFv */
void daObjSw5_c::actionEvent() {
    /* empty function */
}

/* ############################################################################################## */
/* 8059C6BC-8059C6C0 000018 0004+00 0/1 0/0 0/0 .rodata          @3986 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3986 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x8059C6BC, &lit_3986);
#pragma pop

/* 8059C6C0-8059C6C4 00001C 0004+00 0/1 0/0 0/0 .rodata          @3987 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3987 = 0.5f;
COMPILER_STRIP_GATE(0x8059C6C0, &lit_3987);
#pragma pop

/* 8059C6C4-8059C6C8 000020 0004+00 2/6 0/0 0/0 .rodata          @3988 */
SECTION_RODATA static f32 const lit_3988 = 1.0f;
COMPILER_STRIP_GATE(0x8059C6C4, &lit_3988);

/* 8059BF54-8059BFE4 000B54 0090+00 1/1 0/0 0/0 .text            calc_top_pos__10daObjSw5_cFv */
void daObjSw5_c::calc_top_pos() {
    // NONMATCHING
}

/* 8059BFE4-8059C0A0 000BE4 00BC+00 1/1 0/0 0/0 .text            mode_proc_call__10daObjSw5_cFv */
void daObjSw5_c::mode_proc_call() {
    // NONMATCHING
}

/* 8059C0A0-8059C0C8 000CA0 0028+00 1/1 0/0 0/0 .text            modeWaitLowerInit__10daObjSw5_cFv
 */
void daObjSw5_c::modeWaitLowerInit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8059C6C8-8059C6CC 000024 0004+00 1/3 0/0 0/0 .rodata          @4041 */
SECTION_RODATA static f32 const lit_4041 = -1.0f;
COMPILER_STRIP_GATE(0x8059C6C8, &lit_4041);

/* 8059C6CC-8059C6D0 000028 0004+00 0/1 0/0 0/0 .rodata          @4042 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4042 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x8059C6CC, &lit_4042);
#pragma pop

/* 8059C0C8-8059C23C 000CC8 0174+00 1/0 0/0 0/0 .text            modeWaitLower__10daObjSw5_cFv */
void daObjSw5_c::modeWaitLower() {
    // NONMATCHING
}

/* 8059C23C-8059C2D0 000E3C 0094+00 1/1 0/0 0/0 .text            modeLowerInit__10daObjSw5_cFv */
void daObjSw5_c::modeLowerInit() {
    // NONMATCHING
}

/* 8059C2D0-8059C364 000ED0 0094+00 1/0 0/0 0/0 .text            modeLower__10daObjSw5_cFv */
void daObjSw5_c::modeLower() {
    // NONMATCHING
}

/* 8059C364-8059C370 000F64 000C+00 2/2 0/0 0/0 .text            modeWaitUpperInit__10daObjSw5_cFv
 */
void daObjSw5_c::modeWaitUpperInit() {
    // NONMATCHING
}

/* 8059C370-8059C3C4 000F70 0054+00 1/0 0/0 0/0 .text            modeWaitUpper__10daObjSw5_cFv */
void daObjSw5_c::modeWaitUpper() {
    // NONMATCHING
}

/* 8059C3C4-8059C454 000FC4 0090+00 1/1 0/0 0/0 .text            modeUpperInit__10daObjSw5_cFv */
void daObjSw5_c::modeUpperInit() {
    // NONMATCHING
}

/* 8059C454-8059C4BC 001054 0068+00 1/0 0/0 0/0 .text            modeUpper__10daObjSw5_cFv */
void daObjSw5_c::modeUpper() {
    // NONMATCHING
}

/* 8059C4BC-8059C560 0010BC 00A4+00 1/0 0/0 0/0 .text            Draw__10daObjSw5_cFv */
void daObjSw5_c::Draw() {
    // NONMATCHING
}

/* 8059C560-8059C5CC 001160 006C+00 1/0 0/0 0/0 .text            Delete__10daObjSw5_cFv */
void daObjSw5_c::Delete() {
    // NONMATCHING
}

/* 8059C5CC-8059C5F8 0011CC 002C+00 1/0 0/0 0/0 .text            daObjSw5_Draw__FP10daObjSw5_c */
static void daObjSw5_Draw(daObjSw5_c* param_0) {
    // NONMATCHING
}

/* 8059C5F8-8059C618 0011F8 0020+00 1/0 0/0 0/0 .text            daObjSw5_Execute__FP10daObjSw5_c */
static void daObjSw5_Execute(daObjSw5_c* param_0) {
    // NONMATCHING
}

/* 8059C618-8059C638 001218 0020+00 1/0 0/0 0/0 .text            daObjSw5_Delete__FP10daObjSw5_c */
static void daObjSw5_Delete(daObjSw5_c* param_0) {
    // NONMATCHING
}

/* 8059C638-8059C658 001238 0020+00 1/0 0/0 0/0 .text            daObjSw5_Create__FP10fopAc_ac_c */
static void daObjSw5_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8059C658-8059C694 001258 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8059C918-8059C91C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8059C918[4];
#pragma pop

/* 8059C91C-8059C920 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8059C91C[4];
#pragma pop

/* 8059C920-8059C924 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8059C920[4];
#pragma pop

/* 8059C924-8059C928 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8059C924[4];
#pragma pop

/* 8059C928-8059C92C 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8059C928[4];
#pragma pop

/* 8059C92C-8059C930 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8059C92C[4];
#pragma pop

/* 8059C930-8059C934 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8059C930[4];
#pragma pop

/* 8059C934-8059C938 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8059C934[4];
#pragma pop

/* 8059C938-8059C93C 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8059C938[4];
#pragma pop

/* 8059C93C-8059C940 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8059C93C[4];
#pragma pop

/* 8059C940-8059C944 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8059C940[4];
#pragma pop

/* 8059C944-8059C948 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8059C944[4];
#pragma pop

/* 8059C948-8059C94C 0000E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8059C948[4];
#pragma pop

/* 8059C94C-8059C950 0000E4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8059C94C[4];
#pragma pop

/* 8059C950-8059C954 0000E8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8059C950[4];
#pragma pop

/* 8059C954-8059C958 0000EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8059C954[4];
#pragma pop

/* 8059C958-8059C95C 0000F0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8059C958[4];
#pragma pop

/* 8059C95C-8059C960 0000F4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8059C95C[4];
#pragma pop

/* 8059C960-8059C964 0000F8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8059C960[4];
#pragma pop

/* 8059C964-8059C968 0000FC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8059C964[4];
#pragma pop

/* 8059C968-8059C96C 000100 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8059C968[4];
#pragma pop

/* 8059C96C-8059C970 000104 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8059C96C[4];
#pragma pop

/* 8059C970-8059C974 000108 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8059C970[4];
#pragma pop

/* 8059C974-8059C978 00010C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8059C974[4];
#pragma pop

/* 8059C978-8059C97C 000110 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8059C978[4];
#pragma pop

/* 8059C6D0-8059C6D0 00002C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
