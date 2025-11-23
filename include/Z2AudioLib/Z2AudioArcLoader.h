#ifndef Z2AUDIOARCLOADER_H
#define Z2AUDIOARCLOADER_H

#include "JSystem/JAudio2/JAUAudioArcLoader.h"

class Z2AudioArcLoader : public JAUAudioArcLoader {
public:
    Z2AudioArcLoader(JAUSection*);
    virtual ~Z2AudioArcLoader() {}

    virtual bool readCommandMore(u32 command);
    void readBFCA(const void* addr);
    virtual void readBSTN(const void* addr, u32);
};

#endif /* Z2AUDIOARCLOADER_H */
