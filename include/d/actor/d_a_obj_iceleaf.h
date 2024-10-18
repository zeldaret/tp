#ifndef D_A_OBJ_ICELEAF_H
#define D_A_OBJ_ICELEAF_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_d.h"
#include "d/d_bg_s_acch.h"

/**
 * @ingroup actors-objects
 * @class daObjIceLeaf_c
 * @brief Ice Leaf
 *
 * @details
 *
 */
class daObjIceLeaf_c : public fopAc_ac_c {
public:
    enum daObjIceLeaf_MODE {
        MODE_DROP_WAIT_e,
        MODE_DROP_e,
        MODE_PLAYER_WAIT_e,
        MODE_RIDE_e,
    };

    enum daObjIceLeaf_ACTION {
        ACT_WAIT_e,
        ACT_ORDER_EVENT_e,
        ACT_EVENT_e,
        ACT_DEAD_e,
    };

    /* 80C24738 */ void initBaseMtx();
    /* 80C24774 */ void setBaseMtx();
    /* 80C249E4 */ int Create();
    /* 80C24BC4 */ void setAnmPos();
    /* 80C24C9C */ int CreateHeap();
    /* 80C24E14 */ int create();
    /* 80C25158 */ int execute();
    /* 80C25360 */ void action();
    /* 80C2541C */ void modeDropWait();
    /* 80C25614 */ void modeDrop();
    /* 80C258F8 */ void modePlayerWait();
    /* 80C25904 */ void modeRide();
    /* 80C25908 */ void event_proc_call();
    /* 80C259C4 */ void actionWait();
    /* 80C259C8 */ void actionOrderEvent();
    /* 80C25A68 */ void actionEvent();
    /* 80C25AC4 */ void actionDead();
    /* 80C25AC8 */ void setFallSE();
    /* 80C25BB8 */ int draw();
    /* 80C25C50 */ int _delete();

    void offRide() { mRide = false; }
    void onRide() { mRide = true; }
    void setBreakEffect() { mBreakEffect = true; }
    void deleteActor() { mDeleteActor = true; }
    void setAction(u8 i_action) { mAction = i_action; }
    void setMode(u8 i_mode) { mMode = i_mode; }

    u8 getEvId() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 checkRideStatus() { return fopAcM_GetParamBit(this, 0x10, 8); }
    u8 getSwbit() { return fopAcM_GetParamBit(this, 8, 8); }

private:
    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ dBgS_ObjAcch mAcch;
    /* 0x74C */ dBgS_AcchCir mAcchCir;
    /* 0x78C */ dCcD_Stts mStts;
    /* 0x7C8 */ dCcD_Cyl mCyl;
    /* 0x904 */ mDoExt_bckAnm* mpBck;
    /* 0x908 */ J3DTransformInfo mTransformInfo;
    /* 0x928 */ u8 mMode;
    /* 0x929 */ u8 mAction;
    /* 0x92A */ u8 mEvId;
    /* 0x92B */ u8 field_0x92b;
    /* 0x92C */ s16 mEventID;
    /* 0x930 */ Mtx mMtx;
    /* 0x960 */ u8 mRide;
    /* 0x961 */ u8 mDeleteActor;
    /* 0x962 */ u8 mBreakEffect;
    /* 0x964 */ cXyz mFallSEPos;
    /* 0x970 */ cXyz mFallStartSEPos;
};

STATIC_ASSERT(sizeof(daObjIceLeaf_c) == 0x97c);


#endif /* D_A_OBJ_ICELEAF_H */
