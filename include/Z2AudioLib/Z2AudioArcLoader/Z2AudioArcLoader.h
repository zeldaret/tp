#ifndef Z2AUDIOARCLOADER_H_
#define Z2AUDIOARCLOADER_H_

#include "global.h"
#include "JSystem/JAudio2/JAUAudioArcLoader/JAUAudioArcLoader.h"

class Z2AudioArcLoader {
	Z2AudioArcLoader(JAUSection*);
	~Z2AudioArcLoader();

	void readCommandMore(u32);
	void readBFCA(const void *);
	void readBSTN(const void*, u32);
};

#endif