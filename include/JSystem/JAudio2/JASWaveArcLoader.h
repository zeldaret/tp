#ifndef JASWAVEARCLOADER_H
#define JASWAVEARCLOADER_H

#include "dol2asm.h"
#include "dolphin/types.h"
#include "global.h"

#include "MSL_C/MSL_Common/Src/string.h"
#include "dolphin/os/OSMutex.h"

#include "JSystem/JAudio2/JASDvdThread.h"
#include "JSystem/JAudio2/JASHeapCtrl.h"
#include "JSystem/JKernel/JKRDvdAramRipper.h"
#include "JSystem/JKernel/JKRSolidHeap.h"

struct JASDisposer {
    JASDisposer(){};
    /* 8029A7B8 */ virtual ~JASDisposer(){};
    /* 80290BCC */ virtual void onDispose();
};

struct JASHeap : JSUTree<JASHeap> {
    /* 80290140 */ JASHeap(JASDisposer*);
    /* 802901AC */ void initRootHeap(void*, u32);
    /* 8029021C */ bool alloc(JASHeap*, u32);
    /* 802903F4 */ bool allocTail(JASHeap*, u32);
    /* 802904E4 */ void free();
    /* 80290608 */ void insertChild(JASHeap*, JASHeap*, void*, u32, bool);
    /* 802906F0 */ void getTailHeap();
    /* 8029077C */ void getTailOffset();
    /* 802907E0 */ void getCurOffset();
    /* 80290B54 */ ~JASHeap(){};
    void* getBase() { return mBase; }

    /*0x1c*/ OSMutex mMutex;
    /*0x38*/ JASDisposer* mDisposer;
    /*0x3c*/ void* mBase;
    /*0x40*/ u32 _3c;
    /*0x44*/ u32 _40;
};

struct JASKernel {
    /* 802909B8 */ void setupRootHeap(JKRSolidHeap*, u32);
    /* 80290AC0 */ static JKRHeap* getSystemHeap();
    /* 80290AC8 */ u32 getCommandHeap();
    /* 80290AD0 */ void setupAramHeap(u32, u32);
    /* 80290B08 */ static JASHeap* getAramHeap();

    static u8 audioAramHeap[68];
    static u8 sAramBase[4];
    static JKRHeap* sSystemHeap;
    static u8 sCommandHeap[4];
};

#define DIR_MAX 64
struct JASWaveArcLoader {
    /* 8029A0A0 */ static JASHeap* getRootHeap();
    /* 8029A0D0 */ static void setCurrentDir(char const*);
    /* 8029A130 */ static char* getCurrentDir();

    static char sCurrentDir[DIR_MAX];
    static JASHeap* sAramHeap;
};

struct JASWaveArc : JASDisposer {
    /* 8029A13C */ JASWaveArc();
    /* 8029A258 */ bool loadSetup(u32);
    /* 8029A2EC */ bool eraseSetup();
    /* 8029A378 */ static void loadToAramCallback(void*);
    /* 8029A404 */ bool sendLoadCmd();
    /* 8029A4C0 */ bool load(JASHeap*);
    /* 8029A580 */ bool loadTail(JASHeap*);
    /* 8029A640 */ void erase();
    /* 8029A6AC */ void setEntryNum(s32);
    /* 8029A70C */ void setFileName(char const*);

    /* 8029A1B4 */ virtual ~JASWaveArc();
    /* 8029A664 */ virtual void onDispose();
    /* 80298FA0 */ virtual void onLoadDone();
    /* 80298FA4 */ virtual void onEraseDone();

    struct loadToAramCallbackParams {
        // not official struct name
        JASWaveArc* mWavArc;
        long mEntryNum;
        u32 mBase;
        u32 _c;
    };

    /*0x04*/ JASHeap mHeap;
    /*0x48*/ u32 _48;
    /*0x4c*/ volatile s32 _4c;
    /*0x50*/ int mEntryNum;
    /*0x54*/ u32 mFileLength;
    /*0x58*/ u16 _58;
    /*0x5a*/ u16 _5a;
    /*0x5c*/ OSMutex mMutex;
};

struct JASMutexLock {
    JASMutexLock(OSMutex* mutex) {
        mMutex = mutex;
        OSLockMutex(mMutex);
    }
    ~JASMutexLock() { OSUnlockMutex(mMutex); }
    OSMutex* mMutex;
};

#endif /* JASWAVEARCLOADER_H */
