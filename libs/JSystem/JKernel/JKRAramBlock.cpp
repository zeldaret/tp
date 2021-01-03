#include "JSystem/JKernel/JKRAramBlock/JKRAramBlock.h"
#include "global.h"

#include "JSystem/JKernel/JKRAramHeap/JKRAramHeap.h"

JKRAramBlock::JKRAramBlock(u32 address, u32 size, u32 freeSize, u8 groupId, bool isTempMemory)
    : mBlockLink(this) {
    this->mAddress = address;
    this->mSize = size;
    this->mFreeSize = freeSize;
    this->mGroupId = groupId;
    this->mIsTempMemory = isTempMemory;
}

JKRAramBlock::~JKRAramBlock() {
    JSUList<JKRAramBlock>* list = this->mBlockLink.getSupervisor();
    JSULink<JKRAramBlock>* prev = this->mBlockLink.getPrev();
    if (prev) {
        JKRAramBlock* block = prev->getObject();
        block->mFreeSize = this->mSize + this->mFreeSize + block->mFreeSize;
        list->remove(&this->mBlockLink);
    } else {
        this->mFreeSize = this->mFreeSize + this->mSize;
        this->mSize = 0;
    }
}

JKRAramBlock* JKRAramBlock::allocHead(u32 size, u8 groupId, JKRAramHeap* aramHeap) {
    u32 address = this->mAddress;
    u32 usedSize = this->mSize;
    u32 nextAddress = address + usedSize;
    u32 freeSize = this->mFreeSize;
    u32 nextFreeSize = freeSize - size;

    JKRAramBlock* block = new (aramHeap->getMgrHeap(), 0)
        JKRAramBlock(nextAddress, size, nextFreeSize, groupId, false);

    this->mFreeSize = 0;
    JSULink<JKRAramBlock>* next = this->mBlockLink.getNext();
    JSUList<JKRAramBlock>* list = this->mBlockLink.getSupervisor();
    list->insert(next, &block->mBlockLink);
    return block;
}

JKRAramBlock* JKRAramBlock::allocTail(u32 size, u8 groupId, JKRAramHeap* aramHeap) {
    u32 freeSize = this->mFreeSize;
    u32 address = this->mAddress;
    u32 usedSize = this->mSize;
    u32 endAddress = address + usedSize + freeSize;
    u32 tailAddress = endAddress - size;

    JKRAramBlock* block =
        new (aramHeap->getMgrHeap(), 0) JKRAramBlock(tailAddress, size, 0, groupId, true);

    this->mFreeSize -= size;
    JSULink<JKRAramBlock>* next = this->mBlockLink.getNext();
    JSUList<JKRAramBlock>* list = this->mBlockLink.getSupervisor();
    list->insert(next, &block->mBlockLink);
    return block;
}
