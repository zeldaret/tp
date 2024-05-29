#ifndef D_A_OBJ_DROP_H
#define D_A_OBJ_DROP_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjDrop_c
 * @brief Tear of Light
 *
 * @details
 *
 */
class daObjDrop_c : public fopAc_ac_c {
public:
    /* 80BDFD8C */ void Create();
    /* 80BDFE58 */ void create();
    /* 80BE0358 */ void dropGet();
    /* 80BE0430 */ void checkGetArea();
    /* 80BE05DC */ void checkCompleteDemo();
    /* 80BE0658 */ void createLineEffect();
    /* 80BE071C */ void removeLineEffect();
    /* 80BE077C */ void createBodyEffect();
    /* 80BE0840 */ void removeBodyEffect();
    /* 80BE08A0 */ void modeInit();
    /* 80BE0994 */ void modeNoParent();
    /* 80BE09F4 */ void modeParentWait();
    /* 80BE0C08 */ void modeWait();
    /* 80BE1928 */ bool actionCompleteWait();
    /* 80BE1930 */ void actionOrderCompleteDemo();
    /* 80BE19D0 */ void actionCompleateDemo();
    /* 80BE1ACC */ void actionWaitCompleteGetDemo();
    /* 80BE1B5C */ void actionCompleteGetDemo();
    /* 80BE1BC4 */ void execute();
    /* 80BE1DCC */ void _delete();

private:
    /* 0x568 */ u8 field_0x568[0xa7c - 0x568];
};
STATIC_ASSERT(sizeof(daObjDrop_c) == 0xa7c);


#endif /* D_A_OBJ_DROP_H */
