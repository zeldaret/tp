#ifndef D_A_OBJ_FIREPILLAR2_H
#define D_A_OBJ_FIREPILLAR2_H

#include "f_op/f_op_actor_mng.h"

class daObjFPillar2_c : public fopAc_ac_c {
public:
    /* 80BE9CD8 */ void initBaseMtx();
    /* 80BE9D5C */ void setBaseMtx();
    /* 80BE9DDC */ void Create();
    /* 80BEA034 */ void CreateHeap();
    /* 80BEA228 */ void create();
    /* 80BEA584 */ void execute();
    /* 80BEA734 */ void action();
    /* 80BEA808 */ void actionOffInit();
    /* 80BEA854 */ void actionOff();
    /* 80BEA98C */ void actionOnWaitInit();
    /* 80BEAAE4 */ void actionOnWait();
    /* 80BEAC68 */ void actionOnInit();
    /* 80BEADD0 */ void actionOn();
    /* 80BEB1B4 */ void draw();
    /* 80BEB278 */ void _delete();

private:
    /* 0x568 */ u8 field_0x568[0x9ec - 0x568];
};
STATIC_ASSERT(sizeof(daObjFPillar2_c) == 0x9ec);


#endif /* D_A_OBJ_FIREPILLAR2_H */
