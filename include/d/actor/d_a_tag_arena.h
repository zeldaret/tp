#ifndef D_A_TAG_ARENA_H
#define D_A_TAG_ARENA_H

#include "f_op/f_op_actor_mng.h"

class daTagArena_c : public fopAc_ac_c {
public:
    int create() {
        fopAcM_ct(this, daTagArena_c);
        return cPhs_COMPLEATE_e;
    }

    cXyz getArenaPos() { return home.pos; }
    f32 getArenaExtent() { return scale.x * 100.0f; }
    s16 getArenaAngle() { return home.angle.y; }
    s16 getArenaNo() { return fopAcM_GetParam(this) & 0xFF; }
};

#endif /* D_A_TAG_ARENA_H */
