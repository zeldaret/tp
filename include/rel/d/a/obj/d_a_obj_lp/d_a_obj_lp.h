#ifndef D_A_OBJ_LP_H
#define D_A_OBJ_LP_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

struct wd_ss {
public:
    /* 80C559C8 */ ~wd_ss();
    /* 80C55A04 */ wd_ss();
};

class obj_lp_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0xadb8 - 0x568];
};
STATIC_ASSERT(sizeof(obj_lp_class) == 0xadb8);


#endif /* D_A_OBJ_LP_H */
