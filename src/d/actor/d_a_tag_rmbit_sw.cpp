/**
 * d_a_tag_rmbit_sw.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_rmbit_sw.h"
#include "d/d_procname.h"

/* 80D5FAF8-80D5FB34 000078 003C+00 2/2 0/0 0/0 .text            __ct__14daTagRmbitSw_cFv */
daTagRmbitSw_c::daTagRmbitSw_c() {}

/* 80D5FB34-80D5FB94 0000B4 0060+00 1/0 0/0 0/0 .text            __dt__14daTagRmbitSw_cFv */
daTagRmbitSw_c::~daTagRmbitSw_c() {}

/* 80D5FB94-80D5FBEC 000114 0058+00 1/1 0/0 0/0 .text            create__14daTagRmbitSw_cFv */
int daTagRmbitSw_c::create() {
    fopAcM_SetupActor(this, daTagRmbitSw_c);
    init();
    return cPhs_COMPLEATE_e;
}

/* 80D5FBEC-80D5FBF4 00016C 0008+00 1/1 0/0 0/0 .text            Delete__14daTagRmbitSw_cFv */
int daTagRmbitSw_c::Delete() {
    return 1;
}

/* 80D5FBF4-80D5FBFC 000174 0008+00 1/1 0/0 0/0 .text            draw__14daTagRmbitSw_cFv */
int daTagRmbitSw_c::draw() {
    return 1;
}

/* 80D5FBFC-80D5FDB8 00017C 01BC+00 1/1 0/0 0/0 .text            execute__14daTagRmbitSw_cFv */
int daTagRmbitSw_c::execute() {
    if (chkPlyrInTag()) {
        if (getArg3_CngBitFlg() == 1) {
            if ((s32)getSwBit() == 0xff || fopAcM_isSwitch(this, getSwBit())) {
                if (getArg2_CngBitVal() == 1) {
                    if (getArg0_RoomSaveTableNo() == -1) {
                        dComIfGs_onVisitedRoom(getArg1_RoomNo());
                    } else {
                        dComIfGs_onSaveVisitedRoom(getArg0_RoomSaveTableNo(), getArg1_RoomNo());
                    }
                } else {
                    if (!getArg2_CngBitVal()) {
                        if (getArg0_RoomSaveTableNo() == -1) {
                            dComIfGs_offVisitedRoom(getArg1_RoomNo());
                        } else {
                            dComIfGs_offSaveVisitedRoom(getArg0_RoomSaveTableNo(),
                                                        getArg1_RoomNo());
                        }
                    }
                }
            }
        } else {
            if (!getArg3_CngBitFlg()) {
                if ((s32)getSwBit() == 0xff || !fopAcM_isSwitch(this, getSwBit())) {
                    if (getArg2_CngBitVal() == 1) {
                        if (getArg0_RoomSaveTableNo() == -1) {
                            dComIfGs_onVisitedRoom(getArg1_RoomNo());
                        } else {
                            dComIfGs_onSaveVisitedRoom(getArg0_RoomSaveTableNo(), getArg1_RoomNo());
                        }
                    } else {
                        if (!getArg2_CngBitVal()) {
                            if (getArg0_RoomSaveTableNo() == -1) {
                                dComIfGs_offVisitedRoom(getArg1_RoomNo());
                            } else {
                                dComIfGs_offSaveVisitedRoom(getArg0_RoomSaveTableNo(),
                                                            getArg1_RoomNo());
                            }
                        }
                    }
                }
            }
        }
    }
    return 1;
}

/* 80D5FDB8-80D5FDF0 000338 0038+00 1/1 0/0 0/0 .text            init__14daTagRmbitSw_cFv */
void daTagRmbitSw_c::init() {
    field_0x56c = scale.x * 50.0f;
    field_0x570 = scale.y * 100.0f;
    field_0x574 = scale.z * 50.0f;
}

/* 80D5FDF0-80D5FEEC 000370 00FC+00 1/1 0/0 0/0 .text            chkPlyrInTag__14daTagRmbitSw_cFv */
u8 daTagRmbitSw_c::chkPlyrInTag() {
    fopAc_ac_c* fopPos = dComIfGp_getPlayer(0);

    if (!fopPos) {
        return 0;
    } else {
        cXyz cPos = fopPos->current.pos - current.pos;
        mDoMtx_stack_c::YrotS(-current.angle.y);
        mDoMtx_stack_c::multVec(&cPos, &cPos);
        if ((0.0f < cPos.y) && (field_0x570 > cPos.y) && (field_0x56c > cPos.x) &&
            (field_0x574 > cPos.z) && (-field_0x56c < cPos.x) && (-field_0x574 < cPos.z))
        {
            return 1;
        }
    }
    return 0;
}

/* 80D5FEEC-80D5FF40 00046C 0054+00 1/0 0/0 0/0 .text daTagRmbitSw_create__FP14daTagRmbitSw_c */
int daTagRmbitSw_create(daTagRmbitSw_c* i_this) {
    fopAcM_SetupActor(i_this, daTagRmbitSw_c);
    return i_this->create();
}

/* 80D5FF40-80D5FF60 0004C0 0020+00 1/0 0/0 0/0 .text daTagRmbitSw_Delete__FP14daTagRmbitSw_c */
static int daTagRmbitSw_Delete(daTagRmbitSw_c* i_this) {
    return i_this->Delete();
}

/* 80D5FF60-80D5FF80 0004E0 0020+00 1/0 0/0 0/0 .text daTagRmbitSw_execute__FP14daTagRmbitSw_c */
static int daTagRmbitSw_execute(daTagRmbitSw_c* i_this) {
    return i_this->execute();
}

/* 80D5FF80-80D5FFA0 000500 0020+00 1/0 0/0 0/0 .text daTagRmbitSw_draw__FP14daTagRmbitSw_c */
static int daTagRmbitSw_draw(daTagRmbitSw_c* i_this) {
    return i_this->draw();
}

/* ############################################################################################## */
/* 80D5FFB4-80D5FFD4 -00001 0020+00 1/0 0/0 0/0 .data            daTagRmbitSw_METHODS */
static actor_method_class daTagRmbitSw_METHODS = {
    (process_method_func)daTagRmbitSw_create,  (process_method_func)daTagRmbitSw_Delete,
    (process_method_func)daTagRmbitSw_execute, (process_method_func)NULL,
    (process_method_func)daTagRmbitSw_draw,

};

/* 80D5FFD4-80D60004 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_RmbitSw */
extern actor_process_profile_definition g_profile_Tag_RmbitSw = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Tag_RmbitSw,
    &g_fpcLf_Method.base,
    sizeof(daTagRmbitSw_c),
    0,
    0,
    &g_fopAc_Method.base,
    748,
    &daTagRmbitSw_METHODS,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
