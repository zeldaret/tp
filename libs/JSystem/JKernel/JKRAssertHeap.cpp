#include "JSystem/JKernel/JKRAssertHeap/JKRAssertHeap.h"
#include "global.h"

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D12C4.s"
JKRAssertHeap::JKRAssertHeap(void* data, unsigned long size, JKRHeap* parent, bool errorFlag)
    : JKRHeap(data, size, parent, errorFlag) {}

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1300.s"
JKRAssertHeap::~JKRAssertHeap() {
    this->dispose();
}

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1368.s"
JKRAssertHeap* JKRAssertHeap::create(JKRHeap* parent) {
    if (!parent) {
        parent = JKRHeap::getRootHeap();
    }

    // 0x70 is sizeof(JKRAssertHeap) aligned to 16 bytes
    u32 size = 0x70;
    int alignment = 16;

    void* ptr = JKRHeap::alloc(size, alignment, parent);
    if (!ptr)
        return NULL;

    return new (ptr) JKRAssertHeap(NULL, 0, parent, false);
}

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D13D8.s"
void JKRAssertHeap::do_destroy(void) {
    this->~JKRAssertHeap();
}

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1408.s"
u32 JKRAssertHeap::getHeapType(void) {
    return 0x41535448;  // FOURCC("ASTH")
}

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1414.s"
bool JKRAssertHeap::check(void) {
    return true;
}

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D141C.s"
bool JKRAssertHeap::dump(void) {
    return true;
}

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1424.s"
bool JKRAssertHeap::dump_sort(void) {
    return true;
}

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D142C.s"
u8 JKRAssertHeap::do_changeGroupID(u8) {
    return 0;
}

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1434.s"
u8 JKRAssertHeap::do_getCurrentGroupId(void) {
    return 0;
}

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D143C.s"
void* JKRAssertHeap::do_alloc(u32, int) {
    return NULL;
}

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1444.s"
void JKRAssertHeap::do_free(void*) {}

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1448.s"
void JKRAssertHeap::do_freeAll(void) {}

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D144C.s"
void JKRAssertHeap::do_freeTail(void) {}

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1450.s"
void JKRAssertHeap::do_fillFreeArea(void) {}

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1454.s"
s32 JKRAssertHeap::do_resize(void*, u32) {
    return 0;
}

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D145C.s"
s32 JKRAssertHeap::do_getSize(void*) {
    return 0;
}

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1464.s"
s32 JKRAssertHeap::do_getFreeSize(void) {
    return 0;
}

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D146C.s"
void* JKRAssertHeap::do_getMaxFreeBlock(void) {
    return NULL;
}

// #include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1474.s"
s32 JKRAssertHeap::do_getTotalFreeSize(void) {
    return 0;
}
