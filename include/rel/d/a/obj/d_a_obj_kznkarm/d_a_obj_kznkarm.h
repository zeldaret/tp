#ifndef D_A_OBJ_KZNKARM_H
#define D_A_OBJ_KZNKARM_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObjKznkarm_c : public fopAc_ac_c {
public:
    struct Mode_e {};
    
    /* 80C4F858 */ void setAction(daObjKznkarm_c::Mode_e);
    /* 80C4F88C */ void callInit();
    /* 80C4F8B4 */ void callExecute();
    /* 80C4F8E0 */ void initBroken();
    /* 80C4F960 */ void executeBroken();
    /* 80C4FBBC */ void initCarry();
    /* 80C4FBEC */ void executeCarry();
    /* 80C4FD18 */ void initThrow();
    /* 80C4FDB4 */ void executeThrow();
    /* 80C50488 */ void initStay();
    /* 80C50504 */ void executeStay();
    /* 80C505F8 */ void create_init();
    /* 80C506DC */ void initBaseMtx();
    /* 80C50708 */ void setBaseMtx();
    /* 80C5076C */ void getGroundSlope(s16);

    static u8 const M_attr[56];
    static u8 ActionTable[96];

private:
    /* 0x568 */ u8 field_0x568[0x7b4 - 0x568];
};
STATIC_ASSERT(sizeof(daObjKznkarm_c) == 0x7b4);

#endif /* D_A_OBJ_KZNKARM_H */
