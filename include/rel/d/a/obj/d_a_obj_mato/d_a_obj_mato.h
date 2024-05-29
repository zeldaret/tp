#ifndef D_A_OBJ_MATO_H
#define D_A_OBJ_MATO_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjMATO_c
 * @brief Target (???)
 *
 * @details
 *
 */
class daObjMATO_c : public fopAc_ac_c {
public:
    /* 80C91B58 */ void setAction(void (daObjMATO_c::*)(int), int);
    /* 80C91D48 */ void action();
    /* 80C91DE4 */ void hit_check();
    /* 80C91ECC */ void start_wait(int);
    /* 80C91F74 */ void wait(int);
    /* 80C92044 */ void disappear(int);
    /* 80C921A8 */ void getRupee(int);
    /* 80C922AC */ void execute();
    /* 80C92380 */ void _delete();
    /* 80C9243C */ void setBaseMtx();
    /* 80C92650 */ void mato_init();
    /* 80C927AC */ void create();

private:
    /* 0x568 */ u8 field_0x568[0x39f8 - 0x568];
};
STATIC_ASSERT(sizeof(daObjMATO_c) == 0x39f8);

struct MatoData_s {
public:
    /* 80C92924 */ ~MatoData_s();
    /* 80C92A50 */ MatoData_s();
};


#endif /* D_A_OBJ_MATO_H */
