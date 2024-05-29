#ifndef D_A_OBJ_SWALLSHUTTER_H
#define D_A_OBJ_SWALLSHUTTER_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daSwShutter_c
 * @brief Rider Gate
 *
 * @details
 *
 */
class daSwShutter_c : public fopAc_ac_c {
public:
    /* 805982A4 */ void setBaseMtx();
    /* 80598344 */ void CreateHeap();
    /* 805983C4 */ void create();
    /* 80598564 */ void Execute(f32 (**)[3][4]);
    /* 805985B4 */ void moveMain();
    /* 8059873C */ void init_modeWait();
    /* 80598748 */ void modeWait();
    /* 8059879C */ void init_modeMoveDownInit();
    /* 805989D0 */ void modeMoveDownInit();
    /* 80598A04 */ void init_modeMoveDown();
    /* 80598AFC */ void modeMoveDown();
    /* 80598D4C */ void init_modeMoveDownEnd();
    /* 80598D58 */ void modeMoveDownEnd();
    /* 80598D5C */ void Draw();
    /* 80598E00 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5e8 - 0x568];
};
STATIC_ASSERT(sizeof(daSwShutter_c) == 0x5e8);

class daSwShutter_HIO_c {
public:
    /* 805981EC */ daSwShutter_HIO_c();
    /* 80598ECC */ ~daSwShutter_HIO_c();
};


#endif /* D_A_OBJ_SWALLSHUTTER_H */
