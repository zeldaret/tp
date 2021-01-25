#ifndef Z2AUDIOARCLOADER_H_
#define Z2AUDIOARCLOADER_H_

#include "JSystem/JAudio2/JAUAudioArcInterpreter.h"
#include "JSystem/JAudio2/JAUAudioArcLoader/JAUAudioArcLoader.h"
#include "dolphin/types.h"

class Z2AudioArcLoader {
    Z2AudioArcLoader(JAUSection*);
    ~Z2AudioArcLoader();

    void readCommandMore(u32);
    void readBFCA(const void*);
    void readBSTN(const void*, u32);
};

extern "C" {
void func_802A9B54(void);
void func_802A9B58(void);

void __ct__16Z2AudioArcLoaderFP10JAUSection(void);
void readBFCA__16Z2AudioArcLoaderFPCv(void);
void readCommandMore__16Z2AudioArcLoaderFUl(void);
}

#endif