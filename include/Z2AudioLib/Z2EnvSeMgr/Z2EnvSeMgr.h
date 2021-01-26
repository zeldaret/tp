#ifndef Z2ENVSEMGR_H_
#define Z2ENVSEMGR_H_
#include "global.h"

struct Z2EnvSeMgr {
    Z2EnvSeMgr();
    void framework();
    u8 unk_1[0x30C];
};

extern void* lbl_80450B3C;  // Z2EnvSeMgr sInstance

extern "C" {
    void __ct__10Z2EnvSeMgrFv(void);
    void framework__10Z2EnvSeMgrFv(void);
}

#endif