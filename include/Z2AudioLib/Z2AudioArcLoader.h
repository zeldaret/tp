#ifndef Z2AUDIOARCLOADER_H
#define Z2AUDIOARCLOADER_H

#include "dolphin/types.h"
#include "JSystem/JAudio2/JAUAudioArcLoader.h"

class Z2AudioArcLoader {
    Z2AudioArcLoader(JAUSection*);
    ~Z2AudioArcLoader();

    void readCommandMore(u32);
    void readBFCA(const void*);
    void readBSTN(const void*, u32);
};

#endif /* Z2AUDIOARCLOADER_H */
