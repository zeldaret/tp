#ifndef D_A_OBJ_LAUNDRY_ROPE_H
#define D_A_OBJ_LAUNDRY_ROPE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjLndRope_c
 * @brief Laundry Rope
 *
 * @details
 *
 */
class daObjLndRope_c : public fopAc_ac_c {
public:
    /* 80C521F8 */ void create_init();
    /* 80C5285C */ void initBaseMtx();
    /* 80C52890 */ void setBaseMtx();
    /* 80C528E0 */ void setNormalRopePos();

    static u8 const M_attr[20];

private:
    /* 0x568 */ u8 field_0x568[0x1774 - 0x568];
};
STATIC_ASSERT(sizeof(daObjLndRope_c) == 0x1774);


#endif /* D_A_OBJ_LAUNDRY_ROPE_H */
