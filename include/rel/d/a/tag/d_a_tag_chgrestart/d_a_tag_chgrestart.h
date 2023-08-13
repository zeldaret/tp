#ifndef D_A_TAG_CHGRESTART_H
#define D_A_TAG_CHGRESTART_H

#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "dol2asm.h"

class daTagChgRestart_c : public fopAc_ac_c {
public:
    daTagChgRestart_c() {}
    /* 80D56758 */ s32 Create();
    /* 80D567E4 */ s32 create();
    /* 80D568B8 */ s32 execute();
    /* 80D56A84 */ s32 _delete();

    /* 0x0568 */ cXyz field_0x568[4];
};
STATIC_ASSERT(sizeof(daTagChgRestart_c) == 0x598);

namespace daTagChgRestart_prm {
    inline u8 getSwNo(daTagChgRestart_c* p_chgRestart) { return fopAcM_GetParam(p_chgRestart) >> 8; }
    inline u8 getPlayerNo(daTagChgRestart_c* p_chgRestart) { return fopAcM_GetParam(p_chgRestart); }
};  // namespace daTagChgRestart_prm

#endif /* D_A_TAG_CHGRESTART_H */
