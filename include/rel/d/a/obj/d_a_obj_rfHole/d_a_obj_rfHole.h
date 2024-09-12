#ifndef D_A_OBJ_RFHOLE_H
#define D_A_OBJ_RFHOLE_H

#include "f_op/f_op_actor_mng.h"
#include "d/bg/d_bg_s_movebg_actor.h"

/**
 * @ingroup actors-objects
 * @class daRfHole_c
 * @brief (Kakariko?) Roof Hole
 *
 * @details
 *
 */
class daRfHole_c : public dBgS_MoveBgActor {
public:
    enum Mode {
        MODE_WAIT,
        MODE_BREAK,
        MODE_BREAK_EFF,
        MODE_END,
    };

    typedef void (daRfHole_c::*ModeFunc)();

    /* 80CB8F04 */ void setBaseMtx();
    /* 80CB8F8C */ int CreateHeap();
    /* 80CB8FF8 */ int create();
    /* 80CB9148 */ static void rideCallBack(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
    /* 80CB9194 */ int playerAreaCheck();
    /* 80CB940C */ int Execute(f32 (**)[3][4]);
    /* 80CB9464 */ void holeProc();
    /* 80CB9520 */ void init_modeWait();
    /* 80CB952C */ void modeWait();
    /* 80CB9558 */ void init_modeBreak();
    /* 80CB96AC */ void modeBreak();
    /* 80CB96CC */ void init_modeBreakEff();
    /* 80CB971C */ void modeBreakEff();
    /* 80CB973C */ void init_modeEnd();
    /* 80CB9748 */ void modeEnd();
    /* 80CB9768 */ void setBreakEffect();
    /* 80CB9878 */ int Draw();
    /* 80CB991C */ int Delete();

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mModel;
    /* 0x5AC */ u8 mMode;
    /* 0x5AD */ u8 field_0x5ad;
    /* 0x5AE */ u8 field_0x5ae;
    /* 0x5AF */ u8 field_0x5af;
    /* 0x5B0 */ s8 mRoofSoundOn;
    /* 0x5B1 */ u8 field_0x5b1[0x5b4 - 0x5b1];
};

STATIC_ASSERT(sizeof(daRfHole_c) == 0x5b4);

class daRfHole_HIO_c : public mDoHIO_entry_c {
public:
    /* 80CB8E6C */ daRfHole_HIO_c();
    /* 80CB99D8 */ virtual ~daRfHole_HIO_c() {}

    /* 0x04 */ f32 field_0x04;
    /* 0x08 */ f32 field_0x08;
    /* 0x0C */ f32 field_0x0c;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ u8 field_0x14;
    /* 0x15 */ u8 field_0x15;
};

#endif /* D_A_OBJ_RFHOLE_H */
