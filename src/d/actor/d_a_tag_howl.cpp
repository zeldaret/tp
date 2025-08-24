/**
 * d_a_tag_howl.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_howl.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

/* 8048D958-8048D9BC 000078 0064+00 1/1 0/0 0/0 .text            create__12daTag_Howl_cFv */
int daTag_Howl_c::create() {
    fopAcM_SetupActor(this, daTag_Howl_c);
    getParam();
    return cPhs_COMPLEATE_e;
}

/* 8048D9BC-8048D9C4 0000DC 0008+00 1/1 0/0 0/0 .text            destroy__12daTag_Howl_cFv */
int daTag_Howl_c::destroy() {
    return 1;
}

/* 8048D9C4-8048DA24 0000E4 0060+00 1/1 0/0 0/0 .text            execute__12daTag_Howl_cFv */
int daTag_Howl_c::execute() {
    fopAcM_SetRoomNo(this, dComIfGp_roomControl_getStayNo());
    attention_info.flags = 0;

    if (isAreaCheck()) {
        attention_info.flags |= 0x80;
        attention_info.distances[fopAc_attn_ETC_e] = 0x41;
    }

    return 1;
}

/* 8048DA24-8048DA2C 000144 0008+00 1/1 0/0 0/0 .text            draw__12daTag_Howl_cFv */
int daTag_Howl_c::draw() {
    return 1;
}

/* 8048DA2C-8048DC1C 00014C 01F0+00 1/1 0/0 0/0 .text            isAreaCheck__12daTag_Howl_cFv */
u8 daTag_Howl_c::isAreaCheck() {
    if (getSwitchBit() != 0xFF) {
        if (dComIfGs_isSaveSwitch(getSwitchBit())) {
            return false;
        }
    }

    cXyz vec_to_player = daPy_getPlayerActorClass()->current.pos - current.pos;
    if (daPy_py_c::checkNowWolf()) {
        if (vec_to_player.absXZ() < scale.x && -scale.y < vec_to_player.y &&
            vec_to_player.y < scale.y)
        {
            return true;
        }
    }

    return false;
}

/* 8048DC1C-8048DC68 00033C 004C+00 1/1 0/0 0/0 .text            getParam__12daTag_Howl_cFv */
int daTag_Howl_c::getParam() {
    mCurveID = fopAcM_GetParam(this) & 0xF;
    field_0x569 = fopAcM_GetParam(this) >> 0x1E;
    scale.x *= 100.0f;
    scale.y *= 100.0f;
    scale.z *= 100.0f;
    return 1;
}

/* 8048DC68-8048DC74 000388 000C+00 1/1 0/0 0/0 .text            getSwitchBit__12daTag_Howl_cFv */
u8 daTag_Howl_c::getSwitchBit() {
    return (fopAcM_GetParam(this) >> 4) & 0xFF;
}

/* 8048DC74-8048DC94 000394 0020+00 1/0 0/0 0/0 .text            daTag_Howl_Create__FPv */
static int daTag_Howl_Create(void* i_this) {
    return static_cast<daTag_Howl_c*>(i_this)->create();
}

/* 8048DC94-8048DCB4 0003B4 0020+00 1/0 0/0 0/0 .text            daTag_Howl_Delete__FPv */
static int daTag_Howl_Delete(void* i_this) {
    return static_cast<daTag_Howl_c*>(i_this)->destroy();
}

/* 8048DCB4-8048DCD4 0003D4 0020+00 1/0 0/0 0/0 .text            daTag_Howl_Execute__FPv */
static int daTag_Howl_Execute(void* i_this) {
    return static_cast<daTag_Howl_c*>(i_this)->execute();
}

/* 8048DCD4-8048DCF4 0003F4 0020+00 1/0 0/0 0/0 .text            daTag_Howl_Draw__FPv */
static int daTag_Howl_Draw(void* i_this) {
    return static_cast<daTag_Howl_c*>(i_this)->draw();
}

/* 8048DCF4-8048DCFC 000414 0008+00 1/0 0/0 0/0 .text            daTag_Howl_IsDelete__FPv */
static int daTag_Howl_IsDelete(void* i_this) {
    return 1;
}

/* ############################################################################################## */
/* 8048DD88-8048DDA8 -00001 0020+00 1/0 0/0 0/0 .data            daTag_Howl_MethodTable */
static actor_method_class daTag_Howl_MethodTable = {
    (process_method_func)daTag_Howl_Create,  (process_method_func)daTag_Howl_Delete,
    (process_method_func)daTag_Howl_Execute, (process_method_func)daTag_Howl_IsDelete,
    (process_method_func)daTag_Howl_Draw,

};

/* 8048DDA8-8048DDD8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_HOWL */
extern actor_process_profile_definition g_profile_TAG_HOWL = {
    fpcLy_CURRENT_e,          // mLayerID
    7,                        // mListID
    fpcPi_CURRENT_e,          // mListPrio
    PROC_TAG_HOWL,            // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daTag_Howl_c),     // mSize
    0,                        // mSizeOther
    0,                        // mParameters
    &g_fopAc_Method.base,     // sub_method
    283,                      // mPriority
    &daTag_Howl_MethodTable,  // sub_method
    0x40000,                  // mStatus
    fopAc_ACTOR_e,            // mActorType
    fopAc_CULLBOX_CUSTOM_e,   // cullType
};
