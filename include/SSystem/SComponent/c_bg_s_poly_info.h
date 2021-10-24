#ifndef C_BG_S_POLY_INFO_H
#define C_BG_S_POLY_INFO_H

#include "dolphin/types.h"

class cBgS_PolyInfo {
private:
    /* 0x00 */ u16 mPolyIndex;
    /* 0x02 */ u16 mBgIndex;
    /* 0x04 */ void* unk_0x04;
    /* 0x08 */ u32 unk_0x08;

public:
    cBgS_PolyInfo();
    bool ChkSetInfo() const;
    void ClearPi();
    void SetPolyInfo(const cBgS_PolyInfo&);
    void SetActorInfo(int, void*, unsigned int);
    bool ChkSafe(const void*, unsigned int) const;
    void SetPolyIndex(int);
    bool ChkBgIndex() const;

    virtual ~cBgS_PolyInfo();
};  // Size: 0x10

#endif /* C_BG_S_POLY_INFO_H */
