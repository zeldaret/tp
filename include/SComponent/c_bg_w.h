#ifndef SCOMPONENT_C_BG_W_H_
#define SCOMPONENT_C_BG_W_H_

#include "global.h"

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

extern "C" {
void cBgW_CheckBGround__Ff(void);
void cBgW_CheckBRoof__Ff(void);
void cBgW_CheckBWall__Ff(void);
}

#endif
