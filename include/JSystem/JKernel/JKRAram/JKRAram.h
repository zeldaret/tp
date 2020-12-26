#ifndef __JKRARAM_H__
#define __JKRARAM_H__

#include "JSystem/JKernel/JKRThread/JKRThread.h"
#include "dolphin/types.h"

// JKRExpandSwitch
#include "JSystem/JKernel/JKRDvdRipper/JKRDvdRipper.h"
#include "global.h"

#include "JSystem/JKernel/JKRAramHeap/JKRAramHeap.h"

class JKRHeap;
class JKRAramBlock;
class JKRAram : public JKRThread {
private:
    JKRAram(u32, u32, long);
    virtual ~JKRAram();

    /* vt[03] */ void* run(void); /* override */

public:
    void* getAudioMemory() { return this->mAudioMemoryPtr; }
    u32 getAudioMemSize() { return this->mAudioMemorySize; }

private:
    void* mAudioMemoryPtr;
    u32 mAudioMemorySize;
    void* mGraphMemoryPtr;
    u32 mGraphMemorySize;
    void* mAramMemoryPtr;
    u32 mAramMemorySize;
    JKRAramHeap* mAramHeap;
    u32 field_0x9c;
    u32 field_0xa0;

public:
    static void create(u32, u32, long, long, long);
    static void checkOkAddress(u8*, u32, JKRAramBlock*, u32);
    static void changeGroupIdIfNeed(u8*, int);
    static void mainRamToAram(u8*, u32, u32, JKRExpandSwitch, u32, JKRHeap*, int, u32*);
    static void aramToMainRam(u32, u8*, u32, JKRExpandSwitch, u32, JKRHeap*, int, u32*);

    static JKRAram* getManager() { return lbl_804513C8; }

    static JKRAramHeap* getAramHeap() { return getManager()->mAramHeap; }

    static u8 decideAramGroupId(int groupId) {
        JKRAramHeap* heap;
        u8 finalGroupId;

        if (groupId < 0) {
            return getAramHeap()->getCurrentGroupID();
        }

        return (u8)groupId;
    }

    static u32 getSZSBufferSize() { return lbl_804508B8; }

    void setSZSBufferSize(u32 size) { lbl_804508B8 = size; }
};

void JKRDecompressFromAramToMainRam(u32, void*, u32, u32, u32, u32*);
static void decompSZS_subroutine(u8*, u8*);
static void firstSrcData(void);
static void nextSrcData(u8*);

#endif
