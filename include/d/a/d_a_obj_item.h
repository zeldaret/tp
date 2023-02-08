#ifndef A_OBJ_D_A_OBJ_ITEM_H
#define A_OBJ_D_A_OBJ_ITEM_H

#include "d/a/d_a_item_static.h"
#include "f_op/f_op_actor_mng.h"

namespace daItem_prm {
    static inline u8 getItemNo(daItem_c* item) {
        return fopAcM_GetParam(item);
    }

    static inline u32 getItemBitNo(daItem_c* item) {
        return (fopAcM_GetParam(item) >> 8) & 0xFF;
    }

    static inline u16 getSwOnWaitTimer(daItem_c* item) {
        return item->field_0x92e & 0x3F;
    }

    static inline u8 checkInWater(daItem_c* item) {
        return fopAcM_GetParamBit(item, 0x1C, 4);
    }

    static inline u8 getType(daItem_c* item) {
        return (fopAcM_GetParam(item) >> 0x18) & 0xF;
    }

    static inline u8 getSwitchNo(daItem_c* item) {
        return (fopAcM_GetParam(item) >> 0x10) & 0xFF;
    }
};

#endif /* A_OBJ_D_A_OBJ_ITEM_H */
