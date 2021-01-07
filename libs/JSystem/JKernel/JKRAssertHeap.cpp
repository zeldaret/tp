#include "JSystem/JKernel/JKRAssertHeap/JKRAssertHeap.h"
#include "global.h"

JKRAssertHeap::JKRAssertHeap(void* data, unsigned long size, JKRHeap* parent, bool errorFlag)
    : JKRHeap(data, size, parent, errorFlag) {}

JKRAssertHeap::~JKRAssertHeap() {
    this->dispose();
}

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

void JKRAssertHeap::do_destroy(void) {
    this->~JKRAssertHeap();
}

u32 JKRAssertHeap::getHeapType(void) const {
    return 'ASTH';
}

bool JKRAssertHeap::check(void) {
    return true;
}

bool JKRAssertHeap::dump(void) {
    return true;
}

bool JKRAssertHeap::dump_sort(void) {
    return true;
}

u8 JKRAssertHeap::do_changeGroupID(u8) {
    return 0;
}

u8 JKRAssertHeap::do_getCurrentGroupId(void) const {
    return 0;
}

void* JKRAssertHeap::do_alloc(u32, int) {
    return NULL;
}

void JKRAssertHeap::do_free(void*) {}

void JKRAssertHeap::do_freeAll(void) {}

void JKRAssertHeap::do_freeTail(void) {}

void JKRAssertHeap::do_fillFreeArea(void) {}

s32 JKRAssertHeap::do_resize(void*, u32) {
    return 0;
}

s32 JKRAssertHeap::do_getSize(void*) const {
    return 0;
}

s32 JKRAssertHeap::do_getFreeSize(void) const {
    return 0;
}

void* JKRAssertHeap::do_getMaxFreeBlock(void) const {
    return NULL;
}

s32 JKRAssertHeap::do_getTotalFreeSize(void) const {
    return 0;
}
