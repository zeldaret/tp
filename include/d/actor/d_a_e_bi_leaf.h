#ifndef D_A_E_BI_LEAF_H
#define D_A_E_BI_LEAF_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_bi_leaf_class
 * @brief Bomb Insect - Leaf
 * 
 * @details 
 * 
 */
class e_bi_leaf_class : public fopEn_enemy_c {
public:
    /* 0x5AC */ request_of_phase_process_class phase;
    /* 0x5B4 */ u8 type;
    /* 0x5B8 */ J3DModel* model;
    /* 0x5BC */ s16 action;
    /* 0x5BE */ s16 timer;
    /* 0x5C0 */ u8 field_0x5c0[0x5D0 - 0x5C0];
};

#endif /* D_A_E_BI_LEAF_H */
