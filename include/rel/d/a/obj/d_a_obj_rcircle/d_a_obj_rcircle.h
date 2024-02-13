#ifndef D_A_OBJ_RCIRCLE_H
#define D_A_OBJ_RCIRCLE_H

#include "f_op/f_op_actor_mng.h"
#include "d/com/d_com_inf_game.h"

class daObjRCircle_c : public fopAc_ac_c, public request_of_phase_process_class {
public:
    /* 80CB8678 */ daObjRCircle_c();
    /* 80CB874C */ virtual ~daObjRCircle_c();
    /* 80CB8814 */ int createHeap();
    /* 80CB8928 */ int create();
    /* 80CB8A28 */ int Delete();
    /* 80CB8A5C */ int draw();
    /* 80CB8B28 */ int execute();
    /* 80CB8BE4 */ void init();
    /* 80CB8BF0 */ void setModelMtx();

    int getSwBit() { return fopAcM_GetParamBit(this, 0, 8) & 0xFF; }

    /* 0x574 */ mDoExt_brkAnm mBrk;
    /* 0x58C */ mDoExt_btkAnm mBtk;
    /* 0x5A4 */ J3DModel* mpModel;
    /* 0x5A8 */ u8 mSwitch;
};

#endif /* D_A_OBJ_RCIRCLE_H */
