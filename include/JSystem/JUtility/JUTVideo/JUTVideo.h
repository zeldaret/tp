#ifndef JUTILITY_JUTVIDEO_JUTVIDEO_H_
#define JUTILITY_JUTVIDEO_JUTVIDEO_H_

#include "gx/GX.h"
#include "os/OS.h"
#include "vi/VI.h"

struct JUTVideo {
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
};

extern JUTVideo* lbl_80451538;

#endif
