#ifndef D_A_OBJ_INOBONE_H
#define D_A_OBJ_INOBONE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjIBone_c
 * @brief Boar Bone
 *
 * @details
 *
 */
class daObjIBone_c : public fopAc_ac_c {
public:
    /* 80C27830 */ void initBaseMtx();
    /* 80C2786C */ void setBaseMtx();
    /* 80C278CC */ void Create();
    /* 80C279A8 */ void CreateHeap();
    /* 80C27A20 */ void create();
    /* 80C27C4C */ void execute();
    /* 80C27E48 */ void setBreakEffect();
    /* 80C27FEC */ void draw();
    /* 80C28050 */ void _delete();

private:
    /* 0x568 */ u8 field_0x568[0x84c - 0x568];
};

STATIC_ASSERT(sizeof(daObjIBone_c) == 0x84c);


#endif /* D_A_OBJ_INOBONE_H */
