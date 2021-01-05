#include "JSystem/JKernel/JKRSolidHeap/JKRSolidHeap.h"
#include "global.h"

JKRSolidHeap* JKRSolidHeap::create(u32 size, JKRHeap* heap, bool useErrorHandler) {
    if (!heap) {
        heap = getRootHeap();
    }

    if (size == 0xffffffff) {
        size = heap->getMaxAllocatableSize(0x10);
    }

    u32 alignedSize = ALIGN_PREV(size, 0x10);
    u32 solidHeapSize = ALIGN_NEXT(sizeof(JKRSolidHeap), 0x10);
    if (alignedSize < solidHeapSize) {
        return NULL;
    }

    JKRSolidHeap* solidHeap = (JKRSolidHeap*)JKRAllocFromHeap(heap, alignedSize, 0x10);
    void* dataPtr = (u8*)solidHeap + solidHeapSize;
    if (!solidHeap)
        return NULL;

    solidHeap =
        new (solidHeap) JKRSolidHeap(dataPtr, alignedSize - solidHeapSize, heap, useErrorHandler);
    return solidHeap;
}

void JKRSolidHeap::do_destroy(void) {
    JKRHeap* parent = getParent();
    if (parent) {
        this->~JKRSolidHeap();
        JKRFreeToHeap(parent, this);
    }
}

JKRSolidHeap::JKRSolidHeap(void* start, u32 size, JKRHeap* parent, bool useErrorHandler)
    : JKRHeap(start, size, parent, useErrorHandler) {
    mFreeSize = mSize;
    mSolidHead = (void*)mStart;
    mSolidTail = (void*)mEnd;
    field_0x78 = NULL;
}

JKRSolidHeap::~JKRSolidHeap(void) {
    dispose();
}

s32 JKRSolidHeap::adjustSize(void) {
    JKRHeap* parent = getParent();
    if (parent) {
        lock();
        s32 start = mStart;
        s32 newSize = (s32)this->mSolidHead - ALIGN_NEXT(start, 0x20);
        s32 newSizeThis = newSize + (start - (s32)this);
        s32 actualSize = parent->resize(this, newSizeThis);
        if (actualSize != -1) {
            mFreeSize = 0;
            mSize = newSize;
            mEnd = mStart + mSize;
            mSolidHead = (void*)mEnd;
            mSolidTail = (void*)mEnd;
        }

        unlock();

        return newSizeThis;
    }

    return -1;
}

asm void* JKRSolidHeap::do_alloc(unsigned long, int) {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0CB0.s"
}

asm void JKRSolidHeap::allocFromHead(unsigned long, int) {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0D58.s"
}

asm void JKRSolidHeap::allocFromTail(unsigned long, int) {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0E20.s"
}

asm void JKRSolidHeap::do_free(void*) {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0EE4.s"
}

asm void JKRSolidHeap::do_freeAll(void) {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0F14.s"
}

asm void JKRSolidHeap::do_freeTail(void) {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0F74.s"
}

asm void JKRSolidHeap::do_fillFreeArea(void) {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D1000.s"
}

asm s32 JKRSolidHeap::do_resize(void*, unsigned long) {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D1004.s"
}

asm s32 JKRSolidHeap::do_getSize(void*) {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D1038.s"
}

asm bool JKRSolidHeap::check(void) {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D106C.s"
}

asm bool JKRSolidHeap::dump(void) {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D10FC.s"
}

asm void JKRSolidHeap::state_register(JKRHeap::TState*, unsigned long) const {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D11FC.s"
}

asm bool JKRSolidHeap::state_compare(JKRHeap::TState const&, JKRHeap::TState const&) const {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D1258.s"
}

asm u32 JKRSolidHeap::getHeapType(void) {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D1288.s"
}

asm s32 JKRSolidHeap::do_getFreeSize(void) {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D1294.s"
}

asm void* JKRSolidHeap::do_getMaxFreeBlock(void) {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D129C.s"
}

asm s32 JKRSolidHeap::do_getTotalFreeSize(void) {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D12A4.s"
}
