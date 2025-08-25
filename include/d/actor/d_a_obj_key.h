#ifndef D_A_OBJ_KEY_H
#define D_A_OBJ_KEY_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"

struct obj_key_s {
    /* 0x00 */ J3DModel* model[3];
    /* 0x0C */ cXyz pos[3];
    /* 0x30 */ cXyz field_0x30[3];
    /* 0x54 */ csXyz angle[3];
    /* 0x68 */ f32 ground_y[3];
    /* 0x74 */ fpc_ProcID key_actor_id;
};

/**
 * @ingroup actors-objects
 * @class obj_key_class
 * @brief Key
 *
 * @details
 *
 */
class obj_key_class {
public:
    /* 0x000 */ fopAc_ac_c actor;
    /* 0x568 */ request_of_phase_process_class phase;
    /* 0x570 */ obj_key_s key_s;
    /* 0x5E8 */ Z2SoundObjSimple sound;
    /* 0x608 */ u8 field_0x608[0x60A - 0x608];
    /* 0x60A */ s16 action;
    /* 0x60C */ s16 field_0x60c;
    /* 0x60E */ s16 timers[2];
    /* 0x612 */ s16 field_0x612;
    /* 0x614 */ s16 field_0x614;
    /* 0x616 */ s16 field_0x616;
    /* 0x618 */ f32 field_0x618;
    /* 0x61C */ u8 hide;
    /* 0x620 */ dBgS_AcchCir acchcir;
    /* 0x660 */ dBgS_ObjAcch acch;
    /* 0x838 */ dCcD_Stts ccStts;
    /* 0x874 */ dCcD_Sph ccSph;
    /* 0x9AC */ u32 field_0x9ac[2];
    /* 0x9B4 */ u8 HIOInit;
};

STATIC_ASSERT(sizeof(obj_key_class) == 0x9b8);


#endif /* D_A_OBJ_KEY_H */
