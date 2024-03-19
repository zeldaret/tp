#ifndef D_A_OBJ_LV4CANDLETAG_H
#define D_A_OBJ_LV4CANDLETAG_H

#include "d/event/d_event_lib.h"
#include "f_op/f_op_actor_mng.h"
#include "m_Do/m_Do_hostIO.h"

struct unknown {
    u8 unk[8];
};

// dalv4CandleTag_c should inherit fopAc_ac_c, unknown, and dEvLib_callback_c
// but this causes issues with weak function ordering
class dalv4CandleTag_c : public fopAc_ac_c {
public:
    enum Mode {
        MODE_WATCH,
        MODE_NG,
        MODE_NG_WAIT,
        MODE_END,
    };

    // dalv4CandleTag_c() : dEvLib_callback_c(this) {}
    ~dalv4CandleTag_c() {}

    // These members are not real, remove once inheritance issue is resolved
    unknown mBase2;
    dEvLib_callback_c mBase3;
    void* mVtable;

    /* 80C5D4B8 */ void setBaseMtx();
    /* 80C5D4F0 */ cPhs__Step create();
    /* 80C5D5D4 */ int Execute();
    /* 80C5D618 */ void procMain();
    /* 80C5D6D4 */ void init_modeWatch();
    /* 80C5D6E0 */ void modeWatch();
    /* 80C5D78C */ void init_modeNG();
    /* 80C5D814 */ void modeNG();
    /* 80C5D8A0 */ void init_modeNGWait();
    /* 80C5D8AC */ void modeNGWait();
    /* 80C5D8FC */ void init_modeEnd();
    /* 80C5D908 */ void modeEnd();
    /* 80C5D90C */ int eventStart();
    /* 80C5D930 */ int Draw();
    /* 80C5D938 */ int Delete();

    u8 getSwTop() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getSwOK() { return fopAcM_GetParamBit(this, 8, 8); }
    u8 getSwNG() { return fopAcM_GetParamBit(this, 0x10, 8); }
    u8 getSwTotal() { return fopAcM_GetParamBit(this, 0x18, 8); }
    int getEventID() { return shape_angle.x & 0xff; }
    u8 getNGSwStat() { return fopAcM_isSwitch(this, mSwNG); }

    /* 0x584 */ u8 mMode;
    /* 0x585 */ u8 mSwTop;
    /* 0x586 */ u8 mSwOK;
    /* 0x587 */ u8 mSwNG;
    /* 0x588 */ u8 mSwTotal;
    /* 0x589 */ u8 mTimer;
};

STATIC_ASSERT(sizeof(dalv4CandleTag_c) == 0x58C);

class dalv4CandleTag_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C5D44C */ dalv4CandleTag_HIO_c();
    /* 80C5D9C0 */ ~dalv4CandleTag_HIO_c() {}

    u8 mTimer;
};

#endif /* D_A_OBJ_LV4CANDLETAG_H */
