#ifndef JAISOUNDHANDLES_H_
#define JAISOUNDHANDLES_H_

#include "JSystem/JAudio2/JAISound/JAISound.h"

class JAISoundHandles {
public:
    JAISoundHandle mHandles[24];
};

extern "C" {
void getFreeHandle__15JAISoundHandlesFv(void);
void getHandleSoundID__15JAISoundHandlesF10JAISoundID(void);
}

#endif  // JAISOUNDHANDLES_H_
