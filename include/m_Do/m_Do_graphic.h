#ifndef M_DO_M_DO_GRAPHIC_H
#define M_DO_M_DO_GRAPHIC_H

#include "JSystem/JFramework/JFWDisplay.h"
#include "JSystem/JUtility/JUTFader.h"
#include "dolphin/gx/GX.h"
#include "dolphin/types.h"

void mDoGph_Create();

class mDoGph_gInf_c {
public:
    class bloom_c {
    public:
        /* 80009544 */ void create();
        /* 800095F8 */ void remove();
        /* 80009650 */ void draw();
    };

    /* 80007E44 */ void create();
    /* 80007F90 */ void beginRender();
    /* 800080D0 */ void fadeOut(f32);
    /* 80007FD8 */ void fadeOut(f32, _GXColor&);
    /* 80008028 */ void fadeOut_f(f32, _GXColor&);
    /* 800080A0 */ void onBlure(f32 const (*)[4]);
    /* 80008078 */ void onBlure();
    /* 80008330 */ void calcFade();

    static JUTFader* getFader() { return mFader; }
    static int startFadeOut(int param_0) { return JFWDisplay::getManager()->startFadeOut(param_0); }
    static int startFadeIn(int param_0) { return JFWDisplay::getManager()->startFadeIn(param_0); }
    static void setFadeColor(JUtility::TColor color) { mFader->setColor(color); }

    static u8 mFrameBufferTexObj[32];
    static u8 mZbufferTexObj[32];
    static u8 m_bloom[20];
    static u8 mBlureMtx[48 + 4 /* padding */];
    static u8 mBackColor[4];
    static u8 mFadeColor[4];
    static JUTFader* mFader;
    static u8 mFrameBufferTimg[4];
    static u8 mFrameBufferTex[4];
    static u8 mZbufferTimg[4];
    static u8 mZbufferTex[4];
    static f32 mFadeRate;
    static f32 mFadeSpeed;
};

#endif /* M_DO_M_DO_GRAPHIC_H */
