#ifndef JASBNKPARSER_H
#define JASBNKPARSER_H

#include "JSystem/JAudio2/JASOscillator.h"

class JASBank;
class JASBasicBank;
class JKRHeap;

namespace JASBNKParser {
    namespace Ver1 {
        /* 80299600 */ void findChunk(void const*, u32);
        /* 8029963C */ void createBasicBank(void const*, JKRHeap*);
    };

    namespace Ver0 {
        struct THeader {};

        struct TOsc {};

        /* 80299A3C */ void createBasicBank(void const*, JKRHeap*);
        /* 80299E68 */ void findOscPtr(JASBasicBank*, JASBNKParser::Ver0::THeader const*,
                                       JASBNKParser::Ver0::TOsc const*);
        /* 80299F8C */ void getOscTableEndPtr(JASOscillator::Point const*);
    };

    /* 80299538 */ JASBank* createBank(void const*, JKRHeap*);
    /* 80299558 */ JASBasicBank* createBasicBank(void const*, JKRHeap*);

    inline u32 getBankNumber(const void* param_0) { return ((u32*)param_0)[2]; }

    extern u8 sUsedHeapSize[4];
};


#endif /* JASBNKPARSER_H */
