#ifndef M_DO_M_DO_GRAPHIC_H
#define M_DO_M_DO_GRAPHIC_H

#include "JSystem/JFramework/JFWDisplay.h"
#include "dolphin/mtx.h"
#include "dolphin/types.h"

class JUTFader;

int mDoGph_Create();

extern u8 mBlureFlag__13mDoGph_gInf_c;  // Blure
extern u8 mFade__13mDoGph_gInf_c;    // Fade
extern bool data_80450BE7;  // AutoForcus

struct ResTIMG;
class mDoGph_gInf_c {
public:
    class bloom_c {
    public:
        // bloom_c() { m_buffer = NULL; } matches sinit
        /* 80009544 */ void create();
        /* 800095F8 */ void remove();
        /* 80009650 */ void draw();

        u8 getEnable() { return mEnable; }
        void setEnable(u8 i_enable) { mEnable = i_enable; }
        GXColor* getMonoColor() { return &mMonoColor; }
        void setPoint(u8 i_point) { mPoint = i_point; }
        void setBlureSize(u8 i_size) { mBlureSize = i_size; }
        void setBlureRatio(u8 i_ratio) { mBlureRatio = i_ratio; }
        void setBlendColor(GXColor i_color) { mBlendColor = i_color; }
        void setMonoColor(GXColor i_color) { mMonoColor = i_color; }
        void setMode(u8 i_mode) { mMode = i_mode; }

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
    /* 807DFAB4 */ static void fadeIn(f32, _GXColor&);
    /* 80008028 */ static void fadeOut_f(f32, _GXColor&);
    /* 800080A0 */ static void onBlure(const Mtx);
    /* 80008078 */ static void onBlure();
    /* 80008330 */ static void calcFade();

    static JUTFader* getFader() { return mFader; }
    static void setFader(JUTFader* fader) {
        JFWDisplay::getManager()->setFader(fader);
        mFader = fader;
    }

    static int startFadeOut(int param_0) { return JFWDisplay::getManager()->startFadeOut(param_0); }
    static int startFadeIn(int param_0) { return JFWDisplay::getManager()->startFadeIn(param_0); }
    static void setFadeColor(JUtility::TColor color) { mFader->mColor.set(color); }
    static void setClearColor(JUtility::TColor color) { JFWDisplay::getManager()->setClearColor(color); }
    static void setBackColor(GXColor& color) { mBackColor = color; }
    static void endFrame() { JFWDisplay::getManager()->endFrame(); }
    static void offFade() { mFade = 0; }
    static u8 isFade() { return mFade; }
    static void offBlure() { mBlureFlag = false; }
    static bool isBlure() { return mBlureFlag; }
    static void setBlureRate(u8 i_rate) { mBlureRate = i_rate; }
    static u8 getBlureRate() { return mBlureRate; }
    static MtxP getBlureMtx() { return mBlureMtx; }
    static void offAutoForcus() { data_80450BE7 = 0; }
    static BOOL isAutoForcus() { return data_80450BE7; }
    static void setTickRate(u32 rate) { JFWDisplay::getManager()->setTickRate(rate); }
    static void waitBlanking(int wait) { JFWDisplay::getManager()->waitBlanking(wait); }
    static f32 getWidthF() { return 608.0f; }
    static f32 getHeightF() { return 448.0f; }
    static f32 getWidth() { return 608.0f; }
    static f32 getHeight() { return 448.0f; }
    static f32 getMinYF() { return 0.0f; }
    static f32 getMinXF() { return 0.0f; }
    static f32 getMaxYF() { return 448.0f; }
    static f32 getMaxXF() { return 608.0f; }
    static f32 getAspect() { return 1.3571428f; }
    static int getMinY() { return 0; }
    static int getMinX() { return 0; }
    static int getMaxY() { return 448; }
    static int getMaxX() { return 608; }
    static ResTIMG* getFrameBufferTimg() { return mFrameBufferTimg; }
    static ResTIMG* getZbufferTimg() { return mZbufferTimg; }
    static void* getFrameBufferTex() { return mFrameBufferTex; }
    static void* getZbufferTex() { return mZbufferTex; }
    static void setFadeRate(f32 rate) { mFadeRate = rate; }
    static f32 getFadeRate() { return mFadeRate; }
    static bloom_c* getBloom() { return &m_bloom; }
    static GXColor& getFadeColor() { return mFadeColor; }
    static GXColor& getBackColor() { return mBackColor; }
    static void endRender() { JFWDisplay::getManager()->endRender(); }
    static GXTexObj* getZbufferTexObj() { return &mZbufferTexObj; }
    static GXTexObj* getFrameBufferTexObj() { return &mFrameBufferTexObj; }
    static f32 getInvScale() { return 1.0f; }
    static f32 getScale() { return 1.0f; }

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
    static bool mBlureFlag;
    static u8 mBlureRate;
    static u8 mFade;
};

#endif /* M_DO_M_DO_GRAPHIC_H */
