/**
 * @file d_a_npc_inko.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_inko.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daNpc_Inko_Draw__FP14npc_inko_class();
extern "C" static void anm_init__FP14npc_inko_classifUcf();
extern "C" static void daNpc_Inko_Execute__FP14npc_inko_class();
extern "C" static bool daNpc_Inko_IsDelete__FP14npc_inko_class();
extern "C" static void daNpc_Inko_Delete__FP14npc_inko_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daNpc_Inko_Create__FP10fopAc_ac_c();
extern "C" extern char const* const d_a_npc_inko__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void entryDL__14mDoExt_McaMorfFv();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setLookPos__9daPy_py_cFP4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void* __nw__FUl();
extern "C" void _savegpr_24();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 m_cpadInfo__8mDoCPd_c[256];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u8 cDmr_SkipInfo[4];

//
// Declarations:
//

/* 80A0C998-80A0CBB0 000078 0218+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80A0CBB0-80A0CC18 000290 0068+00 1/0 0/0 0/0 .text            daNpc_Inko_Draw__FP14npc_inko_class
 */
static void daNpc_Inko_Draw(npc_inko_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A0E014-80A0E018 000000 0004+00 3/3 0/0 0/0 .rodata          @3849 */
SECTION_RODATA static u8 const lit_3849[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A0E014, &lit_3849);

/* 80A0E018-80A0E01C 000004 0004+00 1/2 0/0 0/0 .rodata          @3850 */
SECTION_RODATA static f32 const lit_3850 = -1.0f;
COMPILER_STRIP_GATE(0x80A0E018, &lit_3850);

/* 80A0E0CC-80A0E0CC 0000B8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A0E0CC = "Npc_inko";
#pragma pop

/* 80A0CC18-80A0CCC8 0002F8 00B0+00 1/1 0/0 0/0 .text            anm_init__FP14npc_inko_classifUcf
 */
static void anm_init(npc_inko_class* param_0, int param_1, f32 param_2, u8 param_3,
                         f32 param_4) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A0E01C-80A0E020 000008 0004+00 0/1 0/0 0/0 .rodata          @4329 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4329 = -78.0f;
COMPILER_STRIP_GATE(0x80A0E01C, &lit_4329);
#pragma pop

/* 80A0E020-80A0E024 00000C 0004+00 0/1 0/0 0/0 .rodata          @4330 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4330 = -5.0f;
COMPILER_STRIP_GATE(0x80A0E020, &lit_4330);
#pragma pop

/* 80A0E024-80A0E028 000010 0004+00 0/1 0/0 0/0 .rodata          @4331 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4331 = 40.0f;
COMPILER_STRIP_GATE(0x80A0E024, &lit_4331);
#pragma pop

/* 80A0E028-80A0E02C 000014 0004+00 0/1 0/0 0/0 .rodata          @4332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4332 = 30.0f;
COMPILER_STRIP_GATE(0x80A0E028, &lit_4332);
#pragma pop

/* 80A0E02C-80A0E030 000018 0004+00 0/1 0/0 0/0 .rodata          @4333 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4333 = 70.0f;
COMPILER_STRIP_GATE(0x80A0E02C, &lit_4333);
#pragma pop

/* 80A0E030-80A0E034 00001C 0004+00 0/1 0/0 0/0 .rodata          @4334 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4334 = 10.0f;
COMPILER_STRIP_GATE(0x80A0E030, &lit_4334);
#pragma pop

/* 80A0E034-80A0E038 000020 0004+00 1/2 0/0 0/0 .rodata          @4335 */
SECTION_RODATA static f32 const lit_4335 = 1.0f;
COMPILER_STRIP_GATE(0x80A0E034, &lit_4335);

/* 80A0E038-80A0E03C 000024 0004+00 0/1 0/0 0/0 .rodata          @4336 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4336 = 1.5f;
COMPILER_STRIP_GATE(0x80A0E038, &lit_4336);
#pragma pop

/* 80A0E03C-80A0E040 000028 0004+00 0/1 0/0 0/0 .rodata          @4337 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4337 = 2.0f;
COMPILER_STRIP_GATE(0x80A0E03C, &lit_4337);
#pragma pop

/* 80A0E040-80A0E044 00002C 0004+00 0/1 0/0 0/0 .rodata          @4338 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4338 = 1300.0f;
COMPILER_STRIP_GATE(0x80A0E040, &lit_4338);
#pragma pop

/* 80A0E044-80A0E048 000030 0004+00 0/1 0/0 0/0 .rodata          @4339 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4339 = 1000.0f;
COMPILER_STRIP_GATE(0x80A0E044, &lit_4339);
#pragma pop

/* 80A0E048-80A0E04C 000034 0004+00 0/1 0/0 0/0 .rodata          @4340 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4340 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80A0E048, &lit_4340);
#pragma pop

/* 80A0E04C-80A0E050 000038 0004+00 0/1 0/0 0/0 .rodata          @4341 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4341 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A0E04C, &lit_4341);
#pragma pop

/* 80A0E050-80A0E054 00003C 0004+00 0/1 0/0 0/0 .rodata          @4342 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4342 = 3.0f;
COMPILER_STRIP_GATE(0x80A0E050, &lit_4342);
#pragma pop

/* 80A0E054-80A0E058 000040 0004+00 0/1 0/0 0/0 .rodata          @4343 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4343 = 100.0f;
COMPILER_STRIP_GATE(0x80A0E054, &lit_4343);
#pragma pop

/* 80A0E058-80A0E05C 000044 0004+00 0/1 0/0 0/0 .rodata          @4344 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4344 = 7000.0f;
COMPILER_STRIP_GATE(0x80A0E058, &lit_4344);
#pragma pop

/* 80A0E05C-80A0E060 000048 0004+00 0/1 0/0 0/0 .rodata          @4345 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4345 = 0.5f;
COMPILER_STRIP_GATE(0x80A0E05C, &lit_4345);
#pragma pop

/* 80A0E060-80A0E064 00004C 0004+00 0/1 0/0 0/0 .rodata          @4346 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4346 = 8.0f;
COMPILER_STRIP_GATE(0x80A0E060, &lit_4346);
#pragma pop

/* 80A0E064-80A0E068 000050 0004+00 0/1 0/0 0/0 .rodata          @4347 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4347 = 41.0f;
COMPILER_STRIP_GATE(0x80A0E064, &lit_4347);
#pragma pop

/* 80A0E068-80A0E06C 000054 0004+00 0/1 0/0 0/0 .rodata          @4348 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4348 = 14.0f;
COMPILER_STRIP_GATE(0x80A0E068, &lit_4348);
#pragma pop

/* 80A0E06C-80A0E070 000058 0004+00 0/1 0/0 0/0 .rodata          @4349 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4349 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80A0E06C, &lit_4349);
#pragma pop

/* 80A0E070-80A0E074 00005C 0004+00 0/1 0/0 0/0 .rodata          @4350 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4350 = 20.0f;
COMPILER_STRIP_GATE(0x80A0E070, &lit_4350);
#pragma pop

/* 80A0E074-80A0E078 000060 0004+00 0/2 0/0 0/0 .rodata          @4351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4351 = 200.0f;
COMPILER_STRIP_GATE(0x80A0E074, &lit_4351);
#pragma pop

/* 80A0E078-80A0E07C 000064 0004+00 0/1 0/0 0/0 .rodata          @4352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4352 = 32768.0f;
COMPILER_STRIP_GATE(0x80A0E078, &lit_4352);
#pragma pop

/* 80A0E07C-80A0E080 000068 0004+00 0/1 0/0 0/0 .rodata          @4353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4353 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A0E07C, &lit_4353);
#pragma pop

/* 80A0E080-80A0E084 00006C 0004+00 0/1 0/0 0/0 .rodata          @4354 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4354 = 5.0f;
COMPILER_STRIP_GATE(0x80A0E080, &lit_4354);
#pragma pop

/* 80A0E084-80A0E08C 000070 0008+00 0/1 0/0 0/0 .rodata          @4355 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4355[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A0E084, &lit_4355);
#pragma pop

/* 80A0E08C-80A0E094 000078 0008+00 0/1 0/0 0/0 .rodata          @4356 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4356[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A0E08C, &lit_4356);
#pragma pop

/* 80A0E094-80A0E09C 000080 0008+00 0/1 0/0 0/0 .rodata          @4357 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4357[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A0E094, &lit_4357);
#pragma pop

/* 80A0E09C-80A0E0A0 000088 0004+00 0/1 0/0 0/0 .rodata          @4358 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4358 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80A0E09C, &lit_4358);
#pragma pop

/* 80A0E0A0-80A0E0A4 00008C 0004+00 0/1 0/0 0/0 .rodata          @4359 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4359 = 300.0f;
COMPILER_STRIP_GATE(0x80A0E0A0, &lit_4359);
#pragma pop

/* 80A0E0A4-80A0E0A8 000090 0004+00 0/1 0/0 0/0 .rodata          @4360 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4360 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80A0E0A4, &lit_4360);
#pragma pop

/* 80A0E0A8-80A0E0AC 000094 0004+00 0/1 0/0 0/0 .rodata          @4361 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4361 = 2.5f;
COMPILER_STRIP_GATE(0x80A0E0A8, &lit_4361);
#pragma pop

/* 80A0E0AC-80A0E0B0 000098 0004+00 0/1 0/0 0/0 .rodata          @4362 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4362 = 3000.0f;
COMPILER_STRIP_GATE(0x80A0E0AC, &lit_4362);
#pragma pop

/* 80A0E0B0-80A0E0B4 00009C 0004+00 0/1 0/0 0/0 .rodata          @4363 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4363 = 90.0f;
COMPILER_STRIP_GATE(0x80A0E0B0, &lit_4363);
#pragma pop

/* 80A0E0B4-80A0E0B8 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4364 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4364 = 500.0f;
COMPILER_STRIP_GATE(0x80A0E0B4, &lit_4364);
#pragma pop

/* 80A0E0B8-80A0E0BC 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4365 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4365 = -2.0f;
COMPILER_STRIP_GATE(0x80A0E0B8, &lit_4365);
#pragma pop

/* 80A0E0BC-80A0E0C0 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4366 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4366 = 23000.0f;
COMPILER_STRIP_GATE(0x80A0E0BC, &lit_4366);
#pragma pop

/* 80A0E0C0-80A0E0C4 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4367 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4367 = 150.0f;
COMPILER_STRIP_GATE(0x80A0E0C0, &lit_4367);
#pragma pop

/* 80A0E0D8-80A0E0E8 000000 0010+00 1/1 0/0 0/0 .data            mes_0$3966 */
SECTION_DATA static u8 mes_0[16] = {
    0x00, 0x00, 0x03, 0x57, 0x00, 0x00, 0x03, 0x58, 0x00, 0x00, 0x03, 0x59, 0x00, 0x00, 0x03, 0x5A,
};

/* 80A0E0E8-80A0E0F8 000010 0010+00 1/1 0/0 0/0 .data            mes_1$3967 */
SECTION_DATA static u8 mes_1[16] = {
    0x00, 0x00, 0x03, 0x5B, 0x00, 0x00, 0x03, 0x5C, 0x00, 0x00, 0x03, 0x5D, 0x00, 0x00, 0x03, 0x5E,
};

/* 80A0CCC8-80A0DD70 0003A8 10A8+00 2/1 0/0 0/0 .text daNpc_Inko_Execute__FP14npc_inko_class */
static void daNpc_Inko_Execute(npc_inko_class* param_0) {
    // NONMATCHING
}

/* 80A0DD70-80A0DD78 001450 0008+00 1/0 0/0 0/0 .text daNpc_Inko_IsDelete__FP14npc_inko_class */
static bool daNpc_Inko_IsDelete(npc_inko_class* param_0) {
    return true;
}

/* 80A0DD78-80A0DDC8 001458 0050+00 1/0 0/0 0/0 .text daNpc_Inko_Delete__FP14npc_inko_class */
static void daNpc_Inko_Delete(npc_inko_class* param_0) {
    // NONMATCHING
}

/* 80A0DDC8-80A0DF08 0014A8 0140+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A0E0C4-80A0E0C8 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4461 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4461 = 65536.0f;
COMPILER_STRIP_GATE(0x80A0E0C4, &lit_4461);
#pragma pop

/* 80A0E0C8-80A0E0CC 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4462 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4462 = -200.0f;
COMPILER_STRIP_GATE(0x80A0E0C8, &lit_4462);
#pragma pop

/* 80A0DF08-80A0E00C 0015E8 0104+00 1/0 0/0 0/0 .text            daNpc_Inko_Create__FP10fopAc_ac_c
 */
static void daNpc_Inko_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A0E0F8-80A0E118 -00001 0020+00 1/0 0/0 0/0 .data            l_daNpc_Inko_Method */
static actor_method_class l_daNpc_Inko_Method = {
    (process_method_func)daNpc_Inko_Create__FP10fopAc_ac_c,
    (process_method_func)daNpc_Inko_Delete__FP14npc_inko_class,
    (process_method_func)daNpc_Inko_Execute__FP14npc_inko_class,
    (process_method_func)daNpc_Inko_IsDelete__FP14npc_inko_class,
    (process_method_func)daNpc_Inko_Draw__FP14npc_inko_class,
};

/* 80A0E118-80A0E148 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_INKO */
extern actor_process_profile_definition g_profile_NPC_INKO = {
  fpcLy_CURRENT_e,        // mLayerID
  8,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_INKO,          // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(npc_inko_class), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  704,                    // mPriority
  &l_daNpc_Inko_Method,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80A0E0CC-80A0E0CC 0000B8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
