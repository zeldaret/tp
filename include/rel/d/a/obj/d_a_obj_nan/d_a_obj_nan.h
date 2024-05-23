#ifndef D_A_OBJ_NAN_H
#define D_A_OBJ_NAN_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObj_NanHIO_c {
public:
    /* 80CA05AC */ daObj_NanHIO_c();
    /* 80CA30D0 */ ~daObj_NanHIO_c();
};

class daObjNAN_c : public fopAc_ac_c {
public:
    /* 80CA05D4 */ void setAction(void (daObjNAN_c::*)());
    /* 80CA0978 */ void nan_posMove();
    /* 80CA0A2C */ void turn();
    /* 80CA0D9C */ void nan_WalkAnm();
    /* 80CA0E7C */ void wait();
    /* 80CA1184 */ void walk();
    /* 80CA1904 */ void bin_wait();
    /* 80CA1A20 */ void bin_action();
    /* 80CA1B50 */ void nan_setParticle();
    /* 80CA1D5C */ void hook();
    /* 80CA1F60 */ void boomerang();
    /* 80CA2368 */ void drop();
    /* 80CA2658 */ void hit_check();
    /* 80CA270C */ void action();
    /* 80CA276C */ void execute();
    /* 80CA2904 */ void _delete();
    /* 80CA296C */ void setBaseMtx();
    /* 80CA2B68 */ void create();

private:
    /* 0x568 */ u8 field_0x568[0x800 - 0x568];
};
STATIC_ASSERT(sizeof(daObjNAN_c) == 0x800);


#endif /* D_A_OBJ_NAN_H */
