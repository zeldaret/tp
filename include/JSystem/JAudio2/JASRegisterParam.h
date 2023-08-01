#ifndef JASREGISTERPARAM_H
#define JASREGISTERPARAM_H

#include "dolphin/types.h"

struct JASRegisterParam {
    enum RegID {

    };

    /* 80293644 */ JASRegisterParam();
    /* 80293664 */ void init();
    /* 80293684 */ void write(JASRegisterParam::RegID, u32);
    /* 802937B8 */ u32 read(JASRegisterParam::RegID);

    u16 field_0x0[14];
};

#endif /* JASREGISTERPARAM_H */
