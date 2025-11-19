#ifndef D_A_OBJ_LV8KEKKAITRAP_H
#define D_A_OBJ_LV8KEKKAITRAP_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"

/**
 * @ingroup actors-objects
 * @class daKekaiTrap_c
 * @brief Palace of Twilight Barrier Trap
 *
 * @details
 *
 */
class daKekaiTrap_c : public dBgS_MoveBgActor {
public:
    /* 80C87D40 */ void setBaseMtx();
    /* 80C87E48 */ int create();
    /* 80C88000 */ void moveMain();
    /* 80C88104 */ void init_modeWait();
    /* 80C88110 */ void modeWait();
    /* 80C88114 */ void init_modeMoveUp();
    /* 80C88138 */ void modeMoveUp();
    /* 80C881F0 */ void init_modeMoveDown();
    /* 80C88214 */ void modeMoveDown();

    /* 80C87DC8 */ virtual int CreateHeap();
    /* 80C87FB0 */ virtual int Execute(Mtx**);
    /* 80C882C8 */ virtual int Draw();
    /* 80C8836C */ virtual int Delete();

    int getType() { return fopAcM_GetParamBit(this, 0, 4); }
    int getSwBit() { return fopAcM_GetParamBit(this, 4, 8); }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ u8 mIsSwitch;
    /* 0x5AD */ u8 mSwbit;
    /* 0x5AE */ u8 mType;
    /* 0x5AF */ u8 mMode;
    /* 0x5B0 */ u8 mTimer;
};

STATIC_ASSERT(sizeof(daKekaiTrap_c) == 0x5b4);


#endif /* D_A_OBJ_LV8KEKKAITRAP_H */
