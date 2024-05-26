#ifndef D_A_OBJ_TIMEFIRE_H
#define D_A_OBJ_TIMEFIRE_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daTimeFire_c : public fopAc_ac_c {
public:
    /* 80D0E958 */ void setBaseMtx();
    /* 80D0E9B0 */ void create();
    /* 80D0EACC */ void lightInit();
    /* 80D0EB40 */ void setLight();
    /* 80D0EB64 */ void cutLight();
    /* 80D0EB88 */ void Execute();
    /* 80D0ED68 */ void fireCheck(u8);
    /* 80D0EF88 */ bool Draw();
    /* 80D0EF90 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5c0 - 0x568];
};
STATIC_ASSERT(sizeof(daTimeFire_c) == 0x5c0);

class daTimeFire_HIO_c {
public:
    /* 80D0E8EC */ daTimeFire_HIO_c();
    /* 80D0F038 */ ~daTimeFire_HIO_c();
};


#endif /* D_A_OBJ_TIMEFIRE_H */
