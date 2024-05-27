#ifndef D_A_OBJ_LV6LBLOCK_H
#define D_A_OBJ_LV6LBLOCK_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daLv6Lblock_c
 * @brief Temple of Time L Block
 *
 * @details
 *
 */
class daLv6Lblock_c : public fopAc_ac_c {
public:
    /* 80C73464 */ void setBaseMtx();
    /* 80C734EC */ void CreateHeap();
    /* 80C73558 */ void create();
    /* 80C736C0 */ void isSwitch();
    /* 80C7370C */ void Execute(f32 (**)[3][4]);
    /* 80C7375C */ void moveBlock();
    /* 80C73850 */ void init_modeWait();
    /* 80C7385C */ void modeWait();
    /* 80C73860 */ void init_modeLiftUp();
    /* 80C7386C */ void modeLiftUp();
    /* 80C7398C */ void init_modeLiftDown();
    /* 80C73998 */ void modeLiftDown();
    /* 80C73AB0 */ void Draw();
    /* 80C73B54 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5b8 - 0x568];
};
STATIC_ASSERT(sizeof(daLv6Lblock_c) == 0x5b8);

class daLv6Lblock_HIO_c {
public:
    /* 80C733EC */ daLv6Lblock_HIO_c();
    /* 80C73C10 */ ~daLv6Lblock_HIO_c();
};


#endif /* D_A_OBJ_LV6LBLOCK_H */
