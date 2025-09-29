#ifndef D_A_OBJ_ROTTRAP_H
#define D_A_OBJ_ROTTRAP_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"
#include "m_Do/m_Do_hostIO.h"

/**
 * @ingroup actors-objects
 * @class daRotTrap_c
 * @brief Rotating Skull Trap
 *
 * @details
 *
 */
class daRotTrap_c : public dBgS_MoveBgActor {
public:
    /* 80CBF940 */ void setBaseMtx();
    /* 80CBFAC8 */ int create();
    /* 80CBFF1C */ void procMain();
    /* 80CC00AC */ void init_modeWait();
    /* 80CC0120 */ void modeWait();
    /* 80CC0180 */ void init_modeAcc();
    /* 80CC027C */ void modeAcc();
    /* 80CC034C */ void init_modeMove();
    /* 80CC0360 */ void modeMove();
    /* 80CC0440 */ void seSet();

    /* 80CBF9D8 */ virtual int CreateHeap();
    /* 80CBFEC4 */ virtual int Execute(Mtx**);
    /* 80CC0548 */ virtual int Draw();
    /* 80CC05EC */ virtual int Delete();

    int getSw() { return fopAcM_GetParamBit(this, 0, 8); }

    static const dCcD_SrcGObjInf mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;

private:
    /* 0x05A0 */ request_of_phase_process_class mPhase;
    /* 0x05A8 */ J3DModel* mpModel;
    /* 0x05AC */ u8 mMode;
    /* 0x05AD */ u8 mSwbit;
    /* 0x05AE */ u8 field_0x5ae;
    /* 0x05B0 */ s16 field_0x5b0;
    /* 0x05B2 */ s16 field_0x5b2;
    /* 0x05B4 */ dCcD_Stts mCcStts;
    /* 0x05F0 */ dCcD_Cyl mCcCyl[14];
    /* 0x1738 */ dBgW* mpBgW2;
};

STATIC_ASSERT(sizeof(daRotTrap_c) == 0x173c);

class daRotTrap_HIO_c : public mDoHIO_entry_c {
public:
    /* 80CBF8AC */ daRotTrap_HIO_c();
    /* 80CC0728 */ virtual ~daRotTrap_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x4 */ f32 rotate_time;
    /* 0x8 */ u8 field_0x8;
    /* 0x9 */ u8 AT_adjust_SW;
    /* 0xA */ u8 index;
    /* 0xC */ s16 acc;
    /* 0xE */ u8 vibration;
};


#endif /* D_A_OBJ_ROTTRAP_H */
