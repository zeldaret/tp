#ifndef D_A_NPC_PASSER_H
#define D_A_NPC_PASSER_H

#include "d/actor/d_a_npc.h"
#include "d/actor/d_a_npc_cd2.h"

/**
 * @ingroup actors-npcs
 * @class daNpcPasser_c
 * @brief Hylian Passerby
 *
 * @details
 *
*/

class daNpcPasser_c : public daNpcCd2_c {
public:
    typedef void (daNpcPasser_c::*actionFunc)();
    typedef BOOL (daNpcPasser_c::*seqFunc)(void*);

    enum Mode_e {
        /* 0x0 */ MODE_0,
        /* 0x1 */ MODE_1,
        /* 0x2 */ MODE_2,
        /* 0x3 */ MODE_3,
        /* 0x4 */ MODE_4,
        /* 0x5 */ MODE_MAX_e,
    };

    /* 80AA2C18 */ ~daNpcPasser_c();
    /* 80AA2C9C */ int createHeap();
    /* 80AA2D40 */ cPhs__Step create();
    /* 80AA2FD4 */ int execute();
    /* 80AA315C */ int draw();
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
    /* 80AA492C */ BOOL waita(void*);
    /* 80AA49D4 */ BOOL talka(void*);
    /* 80AA4A7C */ BOOL waitwall(void*);
    /* 80AA4B24 */ BOOL talkwall(void*);
    /* 80AA4BCC */ BOOL talkbwall(void*);
    /* 80AA4C74 */ BOOL talkb(void*);
    /* 80AA4D1C */ BOOL talkc(void*);
    /* 80AA4DC4 */ BOOL waitb(void*);
    /* 80AA4E6C */ BOOL sitwaita(void*);
    /* 80AA4F14 */ BOOL sittalka(void*);
    /* 80AA4FBC */ BOOL sittalkab(void*);
    /* 80AA5064 */ BOOL sitwaitb(void*);
    /* 80AA510C */ BOOL sittalkb(void*);
    /* 80AA51B4 */ BOOL sittalkbb(void*);
    /* 80AA525C */ BOOL looka(void*);
    /* 80AA5304 */ BOOL lookb(void*);
    /* 80AA53AC */ BOOL playm(void*);
    /* 80AA5454 */ BOOL turnr(void*);
    /* 80AA5510 */ BOOL turnl(void*);
    /* 80AA55CC */ BOOL walka(void*);
    /* 80AA5634 */ BOOL runa(void*);
    /* 80AA569C */ BOOL runb(void*);
    /* 80AA5704 */ BOOL walkb(void*);
    /* 80AA576C */ BOOL browsea(void*);
    /* 80AA5814 */ BOOL browseb(void*);
    /* 80AA58BC */ BOOL waitTime(void*);

    int getObjNum() { return (fopAcM_GetParam(this) >> 8) & 0xFF; }
    int getTimeHour() { return dKy_darkworld_check() ? dKy_getDarktime_hour() : dKy_getdaytime_hour(); }
    int getTimeMinute() { return dKy_darkworld_check() ? dKy_getDarktime_minute() : dKy_getdaytime_minute(); }
    int getTime() {return (getTimeHour() * 60) + getTimeMinute(); }
    int getDayOfWeek() { return dKy_darkworld_check() ? dKy_getDarktime_week() : dKy_get_dayofweek(); }
    int getEndTime() { return current.angle.x; }
    int getType() { return fopAcM_GetParam(this) & 0xFF; }
    u8 getMoveType() { return (fopAcM_GetParam(this) >> 24) & 0xF; }
    u8 getWalkMotionType() { return (fopAcM_GetParam(this) >> 28) & 3; }
    u8 getRunMotionType() { return fopAcM_GetParam(this) >> 30; }
    u8 getPathID() { return (fopAcM_GetParam(this) >> 16) & 0xFF; }
    BOOL isStop() { return TRUE; }

    static actionFunc ActionTable[5][2];
    static seqFunc* m_funcTbl[28];
    static seqFunc m_seq00_funcTbl[2];
    static seqFunc m_seq01_funcTbl[2];
    static seqFunc m_seq02_funcTbl[2];
    static seqFunc m_seq03_funcTbl[2];
    static seqFunc m_seq04_funcTbl[2];
    static seqFunc m_seq05_funcTbl[4];
    static seqFunc m_seq06_funcTbl[4];
    static seqFunc m_seq07_funcTbl[2];
    static seqFunc m_seq08_funcTbl[7];
    static seqFunc m_seq09_funcTbl[2];
    static seqFunc m_seq10_funcTbl[2];
    static seqFunc m_seq11_funcTbl[6];
    static seqFunc m_seq12_funcTbl[2];
    static seqFunc m_seq13_funcTbl[6];
    static seqFunc m_seq14_funcTbl[2];
    static seqFunc m_seq15_funcTbl[2];
    static seqFunc m_seq16_funcTbl[7];
    static seqFunc m_seq17_funcTbl[2];
    static seqFunc m_seq18_funcTbl[2];
    static seqFunc m_seq19_funcTbl[7];
    static seqFunc m_seq20_funcTbl[2];
    static seqFunc m_seq21_funcTbl[2];
    static seqFunc m_seq22_funcTbl[4];
    static seqFunc m_seq23_funcTbl[7];
    static seqFunc m_seq24_funcTbl[5];
    static seqFunc m_seq25_funcTbl[7];
    static seqFunc m_seq26_funcTbl[3];
    static seqFunc m_seq27_funcTbl[1];

private:
    /* 0xAC8 */ J3DModel* mpModel;
    /* 0xACC */ PathTrace_c m_path;
    /* 0xAF4 */ daNpcPasser_c::actionFunc* mAction;
    /* 0xAF8 */ int mActionIdx;
    /* 0xAFC */ int mPrevActionIdx;
    /* 0xB00 */ int m_objNum;
    /* 0xB04 */ int arg0;
    /* 0xB08 */ int m_dayOfWeek;
    /* 0xB0C */ int m_endTime;
    /* 0xB10 */ f32 field_0xb10;
    /* 0xB14 */ f32 field_0xb14;
    /* 0xB18 */ f32 mPosY;
    /* 0xB1C */ u32 field_0xb1c;
    /* 0xB20 */ s16 mTargetAngleY;
    /* 0xB22 */ u8 field_0xb22;
    /* 0xB23 */ u8 field_0xb23;
    /* 0xB24 */ u8 mPathMode;
    /* 0xB25 */ u8 field_0xb25;
};

STATIC_ASSERT(sizeof(daNpcPasser_c) == 0xb28);


#endif /* D_A_NPC_PASSER_H */
