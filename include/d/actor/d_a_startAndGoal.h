#ifndef D_A_STARTANDGOAL_H
#define D_A_STARTANDGOAL_H

#include "d/actor/d_a_npc4.h"

class daStartAndGoal_Path_c : public daNpcF_Path_c {
public:
    /* 80D4D7B8 */ BOOL chkPassed2(cXyz);

    /* 80D4D928 */ virtual ~daStartAndGoal_Path_c();
};

class daStartAndGoal_c : public fopAc_ac_c {
public:
    /* 80D4D84C */ int getType();
    /* 80D4D884 */ int Create();
    /* 80D4D998 */ void init();
    /* 80D4DA68 */ void actorPosCheck();
    /* 80D4DB30 */ int readyStartTimer();
    /* 80D4DBAC */ BOOL isStartCheck();
    /* 80D4DBD0 */ BOOL isReadyCheck();
    /* 80D4DC50 */ int Execute();
    /* 80D4DCF4 */ int Draw();
    /* 80D4DCFC */ int Delete();

    /* 0x568 */ daStartAndGoal_Path_c mPath;
    /* 0xB98 */ u8 field_0xb98;
    /* 0xB99 */ u8 mType;
    /* 0xB9C */ int mAction;
    /* 0xBA0 */ bool mStarted;
};

#endif /* D_A_STARTANDGOAL_H */
