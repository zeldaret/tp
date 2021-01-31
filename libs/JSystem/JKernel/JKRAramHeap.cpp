#include "JSystem/JKernel/JKRAramHeap/JKRAramHeap.h"
#include "global.h"
#include "JSystem/JKernel/JKRAramBlock/JKRAramBlock.h"
extern "C" {
void __dl__FPv(void);
void __dt__11JKRDisposerFv(void);
}

JKRAramHeap::JKRAramHeap(u32 startAddress, u32 size) {
    OSInitMutex(&mMutex);

    mHeap = JKRHeap::findFromRoot(this);
    mSize = ALIGN_PREV(size, 0x20);
    mHeadAddress = ALIGN_NEXT(startAddress, 0x20);
    mTailAddress = mHeadAddress + mSize;
    mGroupId = -1;

    JKRAramBlock* block = new (mHeap, 0) JKRAramBlock(mHeadAddress, 0, mSize, -1, false);
    lbl_8043430C.append(&block->mBlockLink);
}

// close match, regalloc problem in the beginning of the while loop
#if NONMATCHING
JKRAramHeap::~JKRAramHeap() {
    JSUList<JKRAramBlock>* list = &lbl_8043430C;
    JSUListIterator<JKRAramBlock> iterator = list;

    while (iterator != list->getEnd()) {
        JSUListIterator<JKRAramBlock> prev = iterator;
        JKRAramBlock* block = prev.getObject();
        delete block;
    }
}
#else
asm JKRAramHeap::~JKRAramHeap() {
    nofralloc
#include "JSystem/JKernel/JKRAramHeap/asm/func_802D2F14.s"
}
#endif

JKRAramBlock* JKRAramHeap::alloc(u32 size, JKRAramHeap::EAllocMode allocationMode) {
    lock();

    JKRAramBlock* block;
    if (allocationMode == JKRAramHeap::HEAD) {
        block = allocFromHead(size);
    } else {
        block = allocFromTail(size);
    }

    unlock();
    return block;
}

JKRAramBlock* JKRAramHeap::allocFromHead(u32 size) {
    u32 alignedSize = ALIGN_NEXT(size, 0x20);
    u32 bestFreeSize = UINT32_MAX;
    JKRAramBlock* bestBlock = NULL;

    JSUList<JKRAramBlock>* list = &lbl_8043430C;
    for (JSUListIterator<JKRAramBlock> iterator = list; iterator != list->getEnd(); ++iterator) {
        JKRAramBlock* block = iterator.getObject();
        if (block->mFreeSize < alignedSize)
            continue;
        if (bestFreeSize <= block->mFreeSize)
            continue;

        bestFreeSize = block->mFreeSize;
        bestBlock = block;

        if (block->mFreeSize == alignedSize) {
            break;
        }
    }

    if (bestBlock) {
        return bestBlock->allocHead(alignedSize, mGroupId, this);
    }

    return NULL;
}

JKRAramBlock* JKRAramHeap::allocFromTail(u32 size) {
    u32 alignedSize = ALIGN_NEXT(size, 0x20);
    JKRAramBlock* tailBlock = NULL;

    JSUList<JKRAramBlock>* list = &lbl_8043430C;
    JSUListIterator<JKRAramBlock> iterator = list->getLast();
    for (; iterator != list->getEnd(); --iterator) {
        JKRAramBlock* block = iterator.getObject();
        if (block->mFreeSize >= alignedSize) {
            tailBlock = block;
            break;
        }
    }

    if (tailBlock) {
        return tailBlock->allocTail(alignedSize, mGroupId, this);
    }

    return NULL;
}

u32 JKRAramHeap::getFreeSize(void) {
    u32 maxFreeSize = 0;

    lock();

    JSUList<JKRAramBlock>* list = &lbl_8043430C;
    JSUListIterator<JKRAramBlock> iterator = list;
    for (; iterator != list->getEnd(); ++iterator) {
        if (iterator->mFreeSize > maxFreeSize) {
            maxFreeSize = iterator->mFreeSize;
        }
    }

    unlock();
    return maxFreeSize;
}

u32 JKRAramHeap::getTotalFreeSize(void) {
    u32 totalFreeSize = 0;

    lock();

    JSUList<JKRAramBlock>* list = &lbl_8043430C;
    JSUListIterator<JKRAramBlock> iterator = list;
    for (; iterator != list->getEnd(); ++iterator) {
        totalFreeSize += iterator->mFreeSize;
    }

    unlock();
    return totalFreeSize;
}

void JKRAramHeap::dump(void) {
    lock();

    JSUList<JKRAramBlock>* list = &lbl_8043430C;
    JSUListIterator<JKRAramBlock> iterator = list;
    for (; iterator != list->getEnd(); ++iterator) {
        // The debug version calls OSReport
    }

    unlock();
}

#if 0
asm void __sinit_JKRAramHeap_cpp {
    nofralloc
#include "JSystem/JKernel/JKRAramHeap/asm/func_802D326C.s"
}

asm JSUList<12JKRAramBlock>::~JSUList<12JKRAramBlock>(void) {
    nofralloc
#include "JSystem/JKernel/JKRAramHeap/asm/func_802D32B0.s"
}
#endif
