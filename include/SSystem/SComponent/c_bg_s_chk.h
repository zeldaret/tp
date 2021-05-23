#ifndef C_BG_S_CHK_H
#define C_BG_S_CHK_H

#include "dolphin/types.h"

class cBgS_Chk {
private:
    /* 0x0 */ u32 mPolyPassChk;
    /* 0x4 */ u32 mGrpPassChk;
    /* 0x8 */ u32 mActorPid;
    /* 0xC */ u8 unk_0x0C;
    /* 0x10 */  // __vtable__
public:
    cBgS_Chk(void);
    virtual ~cBgS_Chk(void);
    void SetExtChk(cBgS_Chk&);
    bool ChkSameActorPid(unsigned int) const;
    void setActorPid(u32 pid) { mActorPid = pid; }
};

#endif /* C_BG_S_CHK_H */
