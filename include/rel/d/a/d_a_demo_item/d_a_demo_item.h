#ifndef D_A_DEMO_ITEM_H
#define D_A_DEMO_ITEM_H

#include "f_op/f_op_actor_mng.h"

class daDitem_c : public fopAc_ac_c {
public:
    /* 804DFBCC */ bool __CreateHeap();
    /* 804DFBD4 */ void CreateInit();
    /* 804DFC98 */ void action();
    /* 804DFD10 */ void actionStart();
    /* 804E00DC */ void actionEvent();
    /* 804E0A50 */ void actionWaitLightEnd();
    /* 804E0B40 */ void actionEnd();
    /* 804E0B60 */ void setInsectEffect();
    /* 804E0C44 */ void followInsectEffect();
    /* 804E0CB0 */ void endInsectEffect();
    /* 804E0D44 */ void onEventReg(int, int);
    /* 804E0DB4 */ void set_pos();
    /* 804E105C */ void anim_control();
    /* 804E1098 */ void initEffectLight();
    /* 804E10D0 */ void settingEffectLight();
    /* 804E111C */ void set_mtx();
    /* 804E11D4 */ void setTevStr();
    /* 804E122C */ void setListStart();
    /* 804E1230 */ void draw_WOOD_STICK();

private:
    /* 0x568 */ u8 field_0x568[0x9c8 - 0x568];
};
STATIC_ASSERT(sizeof(daDitem_c) == 0x9c8);


#endif /* D_A_DEMO_ITEM_H */
