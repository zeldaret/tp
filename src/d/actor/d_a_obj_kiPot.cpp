/**
* @file d_a_obj_kiPot.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_kiPot.h"
#include "d/d_com_inf_game.h"

static daKiPot_HIO_c l_HIO;

/* 80C451A4-80C451BC 000000 0018+00 1/1 0/0 0/0 .data            l_cull_box */
static cull_box l_cull_box = {
    {-50.0f, 0.0f, -50.0f},
    {50.0f, 100.0f, 50.0f},
};

/* 80C44D0C-80C44D30 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__13daKiPot_HIO_cFv */
daKiPot_HIO_c::daKiPot_HIO_c() {
    field_0x06 = 0x14;
}

/* 80C44D78-80C44DD0 000158 0058+00 2/2 0/0 0/0 .text            setBaseMtx__9daKiPot_cFv */
void daKiPot_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
}

/* 80C44DD0-80C44E7C 0001B0 00AC+00 1/1 0/0 0/0 .text            create__9daKiPot_cFv */
int daKiPot_c::create() {
    fopAcM_SetupActor(this, daKiPot_c);

    setBaseMtx();

    f32 min_x = l_cull_box.min.x * scale.x;
    f32 min_y = l_cull_box.min.y * scale.y;
    f32 min_z = l_cull_box.min.z * scale.x;
    f32 max_x = l_cull_box.max.x * scale.x;
    f32 max_y = l_cull_box.max.y * scale.y;
    fopAcM_setCullSizeBox(this, min_x, min_y, min_z, max_x, max_y, max_y);

    field_0x575 = 0;
    init_modeWait();

    return cPhs_COMPLEATE_e;
}

/* 80C44E7C-80C44EF8 00025C 007C+00 1/1 0/0 0/0 .text            Execute__9daKiPot_cFv */
int daKiPot_c::Execute() {
    procMain();
    attention_info.position = current.pos;
    attention_info.position.y += 150.0f;
    eyePos = current.pos;
    setBaseMtx();
    return 1;
}

/* 80C44EF8-80C44F74 0002D8 007C+00 1/1 0/0 0/0 .text            procMain__9daKiPot_cFv */
void daKiPot_c::procMain() {
    typedef void (daKiPot_c::*modeProcessFunc)();
    static modeProcessFunc mode_proc[] = {
        &daKiPot_c::modeWait,
    };

    (this->*mode_proc[mMode])();
}

/* 80C44F74-80C44F80 000354 000C+00 1/1 0/0 0/0 .text            init_modeWait__9daKiPot_cFv */
void daKiPot_c::init_modeWait() {
    mMode = 0;
}

/* 80C44F80-80C45008 000360 0088+00 1/0 0/0 0/0 .text            modeWait__9daKiPot_cFv */
void daKiPot_c::modeWait() {
    if (chkEvent() && eventInfo.checkCommandCatch() == 0) {
        dComIfGp_att_CatchRequest(this, fpcNm_ITEM_UGLY_SOUP, 100.0f, 50.0f, -50.0f, 0x2000, 1);
        eventInfo.onCondition(dEvtCnd_40_e);
    }
}

/* 80C45008-80C45058 0003E8 0050+00 1/1 0/0 0/0 .text            chkEvent__9daKiPot_cFv */
s32 daKiPot_c::chkEvent() {
    s32 result = 1;

    if (!dComIfGp_getEvent().isOrderOK()) {
        result = 0;

        if (eventInfo.checkCommandCatch()) {
            return result;
        }
    }
    return result;
}

/* 80C45058-80C45060 000438 0008+00 1/1 0/0 0/0 .text            Draw__9daKiPot_cFv */
int daKiPot_c::Draw() {
    return 1;
}

/* 80C45060-80C45068 000440 0008+00 1/1 0/0 0/0 .text            Delete__9daKiPot_cFv */
int daKiPot_c::Delete() {
    return 1;
}

/* 80C45068-80C45088 000448 0020+00 1/0 0/0 0/0 .text            daKiPot_Draw__FP9daKiPot_c */
static int daKiPot_Draw(daKiPot_c* i_this) {
    return i_this->Draw();
}

/* 80C45088-80C450A8 000468 0020+00 1/0 0/0 0/0 .text            daKiPot_Execute__FP9daKiPot_c */
static int daKiPot_Execute(daKiPot_c* i_this) {
    return i_this->Execute();
}

/* 80C450A8-80C450C8 000488 0020+00 1/0 0/0 0/0 .text            daKiPot_Delete__FP9daKiPot_c */
static int daKiPot_Delete(daKiPot_c* i_this) {
    return i_this->Delete();
}

/* 80C450C8-80C450E8 0004A8 0020+00 1/0 0/0 0/0 .text            daKiPot_Create__FP10fopAc_ac_c */
static int daKiPot_Create(fopAc_ac_c* i_this) {
    return static_cast<daKiPot_c*>(i_this)->create();
}

/* 80C451D4-80C451F4 -00001 0020+00 1/0 0/0 0/0 .data            l_daKiPot_Method */
static actor_method_class l_daKiPot_Method = {
    (process_method_func)daKiPot_Create,  (process_method_func)daKiPot_Delete,
    (process_method_func)daKiPot_Execute, 0,
    (process_method_func)daKiPot_Draw,
};

/* 80C451F4-80C45224 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_KiPot */
extern actor_process_profile_definition g_profile_Obj_KiPot = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_KiPot,          // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daKiPot_c),       // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    517,                     // mPriority
    &l_daKiPot_Method,       // sub_method
    0x00044000,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
