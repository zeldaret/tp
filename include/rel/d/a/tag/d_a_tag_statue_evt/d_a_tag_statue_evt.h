#ifndef D_A_TAG_STATUE_EVT_H
#define D_A_TAG_STATUE_EVT_H

#include "f_op/f_op_actor_mng.h"

class daTagStatue_c : fopAc_ac_c {
public:
    /* 805A6FC4 */ void initBaseMtx();
    /* 805A7000 */ void setBaseMtx();
    /* 805A7068 */ cPhs__Step Create();
    /* 805A7230 */ int CreateHeap();
    /* 805A7424 */ cPhs__Step create();
    /* 805A7514 */ int execute();
    /* 805A759C */ void event_proc_call();
    /* 805A76AC */ void actionWait();
    /* 805A7714 */ void actionOrderEvent();
    /* 805A77A0 */ void actionEvent();
    /* 805A7848 */ void actionDead();
    /* 805A784C */ int demoProc();
    /* 805A7A68 */ void setParticle();
    /* 805A7B24 */ void endParticle();
    /* 805A7B78 */ BOOL checkStartDemo();
    /* 805A7CD0 */ BOOL checkOnEffect();
    /* 805A7E94 */ s32 getLetterCount();
    /* 805A7F0C */ int draw();
    /* 805A7FF8 */ int _delete();

private:
    /* 0x568 */ request_of_phase_process_class mArcPhase;
    /* 0x570 */ request_of_phase_process_class mEvArcPhase;
    /* 0x578 */ J3DModel* mpModel;
    /* 0x57C */ mDoExt_btkAnm* mpPlatformCircleBtk;
    /* 0x580 */ mDoExt_brkAnm* mpGlowingSkyCharacterBrk;
    /* 0x584 */ JPABaseEmitter* mpLightRingEmitters[3];
    /* 0x590 */ s32 mStaffId;
    /* 0x594 */ u8 mCurrentAction;
    /* 0x595 */ u8 mTimer;
    /* 0x596 */ u8 mMapToolId;
    /* 0x597 */ u8 mSkyCharacterEventBitIdIndex;
    /* 0x598 */ s16 mEventId;
    /* 0x59C */ u32 mTreasureDemoItemId;
    /* 0x5A0 */ s32 mOwlStatueId;

    enum Action_e {
        ACTION_WAIT_e,
        ACTION_ORDER_EVENT_e,
        ACTION_EVENT_e,
        ACTION_DEAD_e
    };

    enum Demo_Action_e {
        DEMO_ACTION_WAIT,
        DEMO_ACTION_MOVE_OWL_STATUE,
        DEMO_ACTION_AWARD_ITEM
    };

    enum Tag_Location_e {
        TAG_LOCATION_FARON_WOODS,
        TAG_LOCATION_GERUDO_DESERT,
        TAG_LOCATION_KAKARIKO_GORGE,
        TAG_LOCATION_GREAT_ELDIN_BRIDGE,
        TAG_LOCATION_LAKE_HYLIA,
        TAG_LOCATION_RUINED_THEATRE
    };

    void setAction(Action_e action) {
        mCurrentAction = action;
    }


    u32 getSwbit() {
        return fopAcM_GetParamBit(this, 0, 8);
    }

    // Returns whether player has obtained a Sky Character from the tag
    u32 getSwbit2() {
        return fopAcM_GetParamBit(this, 12, 8);
    }
};

#endif /* D_A_TAG_STATUE_EVT_H */