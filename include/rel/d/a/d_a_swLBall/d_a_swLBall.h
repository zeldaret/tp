#ifndef D_A_SWLBALL_H
#define D_A_SWLBALL_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-unsorted
 * @class daSwLBall_c
 * @brief Switch L Ball
 *
 * @details
 *
 */
class daSwLBall_c : public fopAc_ac_c {
public:
    /* 80D4EB8C */ void checkArea_sub(fopAc_ac_c*);
    /* 80D4ECCC */ void checkArea();
    /* 80D4ED80 */ void search_lb();
    /* 80D4EEAC */ void Create();
    /* 80D4EEF8 */ void create();
    /* 80D4EF60 */ void execute();
    /* 80D4F008 */ void actionInit();
    /* 80D4F080 */ void actionRun();
    /* 80D4F220 */ void actionStop();
    /* 80D4F224 */ void PutCrrPos();
    /* 80D4F444 */ bool _delete();

private:
    /* 0x568 */ u8 field_0x568[0x578 - 0x568];
};

STATIC_ASSERT(sizeof(daSwLBall_c) == 0x578);


#endif /* D_A_SWLBALL_H */
