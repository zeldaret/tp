#ifndef D_A_OBJ_LV6SWGATE_H
#define D_A_OBJ_LV6SWGATE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daLv6SwGate_c
 * @brief Temple of Time Switch Gate
 *
 * @details
 *
 */
class daLv6SwGate_c : public fopAc_ac_c {
public:
    /* 80C74004 */ void setBaseMtx();
    /* 80C74158 */ void CreateHeap();
    /* 80C7429C */ void create();
    /* 80C74720 */ void isSwitch();
    /* 80C7476C */ void Execute(f32 (**)[3][4]);
    /* 80C74A3C */ void moveGate();
    /* 80C74B48 */ void init_modeWait();
    /* 80C74B54 */ void modeWait();
    /* 80C74B58 */ void init_modeOpen();
    /* 80C74B64 */ void modeOpen();
    /* 80C74C7C */ void init_modeClose();
    /* 80C74C94 */ void modeClose();
    /* 80C74DBC */ void init_modeBreak();
    /* 80C74E40 */ void modeBreak();
    /* 80C7524C */ void Draw();
    /* 80C752F8 */ void Delete();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0x14f8 - 0x568];
};
STATIC_ASSERT(sizeof(daLv6SwGate_c) == 0x14f8);

class daLv6SwGate_HIO_c {
public:
    /* 80C73F0C */ daLv6SwGate_HIO_c();
    /* 80C75434 */ ~daLv6SwGate_HIO_c();
};


#endif /* D_A_OBJ_LV6SWGATE_H */
