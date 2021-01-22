#ifndef C_BG_S_GND_CHK_H_
#define C_BG_S_GND_CHK_H_

#include "SComponent/c_bg_s_chk.h"
#include "SComponent/c_xyz.h"
#include "global.h"

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

#endif