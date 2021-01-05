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
    mSolidHead = (u8*)mStart;
    mSolidTail = (u8*)mEnd;
    field_0x78 = NULL;
}

JKRSolidHeap::~JKRSolidHeap(void) {
    dispose();
}

#ifdef NONMATCHING
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
#else
asm s32 JKRSolidHeap::adjustSize(void) {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0BF4.s"
}
#endif

void* JKRSolidHeap::do_alloc(u32 size, int alignment) {
    if (alignment != 0) {
        JUT_ASSERT(abs(alignment));
        JUT_ASSERT(isPower2(alignment));
    }

    lock();

    if (size < 4) {
        size = 4;
    }

    void* ptr;
    if (alignment >= 0) {
        ptr = allocFromHead(size, alignment < 4 ? 4 : alignment);
    } else {
        if (-alignment < 4) {
            alignment = 4;
        } else {
            alignment = -alignment;
        }

        ptr = allocFromTail(size, alignment);
    }

    unlock();
    return ptr;
}

#ifdef NONMATCHING
void* JKRSolidHeap::allocFromHead(u32 size, int alignment) {
    void* ptr;
    u32 offset;
    u32 alignedSize;
    u32 alignedStart;
    u32 totalSize;
    alignedSize = ALIGN_NEXT(size, 0x4);
    ptr = NULL;
    alignedStart = (alignment - 1 + (u32)mSolidHead) & ~(alignment - 1);
    offset = alignedStart - (u32)mSolidHead;
    totalSize = alignedSize + offset;
    if (totalSize <= mFreeSize) {
        ptr = (void*)alignedStart;
        mSolidHead += totalSize;
        mFreeSize -= totalSize;
    } else {
        // "allocFromHead: cannot alloc memory (0x%x byte).\n"
        const char* format = lbl_8039CE50;
        JUTWarningConsole_f(format, totalSize);
        if (getErrorFlag() == true) {
            callErrorHandler(this, alignedSize, alignment);
        }
    }

    return ptr;
}
#else
asm void* JKRSolidHeap::allocFromHead(u32, int) {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0D58.s"
}
#endif

asm void* JKRSolidHeap::allocFromTail(u32, int) {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0E20.s"
}

void JKRSolidHeap::do_free(void* ptr) {
    // "free: cannot free memory block (%08x)\n"
    const char* format = lbl_8039CE50 + 0x62;
    JUTWarningConsole_f(format, ptr);
}

void JKRSolidHeap::do_freeAll(void) {
    lock();

    this->JKRHeap::callAllDisposer();
    mFreeSize = mSize;
    mSolidHead = (u8*)mStart;
    mSolidTail = (u8*)mEnd;
    field_0x78 = NULL;

    unlock();
}

void JKRSolidHeap::do_freeTail(void) {
    lock();

    if (mSolidTail != mEnd) {
        dispose(mSolidTail, mEnd);
    }

    this->mFreeSize = ((u32)mEnd - (u32)mSolidTail + mFreeSize);
    this->mSolidTail = mEnd;

    JKRSolidHeap::Unknown* unknown = field_0x78;
    while (unknown) {
        unknown->field_0xc = mEnd;
        unknown = unknown->mNext;
    }

    unlock();
}

void JKRSolidHeap::do_fillFreeArea(void) {
#if DEBUG
    fillMemory(mSolidHead, mEnd - mSolidHead, (uint)DAT_8074a8ba);
#endif
}

s32 JKRSolidHeap::do_resize(void* ptr, u32 newSize) {
    // "resize: cannot resize memory block (%08x: %d)\n"
    const char* format = lbl_8039CE50 + 0x89;
    JUTWarningConsole_f(format, ptr, newSize);
    return -1;
}

s32 JKRSolidHeap::do_getSize(void* ptr) const {
    // "getSize: cannot get memory block size (%08x)\n"
    const char* format = lbl_8039CE50 + 0xB8;
    JUTWarningConsole_f(format, ptr);
    return -1;
}

bool JKRSolidHeap::check(void) {
    lock();

    bool result = true;
    u32 calculatedSize =
        ((u32)mSolidHead - (u32)mStart) + mFreeSize + ((u32)mEnd - (u32)mSolidTail);
    u32 availableSize = mSize;
    if (calculatedSize != availableSize) {
        result = false;
        // "check: bad total memory block size (%08X, %08X)\n"
        const char* format = lbl_8039CE50 + 0xE6;
        JUTWarningConsole_f(format, availableSize, calculatedSize);
    }

    unlock();
    return result;
}

// problem: int -> float conversion creates a temporary value (lbl_80455FA0 = 4.503599627370496E15).
// Because the value is compiler generated the location in the .dol will not be the same as in the
// original .dol file.
#ifdef NONMATCHING
bool JKRSolidHeap::dump(void) {
    bool result = check();

    lock();
    u32 headSize = ((u32)mSolidHead - (u32)mStart);
    u32 tailSize = ((u32)mEnd - (u32)mSolidTail);
    s32 htSize = headSize + tailSize;
    const char* format1 = lbl_8039CE50 + 0x117;  // "head %08x: %08x\n"
    JUTReportConsole_f(format1, mStart, headSize);

    const char* format2 = lbl_8039CE50 + 0x128;  // "tail %08x: %08x\n"
    JUTReportConsole_f(format2, mSolidTail, ((u32)mEnd - (u32)mSolidTail));

    u32 totalSize = mSize;
    float percentage = (float)htSize / (float)totalSize * lbl_80455FA8;
    const char* format3 = lbl_8039CE50 + 0x139;  // "%d / %d bytes (%6.2f%%) used\n"
    JUTReportConsole_f(format3, htSize, totalSize, percentage);
    unlock();

    return result;
}
#else
asm bool JKRSolidHeap::dump(void) {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D10FC.s"
}
#endif

// full match expect using the wrong register
#ifdef NONMATCHING
void JKRSolidHeap::state_register(JKRHeap::TState* p, u32 id) const {
    JUT_ASSERT(p != 0);
    JUT_ASSERT(p->getHeap() == this);

    getState_(p);
    setState_u32ID_(p, id);
    setState_uUsedSize_(p, getUsedSize());
    setState_u32CheckCode_(p, (u32)mSolidHead + (u32)mSolidTail * 3);
}
#else
asm void JKRSolidHeap::state_register(JKRHeap::TState* p, u32 id) const {
    nofralloc
#include "JSystem/JKernel/JKRSolidHeap/asm/func_802D11FC.s"
}
#endif

bool JKRSolidHeap::state_compare(JKRHeap::TState const& r1, JKRHeap::TState const& r2) const {
    JUT_ASSERT(r1.getHeap() == r2.getHeap());

    bool result = true;
    if (r1.getCheckCode() != r2.getCheckCode()) {
        result = false;
    }

    if (r1.getUsedSize() != r2.getUsedSize()) {
        result = false;
    }

    return result;
}

u32 JKRSolidHeap::getHeapType(void) const {
    return 'SLID';
}

s32 JKRSolidHeap::do_getFreeSize(void) const {
    return mFreeSize;
}

void* JKRSolidHeap::do_getMaxFreeBlock(void) const {
    return mSolidHead;
}

s32 JKRSolidHeap::do_getTotalFreeSize(void) const {
    return getFreeSize();
}
