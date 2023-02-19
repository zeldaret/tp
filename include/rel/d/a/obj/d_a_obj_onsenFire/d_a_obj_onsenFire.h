#ifndef D_A_OBJ_ONSENFIRE_H
#define D_A_OBJ_ONSENFIRE_H

#include "f_op/f_op_actor_mng.h"
#include "d/com/d_com_inf_game.h"

inline void dComIfGp_particle_setSimple(u16 param_0,cXyz* param_1, 
                                        u8 param_2, _GXColor& param_3,
                                        _GXColor& param_4, int param_5, 
                                        float param_6) {
    g_dComIfG_gameInfo.play.getParticle()->setSimple(param_0,param_1,0,param_2,param_3,param_4,param_5,param_6);
}

class daObjOnsenFire_c : public fopAc_ac_c {
public:    
    /* 80CA8278 */ int create();
    /* 80CA82F4 */ int execute();
};

#endif /* D_A_OBJ_ONSENFIRE_H */
