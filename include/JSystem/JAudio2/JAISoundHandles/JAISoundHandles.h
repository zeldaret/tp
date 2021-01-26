#ifndef JAISOUNDHANDLES_H_
#define JAISOUNDHANDLES_H_

#include "JSystem/JAudio2/JAISound/JAISound.h"

class JAISoundHandles {
public:
    JAISoundHandle mHandles[24];
};

extern "C" {
void JAISoundHandles_NS_getFreeHandle(void);
void JAISoundHandles_NS_getHandleSoundID(void);
}

#endif  // JAISOUNDHANDLES_H_
