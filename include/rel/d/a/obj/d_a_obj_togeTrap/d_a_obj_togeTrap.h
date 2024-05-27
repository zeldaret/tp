#ifndef D_A_OBJ_TOGETRAP_H
#define D_A_OBJ_TOGETRAP_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daTogeTrap_c
 * @brief Blade Trap
 *
 * @details
 *
 */
class daTogeTrap_c : public fopAc_ac_c {
public:
    /* 80D17C74 */ void setBaseMtx();
    /* 80D17D5C */ void CreateHeap();
    /* 80D17E14 */ void create();
    /* 80D18244 */ void rideCallBack(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
    /* 80D1825C */ void Execute(f32 (**)[3][4]);
    /* 80D182C8 */ void moveMain();
    /* 80D185DC */ void playerAreaCheck();
    /* 80D186B0 */ void init_modeWait();
    /* 80D186BC */ void modeWait();
    /* 80D186C0 */ void init_modeMoveUp();
    /* 80D18784 */ void modeMoveUp();
    /* 80D188C0 */ void init_modeMoveDown();
    /* 80D188DC */ void modeMoveDown();
    /* 80D18994 */ void init_modeBreak();
    /* 80D18A5C */ void modeBreak();
    /* 80D18BEC */ void Draw();
    /* 80D18CA4 */ void Delete();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0xae4 - 0x568];
};
STATIC_ASSERT(sizeof(daTogeTrap_c) == 0xae4);

class daTogeTrap_HIO_c {
public:
    /* 80D17B6C */ daTogeTrap_HIO_c();
    /* 80D18DA8 */ ~daTogeTrap_HIO_c();
};


#endif /* D_A_OBJ_TOGETRAP_H */
