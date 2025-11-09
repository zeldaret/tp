#ifndef D_A_OBJ_ROTBRIDGE_H
#define D_A_OBJ_ROTBRIDGE_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "m_Do/m_Do_hostIO.h"

/**
 * @ingroup actors-objects
 * @class daRotBridge_c
 * @brief Rotating Bridge
 *
 * @details
 *
 */
class daRotBridge_c : public dBgS_MoveBgActor {
public:
    /* 80CBEA24 */ void setBaseMtx();
    /* 80CBECBC */ int create();
    /* 80CBEF1C */ static void rideCallBack(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
    /* 80CBF050 */ void playerAreaCheck();
    /* 80CBF1EC */ void moveBridge();

    /* 80CBEB38 */ virtual int CreateHeap();
    /* 80CBEF34 */ virtual int Execute(Mtx**);
    /* 80CBF404 */ virtual int Draw();
    /* 80CBF4BC */ virtual int Delete();

    u8 getPlayerRide() { return mIsPlayerRide; }
    u8 getBridgeAngle() { return mBridgeAngle; }

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ u8 mType;
    /* 0x5AD */ u8 bitSw;
    /* 0x5AE */ u8 mDoMove;
    /* 0x5AF */ u8 mIsPlayerRide;
    /* 0x5B0 */ u8 mIsPlayerInArea;
    /* 0x5B2 */ csXyz mRotation;
    /* 0x5B8 */ u8 mBridgeAngle;
    /* 0x5BC */ mDoExt_bckAnm mBck;
    /* 0x5D8 */ f32 mBckSpeed;
    /* 0x5DC */ dBgW* mpBgW2;
    /* 0x5E0 */ Mtx mMtx;
};

STATIC_ASSERT(sizeof(daRotBridge_c) == 0x610);

class daRotBridge_HIO_c : public mDoHIO_entry_c {
public:
    /* 80CBE98C */ daRotBridge_HIO_c();
    /* 80CBF5BC */ virtual ~daRotBridge_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x04 */ u8 shake_power;
    /* 0x05 */ u8 field_0x5;
    /* 0x06 */ u8 field_0x6;
    /* 0x08 */ f32 vibration_range[3];  // ?m, 15m, 9m
    /* 0x14 */ u8 draw_wall_collision;
};


#endif /* D_A_OBJ_ROTBRIDGE_H */
