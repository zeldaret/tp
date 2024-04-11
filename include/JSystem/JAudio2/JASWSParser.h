#ifndef JASWSPARSER_H
#define JASWSPARSER_H

#include "dolphin/types.h"

class JKRHeap;
class JASWaveBank;
class JASBasicWaveBank;
class JASSimpleWaveBank;

/**
 * @ingroup jsystem-jaudio
 * 
 */
class JASWSParser {
public:
    template<class T>
    class TOffset {
    public:
        T* ptr(void* param_0) {
            return JSUConvertOffsetToPtr<T>(param_0, mOffset);
        }
        void* mOffset;
    };

    /** @fabricated */
    struct THeader {
        u8 _00[0x10];            // _00 - unknown/padding
        u32 mArchiveBankOffset;  // _10
        u32 mCtrlGroupOffset;    // _14
    };
    struct TCtrlWave {
        u32 _00;  // _00
    };
    struct TWave {
        u8 _00;       // _00
        u8 _01;       // _01
        u8 _02;       // _02
        f32 _04;      // _04
        u32 mOffset;  // _08
        u32 _0C;      // _0C
        u32 _10;      // _10
        u32 _14;      // _14
        u32 _18;      // _18
        u32 _1C;      // _1C
        s16 _20;      // _20
        s16 _22;      // _22
    };
    struct TWaveArchive {
        char mFileName[0x74];  // _00 - unknown length
        u32 mWaveOffsets[1];   // _74 - dynamic length
    };
    struct TWaveArchiveBank {
        u8 _00[8];               // _00 - unknown/padding
        u32 mArchiveOffsets[1];  // _08 - dynamic length
    };
    struct TCtrl {
        u8 _00[4];                // _00 - unknown/padding
        u32 mWaveCount;           // _04
        u32 mCtrlWaveOffsets[1];  // _08 - dynamic length
    };
    struct TCtrlScene {
        u8 _00[12];       // _00 - unknown/padding
        u32 mCtrlOffset;  // _0C
    };
    struct TCtrlGroup {
        u8 _00[8];                 // _00 - unknown/padding
        u32 mCtrlGroupCount;       // _08
        u32 mCtrlSceneOffsets[1];  // _0C - dynamic length
    };

    /* 80298FB0 */ static u32 getGroupCount(void const*);
    /* 80298FD8 */ static JASWaveBank* createWaveBank(void const*, JKRHeap*);
    /* 80299034 */ static JASBasicWaveBank* createBasicWaveBank(void const*, JKRHeap*);
    /* 80299264 */ static JASSimpleWaveBank* createSimpleWaveBank(void const*, JKRHeap*);

    static u8 sUsedHeapSize[4 + 4 /* padding */];
};

#endif /* JASWSPARSER_H */
