#ifndef JUTPROCBAR_H
#define JUTPROCBAR_H

#include "JSystem/JKernel/JKRHeap.h"
#include "JSystem/JUtility/TColor.h"
#include "dolphin/types.h"

class JUTProcBar {
public:
    class CTime {
    public:
        /* 802E7340 */ CTime();

        void start(u8 param_0, u8 param_1, u8 param_2) {
            field_0x10 = param_0;
            field_0x11 = param_1;
            field_0x12 = param_2;
            mTick = OSGetTick();
        }

        void end() {
            field_0x4 = ((OSGetTick() - mTick) * 8) / ((*(u32*)0x800000F8 / 4) / 125000);
            if (field_0x4 == 0) {
                field_0x4 = 1;
            }
        }

        /* 0x00 */ u32 mTick;
        /* 0x04 */ u32 field_0x4;
        /* 0x08 */ u32 field_0x8;
        /* 0x0C */ u32 field_0xc;
        /* 0x10 */ u8 field_0x10;
        /* 0x11 */ u8 field_0x11;
        /* 0x12 */ u8 field_0x12;
    };

    class CParamSet {
    public:
        /* 0x00 */ int mBarWidth;
        /* 0x04 */ int mPosX;
        /* 0x08 */ int mPosY;
        /* 0x0C */ int mWidth;
        /* 0x10 */ int mUserPosition;
    };

    /* 802E5888 */ JUTProcBar();
    /* 802E599C */ ~JUTProcBar();
    /* 802E59E0 */ static void create();
    /* 802E5A28 */ static void destroy();
    /* 802E5A60 */ static void clear();
    /* 802E5B30 */ void bar_subroutine(int, int, int, int, int, int, int, JUtility::TColor,
                                       JUtility::TColor);
    /* 802E5CC4 */ void adjustMeterLength(u32, f32*, f32, f32, int*);
    /* 802E5E08 */ void draw();
    /* 802E5E3C */ void drawProcessBar();
    /* 802E6FA0 */ void drawHeapBar();

    void cpuStart() { mCpu.start(255, 129, 30); }
    void cpuEnd() { mCpu.end(); }
    void gpWaitStart() { mGpWait.start(255, 129, 30); }
    void gpWaitEnd() { mGpWait.end(); }
    void gpStart() { mGp.start(255, 129, 30); }
    void gpEnd() { mGp.end(); }
    void wholeLoopStart() { mWholeLoop.start(255, 129, 30); }
    void wholeLoopEnd() { mWholeLoop.end(); }
    void idleStart() { mIdle.start(255, 129, 30); }
    void idleEnd() { mIdle.end(); }
    void setCostFrame(int frame) { mCostFrame = frame; }
    void setVisible(bool visible) { mVisible = visible; }
    void setVisibleHeapBar(bool visible) { mHeapBarVisible = visible; }

    static JUTProcBar* getManager() { return sManager; }

    static JUTProcBar* sManager;

private:
    /* 0x000 */ CTime mIdle;
    /* 0x014 */ CTime mGp;
    /* 0x028 */ CTime mCpu;
    /* 0x03C */ CTime mGpWait;
    /* 0x050 */ CTime mWholeLoop;
    /* 0x064 */ CTime field_0x64[8];
    /* 0x104 */ int mCostFrame;
    /* 0x108 */ int field_0x108;
    /* 0x10C */ bool mVisible;
    /* 0x110 */ int field_0x110;
    /* 0x114 */ CParamSet field_0x114;
    /* 0x128 */ int field_0x128;
    /* 0x12C */ JKRHeap* mWatchHeap;
    /* 0x130 */ bool mHeapBarVisible;
};

#endif /* JUTPROCBAR_H */
