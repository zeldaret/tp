#ifndef D_A_SWBALL_H
#define D_A_SWBALL_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-unsorted
 * @class daSwBall_c
 * @brief Switch Ball
 *
 * @details
 *
 */
class daSwBall_c : public fopAc_ac_c {
public:
    /* 80D4E054 */ void checkArea_sub(fopAc_ac_c*);
    /* 80D4E194 */ void checkArea();
    /* 80D4E248 */ void search_ball();
    /* 80D4E374 */ void Create();
    /* 80D4E42C */ void create();
    /* 80D4E494 */ void execute();
    /* 80D4E524 */ void actionRun();
    /* 80D4E6C4 */ void actionStop();
    /* 80D4E6C8 */ void PutCrrPos();
    /* 80D4E90C */ bool _delete();

private:
    /* 0x568 */ u8 field_0x568[0x5a0 - 0x568];
};

STATIC_ASSERT(sizeof(daSwBall_c) == 0x5a0);


#endif /* D_A_SWBALL_H */
