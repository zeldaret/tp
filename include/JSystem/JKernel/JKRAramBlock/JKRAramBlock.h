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

    void* getAddress() const { return (void*)mAddress; }

    u32 getSize() const { return mSize; }

    u32 getFreeSize() const { return mFreeSize; }

    bool isTempMemory() const { return mIsTempMemory; }

    void newGroupID(u8 groupId) { mGroupId = groupId; }

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
