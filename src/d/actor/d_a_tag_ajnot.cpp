/**
 * d_a_tag_ajnot.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_ajnot.h"
#include "d/actor/d_a_player.h"
#include "d/d_procname.h"

/* 805A2658-805A26A8 000078 0050+00 1/1 0/0 0/0 .text            create__12daTagAJnot_cFv */
int daTagAJnot_c::create() {
    fopAcM_SetupActor(this, daTagAJnot_c);
    return cPhs_COMPLEATE_e;
}

/* 805A26A8-805A26C8 0000C8 0020+00 1/0 0/0 0/0 .text            daTagAJnot_Create__FP10fopAc_ac_c
 */
static int daTagAJnot_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagAJnot_c*>(i_this)->create();
}

/* 805A26C8-805A271C 0000E8 0054+00 1/1 0/0 0/0 .text            __dt__12daTagAJnot_cFv */
daTagAJnot_c::~daTagAJnot_c() {}

/* 805A271C-805A2744 00013C 0028+00 1/0 0/0 0/0 .text            daTagAJnot_Delete__FP12daTagAJnot_c
 */
static int daTagAJnot_Delete(daTagAJnot_c* i_this) {
    i_this->~daTagAJnot_c();
    return 1;
}

/* 805A2744-805A2850 000164 010C+00 1/1 0/0 0/0 .text            execute__12daTagAJnot_cFv */
int daTagAJnot_c::execute() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 y_dist_to_player = player->current.pos.y - current.pos.y;

    if (y_dist_to_player >= 0.0f && y_dist_to_player <= scale.y * 100.0f &&
        player->current.pos.abs2XZ(current.pos) <= scale.x * (10000.0f * scale.x))
    {
        int prm = (fopAcM_GetParam(this) & 0xF);

        if (prm == 1) {
            player->onForceAutoJump();
        } else {
            player->onNotAutoJump();

            if (prm == 15) {
                player->onNotHang();
            }
        }
    }

    return 1;
}

/* 805A2850-805A2870 000270 0020+00 1/0 0/0 0/0 .text daTagAJnot_Execute__FP12daTagAJnot_c */
static int daTagAJnot_Execute(daTagAJnot_c* i_this) {
    return i_this->execute();
}

/* 805A2870-805A2878 000290 0008+00 1/0 0/0 0/0 .text            daTagAJnot_Draw__FP12daTagAJnot_c
 */
static int daTagAJnot_Draw(daTagAJnot_c* i_this) {
    return 1;
}

/* ############################################################################################## */
/* 805A288C-805A28AC -00001 0020+00 1/0 0/0 0/0 .data            l_daTagAJnot_Method */
static actor_method_class l_daTagAJnot_Method = {
    (process_method_func)daTagAJnot_Create,  (process_method_func)daTagAJnot_Delete,
    (process_method_func)daTagAJnot_Execute, (process_method_func)NULL,
    (process_method_func)daTagAJnot_Draw,
};

/* 805A28AC-805A28DC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_AJnot */
extern actor_process_profile_definition g_profile_Tag_AJnot = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Tag_AJnot,
    &g_fpcLf_Method.base,
    sizeof(daTagAJnot_c),
    0,
    0,
    &g_fopAc_Method.base,
    436,
    &l_daTagAJnot_Method,
    0x44000,
    fopAc_ENV_e,
    fopAc_CULLBOX_CUSTOM_e,
};
