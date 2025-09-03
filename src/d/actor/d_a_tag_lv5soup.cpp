/**
 * d_a_tag_lv5soup.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_lv5soup.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"

/* 80D5AD58-80D5ADEC 000078 0094+00 1/1 0/0 0/0 .text            create__15daTag_Lv5Soup_cFv */
int daTag_Lv5Soup_c::create() {
    fopAcM_SetupActor(this, daTag_Lv5Soup_c);
    fopAcM_setCullSizeBox(this, -30.0f, -15.0f, -30.0f, 30.0f, 45.0f, 30.0f);
    attention_info.flags = 0;
    return cPhs_COMPLEATE_e;
}

/* 80D5ADEC-80D5ADF4 00010C 0008+00 1/1 0/0 0/0 .text            Delete__15daTag_Lv5Soup_cFv */
int daTag_Lv5Soup_c::Delete() {
    return 1;
}

/* 80D5ADF4-80D5AE9C 000114 00A8+00 1/1 0/0 0/0 .text            Execute__15daTag_Lv5Soup_cFv */
int daTag_Lv5Soup_c::Execute() {
    if (isAreaCheck()) {
        // Yeto took pumpkin and pumpkin not in soup
        if (dComIfGs_isEventBit(0x0020) && !dComIfGs_isEventBit(0x0002)) {
            // Pumpkin in soup
            dComIfGs_onEventBit(0x0002);
        }

        // Yeto took cheese and cheese not in soup
        if (dComIfGs_isEventBit(0x0010) && !dComIfGs_isEventBit(0x0001)) {
            // Cheese in soup
            dComIfGs_onEventBit(0x0001);
        }
    }
    return 1;
}

/* 80D5AE9C-80D5AEA4 0001BC 0008+00 1/1 0/0 0/0 .text            Draw__15daTag_Lv5Soup_cFv */
int daTag_Lv5Soup_c::Draw() {
    return 1;
}

/* 80D5AEA4-80D5B06C 0001C4 01C8+00 1/1 0/0 0/0 .text            isAreaCheck__15daTag_Lv5Soup_cFv */
bool daTag_Lv5Soup_c::isAreaCheck() {
    cXyz dist = daPy_getPlayerActorClass()->current.pos - current.pos;
    f32 boundX = scale.x * 100.0f;
    f32 boundY = scale.y * 100.0f;

    if (dist.absXZ() < boundX && -boundY < dist.y && dist.y < boundY) {
        return true;
    } else {
        return false;
    }
}

/* 80D5B06C-80D5B08C 00038C 0020+00 1/0 0/0 0/0 .text            daTag_Lv5Soup_Create__FPv */
static int daTag_Lv5Soup_Create(void* i_this) {
    return static_cast<daTag_Lv5Soup_c*>(i_this)->create();
}

/* 80D5B08C-80D5B0AC 0003AC 0020+00 1/0 0/0 0/0 .text            daTag_Lv5Soup_Delete__FPv */
static int daTag_Lv5Soup_Delete(void* i_this) {
    return static_cast<daTag_Lv5Soup_c*>(i_this)->Delete();
}

/* 80D5B0AC-80D5B0CC 0003CC 0020+00 1/0 0/0 0/0 .text            daTag_Lv5Soup_Execute__FPv */
static int daTag_Lv5Soup_Execute(void* i_this) {
    return static_cast<daTag_Lv5Soup_c*>(i_this)->Execute();
}

/* 80D5B0CC-80D5B0EC 0003EC 0020+00 1/0 0/0 0/0 .text            daTag_Lv5Soup_Draw__FPv */
static int daTag_Lv5Soup_Draw(void* i_this) {
    return static_cast<daTag_Lv5Soup_c*>(i_this)->Draw();
}

/* 80D5B0EC-80D5B0F4 00040C 0008+00 1/0 0/0 0/0 .text            daTag_Lv5Soup_IsDelete__FPv */
static int daTag_Lv5Soup_IsDelete(void* i_this) {
    return 1;
}

/* 80D5B0F4-80D5B154 000414 0060+00 1/0 0/0 0/0 .text            __dt__15daTag_Lv5Soup_cFv */
daTag_Lv5Soup_c::~daTag_Lv5Soup_c() {}

/* 80D5B18C-80D5B1AC -00001 0020+00 1/0 0/0 0/0 .data            daTag_Lv5Soup_MethodTable */
static actor_method_class daTag_Lv5Soup_MethodTable = {
    (process_method_func)daTag_Lv5Soup_Create,  (process_method_func)daTag_Lv5Soup_Delete,
    (process_method_func)daTag_Lv5Soup_Execute, (process_method_func)daTag_Lv5Soup_IsDelete,
    (process_method_func)daTag_Lv5Soup_Draw,
};

/* 80D5B1AC-80D5B1DC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_LV5SOUP */
extern actor_process_profile_definition g_profile_TAG_LV5SOUP = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    0x122,
    &g_fpcLf_Method.base,
    sizeof(daTag_Lv5Soup_c),
    0,
    0,
    &g_fopAc_Method.base,
    70,
    &daTag_Lv5Soup_MethodTable,
    0x64100,
    5,
    fopAc_CULLBOX_CUSTOM_e,
};
