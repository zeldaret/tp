/**
 * d_a_econt.cpp
 * Encounter
 */

#include "rel/d/a/d_a_econt/d_a_econt.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "d/d_procname.h"
#include "d/d_timer.h"

//
// Forward References:
//

extern "C" static bool daEcont_Draw__FP11econt_class();
extern "C" static void s_rd_sub__FPvPv();
extern "C" static void rider_game__FP11econt_class();
extern "C" static void daEcont_Execute__FP11econt_class();
extern "C" static bool daEcont_IsDelete__FP11econt_class();
extern "C" static void daEcont_Delete__FP11econt_class();
extern "C" static void daEcont_Create__FP10fopAc_ac_c();
extern "C" extern void* g_profile_ECONT[12];

//
// External References:
//

extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_TimerStart__Fis();
extern "C" void dComIfG_TimerDeleteRequest__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void dTimer_createTimer__FlUlUcUcffff();
extern "C" extern u8 data_805197E0[4];

//
// Declarations:
//

/* 80519518-80519520 000078 0008+00 1/0 0/0 0/0 .text            daEcont_Draw__FP11econt_class */
static int daEcont_Draw(econt_class* param_0) {
    return 1;
}

/* 80519520-80519578 000080 0058+00 1/1 0/0 0/0 .text            s_rd_sub__FPvPv */
static void* s_rd_sub(void* i_this, void* param_1) {
    if (fopAcM_IsActor(i_this) && fopAcM_GetName(i_this) == PROC_E_RD) {
        data_805197E0[0]++;
    }
    return 0;
}

/* 80519578-80519664 0000D8 00EC+00 1/1 0/0 0/0 .text            rider_game__FP11econt_class */
#ifdef NONMATCHING
static void rider_game(econt_class* i_this) {
    
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void rider_game(econt_class* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_econt/d_a_econt/rider_game__FP11econt_class.s"
}
#pragma pop
#endif

/* 80519664-805196B4 0001C4 0050+00 1/0 0/0 0/0 .text            daEcont_Execute__FP11econt_class */
static int daEcont_Execute(econt_class* i_this) {
    for (int i = 0; i < 3; i++) {
        if (i_this->field_0x5b8[i] != 0) {
            i_this->field_0x5b8[i] -= 1;
        }
    }
    rider_game(i_this);
    return 1;
}

/* 805196B4-805196BC 000214 0008+00 1/0 0/0 0/0 .text            daEcont_IsDelete__FP11econt_class
 */
static int daEcont_IsDelete(econt_class* i_this) {
    return 1;
}

/* 805196BC-805196E4 00021C 0028+00 1/0 0/0 0/0 .text            daEcont_Delete__FP11econt_class */
static int daEcont_Delete(econt_class* i_this) {
    dComIfG_TimerDeleteRequest(8);
    return 1;
}

/* ############################################################################################## */
/* 8051977C-80519780 000000 0004+00 1/1 0/0 0/0 .rodata          @3870 */
SECTION_RODATA static f32 const lit_3870 = 210.0f;
COMPILER_STRIP_GATE(0x8051977C, &lit_3870);

/* 80519780-80519784 000004 0004+00 0/1 0/0 0/0 .rodata          @3871 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3871 = 410.0f;
COMPILER_STRIP_GATE(0x80519780, &lit_3871);
#pragma pop

/* 80519784-80519788 000008 0004+00 0/1 0/0 0/0 .rodata          @3872 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3872 = 32.0f;
COMPILER_STRIP_GATE(0x80519784, &lit_3872);
#pragma pop

/* 80519788-8051978C 00000C 0004+00 0/1 0/0 0/0 .rodata          @3873 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3873 = 419.0f;
COMPILER_STRIP_GATE(0x80519788, &lit_3873);
#pragma pop

/* 805196E4-80519774 000244 0090+00 1/0 0/0 0/0 .text            daEcont_Create__FP10fopAc_ac_c */
#ifndef NONMATCHING
static int daEcont_Create(fopAc_ac_c* i_this) {
    econt_class* encounter = (econt_class*)i_this;
    if (!fopAcM_CheckCondition(encounter, 8)) {
        new (encounter) econt_class();
        fopAcM_OnCondition(encounter, 8);
    }
    dTimer_createTimer(8,0x989298,2,0,FLOAT_LABEL(lit_3870),FLOAT_LABEL(lit_3871),FLOAT_LABEL(lit_3872),FLOAT_LABEL(lit_3873));
    encounter->field_0x5b8[0] = 0x14;
    return cPhs_COMPLEATE_e;
    
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daEcont_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_econt/d_a_econt/daEcont_Create__FP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8051978C-805197AC -00001 0020+00 1/0 0/0 0/0 .data            l_daEcont_Method */
SECTION_DATA static void* l_daEcont_Method[8] = {
    (void*)daEcont_Create__FP10fopAc_ac_c,
    (void*)daEcont_Delete__FP11econt_class,
    (void*)daEcont_Execute__FP11econt_class,
    (void*)daEcont_IsDelete__FP11econt_class,
    (void*)daEcont_Draw__FP11econt_class,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 805197AC-805197DC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_ECONT */
SECTION_DATA extern void* g_profile_ECONT[12] = {
    (void*)0xFFFFFFFD, (void*)0x0008FFFD,
    (void*)0x02E30000, (void*)&g_fpcLf_Method,
    (void*)0x000005C0, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x009B0000, (void*)&l_daEcont_Method,
    (void*)0x00044000, (void*)NULL,
};
