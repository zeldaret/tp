#ifndef D_A_TAG_INSTRUCTION_H
#define D_A_TAG_INSTRUCTION_H

#include "f_op/f_op_actor_mng.h"

class daTagInst_c : public fopAc_ac_c {
public:
    s16 getInstructionNo() { return fopAcM_GetParam(this) & 0xFF; }
};

#endif /* D_A_TAG_INSTRUCTION_H */
