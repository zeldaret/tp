#ifndef D_A_NPC_WORM_H
#define D_A_NPC_WORM_H

#include "d/actor/d_a_npc.h"
#include "d/d_insect.h"

/**
 * @ingroup actors-npcs
 * @class npc_worm_class
 * @brief Worm
 *
 * @details
 *
 */
class npc_worm_class : public dInsect_c {
public:
    bool check_release() { return field_0x56C == 1; }

    /* 0x590 */ request_of_phase_process_class mPhase;
    /* 0x598 */ u8 field_0x598;
    /* 0x59C */ J3DModel* mModel1;
    /* 0x5A0 */ J3DModel* mModel2;
    /* 0x5A4 */ s16 field_0x5a4;
    /* 0x5A6 */ s16 field_0x5a6;
    /* 0x5A8 */ s16 field_0x5a8;
    /* 0x5AA */ s16 field_0x5aa;
    /* 0x5AC */ s16 field_0x5ac;
    /* 0x5AE */ s16 field_0x5ae;
    /* 0x5B0 */ f32 field_0x5b0;
    /* 0x5B2 */ s16 field_0x5b4[9];
    /* 0x5C6 */ s16 field_0x5c6;
    /* 0x5C8 */ s16 field_0x5c8;
    /* 0x5CA */ s16 field_0x5ca;
    /* 0x5CC */ f32 field_0x5cc;
    /* 0x5D0 */ f32 field_0x5d0;
    /* 0x5D4 */ f32 field_0x5d4;
    /* 0x5D8 */ cXyz field_0x5d8;
    /* 0x5E4 */ s16 field_0x5e4;
    /* 0x5E6 */ u8 field_0x5e6;
    /* 0x5E8 */ s16 field_0x5e8[2];
};

STATIC_ASSERT(sizeof(npc_worm_class) == 0x5ec);


#endif /* D_A_NPC_WORM_H */
