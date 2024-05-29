#ifndef D_A_OBJ_GANONWALL2_H
#define D_A_OBJ_GANONWALL2_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjGWall2_c
 * @brief Ganon Wall 2
 *
 * @details
 *
 */
class daObjGWall2_c : public fopAc_ac_c {
public:
    /* 80BF57D8 */ void initBaseMtx();
    /* 80BF5814 */ void setBaseMtx();
    /* 80BF5878 */ void Create();
    /* 80BF5950 */ void CreateHeap();
    /* 80BF5AB4 */ void create1st();
    /* 80BF5B74 */ void Execute(f32 (**)[3][4]);
    /* 80BF5C0C */ void Draw();
    /* 80BF6004 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5c0 - 0x568];
};
STATIC_ASSERT(sizeof(daObjGWall2_c) == 0x5c0);


#endif /* D_A_OBJ_GANONWALL2_H */
