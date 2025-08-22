#ifndef D_A_OBJ_WATERGATE_H
#define D_A_OBJ_WATERGATE_H

#include "d/d_bg_s_movebg_actor.h"
#include "m_Do/m_Do_hostIO.h"
#include "SSystem/SComponent/c_phase.h"

/**
 * @ingroup actors-objects
 * @class daWtGate_c
 * @brief Water Gate
 *
 * @details Sluice gate that player opens in 3F and 4F of Lakebed Temple.
 * Object does not control the flow of water streams in the temple, it is purely aesthetic. 
 *
 */

class daWtGate_c : public dBgS_MoveBgActor {
public:
    /* 80D2BC0C */ void setBaseMtx();
    /* 80D2BC94 */ int CreateHeap();
    /* 80D2BD00 */ cPhs__Step create();
    /* 80D2BE7C */ int Execute(Mtx**);
    /* 80D2BECC */ void move();
    /* 80D2BF88 */ void init_modeWait();
    /* 80D2BF94 */ void modeWait();
    /* 80D2C010 */ void init_modeOpen();
    /* 80D2C02C */ void modeOpen();
    /* 80D2C134 */ void init_modeClose();
    /* 80D2C150 */ void modeClose();
    /* 80D2C250 */ void init_modeEnd();
    /* 80D2C25C */ void modeEnd();
    /* 80D2C260 */ int Draw();
    /* 80D2C304 */ int Delete();

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ u8 mMode;
    /* 0x5AD */ u8 field_0x5AD; // Neither modified nor read; unused 
    /* 0x5AE */ u8 mPrevSwitchState;
    /* 0x5B0 */ f32 mOpenYOffset;
    /* 0x5B4 */ f32 mClosedYPos;
    /* 0x5B8 */ f32 mMaxMoveSpeed;

    enum SwitchState_e {
        CLOSED, OPENED
    };

    enum Mode_e {
        WAIT, OPEN, CLOSE, END
    };
};

STATIC_ASSERT(sizeof(daWtGate_c) == 0x5bc);

struct daWtGate_HIO_c : public mDoHIO_entry_c {
    /* 80D2BB8C */ daWtGate_HIO_c();
    /* 80D2C3C0 */ ~daWtGate_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x4 */ f32 mMaxSpeed;
    /* 0x8 */ u8 field_0x8;    // Modified, but never read; unused?
    /* 0x9 */ u8 field_0x9;    // Modified, but never read; unused?
};


#endif /* D_A_OBJ_WATERGATE_H */
