#ifndef D_A_OBJ_LV4DIGSAND_H
#define D_A_OBJ_LV4DIGSAND_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObjL4DigSand_c : public fopAc_ac_c {
public:
    /* 80C66B18 */ void initBaseMtx();
    /* 80C66B54 */ void setBaseMtx();
    /* 80C66BC8 */ void Create();
    /* 80C66C24 */ void CreateHeap();
    /* 80C66C94 */ void create1st();
    /* 80C66D40 */ void Execute(f32 (**)[3][4]);
    /* 80C66DD0 */ void action();
    /* 80C66E74 */ void mode_init_wait();
    /* 80C66E80 */ void mode_wait();
    /* 80C66EAC */ void mode_init_dig();
    /* 80C66FFC */ void mode_dig();
    /* 80C670AC */ void mode_init_end();
    /* 80C67100 */ void mode_end();
    /* 80C67104 */ void Draw();
    /* 80C671A8 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x944 - 0x568];
};
STATIC_ASSERT(sizeof(daObjL4DigSand_c) == 0x944);


#endif /* D_A_OBJ_LV4DIGSAND_H */
