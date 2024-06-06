#ifndef D_A_OBJ_CBOARD_H
#define D_A_OBJ_CBOARD_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/com/d_com_inf_game.h"

/**
 * @ingroup actors-objects
 * @class daObjBoard_c
 * @brief Clear Board
 *
 * @details Actor used to function as an invisible wall.
 *
 */
class daObjBoard_c : public dBgS_MoveBgActor {
public:
    /* 8057B958 */ void initBaseMtx();
    /* 8057B978 */ void setBaseMtx();
    /* 8057BA78 */ int create1st();

    /* 8057BA70 */ virtual int CreateHeap();
    /* 8057B9C8 */ virtual int Create();
    /* 8057BB74 */ virtual int Execute(Mtx**);
    /* 8057BCC0 */ virtual int Draw();
    /* 8057BCC8 */ virtual int Delete();

    u8 getNameArg() { return fopAcM_GetParamBit(this, 0, 4); }
    u8 getArg0() { return fopAcM_GetParamBit(this, 4, 4); }
    u8 getSwNo() { return fopAcM_GetParamBit(this, 8, 8); }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ Mtx field_0x5a8;
};

STATIC_ASSERT(sizeof(daObjBoard_c) == 0x5D8);

#endif /* D_A_OBJ_CBOARD_H */
