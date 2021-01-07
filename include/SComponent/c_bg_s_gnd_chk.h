#ifndef __C_BG_S_GND_CHK_H_
#define __C_BG_S_GND_CHK_H_

#include "SComponent/c_xyz.h"
#include "global.h"

class cBgS_GndChk {
    cBgS_GndChk(void);
    ~cBgS_GndChk(void);
    void SetPos(const Vec*);
    void SetPos(const cXyz*);
    void PreCheck(void);
};

#endif