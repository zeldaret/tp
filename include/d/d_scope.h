#ifndef D_D_SCOPE_H
#define D_D_SCOPE_H

#include "d/pane/d_pane_class.h"
#include "d/meter/d_meter2.h"

class dScope_c : public dMeterSub_c {
public:
    enum {
        /* 0 */ PROC_OPEN,
        /* 1 */ PROC_MOVE,
        /* 2 */ PROC_CLOSE,
    };

    /* 80193690 */ dScope_c(u8);
    /* 80193FB4 */ void open_init();
    /* 80193FD0 */ void open_proc();
    /* 80194048 */ void move_init();
    /* 8019404C */ void move_proc();
    /* 80194050 */ void close_init();
    /* 80194054 */ void close_proc();

    /* 80193C68 */ virtual void draw();
    /* 8019396C */ virtual ~dScope_c();
    /* 80193B90 */ virtual int _execute(u32);
    /* 80193FA0 */ virtual bool isDead();

    /* 0x04 */ J2DScreen* mHawkEyeScrn;
    /* 0x08 */ J2DScreen* mZoomInOutScrn;
    /* 0x0C */ CPaneMgr* mHawkEyeRootPane;
    /* 0x10 */ CPaneMgr* mZoomInOutRootPane;
    /* 0x14 */ CPaneMgr* mHawkEyePanes[3];
    /* 0x20 */ CPaneMgr* mZoomInOutPanes[3][2];
    /* 0x38 */ J2DPicture* mpWipeTex;
    /* 0x3C */ J2DPicture* mpBlackTex;
    /* 0x40 */ u8 field_0x40[0x48 - 0x40];
    /* 0x48 */ JUtility::TColor field_0x48[2];
    /* 0x50 */ JUtility::TColor field_0x50[2];
    /* 0x58 */ u32 field_0x58;
    /* 0x5C */ u32 field_0x5c;
    /* 0x60 */ u8 field_0x60[0x78 - 0x60];
    /* 0x78 */ f32 mWidth;
    /* 0x7C */ f32 mHeight;
    /* 0x80 */ f32 mScale;
    /* 0x84 */ f32 mAlpha;
    /* 0x88 */ s16 mOpenTimer;
    /* 0x8A */ s16 field_0x8a;
    /* 0x8C */ u8 mProcess;
    /* 0x8D */ u8 field_0x8d;
    /* 0x8E */ u8 mIsDead;
    /* 0x8F */ u8 field_0x8f;
};

#endif /* D_D_SCOPE_H */
