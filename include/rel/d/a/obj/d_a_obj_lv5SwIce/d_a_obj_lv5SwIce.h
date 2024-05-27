#ifndef D_A_OBJ_LV5SWICE_H
#define D_A_OBJ_LV5SWICE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daLv5SwIce_c
 * @brief Snowpeak Ruins Ice Switch
 *
 * @details
 *
 */
class daLv5SwIce_c : public fopAc_ac_c {
public:
    /* 80C6CA20 */ void setBaseMtx();
    /* 80C6CAA8 */ void CreateHeap();
    /* 80C6CB14 */ void create();
    /* 80C6CDD0 */ void Execute(f32 (**)[3][4]);
    /* 80C6CE28 */ void procMain();
    /* 80C6CEB4 */ void init_modeWait();
    /* 80C6CED0 */ void modeWait();
    /* 80C6D0F4 */ void init_modeBreak();
    /* 80C6D144 */ void modeBreak();
    /* 80C6D260 */ void Draw();
    /* 80C6D314 */ void Delete();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0x738 - 0x568];
};
STATIC_ASSERT(sizeof(daLv5SwIce_c) == 0x738);

class daLv5SwIce_HIO_c {
public:
    /* 80C6C94C */ daLv5SwIce_HIO_c();
    /* 80C6D418 */ ~daLv5SwIce_HIO_c();
};


#endif /* D_A_OBJ_LV5SWICE_H */
