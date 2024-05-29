#ifndef D_A_OBJ_TWGATE_H
#define D_A_OBJ_TWGATE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daTwGate_c
 * @brief Twilight Gate (Wall?)
 *
 * @details
 *
 */
class daTwGate_c : public fopAc_ac_c {
public:
    /* 80D1FB84 */ void setBaseMtx();
    /* 80D1FC0C */ void CreateHeap();
    /* 80D1FD44 */ void create();
    /* 80D1FFA4 */ void Execute(f32 (**)[3][4]);
    /* 80D200B4 */ void Draw();
    /* 80D20180 */ void Delete();
private:
    /* 0x568 */ u8 field_0x568[0x5fc - 0x568];
};
STATIC_ASSERT(sizeof(daTwGate_c) == 0x5fc);

class daTwGate_HIO_c {
public:
    /* 80D1FAAC */ daTwGate_HIO_c();
    /* 80D2024C */ ~daTwGate_HIO_c();
};

#endif /* D_A_OBJ_TWGATE_H */
