#ifndef D_A_OBJ_GRZ_ROCK_H
#define D_A_OBJ_GRZ_ROCK_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjGrzRock_c
 * @brief Hidden Village Rockslide
 *
 * @details
 *
 */
class daObjGrzRock_c : public fopAc_ac_c {
public:
    /* 80C14BD8 */ void setBaseMtx();
    /* 80C14C54 */ void setEnvTevColor();
    /* 80C14CB0 */ void setRoomNo();
    /* 80C14CF0 */ void setPrtcl();
    /* 80C14DA0 */ void Create();
    /* 80C14EE0 */ void CreateHeap();
    /* 80C14F50 */ void create();
    /* 80C1514C */ void Execute(f32 (**)[3][4]);
    /* 80C151A4 */ void Draw();
    /* 80C15248 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x804 - 0x568];
};
STATIC_ASSERT(sizeof(daObjGrzRock_c) == 0x804);


#endif /* D_A_OBJ_GRZ_ROCK_H */
