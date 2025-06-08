#ifndef D_A_OBJ_WDSTICK_H
#define D_A_OBJ_WDSTICK_H

#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daWdStick_c
 * @brief Wooden Stick
 *
 * @details
 *
 */
class daWdStick_c : public fopAc_ac_c {
public:
    typedef void (daWdStick_c::*modeFunc)();

    enum Mode {
        MODE_WAIT,
        MODE_CARRY,
        MODE_DROP,
        MODE_ROLL,
        MODE_SINK,
    };

    /* 80D31BD0 */ void setBaseMtx();
    /* 80D31C58 */ virtual int CreateHeap();
    /* 80D31CC4 */ int create();
    /* 80D32168 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80D32194 */ void lightInit();
    /* 80D32198 */ void setLight();
    /* 80D3219C */ void setFire();
    /* 80D3269C */ virtual int Execute();
    /* 80D32DB4 */ void bgCheck();
    /* 80D33348 */ void setBoundSe();
    /* 80D333F4 */ void mode_proc_call();
    /* 80D3350C */ void mode_init_wait();
    /* 80D3353C */ void mode_proc_wait();
    /* 80D33588 */ void mode_init_carry();
    /* 80D335AC */ void mode_proc_carry();
    /* 80D3386C */ void mode_init_drop();
    /* 80D33890 */ void mode_proc_drop();
    /* 80D338DC */ void mode_init_roll();
    /* 80D338F4 */ void mode_proc_roll();
    /* 80D33D44 */ BOOL chkWaterLineIn();
    /* 80D33D68 */ void mode_init_sink();
    /* 80D33D8C */ void mode_proc_sink();
    /* 80D33EB0 */ virtual int Draw();
    /* 80D33F14 */ virtual int Delete();

    static dCcD_SrcGObjInf const mCcDObjInfo;
    static dCcD_SrcSph mCcDSph;

private:
    /* 0x56C */ request_of_phase_process_class mPhase;
    /* 0x574 */ J3DModel* mModel;
    /* 0x578 */ u8 mMode;
    /* 0x579 */ bool misCarrying;
    /* 0x57C */ cXyz field_0x57c;
    /* 0x588 */ u8 field_0x588[0x594 - 0x588];
    /* 0x594 */ cXyz field_0x594;
    /* 0x5A0 */ dBgS_ObjAcch mAcch;
    /* 0x778 */ dBgS_AcchCir mAcchCir;
    /* 0x7B8 */ dCcD_Stts mStts;
    /* 0x7F4 */ dCcD_Sph mSph1;
    /* 0x92C */ dCcD_Sph mSph2;
    /* 0xA64 */ cXyz field_0xa64;
    /* 0xA70 */ cXyz field_0xa70;
    /* 0xA7C */ cXyz field_0xa7c;
    /* 0xA88 */ cXyz field_0xa88;
    /* 0xA94 */ cXyz field_0xa94;
    /* 0xAA0 */ cXyz field_0xaa0;
    /* 0xAAC */ u8 field_0xaac;
    /* 0xAAD */ u8 field_0xaad;
    /* 0xAAE */ u16 field_0xaae;
    /* 0xAB0 */ u16 field_0xab0;
    /* 0xAB4 */ cXyz field_0xab4;
    /* 0xAC0 */ cXyz field_0xac0;
    /* 0xACC */ cXyz field_0xacc;
    /* 0xAD8 */ cXyz field_0xad8;
    /* 0xAE4 */ u32 field_0xae4[2];
    /* 0xAEC */ u32 field_0xaec[2];
    /* 0xAF4 */ u8 field_0xaf4;
};

STATIC_ASSERT(sizeof(daWdStick_c) == 0xaf8);

class daWdStick_HIO_c : public mDoHIO_entry_c {
public:
    /* 80D31B4C */ daWdStick_HIO_c();
    /* 80D34030 */ virtual ~daWdStick_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x04 */ u8 field_0x04;
    /* 0x05 */ u8 field_0x05;
    /* 0x06 */ s16 field_0x06;
    /* 0x08 */ u8 field_0x08;
};


#endif /* D_A_OBJ_WDSTICK_H */
