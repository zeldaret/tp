#ifndef D_A_TAG_ASSISTANCE_H
#define D_A_TAG_ASSISTANCE_H

#include "JSystem/JKernel/JKRHeap.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"
#include "d/com/d_com_inf_game.h"

class daTagAssist_c : public fopAc_ac_c {
public:
    void create_init() {
        mAttentionInfo.mFlags = 0;
        field_0x570 = -1;
    }

    int create() {
        if (!fopAcM_CheckCondition(this, 8)) {
            new (this) daTagAssist_c();
            fopAcM_OnCondition(this, 8);
        }
        create_init();
        return cPhs_COMPLEATE_e;
    }

    int execute() {
        fopAcM_searchPlayerDistanceXZ(this);
        return 1;
    }

    u8 field_0x568[8];
    s16 field_0x570;
};

#endif /* D_A_TAG_ASSISTANCE_H */
