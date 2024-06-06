#ifndef D_A_NI_H
#define D_A_NI_H

#include "f_op/f_op_actor_mng.h"

class ni_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0xb0c - 0x568];
};

STATIC_ASSERT(sizeof(ni_class) == 0xb0c);

class daNi_HIO_c {
public:
    /* 8094BC2C */ daNi_HIO_c();
    /* 80951118 */ ~daNi_HIO_c();
};


#endif /* D_A_NI_H */
