#ifndef D_A_OBJ_KAZENEKO_H
#define D_A_OBJ_KAZENEKO_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjKazeNeko_c
 * @brief Weather Vane
 *
 * @details
 *
 */
class daObjKazeNeko_c : public fopAc_ac_c {
public:
    /* 80C3C8D8 */ void create_init();
    /* 80C3C968 */ void initBaseMtx();
    /* 80C3C988 */ void setBaseMtx();
    /* 80C3CA8C */ void initCcCylinder();
    /* 80C3CB10 */ void setCcCylinder();
    /* 80C3CB7C */ void swingHead();
    /* 80C3CC40 */ void getFirstVec(cXyz*, int);

    static u8 const M_attr[44];
private:
    /* 0x568 */ u8 field_0x568[0x754 - 0x568];
};
STATIC_ASSERT(sizeof(daObjKazeNeko_c) == 0x754);


#endif /* D_A_OBJ_KAZENEKO_H */
