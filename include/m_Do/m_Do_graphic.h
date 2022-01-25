#ifndef M_DO_M_DO_GRAPHIC_H
#define M_DO_M_DO_GRAPHIC_H

#include "JSystem/JFramework/JFWDisplay.h"
#include "JSystem/JUtility/JUTFader.h"
#include "dolphin/gx/GX.h"
#include "dolphin/types.h"

int mDoGph_Create();

struct ResTIMG;
class mDoGph_gInf_c {
public:
    class bloom_c {
    public:
        // bloom_c() { m_buffer = NULL; } matches sinit
        /* 80009544 */ void create();
        /* 800095F8 */ void remove();
        /* 80009650 */ void draw();

        /* 0x00 */ GXColor mBlendColor;
        /* 0x04 */ GXColor mMonoColor;
        /* 0x08 */ u8 mEnable;
        /* 0x09 */ u8 mMode;
        /* 0x0A */ u8 mPoint;
        /* 0x0B */ u8 mBlureSize;
        /* 0x0C */ u8 mBlureRatio;
        /* 0x10 */ void* m_buffer;
    };

    /* 80007E44 */ static void create();
    /* 80007F90 */ static void beginRender();
    /* 800080D0 */ static void fadeOut(f32);
    /* 80007FD8 */ static void fadeOut(f32, _GXColor&);
    /* 80008028 */ static void fadeOut_f(f32, _GXColor&);
    /* 800080A0 */ static void onBlure(const Mtx);
    /* 80008078 */ static void onBlure();
    /* 80008330 */ static void calcFade();

    static JUTFader* getFader() { return mFader; }
    static int startFadeOut(int param_0) { return JFWDisplay::getManager()->startFadeOut(param_0); }
    static int startFadeIn(int param_0) { return JFWDisplay::getManager()->startFadeIn(param_0); }
    static void setFadeColor(JUtility::TColor color) { mFader->setColor(color); }
    static void endFrame() { JFWDisplay::getManager()->endFrame(); }

    static GXTexObj mFrameBufferTexObj;
    static GXTexObj mZbufferTexObj;
    static bloom_c m_bloom;
    static Mtx mBlureMtx;
    static GXColor mBackColor;
    static GXColor mFadeColor;
    static JUTFader* mFader;
    static ResTIMG* mFrameBufferTimg;
    static void* mFrameBufferTex;
    static ResTIMG* mZbufferTimg;
    static void* mZbufferTex;
    static f32 mFadeRate;
    static f32 mFadeSpeed;
};

#endif /* M_DO_M_DO_GRAPHIC_H */
