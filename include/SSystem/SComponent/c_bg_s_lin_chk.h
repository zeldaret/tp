#ifndef C_BG_S_LIN_CHK_H
#define C_BG_S_LIN_CHK_H

#include "dolphin/types.h"
#include "SSystem/SComponent/c_xyz.h"

class cBgS_LinChk {
public:
    cBgS_LinChk(void);
    ~cBgS_LinChk(void);
    void ct(void);
    void Set2(const cXyz*, const cXyz*, unsigned int);
    void PreCalc(void);
};

#endif /* C_BG_S_LIN_CHK_H */
