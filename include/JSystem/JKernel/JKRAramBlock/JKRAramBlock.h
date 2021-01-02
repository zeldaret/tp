#ifndef __JKRARAMBLOCK_H__
#define __JKRARAMBLOCK_H__

#include "JSystem/JSupport/JSUList/JSUList.h"
#include "dolphin/types.h"

class JKRAramHeap;
class JKRAramBlock {
public:
    JKRAramBlock(u32, u32, u32, u8, bool);
    virtual ~JKRAramBlock();

    JKRAramBlock* allocHead(u32, u8, JKRAramHeap*);
    JKRAramBlock* allocTail(u32, u8, JKRAramHeap*);

    void* getAddress() { return (void*)this->mAddress; }

    u32 getSize() { return this->mSize; }

    u32 getFreeSize() { return this->mFreeSize; }

    bool isTempMemory() { return this->mIsTempMemory; }

    void newGroupID(u8 groupId) { this->mGroupId = groupId; }

public:
    JSULink<JKRAramBlock> mBlockLink;
    u32 mAddress;
    u32 mSize;
    u32 mFreeSize;
    u8 mGroupId;
    u8 mIsTempMemory;
    u8 padding[2];
};

#endif
