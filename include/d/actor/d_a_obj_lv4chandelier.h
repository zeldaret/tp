#ifndef D_A_OBJ_LV4CHANDELIER_H
#define D_A_OBJ_LV4CHANDELIER_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_model.h"

/**
 * @ingroup actors-objects
 * @class daObjLv4Chan_c
 * @brief Arbiter's Grounds Chandelier
 *
 * @details
 *
 */
class daObjLv4Chan_c : public fopAc_ac_c {
public:
    struct ChainPos {
            /* 80C66564 */ ~ChainPos();
            /* 80C665A0 */ ChainPos();
    };

    /* 80C63360 */ void create1st();
    /* 80C634CC */ void setMtxChain(daObjLv4Chan_c::ChainPos*, dMdl_obj_c*, int);
    /* 80C636B4 */ void setMtx();
    /* 80C639B4 */ void rideActor(fopAc_ac_c*);
    /* 80C63CFC */ void CreateHeap();
    /* 80C63FA8 */ void Create();
    /* 80C6449C */ void constraintChain(daObjLv4Chan_c::ChainPos*, int);
    /* 80C64668 */ void constraintBase();
    /* 80C647FC */ void calcVec(daObjLv4Chan_c::ChainPos*, int);
    /* 80C64878 */ void chkGnd();
    /* 80C648F4 */ void Execute(f32 (**)[3][4]);
    /* 80C65F04 */ void Draw();
    /* 80C66114 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x24a4 - 0x568];
};

STATIC_ASSERT(sizeof(daObjLv4Chan_c) == 0x24a4);

class daObjSwChain_c : public fopAc_ac_c {
public:
    /* 80C665A4 */ void checkTight();
};


#endif /* D_A_OBJ_LV4CHANDELIER_H */
