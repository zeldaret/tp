#ifndef D_D_TIMER_H
#define D_D_TIMER_H

#include "SSystem/SComponent/c_xyz.h"
#include "SSystem/SComponent/c_phase.h"
#include "dolphin/types.h"
#include "dolphin/os/OSTime.h"
#include "d/msg/d_msg_class.h"
#include "JSystem/JKernel/JKRExpHeap.h"

s32 dTimer_createStockTimer();

class dTimer_c : public msg_class {
private:
    /* 0x100 */ JKRExpHeap* mpHeap;
    /* 0x104 */ u8 field_0x104[4];
    /* 0x108 */ request_of_phase_process_class mPhase;
    /* 0x110 */ OSTime mTime1;
    /* 0x118 */ OSTime mTime2;
    /* 0x120 */ u8 field_0x120[16];
    /* 0x130 */ OSTime mTime3;
    /* 0x138 */ OSTime mTime5;
    /* 0x140 */ OSTime mLimitTime;
    /* 0x148 */ u8 field_0x148[12];
    /* 0x154 */ int mTimerMode;
    /* 0x158 */ u8 field_0x158[12];
    /* 0x164 */ u8 mSeIdx;
    /* 0x165 */ u8 field_0x165[3];
    /* 0x168 */ s16 field_0x168;
    /* 0x16A */ u8 field_0x16A;
    /* 0x16B */ u8 field_0x16B;
    /* 0x16C */ u8 mDeleteCheck;

public:
    /* 8025CA0C */ void _create();
    /* 8025CF04 */ void _execute();
    /* 8025D33C */ void _draw();
    /* 8025D3BC */ void _delete();
    /* 8025D524 */ int deleteCheck();
    /* 8025D618 */ void start(int, s16);
    /* 8025D538 */ void start(int);
    /* 8025D7C0 */ int stock_start(s16);
    /* 8025D708 */ bool stock_start();
    /* 8025D7E8 */ int stop(u8);
    /* 8025D86C */ void restart(u8);
    /* 8025D920 */ void end(int);
    /* 8025D9E0 */ int deleteRequest();
    /* 8025D9F0 */ int getTimeMs();
    /* 8025DA54 */ int getLimitTimeMs();
    /* 8025DA9C */ int getRestTimeMs();
    /* 8025DB10 */ int isStart();
    /* 802613DC */ int createGetIn(cXyz);
};

#endif /* D_D_TIMER_H */
