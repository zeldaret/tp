/**
 * @file d_a_obj_timer.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_timer/d_a_obj_timer.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void _create__Q210daObjTimer5Act_cFv();
extern "C" bool _delete__Q210daObjTimer5Act_cFv();
extern "C" void mode_wait_init__Q210daObjTimer5Act_cFv();
extern "C" void mode_wait__Q210daObjTimer5Act_cFv();
extern "C" void mode_count_init__Q210daObjTimer5Act_cFv();
extern "C" void mode_count__Q210daObjTimer5Act_cFv();
extern "C" void _execute__Q210daObjTimer5Act_cFv();
extern "C" static void func_804855A4();
extern "C" static void func_804855C4();
extern "C" static void func_804855E8();
extern "C" static bool func_8048560C();
extern "C" static bool func_80485614();
extern "C" void func_8048561C(void* _this, fopAc_ac_c const*, daObjTimer::Act_c::Prm_e,
                              daObjTimer::Act_c::Prm_e);

//
// External References:
//

extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopDwTg_DrawQTo__FP16create_tag_class();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ptmf_scall();
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 data_804856E8[4];

//
// Declarations:
//

/* 80485198-8048526C 000078 00D4+00 1/1 0/0 0/0 .text            _create__Q210daObjTimer5Act_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTimer::Act_c::_create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_timer/d_a_obj_timer/_create__Q210daObjTimer5Act_cFv.s"
}
#pragma pop

/* 8048526C-80485274 00014C 0008+00 1/1 0/0 0/0 .text            _delete__Q210daObjTimer5Act_cFv */
bool daObjTimer::Act_c::_delete() {
    return true;
}

/* 80485274-80485284 000154 0010+00 2/2 0/0 0/0 .text mode_wait_init__Q210daObjTimer5Act_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTimer::Act_c::mode_wait_init() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_timer/d_a_obj_timer/mode_wait_init__Q210daObjTimer5Act_cFv.s"
}
#pragma pop

/* 80485284-804852E0 000164 005C+00 1/0 0/0 0/0 .text            mode_wait__Q210daObjTimer5Act_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTimer::Act_c::mode_wait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_timer/d_a_obj_timer/mode_wait__Q210daObjTimer5Act_cFv.s"
}
#pragma pop

/* 804852E0-80485324 0001C0 0044+00 2/2 0/0 0/0 .text mode_count_init__Q210daObjTimer5Act_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTimer::Act_c::mode_count_init() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_timer/d_a_obj_timer/mode_count_init__Q210daObjTimer5Act_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80485640-80485644 000000 0004+00 1/1 0/0 0/0 .rodata          @3720 */
SECTION_RODATA static f32 const lit_3720 = 1.0f;
COMPILER_STRIP_GATE(0x80485640, &lit_3720);

/* 80485644-80485648 000004 0004+00 1/1 0/0 0/0 .rodata          @3721 */
SECTION_RODATA static f32 const lit_3721 = -1.0f;
COMPILER_STRIP_GATE(0x80485644, &lit_3721);

/* 80485324-804854BC 000204 0198+00 1/0 0/0 0/0 .text            mode_count__Q210daObjTimer5Act_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTimer::Act_c::mode_count() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_timer/d_a_obj_timer/mode_count__Q210daObjTimer5Act_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80485648-80485654 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80485654-80485668 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80485668-80485674 -00001 000C+00 0/1 0/0 0/0 .data            @3726 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3726[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_wait__Q210daObjTimer5Act_cFv,
};
#pragma pop

/* 80485674-80485680 -00001 000C+00 0/1 0/0 0/0 .data            @3727 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3727[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_count__Q210daObjTimer5Act_cFv,
};
#pragma pop

/* 80485680-80485698 000038 0018+00 0/1 0/0 0/0 .data            mode_proc$3725 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 804854BC-804855A4 00039C 00E8+00 1/1 0/0 0/0 .text            _execute__Q210daObjTimer5Act_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTimer::Act_c::_execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_timer/d_a_obj_timer/_execute__Q210daObjTimer5Act_cFv.s"
}
#pragma pop

/* 804855A4-804855C4 000484 0020+00 1/0 0/0 0/0 .text
 * Mthd_Create__Q210daObjTimer27@unnamed@d_a_obj_timer_cpp@FPv  */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_804855A4() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_timer/d_a_obj_timer/func_804855A4.s"
}
#pragma pop

/* 804855C4-804855E8 0004A4 0024+00 1/0 0/0 0/0 .text
 * Mthd_Delete__Q210daObjTimer27@unnamed@d_a_obj_timer_cpp@FPv  */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_804855C4() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_timer/d_a_obj_timer/func_804855C4.s"
}
#pragma pop

/* 804855E8-8048560C 0004C8 0024+00 1/0 0/0 0/0 .text
 * Mthd_Execute__Q210daObjTimer27@unnamed@d_a_obj_timer_cpp@FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_804855E8() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_timer/d_a_obj_timer/func_804855E8.s"
}
#pragma pop

/* 8048560C-80485614 0004EC 0008+00 1/0 0/0 0/0 .text
 * Mthd_Draw__Q210daObjTimer27@unnamed@d_a_obj_timer_cpp@FPv    */
static bool func_8048560C() {
    return true;
}

/* 80485614-8048561C 0004F4 0008+00 1/0 0/0 0/0 .text
 * Mthd_IsDelete__Q210daObjTimer27@unnamed@d_a_obj_timer_cpp@FPv */
static bool func_80485614() {
    return true;
}

/* 8048561C-80485638 0004FC 001C+00 5/5 0/0 0/0 .text
 * PrmAbstract<Q310daObjTimer5Act_c5Prm_e>__5daObjFPC10fopAc_ac_cQ310daObjTimer5Act_c5Prm_eQ310daObjTimer5Act_c5Prm_e
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_8048561C(void* _this, fopAc_ac_c const* param_0,
                                  daObjTimer::Act_c::Prm_e param_1,
                                  daObjTimer::Act_c::Prm_e param_2) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_timer/d_a_obj_timer/func_8048561C.s"
}
#pragma pop

/* ############################################################################################## */
/* 80485698-804856B8 -00001 0020+00 1/0 0/0 0/0 .data
 * Mthd_Table__Q210daObjTimer27@unnamed@d_a_obj_timer_cpp@      */
static actor_method_class data_80485698 = {
    (process_method_func)func_804855A4, 
    (process_method_func)func_804855C4, 
    (process_method_func)func_804855E8, 
    (process_method_func)func_80485614,
    (process_method_func)func_8048560C,
};

/* 804856B8-804856E8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Timer */
extern actor_process_profile_definition g_profile_Obj_Timer = {
  fpcLy_CURRENT_e,          // mLayerID
  10,                       // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_Obj_Timer,           // mProcName
  &g_fpcLf_Method.mBase,    // sub_method
  sizeof(daObjTimer),       // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  22,                       // mPriority
  &data_80485698,           // sub_method
  0x00040000,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_0_e,        // cullType
};
