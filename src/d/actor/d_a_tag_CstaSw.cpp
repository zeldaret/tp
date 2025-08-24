/**
 * d_a_tag_CstaSw.cpp
 * Overworld Statue switch trigger
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_CstaSw.h"
#include "d/d_procname.h"

/* 805A202C-805A2050 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__17daTagCstaSw_HIO_cFv */
daTagCstaSw_HIO_c::daTagCstaSw_HIO_c() {
    unk_0x4 = 0;
}

/* 805A2098-805A20F0 000158 0058+00 1/1 0/0 0/0 .text            setBaseMtx__13daTagCstaSw_cFv */
void daTagCstaSw_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
}

/* 805A20F0-805A2150 0001B0 0060+00 1/1 0/0 0/0 .text            create__13daTagCstaSw_cFv */
int daTagCstaSw_c::create() {
    fopAcM_SetupActor(this, daTagCstaSw_c);
    mSwitch = getSw();
    setBaseMtx();
    return cPhs_COMPLEATE_e;
}

/* 805A2150-805A21A0 000210 0050+00 1/1 0/0 0/0 .text searchSekizoAct__13daTagCstaSw_cFPvPv */
fopAc_ac_c* daTagCstaSw_c::searchSekizoAct(void* i_actor, void*) {
    if (i_actor && fopAcM_IsActor(i_actor) && fopAcM_GetProfName(i_actor) == PROC_CSTAF) {
        return (fopAc_ac_c*)i_actor;
    }
    return NULL;
}

/* 805A21A0-805A2340 000260 01A0+00 1/1 0/0 0/0 .text            areaCheck__13daTagCstaSw_cFv */
bool daTagCstaSw_c::areaCheck() {
    bool in_area = false;

    fopAc_ac_c* sekizo_p = fopAcM_Search((fopAcIt_JudgeFunc)searchSekizoAct, this);
    if (!sekizo_p) {
        return false;
    }

    cXyz vec_to_actor = current.pos - sekizo_p->current.pos;
    if (vec_to_actor.absXZ() <= scale.x * 100.0f) {
        in_area = true;
    }

    return in_area;
}

/* 805A2340-805A23F0 000400 00B0+00 1/1 0/0 0/0 .text            Execute__13daTagCstaSw_cFv */
int daTagCstaSw_c::Execute() {
    if (areaCheck() == 1) {
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

/* 805A23F0-805A23F8 0004B0 0008+00 1/1 0/0 0/0 .text            Draw__13daTagCstaSw_cFv */
int daTagCstaSw_c::Draw() {
    return 1;
}

/* 805A23F8-805A2400 0004B8 0008+00 1/1 0/0 0/0 .text            Delete__13daTagCstaSw_cFv */
int daTagCstaSw_c::Delete() {
    return 1;
}

/* 805A2400-805A2420 0004C0 0020+00 1/0 0/0 0/0 .text            daTagCstaSw_Draw__FP13daTagCstaSw_c
 */
static int daTagCstaSw_Draw(daTagCstaSw_c* i_this) {
    return i_this->Draw();
}

/* 805A2420-805A2440 0004E0 0020+00 1/0 0/0 0/0 .text daTagCstaSw_Execute__FP13daTagCstaSw_c */
static int daTagCstaSw_Execute(daTagCstaSw_c* i_this) {
    return i_this->Execute();
}

/* 805A2440-805A2460 000500 0020+00 1/0 0/0 0/0 .text daTagCstaSw_Delete__FP13daTagCstaSw_c */
static int daTagCstaSw_Delete(daTagCstaSw_c* i_this) {
    return i_this->Delete();
}

/* 805A2460-805A2480 000520 0020+00 1/0 0/0 0/0 .text            daTagCstaSw_Create__FP10fopAc_ac_c
 */
static int daTagCstaSw_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagCstaSw_c*>(i_this)->create();
}

/* 805A2480-805A24DC 000540 005C+00 2/1 0/0 0/0 .text            __dt__17daTagCstaSw_HIO_cFv */
daTagCstaSw_HIO_c::~daTagCstaSw_HIO_c() {}

/* 805A25CC-805A25D4 000014 0008+00 1/1 0/0 0/0 .bss             l_HIO */
static daTagCstaSw_HIO_c l_HIO;

/* ############################################################################################## */
/* 805A2550-805A2570 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagCstaSw_Method */
static actor_method_class l_daTagCstaSw_Method = {
    (process_method_func)daTagCstaSw_Create,  (process_method_func)daTagCstaSw_Delete,
    (process_method_func)daTagCstaSw_Execute, (process_method_func)NULL,
    (process_method_func)daTagCstaSw_Draw,
};

/* 805A2570-805A25A0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_CstaSw */
extern actor_process_profile_definition g_profile_Tag_CstaSw = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_Tag_CstaSw,        // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daTagCstaSw_c),  // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    657,                    // mPriority
    &l_daTagCstaSw_Method,  // sub_method
    0x44000,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_CUSTOM_e, // cullType
};
