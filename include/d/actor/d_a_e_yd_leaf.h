#ifndef D_A_E_YD_LEAF_H
#define D_A_E_YD_LEAF_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_yd_leaf_class
 * @brief Twilight Deku Baba - Leaf
 * 
 * @details 
 * 
 */
class e_yd_leaf_class : public fopEn_enemy_c {
public:
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ mDoExt_McaMorf* mpMorf;
    /* 0x5B8 */ u8 field_0x5b8[0x5BA - 0x5B8];
    /* 0x5BA */ s8 field_0x5ba;
    /* 0x5BB */ u8 field_0x5bb[0x5C0 - 0x5BB];
};

#endif /* D_A_E_YD_LEAF_H */
