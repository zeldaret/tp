#ifndef D_A_OBJ_LV7PROPELLERY_H
#define D_A_OBJ_LV7PROPELLERY_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daPropY_c : public fopAc_ac_c {
public:
    /* 80C8550C */ void setBaseMtx();
    /* 80C855A4 */ void CreateHeap();
    /* 80C85624 */ void create();
    /* 80C85810 */ void Execute(f32 (**)[3][4]);
    /* 80C85860 */ void procMain();
    /* 80C859B4 */ void init_modeMoveWait();
    /* 80C859C0 */ void modeMoveWait();
    /* 80C859C4 */ void init_modeMove();
    /* 80C859E0 */ void modeMove();
    /* 80C85B08 */ void init_modeWait();
    /* 80C85B24 */ void modeWait();
    /* 80C85B5C */ void init_modeMove2();
    /* 80C85B84 */ void modeMove2();
    /* 80C85CAC */ void init_modeStop();
    /* 80C85DD0 */ void modeStop();
    /* 80C85F14 */ void Draw();
    /* 80C85FB8 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5c8 - 0x568];
};
STATIC_ASSERT(sizeof(daPropY_c) == 0x5c8);

class daPropY_HIO_c {
public:
    /* 80C8546C */ daPropY_HIO_c();
    /* 80C86084 */ ~daPropY_HIO_c();
};


#endif /* D_A_OBJ_LV7PROPELLERY_H */
