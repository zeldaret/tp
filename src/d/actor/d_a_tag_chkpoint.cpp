/**
 * d_a_tag_chkpoint.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_chkpoint.h"
#include <cmath.h>
#include "d/actor/d_a_player.h"

/* 8048A6F8-8048A9EC 000078 02F4+00 1/1 0/0 0/0 .text            execute__11daTag_Chk_cFv */
int daTag_Chk_c::execute() {
    if (fopAcM_GetRoomNo(this) != dComIfGp_roomControl_getStayNo()) {
        return 0;
    }

    u8 sp64[3][3] = {
        {1, 1, 0},
        {0, 0, 0},
        {1, 1, 0},
    };

    int var_r27;
    int var_r26;

    u8 swbit = getSwBit();
    if (swbit == 0xFF) {
        var_r27 = 0;
    } else if (dComIfGs_isSwitch(swbit, fopAcM_GetRoomNo(this))) {
        var_r27 = 1;
    } else {
        var_r27 = 2;
    }

    u8 swbit2 = getSwBit2();
    if (swbit2 == 0xFF) {
        var_r26 = 0;
    } else if (dComIfGs_isSwitch(swbit2, fopAcM_GetRoomNo(this))) {
        var_r26 = 1;
    } else {
        var_r26 = 2;
    }

    bool set_attention = false;

    if (sp64[var_r27][var_r26] != 0) {
        cXyz& player_pos = dComIfGp_getLinkPlayer()->current.pos;

        if (getAreaType() == 0) {
            if (mVtxA.x <= player_pos.x && player_pos.x <= mVtxB.x && mVtxA.y <= player_pos.y &&
                player_pos.y <= mVtxB.y && mVtxA.z <= player_pos.z && player_pos.z <= mVtxB.z)
            {
                set_attention = true;
            }
        } else {
            f32 x_dist = current.pos.x - player_pos.x;
            f32 z_dist = current.pos.z - player_pos.z;

            if (std::sqrt(x_dist * x_dist + z_dist * z_dist) < scale.x && mVtxA.y <= player_pos.y &&
                player_pos.y <= mVtxB.y)
            {
                set_attention = true;
            }
        }
    }

    attention_info.flags = 0;

    if (set_attention) {
        daPy_getPlayerActorClass()->setLookPos(&attention_info.position);
        attention_info.flags = 0x100;
    }

    return 1;
}

/* 8048A9EC-8048A9F4 00036C 0008+00 1/0 0/0 0/0 .text            daTag_Chk_Draw__FP11daTag_Chk_c */
static int daTag_Chk_Draw(daTag_Chk_c* i_this) {
    return 1;
}

/* 8048A9F4-8048AA18 000374 0024+00 1/0 0/0 0/0 .text            daTag_Chk_Execute__FP11daTag_Chk_c
 */
static int daTag_Chk_Execute(daTag_Chk_c* i_this) {
    i_this->execute();
    return 1;
}

/* 8048AA18-8048AA20 000398 0008+00 1/0 0/0 0/0 .text            daTag_Chk_IsDelete__FP11daTag_Chk_c
 */
static int daTag_Chk_IsDelete(daTag_Chk_c* i_this) {
    return 1;
}

/* 8048AA20-8048AA50 0003A0 0030+00 1/0 0/0 0/0 .text            daTag_Chk_Delete__FP11daTag_Chk_c
 */
static int daTag_Chk_Delete(daTag_Chk_c* i_this) {
    i_this->~daTag_Chk_c();
    return 1;
}

/* 8048AA50-8048AC20 0003D0 01D0+00 1/0 0/0 0/0 .text            daTag_Chk_Create__FP10fopAc_ac_c */
static int daTag_Chk_Create(fopAc_ac_c* i_this) {
    return static_cast<daTag_Chk_c*>(i_this)->create();
}

/* 8048AC68-8048AC88 -00001 0020+00 1/0 0/0 0/0 .data            l_daTag_Chk_Method */
static actor_method_class l_daTag_Chk_Method = {
    (process_method_func)daTag_Chk_Create, (process_method_func)daTag_Chk_Delete,
    (process_method_func)daTag_Chk_Execute, (process_method_func)daTag_Chk_IsDelete,
    (process_method_func)daTag_Chk_Draw};

/* 8048AC88-8048ACB8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_CHKPOINT */
extern actor_process_profile_definition g_profile_TAG_CHKPOINT = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_TAG_CHKPOINT,      // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daTag_Chk_c),    // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    280,                    // mPriority
    &l_daTag_Chk_Method,    // sub_method
    0x44000,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_6_e,      // cullType
};
