#ifndef D_A_OBJ_LV4SAND_H
#define D_A_OBJ_LV4SAND_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObjLv4Sand_c : public fopAc_ac_c {
public:
    /* 80C69A98 */ void initBaseMtx();
    /* 80C69AD4 */ void setBaseMtx();
    /* 80C69B50 */ void Create();
    /* 80C69C28 */ void CreateHeap();
    /* 80C69D8C */ void create1st();
    /* 80C69E10 */ void Execute(f32 (**)[3][4]);
    /* 80C69F18 */ void action();
    /* 80C69FBC */ void mode_init_wait();
    /* 80C69FC8 */ void mode_wait();
    /* 80C6A01C */ void mode_init_move();
    /* 80C6A034 */ void mode_move();
    /* 80C6A09C */ void mode_init_dead();
    /* 80C6A0A8 */ void mode_dead();
    /* 80C6A0AC */ void eventStart();
    /* 80C6A0D0 */ void Draw();
    /* 80C6A18C */ void Delete();
    /* 80C6A30C */ ~daObjLv4Sand_c();

private:
    /* 0x568 */ u8 field_0x568[0x5c8 - 0x568];
};
STATIC_ASSERT(sizeof(daObjLv4Sand_c) == 0x5c8);


#endif /* D_A_OBJ_LV4SAND_H */
