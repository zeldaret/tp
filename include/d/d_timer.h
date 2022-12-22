#ifndef D_D_TIMER_H
#define D_D_TIMER_H

#include "SSystem/SComponent/c_xyz.h"
#include "SSystem/SComponent/c_phase.h"
#include "dolphin/types.h"
#include "dolphin/os/OSTime.h"
#include "d/msg/d_msg_class.h"
#include "d/msg/d_msg_object.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "JSystem/J2DGraph/J2DPane.h"

s32 dTimer_createStockTimer();

class dDlst_TimerScrnDraw_c {
private:
    u8 field_0x00[0x3e1];
    u8 mTimerVisible;
public:
    /* 8025DB38 */ dDlst_TimerScrnDraw_c();
    /* 8025DBE0 */ void setHIO();
    /* 8025DFBC */ void setScreen(s32, JKRArchive*);
    /* 8025E240 */ void setScreenBase();
    /* 8025E66C */ void setScreenBoatRace();
    /* 8025E8B8 */ void setScreenRider();
    /* 8025EB20 */ void hideDenominator();
    /* 8025EC5C */ void deleteScreen();
    /* 8025EE24 */ void changeNumberTexture(J2DPane*, int);
    /* 8025EECC */ void getNumber(int);
    /* 8025EEF0 */ void setTimer(int);
    /* 8025F180 */ void setCounter(u8, u8);
    /* 8025FA00 */ void setParentPos(f32, f32);
    /* 8025FA2C */ void setTimerPos(f32, f32);
    /* 8025FA6C */ void setCounterPos(f32, f32);
    /* 8025FA98 */ void setImagePos(f32, f32);
    /* 8025FAC4 */ void setShowType(u8);
    /* 8025FB74 */ void anime();
    /* 8025FF98 */ void closeAnime();
    /* 802601E4 */ void createGetIn(cXyz);
    /* 80260574 */ s32 createStart(u16);
    /* 80260690 */ void draw();
    /* 80260AA8 */ void checkStartAnimeEnd();
    /* 80260AD4 */ void playBckAnimation(f32);
    /* 80260B54 */ void drawPikari(int);
    /* 80261394 */ ~dDlst_TimerScrnDraw_c();

    void show() {
        mTimerVisible = 1;
    }

    void hide() {
        mTimerVisible = 0;
    }
};

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
    /* 0x16C */ u8 field_0x16D;
    /* 0x16E */ u8 mIsReady;

public:
    /* 8025CA0C */ void _create();
    /* 8025CF04 */ void _execute();
    /* 8025D33C */ int _draw();
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

    s32 createStart(u16 param_0) {
        return ((dDlst_TimerScrnDraw_c*)field_0xfc)->createStart(param_0);
    }

    void show() {
        ((dDlst_TimerScrnDraw_c*)field_0xfc)->show();
    }

    void hide() {
        ((dDlst_TimerScrnDraw_c*)field_0xfc)->hide();
    }

    u8 isReadyFlag() {
        return mIsReady;
    }
};

#endif /* D_D_TIMER_H */
