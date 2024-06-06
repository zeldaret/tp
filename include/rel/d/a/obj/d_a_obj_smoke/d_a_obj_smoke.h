#ifndef D_A_OBJ_SMOKE_H
#define D_A_OBJ_SMOKE_H

#include "d/com/d_com_inf_game.h"

/**
 * @ingroup actors-objects
 * @class daObjSmoke_c
 * @brief Elde Inn Stove Smoke
 *
 * @details
 *
 */
class daObjSmoke_c : public fopAc_ac_c {
public:
    u8 getSwbit() {
        return fopAcM_GetParamBit(this,0,8);
    }

    /* 80CDCE78 */ void initBaseMtx();
    /* 80CDCE98 */ void setBaseMtx();
    /* 80CDCEF0 */ int Create();
    /* 80CDCF9C */ int create();
    /* 80CDD004 */ int execute();
    /* 80CDD0B8 */ int _delete();

private:
    /* 0x568 */ JPABaseEmitter* mParticle;
};

STATIC_ASSERT(sizeof(daObjSmoke_c) == 0x56C);

#endif /* D_A_OBJ_SMOKE_H */
