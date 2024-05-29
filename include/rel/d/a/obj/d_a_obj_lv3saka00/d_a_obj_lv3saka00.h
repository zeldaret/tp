#ifndef D_A_OBJ_LV3SAKA00_H
#define D_A_OBJ_LV3SAKA00_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjLv3saka_c
 * @brief Lakebed Temple Spiral 00
 *
 * @details
 *
 */
class daObjLv3saka_c : public dBgS_MoveBgActor {
public:
    /* 80C5BE58 */ void initBaseMtx();
    /* 80C5BE78 */ void setBaseMtx();
    /* 80C5BED8 */ int Create();
    /* 80C5BFA0 */ int CreateHeap();
    /* 80C5C058 */ int create1st();
    /* 80C5C0FC */ int Execute(Mtx**);
    /* 80C5C17C */ void setNrmDzb();
    /* 80C5C1F8 */ void setWtrDzb();
    /* 80C5C274 */ int Draw();
    /* 80C5C27C */ int Delete();

    u8 getSwbit() { return fopAcM_GetParamBit(this, 0, 8) & 0xFF; }
    u8 getType() { return fopAcM_GetParamBit(this, 28, 4) & 0xFF; }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ dBgW* mpBgW2;
};

#endif /* D_A_OBJ_LV3SAKA00_H */
