#ifndef D_A_OBJ_WSWORD_H
#define D_A_OBJ_WSWORD_H

#include "SSystem/SComponent/c_phase.h"
#include "f_op/f_op_actor.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"

class daObjWSword_c : public fopAc_ac_c {
public:
    /* 80D3B998 */ void initBaseMtx();
    /* 80D3B9D4 */ void setBaseMtx();
    /* 80D3BA40 */ int Create();
    /* 80D3BAB8 */ int CreateHeap();
    /* 80D3BB28 */ int create();
    /* 80D3BDA0 */ int execute();
    /* 80D3BDF0 */ int draw();
    /* 80D3BE54 */ int _delete();

    /* 0x568 */ request_of_phase_process_class mPhaseReq;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ dBgS_ObjAcch mAcch;
    /* 0x74C */ dBgS_AcchCir mAcchCir;
    /* 0x78C */ dCcD_Stts mStts;
    /* 0x7C8 */ dCcD_Cyl mCyl;
};

STATIC_ASSERT(sizeof(daObjWSword_c) == 0x904);

#endif /* D_A_OBJ_WSWORD_H */
