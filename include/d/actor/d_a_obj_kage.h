#ifndef D_A_OBJ_KAGE_H
#define D_A_OBJ_KAGE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_kage_class
 * @brief House - Cage
 *
 * @details
 *
 */
class obj_kage_class {
public:
    /* 0x000 */ fopAc_ac_c actor;
    /* 0x568 */ request_of_phase_process_class phase;
    /* 0x570 */ J3DModel* model;
    /* 0x574 */ u8 field_0x574;
    /* 0x578 */ Z2SoundObjSimple sound;
    /* 0x598 */ u8 field_0x598[0x59A - 0x598];
    /* 0x59A */ s16 timers[2];
    /* 0x59E */ s16 field_0x59e;
    /* 0x5A0 */ s16 counter;
    /* 0x5A4 */ f32 field_0x5a4;
    /* 0x5A8 */ f32 field_0x5a8;
    /* 0x5AC */ fpc_ProcID inko_child_id;
    /* 0x5B0 */ u8 field_0x5b0[0x5B4 - 0x5B0];
};

STATIC_ASSERT(sizeof(obj_kage_class) == 0x5b4);


#endif /* D_A_OBJ_KAGE_H */
