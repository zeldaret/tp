/**
 * d_kyeff.cpp
 *
 */

#include "d/d_kyeff.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_procname.h"
#include "d/kankyo/d_kankyo_wether.h"

/* 801ADD00-801ADD38 1A8640 0038+00 2/2 0/0 0/0 .text            dKankyo_DayProc__Fv */
void dKankyo_DayProc() {
    dComIfGs_offTmpBit(dSv_event_tmp_flag_c::tempBitLabels[91]);
}

static int dKyeff_Draw(dKyeff_c* i_this) {
    dKyw_wether_draw();
    return 1;
}

/* 801ADD5C-801ADDB4 1A869C 0058+00 1/1 0/0 0/0 .text            execute__8dKyeff_cFv */
int dKyeff_c::execute() {
    if (strcmp(dComIfGp_getStartStageName(), "Name")) {
        dKyw_wether_move();
    }

    dKyw_wether_move_draw();
    dKy_FiveSenses_fullthrottle_dark();
    mDoAud_mEnvse_framework();
    return 1;
}

static int dKyeff_Execute(dKyeff_c* i_this) {
    return i_this->execute();
}

static int dKyeff_IsDelete(dKyeff_c* i_this) {
    return 1;
}

static int dKyeff_Delete(dKyeff_c* i_this) {
    dKyw_wether_delete();
    return 1;
}

// Helper functions to set float literal order
static f32 dummyLiteralOrder() {
    return 0.0f;
}

static f32 dummyLiteralOrder2() {
    return 1.0f;
}

static f32 dummyLiteralOrder3(s32 hours) {
    return hours;
}

/* 801ADE00-801ADEA0 1A8740 00A0+00 1/0 0/0 0/0 .text            dKyeff_Create__FP12kankyo_class */
static int dKyeff_Create(kankyo_class* i_this) {
    OSCalendarTime time;

    dKyw_wether_init();
    if (!strcmp(dComIfGp_getStartStageName(), "Name")) {
        OSTicksToCalendarTime(OSGetTime(), &time);
        g_env_light.mWind.vec.set(1.0f, 0.0f, 0.0f);
        g_env_light.mWind.pow = 0.7f;
        g_env_light.mDaytime = time.hours * 15.0f;
    }

    return cPhs_COMPLEATE_e;
}

/* ############################################################################################## */
/* 803BC158-803BC16C -00001 0014+00 1/0 0/0 0/0 .data            l_dKyeff_Method */
static leafdraw_method_class l_dKyeff_Method = {
    (process_method_func)dKyeff_Create,  (process_method_func)dKyeff_Delete,
    (process_method_func)dKyeff_Execute, (process_method_func)dKyeff_IsDelete,
    (process_method_func)dKyeff_Draw,
};

/* 803BC16C-803BC198 -00001 0028+04 0/0 0/0 1/0 .data            g_profile_KYEFF */
extern kankyo_process_profile_definition g_profile_KYEFF = {
    -3,
    12,
    0xFFFD,
    PROC_KYEFF,
    &g_fpcLf_Method.mBase,
    sizeof(dKyeff_c),
    0,
    0,
    &g_fopKy_Method,
    0x0005,
    &l_dKyeff_Method,
};
