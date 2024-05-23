#ifndef D_A_OBJ_LV6FURIKOTRAP_H
#define D_A_OBJ_LV6FURIKOTRAP_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daLv6FurikoTrap_c : public fopAc_ac_c {
public:
    /* 80C72510 */ void setBaseMtx();
    /* 80C72598 */ void CreateHeap();
    /* 80C72604 */ void create();
    /* 80C729B4 */ void Execute(f32 (**)[3][4]);
    /* 80C72CA8 */ void move();
    /* 80C72D24 */ void init_modeMove();
    /* 80C72D38 */ void modeMove();
    /* 80C72EE0 */ void Draw();
    /* 80C72F94 */ void Delete();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDSph[64];

private:
    /* 0x568 */ u8 field_0x568[0x1d18 - 0x568];
};
STATIC_ASSERT(sizeof(daLv6FurikoTrap_c) == 0x1d18);

class daLv6FurikoTrap_HIO_c {
public:
    /* 80C7248C */ daLv6FurikoTrap_HIO_c();
    /* 80C73050 */ ~daLv6FurikoTrap_HIO_c();
};


#endif /* D_A_OBJ_LV6FURIKOTRAP_H */
