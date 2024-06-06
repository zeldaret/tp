#ifndef D_A_OBJ_LV6SZGATE_H
#define D_A_OBJ_LV6SZGATE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daLv6SzGate_c
 * @brief Temple of Time Stone Statue Gate
 *
 * @details
 *
 */
class daLv6SzGate_c : public fopAc_ac_c {
public:
    /* 80C75900 */ void setBaseMtx();
    /* 80C75A54 */ void CreateHeap();
    /* 80C75C0C */ void create();
    /* 80C75E18 */ void Execute(f32 (**)[3][4]);
    /* 80C75E78 */ void moveGate();
    /* 80C75F64 */ void init_modeWait();
    /* 80C75F70 */ void modeWait();
    /* 80C75FC0 */ void init_modeOpenWait0();
    /* 80C75FD8 */ void modeOpenWait0();
    /* 80C76010 */ void init_modeOpenWait();
    /* 80C76094 */ void modeOpenWait();
    /* 80C760F0 */ void init_modeOpen();
    /* 80C760FC */ void modeOpen();
    /* 80C7624C */ void modeClose();
    /* 80C76328 */ void init_modeEnd();
    /* 80C76344 */ void modeEnd();
    /* 80C7637C */ void Draw();
    /* 80C76490 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x61c - 0x568];
};

STATIC_ASSERT(sizeof(daLv6SzGate_c) == 0x61c);

class daLv6SzGate_HIO_c {
public:
    /* 80C7586C */ daLv6SzGate_HIO_c();
    /* 80C76584 */ ~daLv6SzGate_HIO_c();
};


#endif /* D_A_OBJ_LV6SZGATE_H */
