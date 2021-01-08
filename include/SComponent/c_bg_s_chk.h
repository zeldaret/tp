#ifndef __C_BG_S_CHK_H_
#define __C_BG_S_CHK_H_

#include "global.h"

class cBgS_Chk {
private:
    /* 0x0 */ u32 unk_0x00;
    /* 0x4 */ u32 unk_0x04;
    /* 0x8 */ u32 unk_0x08;
    /* 0xC */ u8 unk_0x0C;
    /* 0x10 */  // __vtable__
public:
    cBgS_Chk(void);
    virtual ~cBgS_Chk(void);
    void SetExtChk(cBgS_Chk&);
    bool ChkSameActorPid(unsigned int) const;
};

#endif