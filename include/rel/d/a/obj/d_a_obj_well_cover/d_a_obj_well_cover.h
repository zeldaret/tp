#ifndef D_A_OBJ_WELL_COVER_H
#define D_A_OBJ_WELL_COVER_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/com/d_com_inf_game.h"

/**
 * @ingroup actors-objects
 * @class daObjWCover_c
 * @brief Graveyard Well Cover
 *
 * @details
 *
 */
class daObjWCover_c : public dBgS_MoveBgActor {
public:
    /* 80D36298 */ void initBaseMtx();
    /* 80D362D4 */ void setBaseMtx();
    /* 80D36348 */ int Create();
    /* 80D36394 */ int CreateHeap();
    /* 80D36404 */ int create();
    /* 80D364E0 */ int Execute(Mtx**);
    /* 80D3652C */ void action();
    /* 80D365B8 */ void modeWait();
    /* 80D36790 */ void init_modeBreak();
    /* 80D3689C */ void modeBreak();
    /* 80D368A0 */ int Draw();
    /* 80D36944 */ int Delete();

    u8 getSwNo() { return fopAcM_GetParam(this); }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ u8 field_0x5AC[0x5B0 - 0x5AC];
    /* 0x5B0 */ u8 field_0x5b0;
};
STATIC_ASSERT(sizeof(daObjWCover_c) == 0x5B4);

#endif /* D_A_OBJ_WELL_COVER_H */
