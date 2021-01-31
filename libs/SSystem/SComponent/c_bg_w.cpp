#include "SComponent/c_bg_w.h"

void cBgW_BgId::Regist(int a1) {
    mId = a1;
}

void cBgW_BgId::Release() {
    mId = 0x100;
}

unsigned int cBgW_BgId::ChkUsed() const {
    unsigned int temp = mId - 0x100;
    return temp >> 0x1f;
}
bool cBgW_CheckBGround(float a1) {
    return a1 >= lbl_804550E8;
}

bool cBgW_CheckBRoof(float a1) {
    return a1 < lbl_804550EC;
}

bool cBgW_CheckBWall(float a1) {
    if (!cBgW_CheckBGround(a1) && !cBgW_CheckBRoof(a1))
        return true;

    return false;
}