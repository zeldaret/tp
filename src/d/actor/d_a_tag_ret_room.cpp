/**
 * d_a_tag_ret_room.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_ret_room.h"
#include "d/actor/d_a_player.h"

/* 80D5EE98-80D5EED4 000078 003C+00 2/2 0/0 0/0 .text   __ct__12daTagRetRm_cFv */
daTagRetRm_c::daTagRetRm_c() {}

/* 80D5EED4-80D5EF34 0000B4 0060+00 1/0 0/0 0/0 .text   __dt__12daTagRetRm_cFv */
daTagRetRm_c::~daTagRetRm_c() {}

/* 80D5EF34-80D5EF8C 000114 0058+00 1/1 0/0 0/0 .text   create__12daTagRetRm_cFv */
int daTagRetRm_c::create() {
    fopAcM_SetupActor(this, daTagRetRm_c);
    init();
    return cPhs_COMPLEATE_e;
}

/* 80D5EF8C-80D5EF94 00016C 0008+00 1/1 0/0 0/0 .text   Delete__12daTagRetRm_cFv */
int daTagRetRm_c::Delete() {
    return 1;
}

/* 80D5EF94-80D5EF9C 000174 0008+00 1/1 0/0 0/0 .text   draw__12daTagRetRm_cFv */
int daTagRetRm_c::draw() {
    return 1;
}

/* 80D5EF9C-80D5F010 00017C 0074+00 1/1 0/0 0/0 .text   execute__12daTagRetRm_cFv */
int daTagRetRm_c::execute() {
    if (field_0x578 != 0) {
        field_0x578--;

        if (field_0x578 == 0) {
            daPy_py_c::forceRestartRoom(1, 5, 0xc9);
        }
    } else {
        if (chkPlyrInTag()) {
            field_0x578 = 30;
        }
    }
    return 1;
}

/* 80D5F010-80D5F050 0001F0 0040+00 1/1 0/0 0/0 .text   init__12daTagRetRm_cFv */
void daTagRetRm_c::init() {
    field_0x56c = scale.x * 50;
    field_0x570 = scale.y * 100;
    field_0x574 = scale.z * 50;
    field_0x578 = 0;
}

/* 80D5F050-80D5F14C 000230 00FC+00 1/1 0/0 0/0 .text   chkPlyrInTag__12daTagRetRm_cFv */
u8 daTagRetRm_c::chkPlyrInTag() {
    cXyz pos;
    if (dComIfGp_getPlayer(0) == NULL) {
        return 0;
    } else {
        pos = daPy_getPlayerActorClass()->current.pos - current.pos;
        mDoMtx_stack_c::YrotS(-current.angle.y);
        mDoMtx_stack_c::multVec(&pos, &pos);
        if ((0 < pos.y) && (field_0x570 > pos.y) && (field_0x56c > pos.x) &&
            (field_0x574 > pos.z) && (-field_0x56c < pos.x) && (-field_0x574 < pos.z))
        {
            return 1;
        } else {
            return 0;
        }
    }
}

/* 80D5F14C-80D5F1A0 00032C 0054+00 1/0 0/0 0/0 .text   daTagRetRm_create__FP12daTagRetRm_c */
static int daTagRetRm_create(daTagRetRm_c* i_this) {
    fopAcM_SetupActor(i_this, daTagRetRm_c);
    return i_this->create();
}

/* 80D5F1A0-80D5F1C0 000380 0020+00 1/0 0/0 0/0 .text   daTagRetRm_Delete__FP12daTagRetRm_c */
static int daTagRetRm_Delete(daTagRetRm_c* i_this) {
    return i_this->Delete();
}

/* 80D5F1C0-80D5F1E0 0003A0 0020+00 1/0 0/0 0/0 .text   daTagRetRm_execute__FP12daTagRetRm_c */
static int daTagRetRm_execute(daTagRetRm_c* i_this) {
    return i_this->execute();
}

/* 80D5F1E0-80D5F200 0003C0 0020+00 1/0 0/0 0/0 .text   daTagRetRm_draw__FP12daTagRetRm_c */
static int daTagRetRm_draw(daTagRetRm_c* i_this) {
    return i_this->draw();
}

/* ############################################################################################## */
/* 80D5F214-80D5F234 -00001 0020+00 1/0 0/0 0/0 .data            daTagRetRm_METHODS */
static actor_method_class daTagRetRm_METHODS = {
    (process_method_func)daTagRetRm_create,  (process_method_func)daTagRetRm_Delete,
    (process_method_func)daTagRetRm_execute, (process_method_func)NULL,
    (process_method_func)daTagRetRm_draw,

};

/* 80D5F234-80D5F264 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_RetRoom */
extern actor_process_profile_definition g_profile_Tag_RetRoom = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_Tag_RetRoom,       // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daTagRetRm_c),   // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    731,                    // mPriority
    &daTagRetRm_METHODS,    // sub_method
    0x40000,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_CUSTOM_e, // cullType
};
