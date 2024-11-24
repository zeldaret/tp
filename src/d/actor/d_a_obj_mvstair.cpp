/**
 * @file d_a_obj_mvstair.cpp
 * 
*/

#include "d/actor/d_a_obj_mvstair.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void initBaseMtx__12daObjStair_cFv();
extern "C" void setBaseMtx__12daObjStair_cFv();
extern "C" void Create__12daObjStair_cFv();
extern "C" void CreateHeap__12daObjStair_cFv();
extern "C" void create1st__12daObjStair_cFv();
extern "C" void event_proc_call__12daObjStair_cFv();
extern "C" void mode_proc_call__12daObjStair_cFv();
extern "C" void Execute__12daObjStair_cFPPA3_A4_f();
extern "C" void Draw__12daObjStair_cFv();
extern "C" void Delete__12daObjStair_cFv();
extern "C" void actionWait__12daObjStair_cFv();
extern "C" void actionOrderEvent__12daObjStair_cFv();
extern "C" void actionEvent__12daObjStair_cFv();
extern "C" bool actionEnd__12daObjStair_cFv();
extern "C" void modeWaitUpperInit__12daObjStair_cFv();
extern "C" void modeWaitUpper__12daObjStair_cFv();
extern "C" void modeUpperInit__12daObjStair_cFv();
extern "C" void modeUpper__12daObjStair_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void modeWaitLowerInit__12daObjStair_cFv();
extern "C" void modeWaitLower__12daObjStair_cFv();
extern "C" void modeLowerInit__12daObjStair_cFv();
extern "C" void modeLower__12daObjStair_cFv();
extern "C" void setParticle__12daObjStair_cFv();
extern "C" void removeParticle__12daObjStair_cFv();
extern "C" static void daObjStair_create1st__FP12daObjStair_c();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__19dPa_followEcallBackFv();
extern "C" void cleanup__18dPa_levelEcallBackFv();
extern "C" void __defctor__19dPa_followEcallBackFv();
extern "C" static void daObjStair_MoveBGDelete__FP12daObjStair_c();
extern "C" static void daObjStair_MoveBGExecute__FP12daObjStair_c();
extern "C" static void daObjStair_MoveBGDraw__FP12daObjStair_c();
extern "C" void __dt__18dPa_levelEcallBackFv();
extern "C" void execute__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void draw__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" extern char const* const d_a_obj_mvstair__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void __ct__19dPa_followEcallBackFUcUc();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
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
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_chaseF__FPfff();
extern "C" void __dt__18JPAEmitterCallBackFv();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19dPa_followEcallBack[10];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 struct_80C9EAA8[4];

//
// Declarations:
//

/* 80C9D098-80C9D0D4 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjStair_cFv */
void daObjStair_c::initBaseMtx() {
    // NONMATCHING
}

/* 80C9D0D4-80C9D148 0000B4 0074+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjStair_cFv */
void daObjStair_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C9E8AC-80C9E8B4 000000 0008+00 4/4 0/0 0/0 .rodata          l_bmdName */
SECTION_RODATA static u8 const l_bmdName[8] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80C9E8AC, &l_bmdName);

/* 80C9E8B4-80C9E8BC 000008 0008+00 1/1 0/0 0/0 .rodata          l_dzbName */
SECTION_RODATA static u8 const l_dzbName[8] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07,
};
COMPILER_STRIP_GATE(0x80C9E8B4, &l_dzbName);

/* 80C9E8BC-80C9E8D4 000010 0018+00 1/2 0/0 0/0 .rodata          l_move_len */
SECTION_RODATA static u8 const l_move_len[24] = {
    0x43, 0x16, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0x43, 0xE1, 0x00, 0x00,
    0x44, 0x16, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x44, 0x09, 0x80, 0x00,
};
COMPILER_STRIP_GATE(0x80C9E8BC, &l_move_len);

/* 80C9E8D4-80C9E8DC 000028 0008+00 1/1 0/0 0/0 .rodata          l_heap_size */
SECTION_RODATA static u8 const l_heap_size[8] = {
    0x00, 0x00, 0x0B, 0x40, 0x00, 0x00, 0x2C, 0x60,
};
COMPILER_STRIP_GATE(0x80C9E8D4, &l_heap_size);

/* 80C9E8DC-80C9E8E0 000030 0004+00 1/3 0/0 0/0 .rodata          @3709 */
SECTION_RODATA static f32 const lit_3709 = 600.0f;
COMPILER_STRIP_GATE(0x80C9E8DC, &lit_3709);

/* 80C9D148-80C9D2B8 000128 0170+00 1/0 0/0 0/0 .text            Create__12daObjStair_cFv */
void daObjStair_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C9E90C-80C9E90C 000060 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C9E90C = "K_mvkai00";
SECTION_DEAD static char const* const stringBase_80C9E916 = "Lv9_mvkai";
#pragma pop

/* 80C9E920-80C9E92C 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C9E92C-80C9E940 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80C9E940-80C9E948 -00001 0008+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName[2] = {
    (void*)&d_a_obj_mvstair__stringBase0,
    (void*)(((char*)&d_a_obj_mvstair__stringBase0) + 0xA),
};

/* 80C9D2B8-80C9D338 000298 0080+00 1/0 0/0 0/0 .text            CreateHeap__12daObjStair_cFv */
void daObjStair_c::CreateHeap() {
    // NONMATCHING
}

/* 80C9D338-80C9D41C 000318 00E4+00 1/1 0/0 0/0 .text            create1st__12daObjStair_cFv */
void daObjStair_c::create1st() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C9E948-80C9E954 -00001 000C+00 0/1 0/0 0/0 .data            @3754 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3754[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWait__12daObjStair_cFv,
};
#pragma pop

/* 80C9E954-80C9E960 -00001 000C+00 0/1 0/0 0/0 .data            @3755 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3755[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOrderEvent__12daObjStair_cFv,
};
#pragma pop

/* 80C9E960-80C9E96C -00001 000C+00 0/1 0/0 0/0 .data            @3756 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3756[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionEvent__12daObjStair_cFv,
};
#pragma pop

/* 80C9E96C-80C9E978 -00001 000C+00 0/1 0/0 0/0 .data            @3757 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3757[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionEnd__12daObjStair_cFv,
};
#pragma pop

/* 80C9E978-80C9E9A8 000058 0030+00 0/1 0/0 0/0 .data            l_func$3753 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func_3753[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C9D41C-80C9D4D8 0003FC 00BC+00 1/1 0/0 0/0 .text            event_proc_call__12daObjStair_cFv
 */
void daObjStair_c::event_proc_call() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C9E9A8-80C9E9B4 -00001 000C+00 0/1 0/0 0/0 .data            @3765 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3765[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWaitUpper__12daObjStair_cFv,
};
#pragma pop

/* 80C9E9B4-80C9E9C0 -00001 000C+00 0/1 0/0 0/0 .data            @3766 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3766[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeUpper__12daObjStair_cFv,
};
#pragma pop

/* 80C9E9C0-80C9E9CC -00001 000C+00 0/1 0/0 0/0 .data            @3767 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3767[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWaitLower__12daObjStair_cFv,
};
#pragma pop

/* 80C9E9CC-80C9E9D8 -00001 000C+00 0/1 0/0 0/0 .data            @3768 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3768[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeLower__12daObjStair_cFv,
};
#pragma pop

/* 80C9E9D8-80C9EA08 0000B8 0030+00 0/1 0/0 0/0 .data            l_func$3764 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func_3764[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C9D4D8-80C9D594 0004B8 00BC+00 1/1 0/0 0/0 .text            mode_proc_call__12daObjStair_cFv */
void daObjStair_c::mode_proc_call() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C9E8E0-80C9E8E4 000034 0004+00 2/5 0/0 0/0 .rodata          @3802 */
SECTION_RODATA static u8 const lit_3802[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C9E8E0, &lit_3802);

/* 80C9E8E4-80C9E8E8 000038 0004+00 0/1 0/0 0/0 .rodata          @3803 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3803 = -140.0f;
COMPILER_STRIP_GATE(0x80C9E8E4, &lit_3803);
#pragma pop

/* 80C9E8E8-80C9E8EC 00003C 0004+00 0/1 0/0 0/0 .rodata          @3804 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3804 = 140.0f;
COMPILER_STRIP_GATE(0x80C9E8E8, &lit_3804);
#pragma pop

/* 80C9E8EC-80C9E8F0 000040 0004+00 0/1 0/0 0/0 .rodata          @3805 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3805 = -450.0f;
COMPILER_STRIP_GATE(0x80C9E8EC, &lit_3805);
#pragma pop

/* 80C9E8F0-80C9E8F4 000044 0004+00 0/1 0/0 0/0 .rodata          @3806 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3806 = 450.0f;
COMPILER_STRIP_GATE(0x80C9E8F0, &lit_3806);
#pragma pop

/* 80C9D594-80C9D710 000574 017C+00 1/0 0/0 0/0 .text            Execute__12daObjStair_cFPPA3_A4_f
 */
void daObjStair_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80C9D710-80C9D7B4 0006F0 00A4+00 1/0 0/0 0/0 .text            Draw__12daObjStair_cFv */
void daObjStair_c::Draw() {
    // NONMATCHING
}

/* 80C9D7B4-80C9D82C 000794 0078+00 1/0 0/0 0/0 .text            Delete__12daObjStair_cFv */
void daObjStair_c::Delete() {
    // NONMATCHING
}

/* 80C9D82C-80C9D8EC 00080C 00C0+00 1/0 0/0 0/0 .text            actionWait__12daObjStair_cFv */
void daObjStair_c::actionWait() {
    // NONMATCHING
}

/* 80C9D8EC-80C9D95C 0008CC 0070+00 1/0 0/0 0/0 .text            actionOrderEvent__12daObjStair_cFv
 */
void daObjStair_c::actionOrderEvent() {
    // NONMATCHING
}

/* 80C9D95C-80C9D9BC 00093C 0060+00 1/0 0/0 0/0 .text            actionEvent__12daObjStair_cFv */
void daObjStair_c::actionEvent() {
    // NONMATCHING
}

/* 80C9D9BC-80C9D9C4 00099C 0008+00 1/0 0/0 0/0 .text            actionEnd__12daObjStair_cFv */
bool daObjStair_c::actionEnd() {
    return true;
}

/* 80C9D9C4-80C9D9F4 0009A4 0030+00 2/2 0/0 0/0 .text            modeWaitUpperInit__12daObjStair_cFv
 */
void daObjStair_c::modeWaitUpperInit() {
    // NONMATCHING
}

/* 80C9D9F4-80C9DA98 0009D4 00A4+00 1/0 0/0 0/0 .text            modeWaitUpper__12daObjStair_cFv */
void daObjStair_c::modeWaitUpper() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C9E8F4-80C9E8F8 000048 0004+00 1/2 0/0 0/0 .rodata          @3946 */
SECTION_RODATA static f32 const lit_3946 = 3.0f;
COMPILER_STRIP_GATE(0x80C9E8F4, &lit_3946);

/* 80C9DA98-80C9DADC 000A78 0044+00 1/1 0/0 0/0 .text            modeUpperInit__12daObjStair_cFv */
void daObjStair_c::modeUpperInit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C9E8F8-80C9E8FC 00004C 0004+00 1/3 0/0 0/0 .rodata          @4061 */
SECTION_RODATA static f32 const lit_4061 = 1.0f;
COMPILER_STRIP_GATE(0x80C9E8F8, &lit_4061);

/* 80C9E8FC-80C9E900 000050 0004+00 0/2 0/0 0/0 .rodata          @4062 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4062 = -1.0f;
COMPILER_STRIP_GATE(0x80C9E8FC, &lit_4062);
#pragma pop

/* 80C9E900-80C9E904 000054 0004+00 0/2 0/0 0/0 .rodata          @4063 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4063 = 9.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C9E900, &lit_4063);
#pragma pop

/* 80C9E904-80C9E908 000058 0004+00 0/2 0/0 0/0 .rodata          @4064 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4064 = 0.5f;
COMPILER_STRIP_GATE(0x80C9E904, &lit_4064);
#pragma pop

/* 80C9E908-80C9E90C 00005C 0004+00 0/2 0/0 0/0 .rodata          @4065 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4065 = 50.0f;
COMPILER_STRIP_GATE(0x80C9E908, &lit_4065);
#pragma pop

/* 80C9DADC-80C9DEDC 000ABC 0400+00 1/0 0/0 0/0 .text            modeUpper__12daObjStair_cFv */
void daObjStair_c::modeUpper() {
    // NONMATCHING
}

/* 80C9DEDC-80C9DF18 000EBC 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80C9DF18-80C9DF60 000EF8 0048+00 2/2 0/0 0/0 .text            modeWaitLowerInit__12daObjStair_cFv
 */
void daObjStair_c::modeWaitLowerInit() {
    // NONMATCHING
}

/* 80C9DF60-80C9E004 000F40 00A4+00 1/0 0/0 0/0 .text            modeWaitLower__12daObjStair_cFv */
void daObjStair_c::modeWaitLower() {
    // NONMATCHING
}

/* 80C9E004-80C9E034 000FE4 0030+00 1/1 0/0 0/0 .text            modeLowerInit__12daObjStair_cFv */
void daObjStair_c::modeLowerInit() {
    // NONMATCHING
}

/* 80C9E034-80C9E3D8 001014 03A4+00 1/0 0/0 0/0 .text            modeLower__12daObjStair_cFv */
void daObjStair_c::modeLower() {
    // NONMATCHING
}

/* 80C9E3D8-80C9E5A0 0013B8 01C8+00 1/1 0/0 0/0 .text            setParticle__12daObjStair_cFv */
void daObjStair_c::setParticle() {
    // NONMATCHING
}

/* 80C9E5A0-80C9E614 001580 0074+00 2/2 0/0 0/0 .text            removeParticle__12daObjStair_cFv */
void daObjStair_c::removeParticle() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C9EA08-80C9EA28 -00001 0020+00 1/0 0/0 0/0 .data            daObjStair_METHODS */
static actor_method_class daObjStair_METHODS = {
    (process_method_func)daObjStair_create1st__FP12daObjStair_c,
    (process_method_func)daObjStair_MoveBGDelete__FP12daObjStair_c,
    (process_method_func)daObjStair_MoveBGExecute__FP12daObjStair_c,
    0,
    (process_method_func)daObjStair_MoveBGDraw__FP12daObjStair_c,
};

/* 80C9EA28-80C9EA58 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_MvStair */
extern actor_process_profile_definition g_profile_Obj_MvStair = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_MvStair,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjStair_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  25,                     // mPriority
  &daObjStair_METHODS,    // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C9EA58-80C9EA7C 000138 0024+00 2/2 0/0 0/0 .data            __vt__18dPa_levelEcallBack */
SECTION_DATA extern void* __vt__18dPa_levelEcallBack[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18dPa_levelEcallBackFv,
    (void*)execute__18JPAEmitterCallBackFP14JPABaseEmitter,
    (void*)executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter,
    (void*)draw__18JPAEmitterCallBackFP14JPABaseEmitter,
    (void*)drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter,
    (void*)NULL,
    (void*)cleanup__18dPa_levelEcallBackFv,
};

/* 80C9EA7C-80C9EAA4 00015C 0028+00 1/1 0/0 0/0 .data            __vt__12daObjStair_c */
SECTION_DATA extern void* __vt__12daObjStair_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__12daObjStair_cFv,
    (void*)Create__12daObjStair_cFv,
    (void*)Execute__12daObjStair_cFPPA3_A4_f,
    (void*)Draw__12daObjStair_cFv,
    (void*)Delete__12daObjStair_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C9E614-80C9E700 0015F4 00EC+00 1/0 0/0 0/0 .text daObjStair_create1st__FP12daObjStair_c */
static void daObjStair_create1st(daObjStair_c* param_0) {
    // NONMATCHING
}

/* 80C9E700-80C9E704 0016E0 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80C9E704-80C9E788 0016E4 0084+00 1/1 0/0 0/0 .text            __dt__19dPa_followEcallBackFv */
// dPa_followEcallBack::~dPa_followEcallBack() {
extern "C" void __dt__19dPa_followEcallBackFv() {
    // NONMATCHING
}

/* 80C9E788-80C9E78C 001768 0004+00 1/0 0/0 0/0 .text            cleanup__18dPa_levelEcallBackFv */
// void dPa_levelEcallBack::cleanup() {
extern "C" void cleanup__18dPa_levelEcallBackFv() {
    /* empty function */
}

/* 80C9E78C-80C9E7B4 00176C 0028+00 1/1 0/0 0/0 .text            __defctor__19dPa_followEcallBackFv
 */
// void dPa_followEcallBack::__defctor() {
extern "C" void __defctor__19dPa_followEcallBackFv() {
    // NONMATCHING
}

/* 80C9E7B4-80C9E7D4 001794 0020+00 1/0 0/0 0/0 .text daObjStair_MoveBGDelete__FP12daObjStair_c */
static void daObjStair_MoveBGDelete(daObjStair_c* param_0) {
    // NONMATCHING
}

/* 80C9E7D4-80C9E7F4 0017B4 0020+00 1/0 0/0 0/0 .text daObjStair_MoveBGExecute__FP12daObjStair_c
 */
static void daObjStair_MoveBGExecute(daObjStair_c* param_0) {
    // NONMATCHING
}

/* 80C9E7F4-80C9E820 0017D4 002C+00 1/0 0/0 0/0 .text daObjStair_MoveBGDraw__FP12daObjStair_c */
static void daObjStair_MoveBGDraw(daObjStair_c* param_0) {
    // NONMATCHING
}

/* 80C9E820-80C9E894 001800 0074+00 1/0 0/0 0/0 .text            __dt__18dPa_levelEcallBackFv */
// dPa_levelEcallBack::~dPa_levelEcallBack() {
extern "C" void __dt__18dPa_levelEcallBackFv() {
    // NONMATCHING
}

/* 80C9E894-80C9E898 001874 0004+00 1/0 0/0 0/0 .text
 * execute__18JPAEmitterCallBackFP14JPABaseEmitter              */
// void JPAEmitterCallBack::execute(JPABaseEmitter* param_0) {
extern "C" void execute__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80C9E898-80C9E89C 001878 0004+00 1/0 0/0 0/0 .text
 * executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter         */
// void JPAEmitterCallBack::executeAfter(JPABaseEmitter* param_0) {
extern "C" void executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80C9E89C-80C9E8A0 00187C 0004+00 1/0 0/0 0/0 .text draw__18JPAEmitterCallBackFP14JPABaseEmitter
 */
// void JPAEmitterCallBack::draw(JPABaseEmitter* param_0) {
extern "C" void draw__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80C9E8A0-80C9E8A4 001880 0004+00 1/0 0/0 0/0 .text
 * drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter            */
// void JPAEmitterCallBack::drawAfter(JPABaseEmitter* param_0) {
extern "C" void drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80C9E90C-80C9E90C 000060 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
