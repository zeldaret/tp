#ifndef D_A_OBJ_LV8UDFLOOR_H
#define D_A_OBJ_LV8UDFLOOR_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daUdFloor_c
 * @brief Palace of Twilight Switch Step
 *
 * @details
 *
 */
class daUdFloor_c : public fopAc_ac_c {
public:
    /* 80C8BDC8 */ void setBaseMtx();
    /* 80C8BE64 */ void CreateHeap();
    /* 80C8BEE4 */ void create();
    /* 80C8C0DC */ void Execute(f32 (**)[3][4]);
    /* 80C8C12C */ void moveLift();
    /* 80C8C264 */ void init_modeWait();
    /* 80C8C270 */ void modeWait();
    /* 80C8C274 */ void init_modeUpMoveInit();
    /* 80C8C310 */ void modeUpMoveInit();
    /* 80C8C354 */ void colorAnm(int);
    /* 80C8C5E4 */ void init_modeUpMove();
    /* 80C8C68C */ void modeUpMove();
    /* 80C8C7F8 */ void init_modeDownMoveInit();
    /* 80C8C81C */ void modeDownMoveInit();
    /* 80C8C860 */ void init_modeDownMove();
    /* 80C8C8E4 */ void modeDownMove();
    /* 80C8C994 */ void Draw();
    /* 80C8CA78 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5c8 - 0x568];
};
STATIC_ASSERT(sizeof(daUdFloor_c) == 0x5c8);

class daUdFloor_HIO_c {
public:
    /* 80C8BD0C */ daUdFloor_HIO_c();
    /* 80C8CB44 */ ~daUdFloor_HIO_c();
};


#endif /* D_A_OBJ_LV8UDFLOOR_H */
