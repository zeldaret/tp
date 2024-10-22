#ifndef D_A_TAG_EVENT_H
#define D_A_TAG_EVENT_H

#include "f_op/f_op_actor_mng.h"

class daTag_Event_c : public fopAc_ac_c {
public:
    enum Action_e {
        ACTION_WAIT,
        ACTION_ARRIVAL,
        ACTION_HUNT,
        ACTION_HUNT2,
        ACTION_READY,
        ACTION_NEXT,
        ACTION_EVENT,
    };

    /* 8048AD68 */ u8 getEventNo();
    /* 8048AD74 */ u8 getSwbit();
    /* 8048AD80 */ u8 getSwbit2();
    /* 8048AD8C */ u8 getType();
    /* 8048AD98 */ u16 getInvalidEventFlag();
    /* 8048ADA4 */ u16 getAreaType();
    /* 8048ADB0 */ u16 getValidEventFlag();
    /* 8048ADBC */ BOOL horseRodeo();
    /* 8048ADEC */ BOOL arrivalTerms();
    /* 8048AEEC */ void demoInitProc();
    /* 8048AEF8 */ void demoEndProc();
    /* 8048AEFC */ void demoProc();
    /* 8048AF00 */ int create();
    /* 8048B0E4 */ int actionNext();
    /* 8048B1B0 */ int actionEvent();
    /* 8048B268 */ int actionReady();
    /* 8048B378 */ BOOL checkArea();
    /* 8048B514 */ int actionHunt();
    /* 8048B5C8 */ int actionArrival();
    /* 8048B5F4 */ int actionWait();
    /* 8048B5FC */ int actionHunt2();
    /* 8048B6D4 */ int execute();
    /* 8048B784 */ int draw();

    void setActio(u8 i_action) { mAction = i_action; }

    /* 0x568 */ s16 mEventIdx;
    /* 0x56A */ s16 mMapEventIdx;
    /* 0x56C */ s16 mMapToolId;
    /* 0x56E */ s16 field_0x56e;
    /* 0x570 */ s16 mHunt2Timer;
    /* 0x572 */ u8 mAction;
    /* 0x573 */ u8 field_0x573;
};

#endif /* D_A_TAG_EVENT_H */
