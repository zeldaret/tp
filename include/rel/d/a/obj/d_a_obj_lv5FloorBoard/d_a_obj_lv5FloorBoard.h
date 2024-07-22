#ifndef D_A_OBJ_LV5FLOORBOARD_H
#define D_A_OBJ_LV5FLOORBOARD_H

#include "f_op/f_op_actor_mng.h"
#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/cc/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daFlorBoad_c
 * @brief Snowpeak Ruins Destructable Floor
 *
 * @details
 *
 */
class daFlorBoad_c : public dBgS_MoveBgActor {
public:
    enum daFlorBoad_MODE {
        MODE_WAIT,
        MODE_BREAK,
    };

    /* 80C6A6FC */ void setBaseMtx();
    /* 80C6A7F0 */ int create();
    /* 80C6AB04 */ void procMain();
    /* 80C6AB90 */ void init_modeWait();
    /* 80C6ABAC */ void modeWait();
    /* 80C6AC9C */ void init_modeBreak();
    /* 80C6AD40 */ void modeBreak();

    /* 80C6A784 */ virtual int CreateHeap();
    /* 80C6AAAC */ virtual int Execute(Mtx**);
    /* 80C6AEB0 */ virtual int Draw();
    /* 80C6AF54 */ virtual int Delete();

    int getSwBit1() { return fopAcM_GetParamBit(this, 0, 8); }

    static const dCcD_SrcGObjInf mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;

private:
    /* 0x5A0 */ dCcD_Stts mCcStts;
    /* 0x5DC */ dCcD_Cyl mCcCyl;
    /* 0x718 */ request_of_phase_process_class mPhase;
    /* 0x720 */ J3DModel* mpModel;
    /* 0x724 */ u8 mMode;
    /* 0x725 */ u8 field_0x725;
    /* 0x726 */ u8 mSwBit1;
    /* 0x727 */ u8 field_0x727[0x734 - 0x727];
};

STATIC_ASSERT(sizeof(daFlorBoad_c) == 0x734);

class daFlorBoad_HIO_c : public fOpAcm_HIO_entry_c {
public:
    /* 80C6A60C */ daFlorBoad_HIO_c();
    /* 80C6B058 */ virtual ~daFlorBoad_HIO_c() {}

    /* 0x04 */ cXyz field_0x4;
    /* 0x10 */ u8 field_0x10;
    /* 0x11 */ u8 field_0x11;
};


#endif /* D_A_OBJ_LV5FLOORBOARD_H */
