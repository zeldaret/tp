#ifndef D_A_OBJ_ROTTRAP_H
#define D_A_OBJ_ROTTRAP_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daRotTrap_c
 * @brief Rotating Skull Trap
 *
 * @details
 *
 */
class daRotTrap_c : public fopAc_ac_c {
public:
    /* 80CBF940 */ void setBaseMtx();
    /* 80CBF9D8 */ void CreateHeap();
    /* 80CBFAC8 */ void create();
    /* 80CBFEC4 */ void Execute(f32 (**)[3][4]);
    /* 80CBFF1C */ void procMain();
    /* 80CC00AC */ void init_modeWait();
    /* 80CC0120 */ void modeWait();
    /* 80CC0180 */ void init_modeAcc();
    /* 80CC027C */ void modeAcc();
    /* 80CC034C */ void init_modeMove();
    /* 80CC0360 */ void modeMove();
    /* 80CC0440 */ void seSet();
    /* 80CC0548 */ void Draw();
    /* 80CC05EC */ void Delete();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0x173c - 0x568];
};
STATIC_ASSERT(sizeof(daRotTrap_c) == 0x173c);

class daRotTrap_HIO_c {
public:
    /* 80CBF8AC */ daRotTrap_HIO_c();
    /* 80CC0728 */ ~daRotTrap_HIO_c();
};


#endif /* D_A_OBJ_ROTTRAP_H */
