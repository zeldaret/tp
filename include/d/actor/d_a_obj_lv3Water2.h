#ifndef D_A_OBJ_LV3WATER2_H
#define D_A_OBJ_LV3WATER2_H

#include "d/d_bg_s_movebg_actor.h"
#include "d/d_event_lib.h"
#include "f_op/f_op_actor_mng.h"

struct fakeLv3Water2Padding {
    u8 a[8];
};

/**
 * @ingroup actors-objects
 * @class daLv3Water2_c
 * @brief Lakebed Temple Central Room Water
 *
 * @details Water in the central room (where the boss entrance is). It can be raised twice.
 *
 */
class daLv3Water2_c : public dBgS_MoveBgActor, public fakeLv3Water2Padding, public dEvLib_callback_c {
public:
    daLv3Water2_c() : dEvLib_callback_c(this) {}
    ~daLv3Water2_c() {}

    /* 80C5A478 */ void setBaseMtx();
    /* 80C5A4F8 */ int CreateHeap();
    /* 80C5A5E4 */ cPhs__Step create();
    /* 80C5A844 */ int Execute(Mtx**);
    /* 80C5AC10 */ void mode_proc_wait();
    /* 80C5ACB8 */ void mode_init_levelCtrl();
    /* 80C5ACE4 */ void mode_proc_levelCtrl();
    /* 80C5ADA4 */ int Draw();
    /* 80C5AEFC */ int Delete();
    /* 80C5AF3C */ BOOL eventStart();

private:
    /* 0x5B8 */ request_of_phase_process_class mPhase;
    /* 0x5C0 */ J3DModel* mpModel;
    /* 0x5C4 */ mDoExt_btkAnm mWaterSurfaceRefractionAnm;
    /* 0x5DC */ u8 mMode;
    /* 0x5DD */ u8 mResourceIndex;
    /* 0x5E0 */ f32 mWaterLv;
    /* 0x5E4 */ u8 mCurrentWaterLvFrame;
    /* 0x5E5 */ u8 mWaterLvFrame;
    /* 0x5E6 */ u8 mFullRatio;
    /* 0x5E7 */ u8 mEastSwInitialStatus;    // East SW is the lever in the east-most room on 2F, which can only be pulled after raising the water level in that room by pulling the lever in 4F 
    /* 0x5E8 */ u8 mWestSwInitialStatus;    // West SW is the lever in the west-most room on 2F, which can only be pulled after raising the water level in that room by pulling the lever in 4F 
    /* 0x5E9 */ u8 mEastSwCurrentStatus;
    /* 0x5EA */ u8 mWestSwCurrentStatus;
    /* 0x5EB */ u8 mLevelControlWaitFrames;
    /* 0x5EC */ f32 mBaseYPos;
    /* 0x5F0 */ u32 mEastWaterParticles[4]; // If the central staircase isn't rotated to allow water from the east to flow down it, the water falls into the basin; these are the splash particles where the basin water and falling water meet
    /* 0x600 */ u32 mWestWaterParticles[4]; // If the central staircase isn't rotated to allow water from the west to flow down it, the water falls into the basin; these are the splash particles where the basin water and falling water meet

    enum Mode_e {
        WAIT, LEVEL_CTRL
    };

    int getParamLevel1() {
        return fopAcM_GetParamBit(this, 4, 12);
    }

    int getParamSw2() {
        return (shape_angle.x & 0xFF00) >> 8;
    }

    int getParamSw1() {
        return shape_angle.x & 0xFF;
    }

    u32 getParam(int shift, int bit) {
        return fopAcM_GetParamBit(this, shift, bit);
    }

    int getParamEvent2() {
        return fopAcM_GetParamBit(this, 24, 8);
    }

    int getParamEvent() {
        return fopAcM_GetParamBit(this, 16, 8);
    }

    int getParamFrame2() {
        return (shape_angle.z & 0xFF00) >> 8;
    }

    int getParamFrame1() {
        return shape_angle.z & 0xFF;
    }
};

STATIC_ASSERT(sizeof(daLv3Water2_c) == 0x610);

struct daLv3Water2_HIO_c : public mDoHIO_entry_c {
    /* 80C5A40C */ daLv3Water2_HIO_c();
    /* 80C5B14C */ ~daLv3Water2_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x04 */ u8 mLevelControlWaitFrames;
};


#endif /* D_A_OBJ_LV3WATER2_H */
