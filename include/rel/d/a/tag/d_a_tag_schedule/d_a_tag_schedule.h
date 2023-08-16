#ifndef D_A_TAG_SCHEDULE_H
#define D_A_TAG_SCHEDULE_H

#include "JSystem/JKernel/JKRHeap.h"
#include "f_op/f_op_actor_mng.h"

class daTagSchedule_c : public fopAc_ac_c {
public:
    int create() {
        SETUP_ACTOR(this,daTagSchedule_c);
        return cPhs_COMPLEATE_e;
    }

    /* 0x568 */ u8 field_0x568[4];
};

#endif /* D_A_TAG_SCHEDULE_H */
