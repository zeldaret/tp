/**
 * d_a_e_st_line.cpp
 *
 */

#include "rel/d/a/e/d_a_e_st_line/d_a_e_st_line.h"
#include "SSystem/SComponent/c_math.h"
#include "d/com/d_com_inf_game.h"
#include "d/s/d_s_play.h"

/* 807A6F58-807A6F60 000078 0008+00 1/0 0/0 0/0 .text daE_ST_LINE_Draw__FP15e_st_line_class */
static int daE_ST_LINE_Draw(e_st_line_class* i_this) {
    cXyz unused;  // necessary to generate weak cXyz dtor
    return 1;
}

/* 807A6F9C-807A6FA4 0000BC 0008+00 2/1 0/0 0/0 .text daE_ST_LINE_Execute__FP15e_st_line_class */
static int daE_ST_LINE_Execute(e_st_line_class* i_this) {
    return 1;
}

/* 807A6FA4-807A6FAC 0000C4 0008+00 1/0 0/0 0/0 .text daE_ST_LINE_IsDelete__FP15e_st_line_class */
static int daE_ST_LINE_IsDelete(e_st_line_class* i_this) {
    return 1;
}

/* 807A6FAC-807A7008 0000CC 005C+00 1/0 0/0 0/0 .text daE_ST_LINE_Delete__FP15e_st_line_class */
static int daE_ST_LINE_Delete(e_st_line_class* i_this) {
    dComIfG_resDelete(&i_this->mPhase, "E_st");
    if (i_this->field_0xcc4 == 0 && i_this->heap != NULL) {
        i_this->mSound.deleteObject();
    }

    return 1;
}

// fake functions to get float literal order. probably from some stripped HIO function?
f32 dummyLiteralOrder() {
    f32 dummy = 70.0f;
    f32 dummy2 = 0.0f;
    dummy += dummy2;
    dummy += 100.0f;
    dummy += 10.0f;
    dummy += 1444.0f;
    dummy += 0.5;
    dummy += 3.0;

    return dummy;
}

f64 dummyLiteralOrder2() {
    return 0.0;
}

f32 dummyLiteralOrder3() {
    f32 dummy = 20.0f;
    dummy += 5.0f;
    dummy += 4.0f;
    dummy += 40.0f;
    dummy += 50.0f;
    dummy += 5000.0f;
    dummy += 1.0f;
    dummy += 0.015f;
    dummy += 0.0049999999f;

    dummy += 0.3f;
    dummy += 1000.0f;
    dummy += 0.2f;
    dummy += 60.0f;
    dummy += 0.5f;

    return dummy;
}

/* 807A7008-807A707C 000128 0074+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    e_st_line_class* a_this = (e_st_line_class*)i_this;

    if (!a_this->mLine.init(1, 50, 1)) {
        return 0;
    }

    f32* size_p = a_this->mLine.getSize(0);
    for (int i = 0; i < 50; i++) {
        *size_p = (XREG_S(0) * 0.1) + 0.3f;
        size_p++;
    }

    return 1;
}

/* 807A707C-807A7220 00019C 01A4+00 1/0 0/0 0/0 .text            daE_ST_LINE_Create__FP10fopAc_ac_c
 */
static int daE_ST_LINE_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, e_st_line_class);
    e_st_line_class* a_this = (e_st_line_class*)i_this;

    int phase_state = dComIfG_resLoad(&a_this->mPhase, "E_st");
    if (phase_state == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(a_this, useHeapInit, 0xF40)) {
            OS_REPORT("//////////////E_ST_LINE SET NON !!\n");
            return cPhs_ERROR_e;
        }

        a_this->field_0x5d0 = cM_rndF(0xFFFF);

        for (int i = 0; i < 64; i++) {
            a_this->field_0x5dc[i] = a_this->current.pos;
        }

        a_this->field_0xcc4 = fopAcM_GetParam(a_this) & 0xFF;
        a_this->field_0xcc6 = cM_rndFX(BREG_F(9) + 20.0f) + (BREG_F(8) + 170.0f);

        if (a_this->field_0xcc4 == 0) {
            a_this->mSound.init(&a_this->current.pos, 1);
        }

        daE_ST_LINE_Execute(a_this);
    }

    return phase_state;
}

/* 807A72A4-807A72C4 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_ST_LINE_Method */
static actor_method_class l_daE_ST_LINE_Method = {
    (process_method_func)daE_ST_LINE_Create,  (process_method_func)daE_ST_LINE_Delete,
    (process_method_func)daE_ST_LINE_Execute, (process_method_func)daE_ST_LINE_IsDelete,
    (process_method_func)daE_ST_LINE_Draw,
};

/* 807A72C4-807A72F4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_ST_LINE */
extern actor_process_profile_definition g_profile_E_ST_LINE = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_E_ST_LINE,
    &g_fpcLf_Method.mBase,
    sizeof(e_st_line_class),
    0,
    0,
    &g_fopAc_Method.base,
    133,
    &l_daE_ST_LINE_Method,
    0x44000,
    fopAc_ENEMY_e,
    fopAc_CULLBOX_CUSTOM_e,
};
