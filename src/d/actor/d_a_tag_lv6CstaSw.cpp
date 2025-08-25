/**
 * d_a_tag_lv6CstaSw.cpp
 * Temple of Time Statue switch trigger
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_lv6CstaSw.h"
#include "d/d_procname.h"

/* 80D5B2EC-80D5B310 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__17daLv6CstaSw_HIO_cFv */
daLv6CstaSw_HIO_c::daLv6CstaSw_HIO_c() {
    unk_0x4 = 0;
}

/* 80D5B358-80D5B3B0 000158 0058+00 1/1 0/0 0/0 .text            setBaseMtx__13daLv6CstaSw_cFv */
void daLv6CstaSw_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
}

/* 80D5B3B0-80D5B410 0001B0 0060+00 1/1 0/0 0/0 .text            create__13daLv6CstaSw_cFv */
int daLv6CstaSw_c::create() {
    fopAcM_SetupActor(this, daLv6CstaSw_c);
    mSwitch = getSw();
    setBaseMtx();
    return cPhs_COMPLEATE_e;
}

/* 80D5B410-80D5B460 000210 0050+00 1/1 0/0 0/0 .text searchSekizoAct__13daLv6CstaSw_cFPvPv */
fopAc_ac_c* daLv6CstaSw_c::searchSekizoAct(void* i_actor, void*) {
    if (i_actor != NULL && fopAcM_IsActor(i_actor) && fopAcM_GetProfName(i_actor) == PROC_CSTATUE) {
        return (fopAc_ac_c*)i_actor;
    }

    return NULL;
}

/* 80D5B460-80D5B600 000260 01A0+00 1/1 0/0 0/0 .text            areaCheck__13daLv6CstaSw_cFv */
bool daLv6CstaSw_c::areaCheck() {
    bool in_area = false;

    fopAc_ac_c* sekizo_p = fopAcM_Search((fopAcIt_JudgeFunc)searchSekizoAct, this);
    if (sekizo_p == NULL) {
        return false;
    }

    cXyz vec_to_actor = current.pos - sekizo_p->current.pos;
    if (vec_to_actor.absXZ() <= scale.x * 100.0f) {
        in_area = true;
    }

    return in_area;
}

/* 80D5B600-80D5B6B0 000400 00B0+00 1/1 0/0 0/0 .text            Execute__13daLv6CstaSw_cFv */
int daLv6CstaSw_c::Execute() {
    if (areaCheck() == true) {
        if (!fopAcM_isSwitch(this, mSwitch)) {
            fopAcM_onSwitch(this, mSwitch);
        }
    } else {
        if (fopAcM_isSwitch(this, mSwitch)) {
            fopAcM_offSwitch(this, mSwitch);
        }
    }

    return 1;
}

/* 80D5B6B0-80D5B6B8 0004B0 0008+00 1/1 0/0 0/0 .text            Draw__13daLv6CstaSw_cFv */
int daLv6CstaSw_c::Draw() {
    return 1;
}

/* 80D5B6B8-80D5B6C0 0004B8 0008+00 1/1 0/0 0/0 .text            Delete__13daLv6CstaSw_cFv */
int daLv6CstaSw_c::Delete() {
    return 1;
}

/* 80D5B6C0-80D5B6E0 0004C0 0020+00 1/0 0/0 0/0 .text            daLv6CstaSw_Draw__FP13daLv6CstaSw_c
 */
static int daLv6CstaSw_Draw(daLv6CstaSw_c* i_this) {
    return i_this->Draw();
}

/* 80D5B6E0-80D5B700 0004E0 0020+00 1/0 0/0 0/0 .text daLv6CstaSw_Execute__FP13daLv6CstaSw_c */
static int daLv6CstaSw_Execute(daLv6CstaSw_c* i_this) {
    return i_this->Execute();
}

/* 80D5B700-80D5B720 000500 0020+00 1/0 0/0 0/0 .text daLv6CstaSw_Delete__FP13daLv6CstaSw_c */
static int daLv6CstaSw_Delete(daLv6CstaSw_c* i_this) {
    return i_this->Delete();
}

/* 80D5B720-80D5B740 000520 0020+00 1/0 0/0 0/0 .text            daLv6CstaSw_Create__FP10fopAc_ac_c
 */
static int daLv6CstaSw_Create(fopAc_ac_c* i_this) {
    return static_cast<daLv6CstaSw_c*>(i_this)->create();
}

/* 80D5B740-80D5B79C 000540 005C+00 2/1 0/0 0/0 .text            __dt__17daLv6CstaSw_HIO_cFv */
daLv6CstaSw_HIO_c::~daLv6CstaSw_HIO_c() {}

/* 80D5B88C-80D5B894 000014 0008+00 1/1 0/0 0/0 .bss             l_HIO */
static daLv6CstaSw_HIO_c l_HIO;

/* ############################################################################################## */
/* 80D5B810-80D5B830 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv6CstaSw_Method */
static actor_method_class l_daLv6CstaSw_Method = {
    (process_method_func)daLv6CstaSw_Create,  (process_method_func)daLv6CstaSw_Delete,
    (process_method_func)daLv6CstaSw_Execute, (process_method_func)NULL,
    (process_method_func)daLv6CstaSw_Draw,
};

/* 80D5B830-80D5B860 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Lv6CstaSw */
extern actor_process_profile_definition g_profile_Tag_Lv6CstaSw = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Tag_Lv6CstaSw,
    &g_fpcLf_Method.base,
    sizeof(daLv6CstaSw_c),
    0,
    0,
    &g_fopAc_Method.base,
    658,
    &l_daLv6CstaSw_Method,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
