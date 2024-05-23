#ifndef D_A_OBJ_POTBOX_H
#define D_A_OBJ_POTBOX_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daPoTbox_c : public fopAc_ac_c {
public:
    /* 80CB42C8 */ void setBaseMtx();
    /* 80CB43D0 */ void CreateHeap();
    /* 80CB46C4 */ void create();
    /* 80CB499C */ void Execute(f32 (**)[3][4]);
    /* 80CB4AA8 */ void init_modeWait();
    /* 80CB4AB4 */ void modeWait();
    /* 80CB4B10 */ void init_modeOpen();
    /* 80CB4BF8 */ void modeOpen();
    /* 80CB4C54 */ void init_modeOpenEnd();
    /* 80CB4C60 */ void modeOpenEnd();
    /* 80CB4C84 */ void init_modeEnd();
    /* 80CB4C90 */ void modeEnd();
    /* 80CB4C94 */ void Draw();
    /* 80CB4E14 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x608 - 0x568];
};
STATIC_ASSERT(sizeof(daPoTbox_c) == 0x608);

class daPoTbox_HIO_c {
public:
    /* 80CB424C */ daPoTbox_HIO_c();
    /* 80CB4F14 */ ~daPoTbox_HIO_c();
};


#endif /* D_A_OBJ_POTBOX_H */
