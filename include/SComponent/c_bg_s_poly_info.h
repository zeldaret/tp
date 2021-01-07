#ifndef C_BG_S_POLY_INFO_H_
#define C_BG_S_POLY_INFO_H_

#include "global.h"

class cBgS_PolyInfo {
public:
    cBgS_PolyInfo(void);
    ~cBgS_PolyInfo(void);
    bool ChkSetInfo(void) const;
    void ClearPi(void);
    void SetPolyInfo(const cBgS_PolyInfo&);
    void SetActorInfo(int, void*, unsigned int);
    bool ChkSafe(const void*, unsigned int) const;
    void SetPolyIndex(int);
    bool ChkBgIndex(void) const;
};

#endif