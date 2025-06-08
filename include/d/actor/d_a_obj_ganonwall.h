#ifndef D_A_OBJ_GANONWALL_H
#define D_A_OBJ_GANONWALL_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjGWall_c
 * @brief Gannon Wall
 *
 * @details
 *
 */
class daObjGWall_c : public fopAc_ac_c {
public:
    /* 80BF4D18 */ void initBaseMtx();
    /* 80BF4D54 */ void setBaseMtx();
    /* 80BF4DA8 */ int Create();
    /* 80BF4E8C */ int CreateHeap();
    /* 80BF4FF0 */ int create();
    /* 80BF50A4 */ int execute();
    /* 80BF50CC */ int checkDraw();
    /* 80BF5168 */ int draw();
    /* 80BF5530 */ int _delete();

    u32 getEventBit1() { return fopAcM_GetParamBit(this, 0, 10); }
    u32 getEventBit2() { return fopAcM_GetParamBit(this, 10, 10); }

private:
    /* 0x568 */ request_of_phase_process_class mPhaseReq;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ mDoExt_btkAnm* mpBtkAnm;
    /* 0x578 */ u16 mEventBit1;
    /* 0x57A */ u16 mEventBit2;
    /* 0x57C */ u16 mMatIdx;
};

STATIC_ASSERT(sizeof(daObjGWall_c) == 0x580);


#endif /* D_A_OBJ_GANONWALL_H */
