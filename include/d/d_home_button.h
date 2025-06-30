#ifndef D_HOME_BUTTON_H
#define D_HOME_BUTTON_H

#include <revolution/hbm.h>
#include "JSystem/J2DGraph/J2DOrthoGraph.h"

class dHomeButton_c {
public:
    dHomeButton_c() {
        field_0x7c = 0;
    }

    void create_(int, void*);
    int execute_();
    void initHomeButtonInfo(int, void*);
    void initCursorPos();
    void calcCursorPos();
    void onReset();

    static void create(int, void*);
    static int execute();
    static void drawCapture(u8, void (*)(J2DOrthoGraph&, void*), void*);

    static dHomeButton_c* m_myObj;
    static u8 lbl_8053A724;
    static u8 lbl_8053A725;

    /* 0x00 */ HBMDataInfo m_info;
    /* 0x38 */ HBMControllerData m_controllerData;
    /* 0x78 */ u32 field_0x78;
    /* 0x7C */ u8 field_0x7c;
};

#endif /* D_HOME_BUTTON_H */
