#include "JSystem/JKernel/JKRAramHeap.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "global.h"

/* 8043430C-80434318 06102C 000C+00 8/8 0/0 0/0 .bss             sAramList__11JKRAramHeap */
JSUList<JKRAramBlock> JKRAramHeap::sAramList;

/* 802D2E44-802D2F14 2CD784 00D0+00 0/0 1/1 0/0 .text            __ct__11JKRAramHeapFUlUl */
JKRAramHeap::JKRAramHeap(u32 startAddress, u32 size) {
    OSInitMutex(&mMutex);

    mHeap = JKRHeap::findFromRoot(this);
    mSize = ALIGN_PREV(size, 0x20);
    mHeadAddress = ALIGN_NEXT(startAddress, 0x20);
    mTailAddress = mHeadAddress + mSize;
    mGroupId = -1;

    JKRAramBlock* block = new (mHeap, 0) JKRAramBlock(mHeadAddress, 0, mSize, -1, false);
    sAramList.append(&block->mBlockLink);
}

/* 802D2F14-802D2FBC 2CD854 00A8+00 1/0 0/0 0/0 .text            __dt__11JKRAramHeapFv */
JKRAramHeap::~JKRAramHeap() {
    JSUListIterator<JKRAramBlock> iterator(sAramList.getFirst());
    while (iterator != sAramList.getEnd())
    {
        delete (iterator++).getObject();
    }
}

/* 802D2FBC-802D3034 2CD8FC 0078+00 0/0 5/5 0/0 .text
 * alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode           */
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

/* 802D3034-802D30BC 2CD974 0088+00 1/1 0/0 0/0 .text            allocFromHead__11JKRAramHeapFUl */
JKRAramBlock* JKRAramHeap::allocFromHead(u32 size) {
    u32 alignedSize = ALIGN_NEXT(size, 0x20);
    u32 bestFreeSize = UINT32_MAX;
    JKRAramBlock* bestBlock = NULL;

    JSUList<JKRAramBlock>* list = &sAramList;
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

/* 802D30BC-802D3134 2CD9FC 0078+00 1/1 0/0 0/0 .text            allocFromTail__11JKRAramHeapFUl */
JKRAramBlock* JKRAramHeap::allocFromTail(u32 size) {
    u32 alignedSize = ALIGN_NEXT(size, 0x20);
    JKRAramBlock* tailBlock = NULL;

    JSUList<JKRAramBlock>* list = &sAramList;
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

/* 802D3134-802D31AC 2CDA74 0078+00 0/0 1/1 0/0 .text            getFreeSize__11JKRAramHeapFv */
u32 JKRAramHeap::getFreeSize(void) {
    u32 maxFreeSize = 0;

    lock();

    JSUList<JKRAramBlock>* list = &sAramList;
    JSUListIterator<JKRAramBlock> iterator = list;
    for (; iterator != list->getEnd(); ++iterator) {
        if (iterator->mFreeSize > maxFreeSize) {
            maxFreeSize = iterator->mFreeSize;
        }
    }

    unlock();
    return maxFreeSize;
}

/* 802D31AC-802D3218 2CDAEC 006C+00 0/0 2/2 0/0 .text            getTotalFreeSize__11JKRAramHeapFv
 */
u32 JKRAramHeap::getTotalFreeSize(void) {
    u32 totalFreeSize = 0;

    lock();

    JSUList<JKRAramBlock>* list = &sAramList;
    JSUListIterator<JKRAramBlock> iterator = list;
    for (; iterator != list->getEnd(); ++iterator) {
        totalFreeSize += iterator->mFreeSize;
    }

    unlock();
    return totalFreeSize;
}

/* 802D3218-802D326C 2CDB58 0054+00 0/0 2/2 0/0 .text            dump__11JKRAramHeapFv */
void JKRAramHeap::dump(void) {
    lock();

    JSUList<JKRAramBlock>* list = &sAramList;
    JSUListIterator<JKRAramBlock> iterator = list;
    for (; iterator != list->getEnd(); ++iterator) {}

    unlock();
}
