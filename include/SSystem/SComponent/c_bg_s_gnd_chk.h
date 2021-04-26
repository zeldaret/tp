#ifndef C_BG_S_GND_CHK_H
#define C_BG_S_GND_CHK_H

#include "SSystem/SComponent/c_bg_s_chk.h"
#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"

class cBgS_GndChk : public cBgS_Chk {
private:
    // poly info
public:
    cBgS_GndChk(void);
    virtual ~cBgS_GndChk(void);
    void SetPos(const Vec*);
    void SetPos(const cXyz*);
    void PreCheck(void);
};

#endif /* C_BG_S_GND_CHK_H */
