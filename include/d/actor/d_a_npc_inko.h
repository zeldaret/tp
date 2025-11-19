#ifndef D_A_NPC_INKO_H
#define D_A_NPC_INKO_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_msg_flow.h"

/**
 * @ingroup actors-npcs
 * @class npc_inko_class
 * @brief Inko (Hena's Bird)
 *
 * @details
 *
 */
class npc_inko_class {
public:
    /* 0x000 */ fopAc_ac_c actor;
    /* 0x568 */ request_of_phase_process_class phase;
    /* 0x570 */ u8 field_0x570;
    /* 0x574 */ Z2SoundObjSimple sound;
    /* 0x594 */ u8 field_0x594[0x596 - 0x594];
    /* 0x596 */ s16 field_0x596;
    /* 0x598 */ s8 field_0x598;
    /* 0x59A */ s16 field_0x59a;
    /* 0x59C */ s16 field_0x59c[4];
    /* 0x5A4 */ int anmId;
    /* 0x5A8 */ f32 field_0x5a8;
    /* 0x5AC */ f32 field_0x5ac;
    /* 0x5B0 */ f32 field_0x5b0;
    /* 0x5B4 */ cXyz field_0x5b4;
    /* 0x5C0 */ csXyz field_0x5c0;
    /* 0x5C6 */ s8 field_0x5c6;
    /* 0x5C8 */ csXyz field_0x5c8;
    /* 0x5CE */ csXyz field_0x5ce;
    /* 0x5D4 */ s16 field_0x5d4[2];
    /* 0x5D8 */ s16 field_0x5d8[2];
    /* 0x5DC */ s8 field_0x5dc[2];
    /* 0x5DE */ u8 field_0x5DE[0x5E0 - 0x5DE];
    /* 0x5E0 */ s16 field_0x5e0;
    /* 0x5E2 */ s16 field_0x5e2;
    /* 0x5E4 */ s8 field_0x5e4;
    /* 0x5E6 */ s16 field_0x5e6;
    /* 0x5E8 */ f32 field_0x5e8;
    /* 0x5EC */ s16 field_0x5ec;
    /* 0x5F0 */ mDoExt_McaMorf* anm_p;
    /* 0x5F4 */ u8 field_0x5f4;
    /* 0x5F5 */ u8 field_0x5f5;
    /* 0x5F8 */ dMsgFlow_c msgflow;
    /* 0x644 */ u8 field_0x644[0x648 - 0x644];
};

STATIC_ASSERT(sizeof(npc_inko_class) == 0x648);


#endif /* D_A_NPC_INKO_H */
