#ifndef CAPTURESCREEN_H
#define CAPTURESCREEN_H

#include "JSystem/JFramework/JFWDisplay.h"

class CaptureScreen {
public:
    CaptureScreen(const JFWDisplay*);

    static int getAlignedWidthBytes(int);
    static int getBmpBufferSize(int, int);
    void makeBmpFromEfb(void*, int, int, int, int, int, int);
    void openBmp(int, int);
    void closeBmp();
    void saveBmp(void*, u32);

    /* 0x0 */ const JFWDisplay* mpDisplay;
    /* 0x4 */ int field_0x4;
};

#endif /* CAPTURESCREEN_H */
