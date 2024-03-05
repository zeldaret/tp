#ifndef D_A_OBJ_STONEMARK_H
#define D_A_OBJ_STONEMARK_H

#include "SSystem/SComponent/c_phase.h"
#include "f_op/f_op_actor.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"

class daObjSMark_c : public fopAc_ac_c {
public:
    /* 8059A018 */ void initBaseMtx();
    /* 8059A038 */ void setBaseMtx();
    /* 8059A080 */ int Create();
    /* 8059A168 */ int create();
    /* 8059A2CC */ int draw();
    /* 8059A33C */ int _delete();

    /* 0x0568 */ request_of_phase_process_class mpPhase;
    /* 0x0570 */ GXTexObj mTexObj;
    /* 0x0590 */ dBgS_ObjAcch mObjAcch;
    /* 0x0768 */ dBgS_AcchCir mAcchCir;
    /* 0x07A8 */ dCcD_Stts mStts;
    /* 0x07E4 */ Mtx cullMtx;
};

#endif /* D_A_OBJ_STONEMARK_H */
