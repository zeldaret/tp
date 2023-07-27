#ifndef D_A_OBJ_VGROUND_H
#define D_A_OBJ_VGROUND_H

#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

class daObjVGnd_c : public fopAc_ac_c {
public:
    /* 80D213F8 */ void initBaseMtx();
    /* 80D21448 */ void setBaseMtx();
    /* 80D214AC */ int Create();
    /* 80D21500 */ int CreateHeap();
    /* 80D216F4 */ int create();
    /* 80D217A8 */ int execute();
    /* 80D21878 */ int draw();
    /* 80D2194C */ int _delete();

    u32 getSwbit() { return fopAcM_GetParamBit(this, 0, 8); }

    /* 0x568 */ request_of_phase_process_class mPhaseReq;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ mDoExt_btkAnm* mpBtk;
    /* 0x578 */ mDoExt_brkAnm* mpBrk;
};     // Size: 0x57C

#endif /* D_A_OBJ_VGROUND_H */
