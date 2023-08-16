/**
 * d_a_obj_digholl.cpp
 * Object - Dig Hole
 */

#include "rel/d/a/obj/d_a_obj_digholl/d_a_obj_digholl.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/a/d_a_player.h"
#include "d/d_procname.h"
#include "f_op/f_op_actor_mng.h"

/* 80BDC618-80BDC73C 000078 0124+00 1/1 0/0 0/0 .text            create__14daObjDigholl_cFv */
int daObjDigholl_c::create() {
    SETUP_ACTOR(this, daObjDigholl_c);
    field_0x569 = fopAcM_GetParam(this);
    field_0x56a = fopAcM_GetParam(this) >> 8;
    field_0x56c = fopAcM_GetParam(this) >> 0x10 & 0xff;
    if (field_0x56c == 0xff) {
        field_0x56c = -1;
    }
    if (i_fopAcM_isSwitch(this, field_0x569)) {
        field_0x568 = 2;
        field_0x56b = 1;
    }
    fopAcM_SetMin(this, -60.0f, 0.0f, -100.0f);
    fopAcM_SetMax(this, 60.0f, 10.0f, 100.0f);
    mAttentionInfo.mPosition = current.pos;
    mEyePos = mAttentionInfo.mPosition;
    mAttentionInfo.field_0x0[7] = 0x20;
    return cPhs_COMPLEATE_e;
}

/* 80BDC73C-80BDC75C 00019C 0020+00 1/0 0/0 0/0 .text            daObjDigholl_Create__FP10fopAc_ac_c */
static int daObjDigholl_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjDigholl_c*>(i_this)->create();
}

/* 80BDC75C-80BDC7B0 0001BC 0054+00 1/1 0/0 0/0 .text            __dt__14daObjDigholl_cFv */
daObjDigholl_c::~daObjDigholl_c() {}

/* 80BDC7B0-80BDC7D8 000210 0028+00 1/0 0/0 0/0 .text daObjDigholl_Delete__FP14daObjDigholl_c */
static int daObjDigholl_Delete(daObjDigholl_c* i_this) {
    i_this->~daObjDigholl_c();
    return 1;
}

/* 80BDC7D8-80BDCAEC 000238 0314+00 1/1 0/0 0/0 .text            execute__14daObjDigholl_cFv */
int daObjDigholl_c::execute() {
    daPy_py_c* player = daPy_getLinkPlayerActorClass();
    if (player->i_checkNowWolf() &&
        (field_0x56a == 0xff || i_fopAcM_isSwitch(this, field_0x56a)) &&
        (f32)fabsf(current.pos.y - player->current.pos.y) < 40.0f)
    {
        mAttentionInfo.mFlags = 0x80;
    } else {
        mAttentionInfo.mFlags = 0;
    }
    if (field_0x568 == 1) {
        if (cLib_distanceAngleS(player->shape_angle.y, shape_angle.y) < 0x6000) {
            shape_angle.y = player->shape_angle.y + 0x10000 - 0x8000;
            current.angle.y = shape_angle.y;
        }
        i_fopAcM_onSwitch(this, field_0x569);

        if (i_dComIfGp_event_runCheck()) {
            if (player->getBaseAnimeFrame() > 35.0f) {
                field_0x56b = 1;
            }
        } else {
            field_0x568 = 2;
            field_0x56b = 1;
        }
    } else {
        if ((player->current.pos.abs2XZ(current.pos) < 250000.0f) &&
            (fabsf(current.pos.y - player->current.pos.y) < 200.0f))
        {
            daPy_py_c::setLookPos(&mAttentionInfo.mPosition);
        }
    }

    if (player->current.pos.abs(current.pos) < 1000.0f) {
        dComIfGp_particle_setSimple(0x70f, &current.pos, 0xff, g_whiteColor, g_whiteColor, NULL,
                                    0.0f);
        dComIfGp_particle_setSimple(0x73d, &current.pos, 0xff, g_whiteColor, g_whiteColor, NULL,
                                    0.0f);
    }

    return 1;
}

/* 80BDCAEC-80BDCB0C 00054C 0020+00 1/0 0/0 0/0 .text daObjDigholl_Execute__FP14daObjDigholl_c */
static int daObjDigholl_Execute(daObjDigholl_c* i_this) {
    return i_this->execute();
}

/* 80BDCB0C-80BDCB14 00056C 0008+00 1/1 0/0 0/0 .text            draw__14daObjDigholl_cFv */
int daObjDigholl_c::draw() {
    return 1;
}

/* 80BDCB14-80BDCB34 000574 0020+00 1/0 0/0 0/0 .text daObjDigholl_Draw__FP14daObjDigholl_c */
static int daObjDigholl_Draw(daObjDigholl_c* i_this) {
    return i_this->draw();
}

/* 80BDCB80-80BDCBA0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjDigholl_Method */
static actor_method_class l_daObjDigholl_Method = {
    (process_method_func)daObjDigholl_Create,  (process_method_func)daObjDigholl_Delete,
    (process_method_func)daObjDigholl_Execute, (process_method_func)NULL,
    (process_method_func)daObjDigholl_Draw,
};

/* 80BDCBA0-80BDCBD0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Digholl */
extern actor_process_profile_definition g_profile_Obj_Digholl = {
    -3,
    3,
    -3,
    PROC_Obj_Digholl,
    &g_fpcLf_Method.mBase,
    sizeof(daObjDigholl_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x00F9,
    &l_daObjDigholl_Method,
    0x00044100,
    3,
    14,
};
