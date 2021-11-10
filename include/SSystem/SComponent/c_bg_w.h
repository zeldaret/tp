#ifndef C_BG_W_H
#define C_BG_W_H

#include "dolphin/types.h"

class cBgW_BgId {
private:
    /* 0x0 */ u16 m_id;
    /* 0x4 vtable */

public:
    /* 802681C8 */ void Release();
    /* 802681D4 */ bool ChkUsed() const;
    /* 802681C0 */ void Regist(int);

    /* 8007E5F8 */ virtual ~cBgW_BgId();

    cBgW_BgId() { Ct(); }
    void Ct() { m_id = 0x100; }
};

bool cBgW_CheckBGround(float a1);
bool cBgW_CheckBRoof(float a1);
bool cBgW_CheckBWall(float a1);

#endif /* C_BG_W_H */
