#ifndef JUTVIDEO_H
#define JUTVIDEO_H

#include "dolphin/gx/GX.h"
#include "dolphin/os/OS.h"
#include "dolphin/types.h"
#include "dolphin/vi/vi.h"

// TODO: placeholder
struct _GXRenderModeObj {};

struct JUTVideo {
    static JUTVideo* sManager;
    // TODO: figure out type
    static u8 sVideoLastTick[4];
    static u8 sVideoInterval[4];

    JUTVideo(_GXRenderModeObj const*);
    virtual ~JUTVideo();

    typedef void (*CallbackFn)(void);

    // struct JUTVideo_vtable * vtable;
    GXRenderModeObj* render_object;
    u32 field_0x8;
    u32 retrace_count;
    u32 field_0x10;
    u32 field_0x14;
    u32 field_0x18;
    VIRetraceCallback pre_retrace_callback;
    VIRetraceCallback post_retrace_callback;
    CallbackFn unknown_callback_1;
    CallbackFn unknown_callback_2;
    bool set_black;
    u8 padding[3];
    s32 set_black_frame_counter;
    OSMessage message;
    OSMessageQueue message_queue;

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
};

#endif /* JUTVIDEO_H */
