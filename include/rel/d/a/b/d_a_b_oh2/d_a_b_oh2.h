#ifndef D_A_B_OH2_H
#define D_A_B_OH2_H

#include "rel/d/a/b/d_a_b_ob/d_a_b_ob.h"

/**
 * @ingroup actors-enemies
 * @brief Morpheel (tentacle)
 * 
 * Lakebed Temple dungeon boss. This is the tentacle part of the boss.
 * 
 */
class b_oh2_class : public fopEn_enemy_c {
public:
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x5B8 */ mDoExt_invisibleModel mInvisModel;
    /* 0x5C0 */ mDoExt_btkAnm* mpBtk;
    /* 0x5C4 */ mDoExt_brkAnm* mpBrk;
    /* 0x5C8 */ int field_0x5c8;
    /* 0x5CC */ s16 field_0x5cc;
    /* 0x5CE */ s16 field_0x5ce;
    /* 0x5D0 */ u8 field_0x5d0;
    /* 0x5D2 */ s16 field_0x5d2[4];
    /* 0x5DA */ s16 field_0x5da;
    /* 0x5DC */ s16 field_0x5dc;
    /* 0x5E0 */ f32 field_0x5e0;
    /* 0x5E4 */ f32 field_0x5e4;
    /* 0x5E8 */ f32 field_0x5e8[30];
    /* 0x660 */ cXyz field_0x660[31];
    /* 0x7D4 */ csXyz field_0x7d4[31];
    /* 0x88E */ u8 field_0x88e[0x898 - 0x88e];
    /* 0x898 */ Z2CreatureEnemy mZ2Enemy;
    /* 0x93C */ u8 field_0x93c[0x948 - 0x93C];
};

#endif /* D_A_B_OH2_H */
