#ifndef D_A_OBJ_LV6TENBIN_H
#define D_A_OBJ_LV6TENBIN_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daTenbin_c
 * @brief Temple of Time Scale
 *
 * @details
 *
 */
class daTenbin_c : public fopAc_ac_c {
public:
    /* 80C769D0 */ void setBaseMtx();
    /* 80C76BCC */ void CreateHeap();
    /* 80C76D10 */ void create();
    /* 80C76EE0 */ void rideCallBackRight(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
    /* 80C77078 */ void rideCallBackLeft(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
    /* 80C77200 */ void Execute(f32 (**)[3][4]);
    /* 80C772BC */ void procMain();
    /* 80C77464 */ void init_modeWait();
    /* 80C77470 */ void modeWait();
    /* 80C77668 */ void balanceCheck();
    /* 80C7772C */ void Draw();
    /* 80C77810 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x654 - 0x568];
};
STATIC_ASSERT(sizeof(daTenbin_c) == 0x654);

class daTenbin_HIO_c {
public:
    /* 80C768EC */ daTenbin_HIO_c();
    /* 80C77904 */ ~daTenbin_HIO_c();
};


#endif /* D_A_OBJ_LV6TENBIN_H */
