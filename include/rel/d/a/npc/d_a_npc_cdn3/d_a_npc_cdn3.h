#ifndef D_A_NPC_CDN3_H
#define D_A_NPC_CDN3_H

#include "d/a/d_a_npc.h"
#include "rel/d/a/tag/d_a_tag_schedule/d_a_tag_schedule.h"

/**
 * @ingroup actors-npcs
 * @class daNpcCdn3_c
 * @brief Hylian Adult
 *
 * @details
 *
 */
class daNpcCdn3_c : public fopAc_ac_c {
public:

    struct Mode_e {};

    /* 80978DD4 */ void setAction(daNpcCdn3_c::Mode_e);
    /* 80978E18 */ void callInit();
    /* 80978E40 */ void callExecute();
    /* 80978E6C */ void initWait();
    /* 80978ED0 */ void executeWait();
    /* 80979080 */ void initPath();
    /* 80979144 */ void executePath();
    /* 80979A34 */ void initTalk();
    /* 80979B2C */ void executeTalk();
    /* 80979F08 */ void initEscape();
    /* 8097A028 */ void executeEscape();
    /* 8097A398 */ void initFear();
    /* 8097A518 */ void executeFear();
    /* 8097A60C */ void initFear2();
    /* 8097A6AC */ void executeFear2();
    /* 8097A724 */ void initFight();
    /* 8097A7E0 */ void executeFight();
    /* 8097A960 */ void initRelief();
    /* 8097A9E4 */ void executeRelief();
    /* 8097ABDC */ void setAngle();
    /* 8097ABE8 */ void pathMoveF();
    /* 8097AF14 */ void ctrlMsgAnm();
    /* 8097B04C */ void searchNextScheduleTagSub(fopAc_ac_c*);
    /* 8097B194 */ void searchFirstScheduleTagSub(fopAc_ac_c*);
    /* 8097B288 */ void checkSchedule();
    /* 8097B38C */ void setSchedule(daTagSchedule_c*);
    /* 8097B5A8 */ void isInShop();
    /* 8097B60C */ void isChairStyle();
    /* 8097B684 */ void isNoTurnTalk();
    /* 8097B6D0 */ void waita(void*);
    /* 8097B754 */ void talka(void*);
    /* 8097B7D8 */ void waitwall(void*);
    /* 8097B85C */ void talkwall(void*);
    /* 8097B8E0 */ void talkbwall(void*);
    /* 8097B964 */ void talkb(void*);
    /* 8097B9E8 */ void talkc(void*);
    /* 8097BA6C */ void waitb(void*);
    /* 8097BAF0 */ void sitwaita(void*);
    /* 8097BB74 */ void sittalka(void*);
    /* 8097BBF8 */ void sittalkab(void*);
    /* 8097BC7C */ void sitwaitb(void*);
    /* 8097BD00 */ void sittalkb(void*);
    /* 8097BD84 */ void sittalkbb(void*);
    /* 8097BE08 */ void looka(void*);
    /* 8097BE8C */ void lookb(void*);
    /* 8097BF10 */ void playm(void*);
    /* 8097C070 */ void turnr(void*);
    /* 8097C12C */ void turnl(void*);
    /* 8097C1E8 */ void walka(void*);
    /* 8097C250 */ void walkb(void*);
    /* 8097C2B8 */ void runa(void*);
    /* 8097C320 */ void runb(void*);
    /* 8097C388 */ void browsea(void*);
    /* 8097C40C */ void browseb(void*);
    /* 8097C490 */ void dance(void*);
    /* 8097C5B0 */ void ladytalka(void*);
    /* 8097C634 */ void ladytalkb(void*);
    /* 8097C6B8 */ void normtalka(void*);
    /* 8097C73C */ void normtalkb(void*);
    /* 8097C7C0 */ void sellme(void*);
    /* 8097C844 */ void sing(void*);
    /* 8097C910 */ void create();
    /* 8097CC58 */ void create_init();
    /* 8097D078 */ void setMtx();
    /* 8097D120 */ void lookat();
    /* 8097D684 */ ~daNpcCdn3_c();
    /* 8097D748 */ void execute();
    /* 8097DABC */ void checkTimeSchedule();

    static u8 ActionTable[192];
    static void* m_funcTbl[44];
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
    static u8 m_seq27_funcTbl[24];
    static u8 m_seq28_funcTbl[36];
    static u8 m_seq29_funcTbl[36];
    static u8 m_seq30_funcTbl[72];
    static u8 m_seq31_funcTbl[72];
    static u8 m_seq32_funcTbl[84];
    static u8 m_seq33_funcTbl[84];
    static u8 m_seq34_funcTbl[108];
    static u8 m_seq35_funcTbl[24];
    static u8 m_seq36_funcTbl[48];
    static u8 m_seq37_funcTbl[24];
    static u8 m_seq38_funcTbl[24];
    static u8 m_seq39_funcTbl[24];
    static u8 m_seq40_funcTbl[36];
    static u8 m_seq41_funcTbl[24];
    static u8 m_seq42_funcTbl[24];
    static u8 m_seq43_funcTbl[36];

private:
    /* 0x568 */ u8 field_0x568[0xb9c - 0x568];
};

STATIC_ASSERT(sizeof(daNpcCdn3_c) == 0xb9c);


#endif /* D_A_NPC_CDN3_H */
