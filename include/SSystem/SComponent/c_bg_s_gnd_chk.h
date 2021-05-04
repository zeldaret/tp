#ifndef C_BG_S_GND_CHK_H
#define C_BG_S_GND_CHK_H

#include "SSystem/SComponent/c_bg_s_chk.h"
#include "SSystem/SComponent/c_bg_s_poly_info.h"
#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"

class cBgS_GndChk : public cBgS_Chk {
private:
    /* 0x14 */ cBgS_PolyInfo mPolyInfo;
    /* 0x24 */ cXyz m_pos;
    /* 0x30 */ int field_0x30;
    /* 0x34 */ float mNowY;
    /* 0x38 */ void* mWallPrecheck;

public:
    cBgS_GndChk(void);
    virtual ~cBgS_GndChk(void);
    void SetPos(const Vec*);
    void SetPos(const cXyz*);
    void PreCheck(void);
};

#endif /* C_BG_S_GND_CHK_H */
