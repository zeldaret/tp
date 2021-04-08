#ifndef C_BG_S_CHK_H_
#define C_BG_S_CHK_H_

#include "d/d_bg/d_bg_s/d_bg_s_grp_pass_chk.h"
#include "d/d_bg/d_bg_s/d_bg_s_poly_pass_chk.h"
#include "global.h"

class cBgS_Chk {
public:
    /* 0x0 */ cBgS_PolyPassChk* mPolyPassChk;
    /* 0x4 */ cBgS_GrpPassChk* mGrpPassChk;
    /* 0x8 */ u32 mActorPid;
    /* 0xC */ u8 unk_0x0C;
    /* 0xD */ u8 field_0x0D[3];
    /* 0x10 */  // __vtable__
public:
    cBgS_Chk(void);
    virtual ~cBgS_Chk(void);
    void SetExtChk(cBgS_Chk&);
    bool ChkSameActorPid(unsigned int) const;
};

#endif