#ifndef D_A_OBJ_KWHEEL00_H
#define D_A_OBJ_KWHEEL00_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjKWheel00_c
 * @brief Water Wheel 00?
 *
 * @details
 *
 */
class daObjKWheel00_c : public fopAc_ac_c {
public:
    /* 80C4D6F8 */ void create1st();
    /* 80C4D86C */ void setMtx();
    /* 80C4D9B8 */ void CreateHeap();
    /* 80C4DA38 */ void Create();
    /* 80C4DBBC */ void Execute(f32 (**)[3][4]);
    /* 80C4E1B0 */ void Draw();
    /* 80C4E254 */ void Delete();
    /* 80C4E298 */ void eventStart();
    /* 80C4E6E4 */ ~daObjKWheel00_c();

private:
    /* 0x568 */ u8 field_0x568[0xb44 - 0x568];
};
STATIC_ASSERT(sizeof(daObjKWheel00_c) == 0xb44);


#endif /* D_A_OBJ_KWHEEL00_H */
