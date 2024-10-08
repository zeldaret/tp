#ifndef D_A_E_TH_BALL_H
#define D_A_E_TH_BALL_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_th_ball_class
 * @brief Darkhammer Ball and Chain
 * 
 * @details 
 * 
 */
class e_th_ball_class : public fopEn_enemy_c {
    /* 807B7AA8 */ e_th_ball_class();
private:
    /* 0x5ac */ u8 field_0x5ac[0x1a90 - 0x5ac];
};

STATIC_ASSERT(sizeof(e_th_ball_class) == 0x1a90);


#endif /* D_A_E_TH_BALL_H */
