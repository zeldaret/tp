#ifndef JUTVIDEO_H
#define JUTVIDEO_H

#include "dolphin/gx/GX.h"
#include "dolphin/os/OS.h"
#include "dolphin/types.h"
#include "dolphin/vi/vi.h"

class JUTVideo {
public:
    typedef void (*CallbackFn)(void);

    JUTVideo(_GXRenderModeObj const*);
    virtual ~JUTVideo();

    // TODO: return types not confirmed
    /* 802E4C54 */ void createManager(_GXRenderModeObj const*);
    /* 802E4CAC */ void destroyManager();
    /* 802E4E50 */ void preRetraceProc(u32);
    /* 802E5088 */ void drawDoneStart();
    /* 802E50B0 */ void dummyNoDrawWait();
    /* 802E50BC */ void drawDoneCallback();
    /* 802E5144 */ void postRetraceProc(u32);
    /* 802E5198 */ void setRenderMode(_GXRenderModeObj const*);
    /* 802E5210 */ void waitRetraceIfNeed();

    static JUTVideo* getManager() { return sManager; }
    _GXRenderModeObj* getRenderMode() const { return mRenderObj; }

    static JUTVideo* sManager;
    static u32 sVideoLastTick;
    static u32 sVideoInterval;

private:
    /* 0x04 */ _GXRenderModeObj* mRenderObj;
    /* 0x08 */ u32 field_0x8;
    /* 0x0C */ u32 mRetraceCount;
    /* 0x10 */ u32 field_0x10;
    /* 0x14 */ u32 field_0x14;
    /* 0x18 */ u32 field_0x18;
    /* 0x1C */ VIRetraceCallback mPreRetraceCallback;
    /* 0x20 */ VIRetraceCallback mPostRetraceCallback;
    /* 0x24 */ CallbackFn unknown_callback_1;
    /* 0x28 */ CallbackFn unknown_callback_2;
    /* 0x2C */ bool mBlack;
    /* 0x30 */ s32 set_black_frame_counter;
    /* 0x34 */ OSMessage message;
    /* 0x38 */ OSMessageQueue mMessageQueue;
};

#endif /* JUTVIDEO_H */
