#ifndef D_A_OBJ_ONSEN_H
#define D_A_OBJ_ONSEN_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/com/d_com_inf_game.h"

/**
 * @ingroup actors-objects
 * @class daObjOnsen_c
 * @brief Hot Spring
 *
 * @details
 *
 */
class daObjOnsen_c : public dBgS_MoveBgActor {
public:
    /* 80CA7B58 */ void initBaseMtx();
    /* 80CA7BB0 */ void setBaseMtx();
    /* 80CA7C28 */ int Create();
    /* 80CA7C74 */ int CreateHeap();
    /* 80CA7E44 */ int create1st();
    /* 80CA7EEC */ int Execute(Mtx**);
    /* 80CA7F1C */ int Draw();
    /* 80CA8008 */ int Delete();

    u32 getType() { return fopAcM_GetParamBit(this, 0, 8); }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5A8 */ J3DModel* mpModel[2];
    /* 0x5B0 */ mDoExt_btkAnm* mpBtk;
    /* 0x5B4 */ u8 mType;
};
STATIC_ASSERT(sizeof(daObjOnsen_c) == 0x5B8);

#endif /* D_A_OBJ_ONSEN_H */
