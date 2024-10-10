#ifndef D_A_TAG_ARENA_H
#define D_A_TAG_ARENA_H

#include "f_op/f_op_actor_mng.h"

class daTagArena_c : public fopAc_ac_c {
public:
    int create() {
        fopAcM_SetupActor(this, daTagArena_c);
        return cPhs_COMPLEATE_e;
    }
};

#endif /* D_A_TAG_ARENA_H */
