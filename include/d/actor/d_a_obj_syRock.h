#ifndef D_A_OBJ_SYROCK_H
#define D_A_OBJ_SYROCK_H

#include "d/actor/d_a_obj_waterPillar.h"
#include "d/d_bg_s_movebg_actor.h"

/**
 * @ingroup actors-objects
 * @class daSyRock_c
 * @brief Stalactite Rock
 *
 * @details Breakable stalactites seen in Lakebed Temple
 *
 */

class daSyRock_c : public dBgS_MoveBgActor, public request_of_phase_process_class, public dEvLib_callback_c {
public:
    daSyRock_c() : dEvLib_callback_c(this) {}
    /* 80D03DAC */ ~daSyRock_c() {}

    /* 80D0237C */ void setBaseMtx();
    /* 80D02454 */ int CreateHeap();
    /* 80D02584 */ cPhs__Step create();
    /* 80D02AFC */ void setFallStat();
    /* 80D02BE0 */ int Execute(Mtx**);
    /* 80D02C54 */ void move();
    /* 80D02E70 */ void init_modeWait();
    /* 80D02E7C */ void modeWait();
    /* 80D02F88 */ bool eventStart();
    /* 80D02FB8 */ void init_modeDropInit();
    /* 80D03070 */ void modeDropInit();
    /* 80D030A8 */ static void* searchWaterPillar(void*, void*);
    /* 80D03250 */ void init_modeDrop();
    /* 80D03384 */ void modeDrop();
    /* 80D033D0 */ void init_modeSink();
    /* 80D03440 */ void modeSink();
    /* 80D034E8 */ void init_modeMove();
    /* 80D035F8 */ void modeMove();
    /* 80D036B8 */ BOOL chkWaterLineIn();
    /* 80D036DC */ void bgCheck();
    /* 80D03984 */ void init_modeDropEnd();
    /* 80D03A48 */ void modeDropEnd();
    /* 80D03A4C */ int Draw();
    /* 80D03B08 */ int Delete();

    static dCcD_SrcGObjInf const mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;

private:
    /* 0x5B8 */ request_of_phase_process_class mPhase;
    /* 0x5C0 */ J3DModel* mpModels[2];
    /* 0x5C8 */ u8 mMode;
    /* 0x5C9 */ u8 mDropAutomaticallySwitchNo;
    /* 0x5CC */ dCcD_Stts mStts;
    /* 0x608 */ dCcD_Cyl mUnbrokenCylinderCollider; // Collider used to check for bomb/bomb arrow for breaking stalactite
    /* 0x744 */ u8 mWaitFrames;
    /* 0x748 */ u32 mShakeOscillationAngleStep;
    /* 0x74C */ csXyz mShakeXZAngleOffset;
    /* 0x754 */ f32 mShakeAmplitude;
    /* 0x758 */ f32 mShakeXOscillationAngle;
    /* 0x75C */ f32 mShakeZOscillationAngle;
    /* 0x760 */ f32 mShakeDamping;
    /* 0x764 */ f32 mShakeMaxDecay;
    /* 0x768 */ f32 mShakeMinDecay;
    /* 0x76C */ cXyz mUnderwaterRotatedStalactiteOffset; 
    /* 0x778 */ bool mInWaterPreviousFrame;
    /* 0x779 */ u8 field_0x779; // Redundant variable, thus left unnamed
    /* 0x77C */ dBgS_AcchCir mAcchCir;
    /* 0x7BC */ dBgS_ObjAcch mAcch;
    /* 0x994 */ daWtPillar_c* mpWaterPillar;
    /* 0x998 */ dBgW* mpBrokenCollision;    // Collision of broken stalactite
    /* 0x99C */ u8 mIsUnbroken;

    // Stalactite should search for an associated water pillar on creation
    BOOL getArg0() {
        return shape_angle.x & 0xF;
    }

    // Switch to determine whether or not the stalactite has been broken
    u32 getSwBit1() {
        return fopAcM_GetParamBit(this, 0, 8);
    }

    // Switch to determine whether or not the stalactite should be broken automatically when player is in range
    u32 getSwBit2() {
        return fopAcM_GetParamBit(this, 8, 8);
    }

    // Event ID for Midna to stop and note the stalactite that fell by itself
    s32 getEvetID() {
        return fopAcM_GetParamBit(this, 16, 8);
    }

    enum Mode_e {
        MODE_WAIT, 
        MODE_DROP_INIT, 
        MODE_DROP,
        MODE_SINK, 
        MODE_MOVE, 
        MODE_DROP_END
    };
};

STATIC_ASSERT(sizeof(daSyRock_c) == 0x9a0);


#endif /* D_A_OBJ_SYROCK_H */
