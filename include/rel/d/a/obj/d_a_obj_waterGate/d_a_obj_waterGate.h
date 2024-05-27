#ifndef D_A_OBJ_WATERGATE_H
#define D_A_OBJ_WATERGATE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daWtGate_c
 * @brief Water Gate
 *
 * @details
 *
 */
class daWtGate_c : public fopAc_ac_c {
public:
    /* 80D2BC0C */ void setBaseMtx();
    /* 80D2BC94 */ void CreateHeap();
    /* 80D2BD00 */ void create();
    /* 80D2BE7C */ void Execute(f32 (**)[3][4]);
    /* 80D2BECC */ void move();
    /* 80D2BF88 */ void init_modeWait();
    /* 80D2BF94 */ void modeWait();
    /* 80D2C010 */ void init_modeOpen();
    /* 80D2C02C */ void modeOpen();
    /* 80D2C134 */ void init_modeClose();
    /* 80D2C150 */ void modeClose();
    /* 80D2C250 */ void init_modeEnd();
    /* 80D2C25C */ void modeEnd();
    /* 80D2C260 */ void Draw();
    /* 80D2C304 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5bc - 0x568];
};
STATIC_ASSERT(sizeof(daWtGate_c) == 0x5bc);

class daWtGate_HIO_c {
public:
    /* 80D2BB8C */ daWtGate_HIO_c();
    /* 80D2C3C0 */ ~daWtGate_HIO_c();
};


#endif /* D_A_OBJ_WATERGATE_H */
