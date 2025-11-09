#ifndef D_A_OBJ_LV8UDFLOOR_H
#define D_A_OBJ_LV8UDFLOOR_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"

/**
 * @ingroup actors-objects
 * @class daUdFloor_c
 * @brief Palace of Twilight Switch Step
 *
 * @details
 *
 */
class daUdFloor_c : public dBgS_MoveBgActor {
public:
    /* 80C8BDC8 */ void setBaseMtx();
    /* 80C8BEE4 */ int create();
    /* 80C8C12C */ void moveLift();
    /* 80C8C264 */ void init_modeWait();
    /* 80C8C270 */ void modeWait();
    /* 80C8C274 */ void init_modeUpMoveInit();
    /* 80C8C310 */ void modeUpMoveInit();
    /* 80C8C354 */ u8 colorAnm(int);
    /* 80C8C5E4 */ void init_modeUpMove();
    /* 80C8C68C */ void modeUpMove();
    /* 80C8C7F8 */ void init_modeDownMoveInit();
    /* 80C8C81C */ void modeDownMoveInit();
    /* 80C8C860 */ void init_modeDownMove();
    /* 80C8C8E4 */ void modeDownMove();

    /* 80C8BE64 */ virtual int CreateHeap();
    /* 80C8C0DC */ virtual int Execute(Mtx**);
    /* 80C8C994 */ virtual int Draw();
    /* 80C8CA78 */ virtual int Delete();

    u8 getModelType() { return current.angle.x & 0xFF; }
    u8 getTimer() { return (current.angle.x & 0xFF00) >> 8; }

    int getSw() { return fopAcM_GetParamBit(this, 0, 8); }
    int getMoveHeight() { return fopAcM_GetParamBit(this, 16, 8); }
    int getMoveSpeed() { return fopAcM_GetParamBit(this, 24, 8); }
    
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ u8 mMode;
    /* 0x5B0 */ f32 field_0x5b0;
    /* 0x5B4 */ f32 field_0x5b4;
    /* 0x5B8 */ u8 field_0x5b8;
    /* 0x5B9 */ u8 mTimer;
    /* 0x5BA */ u8 field_0x5ba;
    /* 0x5BB */ u8 mModelType;
    /* 0x5BC */ u8 mIsSwitch;
    /* 0x5BD */ u8 mColorR;
    /* 0x5BE */ u8 mColorG;
    /* 0x5BF */ u8 mColorB;
    /* 0x5C0 */ f32 field_0x5c0;
    /* 0x5C4 */ u8 field_0x5c4;
    /* 0x5C5 */ u8 field_0x5c5;
};

STATIC_ASSERT(sizeof(daUdFloor_c) == 0x5c8);

#endif /* D_A_OBJ_LV8UDFLOOR_H */
