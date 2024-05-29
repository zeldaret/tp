#ifndef D_A_OBJ_TREESH_H
#define D_A_OBJ_TREESH_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daTreeSh_c
 * @brief Conifer Tree
 *
 * @details
 *
 */
class daTreeSh_c : public fopAc_ac_c {
public:
    /* 80D1F258 */ void initBaseMtx();
    /* 80D1F294 */ void setBaseMtx();
    /* 80D1F2E8 */ void CreateHeap();
    /* 80D1F358 */ void Create();
    /* 80D1F414 */ void create1st();
    /* 80D1F49C */ void Execute(f32 (**)[3][4]);
    /* 80D1F648 */ void Draw();
    /* 80D1F6EC */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5cc - 0x568];
};
STATIC_ASSERT(sizeof(daTreeSh_c) == 0x5cc);

class daTreeSh_HIO_c {
public:
    /* 80D1F0CC */ daTreeSh_HIO_c();
    /* 80D1F81C */ ~daTreeSh_HIO_c();
};


#endif /* D_A_OBJ_TREESH_H */
