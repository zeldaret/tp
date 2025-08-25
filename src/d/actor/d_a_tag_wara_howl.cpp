/**
 * d_a_tag_wara_howl.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_wara_howl.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80D63F38-80D63F74 000078 003C+00 2/2 0/0 0/0 .text            __ct__13daTagWrHowl_cFv */
daTagWrHowl_c::daTagWrHowl_c() {}

/* 80D63F74-80D63FD4 0000B4 0060+00 1/0 0/0 0/0 .text            __dt__13daTagWrHowl_cFv */
daTagWrHowl_c::~daTagWrHowl_c() {}

/* 80D63FD4-80D6402C 000114 0058+00 1/1 0/0 0/0 .text            create__13daTagWrHowl_cFv */
int daTagWrHowl_c::create() {
    fopAcM_SetupActor(this, daTagWrHowl_c);
    init();
    return cPhs_COMPLEATE_e;
}

/* 80D6402C-80D64034 00016C 0008+00 1/1 0/0 0/0 .text            Delete__13daTagWrHowl_cFv */
int daTagWrHowl_c::Delete() {
    return 1;
}

/* 80D64034-80D6403C 000174 0008+00 1/1 0/0 0/0 .text            draw__13daTagWrHowl_cFv */
int daTagWrHowl_c::draw() {
    return 1;
}

/* 80D6403C-80D64090 00017C 0054+00 1/1 0/0 0/0 .text            execute__13daTagWrHowl_cFv */
int daTagWrHowl_c::execute() {
    attention_info.flags = 0;

    if (chkWlfInTag()) {
        attention_info.flags |= 0x80;
        attention_info.distances[fopAc_attn_ETC_e] = 65;
    }

    return 1;
}

/* 80D64090-80D640B4 0001D0 0024+00 1/1 0/0 0/0 .text            init__13daTagWrHowl_cFv */
void daTagWrHowl_c::init() {
    field_0x56c = 50.0f * scale.x;
    field_0x570 = field_0x56c * field_0x56c;
}

/* 80D640B4-80D64144 0001F4 0090+00 1/1 0/0 0/0 .text            chkWlfInTag__13daTagWrHowl_cFv */
bool daTagWrHowl_c::chkWlfInTag() {
    if (dComIfGp_getPlayer(0) == NULL) {
        return false;
    }

    if (daPy_py_c::checkNowWolf()) {
        cXyz player_pos = dComIfGp_getPlayer(0)->current.pos;
        if (player_pos.abs2(current.pos) < field_0x570) {
            return true;
        }
    }

    return false;
}

/* 80D64144-80D64198 000284 0054+00 1/0 0/0 0/0 .text daTagWrHowl_create__FP13daTagWrHowl_c */
static int daTagWrHowl_create(daTagWrHowl_c* i_this) {
    fopAcM_SetupActor(i_this, daTagWrHowl_c);
    return i_this->create();
}

/* 80D64198-80D641B8 0002D8 0020+00 1/0 0/0 0/0 .text daTagWrHowl_Delete__FP13daTagWrHowl_c */
static int daTagWrHowl_Delete(daTagWrHowl_c* i_this) {
    return i_this->Delete();
}

/* 80D641B8-80D641D8 0002F8 0020+00 1/0 0/0 0/0 .text daTagWrHowl_execute__FP13daTagWrHowl_c */
static int daTagWrHowl_execute(daTagWrHowl_c* i_this) {
    return i_this->execute();
}

/* 80D641D8-80D641F8 000318 0020+00 1/0 0/0 0/0 .text            daTagWrHowl_draw__FP13daTagWrHowl_c
 */
static int daTagWrHowl_draw(daTagWrHowl_c* i_this) {
    return i_this->draw();
}

/* ############################################################################################## */
/* 80D64204-80D64224 -00001 0020+00 1/0 0/0 0/0 .data            daTagWrHowl_METHODS */
static actor_method_class daTagWrHowl_METHODS = {
    (process_method_func)daTagWrHowl_create,  (process_method_func)daTagWrHowl_Delete,
    (process_method_func)daTagWrHowl_execute, (process_method_func)NULL,
    (process_method_func)daTagWrHowl_draw,
};

/* 80D64224-80D64254 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_WaraHowl */
extern actor_process_profile_definition g_profile_Tag_WaraHowl = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Tag_WaraHowl,
    &g_fpcLf_Method.base,
    sizeof(daTagWrHowl_c),
    0,
    0,
    &g_fopAc_Method.base,
    733,
    &daTagWrHowl_METHODS,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
