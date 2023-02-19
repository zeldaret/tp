#ifndef D_A_TAG_ATTENTION_H
#define D_A_TAG_ATTENTION_H

#include "d/com/d_com_inf_game.h"
#include "d/d_procname.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_mng.h"

class daAttp_c : public fopAc_ac_c {
public:
    /* 804D5318 */ int Create();
    /* 804D5354 */ int create();
    /* 804D53AC */ int execute();
    /* 804D568C */ int draw();
    /* 804D5694 */ int _delete();
};  // Size: 0x568

namespace daAttp_prm {
static inline u32 getArg0(daAttp_c* pActor) {
    return fopAcM_GetParam(pActor) & 3;
}
static inline u32 getArg1(daAttp_c* pActor) {
    return (fopAcM_GetParam(pActor) >> 2) & 3;
}
static inline u32 getArg2(daAttp_c* pActor) {
    return (fopAcM_GetParam(pActor) >> 4) & 7;
}
static inline u32 getArg3(daAttp_c* pActor) {
    return (fopAcM_GetParam(pActor) >> 7) & 1;
}
static inline u32 getArg4(daAttp_c* pActor) {
    return (fopAcM_GetParam(pActor) >> 8) & 1;
}
static inline u32 getSw1(daAttp_c* pActor) {
    return (fopAcM_GetParam(pActor) >> 0x10) & 0xff;
}
static inline u32 getSw2(daAttp_c* pActor) {
    return (fopAcM_GetParam(pActor) >> 0x18);
}
}  // namespace daAttp_prm

#endif /* D_A_TAG_ATTENTION_H */
