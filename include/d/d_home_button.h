#ifndef D_HOME_BUTTON_H
#define D_HOME_BUTTON_H

#include <revolution/hbm.h>
#include "JSystem/J2DGraph/J2DOrthoGraph.h"

class dHomeButton_c {
public:
    void create_(int, void*);
    int execute_();
    void initHomeButtonInfo(int, void*);
    void initCursorPos();
    void calcCursorPos();
    void onReset();
    void create(int, void*);
    int execute();
    void drawCapture(u8, void (*)(J2DOrthoGraph&, void*), void*);

    /* 0x00 */ HBMDataInfo m_info;
};

#endif /* D_HOME_BUTTON_H */
