#ifndef D_A_OBJ_LV4HSTARGET_H
#define D_A_OBJ_LV4HSTARGET_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"
#include "m_Do/m_Do_hostIO.h"

class daLv4HsTarget_c : public dBgS_MoveBgActor {
public:
    /* 80C5F690 */ void setBaseMtx();
    /* 80C5F784 */ int create();

    /* 80C5F718 */ virtual int CreateHeap();
    /* 80C5F85C */ virtual int Execute(Mtx**);
    /* 80C5F870 */ virtual int Draw();
    /* 80C5F8D4 */ virtual int Delete();

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
};

class daLv4HsTarget_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C5F62C */ daLv4HsTarget_HIO_c();
    /* 80C5F990 */ virtual ~daLv4HsTarget_HIO_c() {}
};

#endif /* D_A_OBJ_LV4HSTARGET_H */
