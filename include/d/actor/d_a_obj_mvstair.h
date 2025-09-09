#ifndef D_A_OBJ_MVSTAIR_H
#define D_A_OBJ_MVSTAIR_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_particle.h"

/**
 * @ingroup actors-objects
 * @class daObjStair_c
 * @brief Moving Stairs
 *
 * @details
 *
 */
class daObjStair_c : public dBgS_MoveBgActor {
public:
    enum Action_e {
        ACTION_WAIT_e,
        ACTION_ORDER_EVENT_e,
        ACTION_EVENT_e,
        ACTION_END_e,
    };

    enum MODE_e {
        MODE_WAIT_UPPER_e,
        MODE_UPPER_e,
        MODE_WAIT_LOWER_e,
        MODE_LOWER_e,
    };

    /* 80C9D098 */ void initBaseMtx();
    /* 80C9D0D4 */ void setBaseMtx();
    /* 80C9D338 */ int create1st();
    /* 80C9D41C */ void event_proc_call();
    /* 80C9D4D8 */ void mode_proc_call();
    /* 80C9D82C */ int actionWait();
    /* 80C9D8EC */ int actionOrderEvent();
    /* 80C9D95C */ int actionEvent();
    /* 80C9D9BC */ int actionEnd();
    /* 80C9D9C4 */ int modeWaitUpperInit();
    /* 80C9D9F4 */ int modeWaitUpper();
    /* 80C9DA98 */ int modeUpperInit();
    /* 80C9DADC */ int modeUpper();
    /* 80C9DF18 */ int modeWaitLowerInit();
    /* 80C9DF60 */ int modeWaitLower();
    /* 80C9E004 */ int modeLowerInit();
    /* 80C9E034 */ int modeLower();
    /* 80C9E3D8 */ void setParticle();
    /* 80C9E5A0 */ void removeParticle();

    /* 80C9D2B8 */ virtual int CreateHeap();
    /* 80C9D148 */ virtual int Create();
    /* 80C9D594 */ virtual int Execute(Mtx**);
    /* 80C9D710 */ virtual int Draw();
    /* 80C9D7B4 */ virtual int Delete();

    u8 getSwbit() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getSwbit2() { return fopAcM_GetParamBit(this, 8, 8); }
    u8 getEvNo() { return fopAcM_GetParamBit(this, 16, 8); }
    u8 getDir() { return fopAcM_GetParamBit(this, 28, 1); }
    u8 getType() { return fopAcM_GetParamBit(this, 24, 4); }
    u8 getMdlType() { return fopAcM_GetParamBit(this, 29, 3); }

    void setAction(u8 i_action) { mAction = i_action; }

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ JPABaseEmitter* mSmokeEmitter;
    /* 0x5B0 */ dPa_followEcallBack mParticleLeftEmitter[2];
    /* 0x5D8 */ dPa_followEcallBack mParticleRightEmitter[2];
    /* 0x600 */ cXyz mParticleLeftPos[2];
    /* 0x618 */ cXyz mParticleRightPos[2];
    /* 0x630 */ cXyz mSoundPos;
    /* 0x63C */ u8 mType;
    /* 0x63D */ u8 mAction;
    /* 0x63E */ u8 mMode;
    /* 0x63F */ u8 mIsSwitch;
    /* 0x640 */ s16 mEventId;
    /* 0x644 */ f32 mMoveAccel;
    /* 0x648 */ f32 mMoveStep;
    /* 0x64C */ u8 field_0x64C[0x650 - 0x64C];
    /* 0x650 */ cXyz mModelPos;
    /* 0x65C */ u16 mMoveStartShakeTimer;
    /* 0x65E */ s16 mMoveEndShakeTimer;
    /* 0x660 */ f32 mMoveStartShakeAmount;
    /* 0x664 */ u8 field_0x664[0x668 - 0x664];
    /* 0x668 */ u8 mMoveMode;
    /* 0x669 */ u8 mResType;
};

STATIC_ASSERT(sizeof(daObjStair_c) == 0x66c);


#endif /* D_A_OBJ_MVSTAIR_H */
