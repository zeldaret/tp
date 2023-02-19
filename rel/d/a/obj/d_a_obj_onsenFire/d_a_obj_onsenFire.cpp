/**
 * d_a_obj_onsenFire.cpp
 * Object - Hotspring Fire
 */

#include "rel/d/a/obj/d_a_obj_onsenFire/d_a_obj_onsenFire.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Forward References:
//

extern "C" void create__16daObjOnsenFire_cFv();
extern "C" void execute__16daObjOnsenFire_cFv();
extern "C" static void daObjOnsenFire_Create__FP10fopAc_ac_c();
extern "C" static void daObjOnsenFire_Execute__FP16daObjOnsenFire_c();
extern "C" static void daObjOnsenFire_Delete__FP16daObjOnsenFire_c();
extern "C" extern void* g_profile_OBJ_ONSEN_FIRE[12];

//
// External References:
//

extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80CA8278-80CA82F4 000078 007C+00 1/1 0/0 0/0 .text            create__16daObjOnsenFire_cFv */
#ifndef NONMATCHING
int daObjOnsenFire_c::create() {
    if (!fopAcM_CheckCondition(this, 8)) {
        new (this) daObjOnsenFire_c();
        fopAcM_OnCondition(this, 8);
    }
    if (i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[377]) == 0) {
        return cPhs_ERROR_e;
    }
    return cPhs_COMPLEATE_e;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjOnsenFire_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_onsenFire/d_a_obj_onsenFire/create__16daObjOnsenFire_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80CA8474-80CA8478 000000 0004+00 1/1 0/0 0/0 .rodata          @3659 */
SECTION_RODATA static u8 const lit_3659[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CA8474, &lit_3659);

/* 80CA8478-80CA847C 000004 0004+00 0/1 0/0 0/0 .rodata          @3660 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3660 = 1.0f;
COMPILER_STRIP_GATE(0x80CA8478, &lit_3660);
#pragma pop

/* 80CA847C-80CA8480 000008 0004+00 0/1 0/0 0/0 .rodata          @3661 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3661 = -1.0f;
COMPILER_STRIP_GATE(0x80CA847C, &lit_3661);
#pragma pop

/* 80CA82F4-80CA83FC 0000F4 0108+00 1/1 0/0 0/0 .text            execute__16daObjOnsenFire_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjOnsenFire_c::execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_onsenFire/d_a_obj_onsenFire/execute__16daObjOnsenFire_cFv.s"
}
#pragma pop

/* 80CA83FC-80CA841C 0001FC 0020+00 1/0 0/0 0/0 .text daObjOnsenFire_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjOnsenFire_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_onsenFire/d_a_obj_onsenFire/daObjOnsenFire_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80CA841C-80CA843C 00021C 0020+00 1/0 0/0 0/0 .text daObjOnsenFire_Execute__FP16daObjOnsenFire_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjOnsenFire_Execute(daObjOnsenFire_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_onsenFire/d_a_obj_onsenFire/daObjOnsenFire_Execute__FP16daObjOnsenFire_c.s"
}
#pragma pop

/* 80CA843C-80CA846C 00023C 0030+00 1/0 0/0 0/0 .text daObjOnsenFire_Delete__FP16daObjOnsenFire_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjOnsenFire_Delete(daObjOnsenFire_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_onsenFire/d_a_obj_onsenFire/daObjOnsenFire_Delete__FP16daObjOnsenFire_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80CA8480-80CA84A0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjOnsenFire_Method */
SECTION_DATA static void* l_daObjOnsenFire_Method[8] = {
    (void*)daObjOnsenFire_Create__FP10fopAc_ac_c,
    (void*)daObjOnsenFire_Delete__FP16daObjOnsenFire_c,
    (void*)daObjOnsenFire_Execute__FP16daObjOnsenFire_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80CA84A0-80CA84D0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_ONSEN_FIRE */
SECTION_DATA extern void* g_profile_OBJ_ONSEN_FIRE[12] = {
    (void*)0xFFFFFFFD, (void*)0x0003FFFD,
    (void*)0x008C0000, (void*)&g_fpcLf_Method,
    (void*)0x00000568, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x02640000, (void*)&l_daObjOnsenFire_Method,
    (void*)0x00044000, (void*)0x000E0000,
};
