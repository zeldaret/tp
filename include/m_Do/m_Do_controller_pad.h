#ifndef M_DO_M_DO_CONTROLLER_PAD_H
#define M_DO_M_DO_CONTROLLER_PAD_H

#include "dolphin/types.h"
#include "SSystem/SComponent/c_API_controller_pad.h"

class JUTGamePad;

class mDoCPd_c {
public:
    void create();
    void read();
    void convert(interface_of_controller_pad*, JUTGamePad*);
    void LRlockCheck(interface_of_controller_pad*);
    void recalibrate();

    static u8 m_gamePad[16];
    static interface_of_controller_pad m_cpadInfo[4];
};

#endif /* M_DO_M_DO_CONTROLLER_PAD_H */
