#ifndef D_A_OBJ_LV6SZGATE_H
#define D_A_OBJ_LV6SZGATE_H

#include "d/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daLv6SzGate_c
 * @brief Temple of Time Stone Statue Gate
 *
 * @details
 *
 */
class daLv6SzGate_c : public dBgS_MoveBgActor {
public:
    enum Mode {
        MODE_WAIT = 0,
        MODE_OPENWAIT0 = 1,
        MODE_OPENWAIT = 2,
        MODE_OPEN = 3,
        MODE_CLOSE = 4,
        MODE_END = 5,
    };

    /* 80C75900 */ void setBaseMtx();
    /* 80C75A54 */ int CreateHeap();
    /* 80C75C0C */ cPhs__Step create();
    /* 80C75E18 */ int Execute(Mtx**);
    /* 80C75E78 */ void moveGate();
    /* 80C75F64 */ void init_modeWait();
    /* 80C75F70 */ void modeWait();
    /* 80C75FC0 */ void init_modeOpenWait0();
    /* 80C75FD8 */ void modeOpenWait0();
    /* 80C76010 */ void init_modeOpenWait();
    /* 80C76094 */ void modeOpenWait();
    /* 80C760F0 */ void init_modeOpen();
    /* 80C760FC */ void modeOpen();
    /* 80C7624C */ void modeClose();
    /* 80C76328 */ void init_modeEnd();
    /* 80C76344 */ void modeEnd();
    /* 80C7637C */ int Draw();
    /* 80C76490 */ int Delete();

    u32 getWaitTime() { return fopAcM_GetParamBit(this, 8, 8); }
    u32 getSw() { return fopAcM_GetParamBit(this, 0, 8); }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* field_0x5a8;
    /* 0x5AC */ J3DModel* field_0x5ac;
    /* 0x5B0 */ mDoExt_brkAnm field_0x5b0;
    /* 0x5C8 */ mDoExt_btkAnm field_0x5c8;
    /* 0x5E0 */ u8 mMode;
    /* 0x5E1 */ u8 field_0x5e1;
    /* 0x5E2 */ u8 field_0x5e2;
    /* 0x5E3 */ u8 field_0x5e3;
    /* 0x5E4 */ f32 field_0x5e4;
    /* 0x5E8 */ dBgW* field_0x5e8;
    /* 0x5EC */ Mtx mMtx;
};

STATIC_ASSERT(sizeof(daLv6SzGate_c) == 0x61c);

class daLv6SzGate_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C7586C */ daLv6SzGate_HIO_c();
    /* 80C76584 */ virtual ~daLv6SzGate_HIO_c() {};

    /* 0x04 */ f32 mSpeed;
    /* 0x08 */ f32 field_0x08;
    /* 0x0C */ f32 field_0x0c;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ u8 mShockStrength;
};

STATIC_ASSERT(sizeof(daLv6SzGate_HIO_c) == 0x18);

#endif /* D_A_OBJ_LV6SZGATE_H */
