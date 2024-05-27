#ifndef D_A_OBJ_LV8KEKKAITRAP_H
#define D_A_OBJ_LV8KEKKAITRAP_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daKekaiTrap_c
 * @brief Palace of Twilight Barrier Trap
 *
 * @details
 *
 */
class daKekaiTrap_c : public fopAc_ac_c {
public:
    /* 80C87D40 */ void setBaseMtx();
    /* 80C87DC8 */ void CreateHeap();
    /* 80C87E48 */ void create();
    /* 80C87FB0 */ void Execute(f32 (**)[3][4]);
    /* 80C88000 */ void moveMain();
    /* 80C88104 */ void init_modeWait();
    /* 80C88110 */ void modeWait();
    /* 80C88114 */ void init_modeMoveUp();
    /* 80C88138 */ void modeMoveUp();
    /* 80C881F0 */ void init_modeMoveDown();
    /* 80C88214 */ void modeMoveDown();
    /* 80C882C8 */ void Draw();
    /* 80C8836C */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5b4 - 0x568];
};
STATIC_ASSERT(sizeof(daKekaiTrap_c) == 0x5b4);

class daKekaiTrap_HIO_c {
public:
    /* 80C87CAC */ daKekaiTrap_HIO_c();
    /* 80C88438 */ ~daKekaiTrap_HIO_c();
};


#endif /* D_A_OBJ_LV8KEKKAITRAP_H */
