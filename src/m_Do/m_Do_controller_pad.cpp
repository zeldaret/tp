#include "global.h"
#include "m_Do/m_Do_controller_pad/m_Do_controller_pad.h"
#include "JSystem/JUtility/JUTGamePad/JUTGamePad.h"
#include "pad/pad.h"
#include "c/cLib.h"

asm void mDoCPd_c::create(){
    nofralloc
    #include "m_Do/m_Do_controller_pad/asm/mDoCPd_c_NS_create.s"
}

asm void mDoCPd_c::read(){
    nofralloc
    #include "m_Do/m_Do_controller_pad/asm/mDoCPd_c_NS_read.s"
}

asm void mDoCPd_c::convert(interface_of_controller_pad* controllerInteface, JUTGamePad* gamePad){
    nofralloc
    #include "m_Do/m_Do_controller_pad/asm/mDoCPd_c_NS_convert.s"
}

asm void mDoCPd_c::LRlockCheck(interface_of_controller_pad* controllerInterface){
    nofralloc
    #include "m_Do/m_Do_controller_pad/asm/mDoCPd_c_NS_LRlockCheck.s"
}

asm void mDoCPd_c::recalibrate(void){
    nofralloc
    #include "m_Do/m_Do_controller_pad/asm/mDoCPd_c_NS_recalibrate.s"
}