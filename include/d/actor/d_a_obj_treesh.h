#ifndef D_A_OBJ_TREESH_H
#define D_A_OBJ_TREESH_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "m_Do/m_Do_hostIO.h"

/**
 * @ingroup actors-objects
 * @class daTreeSh_c
 * @brief Conifer Tree
 *
 * @details
 *
 */
class daTreeSh_c : public dBgS_MoveBgActor {
public:
    /* 80D1F258 */ void initBaseMtx();
    /* 80D1F294 */ void setBaseMtx();
    /* 80D1F414 */ int create1st();

    /* 80D1F2E8 */ virtual int CreateHeap();
    /* 80D1F358 */ virtual int Create();
    /* 80D1F49C */ virtual int Execute(Mtx**);
    /* 80D1F648 */ virtual int Draw();
    /* 80D1F6EC */ virtual int Delete();

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ csXyz mRot[2];
    /* 0x5B8 */ f32 field_0x5b8[2];
    /* 0x5C0 */ s16 field_0x5c0[2];
    /* 0x5C4 */ s16 field_0x5c4[2];
    /* 0x5C8 */ s16 mShakeTimer[2];
};

STATIC_ASSERT(sizeof(daTreeSh_c) == 0x5cc);

class daTreeSh_HIO_c : public mDoHIO_entry_c {
public:
    /* 80D1F0CC */ daTreeSh_HIO_c();
    /* 80D1F81C */ virtual ~daTreeSh_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x4 */ s16 shake_strength;
    /* 0x6 */ s16 shake_speed;
    /* 0x8 */ s16 field_0x8;
    /* 0xA */ csXyz field_0xa;
};


#endif /* D_A_OBJ_TREESH_H */
