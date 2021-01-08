#ifndef C_BG_S_POLY_INFO_H_
#define C_BG_S_POLY_INFO_H_

#include "global.h"

class cBgS_PolyInfo {
private:
    /* 0x00 */ u16 mPolyIndex;
    /* 0x02 */ u16 unk_0x02;
    /* 0x04 */ void* unk_0x04;
    /* 0x08 */ u32 unk_0x08;

public:
    cBgS_PolyInfo(void);
    virtual ~cBgS_PolyInfo(void);
    bool ChkSetInfo(void) const;
    void ClearPi(void);
    void SetPolyInfo(const cBgS_PolyInfo&);
    void SetActorInfo(int, void*, unsigned int);
    bool ChkSafe(const void*, unsigned int) const;
    void SetPolyIndex(int);
    bool ChkBgIndex(void) const;
};

#endif