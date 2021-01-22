#ifndef C_BG_S_LIN_CHK_H_
#define C_BG_S_LIN_CHK_H_

#include "SComponent/c_xyz.h"
#include "global.h"

class cBgS_LinChk {
public:
    cBgS_LinChk(void);
    ~cBgS_LinChk(void);
    void ct(void);
    void Set2(const cXyz*, const cXyz*, unsigned int);
    void PreCalc(void);
};

#endif