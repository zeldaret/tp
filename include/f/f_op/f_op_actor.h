#ifndef F_OP_ACTOR_H_
#define F_OP_ACTOR_H_

#include "SComponent/c_xyz.h"
#include "SComponent/c_sxyz.h"
#include "JSystem/JKernel/JKRSolidHeap/JKRSolidHeap.h"
#include "f/f_pc/f_pc_base.h"

class fopAc_ac_c : public base_process_class {
public:
    /* 0x0B8 */ u8 unk_0x0B8[0xF0-0xB8];
    /* 0x0F0 */ JKRSolidHeap *unk_0x0F0;
    /* 0x0F4 */ u8 unk_0x0F4[0x4D0-0xF4];
    /* 0x4D0 */ cXyz unk_0x4D0;
    /* 0x4DC */ csXyz unk_0x4DC;
    const cXyz& getUnk4D0() const {
        return unk_0x4D0;
    }
    const csXyz& getUnk4DC() const {
        return unk_0x4DC;
    }
};  // Size: unknown

#endif