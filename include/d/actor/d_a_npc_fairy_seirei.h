#ifndef D_A_NPC_FAIRY_SEIREI_H
#define D_A_NPC_FAIRY_SEIREI_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_FairySeirei_c
 * @brief Fairy Spirit
 *
 * @details
 *
 */
class daNpc_FairySeirei_c : public fopAc_ac_c {
public:
    /* 8053FF6C */ ~daNpc_FairySeirei_c();
    /* 8054006C */ void create();
    /* 80540298 */ void Delete();
    /* 805402CC */ void Execute();
    /* 805402EC */ bool Draw();
    /* 805402F4 */ void isDelete();
    /* 80540334 */ void reset();
    /* 8054048C */ void setParam();
    /* 805405B0 */ void srchActors();
    /* 805405B4 */ void evtTalk();
    /* 805406BC */ void evtCutProc();
    /* 80540784 */ void action();
    /* 8054080C */ void beforeMove();
    /* 80540884 */ void setCollision();
    /* 80540988 */ void setAttnPos();
    /* 80540A30 */ bool drawDbgInfo();
    /* 80540A38 */ void selectAction();
    /* 80540A80 */ void setAction(int (daNpc_FairySeirei_c::*)(int));
    /* 80540B28 */ void setPrtcls();
    /* 80540C54 */ void wait(int);
    /* 80540CC0 */ void talk(int);
    /* 80540E10 */ void _to_FairyCave();
    /* 80541BE4 */ daNpc_FairySeirei_c(daNpcT_faceMotionAnmData_c const*,
                                       daNpcT_motionAnmData_c const*,
                                       daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                       daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                       daNpcT_evtData_c const*, char**);

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0xfb0 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_FairySeirei_c) == 0xfb0);

class daNpc_FairySeirei_Param_c {
public:
    /* 80541D20 */ ~daNpc_FairySeirei_Param_c();

    static u8 const m[148];
};


#endif /* D_A_NPC_FAIRY_SEIREI_H */
