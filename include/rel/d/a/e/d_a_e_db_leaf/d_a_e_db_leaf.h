#ifndef D_A_E_DB_LEAF_H
#define D_A_E_DB_LEAF_H

#include "f_op/f_op_actor_mng.h"
#include "d/com/d_com_inf_game.h"
#include "dolphin/types.h"

class e_db_leaf_class : public fopAc_ac_c {
public:
    /* 0x568 */ u8 field_0x568[76];
    /* 0x5B4 */ mDoExt_McaMorf* morf;
    void Draw();
}; // Size: 0x5B8


#endif /* D_A_E_DB_LEAF_H */
