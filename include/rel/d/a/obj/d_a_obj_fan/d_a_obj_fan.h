#ifndef D_A_OBJ_FAN_H
#define D_A_OBJ_FAN_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/cc/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjFan_c
 * @brief (City in the Sky?) Fan)
 *
 * @details
 *
 */
class daObjFan_c : public dBgS_MoveBgActor {
public:
    /* 80BE4D98 */ fopAc_ac_c* search_tornado();
    /* 80BE4E08 */ void initBaseMtx();
    /* 80BE4E44 */ void setBaseMtx();
    /* 80BE4F08 */ int Create();
    /* 80BE4FD4 */ int CreateHeap();
    /* 80BE50EC */ int create1st();
    /* 80BE519C */ int Execute(f32 (**)[3][4]);
    /* 80BE538C */ void action();
    /* 80BE583C */ void setCollision();
    /* 80BE5960 */ int Draw();
    /* 80BE5A04 */ int Delete();

    u8 getType() { return fopAcM_GetParamBit(this,0,4); }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mModel;
    /* 0x5AC */ dBgW* field_0x5ac;
    /* 0x5B0 */ dCcD_Stts field_0x5b0;
    /* 0x5EC */ dCcD_Sph field_0x5ec[4];
    /* 0xACC */ s16 field_0xacc;
    /* 0xACE */ s16 field_0xace;
    /* 0xAD0 */ u32 field_0xad0;
    /* 0xAD4 */ u8 field_0xad4;
    /* 0xAD8 */ cXyz field_0xad8;
};
STATIC_ASSERT(sizeof(daObjFan_c) == 0xAE4);

#endif /* D_A_OBJ_FAN_H */
