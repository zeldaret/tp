#ifndef Z2AUDIOARCLOADER_H_
#define Z2AUDIOARCLOADER_H_

#include "JSystem/JAudio2/JAUAudioArcLoader/JAUAudioArcLoader.h"
#include "global.h"

class Z2AudioArcLoader {
    Z2AudioArcLoader(JAUSection*);
    ~Z2AudioArcLoader();

    void readCommandMore(u32);
    void readBFCA(const void*);
    void readBSTN(const void*, u32);
};

#endif