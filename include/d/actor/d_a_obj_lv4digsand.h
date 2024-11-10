#ifndef D_A_OBJ_LV4DIGSAND_H
#define D_A_OBJ_LV4DIGSAND_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daObjL4DigSand_c
 * @brief Arbiter's Grounds Digging Sand
 *
 * @details
 *
 */
class daObjL4DigSand_c : public dBgS_MoveBgActor {
public:
    /* 80C66B18 */ void initBaseMtx();
    /* 80C66B54 */ void setBaseMtx();
    /* 80C66C94 */ int create1st();
    /* 80C66DD0 */ void action();
    /* 80C66E74 */ void mode_init_wait();
    /* 80C66E80 */ void mode_wait();
    /* 80C66EAC */ void mode_init_dig();
    /* 80C66FFC */ void mode_dig();
    /* 80C670AC */ void mode_init_end();
    /* 80C67100 */ void mode_end();

    /* 80C66C24 */ virtual int CreateHeap();
    /* 80C66BC8 */ virtual int Create();
    /* 80C66D40 */ virtual int Execute(f32 (**)[3][4]);
    /* 80C67104 */ virtual int Draw();
    /* 80C671A8 */ virtual int Delete();

    u8 getSwNo() { return fopAcM_GetParamBit(this, 0, 8); }
    void startDig() { field_0x941 = 1; }
    void endDig() { field_0x941 = 2; }

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ dBgS_ObjAcch mAcch;
    /* 0x784 */ dBgS_AcchCir mAcchCir;
    /* 0x7C4 */ dCcD_Stts mCcStts;
    /* 0x800 */ dCcD_Cyl mCcCyl;
    /* 0x93C */ f32 mGroundY;
    /* 0x940 */ u8 mMode;
    /* 0x941 */ u8 field_0x941;
    /* 0x942 */ u8 mTimer;
};

STATIC_ASSERT(sizeof(daObjL4DigSand_c) == 0x944);


#endif /* D_A_OBJ_LV4DIGSAND_H */
