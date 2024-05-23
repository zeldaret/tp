#ifndef D_A_OBJ_LV7BSGATE_H
#define D_A_OBJ_LV7BSGATE_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daLv7BsGate_c : public fopAc_ac_c {
public:
    /* 80C84930 */ void setBaseMtx();
    /* 80C849CC */ void CreateHeap();
    /* 80C84A4C */ void create();
    /* 80C84BCC */ void Execute(f32 (**)[3][4]);
    /* 80C84C1C */ void moveGate();
    /* 80C84D24 */ void init_modeWait();
    /* 80C84D30 */ void modeWait();
    /* 80C84D34 */ void init_modeOpen();
    /* 80C84D40 */ void modeOpen();
    /* 80C84E94 */ void init_modeClose();
    /* 80C84EA0 */ void modeClose();
    /* 80C84FF4 */ void Draw();
    /* 80C85098 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5bc - 0x568];
};
STATIC_ASSERT(sizeof(daLv7BsGate_c) == 0x5bc);

class daLv7BsGate_HIO_c {
public:
    /* 80C848AC */ daLv7BsGate_HIO_c();
    /* 80C85164 */ ~daLv7BsGate_HIO_c();
};


#endif /* D_A_OBJ_LV7BSGATE_H */
