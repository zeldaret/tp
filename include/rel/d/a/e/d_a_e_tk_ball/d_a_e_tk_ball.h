#ifndef D_A_E_TK_BALL_H
#define D_A_E_TK_BALL_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_tk_ball_class
 * @brief Fire/Water Toadpoli Ball
 * 
 * @details 
 * 
 */
class e_tk_ball_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0x8cc - 0x5ac];
};
STATIC_ASSERT(sizeof(e_tk_ball_class) == 0x8cc);


#endif /* D_A_E_TK_BALL_H */
