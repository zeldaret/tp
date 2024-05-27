#ifndef D_A_OBJ_LV5YCHNDLR_H
#define D_A_OBJ_LV5YCHNDLR_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjYchndlr_c
 * @brief Snowpeak Ruins Chandelier (Swinging Platform?)
 *
 * @details
 *
 */
class daObjYchndlr_c : public fopAc_ac_c {
public:
    /* 80C6D758 */ void create1st();
    /* 80C6D7E0 */ void setMtx();
    /* 80C6D9A8 */ void rideActor(fopAc_ac_c*);
    /* 80C6DA5C */ void CreateHeap();
    /* 80C6DB5C */ void Create();
    /* 80C6DC64 */ void Execute(f32 (**)[3][4]);
    /* 80C6E300 */ void Draw();
    /* 80C6E3C8 */ void Delete();
    /* 80C6E808 */ ~daObjYchndlr_c();

private:
    /* 0x568 */ u8 field_0x568[0xca0 - 0x568];
};
STATIC_ASSERT(sizeof(daObjYchndlr_c) == 0xca0);


#endif /* D_A_OBJ_LV5YCHNDLR_H */
