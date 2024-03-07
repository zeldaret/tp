#ifndef D_D_TIMER_H
#define D_D_TIMER_H

#include "d/msg/d_msg_object.h"
#include "dolphin/os/OSTime.h"
#include "f_op/f_op_msg.h"

class CPaneMgr;
class JKRArchive;
class JKRExpHeap;

s32 dTimer_createStockTimer();
s32 dTimer_createTimer(s32 i_mode, u32 i_limitMs, u8 i_type, u8 param_3, f32 param_4, f32 param_5,
                       f32 param_6, f32 param_7);
int dTimer_getRestTimeMs();
u8 dTimer_isStart();
u8 dTimer_isReadyFlag();

class dDlst_TimerScrnDraw_c : public dDlst_base_c {
public:
    struct getin_info {
        /* 0x0 */ f32 bck_frame;
        /* 0x4 */ f32 pikari_frame;
        /* 0x8 */ s16 pos_x;
        /* 0xA */ s16 pos_y;
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
    /* 8025EECC */ const char* getNumber(int);
    /* 8025EEF0 */ void setTimer(int);
    /* 8025F180 */ void setCounter(u8, u8);
    /* 8025FA00 */ void setParentPos(f32, f32);
    /* 8025FA2C */ void setTimerPos(f32, f32);
    /* 8025FA6C */ void setCounterPos(f32, f32);
    /* 8025FA98 */ void setImagePos(f32, f32);
    /* 8025FAC4 */ void setShowType(u8);
    /* 8025FB74 */ void anime();
    /* 8025FF98 */ BOOL closeAnime();
    /* 802601E4 */ int createGetIn(cXyz);
    /* 80260574 */ s32 createStart(u16);
    /* 80260AA8 */ bool checkStartAnimeEnd();
    /* 80260AD4 */ void playBckAnimation(f32);
    /* 80260B54 */ void drawPikari(int);

    /* 80260690 */ virtual void draw();
    /* 80261394 */ virtual ~dDlst_TimerScrnDraw_c();

    void show() { mTimerVisible = 1; }
    void hide() { mTimerVisible = 0; }
    void setHIOType(u8 i_type) { mHIOType = i_type; }
    u8 getHIOType() { return field_0x3e2; }
    f32 getTimerTransY() { return mTimerTransY; }
    void resetCowID() { mCowID = 0; }
    bool isVisible() { return mTimerVisible; }

    f32 acc(s16 param_0, s16 param_1, s16 param_2) {
        return ((f32)(param_1 - param_2) * (f32)(param_1 - param_2)) / ((f32)(param_0 - param_2) * (f32)(param_0 - param_2));
    }
    
    void setTimerTrans(f32 x, f32 y) {
        mTimerTransX = x;
        mTimerTransY = y;
    }

private:
    /* 0x004 */ J2DScreen* mpScreen;
    /* 0x008 */ J2DScreen* mpGetInScreen;
    /* 0x00C */ J2DAnmTransform* mpGetInBck;
    /* 0x010 */ CPaneMgr* mpParent;
    /* 0x014 */ CPaneMgr* mpCowParent;
    /* 0x018 */ CPaneMgr* mpTimeParent;
    /* 0x01C */ CPaneMgr* mpImageParent;
    /* 0x020 */ CPaneMgr* mpGetInParent;
    /* 0x024 */ CPaneMgr* mpGetInRoot;
    /* 0x028 */ CPaneMgr* mpGetInText;
    /* 0x02C */ J2DPane* mTimerText[6][2];
    /* 0x05C */ J2DPane* field_0x5c[2][2];
    /* 0x06C */ J2DPicture* field_0x6c[2];
    /* 0x074 */ J2DPicture* field_0x74[2];
    /* 0x07C */ JKRArchive* mpArchive;
    /* 0x080 */ getin_info m_getin_info[51];
    /* 0x3B0 */ f32 mParentAlpha;
    /* 0x3B4 */ f32 mTimerAlpha;
    /* 0x3B8 */ f32 mCounterAlpha;
    /* 0x3BC */ f32 mImageAlpha;
    /* 0x3C0 */ f32 mTimerTransX;
    /* 0x3C4 */ f32 mTimerTransY;
    /* 0x3C8 */ s32 field_0x3C8;
    /* 0x3CC */ int field_0x3CC;
    /* 0x3D0 */ int field_0x3D0;
    /* 0x3D4 */ int field_0x3D4;
    /* 0x3D8 */ int field_0x3D8;
    /* 0x3DC */ u8 mCowID;
    /* 0x3DD */ u8 mHIOType;
    /* 0x3DE */ u8 field_0x3DE;
    /* 0x3DF */ u8 field_0x3DF;
    /* 0x3E0 */ u8 field_0x3E0;
    /* 0x3E1 */ u8 mTimerVisible;
    /* 0x3E2 */ u8 field_0x3e2;
};

class dTimer_c : public msg_class {
public:
    /* 8025CA0C */ int _create();
    /* 8025CF04 */ int _execute();
    /* 8025D33C */ int _draw();
    /* 8025D3BC */ int _delete();
    /* 8025D524 */ int deleteCheck();
    /* 8025D618 */ int start(int, s16);
    /* 8025D538 */ int start(int);
    /* 8025D7C0 */ int stock_start(s16);
    /* 8025D708 */ bool stock_start();
    /* 8025D7E8 */ int stop(u8);
    /* 8025D86C */ int restart(u8);
    /* 8025D920 */ int end(int);
    /* 8025D9E0 */ int deleteRequest();
    /* 8025D9F0 */ int getTimeMs();
    /* 8025DA54 */ int getLimitTimeMs();
    /* 8025DA9C */ int getRestTimeMs();
    /* 8025DB10 */ u8 isStart();
    /* 802613DC */ int createGetIn(cXyz);

    s32 createStart(u16 param_0) { return mp_tm_scrn->createStart(param_0); }
    void show() { mp_tm_scrn->show(); }
    void hide() { mp_tm_scrn->hide(); }
    void setShowType(u8 i_type) { mp_tm_scrn->setShowType(i_type); }
    void setCounterPos(f32 param_0, f32 param_1) { mp_tm_scrn->setCounterPos(param_0, param_1); }
    void setImagePos(f32 param_0, f32 param_1) { mp_tm_scrn->setImagePos(param_0, param_1); }
    void setTimerPos(f32 param_0, f32 param_1) { mp_tm_scrn->setTimerPos(param_0, param_1); }

    u8 isReadyFlag() { return m_is_ready; }

private:
    /* 0x0FC */ dDlst_TimerScrnDraw_c* mp_tm_scrn;
    /* 0x100 */ JKRExpHeap* mp_heap;
    /* 0x104 */ u8 field_0x104[4];
    /* 0x108 */ request_of_phase_process_class m_phase;
    /* 0x110 */ OSTime m_start_time;
    /* 0x118 */ OSTime m_time;
    /* 0x120 */ OSTime field_0x120;
    /* 0x128 */ OSTime field_0x128;
    /* 0x130 */ OSTime field_0x130;
    /* 0x138 */ OSTime field_0x138;
    /* 0x140 */ OSTime mLimitTime;
    /* 0x148 */ u8 field_0x148[0x150 - 0x148];
    /* 0x150 */ int field_0x150;
    /* 0x154 */ int m_timer_mode;
    /* 0x158 */ int field_0x158;
    /* 0x15C */ int field_0x15c;
    /* 0x160 */ int field_0x160;
    /* 0x164 */ int m_se_idx;
    /* 0x168 */ s16 field_0x168;
    /* 0x16A */ u8 field_0x16A;
    /* 0x16B */ u8 field_0x16B;
    /* 0x16C */ u8 m_mode;
    /* 0x16D */ u8 field_0x16D;
    /* 0x16E */ u8 m_is_ready;
};

#endif /* D_D_TIMER_H */
