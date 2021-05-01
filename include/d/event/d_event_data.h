#ifndef D_EVENT_D_EVENT_DATA_H
#define D_EVENT_D_EVENT_DATA_H

#include "d/d_stage.h"
#include "d/save/d_save.h"
#include "dolphin/types.h"

struct dEvDtStaff_c {
    /* 80043FD8 */ void specialProc_WaitStart(int);
    /* 8004403C */ void specialProc_WaitProc(int);
    /* 80044080 */ void specialProc();
    /* 80044134 */ void init();
    /* 80044170 */ void advanceCut(int);
    /* 80044190 */ void specialProcLight();
    /* 80044324 */ void specialProcMessage();
    /* 80044A58 */ void specialProcSound();
    /* 80044CB8 */ void specialProcCreate();
    /* 80044EE4 */ void specialProcDirector();
    /* 80045878 */ void specialProcPackage();
    /* 80045AFC */ void specialProcTimekeeper();
    /* 80045C34 */ void specialProcEffect();
};

struct dEvDtEvent_c {
    /* 80043E78 */ void finishCheck();
    /* 80043EFC */ void forceFinish();
    /* 80043F70 */ void specialStaffProc(dEvDtStaff_c*);
};

class dEvDtFlag_c {
public:
    /* 80043D60 */ void flagCheck(int);
    /* 80043DC8 */ void flagSet(int);
    /* 80043E30 */ void flagMaxCheck(int);
    /* 80043E58 */ void init();

private:
    u8 field_0x0[320];
};
#pragma pack(push, 1)
class dEvDtBase_c {
public:
    dEvDtBase_c();
    /* 80046138 */ void init();
    /* 8004616C */ void init(char*, int);
    /* 8004628C */ void advanceCut(dEvDtEvent_c*);
    /* 800462FC */ void advanceCutLocal(dEvDtStaff_c*);

private:
    u32 field_0x0;
    u32 field_0x4;
    u32 field_0x8;
    u32 field_0xc;
    u32 field_0x10;
    u32 field_0x14;
    u32 field_0x18;
    u32 field_0x1c;
    u32 field_0x20;
};
#pragma pack(pop)

#endif /* D_EVENT_D_EVENT_DATA_H */
