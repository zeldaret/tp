#ifndef JASWAVEARCLOADER_H
#define JASWAVEARCLOADER_H

#include "JSystem/JAudio2/JASHeapCtrl.h"
#include "dol2asm.h"
#include <dolphin/os.h>

class JKRHeap;
class JKRSolidHeap;

/**
 * @ingroup jsystem-jaudio
 * 
 */
struct JASDisposer {
    JASDisposer() {}
    /* 8029A7B8 */ virtual ~JASDisposer() {}
    /* 80290BCC */ virtual void onDispose() {}
};

#define DIR_MAX 64

/**
 * @ingroup jsystem-jaudio
 * 
 */
struct JASWaveArcLoader {
    /* 8029A0A0 */ static JASHeap* getRootHeap();
    /* 8029A0D0 */ static void setCurrentDir(char const*);
    /* 8029A130 */ static char* getCurrentDir();

    static char sCurrentDir[DIR_MAX];
    static JASHeap* sAramHeap;
};

/**
 * @ingroup jsystem-jaudio
 * 
 */
struct JASWaveArc : JASDisposer {
    /* 8029A13C */ JASWaveArc();
    /* 8029A258 */ bool loadSetup(u32);
    /* 8029A2EC */ bool eraseSetup();
    /* 8029A378 */ static void loadToAramCallback(void*);
    /* 8029A404 */ bool sendLoadCmd();
    /* 8029A4C0 */ bool load(JASHeap*);
    /* 8029A580 */ bool loadTail(JASHeap*);
    /* 8029A640 */ bool erase();
    /* 8029A6AC */ void setEntryNum(s32);
    /* 8029A70C */ void setFileName(char const*);

    /* 8029A1B4 */ virtual ~JASWaveArc();
    /* 8029A664 */ virtual void onDispose();
    /* 80298FA0 */ virtual void onLoadDone() {}
    /* 80298FA4 */ virtual void onEraseDone() {}

    s32 getStatus() { return mStatus; }

    struct loadToAramCallbackParams {
        // not official struct name
        /* 0x0 */ JASWaveArc* mWavArc;
        /* 0x4 */ long mEntryNum;
        /* 0x8 */ u32 mBase;
        /* 0xC */ u32 _c;
    };

    /* 0x04 */ JASHeap mHeap;
    /* 0x48 */ u32 _48;
    /* 0x4C */ volatile s32 mStatus;
    /* 0x50 */ int mEntryNum;
    /* 0x54 */ u32 mFileLength;
    /* 0x58 */ u16 _58;
    /* 0x5A */ u16 _5a;
    /* 0x5C */ OSMutex mMutex;
};

#endif /* JASWAVEARCLOADER_H */
