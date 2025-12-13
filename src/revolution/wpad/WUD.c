#include <revolution/os.h>
#include <revolution/wpad/wud.h>

#include "__wud.h"

wud_cb_st __rvl_wudcb;

static u16 _dev_handle_queue_size[WUD_MAX_DEV_ENTRY];
static u16 _dev_handle_notack_num[WUD_MAX_DEV_ENTRY];

u8 WUDGetBufferStatus(void) {
    wud_cb_st* p_wcb = &__rvl_wudcb;
    u8 ret;
    BOOL intrStatus = OSDisableInterrupts();

    ret = p_wcb->bufferStatus1 - p_wcb->bufferStatus0;

    OSRestoreInterrupts(intrStatus);
    return ret;
}

u16 _WUDGetQueuedSize(s8 dev_handle) {
    u16 queuedSize;
    BOOL intrStatus = OSDisableInterrupts();

    if (dev_handle >= 0 && dev_handle < WUD_MAX_DEV_ENTRY)
        queuedSize = WUDiGetQueueSizeForHandle(dev_handle);
    else
        queuedSize = 0;

    OSRestoreInterrupts(intrStatus);
    return queuedSize;
}

u16 _WUDGetNotAckedSize(s8 dev_handle) {
    u16 notAckedSize;
    BOOL intrStatus = OSDisableInterrupts();

    if (dev_handle >= 0 && dev_handle < WUD_MAX_DEV_ENTRY)
        notAckedSize = WUDiGetNotAckNumForHandle(dev_handle);
    else
        notAckedSize = 0;

    OSRestoreInterrupts(intrStatus);
    return notAckedSize;
}

u8 _WUDGetLinkNumber(void) {
    wud_cb_st* p_wcb = &__rvl_wudcb;
    BOOL intrStatus = OSDisableInterrupts();
    u8 linkedNum = p_wcb->linkedNum;

    OSRestoreInterrupts(intrStatus);
    return linkedNum;
}

u16 WUDiGetQueueSizeForHandle(u8 dev_handle) {
    return _dev_handle_queue_size[dev_handle];
}

u16 WUDiGetNotAckNumForHandle(u8 dev_handle) {
    return _dev_handle_notack_num[dev_handle];
}
