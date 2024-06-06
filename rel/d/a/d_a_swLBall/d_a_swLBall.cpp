/**
 * @file d_a_swLBall.cpp
 * 
*/

#include "rel/d/a/d_a_swLBall/d_a_swLBall.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void s_lb_sub__FPvPv();
extern "C" void checkArea_sub__11daSwLBall_cFP10fopAc_ac_c();
extern "C" void checkArea__11daSwLBall_cFv();
extern "C" void search_lb__11daSwLBall_cFv();
extern "C" void Create__11daSwLBall_cFv();
extern "C" void create__11daSwLBall_cFv();
extern "C" void execute__11daSwLBall_cFv();
extern "C" void actionInit__11daSwLBall_cFv();
extern "C" void actionRun__11daSwLBall_cFv();
extern "C" void actionStop__11daSwLBall_cFv();
extern "C" void PutCrrPos__11daSwLBall_cFv();
extern "C" bool _delete__11daSwLBall_cFv();
extern "C" static void daSwLBall_Execute__FP11daSwLBall_c();
extern "C" static void daSwLBall_Delete__FP11daSwLBall_c();
extern "C" static void daSwLBall_Create__FP10fopAc_ac_c();
extern "C" void func_80D4F4AC(void* _this, u8*);

//
// External References:
//

extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dLib_checkActorInRectangle__FP10fopAc_ac_cP10fopAc_ac_cPC4cXyzPC4cXyz();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" extern u8 g_dComIfG_gameInfo[122384];

//
// Declarations:
//

/* ############################################################################################## */
/* 80D4F5A0-80D4F5A8 000000 0008+00 2/2 0/0 0/0 .bss             l_target_info */
static u8 l_target_info[8];

/* 80D4F5A8-80D4F5AC 000008 0004+00 2/2 0/0 0/0 .bss             l_target_info_count */
static u8 l_target_info_count[4];

/* 80D4EAF8-80D4EB8C 000078 0094+00 1/1 0/0 0/0 .text            s_lb_sub__FPvPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void s_lb_sub(void* param_0, void* param_1) {
    nofralloc
#include "asm/rel/d/a/d_a_swLBall/d_a_swLBall/s_lb_sub__FPvPv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D4F4D0-80D4F4D4 000000 0004+00 2/2 0/0 0/0 .rodata          @3723 */
SECTION_RODATA static f32 const lit_3723 = 10.0f;
COMPILER_STRIP_GATE(0x80D4F4D0, &lit_3723);

/* 80D4F4D4-80D4F4D8 000004 0004+00 0/1 0/0 0/0 .rodata          @3724 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3724 = 100.0f;
COMPILER_STRIP_GATE(0x80D4F4D4, &lit_3724);
#pragma pop

/* 80D4F4D8-80D4F4DC 000008 0004+00 0/1 0/0 0/0 .rodata          @3725 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3725 = -100.0f;
COMPILER_STRIP_GATE(0x80D4F4D8, &lit_3725);
#pragma pop

/* 80D4F4DC-80D4F4E0 00000C 0004+00 0/2 0/0 0/0 .rodata          @3726 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3726[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D4F4DC, &lit_3726);
#pragma pop

/* 80D4EB8C-80D4ECCC 00010C 0140+00 2/2 0/0 0/0 .text checkArea_sub__11daSwLBall_cFP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSwLBall_c::checkArea_sub(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_swLBall/d_a_swLBall/checkArea_sub__11daSwLBall_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80D4ECCC-80D4ED80 00024C 00B4+00 1/1 0/0 0/0 .text            checkArea__11daSwLBall_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSwLBall_c::checkArea() {
    nofralloc
#include "asm/rel/d/a/d_a_swLBall/d_a_swLBall/checkArea__11daSwLBall_cFv.s"
}
#pragma pop

/* 80D4ED80-80D4EEAC 000300 012C+00 2/2 0/0 0/0 .text            search_lb__11daSwLBall_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSwLBall_c::search_lb() {
    nofralloc
#include "asm/rel/d/a/d_a_swLBall/d_a_swLBall/search_lb__11daSwLBall_cFv.s"
}
#pragma pop

/* 80D4EEAC-80D4EEF8 00042C 004C+00 1/1 0/0 0/0 .text            Create__11daSwLBall_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSwLBall_c::Create() {
    nofralloc
#include "asm/rel/d/a/d_a_swLBall/d_a_swLBall/Create__11daSwLBall_cFv.s"
}
#pragma pop

/* 80D4EEF8-80D4EF60 000478 0068+00 1/1 0/0 0/0 .text            create__11daSwLBall_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSwLBall_c::create() {
    nofralloc
#include "asm/rel/d/a/d_a_swLBall/d_a_swLBall/func_80D4EEF8.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D4F4E4-80D4F4F0 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D4F4F0-80D4F504 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80D4F504-80D4F510 -00001 000C+00 0/1 0/0 0/0 .data            @3835 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3835[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionInit__11daSwLBall_cFv,
};
#pragma pop

/* 80D4F510-80D4F51C -00001 000C+00 0/1 0/0 0/0 .data            @3836 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3836[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionRun__11daSwLBall_cFv,
};
#pragma pop

/* 80D4F51C-80D4F528 -00001 000C+00 0/1 0/0 0/0 .data            @3837 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3837[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionStop__11daSwLBall_cFv,
};
#pragma pop

/* 80D4F528-80D4F54C 000044 0024+00 0/1 0/0 0/0 .data            l_func$3834 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80D4F5AC-80D4F5B0 00000C 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80D4F5AC[4];

/* 80D4EF60-80D4F008 0004E0 00A8+00 2/2 0/0 0/0 .text            execute__11daSwLBall_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSwLBall_c::execute() {
    nofralloc
#include "asm/rel/d/a/d_a_swLBall/d_a_swLBall/execute__11daSwLBall_cFv.s"
}
#pragma pop

/* 80D4F008-80D4F080 000588 0078+00 1/0 0/0 0/0 .text            actionInit__11daSwLBall_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSwLBall_c::actionInit() {
    nofralloc
#include "asm/rel/d/a/d_a_swLBall/d_a_swLBall/actionInit__11daSwLBall_cFv.s"
}
#pragma pop

/* 80D4F080-80D4F220 000600 01A0+00 1/0 0/0 0/0 .text            actionRun__11daSwLBall_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSwLBall_c::actionRun() {
    nofralloc
#include "asm/rel/d/a/d_a_swLBall/d_a_swLBall/actionRun__11daSwLBall_cFv.s"
}
#pragma pop

/* 80D4F220-80D4F224 0007A0 0004+00 1/0 0/0 0/0 .text            actionStop__11daSwLBall_cFv */
void daSwLBall_c::actionStop() {
    /* empty function */
}

/* ############################################################################################## */
/* 80D4F4E0-80D4F4E4 000010 0004+00 0/1 0/0 0/0 .rodata          @4000 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4000 = 300.0f;
COMPILER_STRIP_GATE(0x80D4F4E0, &lit_4000);
#pragma pop

/* 80D4F224-80D4F444 0007A4 0220+00 1/1 0/0 0/0 .text            PutCrrPos__11daSwLBall_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSwLBall_c::PutCrrPos() {
    nofralloc
#include "asm/rel/d/a/d_a_swLBall/d_a_swLBall/PutCrrPos__11daSwLBall_cFv.s"
}
#pragma pop

/* 80D4F444-80D4F44C 0009C4 0008+00 1/1 0/0 0/0 .text            _delete__11daSwLBall_cFv */
bool daSwLBall_c::_delete() {
    return true;
}

/* 80D4F44C-80D4F46C 0009CC 0020+00 1/0 0/0 0/0 .text            daSwLBall_Execute__FP11daSwLBall_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daSwLBall_Execute(daSwLBall_c* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_swLBall/d_a_swLBall/daSwLBall_Execute__FP11daSwLBall_c.s"
}
#pragma pop

/* 80D4F46C-80D4F48C 0009EC 0020+00 1/0 0/0 0/0 .text            daSwLBall_Delete__FP11daSwLBall_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daSwLBall_Delete(daSwLBall_c* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_swLBall/d_a_swLBall/daSwLBall_Delete__FP11daSwLBall_c.s"
}
#pragma pop

/* 80D4F48C-80D4F4AC 000A0C 0020+00 1/0 0/0 0/0 .text            daSwLBall_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daSwLBall_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_swLBall/d_a_swLBall/daSwLBall_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80D4F4AC-80D4F4C8 000A2C 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80D4F4AC(void* _this, u8* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_swLBall/d_a_swLBall/func_80D4F4AC.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D4F54C-80D4F56C -00001 0020+00 1/0 0/0 0/0 .data            l_daSwLBall_Method */
static actor_method_class l_daSwLBall_Method = {
    (process_method_func)daSwLBall_Create__FP10fopAc_ac_c,
    (process_method_func)daSwLBall_Delete__FP11daSwLBall_c,
    (process_method_func)daSwLBall_Execute__FP11daSwLBall_c,
};

/* 80D4F56C-80D4F59C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_SwLBall */
extern actor_process_profile_definition g_profile_SwLBall = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_SwLBall,           // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daSwLBall_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  549,                    // mPriority
  &l_daSwLBall_Method,    // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
