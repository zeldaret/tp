#ifndef D_A_NPC_DF_H
#define D_A_NPC_DF_H

#include "f_op/f_op_actor.h"
#include "SSystem/SComponent/c_phase.h"

/**
 * @ingroup actors-npcs
 * @class npc_df_class
 * @brief Dragonfly
 *
 * @details
 *
*/

struct df_s {
public:
    /* 0x00 */ J3DModel* mpModels[2];
    /* 0x08 */ cXyz field_0x8;
    /* 0x14 */ cXyz field_0x14;
    /* 0x20 */ cXyz field_0x20;
    /* 0x2C */ cXyz field_0x2c;
    /* 0x38 */ cXyz field_0x38;
    /* 0x44 */ csXyz field_0x44;
    /* 0x4A */ csXyz field_0x4a;
    /* 0x50 */ f32 field_0x50;
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 field_0x58;
    /* 0x5C */ f32 field_0x5c;
    /* 0x60 */ f32 field_0x60;
    /* 0x64 */ f32 field_0x64;
    /* 0x68 */ f32 field_0x68;
    /* 0x6C */ s16 field_0x6c;
    /* 0x6E */ s16 field_0x6e;
    /* 0x70 */ s16 field_0x70;
    /* 0x72 */ s16 field_0x72;
    /* 0x74 */ s8 field_0x74;
    /* 0x75 */ s8 field_0x75;
    /* 0x76 */ u8 field_0x76;
    /* 0x77 */ u8 field_0x77;
    /* 0x78 */ u8 field_0x78[3];
    /* 0x7B */ u8 field_0x7b;
};

class npc_df_class {
public:
    /* 0x000 */ fopAc_ac_c actor;
    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ u8 field_0x570;
    /* 0x571 */ u8 field_0x571;
    /* 0x572 */ u8 field_0x572;
    /* 0x573 */ u8 field_0x573;
    /* 0x574 */ df_s mDfs[16];
    /* 0xD34 */ cXyz field_0xd34;
    /* 0xD40 */ int mDragonflyCount;
};

STATIC_ASSERT(sizeof(npc_df_class) == 0xd44);

#endif /* D_A_NPC_DF_H */
