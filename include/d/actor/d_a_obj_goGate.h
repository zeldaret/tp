#ifndef D_A_OBJ_GOGATE_H
#define D_A_OBJ_GOGATE_H

#include "SSystem/SComponent/c_phase.h"
#include "d/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"
#include "m_Do/m_Do_hostIO.h"

/**
 * @ingroup actors-objects
 * @class daGoGate_c
 * @brief Goron Gate
 *
 * @details
 *
 */
class daGoGate_c : public dBgS_MoveBgActor {
public:
    enum Mode {
        MODE_WAIT = 0,
        MODE_OPEN = 1,
        MODE_CLOSE = 2,
    };

    /* 80BFD724 */ void setBaseMtx();
    /* 80BFD7C0 */ int CreateHeap();
    /* 80BFD82C */ cPhs__Step create();
    /* 80BFD984 */ int Execute(Mtx**);
    /* 80BFD9D4 */ void moveGate();
    /* 80BFDAD8 */ void init_modeWait();
    /* 80BFDAE4 */ void modeWait();
    /* 80BFDAE8 */ void init_modeMoveOpen();
    /* 80BFDAF4 */ void modeMoveOpen();
    /* 80BFDC04 */ void init_modeMoveClose();
    /* 80BFDC10 */ void modeMoveClose();
    /* 80BFDD20 */ void setSe();
    /* 80BFDDDC */ int Draw();
    /* 80BFDE80 */ int Delete();

    u32 getLR() { return fopAcM_GetParamBit(this, 8, 8); }
    u32 getSw() { return fopAcM_GetParamBit(this, 0, 8); }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ u8 mMode;
    /* 0x5AD */ u8 mSw;
    /* 0x5AE */ u8 mOpen;
    /* 0x5AF */ u8 mLR;
    /* 0x5B0 */ f32 field_0x5b0;
    /* 0x5B4 */ f32 field_0x5b4;
};

STATIC_ASSERT(sizeof(daGoGate_c) == 0x5b8);

class daGoGate_HIO_c : public mDoHIO_entry_c {
public:
    /* 80BFD6AC */ daGoGate_HIO_c();
    /* 80BFDF3C */ virtual ~daGoGate_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x8 */ f32 mSpeed;
    /* 0xc */ u8 mShockStrength;
};

STATIC_ASSERT(sizeof(daGoGate_HIO_c) == 12);

#endif /* D_A_OBJ_GOGATE_H */
