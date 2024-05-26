#ifndef D_A_OBJ_THDOOR_H
#define D_A_OBJ_THDOOR_H

#include "f_op/f_op_actor_mng.h"

class daObjThDoor_c : public fopAc_ac_c {
public:
    /* 80D0D618 */ void initBaseMtx();
    /* 80D0D654 */ void setBaseMtx();
    /* 80D0D6B8 */ void Create();
    /* 80D0D7F8 */ void CreateHeap();
    /* 80D0D868 */ void create1st();
    /* 80D0D8E8 */ void Execute(f32 (**)[3][4]);
    /* 80D0D9B4 */ void set_cyl();
    /* 80D0DAC8 */ void action();
    /* 80D0DB90 */ void event_proc_call();
    /* 80D0DC4C */ void actionWait();
    /* 80D0DCC8 */ void actionOrderEvent();
    /* 80D0DD90 */ void actionEvent();
    /* 80D0DE30 */ void actionDead();
    /* 80D0DE34 */ void demoProc();
    /* 80D0E06C */ void checkArea();
    /* 80D0E150 */ void Draw();
    /* 80D0E1F4 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x8c0 - 0x568];
};
STATIC_ASSERT(sizeof(daObjThDoor_c) == 0x8c0);


#endif /* D_A_OBJ_THDOOR_H */
