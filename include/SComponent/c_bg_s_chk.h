#ifndef __C_BG_S_CHK_H_
#define __C_BG_S_CHK_H_

#include "global.h"

class cBgS_Chk {
public:
    cBgS_Chk(void);
    ~cBgS_Chk(void);
    void SetExtChk(cBgS_Chk&);
    bool ChkSameActorPid(unsigned int) const;
};

#endif