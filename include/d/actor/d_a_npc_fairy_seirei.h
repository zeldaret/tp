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
class daNpc_FairySeirei_c : public daNpcT_c {
public:
    typedef int (daNpc_FairySeirei_c::*cutFunc)(int);
    typedef int (daNpc_FairySeirei_c::*actionFunc)(int);

    /* 8053FF6C */ ~daNpc_FairySeirei_c();
    /* 8054006C */ int create();
    /* 80540298 */ int Delete();
    /* 805402CC */ int Execute();
    /* 805402EC */ int Draw();
    /* 805402F4 */ int isDelete();
    /* 80540334 */ void reset();
    /* 8054048C */ void setParam();
    /* 805405B0 */ void srchActors();
    /* 805405B4 */ BOOL evtTalk();
    /* 805406BC */ BOOL evtCutProc();
    /* 80540784 */ void action();
    /* 8054080C */ void beforeMove();
    /* 80540884 */ void setCollision();
    /* 80540988 */ void setAttnPos();
    /* 80540A30 */ BOOL drawDbgInfo();
    /* 80540A38 */ bool selectAction();
    /* 80540A80 */ bool setAction(actionFunc);
    /* 80540B28 */ void setPrtcls();
    /* 80540C54 */ int wait(int);
    /* 80540CC0 */ int talk(int);
    /* 80540E10 */ void _to_FairyCave();
    /* 80541BE4 */ daNpc_FairySeirei_c(daNpcT_faceMotionAnmData_c const* param_1,
                                       daNpcT_motionAnmData_c const* param_2,
                                       daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_3, int param_4,
                                       daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_5, int param_6,
                                       daNpcT_evtData_c const* param_7, char** param_8)
                                       : daNpcT_c(param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8) {}

    static char* mCutNameList;
    static cutFunc mCutList[1];

    u8 getType() { return fopAcM_GetParam(this) & 0xFF; }

    u32 getFlowNodeNo() {
        u32 ret;
        ret = home.angle.x;
        if (ret != 0xFFFF) {
            ret = -1;
        }
        return ret;
    }

    BOOL chkAction(actionFunc i_action) {
        return (mExecuteFunc == i_action);
    }

    void ptcl_se() {
        mSound.startCreatureSoundLevel(Z2SE_FAIRY_STAY, 0, -1);
    }

    int getSeneNo() { return (fopAcM_GetParam(this) >> 8) & 0xFF; }

private:
    /* 0xE40 */ u8 field_0xE40[4];
    /* 0xE44 */ u8 mCreate;
    /* 0xE48 */ dCcD_Cyl mCyl;
    // /* 0xF84 */ f32 mReset;
    // /* 0xF88 */ u32 mAction1;
    // /* 0xF8C */ u32 mAction2;
    /* 0xF84 */ actionFunc mInitFunc;
    /* 0xF90 */ actionFunc mExecuteFunc;
    // /* 0xF90 */ actionFunc mActionFunc;
    /* 0xF90 */ u8 field_0xF90[4];
    /* 0xF98 */ JPABaseEmitter* mEmitters[3];
    /* 0xFA8 */ u8 mTalk;
    // /* 0xFA9 */ u8 field_0xFA9[7];
};

STATIC_ASSERT(sizeof(daNpc_FairySeirei_c) == 0xfb0);

class daNpc_FairySeirei_Param_c {
public:
    /* 80541D20 */ ~daNpc_FairySeirei_Param_c();

    static f32 const m[37];
};


#endif /* D_A_NPC_FAIRY_SEIREI_H */
