#include "d/d_home_button.h"
#include "Z2AudioLib/Z2AudioMgr.h"

int SECallback(int param_0, int param_1) {
    if (param_0 == 5) {
        Z2AudioMgr::getInterface()->homeMenuSeCallback(param_1);
        return 1;
    } else {
        OSReport("SECallback: %d, %d\n", param_0, param_1);
        return 0;
    }
}

void dHomeButton_c::create_(int param_0, void* param_1) {
    initCursorPos();
    initHomeButtonInfo(param_0, param_1);

    m_info.mem = JKRGetRootHeap2()->alloc(0x80000, 0);
    m_info.memSize = 0x80000;
    m_info.pAllocator = 0;

    HBMCreate(&m_info);
}

int dHomeButton_c::execute_() {
    // NONMATCHING
}

void dHomeButton_c::initHomeButtonInfo(int param_0, void* param_1) {
    // NONMATCHING
}

void dHomeButton_c::initCursorPos() {
    // NONMATCHING
}

void dHomeButton_c::calcCursorPos() {
    // NONMATCHING
}

void dHomeButton_c::onReset() {
    // NONMATCHING
}

void dHomeButton_c::create(int param_0, void* param_1) {
    // NONMATCHING
}

int dHomeButton_c::execute() {
    // NONMATCHING
}

void dHomeButton_c::drawCapture(u8 param_0, void (*param_1)(J2DOrthoGraph&, void*), void* param_2) {
    // NONMATCHING
}
