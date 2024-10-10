#ifndef D_A_OBJ_TATIGI_H
#define D_A_OBJ_TATIGI_H

#include "f_op/f_op_actor_mng.h"

struct tg_ss {
public:
    /* 80D083C0 */ ~tg_ss();
    /* 80D08494 */ tg_ss();
};

/**
 * @ingroup actors-objects
 * @class obj_tatigi_class
 * @brief ???
 *
 * @details
 *
 */
class obj_tatigi_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x1bc0 - 0x568];
};

STATIC_ASSERT(sizeof(obj_tatigi_class) == 0x1bc0);


#endif /* D_A_OBJ_TATIGI_H */
