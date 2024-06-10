#ifndef D_A_OBJ_GRA_ROCK_H
#define D_A_OBJ_GRA_ROCK_H

#include "f_op/f_op_actor_mng.h"
#include "d/cc/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daObjGraRock_c
 * @brief Goron Entombing Rock
 *
 * @details
 *
 */
class daObjGraRock_c : public fopAc_ac_c {
public:
    /* 80C110F8 */ void setAttnPos();
    /* 80C11444 */ void setBaseMtx();
    /* 80C114C0 */ void setPrtcl();
    /* 80C1157C */ void bombParticleSet();
    /* 80C11730 */ void setEnvTevColor();
    /* 80C1178C */ void setRoomNo();
    /* 80C117D0 */ void col_set();
    /* 80C11964 */ void checkHitAt(cCcD_Obj*);
    /* 80C11970 */ void Create();
    /* 80C11B68 */ void CreateHeap();
    /* 80C11C64 */ void create();
    /* 80C11FF0 */ void Execute(f32 (**)[3][4]);
    /* 80C120FC */ void Draw();
    /* 80C121C4 */ void Delete();

    static u8 const mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0x9cc - 0x568];
};

STATIC_ASSERT(sizeof(daObjGraRock_c) == 0x9cc);


#endif /* D_A_OBJ_GRA_ROCK_H */
