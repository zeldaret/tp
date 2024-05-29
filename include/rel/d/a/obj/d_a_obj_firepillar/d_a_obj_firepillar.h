#ifndef D_A_OBJ_FIREPILLAR_H
#define D_A_OBJ_FIREPILLAR_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjFPillar_c
 * @brief Fire Pillar
 *
 * @details
 *
 */
class daObjFPillar_c : public fopAc_ac_c {
public:
    /* 80BE9118 */ void initBaseMtx();
    /* 80BE9138 */ void setBaseMtx();
    /* 80BE9190 */ void Create();
    /* 80BE9230 */ void create();
    /* 80BE94E4 */ void execute();
    /* 80BE9610 */ void action();
    /* 80BE96B4 */ void actionOffInit();
    /* 80BE96E0 */ void actionOff();
    /* 80BE9784 */ void actionOnWaitInit();
    /* 80BE97B8 */ void actionOnWait();
    /* 80BE986C */ void actionOnInit();
    /* 80BE98A0 */ void actionOn();
    /* 80BE9984 */ void draw();
    /* 80BE99B8 */ bool _delete();

private:
    /* 0x568 */ u8 field_0x568[0x974 - 0x568];
};
STATIC_ASSERT(sizeof(daObjFPillar_c) == 0x974);


#endif /* D_A_OBJ_FIREPILLAR_H */
