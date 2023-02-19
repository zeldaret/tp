/**
 * d_a_tag_hinit.cpp
 *
 */

#include "rel/d/a/tag/d_a_tag_hinit/d_a_tag_hinit.h"

/* 805A3758-805A3800 000078 00A8+00 1/1 0/0 0/0 .text            create__12daTagHinit_cFv */
int daTagHinit_c::create() {
    if (!fopAcM_CheckCondition(this, 8)) {
        new (this) daTagHinit_c();
        fopAcM_OnCondition(this, 8);
    }

    field_0x569 = shape_angle.x;

    if (field_0x569 != 0xFF && i_fopAcM_isSwitch(this, field_0x569)) {
        return cPhs_ERROR_e;
    }

    field_0x568 = (shape_angle.x >> 8) & 0xFF;
    field_0x56c = fopAcM_GetParam(this);
    field_0x56e = (fopAcM_GetParam(this) >> 0x10);

    return cPhs_COMPLEATE_e;
}

/* 805A3800-805A3820 000120 0020+00 1/0 0/0 0/0 .text            daTagHinit_Create__FP10fopAc_ac_c
 */
static int daTagHinit_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagHinit_c*>(i_this)->create();
}

/* 805A3820-805A3874 000140 0054+00 1/1 0/0 0/0 .text            __dt__12daTagHinit_cFv */
daTagHinit_c::~daTagHinit_c() {}

/* 805A3874-805A389C 000194 0028+00 1/0 0/0 0/0 .text            daTagHinit_Delete__FP12daTagHinit_c
 */
static int daTagHinit_Delete(daTagHinit_c* i_this) {
    i_this->~daTagHinit_c();
    return 1;
}

/* 805A389C-805A39B8 0001BC 011C+00 1/1 0/0 0/0 .text            execute__12daTagHinit_cFv */
int daTagHinit_c::execute() {
    if ((field_0x56c == 0xFFFF ||
         i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[field_0x56c])) &&
        (field_0x56e == 0xFFFF ||
         !i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[field_0x56e])) &&
        (field_0x568 == 0xFF || i_fopAcM_isSwitch(this, field_0x568)))
    {
        if (field_0x569 != 0xFF) {
            i_fopAcM_onSwitch(this, field_0x569);
        }

        daHorse_c* horse = i_dComIfGp_getHorseActor();
        horse->i_setHorsePosAndAngle(&current.pos, shape_angle.y);
        horse->offNoDrawWait();
        fopAcM_delete(this);
    }

    return 1;
}

/* 805A39B8-805A39D8 0002D8 0020+00 1/0 0/0 0/0 .text daTagHinit_Execute__FP12daTagHinit_c */
static int daTagHinit_Execute(daTagHinit_c* i_this) {
    return i_this->execute();
}

/* 805A39D8-805A39E0 0002F8 0008+00 1/0 0/0 0/0 .text            daTagHinit_Draw__FP12daTagHinit_c
 */
static int daTagHinit_Draw(daTagHinit_c*) {
    return 1;
}

/* ############################################################################################## */
/* 805A39E8-805A3A08 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagHinit_Method */
static actor_method_class l_daTagHinit_Method = {
    (process_method_func)daTagHinit_Create,  (process_method_func)daTagHinit_Delete,
    (process_method_func)daTagHinit_Execute, (process_method_func)NULL,
    (process_method_func)daTagHinit_Draw,

};

/* 805A3A08-805A3A38 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Hinit */
extern actor_process_profile_definition g_profile_Tag_Hinit = {
    -3,
    3,
    -3,
    PROC_Tag_Hinit,
    0,
    &g_fpcLf_Method.mBase,
    sizeof(daTagHinit_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x01B1,
    0,
    0,
    &l_daTagHinit_Method,
    0x00060000,
    3,
    0x0E,
    0,
    0,
};
