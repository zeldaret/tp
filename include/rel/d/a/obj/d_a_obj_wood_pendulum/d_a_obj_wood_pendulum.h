#ifndef D_A_OBJ_WOOD_PENDULUM_H
#define D_A_OBJ_WOOD_PENDULUM_H

#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjWPndlm_c
 * @brief Wooden Pendulum
 *
 * @details
 *
 */
class daObjWPndlm_c : public fopAc_ac_c {
public:
public:
    /* 80D39418 */ void initBaseMtx();
    /* 80D39454 */ void setBaseMtx();
    /* 80D394CC */ int Create();
    /* 80D395C8 */ int CreateHeap();
    /* 80D39638 */ int create();
    /* 80D39978 */ int execute();
    /* 80D39B68 */ int draw();
    /* 80D39BCC */ int _delete();

    u32 getArg0() { return fopAcM_GetParamBit(this, 0, 8); }
    u32 getArg1() { return fopAcM_GetParamBit(this, 8, 8); }

private:
    /* 0x568 */ request_of_phase_process_class mPhaseReq;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ dCcD_Stts mStts;
    /* 0x5B0 */ dCcD_Sph mSph;
    /* 0x6E8 */ dCcD_Sph field_0x6e8[2];
    /* 0x958 */ s16 field_0x958;
    /* 0x95A */ s16 field_0x95a;
    /* 0x95C */ s16 field_0x95c;
};
STATIC_ASSERT(sizeof(daObjWPndlm_c) == 0x960);


#endif /* D_A_OBJ_WOOD_PENDULUM_H */
