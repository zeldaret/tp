#ifndef Z2AUDIOARCLOADER_H
#define Z2AUDIOARCLOADER_H

#include "JSystem/JAudio2/JAUAudioArcLoader.h"

class Z2AudioArcLoader : public JAUAudioArcLoader {
public:
    Z2AudioArcLoader(JAUSection*);
    virtual ~Z2AudioArcLoader();

    virtual bool readCommandMore(u32);
    void readBFCA(const void*);
    virtual void readBSTN(const void*, u32);
};

#endif /* Z2AUDIOARCLOADER_H */
