#ifndef D_A_NPC_PASSER_H
#define D_A_NPC_PASSER_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpcPasser_c : public fopAc_ac_c {
public:
    struct Mode_e {};

    /* 80AA2C18 */ ~daNpcPasser_c();
    /* 80AA2C9C */ void createHeap();
    /* 80AA2D40 */ void create();
    /* 80AA2FD4 */ void execute();
    /* 80AA315C */ void draw();
    /* 80AA31EC */ void setAction(daNpcPasser_c::Mode_e);
    /* 80AA3230 */ void callInit();
    /* 80AA3258 */ void callExecute();
    /* 80AA3284 */ void initPath();
    /* 80AA33F0 */ void executePath();
    /* 80AA38C4 */ void initEscape();
    /* 80AA39DC */ void executeEscape();
    /* 80AA3D4C */ void initFear();
    /* 80AA3DE4 */ void executeFear();
    /* 80AA3E5C */ void initFight();
    /* 80AA3F10 */ void executeFight();
    /* 80AA40A4 */ void initRelief();
    /* 80AA4128 */ void executeRelief();
    /* 80AA41E4 */ void create_init();
    /* 80AA43A4 */ void setAngle();
    /* 80AA43B0 */ void setSpeed(f32, f32, f32*, int);
    /* 80AA44A4 */ void pathMoveF();
    /* 80AA4780 */ void setBaseMtx();
    /* 80AA47FC */ void initCollision();
    /* 80AA48D8 */ void setCollision();
    /* 80AA492C */ void waita(void*);
    /* 80AA49D4 */ void talka(void*);
    /* 80AA4A7C */ void waitwall(void*);
    /* 80AA4B24 */ void talkwall(void*);
    /* 80AA4BCC */ void talkbwall(void*);
    /* 80AA4C74 */ void talkb(void*);
    /* 80AA4D1C */ void talkc(void*);
    /* 80AA4DC4 */ void waitb(void*);
    /* 80AA4E6C */ void sitwaita(void*);
    /* 80AA4F14 */ void sittalka(void*);
    /* 80AA4FBC */ void sittalkab(void*);
    /* 80AA5064 */ void sitwaitb(void*);
    /* 80AA510C */ void sittalkb(void*);
    /* 80AA51B4 */ void sittalkbb(void*);
    /* 80AA525C */ void looka(void*);
    /* 80AA5304 */ void lookb(void*);
    /* 80AA53AC */ void playm(void*);
    /* 80AA5454 */ void turnr(void*);
    /* 80AA5510 */ void turnl(void*);
    /* 80AA55CC */ void walka(void*);
    /* 80AA5634 */ void runa(void*);
    /* 80AA569C */ void runb(void*);
    /* 80AA5704 */ void walkb(void*);
    /* 80AA576C */ void browsea(void*);
    /* 80AA5814 */ void browseb(void*);
    /* 80AA58BC */ void waitTime(void*);

    static u8 ActionTable[120];
    static void* m_funcTbl[28];
    static u8 m_seq00_funcTbl[24];
    static u8 m_seq01_funcTbl[24];
    static u8 m_seq02_funcTbl[24];
    static u8 m_seq03_funcTbl[24];
    static u8 m_seq04_funcTbl[24];
    static u8 m_seq05_funcTbl[48];
    static u8 m_seq06_funcTbl[48];
    static u8 m_seq07_funcTbl[24];
    static u8 m_seq08_funcTbl[84];
    static u8 m_seq09_funcTbl[24];
    static u8 m_seq10_funcTbl[24];
    static u8 m_seq11_funcTbl[72];
    static u8 m_seq12_funcTbl[24];
    static u8 m_seq13_funcTbl[72];
    static u8 m_seq14_funcTbl[24];
    static u8 m_seq15_funcTbl[24];
    static u8 m_seq16_funcTbl[84];
    static u8 m_seq17_funcTbl[24];
    static u8 m_seq18_funcTbl[24];
    static u8 m_seq19_funcTbl[84];
    static u8 m_seq20_funcTbl[24];
    static u8 m_seq21_funcTbl[24];
    static u8 m_seq22_funcTbl[48];
    static u8 m_seq23_funcTbl[84];
    static u8 m_seq24_funcTbl[60];
    static u8 m_seq25_funcTbl[84];
    static u8 m_seq26_funcTbl[36];
    static u8 m_seq27_funcTbl[12];

private:
    /* 0x568 */ u8 field_0x568[0xb28 - 0x568];
};
STATIC_ASSERT(sizeof(daNpcPasser_c) == 0xb28);


#endif /* D_A_NPC_PASSER_H */
