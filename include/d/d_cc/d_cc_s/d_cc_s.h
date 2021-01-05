#ifndef __D_CC_S_H_
#define __D_CC_S_H_

#include "SComponent/c_cc_s/c_cc_s.h"
#include "d/d_cc/d_cc_mass_s/d_cc_mass_s.h"
#include "global.h"

class dCcS {
public:
private:
    cCcS cccs;
    u8 field_0x2834[36];
    dCcMassS_Mng dccmass_mng;
};

#endif