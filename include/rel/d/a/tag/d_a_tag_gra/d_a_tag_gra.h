#ifndef D_A_TAG_GRA_H
#define D_A_TAG_GRA_H

#include "JSystem/JKernel/JKRHeap.h"
#include "f_op/f_op_actor_mng.h"
#include "d/com/d_com_inf_game.h"

class daTagGra_c : public fopAc_ac_c {
public:
    s16 getMode() {
        return (fopAcM_GetParam(this) >> 8) & 0xFF;
    }

    s16 getSwBit() {
        return (fopAcM_GetParam(this) >> 16) & 0xFF;
    }

    int create() {
        fopAcM_SetupActor(this, daTagGra_c);

        if (getMode() == 2) {
            if (dComIfGs_isSwitch(getSwBit(),fopAcM_GetRoomNo(this))) {
                return cPhs_ERROR_e;
            }
        }
        return cPhs_COMPLEATE_e;
    }
};

#endif /* D_A_TAG_GRA_H */
