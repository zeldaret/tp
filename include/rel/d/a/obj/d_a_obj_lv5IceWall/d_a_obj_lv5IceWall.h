#ifndef D_A_OBJ_LV5ICEWALL_H
#define D_A_OBJ_LV5ICEWALL_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daIceWall_c
 * @brief Snowpeak Ruins Ice Wall
 *
 * @details
 *
 */
class daIceWall_c : public fopAc_ac_c {
public:
    /* 80C6B51C */ void setBaseMtx();
    /* 80C6B5E4 */ void CreateHeap();
    /* 80C6B69C */ void create();
    /* 80C6BB60 */ void Execute(f32 (**)[3][4]);
    /* 80C6BBC4 */ void procMain();
    /* 80C6BC50 */ void init_modeWait();
    /* 80C6BC6C */ void modeWait();
    /* 80C6C170 */ void init_modeBreak();
    /* 80C6C1C0 */ void modeBreak();
    /* 80C6C374 */ void Draw();
    /* 80C6C44C */ void Delete();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0x884 - 0x568];
};

STATIC_ASSERT(sizeof(daIceWall_c) == 0x884);

class daIceWall_HIO_c {
public:
    /* 80C6B42C */ daIceWall_HIO_c();
    /* 80C6C550 */ ~daIceWall_HIO_c();
};


#endif /* D_A_OBJ_LV5ICEWALL_H */
