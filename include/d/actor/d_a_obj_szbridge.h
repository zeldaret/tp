#ifndef D_A_OBJ_SZBRIDGE_H
#define D_A_OBJ_SZBRIDGE_H

#include "d/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjSZbridge_c
 * @brief Stone Statue Bridge
 *
 * @details
 *
 */
class daObjSZbridge_c : public dBgS_MoveBgActor, request_of_phase_process_class {
public:
    /* 80D04360 */ void rideActor(fopAc_ac_c*);
    /* 80D04424 */ int create1st();
    /* 80D044B8 */ void setMtx();
    /* 80D04528 */ int CreateHeap();
    /* 80D04598 */ void chkBg();
    /* 80D048C4 */ int Create();
    /* 80D04974 */ int Execute(Mtx**);
    /* 80D049E4 */ int Draw();
    /* 80D04A88 */ int Delete();
    /* 80D04B90 */ virtual ~daObjSZbridge_c() {}

private:
    /* 0x5A8 */ Mtx mBgMtx;
    /* 0x5D8 */ Mtx field_0x5d8;
    /* 0x608 */ J3DModel* mpModel;
    /* 0x60C */ f32 mWaterY;
    /* 0x610 */ f32 mGroundY;
    /* 0x614 */ u8 field_0x614;
    /* 0x618 */ u32 field_0x618[2];
    /* 0x620 */ int field_0x620;
};

STATIC_ASSERT(sizeof(daObjSZbridge_c) == 0x624);

#endif /* D_A_OBJ_SZBRIDGE_H */
