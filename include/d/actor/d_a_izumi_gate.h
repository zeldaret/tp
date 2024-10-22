#ifndef D_A_IZUMI_GATE_H
#define D_A_IZUMI_GATE_H

#include "d/d_bg_s_movebg_actor.h"
#include "d/d_com_inf_game.h"

/**
 * @ingroup actors-unsorted
 * @class daIzumiGate_c
 * @brief Ordon Spring Gate
 *
 * @details
 *
 */
class daIzumiGate_c : public dBgS_MoveBgActor {
public:
    /* 80849098 */ void initBaseMtx();
    /* 808490B8 */ void setBaseMtx();
    /* 80849260 */ int CreateHeap();
    /* 808492D8 */ int Create();
    /* 808492FC */ int Execute(Mtx**);
    /* 80849328 */ int Draw();
    /* 808493CC */ int Delete();

    inline int create();

    /* 0x5A0 */ J3DModel* mpModel;
    /* 0x5A4 */ request_of_phase_process_class mPhaseReq;
};     // Size: 0x5AC

#endif /* D_A_IZUMI_GATE_H */
