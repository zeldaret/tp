#ifndef D_A_OBJ_Y_TAIHOU_H
#define D_A_OBJ_Y_TAIHOU_H

#include "d/d_bg_s_movebg_actor.h"
#include "d/actor/d_a_obj_carry.h"

/**
 * @ingroup actors-objects
 * @class daObjYtaihou_c
 * @brief Snowpeak Ruins Cannon
 *
 * @details
 *
 */
class daObjYtaihou_c : public dBgS_MoveBgActor, public request_of_phase_process_class {
public:
    /* 80B9FDE8 */ int create1st();
    /* 80B9FEB0 */ void setIronBall(daObjCarry_c*);
    /* 80B9FF08 */ int getEvent(u8);
    /* 80B9FF1C */ void loadAngle();
    /* 80B9FFAC */ void saveAngle();
    /* 80BA0060 */ void setNextAngle();
    /* 80BA0084 */ void setMtx();
    /* 80BA0208 */ void rotateCheck();
    /* 80BA045C */ void shotCheck();
    /* 80BA0964 */ void eventStart();
    /* 80BA0974 */ int CreateHeap();
    /* 80BA09E4 */ int Create();
    /* 80BA0A94 */ int Execute(f32 (**)[3][4]);
    /* 80BA0B4C */ int Draw();
    /* 80BA0C1C */ int Delete();
    /* 80BA0FA4 */ ~daObjYtaihou_c();

    void setAddAngle(s8 add_angle) { mAddAngle = add_angle; }
    u32 getIronBallId() { return mIronBallId; }
    void startBomb() { mStartBomb = 0xffff; }

private:
    ///* 0x5a0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5a8 */ u8 field_0x5a8[0x5b8 - 0x5a8];
    /* 0x5b8 */ Mtx mMtx;
    /* 0x5e8 */ u8 field_0x5e8[0x764 - 0x5e8];
    /* 0x764 */ u32 mIronBallId;
    /* 0x768 */ u8 field_0x768[0x770 - 0x768];
    /* 0x770 */ s16 mStartBomb;
    /* 0x768 */ s16 field_0x772;
    /* 0x774 */ s8 field_0x774;
    /* 0x775 */ u8 field_0x775;
    /* 0x776 */ s8 mAddAngle;
    /* 0x777 */ s8 field_0x777;
};

STATIC_ASSERT(sizeof(daObjYtaihou_c) == 0x778);


#endif /* D_A_OBJ_Y_TAIHOU_H */
