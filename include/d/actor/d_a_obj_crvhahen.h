#ifndef D_A_OBJ_CRVHAHEN_H
#define D_A_OBJ_CRVHAHEN_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjCRVHAHEN_c
 * @brief Caravan Wood
 *
 * @details
 *
 */
class daObjCRVHAHEN_c : public fopAc_ac_c {
public:
    /* 80BD342C */ void HahenSet(cXyz, cXyz, cXyz, cXyz, f32);
    /* 80BD3628 */ void Wall_Check(cXyz, cXyz);
    /* 80BD3720 */ void Hahen_Hakai(int, int);
    /* 80BD38DC */ void CheckCull();
    /* 80BD3A9C */ void checkViewArea(cXyz*);
    /* 80BD3B20 */ void Execute();
    /* 80BD3B74 */ void Delete();
    /* 80BD3C0C */ void setBaseMtx();
    /* 80BD3DBC */ void create();

private:
    /* 0x568 */ u8 field_0x568[0x794 - 0x568];
};

STATIC_ASSERT(sizeof(daObjCRVHAHEN_c) == 0x794);


#endif /* D_A_OBJ_CRVHAHEN_H */
