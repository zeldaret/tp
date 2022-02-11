#ifndef D_D_TIMER_H
#define D_D_TIMER_H

#include "dolphin/types.h"
#include "SSystem/SComponent/c_xyz.h"

void dTimer_createStockTimer();

class dTimer_c {
public:
    /* 8025CA0C */ void _create();
    /* 8025CF04 */ void _execute();
    /* 8025D33C */ void _draw();
    /* 8025D3BC */ void _delete();
    /* 8025D524 */ int deleteCheck();
    /* 8025D618 */ void start(int, s16);
    /* 8025D538 */ void start(int);
    /* 8025D7C0 */ void stock_start(s16);
    /* 8025D708 */ void stock_start();
    /* 8025D7E8 */ void stop(u8);
    /* 8025D86C */ void restart(u8);
    /* 8025D920 */ void end(int);
    /* 8025D9E0 */ void deleteRequest();
    /* 8025D9F0 */ void getTimeMs();
    /* 8025DA54 */ void getLimitTimeMs();
    /* 8025DA9C */ void getRestTimeMs();
    /* 8025DB10 */ void isStart();
    /* 802613DC */ void createGetIn(cXyz);
};

#endif /* D_D_TIMER_H */
