#ifndef D_A_OBJ_LV6TOGEROLL_H
#define D_A_OBJ_LV6TOGEROLL_H

#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daTogeRoll_c
 * @brief Temple of Time Spike Roller
 *
 * @details
 *
 */
class daTogeRoll_c : public dBgS_MoveBgActor {
public:
    typedef void (daTogeRoll_c::*modeFunc)();

    enum Mode {
        MODE_ACC,
        MODE_MOVE,
        MODE_BRK,
        MODE_WAIT,
        MODE_WAIT_INIT,
        MODE_BREAK,
        MODE_BOUND,
        MODE_BOUND_2,
        MODE_BOUND_WAIT,
    };

    /* 80C77CC8 */ void setBaseMtx();
    /* 80C77D50 */ int CreateHeap();
    /* 80C77DBC */ int create();
    /* 80C78294 */ int Execute(Mtx**);
    /* 80C78638 */ void moveTogeRoll();
    /* 80C78A8C */ void init_modeBound();
    /* 80C78B7C */ void modeBound();
    /* 80C78BD8 */ void modeBound2();
    /* 80C78C34 */ void init_modeBoundWait();
    /* 80C78C50 */ void modeBoundWait();
    /* 80C78CA8 */ void init_modeAcc();
    /* 80C78CB4 */ void modeAcc();
    /* 80C78DA0 */ void init_modeMove();
    /* 80C78DAC */ void modeMove();
    /* 80C790C4 */ void init_modeBrk();
    /* 80C790D0 */ void modeBrk();
    /* 80C792CC */ void init_modeWaitInit();
    /* 80C792E4 */ void modeWaitInit();
    /* 80C79318 */ void init_modeWait();
    /* 80C79324 */ void modeWait();
    /* 80C79344 */ void init_modeBreak();
    /* 80C793C8 */ void modeBreak();
    /* 80C795E8 */ void setNextPoint();
    /* 80C79714 */ int Draw();
    /* 80C797B8 */ int Delete();

    u32 getPathID() { return fopAcM_GetParamBit(this, 0, 8); }
    u32 getSpeed() { return fopAcM_GetParamBit(this, 8, 4); }

    static dCcD_SrcGObjInf const mCcDObjInfo;
    static dCcD_SrcGObjInf const mCcDObjInfo2;
    static f32 const mSpeed[];
    static dCcD_SrcSph mCcDSph;
    static dCcD_SrcCps mCcDCps;

private:
    /* 0x05A0 */ request_of_phase_process_class mPhase;
    /* 0x05A8 */ J3DModel* mpModel;
    /* 0x05AC */ u8 mPathID;
    /* 0x05AD */ s8 field_0x5ad;
    /* 0x05AE */ s16 field_0x5ae;
    /* 0x05B0 */ cXyz field_0x5b0;
    /* 0x05BC */ cXyz field_0x5bc;
    /* 0x05C8 */ cXyz field_0x5c8;
    /* 0x05D4 */ f32 field_0x5d4;
    /* 0x05D8 */ u8 mMode;
    /* 0x05D9 */ u8 field_0x5d9;
    /* 0x05DA */ u8 field_0x5da;
    /* 0x05DB */ u8 field_0x5db;
    /* 0x05DC */ u8 field_0x5dc;
    /* 0x05E0 */ cXyz field_0x5e0;
    /* 0x05EC */ cXyz field_0x5ec;
    /* 0x05F8 */ f32 field_0x5f8;
    /* 0x05FC */ dCcD_Stts mStts;
    /* 0x0638 */ dCcD_Sph mSph[8];
    /* 0x0FF8 */ dCcD_Cps mCps;
    /* 0x113C */ cM3dGCpsS field_0x113c;
    /* 0x1158 */ u8 field_0x1158;
    /* 0x115C */ Z2SoundObjSimple mSound;
};

STATIC_ASSERT(sizeof(daTogeRoll_c) == 0x117c);

class daTogeRoll_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C77C2C */ daTogeRoll_HIO_c();
    /* 80C798D0 */ ~daTogeRoll_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x00 */ /* vtable */

    /* 0x04 */ s8 field_0x04;
    /* 0x05 */ s8 field_0x05;
    /* 0x06 */ s8 field_0x06;
    /* 0x08 */ f32 field_0x08;
    /* 0x0c */ f32 field_0x0c;
    /* 0x10 */ f32 field_0x10;
};

#endif /* D_A_OBJ_LV6TOGEROLL_H */
