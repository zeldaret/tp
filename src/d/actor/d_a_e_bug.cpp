/**
 * @file d_a_e_bug.cpp
 * 
*/

#include "d/actor/d_a_e_bug.h"
#include "dol2asm.h"




//
// Forward References:
//

extern "C" void __ct__13daE_Bug_HIO_cFv();
extern "C" static void daE_Bug_Draw__FP11e_bug_class();
extern "C" static void simple_bg_check__FP5bug_si();
extern "C" void __dt__4cXyzFv();
extern "C" static void bug_mtxset__FP5bug_s();
extern "C" static void bug_mtxset_stick__FP5bug_s();
extern "C" static void bug_mtxset_stickW__FP5bug_s();
extern "C" static void bug_mtxset_fail__FP5bug_s();
extern "C" static void bug_ground_ang_set__FP5bug_s();
extern "C" static void bug_action__FP11e_bug_classP5bug_s();
extern "C" static void bug_stick__FP5bug_s();
extern "C" static void bug_stickW__FP5bug_s();
extern "C" static void wind_move__FP5bug_s();
extern "C" static void bug_fail__FP11e_bug_classP5bug_s();
extern "C" static void damage_check__FP11e_bug_classP5bug_s();
extern "C" static void set_wait__FP11e_bug_classP5bug_s();
extern "C" static void normal_move__FP11e_bug_classP5bug_s();
extern "C" static void bug_control__FP11e_bug_class();
extern "C" static void s_boom_sub__FPvPv();
extern "C" static void s_bomb_sub__FPvPv();
extern "C" static void daE_Bug_Execute__FP11e_bug_class();
extern "C" static bool daE_Bug_IsDelete__FP11e_bug_class();
extern "C" static void daE_Bug_Delete__FP11e_bug_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_Bug_Create__FP10fopAc_ac_c();
extern "C" void __dt__5bug_sFv();
extern "C" void __ct__5bug_sFv();
extern "C" void __dt__13daE_Bug_HIO_cFv();
extern "C" void __sinit_d_a_e_bug_cpp();
extern "C" extern char const* const d_a_e_bug__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc();
extern "C" void removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai();
extern "C" void entrySimpleModel__14dComIfG_play_cFP8J3DModeli();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void checkBoomerangCharge__9daPy_py_cFv();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __dt__14Z2SoundObjBaseFv();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void __ct__18Z2SoundObjBeeGroupFv();
extern "C" void playBeeGroupSound__18Z2SoundObjBeeGroupF10JAISoundIDUc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__16Z2SoundObjSimple[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80697CA0-80697CA4 000000 0004+00 13/13 0/0 0/0 .rodata          @3829 */
SECTION_RODATA static f32 const lit_3829 = 1.5f;
COMPILER_STRIP_GATE(0x80697CA0, &lit_3829);

/* 80697CA4-80697CA8 000004 0004+00 1/6 0/0 0/0 .rodata          @3830 */
SECTION_RODATA static f32 const lit_3830 = 1.0f;
COMPILER_STRIP_GATE(0x80697CA4, &lit_3830);

/* 80697DA8-80697DB8 000000 0010+00 1/1 0/0 0/0 .data            c_x$3877 */
SECTION_DATA static u8 c_x[16] = {
    0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80697DB8-80697DC8 000010 0010+00 1/1 0/0 0/0 .data            c_z$3878 */
SECTION_DATA static u8 c_z[16] = {
    0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00,
};

/* 80697DC8-80697DE8 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_Bug_Method */
static actor_method_class l_daE_Bug_Method = {
    (process_method_func)daE_Bug_Create__FP10fopAc_ac_c,
    (process_method_func)daE_Bug_Delete__FP11e_bug_class,
    (process_method_func)daE_Bug_Execute__FP11e_bug_class,
    (process_method_func)daE_Bug_IsDelete__FP11e_bug_class,
    (process_method_func)daE_Bug_Draw__FP11e_bug_class,
};

/* 80697DE8-80697E18 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_BUG */
extern actor_process_profile_definition g_profile_E_BUG = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_BUG,             // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(e_bug_class),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  182,                    // mPriority
  &l_daE_Bug_Method,      // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80697E18-80697E24 000070 000C+00 2/2 0/0 0/0 .data            __vt__13daE_Bug_HIO_c */
SECTION_DATA extern void* __vt__13daE_Bug_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daE_Bug_HIO_cFv,
};

/* 80694B8C-80694BBC 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__13daE_Bug_HIO_cFv */
daE_Bug_HIO_c::daE_Bug_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80697E30-80697E34 000008 0001+03 5/5 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80697E34-80697E38 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80697E38-80697E3C 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80697E3C-80697E40 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80697E40-80697E44 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80697E44-80697E48 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80697E48-80697E4C 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80697E4C-80697E50 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80697E50-80697E54 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80697E54-80697E58 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80697E58-80697E5C 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80697E5C-80697E60 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80697E60-80697E64 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80697E64-80697E68 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80697E68-80697E6C 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80697E6C-80697E70 -00001 0004+00 1/2 0/0 0/0 .bss             None */
/* 80697E6C 0001+00 data_80697E6C @1009 */
/* 80697E6D 0003+00 data_80697E6D None */
static u8 struct_80697E6C[4];

/* 80697E70-80697E7C 000048 000C+00 0/1 0/0 0/0 .bss             @3824 */
#pragma push
#pragma force_active on
static u8 lit_3824[12];
#pragma pop

/* 80697E7C-80697E8C 000054 0010+00 4/6 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[16];

/* 80697E8C-80697E90 -00001 0004+00 4/8 0/0 0/0 .bss             None */
/* 80697E8C 0001+00 data_80697E8C None */
/* 80697E8D 0003+00 data_80697E8D None */
static u8 struct_80697E8C[4];

/* 80694BBC-80694CC8 00011C 010C+00 1/0 0/0 0/0 .text            daE_Bug_Draw__FP11e_bug_class */
static void daE_Bug_Draw(e_bug_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80697CA8-80697CB0 000008 0004+04 3/12 0/0 0/0 .rodata          @3945 */
SECTION_RODATA static u8 const lit_3945[4 + 4 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80697CA8, &lit_3945);

/* 80697CB0-80697CB8 000010 0008+00 0/5 0/0 0/0 .rodata          @3946 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3946[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80697CB0, &lit_3946);
#pragma pop

/* 80697CB8-80697CC0 000018 0008+00 0/5 0/0 0/0 .rodata          @3947 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3947[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80697CB8, &lit_3947);
#pragma pop

/* 80697CC0-80697CC8 000020 0008+00 0/5 0/0 0/0 .rodata          @3948 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3948[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80697CC0, &lit_3948);
#pragma pop

/* 80697CC8-80697CCC 000028 0004+00 0/6 0/0 0/0 .rodata          @3949 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3949 = 5.0f;
COMPILER_STRIP_GATE(0x80697CC8, &lit_3949);
#pragma pop

/* 80697CCC-80697CD0 00002C 0004+00 0/5 0/0 0/0 .rodata          @3950 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3950 = 20.0f;
COMPILER_STRIP_GATE(0x80697CCC, &lit_3950);
#pragma pop

/* 80694CC8-80694F58 000228 0290+00 3/3 0/0 0/0 .text            simple_bg_check__FP5bug_si */
static void simple_bg_check(bug_s* param_0, int param_1) {
    // NONMATCHING
}

/* 80694F58-80694F94 0004B8 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80694F94-8069506C 0004F4 00D8+00 1/1 0/0 0/0 .text            bug_mtxset__FP5bug_s */
static void bug_mtxset(bug_s* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80697CD0-80697CD4 000030 0004+00 2/4 0/0 0/0 .rodata          @4019 */
SECTION_RODATA static f32 const lit_4019 = 2.0f;
COMPILER_STRIP_GATE(0x80697CD0, &lit_4019);

/* 8069506C-806951C8 0005CC 015C+00 1/1 0/0 0/0 .text            bug_mtxset_stick__FP5bug_s */
static void bug_mtxset_stick(bug_s* param_0) {
    // NONMATCHING
}

/* 806951C8-806953E4 000728 021C+00 1/1 0/0 0/0 .text            bug_mtxset_stickW__FP5bug_s */
static void bug_mtxset_stickW(bug_s* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80697CD4-80697CD8 000034 0004+00 1/1 0/0 0/0 .rodata          @4108 */
SECTION_RODATA static f32 const lit_4108 = -4.0f;
COMPILER_STRIP_GATE(0x80697CD4, &lit_4108);

/* 806953E4-806954D4 000944 00F0+00 1/1 0/0 0/0 .text            bug_mtxset_fail__FP5bug_s */
static void bug_mtxset_fail(bug_s* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80697CD8-80697CDC 000038 0004+00 0/4 0/0 0/0 .rodata          @4205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4205 = 30.0f;
COMPILER_STRIP_GATE(0x80697CD8, &lit_4205);
#pragma pop

/* 80697CDC-80697CE0 00003C 0004+00 0/1 0/0 0/0 .rodata          @4206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4206 = -30.0f;
COMPILER_STRIP_GATE(0x80697CDC, &lit_4206);
#pragma pop

/* 80697CE0-80697CE4 000040 0004+00 0/1 0/0 0/0 .rodata          @4207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4207 = -10.0f;
COMPILER_STRIP_GATE(0x80697CE0, &lit_4207);
#pragma pop

/* 806954D4-806957DC 000A34 0308+00 1/1 0/0 0/0 .text            bug_ground_ang_set__FP5bug_s */
static void bug_ground_ang_set(bug_s* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80697CE4-80697CE8 000044 0004+00 0/3 0/0 0/0 .rodata          @4230 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4230 = 3.0f;
COMPILER_STRIP_GATE(0x80697CE4, &lit_4230);
#pragma pop

/* 80697CE8-80697CEC 000048 0004+00 0/1 0/0 0/0 .rodata          @4231 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4231 = -60.0f;
COMPILER_STRIP_GATE(0x80697CE8, &lit_4231);
#pragma pop

/* 80697CEC-80697CF0 00004C 0004+00 0/2 0/0 0/0 .rodata          @4232 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4232 = 70.0f;
COMPILER_STRIP_GATE(0x80697CEC, &lit_4232);
#pragma pop

/* 80697CF0-80697CF4 000050 0004+00 0/4 0/0 0/0 .rodata          @4233 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4233 = 0.5f;
COMPILER_STRIP_GATE(0x80697CF0, &lit_4233);
#pragma pop

/* 806957DC-806958E8 000D3C 010C+00 2/2 0/0 0/0 .text            bug_action__FP11e_bug_classP5bug_s
 */
static void bug_action(e_bug_class* param_0, bug_s* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80697CF4-80697CF8 000054 0004+00 0/3 0/0 0/0 .rodata          @4309 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4309 = 1000.0f;
COMPILER_STRIP_GATE(0x80697CF4, &lit_4309);
#pragma pop

/* 80697CF8-80697CFC 000058 0004+00 0/3 0/0 0/0 .rodata          @4310 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4310 = 600.0f;
COMPILER_STRIP_GATE(0x80697CF8, &lit_4310);
#pragma pop

/* 80697CFC-80697D00 00005C 0004+00 0/5 0/0 0/0 .rodata          @4311 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4311 = 200.0f;
COMPILER_STRIP_GATE(0x80697CFC, &lit_4311);
#pragma pop

/* 80697D00-80697D04 000060 0004+00 0/2 0/0 0/0 .rodata          @4312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4312 = 40.0f;
COMPILER_STRIP_GATE(0x80697D00, &lit_4312);
#pragma pop

/* 80697D04-80697D08 000064 0004+00 0/2 0/0 0/0 .rodata          @4313 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4313 = 13.0f;
COMPILER_STRIP_GATE(0x80697D04, &lit_4313);
#pragma pop

/* 80697D08-80697D0C 000068 0004+00 0/1 0/0 0/0 .rodata          @4314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4314 = 7.0f;
COMPILER_STRIP_GATE(0x80697D08, &lit_4314);
#pragma pop

/* 80697D0C-80697D10 00006C 0004+00 0/1 0/0 0/0 .rodata          @4315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4315 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80697D0C, &lit_4315);
#pragma pop

/* 80697D10-80697D14 000070 0004+00 0/2 0/0 0/0 .rodata          @4316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4316 = 9.0f;
COMPILER_STRIP_GATE(0x80697D10, &lit_4316);
#pragma pop

/* 80697E90-80697E9C 000068 000C+00 0/1 0/0 0/0 .bss             @3831 */
#pragma push
#pragma force_active on
static u8 lit_3831[12];
#pragma pop

/* 80697E9C-80697EA8 000074 000C+00 1/5 0/0 0/0 .bss             at_pos */
static u8 at_pos[12];

/* 80697EA8-80697EAC 000080 0004+00 0/3 0/0 0/0 .bss             at_size */
#pragma push
#pragma force_active on
static u8 at_size[4];
#pragma pop

/* 80697EAC-80697EB0 000084 0004+00 2/3 0/0 0/0 .bss             None */
static u8 data_80697EAC[4];

/* 806958E8-80695BE4 000E48 02FC+00 1/1 0/0 0/0 .text            bug_stick__FP5bug_s */
static void bug_stick(bug_s* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80697D14-80697D18 000074 0004+00 0/1 0/0 0/0 .rodata          @4358 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4358 = 41.0f;
COMPILER_STRIP_GATE(0x80697D14, &lit_4358);
#pragma pop

/* 80697D18-80697D1C 000078 0004+00 0/2 0/0 0/0 .rodata          @4359 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4359 = 10.0f;
COMPILER_STRIP_GATE(0x80697D18, &lit_4359);
#pragma pop

/* 80697D1C-80697D20 00007C 0004+00 0/1 0/0 0/0 .rodata          @4360 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4360 = -13.0f;
COMPILER_STRIP_GATE(0x80697D1C, &lit_4360);
#pragma pop

/* 80695BE4-80695DE8 001144 0204+00 1/1 0/0 0/0 .text            bug_stickW__FP5bug_s */
static void bug_stickW(bug_s* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80697D20-80697D24 000080 0004+00 0/3 0/0 0/0 .rodata          @4376 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4376 = 25.0f;
COMPILER_STRIP_GATE(0x80697D20, &lit_4376);
#pragma pop

/* 80697D24-80697D28 000084 0004+00 0/1 0/0 0/0 .rodata          @4377 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4377 = 8.0f;
COMPILER_STRIP_GATE(0x80697D24, &lit_4377);
#pragma pop

/* 80695DE8-80695ECC 001348 00E4+00 1/1 0/0 0/0 .text            wind_move__FP5bug_s */
static void wind_move(bug_s* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80697D28-80697D2C 000088 0004+00 0/3 0/0 0/0 .rodata          @4395 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4395 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80697D28, &lit_4395);
#pragma pop

/* 80697D2C-80697D30 00008C 0004+00 0/1 0/0 0/0 .rodata          @4396 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4396 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80697D2C, &lit_4396);
#pragma pop

/* 80695ECC-80695FCC 00142C 0100+00 1/1 0/0 0/0 .text            bug_fail__FP11e_bug_classP5bug_s */
static void bug_fail(e_bug_class* param_0, bug_s* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80697D30-80697D34 000090 0004+00 0/1 0/0 0/0 .rodata          @4562 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4562 = 50.0f;
COMPILER_STRIP_GATE(0x80697D30, &lit_4562);
#pragma pop

/* 80697D34-80697D38 000094 0004+00 0/3 0/0 0/0 .rodata          @4563 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4563 = 100.0f;
COMPILER_STRIP_GATE(0x80697D34, &lit_4563);
#pragma pop

/* 80697D38-80697D3C 000098 0004+00 0/1 0/0 0/0 .rodata          @4564 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4564 = -400.0f;
COMPILER_STRIP_GATE(0x80697D38, &lit_4564);
#pragma pop

/* 80697D3C-80697D40 00009C 0004+00 0/1 0/0 0/0 .rodata          @4565 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4565 = 15.0f;
COMPILER_STRIP_GATE(0x80697D3C, &lit_4565);
#pragma pop

/* 80697D40-80697D44 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4566 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4566 = 35.0f;
COMPILER_STRIP_GATE(0x80697D40, &lit_4566);
#pragma pop

/* 80697D44-80697D48 0000A4 0004+00 0/3 0/0 0/0 .rodata          @4567 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4567 = 65536.0f;
COMPILER_STRIP_GATE(0x80697D44, &lit_4567);
#pragma pop

/* 80697D48-80697D50 0000A8 0004+04 0/1 0/0 0/0 .rodata          @4568 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4568[1 + 1 /* padding */] = {
    7.0f / 20.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80697D48, &lit_4568);
#pragma pop

/* 80695FCC-806965B4 00152C 05E8+00 1/1 0/0 0/0 .text damage_check__FP11e_bug_classP5bug_s */
static void damage_check(e_bug_class* param_0, bug_s* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80697D50-80697D58 0000B0 0008+00 0/1 0/0 0/0 .rodata          @4630 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4630[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80697D50, &lit_4630);
#pragma pop

/* 806965B4-80696828 001B14 0274+00 1/1 0/0 0/0 .text            set_wait__FP11e_bug_classP5bug_s */
static void set_wait(e_bug_class* param_0, bug_s* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80697D58-80697D5C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4761 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4761 = 700.0f;
COMPILER_STRIP_GATE(0x80697D58, &lit_4761);
#pragma pop

/* 80697D5C-80697D60 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4762 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4762 = 3000.0f;
COMPILER_STRIP_GATE(0x80697D5C, &lit_4762);
#pragma pop

/* 80697D60-80697D64 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4763 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4763 = 140.0f;
COMPILER_STRIP_GATE(0x80697D60, &lit_4763);
#pragma pop

/* 80697D64-80697D68 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4764 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4764 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80697D64, &lit_4764);
#pragma pop

/* 80697D68-80697D6C 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4765 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4765 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80697D68, &lit_4765);
#pragma pop

/* 80697D6C-80697D70 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4766 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4766 = -150.0f;
COMPILER_STRIP_GATE(0x80697D6C, &lit_4766);
#pragma pop

/* 80697D70-80697D74 0000D0 0004+00 1/2 0/0 0/0 .rodata          @4767 */
SECTION_RODATA static f32 const lit_4767 = 300.0f;
COMPILER_STRIP_GATE(0x80697D70, &lit_4767);

/* 80696828-80696E84 001D88 065C+00 1/1 0/0 0/0 .text            normal_move__FP11e_bug_classP5bug_s
 */
static void normal_move(e_bug_class* param_0, bug_s* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80697D74-80697D78 0000D4 0004+00 1/1 0/0 0/0 .rodata          @4842 */
SECTION_RODATA static f32 const lit_4842 = 2000.0f;
COMPILER_STRIP_GATE(0x80697D74, &lit_4842);

/* 80696E84-80697160 0023E4 02DC+00 1/1 0/0 0/0 .text            bug_control__FP11e_bug_class */
static void bug_control(e_bug_class* param_0) {
    // NONMATCHING
}

/* 80697160-806971EC 0026C0 008C+00 1/1 0/0 0/0 .text            s_boom_sub__FPvPv */
static void s_boom_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 806971EC-80697294 00274C 00A8+00 1/1 0/0 0/0 .text            s_bomb_sub__FPvPv */
static void s_bomb_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80697D78-80697D7C 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4947 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4947 = 120.0f;
COMPILER_STRIP_GATE(0x80697D78, &lit_4947);
#pragma pop

/* 80697D7C-80697D80 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4948 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4948 = 130.0f;
COMPILER_STRIP_GATE(0x80697D7C, &lit_4948);
#pragma pop

/* 80697294-806975A0 0027F4 030C+00 2/1 0/0 0/0 .text            daE_Bug_Execute__FP11e_bug_class */
static void daE_Bug_Execute(e_bug_class* param_0) {
    // NONMATCHING
}

/* 806975A0-806975A8 002B00 0008+00 1/0 0/0 0/0 .text            daE_Bug_IsDelete__FP11e_bug_class
 */
static bool daE_Bug_IsDelete(e_bug_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80697D80-80697D88 0000E0 0008+00 1/1 0/0 0/0 .rodata          l_bmdidx$4962 */
SECTION_RODATA static u8 const l_bmdidx_4962[8] = {
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80697D80, &l_bmdidx_4962);

/* 80697D98-80697D98 0000F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80697D98 = "E_bug";
#pragma pop

/* 806975A8-806976B4 002B08 010C+00 1/0 0/0 0/0 .text            daE_Bug_Delete__FP11e_bug_class */
static void daE_Bug_Delete(e_bug_class* param_0) {
    // NONMATCHING
}

/* 806976B4-806977A8 002C14 00F4+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80697D88-80697D90 0000E8 0008+00 0/1 0/0 0/0 .rodata          l_bmdidx$5049 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_bmdidx_5049[8] = {
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80697D88, &l_bmdidx_5049);
#pragma pop

/* 80697D90-80697D98 0000F0 0008+00 0/1 0/0 0/0 .rodata          @5142 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5142[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80697D90, &lit_5142);
#pragma pop

/* 80697D98-80697D98 0000F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80697D9E = "T_ENEMY";
#pragma pop

/* 806977A8-80697B4C 002D08 03A4+00 1/0 0/0 0/0 .text            daE_Bug_Create__FP10fopAc_ac_c */
static void daE_Bug_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80697B4C-80697BB8 0030AC 006C+00 1/1 0/0 0/0 .text            __dt__5bug_sFv */
bug_s::~bug_s() {
    // NONMATCHING
}

/* 80697BB8-80697BEC 003118 0034+00 1/1 0/0 0/0 .text            __ct__5bug_sFv */
bug_s::bug_s() {
    // NONMATCHING
}

/* 80697BEC-80697C34 00314C 0048+00 2/1 0/0 0/0 .text            __dt__13daE_Bug_HIO_cFv */
daE_Bug_HIO_c::~daE_Bug_HIO_c() {
    // NONMATCHING
}

/* 80697C34-80697C8C 003194 0058+00 0/0 1/0 0/0 .text            __sinit_d_a_e_bug_cpp */
void __sinit_d_a_e_bug_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80697C34, __sinit_d_a_e_bug_cpp);
#pragma pop

/* ############################################################################################## */
/* 80697EB0-80697EB4 000088 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80697EB0[4];
#pragma pop

/* 80697EB4-80697EB8 00008C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80697EB4[4];
#pragma pop

/* 80697EB8-80697EBC 000090 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80697EB8[4];
#pragma pop

/* 80697EBC-80697EC0 000094 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80697EBC[4];
#pragma pop

/* 80697EC0-80697EC4 000098 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80697EC0[4];
#pragma pop

/* 80697EC4-80697EC8 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80697EC4[4];
#pragma pop

/* 80697EC8-80697ECC 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80697EC8[4];
#pragma pop

/* 80697ECC-80697ED0 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80697ECC[4];
#pragma pop

/* 80697ED0-80697ED4 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80697ED0[4];
#pragma pop

/* 80697ED4-80697ED8 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80697ED4[4];
#pragma pop

/* 80697ED8-80697EDC 0000B0 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80697ED8[4];
#pragma pop

/* 80697EDC-80697EE0 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80697EDC[4];
#pragma pop

/* 80697EE0-80697EE4 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80697EE0[4];
#pragma pop

/* 80697EE4-80697EE8 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80697EE4[4];
#pragma pop

/* 80697EE8-80697EEC 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80697EE8[4];
#pragma pop

/* 80697EEC-80697EF0 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80697EEC[4];
#pragma pop

/* 80697EF0-80697EF4 0000C8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80697EF0[4];
#pragma pop

/* 80697EF4-80697EF8 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80697EF4[4];
#pragma pop

/* 80697EF8-80697EFC 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80697EF8[4];
#pragma pop

/* 80697EFC-80697F00 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80697EFC[4];
#pragma pop

/* 80697F00-80697F04 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80697F00[4];
#pragma pop

/* 80697F04-80697F08 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80697F04[4];
#pragma pop

/* 80697F08-80697F0C 0000E0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80697F08[4];
#pragma pop

/* 80697F0C-80697F10 0000E4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80697F0C[4];
#pragma pop

/* 80697F10-80697F14 0000E8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80697F10[4];
#pragma pop

/* 80697D98-80697D98 0000F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */