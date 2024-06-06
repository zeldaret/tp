#ifndef D_A_L7OP_DEMO_DR_H
#define D_A_L7OP_DEMO_DR_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daL7ODR_c : public fopAc_ac_c {
public:
    /* 805AB098 */ void setAction(void (daL7ODR_c::*)());
    /* 805AB13C */ void action();
    /* 805AB164 */ void setDrAction(void (daL7ODR_c::*)());
    /* 805AB208 */ void dr_action();
    /* 805AB230 */ void mtx_set();
    /* 805AB2E8 */ void draw();
    /* 805AB3F0 */ void wait();
    /* 805AB520 */ void pl_walk();
    /* 805ABC2C */ void setZoomOutCamPos(cXyz&, cXyz&, f32);
    /* 805ABCF8 */ void dr_wait();
    /* 805ABE0C */ void dr_fly();
    /* 805AD7B4 */ void execute();
    /* 805AD87C */ void _delete();
    /* 805AD90C */ void CreateHeap();
    /* 805ADA2C */ void check_start();
    /* 805ADAC0 */ void create();

private:
    /* 0x568 */ u8 field_0x568[0x8b8 - 0x568];
};
STATIC_ASSERT(sizeof(daL7ODR_c) == 0x8b8);


#endif /* D_A_L7OP_DEMO_DR_H */
