#ifndef D_A_OBJ_TAKARADAI_H
#define D_A_OBJ_TAKARADAI_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daTkraDai_c
 * @brief Flight-by-Fowl Platform
 *
 * @details
 *
 */
class daTkraDai_c : public fopAc_ac_c {
public:
    /* 80D06E64 */ void setBaseMtx();
    /* 80D06FFC */ void CreateHeap();
    /* 80D07140 */ void create();
    /* 80D07344 */ void Execute(f32 (**)[3][4]);
    /* 80D073A4 */ void procMain();
    /* 80D074D0 */ void init_modeWait();
    /* 80D07528 */ void modeWait();
    /* 80D075A4 */ void Draw();
    /* 80D07668 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x65c - 0x568];
};

STATIC_ASSERT(sizeof(daTkraDai_c) == 0x65c);

class daTkraDai_HIO_c {
public:
    /* 80D06D8C */ daTkraDai_HIO_c();
    /* 80D0775C */ ~daTkraDai_HIO_c();
};


#endif /* D_A_OBJ_TAKARADAI_H */
