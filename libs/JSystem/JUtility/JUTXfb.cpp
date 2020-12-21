#include "JSystem/JUtility/JUTXfb/JUTXfb.h"
#include "functions.h"

void JUTXfb::clearIndex() {
    this->active_xfb_index = -1;
    this->last_drawn_xfb_index = -1;
    this->next_xfb_buffer = -1;
    return;
}

asm void JUTXfb::common_init(s32 p1) {
    nofralloc
    #include "JSystem/JUtility/JUTXfb/asm/func_802E5228.s"
}

asm JUTXfb::JUTXfb(GXRenderModeObj* obj, JKRHeap* heap, JUTXfb::EXfbNumber xfb_number) {
    nofralloc
    #include "JSystem/JUtility/JUTXfb/asm/func_802E5260.s"
}

asm JUTXfb::~JUTXfb() {
    nofralloc
    #include "JSystem/JUtility/JUTXfb/asm/func_802E5308.s"
}

asm void JUTXfb::delXfb(s32 index) {
    nofralloc
    #include "JSystem/JUtility/JUTXfb/asm/func_802E5378.s"
}

asm void JUTXfb::createManager(JKRHeap* heap, JUTXfb::EXfbNumber xfb_number) {
    nofralloc
    #include "JSystem/JUtility/JUTXfb/asm/func_802E53B8.s"
}

asm void JUTXfb::destroyManager() {
    nofralloc
    #include "JSystem/JUtility/JUTXfb/asm/func_802E5424.s"
}

asm void JUTXfb::initiate(u16 width, u16 height, JKRHeap* heap, JUTXfb::EXfbNumber xfb_number) {
    nofralloc
    #include "JSystem/JUtility/JUTXfb/asm/func_802E5454.s"
}