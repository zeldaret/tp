#ifndef D_BG_S_GRP_PASS_CHK_H_
#define D_BG_S_GRP_PASS_CHK_H_

#include "dolphin/types.h"

class cBgS_GrpPassChk {
public:
    virtual ~cBgS_GrpPassChk() {}
};

class dBgS_GrpPassChk : public cBgS_GrpPassChk {
public:
private:
    u32 mGrp;
};

#endif  // D_BG_S_GRP_PASS_CHK_H_
