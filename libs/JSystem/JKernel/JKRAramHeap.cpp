#include "JSystem/JKernel/JKRAramHeap/JKRAramHeap.h"
#include "global.h"

#include "JSystem/JKernel/JKRAramBlock/JKRAramBlock.h"

JKRAramHeap::JKRAramHeap(u32 startAddress, u32 size) {
    OSInitMutex(&this->mMutex);

    this->mHeap = JKRHeap::findFromRoot(this);
    this->mSize = ALIGN_PREV(size, 0x20);
    this->mHeadAddress = ALIGN_NEXT(startAddress, 0x20);
    this->mTailAddress = this->mHeadAddress + this->mSize;
    this->mGroupId = -1;

    JKRAramBlock* block =
        new (this->mHeap, 0) JKRAramBlock(this->mHeadAddress, 0, this->mSize, -1, false);
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
    this->lock();

    JKRAramBlock* block;
    if (allocationMode == JKRAramHeap::HEAD) {
        block = this->allocFromHead(size);
    } else {
        block = this->allocFromTail(size);
    }

    this->unlock();
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
        return bestBlock->allocHead(alignedSize, this->mGroupId, this);
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
        return tailBlock->allocTail(alignedSize, this->mGroupId, this);
    }

    return NULL;
}

u32 JKRAramHeap::getFreeSize(void) {
    u32 maxFreeSize = 0;

    this->lock();

    JSUList<JKRAramBlock>* list = &lbl_8043430C;
    JSUListIterator<JKRAramBlock> iterator = list;
    for (; iterator != list->getEnd(); ++iterator) {
        if (iterator->mFreeSize > maxFreeSize) {
            maxFreeSize = iterator->mFreeSize;
        }
    }

    this->unlock();
    return maxFreeSize;
}

u32 JKRAramHeap::getTotalFreeSize(void) {
    u32 totalFreeSize = 0;

    this->lock();

    JSUList<JKRAramBlock>* list = &lbl_8043430C;
    JSUListIterator<JKRAramBlock> iterator = list;
    for (; iterator != list->getEnd(); ++iterator) {
        totalFreeSize += iterator->mFreeSize;
    }

    this->unlock();
    return totalFreeSize;
}

void JKRAramHeap::dump(void) {
    this->lock();

    JSUList<JKRAramBlock>* list = &lbl_8043430C;
    JSUListIterator<JKRAramBlock> iterator = list;
    for (; iterator != list->getEnd(); ++iterator) {
        // The debug version calls OSReport
    }

    this->unlock();
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
