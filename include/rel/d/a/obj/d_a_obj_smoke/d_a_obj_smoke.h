#ifndef D_A_OBJ_SMOKE_H
#define D_A_OBJ_SMOKE_H

#include "f_op/f_op_actor_mng.h"
#include "d/com/d_com_inf_game.h"

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

    /* 0x568 */ JPABaseEmitter* mParticle;
};

#endif /* D_A_OBJ_SMOKE_H */
