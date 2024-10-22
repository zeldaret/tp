/**
 * @file d_a_obj_poFire.cpp
 * 
*/

#include "d/actor/d_a_obj_poFire.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void __ct__14daPoFire_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__10daPoFire_cFv();
extern "C" void create__10daPoFire_cFv();
extern "C" void Execute__10daPoFire_cFv();
extern "C" void procMain__10daPoFire_cFv();
extern "C" void setFire__10daPoFire_cFv();
extern "C" void searchCandle__10daPoFire_cFPvPv();
extern "C" void searchFireTag__10daPoFire_cFPvPv();
extern "C" void init_modeInitMove__10daPoFire_cFv();
extern "C" void modeInitMove__10daPoFire_cFv();
extern "C" void modeWait__10daPoFire_cFv();
extern "C" void init_modeWaitSetEffect__10daPoFire_cFv();
extern "C" void modeWaitSetEffect__10daPoFire_cFv();
extern "C" void init_modeMoveOut__10daPoFire_cFv();
extern "C" void modeMoveOut__10daPoFire_cFv();
extern "C" void init_modeMove__10daPoFire_cFv();
extern "C" void modeMove__10daPoFire_cFv();
extern "C" void init_modeMoveWait__10daPoFire_cFv();
extern "C" void modeMoveWait__10daPoFire_cFv();
extern "C" void modeNoMove__10daPoFire_cFv();
extern "C" void init_modeOnFire__10daPoFire_cFv();
extern "C" void modeOnFire__10daPoFire_cFv();
extern "C" void init_modeFireEnd__10daPoFire_cFv();
extern "C" void modeFireEnd__10daPoFire_cFv();
extern "C" void eventStart__10daPoFire_cFv();
extern "C" void eventRun__10daPoFire_cFv();
extern "C" bool eventEnd__10daPoFire_cFv();
extern "C" bool Draw__10daPoFire_cFv();
extern "C" void Delete__10daPoFire_cFv();
extern "C" static void daPoFire_Draw__FP10daPoFire_c();
extern "C" static void daPoFire_Execute__FP10daPoFire_c();
extern "C" static void daPoFire_Delete__FP10daPoFire_c();
extern "C" static void daPoFire_Create__FP10fopAc_ac_c();
extern "C" void __dt__14daPoFire_HIO_cFv();
extern "C" void __sinit_d_a_obj_poFire_cpp();
extern "C" static void func_80CB3DBC();
extern "C" static void func_80CB3DC4();
extern "C" static void func_80CB3DCC();
extern "C" static void func_80CB3DD4();
extern "C" void __dt__17dEvLib_callback_cFv();
extern "C" bool eventStart__17dEvLib_callback_cFv();
extern "C" bool eventRun__17dEvLib_callback_cFv();
extern "C" bool eventEnd__17dEvLib_callback_cFv();
extern "C" void getFirePos__12daPoCandle_cFv();
extern "C" void __dt__10daPoFire_cFv();
extern "C" extern char const* const d_a_obj_poFire__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_setRoomLayer__FPvi();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void offFirstBit__21dSv_player_get_item_cFUc();
extern "C" void setPtT__14dEvt_control_cFPv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void eventUpdate__17dEvLib_callback_cFv();
extern "C" void orderEvent__17dEvLib_callback_cFiii();
extern "C" void forceOnEventMove__Q213dPa_control_c7level_cFUl();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void request__11dAttCatch_cFP10fopAc_ac_cUcfffsi();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcPos__FP4cXyzRC4cXyzfff();
extern "C" void deleteAllParticle__14JPABaseEmitterFv();
extern "C" void func_802807E0();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mParticleTracePCB__13dPa_control_c[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80CB3EEC-80CB3EF0 000000 0004+00 9/9 0/0 0/0 .rodata          @3662 */
SECTION_RODATA static f32 const lit_3662 = 1.0f;
COMPILER_STRIP_GATE(0x80CB3EEC, &lit_3662);

/* 80CB3EF0-80CB3EF4 000004 0004+00 0/1 0/0 0/0 .rodata          @3663 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3663 = 10.0f;
COMPILER_STRIP_GATE(0x80CB3EF0, &lit_3663);
#pragma pop

/* 80CB3EF4-80CB3EF8 000008 0004+00 0/1 0/0 0/0 .rodata          @3664 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3664 = 5.0f;
COMPILER_STRIP_GATE(0x80CB3EF4, &lit_3664);
#pragma pop

/* 80CB3EF8-80CB3EFC 00000C 0004+00 0/3 0/0 0/0 .rodata          @3665 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3665 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CB3EF8, &lit_3665);
#pragma pop

/* 80CB3EFC-80CB3F00 000010 0004+00 0/1 0/0 0/0 .rodata          @3666 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3666 = 6.0f;
COMPILER_STRIP_GATE(0x80CB3EFC, &lit_3666);
#pragma pop

/* 80CB3F00-80CB3F04 000014 0004+00 0/1 0/0 0/0 .rodata          @3667 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3667 = 40.0f;
COMPILER_STRIP_GATE(0x80CB3F00, &lit_3667);
#pragma pop

/* 80CB3F04-80CB3F08 000018 0004+00 0/1 0/0 0/0 .rodata          @3668 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3668 = 150.0f;
COMPILER_STRIP_GATE(0x80CB3F04, &lit_3668);
#pragma pop

/* 80CB3F3C-80CB3F3C 000050 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CB3F3C = "poFire";
SECTION_DEAD static char const* const stringBase_80CB3F43 = "pofire";
SECTION_DEAD static char const* const stringBase_80CB3F4A = "MOVE_END";
#pragma pop

/* 80CB3F54-80CB3F60 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CB3F60-80CB3F74 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80CB3F74-80CB3F80 -00001 000C+00 0/1 0/0 0/0 .data            @3740 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3740[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeInitMove__10daPoFire_cFv,
};
#pragma pop

/* 80CB3F80-80CB3F8C -00001 000C+00 0/1 0/0 0/0 .data            @3741 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3741[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__10daPoFire_cFv,
};
#pragma pop

/* 80CB3F8C-80CB3F98 -00001 000C+00 0/1 0/0 0/0 .data            @3742 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3742[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWaitSetEffect__10daPoFire_cFv,
};
#pragma pop

/* 80CB3F98-80CB3FA4 -00001 000C+00 0/1 0/0 0/0 .data            @3743 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3743[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMoveOut__10daPoFire_cFv,
};
#pragma pop

/* 80CB3FA4-80CB3FB0 -00001 000C+00 0/1 0/0 0/0 .data            @3744 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3744[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMove__10daPoFire_cFv,
};
#pragma pop

/* 80CB3FB0-80CB3FBC -00001 000C+00 0/1 0/0 0/0 .data            @3745 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3745[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeNoMove__10daPoFire_cFv,
};
#pragma pop

/* 80CB3FBC-80CB3FC8 -00001 000C+00 0/1 0/0 0/0 .data            @3746 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3746[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMoveWait__10daPoFire_cFv,
};
#pragma pop

/* 80CB3FC8-80CB3FD4 -00001 000C+00 0/1 0/0 0/0 .data            @3747 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3747[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeOnFire__10daPoFire_cFv,
};
#pragma pop

/* 80CB3FD4-80CB3FE0 -00001 000C+00 0/1 0/0 0/0 .data            @3748 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3748[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeFireEnd__10daPoFire_cFv,
};
#pragma pop

/* 80CB3FE0-80CB404C 00008C 006C+00 0/1 0/0 0/0 .data            mode_proc$3739 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[108] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80CB404C-80CB4050 -00001 0004+00 1/1 0/0 0/0 .data            action_table$4176 */
SECTION_DATA static void* action_table = (void*)(((char*)&d_a_obj_poFire__stringBase0) + 0xE);

/* 80CB4050-80CB4070 -00001 0020+00 1/0 0/0 0/0 .data            l_daPoFire_Method */
static actor_method_class l_daPoFire_Method = {
    (process_method_func)daPoFire_Create__FP10fopAc_ac_c,
    (process_method_func)daPoFire_Delete__FP10daPoFire_c,
    (process_method_func)daPoFire_Execute__FP10daPoFire_c,
    0,
    (process_method_func)daPoFire_Draw__FP10daPoFire_c,
};

/* 80CB4070-80CB40A0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_poFire */
extern actor_process_profile_definition g_profile_Obj_poFire = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Tag_Lv4Candle,     // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daPoFire_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  540,                    // mPriority
  &l_daPoFire_Method,     // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CB40A0-80CB40D0 00014C 0030+00 2/2 0/0 0/0 .data            __vt__10daPoFire_c */
SECTION_DATA extern void* __vt__10daPoFire_c[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CB3DD4,
    (void*)func_80CB3DCC,
    (void*)func_80CB3DC4,
    (void*)func_80CB3DBC,
    (void*)__dt__10daPoFire_cFv,
    (void*)eventStart__10daPoFire_cFv,
    (void*)eventRun__10daPoFire_cFv,
    (void*)eventEnd__10daPoFire_cFv,
};

/* 80CB40D0-80CB40E8 00017C 0018+00 3/3 0/0 0/0 .data            __vt__17dEvLib_callback_c */
SECTION_DATA extern void* __vt__17dEvLib_callback_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17dEvLib_callback_cFv,
    (void*)eventStart__17dEvLib_callback_cFv,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
};

/* 80CB40E8-80CB40F4 000194 000C+00 2/2 0/0 0/0 .data            __vt__14daPoFire_HIO_c */
SECTION_DATA extern void* __vt__14daPoFire_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daPoFire_HIO_cFv,
};

/* 80CB40F4-80CB4100 0001A0 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80CB294C-80CB29C4 0000EC 0078+00 1/1 0/0 0/0 .text            __ct__14daPoFire_HIO_cFv */
daPoFire_HIO_c::daPoFire_HIO_c() {
    // NONMATCHING
}

/* 80CB29C4-80CB2A0C 000164 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80CB2A0C-80CB2A74 0001AC 0068+00 2/2 0/0 0/0 .text            setBaseMtx__10daPoFire_cFv */
void daPoFire_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB3F08-80CB3F0C 00001C 0004+00 1/2 0/0 0/0 .rodata          itemNo */
SECTION_RODATA static u32 const itemNo = 0xEFF0F1F2;
COMPILER_STRIP_GATE(0x80CB3F08, &itemNo);

/* 80CB3F0C-80CB3F10 000020 0004+00 4/9 0/0 0/0 .rodata          @3726 */
SECTION_RODATA static u8 const lit_3726[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CB3F0C, &lit_3726);

/* 80CB2A74-80CB2BB8 000214 0144+00 1/1 0/0 0/0 .text            create__10daPoFire_cFv */
void daPoFire_c::create() {
    // NONMATCHING
}

/* 80CB2BB8-80CB2BFC 000358 0044+00 1/1 0/0 0/0 .text            Execute__10daPoFire_cFv */
void daPoFire_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB3F10-80CB3F14 000024 0004+00 1/1 0/0 0/0 .rodata          @3756 */
SECTION_RODATA static f32 const lit_3756 = 20.0f;
COMPILER_STRIP_GATE(0x80CB3F10, &lit_3756);

/* 80CB4108-80CB4114 000008 000C+00 1/1 0/0 0/0 .bss             @3656 */
static u8 lit_3656[12];

/* 80CB4114-80CB4148 000014 0034+00 5/5 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[52];

/* 80CB4148-80CB414C 000048 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80CB4148[4];

/* 80CB2BFC-80CB2D84 00039C 0188+00 1/1 0/0 0/0 .text            procMain__10daPoFire_cFv */
void daPoFire_c::procMain() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB3F14-80CB3F18 000028 0004+00 0/5 0/0 0/0 .rodata          @3821 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3821 = 0.5f;
COMPILER_STRIP_GATE(0x80CB3F14, &lit_3821);
#pragma pop

/* 80CB2D84-80CB2F68 000524 01E4+00 1/1 0/0 0/0 .text            setFire__10daPoFire_cFv */
void daPoFire_c::setFire() {
    // NONMATCHING
}

/* 80CB2F68-80CB2FD4 000708 006C+00 1/1 0/0 0/0 .text            searchCandle__10daPoFire_cFPvPv */
void daPoFire_c::searchCandle(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80CB2FD4-80CB3024 000774 0050+00 1/1 0/0 0/0 .text            searchFireTag__10daPoFire_cFPvPv */
void daPoFire_c::searchFireTag(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80CB3024-80CB30FC 0007C4 00D8+00 1/1 0/0 0/0 .text            init_modeInitMove__10daPoFire_cFv
 */
void daPoFire_c::init_modeInitMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB3F18-80CB3F1C 00002C 0004+00 0/2 0/0 0/0 .rodata          @3883 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3883 = 70.0f;
COMPILER_STRIP_GATE(0x80CB3F18, &lit_3883);
#pragma pop

/* 80CB3F1C-80CB3F20 000030 0004+00 0/2 0/0 0/0 .rodata          @3884 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3884 = 2.0f;
COMPILER_STRIP_GATE(0x80CB3F1C, &lit_3884);
#pragma pop

/* 80CB30FC-80CB31FC 00089C 0100+00 1/0 0/0 0/0 .text            modeInitMove__10daPoFire_cFv */
void daPoFire_c::modeInitMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB3F20-80CB3F24 000034 0004+00 0/0 0/0 0/0 .rodata          @3889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3889 = -1.0f;
COMPILER_STRIP_GATE(0x80CB3F20, &lit_3889);
#pragma pop

/* 80CB3F24-80CB3F28 000038 0004+00 0/1 0/0 0/0 .rodata          @3915 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3915 = -70.0f;
COMPILER_STRIP_GATE(0x80CB3F24, &lit_3915);
#pragma pop

/* 80CB3F28-80CB3F2C 00003C 0004+00 0/3 0/0 0/0 .rodata          @3916 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3916 = 0x43360B61;
COMPILER_STRIP_GATE(0x80CB3F28, &lit_3916);
#pragma pop

/* 80CB31FC-80CB32EC 00099C 00F0+00 1/0 0/0 0/0 .text            modeWait__10daPoFire_cFv */
void daPoFire_c::modeWait() {
    // NONMATCHING
}

/* 80CB32EC-80CB3380 000A8C 0094+00 1/1 0/0 0/0 .text init_modeWaitSetEffect__10daPoFire_cFv */
void daPoFire_c::init_modeWaitSetEffect() {
    // NONMATCHING
}

/* 80CB3380-80CB3540 000B20 01C0+00 1/0 0/0 0/0 .text            modeWaitSetEffect__10daPoFire_cFv
 */
void daPoFire_c::modeWaitSetEffect() {
    // NONMATCHING
}

/* 80CB3540-80CB355C 000CE0 001C+00 1/1 0/0 0/0 .text            init_modeMoveOut__10daPoFire_cFv */
void daPoFire_c::init_modeMoveOut() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB3F2C-80CB3F30 000040 0004+00 0/2 0/0 0/0 .rodata          @4039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4039 = 100.0f;
COMPILER_STRIP_GATE(0x80CB3F2C, &lit_4039);
#pragma pop

/* 80CB3F30-80CB3F34 000044 0004+00 0/2 0/0 0/0 .rodata          @4040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4040 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80CB3F30, &lit_4040);
#pragma pop

/* 80CB355C-80CB3714 000CFC 01B8+00 1/0 0/0 0/0 .text            modeMoveOut__10daPoFire_cFv */
void daPoFire_c::modeMoveOut() {
    // NONMATCHING
}

/* 80CB3714-80CB3730 000EB4 001C+00 2/2 0/0 0/0 .text            init_modeMove__10daPoFire_cFv */
void daPoFire_c::init_modeMove() {
    // NONMATCHING
}

/* 80CB3730-80CB38EC 000ED0 01BC+00 1/0 0/0 0/0 .text            modeMove__10daPoFire_cFv */
void daPoFire_c::modeMove() {
    // NONMATCHING
}

/* 80CB38EC-80CB3918 00108C 002C+00 1/1 0/0 0/0 .text            init_modeMoveWait__10daPoFire_cFv
 */
void daPoFire_c::init_modeMoveWait() {
    // NONMATCHING
}

/* 80CB3918-80CB3958 0010B8 0040+00 1/0 0/0 0/0 .text            modeMoveWait__10daPoFire_cFv */
void daPoFire_c::modeMoveWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB3F34-80CB3F38 000048 0004+00 0/1 0/0 0/0 .rodata          @4107 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4107 = 300.0f;
COMPILER_STRIP_GATE(0x80CB3F34, &lit_4107);
#pragma pop

/* 80CB3958-80CB39CC 0010F8 0074+00 1/0 0/0 0/0 .text            modeNoMove__10daPoFire_cFv */
void daPoFire_c::modeNoMove() {
    // NONMATCHING
}

/* 80CB39CC-80CB39E0 00116C 0014+00 1/1 0/0 0/0 .text            init_modeOnFire__10daPoFire_cFv */
void daPoFire_c::init_modeOnFire() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB3F38-80CB3F3C 00004C 0004+00 1/1 0/0 0/0 .rodata          @4134 */
SECTION_RODATA static f32 const lit_4134 = 3.5f;
COMPILER_STRIP_GATE(0x80CB3F38, &lit_4134);

/* 80CB39E0-80CB3ADC 001180 00FC+00 1/0 0/0 0/0 .text            modeOnFire__10daPoFire_cFv */
void daPoFire_c::modeOnFire() {
    // NONMATCHING
}

/* 80CB3ADC-80CB3AE8 00127C 000C+00 3/3 0/0 0/0 .text            init_modeFireEnd__10daPoFire_cFv */
void daPoFire_c::init_modeFireEnd() {
    // NONMATCHING
}

/* 80CB3AE8-80CB3B70 001288 0088+00 1/0 0/0 0/0 .text            modeFireEnd__10daPoFire_cFv */
void daPoFire_c::modeFireEnd() {
    // NONMATCHING
}

/* 80CB3B70-80CB3BE0 001310 0070+00 2/1 0/0 0/0 .text            eventStart__10daPoFire_cFv */
void daPoFire_c::eventStart() {
    // NONMATCHING
}

/* 80CB3BE0-80CB3C64 001380 0084+00 2/1 0/0 0/0 .text            eventRun__10daPoFire_cFv */
void daPoFire_c::eventRun() {
    // NONMATCHING
}

/* 80CB3C64-80CB3C6C 001404 0008+00 2/1 0/0 0/0 .text            eventEnd__10daPoFire_cFv */
bool daPoFire_c::eventEnd() {
    return true;
}

/* 80CB3C6C-80CB3C74 00140C 0008+00 1/1 0/0 0/0 .text            Draw__10daPoFire_cFv */
bool daPoFire_c::Draw() {
    return true;
}

/* 80CB3C74-80CB3CA4 001414 0030+00 1/1 0/0 0/0 .text            Delete__10daPoFire_cFv */
void daPoFire_c::Delete() {
    // NONMATCHING
}

/* 80CB3CA4-80CB3CC4 001444 0020+00 1/0 0/0 0/0 .text            daPoFire_Draw__FP10daPoFire_c */
static void daPoFire_Draw(daPoFire_c* param_0) {
    // NONMATCHING
}

/* 80CB3CC4-80CB3CE4 001464 0020+00 1/0 0/0 0/0 .text            daPoFire_Execute__FP10daPoFire_c */
static void daPoFire_Execute(daPoFire_c* param_0) {
    // NONMATCHING
}

/* 80CB3CE4-80CB3D04 001484 0020+00 1/0 0/0 0/0 .text            daPoFire_Delete__FP10daPoFire_c */
static void daPoFire_Delete(daPoFire_c* param_0) {
    // NONMATCHING
}

/* 80CB3D04-80CB3D24 0014A4 0020+00 1/0 0/0 0/0 .text            daPoFire_Create__FP10fopAc_ac_c */
static void daPoFire_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CB3D24-80CB3D80 0014C4 005C+00 2/1 0/0 0/0 .text            __dt__14daPoFire_HIO_cFv */
daPoFire_HIO_c::~daPoFire_HIO_c() {
    // NONMATCHING
}

/* 80CB3D80-80CB3DBC 001520 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_poFire_cpp */
void __sinit_d_a_obj_poFire_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80CB3D80, __sinit_d_a_obj_poFire_cpp);
#pragma pop

/* 80CB3DBC-80CB3DC4 00155C 0008+00 1/0 0/0 0/0 .text            @1392@eventEnd__10daPoFire_cFv */
static void func_80CB3DBC() {
    // NONMATCHING
}

/* 80CB3DC4-80CB3DCC 001564 0008+00 1/0 0/0 0/0 .text            @1392@eventRun__10daPoFire_cFv */
static void func_80CB3DC4() {
    // NONMATCHING
}

/* 80CB3DCC-80CB3DD4 00156C 0008+00 1/0 0/0 0/0 .text            @1392@eventStart__10daPoFire_cFv */
static void func_80CB3DCC() {
    // NONMATCHING
}

/* 80CB3DD4-80CB3DDC 001574 0008+00 1/0 0/0 0/0 .text            @1392@__dt__10daPoFire_cFv */
static void func_80CB3DD4() {
    // NONMATCHING
}

/* 80CB3DDC-80CB3E24 00157C 0048+00 1/0 0/0 0/0 .text            __dt__17dEvLib_callback_cFv */
// dEvLib_callback_c::~dEvLib_callback_c() {
extern "C" void __dt__17dEvLib_callback_cFv() {
    // NONMATCHING
}

/* 80CB3E24-80CB3E2C 0015C4 0008+00 1/0 0/0 0/0 .text            eventStart__17dEvLib_callback_cFv
 */
// bool dEvLib_callback_c::eventStart() {
extern "C" bool eventStart__17dEvLib_callback_cFv() {
    return true;
}

/* 80CB3E2C-80CB3E34 0015CC 0008+00 1/0 0/0 0/0 .text            eventRun__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventRun() {
extern "C" bool eventRun__17dEvLib_callback_cFv() {
    return true;
}

/* 80CB3E34-80CB3E3C 0015D4 0008+00 1/0 0/0 0/0 .text            eventEnd__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventEnd() {
extern "C" bool eventEnd__17dEvLib_callback_cFv() {
    return true;
}

/* 80CB3E3C-80CB3E58 0015DC 001C+00 1/1 0/0 0/0 .text            getFirePos__12daPoCandle_cFv */
void daPoCandle_c::getFirePos() {
    // NONMATCHING
}

/* 80CB3E58-80CB3ED8 0015F8 0080+00 2/1 0/0 0/0 .text            __dt__10daPoFire_cFv */
daPoFire_c::~daPoFire_c() {
    // NONMATCHING
}

/* 80CB3F3C-80CB3F3C 000050 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */