#include "JSystem/JKernel/JKRAramBlock.h"
#include "JSystem/JKernel/JKRAramHeap.h"
#include "JSystem/JKernel/JKRHeap.h"

/* 802D3304-802D3378 2CDC44 0074+00 2/2 1/1 0/0 .text            __ct__12JKRAramBlockFUlUlUlUcb */
JKRAramBlock::JKRAramBlock(u32 address, u32 size, u32 freeSize, u8 groupId, bool isTempMemory)
    : mBlockLink(this) {
    mAddress = address;
    mSize = size;
    mFreeSize = freeSize;
    mGroupId = groupId;
    mIsTempMemory = isTempMemory;
}

/* 802D3378-802D3434 2CDCB8 00BC+00 1/0 0/0 0/0 .text            __dt__12JKRAramBlockFv */
JKRAramBlock::~JKRAramBlock() {
    JSUList<JKRAramBlock>* list = mBlockLink.getSupervisor();
    JSULink<JKRAramBlock>* prev = mBlockLink.getPrev();

    if (prev) {
        JKRAramBlock* block = prev->getObject();
        block->mFreeSize = mSize + mFreeSize + block->mFreeSize;
        list->remove(&mBlockLink);
    } else {
        mFreeSize = mFreeSize + mSize;
        mSize = 0;
    }
}

/* 802D3434-802D34D0 2CDD74 009C+00 0/0 1/1 0/0 .text allocHead__12JKRAramBlockFUlUcP11JKRAramHeap
 */
JKRAramBlock* JKRAramBlock::allocHead(u32 size, u8 groupId, JKRAramHeap* aramHeap) {
    u32 address = mAddress;
    u32 usedSize = mSize;
    u32 nextAddress = address + usedSize;
    u32 freeSize = mFreeSize;
    u32 nextFreeSize = freeSize - size;

    JKRAramBlock* block = new (aramHeap->getMgrHeap(), 0)
        JKRAramBlock(nextAddress, size, nextFreeSize, groupId, false);

    mFreeSize = 0;
    JSULink<JKRAramBlock>* next = mBlockLink.getNext();
    JSUList<JKRAramBlock>* list = mBlockLink.getSupervisor();
    list->insert(next, &block->mBlockLink);
    return block;
}

/* 802D34D0-802D3574 2CDE10 00A4+00 0/0 1/1 0/0 .text allocTail__12JKRAramBlockFUlUcP11JKRAramHeap
 */
JKRAramBlock* JKRAramBlock::allocTail(u32 size, u8 groupId, JKRAramHeap* aramHeap) {
    u32 freeSize = mFreeSize;
    u32 address = mAddress;
    u32 usedSize = mSize;
    u32 endAddress = address + usedSize + freeSize;
    u32 tailAddress = endAddress - size;

    JKRAramBlock* block =
        new (aramHeap->getMgrHeap(), 0) JKRAramBlock(tailAddress, size, 0, groupId, true);

    mFreeSize -= size;
    JSULink<JKRAramBlock>* next = mBlockLink.getNext();
    JSUList<JKRAramBlock>* list = mBlockLink.getSupervisor();
    list->insert(next, &block->mBlockLink);
    return block;
}
