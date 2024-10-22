#ifndef D_A_OBJ_LV3WATEREFF_H
#define D_A_OBJ_LV3WATEREFF_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjWaterEff_c
 * @brief Room 09 Water
 *
 * @details
 *
 */
class daObjWaterEff_c : public fopAc_ac_c {
public:
    /* 80C5C4F8 */ int Create();
    /* 80C5C5DC */ int create();
    /* 80C5C6B0 */ int execute();
    /* 80C5C7B8 */ int _delete();

private:
    /* 0x568 */ cXyz mSePositions[2];
    /* 0x580 */ JPABaseEmitter* mParticles[4];
    /* 0x590 */ u8 unused_0x590[0x594 - 0x590];
};

STATIC_ASSERT(sizeof(daObjWaterEff_c) == 0x594);

#endif /* D_A_OBJ_LV3WATEREFF_H */
