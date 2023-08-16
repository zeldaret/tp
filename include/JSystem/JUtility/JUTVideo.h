#ifndef JUTVIDEO_H
#define JUTVIDEO_H

#include "dolphin/gx/GXStruct.h"
#include "dolphin/os/OSMessage.h"
#include "dolphin/os/OSTime.h"
#include "dolphin/vi/vi.h"

typedef u8 (*Pattern)[2];

class JUTVideo {
public:
    typedef void (*Callback)(u32);

    JUTVideo(GXRenderModeObj const*);
    virtual ~JUTVideo();

    // TODO: return types not confirmed
    /* 802E4C54 */ static JUTVideo* createManager(GXRenderModeObj const*);
    /* 802E4CAC */ static void destroyManager();
    /* 802E5088 */ static void drawDoneStart();
    /* 802E50B0 */ static void dummyNoDrawWait();
    /* 802E5198 */ void setRenderMode(GXRenderModeObj const*);
    /* 802E5210 */ void waitRetraceIfNeed();

    /* 802E4E50 */ static void preRetraceProc(u32);
    /* 802E5144 */ static void postRetraceProc(u32);
    /* 802E50BC */ static void drawDoneCallback();

    u16 getFbWidth() const { return mRenderObj->fb_width; }
    u16 getEfbHeight() const { return mRenderObj->efb_height; }
    void getBounds(u16& width, u16& height) const {
        width = (u16)getFbWidth();
        height = (u16)getEfbHeight();
    }
    u16 getXfbHeight() const { return mRenderObj->xfb_height; }
    u32 isAntiAliasing() const { return mRenderObj->antialiasing; }
    Pattern getSamplePattern() const { return mRenderObj->sample_pattern; }
    u8* getVFilter() const { return mRenderObj->vfilter; }
    OSMessageQueue* getMessageQueue() { return &mMessageQueue; }

    static JUTVideo* getManager() { return sManager; }
    static OSTick getVideoInterval() { return sVideoInterval; }
    static OSTick getVideoLastTick() { return sVideoLastTick; }

    GXRenderModeObj* getRenderMode() const { return mRenderObj; }

private:
    static JUTVideo* sManager;
    static OSTick sVideoLastTick;
    static OSTick sVideoInterval;

private:
    /* 0x04 */ _GXRenderModeObj* mRenderObj;
    /* 0x08 */ u32 field_0x8;
    /* 0x0C */ u32 mRetraceCount;
    /* 0x10 */ u32 field_0x10;
    /* 0x14 */ u32 field_0x14;
    /* 0x18 */ u32 field_0x18;
    /* 0x1C */ VIRetraceCallback mPreRetraceCallback;
    /* 0x20 */ VIRetraceCallback mPostRetraceCallback;
    /* 0x24 */ Callback mPreCallback;
    /* 0x28 */ Callback mPostCallback;
    /* 0x2C */ bool mSetBlack;
    /* 0x30 */ s32 mSetBlackFrameCount;
    /* 0x34 */ OSMessage mMessage;
    /* 0x38 */ OSMessageQueue mMessageQueue;
};

inline JUTVideo* JUTGetVideoManager() {
    return JUTVideo::getManager();
}

#endif /* JUTVIDEO_H */
