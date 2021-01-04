#ifndef D_SAVE_HIO_H_
#define D_SAVE_HIO_H_

#include "dolphin/types.h"
#include "m_Do/m_Do_main/m_Do_main.h"

struct dSvBit_childSwPerfectionHIO_c_vtable {
    u32* unk0;
    u32* unk4;
    u32* dtor;
};

class dSvBit_childSwPerfectionHIO_c {
public:
    dSvBit_childSwPerfectionHIO_c();
    void init(void);
    ~dSvBit_childSwPerfectionHIO_c();
    dSvBit_childSwPerfectionHIO_c_vtable* __vt;

private:
    u8 unk0[10];
};

#endif