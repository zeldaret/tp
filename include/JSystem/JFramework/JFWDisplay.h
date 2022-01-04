#ifndef JFWDISPLAY_H
#define JFWDISPLAY_H

#include "dolphin/types.h"
#include "dolphin/gx/GX.h"
#include "JSystem/JUtility/JUTXfb.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "JSystem/JUtility/TColor.h"
#include "JSystem/JUtility/JUTFader.h"

class JFWDisplay {
public:
    enum EDrawDone {
        /* 0x1 */ UNK_METHOD_1 = 1
    };

    /* 80272040 */ void ctor_subroutine(bool);
    /* 802720F8 */ JFWDisplay(JKRHeap*, JUTXfb::EXfbNumber, bool);
    /* 802721DC */ void createManager(_GXRenderModeObj const*, JKRHeap*, JUTXfb::EXfbNumber, bool);
    /* 802722B8 */ void prepareCopyDisp();
    /* 802723AC */ void drawendXfb_single();
    /* 802723F4 */ void exchangeXfb_double();
    /* 802724FC */ void exchangeXfb_triple();
    /* 80272574 */ void copyXfb_triple();
    /* 802725F8 */ void preGX();
    /* 8027268C */ void endGX();
    /* 80272C60 */ void waitBlanking(int);
    /* 80272E10 */ void threadSleep(s64);
    /* 80272EB8 */ void clearEfb_init();
    /* 80272F9C */ void clearEfb(int, int, int, int, _GXColor);
    /* 80272F2C */ void clearEfb();
    /* 80272F58 */ void clearEfb(_GXColor);
    /* 8027331C */ void calcCombinationRatio();

    /* 80272798 */ virtual void beginRender();
    /* 80272A04 */ virtual void endRender();
    /* 80272AB0 */ virtual void endFrame();
    /* 80272160 */ virtual ~JFWDisplay();

    static JFWDisplay* getManager() { return sManager; }

    int startFadeOut(int param_0) {
        if (mFader != NULL) {
            return mFader->startFadeOut(param_0);
        }
        return 1;
    }

    int startFadeIn(int param_0) {
        if (mFader != NULL) {
            return mFader->startFadeIn(param_0);
        }
        return 1;
    }

    static JFWDisplay* sManager;

private:
    /* 0x04 */ JUTFader* mFader;
    /* 0x08 */ JUtility::TColor mClearColor;
    /* 0x0C */ u32 field_0xc;
    /* 0x10 */ JUTXfb* mXfbManager;
    /* 0x14 */ u16 field_0x14;
    /* 0x18 */ EDrawDone mDrawDoneMethod;
    /* 0x1C */ u16 mFrameRate;
    /* 0x20 */ u32 mTickRate;
    /* 0x24 */ bool field_0x24;
    /* 0x28 */ f32 mCombinationRatio;
    /* 0x2C */ u32 field_0x2c;
    /* 0x30 */ int field_0x30;
    /* 0x34 */ int field_0x34;
    /* 0x38 */ int field_0x38;
    /* 0x3C */ int field_0x3c;
    /* 0x40 */ u8 field_0x40;
    /* 0x44 */ int field_0x44;
    /* 0x48 */ u16 field_0x48;
    /* 0x4A */ u8 field_0x4a;
};

#endif /* JFWDISPLAY_H */
