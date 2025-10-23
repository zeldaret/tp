#ifndef D_A_OBJ_LV6ELEVTA_H
#define D_A_OBJ_LV6ELEVTA_H

#include "d/d_event_lib.h"
#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"

/**
 * @ingroup actors-objects
 * @class daObjLv6ElevtA_c
 * @brief Temple of Time Elevator
 *
 * @details
 *
 */
class daObjLv6ElevtA_c : public dBgS_MoveBgActor,
                         public request_of_phase_process_class,
                         public dEvLib_callback_c {
public:
    daObjLv6ElevtA_c() : dEvLib_callback_c(this) {}
    virtual ~daObjLv6ElevtA_c() {};
    /* 80C82D38 */ int create1st();
    /* 80C82DC8 */ void setMtx();
    /* 80C82E38 */ int CreateHeap();
    /* 80C82EA8 */ int Create();
    /* 80C83028 */ bool eventStart();
    /* 80C830BC */ void moveAngle(void*);
    /* 80C8321C */ int Execute(Mtx**);
    /* 80C83538 */ int Draw();
    /* 80C835DC */ int Delete();

    int getSwNo() { return fopAcM_GetParamBit(this, 0, 8); };
    int getSw2No() { return fopAcM_GetParamBit(this, 8, 8); };
    int getEvent() { return fopAcM_GetParamBit(this, 0x10, 8); };

private:
    /* 0x5B8 */ Mtx mMtx1;
    /* 0x5E8 */ Mtx mMtx2;
    /* 0x618 */ J3DModel* mModel;
    /* 0x61C */ int mAngle;
    /* 0x620 */ int mMode;
    /* 0x624 */ bool mIsMoving;
};

STATIC_ASSERT(sizeof(daObjLv6ElevtA_c) == 0x628);

#if DEBUG
class daObjLv6ElevtA_HIO_c : public mDoHIO_entry_c {
public:
    daObjLv6ElevtA_HIO_c();
    void genMessage(JORMContext*);

    /* 0x6 */ s16 mRightAngleTurnFrameCount;
};
#endif

#endif /* D_A_OBJ_LV6ELEVTA_H */
