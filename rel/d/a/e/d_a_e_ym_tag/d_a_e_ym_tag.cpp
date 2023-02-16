/**
 * d_a_e_ym_tag.cpp
 * Tag - Shadow Insect
 */

#include "rel/d/a/e/d_a_e_ym_tag/d_a_e_ym_tag.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "d/d_procname.h"
#include "f_pc/f_pc_executor.h"

//
// Forward References:
//

extern "C" static bool daE_YM_TAG_Draw__FP12daE_YM_TAG_c();
extern "C" static void s_e_ym__FPvPv();
extern "C" void execute__12daE_YM_TAG_cFv();
extern "C" static void daE_YM_TAG_Execute__FP12daE_YM_TAG_c();
extern "C" static bool daE_YM_TAG_IsDelete__FP12daE_YM_TAG_c();
extern "C" static bool daE_YM_TAG_Delete__FP12daE_YM_TAG_c();
extern "C" void create__12daE_YM_TAG_cFv();
extern "C" static void daE_YM_TAG_Create__FP12daE_YM_TAG_c();
extern "C" extern void* g_profile_E_YM_TAG[12];

//
// External References:
//

extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcM_IsCreating__FUi();
// extern "C" extern void* g_fopAc_Method[8];
// extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];

//
// Declarations:
//

/* 80815DF8-80815E00 000078 0008+00 1/0 0/0 0/0 .text            daE_YM_TAG_Draw__FP12daE_YM_TAG_c
 */
static bool daE_YM_TAG_Draw(daE_YM_TAG_c* param_0) {
    return true;
}

/* 80815E00-80815E8C 000080 008C+00 1/1 0/0 0/0 .text            s_e_ym__FPvPv */
static void* s_e_ym(void* i_actorP1, void* i_actorP2) {
    if (fopAcM_IsActor(i_actorP1) && fopAcM_GetName(i_actorP1) == PROC_E_YM) {
        if (fpcM_IsCreating(fopAcM_GetID(i_actorP1)) == 0) {
            if (static_cast<daE_YM_c*>(i_actorP1)->getTagNo() == (u8)fopAcM_GetParam(i_actorP2)) {
                return i_actorP1;
            }
        }
    }

    return 0;
}

/* 80815E8C-80815EF8 00010C 006C+00 1/1 0/0 0/0 .text            execute__12daE_YM_TAG_cFv */
int daE_YM_TAG_c::execute() {
    daE_YM_c* shadow_insectP = (daE_YM_c*)i_fpcM_Search(s_e_ym,this);

    if (shadow_insectP) {
        shadow_insectP->setTagPos(current.pos);
        shadow_insectP->setTagPosP();
        fopAcM_delete(this);
    }

    return 1;
}

/* 80815EF8-80815F18 000178 0020+00 1/0 0/0 0/0 .text daE_YM_TAG_Execute__FP12daE_YM_TAG_c */
static int daE_YM_TAG_Execute(daE_YM_TAG_c* i_this) {
    return i_this->execute();
}

/* 80815F18-80815F20 000198 0008+00 1/0 0/0 0/0 .text daE_YM_TAG_IsDelete__FP12daE_YM_TAG_c */
static int daE_YM_TAG_IsDelete(daE_YM_TAG_c* i_this) {
    return 1;
}

/* 80815F20-80815F28 0001A0 0008+00 1/0 0/0 0/0 .text            daE_YM_TAG_Delete__FP12daE_YM_TAG_c
 */
static int daE_YM_TAG_Delete(daE_YM_TAG_c* i_this) {
    return 1;
}



/* 80815F28-80815F90 0001A8 0068+00 1/1 0/0 0/0 .text            create__12daE_YM_TAG_cFv */
int daE_YM_TAG_c::create() {
    if (!fopAcM_CheckCondition(this, 8)) {
        new (this) daE_YM_TAG_c();
        fopAcM_OnCondition(this, 8);
    }
    if ((u8)fopAcM_GetParam(this) == 0xFF) {
        return cPhs_ERROR_e;
    }
    return cPhs_COMPLEATE_e;
}

/* 80815F90-80815FB0 000210 0020+00 1/0 0/0 0/0 .text            daE_YM_TAG_Create__FP12daE_YM_TAG_c
 */
#ifndef NONMATCHING
static int daE_YM_TAG_Create(daE_YM_TAG_c* i_this) {
    return i_this->create();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_YM_TAG_Create(daE_YM_TAG_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ym_tag/d_a_e_ym_tag/daE_YM_TAG_Create__FP12daE_YM_TAG_c.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80815FB8-80815FD8 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_YM_TAG_Method */
SECTION_DATA static void* l_daE_YM_TAG_Method[8] = {
    (void*)daE_YM_TAG_Create__FP12daE_YM_TAG_c,
    (void*)daE_YM_TAG_Delete__FP12daE_YM_TAG_c,
    (void*)daE_YM_TAG_Execute__FP12daE_YM_TAG_c,
    (void*)daE_YM_TAG_IsDelete__FP12daE_YM_TAG_c,
    (void*)daE_YM_TAG_Draw__FP12daE_YM_TAG_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80815FD8-80816008 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_YM_TAG */
SECTION_DATA extern void* g_profile_E_YM_TAG[12] = {
    (void*)0xFFFFFFFD, (void*)0x0007FFFD,
    (void*)0x01F50000, (void*)&g_fpcLf_Method,
    (void*)0x00000568, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x00C30000, (void*)&l_daE_YM_TAG_Method,
    (void*)0x00044000, (void*)NULL,
};
