#ifndef D_A_E_HB_LEAF_H
#define D_A_E_HB_LEAF_H

#include "f_op/f_op_actor_mng.h"

class e_hb_leaf_class : public fopEn_enemy_c {
public:
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ mDoExt_McaMorf* mpMorf;
    /* 0x5B8 */ s16 field_0x5b8;
    /* 0x5BA */ s8 field_0x5ba;
    /* 0x5BC */ unsigned int field_0x5bc;
};

#endif /* D_A_E_HB_LEAF_H */
