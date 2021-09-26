#ifndef JUTXFB_H
#define JUTXFB_H

#include "JSystem/JKernel/JKRHeap.h"
#include "JSystem/JUtility/JUTVideo.h"
#include "dolphin/types.h"

class JUTXfb {
public:
    enum EXfbNumber {  // TODO: placeholder
        UNK_0 = 0,
        UNK_1 = 1,
        UNK_2 = 2,
        UNK_3 = 3,
    };

    /* 802E5214 */ void clearIndex();
    /* 802E5228 */ void common_init(int);
    /* 802E5260 */ JUTXfb(_GXRenderModeObj const*, JKRHeap*, JUTXfb::EXfbNumber);
    /* 802E5308 */ ~JUTXfb();
    /* 802E5378 */ void delXfb(int);
    /* 802E53B8 */ static JUTXfb* createManager(JKRHeap*, JUTXfb::EXfbNumber);
    /* 802E5424 */ static void destroyManager();
    /* 802E5454 */ void initiate(u16, u16, JKRHeap*, JUTXfb::EXfbNumber);

    s32 getBufferNum() const { return mBufferNum; }
    s16 getDrawnXfbIndex() const { return mDrawnXfbIndex; }
    s16 getDrawningXfbIndex() const { return mDrawingXfbIndex; }
    s16 getDisplayingXfbIndex() const { return mDisplayingXfbIndex; }
    s32 getSDrawingFlag() const { return mSDrawingFlag; }

    void* getDisplayingXfb() const {
        if (mDisplayingXfbIndex >= 0)
            return mBuffer[mDisplayingXfbIndex];
        return NULL;
    }

    void setDisplayingXfbIndex(s16 index) {
        mDisplayingXfbIndex = index;
    }

    void setSDrawingFlag(s32 flag) {
        mSDrawingFlag = flag;
    }

    static JUTXfb* getManager() { return sManager; }

private:
    static JUTXfb* sManager;

private:
    /* 0x00 */ void* mBuffer[3];
    /* 0x0C */ bool mXfbAllocated[3];
    /* 0x10 */ s32 mBufferNum;
    /* 0x14 */ s16 mDrawingXfbIndex;
    /* 0x16 */ s16 mDrawnXfbIndex;
    /* 0x18 */ s16 mDisplayingXfbIndex;
    /* 0x1C */ s32 mSDrawingFlag;
};

#endif /* JUTXFB_H */
