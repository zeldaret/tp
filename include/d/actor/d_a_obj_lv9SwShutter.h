#ifndef D_A_OBJ_LV9SWSHUTTER_H
#define D_A_OBJ_LV9SWSHUTTER_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daLv9SwShutter_c
 * @brief Hyrule Castle Switch Shutter
 *
 * @details
 *
 */
class daLv9SwShutter_c : public fopAc_ac_c {
public:
    /* 80C8CF38 */ void setBaseMtx();
    /* 80C8CFD4 */ void CreateHeap();
    /* 80C8D040 */ void create();
    /* 80C8D168 */ void Execute(f32 (**)[3][4]);
    /* 80C8D1B8 */ void moveShutter();
    /* 80C8D2BC */ void init_modeWait();
    /* 80C8D2C8 */ void modeWait();
    /* 80C8D2CC */ void init_modeOpen();
    /* 80C8D2D8 */ void modeOpen();
    /* 80C8D440 */ void init_modeClose();
    /* 80C8D458 */ void modeClose();
    /* 80C8D5D0 */ void Draw();
    /* 80C8D674 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5b4 - 0x568];
};

STATIC_ASSERT(sizeof(daLv9SwShutter_c) == 0x5b4);

class daLv9SwShutter_HIO_c {
public:
    /* 80C8CEAC */ daLv9SwShutter_HIO_c();
    /* 80C8D730 */ ~daLv9SwShutter_HIO_c();
};


#endif /* D_A_OBJ_LV9SWSHUTTER_H */
