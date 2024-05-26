#ifndef D_A_OBJ_VOLCBOM_H
#define D_A_OBJ_VOLCBOM_H

#include "f_op/f_op_actor_mng.h"

class daObjVolcBom_c : public fopAc_ac_c {
public:
    /* 80D241E0 */ void initBaseMtx();
    /* 80D24238 */ void setBaseMtx();
    /* 80D242A8 */ void Create();
    /* 80D244E0 */ void CreateHeap();
    /* 80D248F4 */ void create1st();
    /* 80D249D0 */ void Execute(f32 (**)[3][4]);
    /* 80D24A2C */ void mode_proc_call();
    /* 80D24B18 */ void init_modeWaitAppear();
    /* 80D24B6C */ void modeWaitAppear();
    /* 80D24D80 */ void init_modeFall();
    /* 80D24E50 */ void modeFall();
    /* 80D25024 */ void init_modeWaitEndFallDemo();
    /* 80D25038 */ void modeWaitEndFallDemo();
    /* 80D25094 */ void init_modeWait();
    /* 80D25100 */ void modeWait();
    /* 80D25178 */ void clrDzb();
    /* 80D251CC */ void setDzb();
    /* 80D25224 */ void appear();
    /* 80D25230 */ void disappear();
    /* 80D2523C */ void setSmoke();
    /* 80D252C8 */ void checkTalkDistance();
    /* 80D25364 */ void calcMidnaWaitPos();
    /* 80D253FC */ void setSrcEffect();
    /* 80D25528 */ void setBindEffect();
    /* 80D255F4 */ void followBindEffect();
    /* 80D25664 */ void endBindEffect();
    /* 80D256B8 */ void followSrcEffect();
    /* 80D25758 */ void endSrcEffect();
    /* 80D257E4 */ void event_proc_call();
    /* 80D25914 */ void orderZHintEvent();
    /* 80D25A08 */ void actionWait();
    /* 80D25B04 */ void actionOrderEvent();
    /* 80D25CA0 */ void actionOrderATalkEvent();
    /* 80D25DEC */ void actionTalkEvent();
    /* 80D25E78 */ void actionWarpEvent();
    /* 80D25EE4 */ void actionDead();
    /* 80D25EE8 */ void demoProc();
    /* 80D26468 */ void calcObjPos();
    /* 80D264E8 */ void Draw();
    /* 80D266FC */ void Delete();

    void startFall() { field_0x95f = 1; }
    void startSearch() { field_0x960 = 1; }

private:
    /* 0x568 */ u8 field_0x568[0x95F - 0x568];
    /* 0x95F */ u8 field_0x95f;
    /* 0x960 */ u8 field_0x960;
    /* 0x961 */ u8 field_0x961[0xA1C - 0x961];
};
STATIC_ASSERT(sizeof(daObjVolcBom_c) == 0xa1c);


#endif /* D_A_OBJ_VOLCBOM_H */
