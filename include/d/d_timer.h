#ifndef D_D_TIMER_H
#define D_D_TIMER_H

#include "JSystem/J2DGraph/J2DPane.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "SSystem/SComponent/c_phase.h"
#include "SSystem/SComponent/c_xyz.h"
#include "f_op/f_op_msg.h"
#include "d/msg/d_msg_object.h"
#include "dolphin/os/OSTime.h"
#include "dolphin/types.h"

s32 dTimer_createStockTimer();
s32 dTimer_createTimer(s32 param_0, u32 param_1, u8 param_2, u8 param_3, f32 param_4, f32 param_5,
                       f32 param_6, f32 param_7);

class dDlst_TimerScrnDraw_c : public dDlst_base_c {
public:
    struct dDlst_TimerScrnDraw_UnkData {
        /* 0x0 */ f32 field_0x0;
        /* 0x4 */ f32 field_0x4;
        /* 0x8 */ u16 field_0x8;
        /* 0xA */ u16 field_0xa;
        /* 0xC */ u8 field_0xc;
        /* 0xD */ u8 field_0xd;
    };  // Size: 0x10

    /* 8025DB38 */ dDlst_TimerScrnDraw_c();
    /* 8025DBE0 */ void setHIO();
    /* 8025DFBC */ void setScreen(s32, JKRArchive*);
    /* 8025E240 */ void setScreenBase();
    /* 8025E66C */ void setScreenBoatRace();
    /* 8025E8B8 */ void setScreenRider();
    /* 8025EB20 */ void hideDenominator();
    /* 8025EC5C */ void deleteScreen();
    /* 8025EE24 */ void changeNumberTexture(J2DPane*, int);
    /* 8025EECC */ char* getNumber(int);
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
    /* 80260AA8 */ void checkStartAnimeEnd();
    /* 80260AD4 */ void playBckAnimation(f32);
    /* 80260B54 */ void drawPikari(int);

    /* 80260690 */ virtual void draw();
    /* 80261394 */ virtual ~dDlst_TimerScrnDraw_c();

    void show() { mTimerVisible = 1; }
    void hide() { mTimerVisible = 0; }

private:
    /* 0x004 */ J2DScreen* mpScreen;
    /* 0x008 */ J2DScreen* mpGetInScreen;
    /* 0x00C */ void* mpGetInBck;
    /* 0x010 */ CPaneMgr* mpParent;
    /* 0x014 */ CPaneMgr* mpCowParent;
    /* 0x018 */ CPaneMgr* mpTimeParent;
    /* 0x01C */ CPaneMgr* mpImageParent;
    /* 0x020 */ CPaneMgr* mpGetInParent;
    /* 0x024 */ CPaneMgr* mpGetInRoot;
    /* 0x028 */ CPaneMgr* mpGetInText;
    /* 0x02C */ J2DPane* mTimerText[6][2];
    /* 0x05C */ J2DPane* field_0x5c[2][2];
    /* 0x06C */ J2DPane* field_0x6c;
    /* 0x070 */ J2DPane* field_0x70;
    /* 0x074 */ J2DPane* field_0x74;
    /* 0x078 */ J2DPane* field_0x78;
    /* 0x07C */ JKRArchive* mpArchive;
    /* 0x080 */ dDlst_TimerScrnDraw_UnkData field_0x80[51];
    /* 0x3B0 */ f32 field_0x3B0;
    /* 0x3B4 */ f32 field_0x3B4;
    /* 0x3B8 */ f32 field_0x3B8;
    /* 0x3BC */ f32 field_0x3BC;
    /* 0x3C0 */ f32 mTimerTransX;
    /* 0x3C4 */ f32 mTimerTransY;
    /* 0x3C8 */ s32 field_0x3C8;
    /* 0x3CC */ int field_0x3CC;
    /* 0x3D0 */ int field_0x3D0;
    /* 0x3D4 */ int field_0x3D4;
    /* 0x3D8 */ int field_0x3D8;
    /* 0x3DC */ u8 mCowID;
    /* 0x3DD */ u8 field_0x3DD;
    /* 0x3DE */ u8 field_0x3DE;
    /* 0x3DF */ u8 field_0x3DF;
    /* 0x3E0 */ u8 field_0x3E0;
    /* 0x3E1 */ u8 mTimerVisible;
    /* 0x3E2 */ u8 mHIOType;
};

class dTimer_c : public msg_class {
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
    /* 8025D86C */ int restart(u8);
    /* 8025D920 */ int end(int);
    /* 8025D9E0 */ int deleteRequest();
    /* 8025D9F0 */ int getTimeMs();
    /* 8025DA54 */ int getLimitTimeMs();
    /* 8025DA9C */ int getRestTimeMs();
    /* 8025DB10 */ int isStart();
    /* 802613DC */ int createGetIn(cXyz);

    s32 createStart(u16 param_0) { return mp_tm_scrn->createStart(param_0); }

    void show() { mp_tm_scrn->show(); }

    void hide() { mp_tm_scrn->hide(); }

    u8 isReadyFlag() { return mIsReady; }

private:
    /* 0x0FC */ dDlst_TimerScrnDraw_c* mp_tm_scrn;
    /* 0x100 */ JKRExpHeap* mpHeap;
    /* 0x104 */ u8 field_0x104[4];
    /* 0x108 */ request_of_phase_process_class mPhase;
    /* 0x110 */ OSTime mTime1;
    /* 0x118 */ OSTime mTime2;
    /* 0x120 */ OSTime mTime6;
    /* 0x128 */ u8 field_0x128;
    /* 0x130 */ OSTime mTime3;
    /* 0x138 */ OSTime mTime5;
    /* 0x140 */ OSTime mLimitTime;
    /* 0x148 */ u8 field_0x148[12];
    /* 0x154 */ int mTimerMode;
    /* 0x158 */ int field_0x158;
    /* 0x15C */ u8 field_0x15c[8];
    /* 0x164 */ u8 mSeIdx;
    /* 0x165 */ u8 field_0x165[3];
    /* 0x168 */ s16 field_0x168;
    /* 0x16A */ u8 field_0x16A;
    /* 0x16B */ u8 field_0x16B;
    /* 0x16C */ u8 mDeleteCheck;
    /* 0x16C */ u8 field_0x16D;
    /* 0x16E */ u8 mIsReady;
};

#endif /* D_D_TIMER_H */
