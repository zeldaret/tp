#ifndef D_A_OBJ_LV4SLIDEWALL_H
#define D_A_OBJ_LV4SLIDEWALL_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daSldWall_c
 * @brief Arbiter's Grounds Sliding Wall
 *
 * @details
 *
 */
class daSldWall_c : public fopAc_ac_c {
public:
    /* 80C61EB0 */ void setBaseMtx();
    /* 80C61F4C */ void CreateHeap();
    /* 80C61FB8 */ void create();
    /* 80C620E4 */ void Execute(f32 (**)[3][4]);
    /* 80C62134 */ void moveWall();
    /* 80C62238 */ void init_modeWait();
    /* 80C62244 */ void modeWait();
    /* 80C62248 */ void init_modeMoveOpen();
    /* 80C62254 */ void modeMoveOpen();
    /* 80C62314 */ void init_modeMoveClose();
    /* 80C62320 */ void modeMoveClose();
    /* 80C623E0 */ void setSe();
    /* 80C6249C */ void Draw();
    /* 80C62540 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5b4 - 0x568];
};
STATIC_ASSERT(sizeof(daSldWall_c) == 0x5b4);

class daSldWall_HIO_c {
public:
    /* 80C61E2C */ daSldWall_HIO_c();
    /* 80C625FC */ ~daSldWall_HIO_c();
};


#endif /* D_A_OBJ_LV4SLIDEWALL_H */
