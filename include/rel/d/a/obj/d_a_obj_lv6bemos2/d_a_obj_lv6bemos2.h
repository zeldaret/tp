#ifndef D_A_OBJ_LV6BEMOS2_H
#define D_A_OBJ_LV6BEMOS2_H

#include "f_op/f_op_actor_mng.h"

class daObjLv6Bm_c : public fopAc_ac_c {
public:
    /* 80C7E30C */ void initBaseMtx();
    /* 80C7E374 */ void setBaseMtx();
    /* 80C7E448 */ void Create();
    /* 80C7E764 */ void CreateHeap();
    /* 80C7EB7C */ void create1st();
    /* 80C7EC6C */ void Execute(f32 (**)[3][4]);
    /* 80C7EE50 */ void action();
    /* 80C7F2A4 */ void calcBeam();
    /* 80C7F904 */ void checkFindPlayer();
    /* 80C7FA54 */ void checkSearchPlayer();
    /* 80C7FBA4 */ void getSearchDistance();
    /* 80C7FBFC */ void getBeamSearchDistance();
    /* 80C7FC54 */ void effect_proc();
    /* 80C7FD8C */ void effectWait();
    /* 80C7FD90 */ void initEffectSet0();
    /* 80C7FEC4 */ void effectSet0();
    /* 80C7FF78 */ void initActionSwWait();
    /* 80C7FFB8 */ void actionSwWait();
    /* 80C802AC */ void initActionWarning();
    /* 80C802C0 */ void actionWarning();
    /* 80C803D8 */ void initActionFindPlayer();
    /* 80C80538 */ void actionFindPlayer();
    /* 80C80684 */ void initActionAttack();
    /* 80C8082C */ void actionAttack();
    /* 80C80F48 */ void initActionDead();
    /* 80C81154 */ void actionDead();
    /* 80C81428 */ void initActionEnd();
    /* 80C814FC */ void actionEnd();
    /* 80C81500 */ void Draw();
    /* 80C816A8 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0xabc - 0x568];
};
STATIC_ASSERT(sizeof(daObjLv6Bm_c) == 0xabc);


#endif /* D_A_OBJ_LV6BEMOS2_H */
