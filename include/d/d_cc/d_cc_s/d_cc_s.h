#ifndef __D_CC_S_H_
#define __D_CC_S_H_

#include "SComponent/c_cc_s/c_cc_s.h"
#include "d/d_cc/d_cc_mass_s/d_cc_mass_s.h"
#include "global.h"

class dCcS {
public:
private:
    /* 0x0000 */ cCcS cccs;
    /* 0x2834 */ u8 field_0x2834[36];
    /* 0x2858 */ dCcMassS_Mng dccmass_mng;
};

#endif