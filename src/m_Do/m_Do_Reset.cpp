#include "m_Do/m_Do_reset/m_Do_reset.h"
#include "global.h"

extern "C" {
void my_OSCancelAlarmAll(void) {
    return;
}

void destroyVideo(JUTVideo *video) {
    JUTVideo_NS_destroyManager();
    GXSetDrawDoneCallback(NULL);
    VISetBlack(1);
    VIFlush();
    VIWaitForRetrace();
    return;
}
}

asm void mDoRst::reset(s32 p1, u32 p2, s32 p3) {
    nofralloc
    #include "m_Do/m_Do_reset/asm/func_80015614.s"
}

asm void mDoRst::resetCallBack(int p1, void* p2) {
    nofralloc
    #include "m_Do/m_Do_reset/asm/func_8001574C.s"
}


ResetData* mDoRst::getResetData() {
    return /* mResetData */ lbl_80450C78;
}