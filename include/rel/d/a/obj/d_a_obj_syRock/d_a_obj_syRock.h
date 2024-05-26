#ifndef D_A_OBJ_SYROCK_H
#define D_A_OBJ_SYROCK_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daSyRock_c : public fopAc_ac_c {
public:
    /* 80D0237C */ void setBaseMtx();
    /* 80D02454 */ void CreateHeap();
    /* 80D02584 */ void create();
    /* 80D02AFC */ void setFallStat();
    /* 80D02BE0 */ void Execute(f32 (**)[3][4]);
    /* 80D02C54 */ void move();
    /* 80D02E70 */ void init_modeWait();
    /* 80D02E7C */ void modeWait();
    /* 80D02F88 */ void eventStart();
    /* 80D02FB8 */ void init_modeDropInit();
    /* 80D03070 */ void modeDropInit();
    /* 80D030A8 */ void searchWaterPillar(void*, void*);
    /* 80D03250 */ void init_modeDrop();
    /* 80D03384 */ void modeDrop();
    /* 80D033D0 */ void init_modeSink();
    /* 80D03440 */ void modeSink();
    /* 80D034E8 */ void init_modeMove();
    /* 80D035F8 */ void modeMove();
    /* 80D036B8 */ void chkWaterLineIn();
    /* 80D036DC */ void bgCheck();
    /* 80D03984 */ void init_modeDropEnd();
    /* 80D03A48 */ void modeDropEnd();
    /* 80D03A4C */ void Draw();
    /* 80D03B08 */ void Delete();
    /* 80D03DAC */ ~daSyRock_c();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0x9a0 - 0x568];
};
STATIC_ASSERT(sizeof(daSyRock_c) == 0x9a0);

class daSyRock_HIO_c {
public:
    /* 80D022AC */ daSyRock_HIO_c();
    /* 80D03C44 */ ~daSyRock_HIO_c();
};


#endif /* D_A_OBJ_SYROCK_H */
