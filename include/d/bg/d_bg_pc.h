#ifndef D_BG_D_BG_PC_H
#define D_BG_D_BG_PC_H

#include "dolphin/types.h"

struct sBgPc {
    /* 0x00 */ u32 code0;
    /* 0x04 */ u32 code1;
    /* 0x08 */ u32 code2;
    /* 0x0C */ u32 code3;
    /* 0x10 */ u32 code4;
};  // Size: 0x14

class dBgPc {
public:
    void setCode(sBgPc&);

private:
    /* 0x0 */ sBgPc m_code;
};

#endif /* D_BG_D_BG_PC_H */
