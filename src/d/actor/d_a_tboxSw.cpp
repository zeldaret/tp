/**
 * d_a_tboxSw.cpp
 * Turns on a switch when a treasure chest is opened
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tboxSw.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80D66858-80D66860 000078 0008+00 1/1 0/0 0/0 .text            Create__10daTboxSw_cFv */
int daTboxSw_c::Create() {
    return 1;
}

/* 80D66860-80D668C8 000080 0068+00 1/1 0/0 0/0 .text            create__10daTboxSw_cFv */
int daTboxSw_c::create() {
    fopAcM_SetupActor(this, daTboxSw_c);

    if (!Create()) {
        return cPhs_ERROR_e;
    }

    return cPhs_COMPLEATE_e;
}

/* 80D668C8-80D66938 0000E8 0070+00 1/1 0/0 0/0 .text            execute__10daTboxSw_cFv */
int daTboxSw_c::execute() {
    if (dComIfGs_isTbox(daTboxSw_prm::getTboxNo(this))) {
        dComIfGs_onSwitch(daTboxSw_prm::getSwNo(this), fopAcM_GetHomeRoomNo(this));
        fopAcM_delete(this);
    }

    return 1;
}

/* 80D66938-80D66940 000158 0008+00 1/1 0/0 0/0 .text            draw__10daTboxSw_cFv */
int daTboxSw_c::draw() {
    return 1;
}

/* 80D66940-80D66948 000160 0008+00 1/1 0/0 0/0 .text            _delete__10daTboxSw_cFv */
int daTboxSw_c::_delete() {
    return 1;
}

/* 80D66948-80D66968 000168 0020+00 1/0 0/0 0/0 .text            daTboxSw_Draw__FP10daTboxSw_c */
static int daTboxSw_Draw(daTboxSw_c* i_this) {
    return i_this->draw();
}

/* 80D66968-80D66988 000188 0020+00 1/0 0/0 0/0 .text            daTboxSw_Execute__FP10daTboxSw_c */
static int daTboxSw_Execute(daTboxSw_c* i_this) {
    return i_this->execute();
}

/* 80D66988-80D669A8 0001A8 0020+00 1/0 0/0 0/0 .text            daTboxSw_Delete__FP10daTboxSw_c */
static int daTboxSw_Delete(daTboxSw_c* i_this) {
    return i_this->_delete();
}

/* 80D669A8-80D669C8 0001C8 0020+00 1/0 0/0 0/0 .text            daTboxSw_Create__FP10fopAc_ac_c */
static int daTboxSw_Create(fopAc_ac_c* i_this) {
    return static_cast<daTboxSw_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 80D669D0-80D669F0 -00001 0020+00 1/0 0/0 0/0 .data            l_daTboxSw_Method */
static actor_method_class l_daTboxSw_Method = {
    (process_method_func)daTboxSw_Create,  (process_method_func)daTboxSw_Delete,
    (process_method_func)daTboxSw_Execute, (process_method_func)NULL,
    (process_method_func)daTboxSw_Draw,
};

/* 80D669F0-80D66A20 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TBOX_SW */
extern actor_process_profile_definition g_profile_TBOX_SW = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_TBOX_SW,
    &g_fpcLf_Method.base,
    sizeof(daTboxSw_c),
    0,
    0,
    &g_fopAc_Method.base,
    526,
    &l_daTboxSw_Method,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
