#ifndef D_BG_D_BG_S_GRP_PASS_CHK_H
#define D_BG_D_BG_S_GRP_PASS_CHK_H

#include "dolphin/types.h"

class cBgS_GrpPassChk {
public:
    ~cBgS_GrpPassChk();
};

class dBgS_GrpPassChk : public cBgS_GrpPassChk {
public:
    /* 80077BA0 */ dBgS_GrpPassChk();
    /* 80077BC4 */ ~dBgS_GrpPassChk();

private:
    u32 mGrp;
};

#endif /* D_BG_D_BG_S_GRP_PASS_CHK_H */
