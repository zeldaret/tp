#ifndef JKRARAM_H
#define JKRARAM_H

#include "dolphin/types.h"

#include "JSystem/JKernel/JKRAramHeap.h"
#include "JSystem/JKernel/JKRDvdRipper.h"
#include "JSystem/JKernel/JKRThread.h"

class JKRHeap;
class JKRAramBlock;
class JKRAram : public JKRThread {
private:
    JKRAram(u32, u32, long);
    virtual ~JKRAram();

    /* vt[03] */ void* run(void); /* override */

public:
    u32 getAudioMemory() const { return mAudioMemoryPtr; }
    u32 getAudioMemSize() const { return mAudioMemorySize; }
    u32 getGraphMemory() const { return mGraphMemoryPtr; }
    u32 getGraphMemSize() const { return mGraphMemorySize; }

private:
    /* 0x00 */  // vtable
    /* 0x04 */  // JKRThread
    /* 0x7C */ u32 mAudioMemoryPtr;
    /* 0x80 */ u32 mAudioMemorySize;
    /* 0x84 */ u32 mGraphMemoryPtr;
    /* 0x88 */ u32 mGraphMemorySize;
    /* 0x8C */ u32 mAramMemoryPtr;
    /* 0x90 */ u32 mAramMemorySize;
    /* 0x94 */ JKRAramHeap* mAramHeap;
    /* 0x98 */ u32 mStackArray[3];

public:
    static JKRAram* create(u32, u32, long, long, long);
    static void checkOkAddress(u8*, u32, JKRAramBlock*, u32);
    static void changeGroupIdIfNeed(u8*, int);
    static void mainRamToAram(u8*, u32, u32, JKRExpandSwitch, u32, JKRHeap*, int, u32*);
    static void aramToMainRam(u32, u8*, u32, JKRExpandSwitch, u32, JKRHeap*, int, u32*);
    static void dump(void);

    static JKRAram* getManager() { return sAramObject; }
    static JKRAramHeap* getAramHeap() { return getManager()->mAramHeap; }
    static JSUList<JKRAMCommand>& getCommandList() { return sAramCommandList; }

    static u8 decideAramGroupId(int groupId) {
        JKRAramHeap* heap;
        u8 finalGroupId;

        if (groupId < 0) {
            return getAramHeap()->getCurrentGroupID();
        }

        return (u8)groupId;
    }

    static u32 getSZSBufferSize() { return sSZSBufferSize; }
    static void setSZSBufferSize(u32 size) { sSZSBufferSize = size; }

    static OSMessageQueue sMessageQueue;

private:
    static JKRAram* sAramObject;
    static u32 sSZSBufferSize;
    static OSMessage sMessageBuffer[4];
    static JSUList<JKRAMCommand> sAramCommandList;
};

// void JKRDecompressFromAramToMainRam(u32, void*, u32, u32, u32, u32*);

#endif /* JKRARAM_H */
