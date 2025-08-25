#ifndef D_A_OBJ_LV4CANDLEDEMOTAG_H
#define D_A_OBJ_LV4CANDLEDEMOTAG_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_event_lib.h"
#include "d/actor/d_a_obj_lv4EdShutter.h"

/**
 * @ingroup actors-objects
 * @class dalv4CandleDemoTag_c
 * @brief Arbiter's Grounds Torch Cutscene Tag
 *
 * @details
 *
 */
class dalv4CandleDemoTag_c : public fopAc_ac_c, public request_of_phase_process_class, public dEvLib_callback_c {
public:
    typedef void (dalv4CandleDemoTag_c::*procFunc)();
    dalv4CandleDemoTag_c() : dEvLib_callback_c(this) {}

    /* 80C5CA58 */ void setBaseMtx();
    /* 80C5CA90 */ int create();
    /* 80C5CBA4 */ int Execute();
    /* 80C5CBE8 */ void procMain();
    /* 80C5CCA4 */ void init_modeWatch();
    /* 80C5CCC0 */ void modeWatch();
    /* 80C5CDC0 */ void init_modeEnemyCreate();
    /* 80C5CE70 */ void modeEnemyCreate();
    /* 80C5CEB4 */ void init_modeNG();
    /* 80C5CEC0 */ void modeNG();
    /* 80C5CF34 */ void init_modeEnd();
    /* 80C5CF40 */ void modeEnd();
    /* 80C5CF9C */ static void* searchShutterAct(void*, void*);
    /* 80C5CFEC */ int Draw();
    /* 80C5CFF4 */ int Delete();

    u8 getPathID() { return fopAcM_GetParamBit(this, 0x10, 8); }
    int getSwNG() { return fopAcM_GetParamBit(this, 0, 8); }
    int getSwDest() { return fopAcM_GetParamBit(this, 8, 8); }
    int getSwOK() { return shape_angle.x & 0xFF; }
    int getEventID() { return fopAcM_GetParamBit(this, 0x18, 8); }

    /* 80C5D184 */ virtual ~dalv4CandleDemoTag_c() {}
    /* 80C5CF78 */ virtual bool eventStart();

private:
    /* 0x584 */ u8 mMode;
    /* 0x585 */ u8 mPathID;
    /* 0x586 */ u8 mSwNG;
    /* 0x587 */ u8 mSwDest;
    /* 0x588 */ u16 mEnemyWaitTime;
    /* 0x58C */ daLv4EdShutter_c* mpShutterActor;
};

STATIC_ASSERT(sizeof(dalv4CandleDemoTag_c) == 0x590);


#endif /* D_A_OBJ_LV4CANDLEDEMOTAG_H */
