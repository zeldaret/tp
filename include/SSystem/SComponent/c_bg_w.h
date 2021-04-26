#ifndef C_BG_W_H
#define C_BG_W_H

#include "dolphin/types.h"

class cBgW_BgId {
public:
    void Regist(int a1);
    void Release();

    unsigned int ChkUsed() const;

private:
    unsigned short mId;
};

bool cBgW_CheckBGround(float a1);
bool cBgW_CheckBRoof(float a1);
bool cBgW_CheckBWall(float a1);

#endif /* C_BG_W_H */
