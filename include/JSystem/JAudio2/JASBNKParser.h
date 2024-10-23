#ifndef JASBNKPARSER_H
#define JASBNKPARSER_H

#include "JSystem/JAudio2/JASOscillator.h"

class JASBank;
class JASBasicBank;
class JKRHeap;

namespace JASBNKParser {
    struct TFileHeader {
        /* 0x0 */ u8 _00[4];
        /* 0x4 */ u32 mSize;
        /* 0x8 */ u8 _08[4];
        /* 0xC */ u32 mVersion;
    };

    namespace Ver1 {
        struct TOsc {
            /* 0x00 */ u8 _00[4];
            /* 0x04 */ u8 mTarget;
            /* 0x08 */ f32 _08;
            /* 0x0C */ u32 mTableOffset;
            /* 0x10 */ u32 _10;
            /* 0x14 */ f32 mScale;
            /* 0x18 */ f32 _18;
        };

        struct TPercData {
            /* 0x00 */ f32 mVolume;
            /* 0x04 */ f32 mPitch;
            /* 0x08 */ u8 mPan;
            /* 0x0A */ u16 mRelease;
            /* 0x0C */ u32 field_0xc;
        };

        struct TChunk {
            /* 0x0 */ u32 mID;
            /* 0x4 */ u32 mSize;
        };

        struct TEnvtChunk : TChunk {
            /* 0x8 */ u8 mData[0];
        };

        struct TOscChunk : TChunk {
            /* 0x8 */ u32 mCount;
            /* 0xC */ TOsc mOsc[0];
        };

        struct TListChunk : TChunk {
            /* 0x8 */ u32 mCount;
            /* 0xC */ u32 mOffsets[0];
        };

        /* 80299600 */ static TChunk* findChunk(void const*, u32);
        /* 8029963C */ static JASBasicBank* createBasicBank(void const*, JKRHeap*);
    };

    namespace Ver0 {
        struct THeader {};

        struct TOsc {};

        /* 80299A3C */ static JASBasicBank* createBasicBank(void const*, JKRHeap*);
        /* 80299E68 */ static void findOscPtr(JASBasicBank*, THeader const*, TOsc const*);
        /* 80299F8C */ static void getOscTableEndPtr(JASOscillator::Point const*);
    };

    /* 80299538 */ static JASBank* createBank(void const*, JKRHeap*);
    /* 80299558 */ static JASBasicBank* createBasicBank(void const*, JKRHeap*);

    inline static u32 getBankNumber(const void* param_0) { return ((u32*)param_0)[2]; }

    extern u32 sUsedHeapSize;
};


#endif /* JASBNKPARSER_H */
