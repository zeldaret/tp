#ifndef D_A_OBJ_SEKIZOA_H
#define D_A_OBJ_SEKIZOA_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-objects
 * @class daObj_Sekizoa_c
 * @brief Stone Guardian Statue(s)
 *
 * @details
 *
 */
class daObj_Sekizoa_c : public daNpcT_c {
public:
    typedef void (daObj_Sekizoa_c::*cutFunc)(int);

    /* 80CCE34C */ ~daObj_Sekizoa_c();
    /* 80CCE570 */ void create();
    /* 80CCE8B0 */ void CreateHeap();
    /* 80CCEC54 */ void Delete();
    /* 80CCEC88 */ void Execute();
    /* 80CCECA8 */ void Draw();
    /* 80CCED74 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80CCED94 */ void srchSekizoa(void*, void*);
    /* 80CCEE30 */ void getSekizoaP(int);
    /* 80CCEFA4 */ void getKMsgTagP();
    /* 80CCF03C */ void isDelete();
    /* 80CCF138 */ void reset();
    /* 80CCF708 */ void srchActors();
    /* 80CD04FC */ void setYariAnm(int, int, f32);
    /* 80CD0A84 */ void selectAction();
    /* 80CD0B08 */ void chkAction(int (daObj_Sekizoa_c::*)(void*));
    /* 80CD0B34 */ void setAction(int (daObj_Sekizoa_c::*)(void*));
    /* 80CD0BDC */ void checkMoveDirection();
    /* 80CD0DE8 */ void getWaitMotionNo();
    /* 80CD0E30 */ void getGameMotionNo();
    /* 80CD0E78 */ void getNoJumpMotionNo();
    /* 80CD0EAC */ void getHitMotionNo();
    /* 80CD0EE0 */ void getStepMotionNo();
    /* 80CD0F14 */ void jump();
    /* 80CD14D8 */ void landing();
    /* 80CD1688 */ void cutStart(int);
    /* 80CD2708 */ void cutTurn(int);
    /* 80CD2908 */ void cutJump(int);
    /* 80CD2B64 */ void cutGoal(int);
    /* 80CD376C */ void cutExit(int);
    /* 80CD38F0 */ void cutFree(int);
    /* 80CD3BD8 */ void cutExtinction(int);
    /* 80CD3F08 */ void wait(void*);
    /* 80CD425C */ void puzzle(void*);
    /* 80CD45B0 */ void talk(void*);
    /* 80CD5A40 */ daObj_Sekizoa_c(daNpcT_faceMotionAnmData_c const* param_1, daNpcT_motionAnmData_c const* param_2,
             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_3, int param_4,
             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_5, int param_6, daNpcT_evtData_c const* param_7,
             char** param_8) : daNpcT_c(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8){}
    /* 80CD5B84 */ void chkGoal();

    /* 80CD5B7C */ s32 getBackboneJointNo() { return 1; }
    /* 80CD5B74 */ s32 getHeadJointNo() { return 3; }
    /* 80CCF358 */ void afterJntAnm(int);
    /* 80CCF3E4 */ void setParam();
    /* 80CCF6BC */ BOOL checkChangeEvt();
    /* 80CCF9A8 */ BOOL evtTalk();
    /* 80CCFAA8 */ BOOL evtCutProc();
    /* 80CCF704 */ void setAfterTalkMotion();
    /* 80CCFBA0 */ void action();
    /* 80CCFD08 */ void beforeMove();
    /* 80CCFD80 */ void setAttnPos();
    /* 80CD009C */ void setCollision();
    /* 80CD03C0 */ int drawDbgInfo();
    /* 80CD03C8 */ void drawOtherMdl();
    /* 80CD05D0 */ void drawGhost();
    /* 80CD06BC */ bool afterSetMotionAnm(int, int, f32, int);

    void setWolfHowling() {
        if (field_0x10c8 != 0) {
            fopAc_ac_c* actor_p = field_0x10e4.getActorP();
            JUT_ASSERT(0x1A3, 0 != actor_p);

            ((daObj_Sekizoa_c*)actor_p)->setWolfHowling();
        } else {
            field_0x1173 = 1;
        }
    }

    u8 getType() {
        int prm = fopAcM_GetParam(this) >> 0x1C;

        u8 type;
        switch (subtype) {
        case 0:
            switch (prm) {
            case 1:
                type = 2;
                break;
            case 2:
                type = 4;
                break;
            case 3:
                type = 6;
                break;
            default:
                type = 0;
                break;
            }
            break;
        case 1:
            switch (prm) {
            case 1:
                type = 3;
                break;
            case 2:
                type = 5;
                break;
            default:
                type = 1;
                break;
            }
            break;
        default:
            type = 0;
            break;
        }

        return type;
    }

    static char* mCutNameList[9];
    static cutFunc mCutList[9];

    /* 0x0E40 */ u8 field_0xe40[0x10C8 - 0xE40];
    /* 0x10C8 */ u8 field_0x10c8;
    /* 0x10C9 */ u8 field_0x10c9[0x10E4 - 0x10C9];
    /* 0x10E4 */ daNpcT_ActorMngr_c field_0x10e4;
    /* 0x10EC */ u8 field_0x10ec[0x1173 - 0x10ec];
    /* 0x1173 */ u8 field_0x1173;
    /* 0x1174 */ u8 field_0x1174[0x1180 - 0x1174];
};

struct daObj_Sekizoa_Param_c {
    /* 80CD5C30 */ virtual ~daObj_Sekizoa_Param_c() {}

    static u8 const m[156];
};

#endif /* D_A_OBJ_SEKIZOA_H */
