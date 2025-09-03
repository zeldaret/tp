/**
 * d_a_tag_spring.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_spring.h"
#include "d/actor/d_a_player.h"
#include "d/d_procname.h"

/* 805A6A58-805A6A78 000078 0020+00 1/1 0/0 0/0 .text            initBaseMtx__13daTagSpring_cFv */
void daTagSpring_c::initBaseMtx() {
    setBaseMtx();
}

/* 805A6A78-805A6AD0 000098 0058+00 1/1 0/0 0/0 .text            setBaseMtx__13daTagSpring_cFv */
void daTagSpring_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
}

/* 805A6AD0-805A6AF4 0000F0 0024+00 1/1 0/0 0/0 .text            Create__13daTagSpring_cFv */
int daTagSpring_c::Create() {
    initBaseMtx();
    return 1;
}

/* 805A6AF4-805A6B5C 000114 0068+00 1/1 0/0 0/0 .text            create__13daTagSpring_cFv */
int daTagSpring_c::create() {
    fopAcM_SetupActor(this, daTagSpring_c);

    if (!Create()) {
        return cPhs_ERROR_e;
    }

    fopAcM_GetParam(this);
    return cPhs_COMPLEATE_e;
}

/* 805A6B5C-805A6C84 00017C 0128+00 1/1 0/0 0/0 .text            execute__13daTagSpring_cFv */
int daTagSpring_c::execute() {
    if (getSwbit() != 0xFF) {
        if (!fopAcM_isSwitch(this, getSwbit())) {
            return 1;
        }
    }

    if (dComIfGp_event_runCheck()) {
        return 1;
    }

    fopAc_ac_c* player_p = daPy_getPlayerActorClass();

    if (checkArea() && fopAcM_wt_c::waterCheck(&player_p->current.pos) &&
        (!dComIfGp_checkPlayerStatus0(0, 0x100000) &&
             fopAcM_wt_c::mWaterY > player_p->current.pos.y ||
         dComIfGp_checkPlayerStatus0(0, 0x100000)))
    {
        if (mTimer != 0) {
            mTimer--;
        } else {
            mTimer = 30;
            dComIfGp_setItemLifeCount(1.0f, 1);
        }
    } else {
        mTimer = 30;
    }

    return 1;
}

/* 805A6C84-805A6DFC 0002A4 0178+00 1/1 0/0 0/0 .text            checkArea__13daTagSpring_cFv */
u8 daTagSpring_c::checkArea() {
    fopAc_ac_c* player_p = daPy_getPlayerActorClass();
    return player_p->current.pos.absXZ(current.pos) < (scale.x * 1000);
}

/* 805A6DFC-805A6E04 00041C 0008+00 1/1 0/0 0/0 .text            _delete__13daTagSpring_cFv */
int daTagSpring_c::_delete() {
    return 1;
}

/* 805A6E04-805A6E24 000424 0020+00 1/0 0/0 0/0 .text daTagSpring_Execute__FP13daTagSpring_c */
static int daTagSpring_Execute(daTagSpring_c* i_this) {
    return i_this->execute();
}

/* 805A6E24-805A6E44 000444 0020+00 1/0 0/0 0/0 .text daTagSpring_Delete__FP13daTagSpring_c */
static int daTagSpring_Delete(daTagSpring_c* i_this) {
    return i_this->_delete();
}

/* 805A6E44-805A6E64 000464 0020+00 1/0 0/0 0/0 .text daTagSpring_Create__FP13daTagSpring_c */
static int daTagSpring_Create(daTagSpring_c* i_this) {
    return i_this->create();
}

/* ############################################################################################## */
/* 805A6E90-805A6EB0 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagSpring_Method */
static actor_method_class l_daTagSpring_Method = {
    (process_method_func)daTagSpring_Create,
    (process_method_func)daTagSpring_Delete,
    (process_method_func)daTagSpring_Execute,
    (process_method_func)NULL,
};

/* 805A6EB0-805A6EE0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Spring */
extern actor_process_profile_definition g_profile_Tag_Spring = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_Tag_Spring,        // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daTagSpring_c),  // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    587,                    // mPriority
    &l_daTagSpring_Method,  // sub_method
    0x40000,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_CUSTOM_e, // cullType
};
