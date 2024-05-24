#ifndef D_A_E_GE_H
#define D_A_E_GE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_GE_c
 * @brief Guay
 * 
 * @details 
 * 
 */
class daE_GE_c : public fopEn_enemy_c {
public:
    u8 getGroupNo() {
        return mGroupNo;
    }

    /* 806C7AB8 */ void bckSet(int, f32, u8, f32);
    /* 806C7B5C */ void bckCheck(int);
    /* 806C7BB8 */ void draw();
    /* 806C7CAC */ void checkBeforeBg(int, f32);
    /* 806C80F8 */ void setActionMode(int);
    /* 806C8130 */ void damage_check();
    /* 806C8374 */ void checkOtherAttacker();
    /* 806C83F8 */ void searchNextAttacker();
    /* 806C84A0 */ void checkCircleSpeedAdd(cXyz*, cXyz*);
    /* 806C8518 */ void setAddCalcSpeed(cXyz&, cXyz const&, f32, f32, f32, f32);
    /* 806C88C8 */ void calcCircleFly(cXyz*, cXyz*, s16, f32, s16, f32);
    /* 806C89C0 */ void executeWait();
    /* 806C8C20 */ void executeFly();
    /* 806C9150 */ void checkAttackPossible(s16, bool);
    /* 806C921C */ void executeAttack();
    /* 806C9F04 */ void setBackAnime(int);
    /* 806CA024 */ void executeBack();
    /* 806CAA34 */ void executeDown();
    /* 806CADCC */ void setSurpriseTime(s16);
    /* 806CADF4 */ void setSurprise();
    /* 806CAE58 */ void executeSurprise();
    /* 806CB280 */ void setCaw();
    /* 806CB2F0 */ void executeCaw();
    /* 806CB6FC */ void executeWind();
    /* 806CBAB8 */ void executeShield();
    /* 806CBC38 */ void action();
    /* 806CBE98 */ void mtx_set();
    /* 806CBEF0 */ void cc_set();
    /* 806CC068 */ void execute();
    /* 806CC1E4 */ void _delete();
    /* 806CC278 */ void CreateHeap();
    /* 806CC390 */ void create();

private:
    /* 0x5AC */ u8 field_0x5ac[1519];
    /* 0xB9B */ u8 mGroupNo;
    /* 0xB9C */ u8 field_0xb9c[4];

    static u8 l_actionmenu[108];
};
STATIC_ASSERT(sizeof(daE_GE_c) == 0xBA0);

class daE_GE_HIO_c {
    /* 806C7A4C */ daE_GE_HIO_c();
    /* 806CCA58 */ ~daE_GE_HIO_c();
};

#endif /* D_A_E_GE_H */
