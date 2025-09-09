#ifndef D_A_OBJ_LV4SLIDEWALL_H
#define D_A_OBJ_LV4SLIDEWALL_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"

/**
 * @ingroup actors-objects
 * @class daSldWall_c
 * @brief Arbiter's Grounds Sliding Wall
 *
 * @details
 *
 */
class daSldWall_c : public dBgS_MoveBgActor {
public:
    /* 80C61EB0 */ void setBaseMtx();
    /* 80C61FB8 */ int create();
    /* 80C62134 */ void moveWall();
    /* 80C62238 */ void init_modeWait();
    /* 80C62244 */ void modeWait();
    /* 80C62248 */ void init_modeMoveOpen();
    /* 80C62254 */ void modeMoveOpen();
    /* 80C62314 */ void init_modeMoveClose();
    /* 80C62320 */ void modeMoveClose();
    /* 80C623E0 */ void setSe();

    /* 80C61F4C */ virtual int CreateHeap();
    /* 80C620E4 */ virtual int Execute(Mtx**);
    /* 80C6249C */ virtual int Draw();
    /* 80C62540 */ virtual int Delete();

    int getSw() { return fopAcM_GetParamBit(this, 0, 8); }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ u8 mMode;
    /* 0x5AD */ u8 mSwbit;
    /* 0x5AE */ u8 mIsSwitch;
    /* 0x5B0 */ f32 field_0x5b0;
};

STATIC_ASSERT(sizeof(daSldWall_c) == 0x5b4);

class daSldWall_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C61E2C */ daSldWall_HIO_c();
    /* 80C625FC */ virtual ~daSldWall_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x08 */ f32 move_amount;
    /* 0x0C */ f32 speed;
    /* 0x10 */ u8 vibration;
};


#endif /* D_A_OBJ_LV4SLIDEWALL_H */
