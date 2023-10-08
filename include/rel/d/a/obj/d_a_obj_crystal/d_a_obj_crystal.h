#ifndef D_A_OBJ_CRYSTAL_H
#define D_A_OBJ_CRYSTAL_H

#include "f_op/f_op_actor_mng.h"

class daObjCrystal_c : public fopAc_ac_c {
public:
    /* 80BD63B8 */ void initBaseMtx();
    /* 80BD6410 */ void setBaseMtx();
    /* 80BD6470 */ int Create();
    /* 80BD65B0 */ int CreateHeap();
    /* 80BD6664 */ int create();
    /* 80BD6718 */ int execute();
    /* 80BD673C */ int draw();
    /* 80BD67C8 */ int _delete();

    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ J3DModel* mpModel[2];
    /* 0x578 */ JPABaseEmitter* mpEmitter;
    /* 0x57C */ u16 mJointID;
};

#endif /* D_A_OBJ_CRYSTAL_H */
