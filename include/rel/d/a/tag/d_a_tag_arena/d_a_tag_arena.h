#ifndef D_A_TAG_ARENA_H
#define D_A_TAG_ARENA_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daTagArena_c : public fopAc_ac_c {
public:
    int create() {
        if (!fopAcM_CheckCondition(this, 8)) {
            new (this) daTagArena_c();
            fopAcM_OnCondition(this, 8);
        }
        return cPhs_COMPLEATE_e;
    }

    u8 field_0x568[4];
};

#endif /* D_A_TAG_ARENA_H */
