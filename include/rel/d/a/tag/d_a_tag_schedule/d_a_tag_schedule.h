#ifndef D_A_TAG_SCHEDULE_H
#define D_A_TAG_SCHEDULE_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daTagSchedule_c : public fopAc_ac_c {
public:

    int create() {
        if (!fopAcM_CheckCondition(this, 8)) {
            new (this) daTagSchedule_c();
            fopAcM_OnCondition(this, 8);
        }
        return cPhs_COMPLEATE_e;
    }
};

#endif /* D_A_TAG_SCHEDULE_H */
