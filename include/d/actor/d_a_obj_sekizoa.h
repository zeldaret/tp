#ifndef D_A_OBJ_SEKIZOA_H
#define D_A_OBJ_SEKIZOA_H

#include "d/actor/d_a_npc.h"
// #include "d/actor/d_a_bg_obj.h"
#include "d/actor/d_a_tag_evtarea.h"

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
    typedef int (daObj_Sekizoa_c::*cutFunc)(int);
    typedef int (daObj_Sekizoa_c::*actionFunc)(void *);

    /* 80CCE34C */ ~daObj_Sekizoa_c();
    /* 80CCE570 */ int create();
    /* 80CCE8B0 */ int CreateHeap();
    /* 80CCEC54 */ int Delete();                                                // DONE
    /* 80CCEC88 */ void Execute();                                              // DONE
    /* 80CCECA8 */ void Draw();                                                 // DONE UP TO @XXXX
    /* 80CCED74 */ static int createHeapCallBack(fopAc_ac_c*);                  // DONE
    /* 80CCED94 */ static void* srchSekizoa(void*, void*);                      // ALMOST DONE
    /* 80CCEE30 */ fopAc_ac_c* getSekizoaP(int);
    /* 80CCEFA4 */ fopAc_ac_c* getKMsgTagP();
    /* 80CCF03C */ int isDelete();
    /* 80CCF138 */ void reset();
    /* 80CCF708 */ void srchActors();                                           // ALMOST DONE
    /* 80CD04FC */ void setYariAnm(int, int, f32);
    /* 80CD0A84 */ int selectAction();
    /* 80CD0B08 */ int chkAction(actionFunc i_action);                          // DONE
    /* 80CD0B34 */ int setAction(actionFunc i_action);                          // DONE
    /* 80CD0BDC */ void checkMoveDirection();
    /* 80CD0DE8 */ int getWaitMotionNo();                                       // DONE
    /* 80CD0E30 */ int getGameMotionNo();                                       // DONE
    /* 80CD0E78 */ int getNoJumpMotionNo();                                     // DONE
    /* 80CD0EAC */ int getHitMotionNo();                                        // DONE
    /* 80CD0EE0 */ int getStepMotionNo();                                       // DONE
    /* 80CD0F14 */ void jump();
    /* 80CD14D8 */ void landing();
    /* 80CD1688 */ int cutStart(int);
    /* 80CD2708 */ int cutTurn(int);
    /* 80CD2908 */ int cutJump(int);
    /* 80CD2B64 */ int cutGoal(int);
    /* 80CD376C */ int cutExit(int);
    /* 80CD38F0 */ int cutFree(int);
    /* 80CD3BD8 */ int cutExtinction(int);
    /* 80CD3F08 */ int wait(void*);
    /* 80CD425C */ int puzzle(void*);
    /* 80CD45B0 */ int talk(void*);
    /* 80CD5A40 */ daObj_Sekizoa_c(daNpcT_faceMotionAnmData_c const* param_1, daNpcT_motionAnmData_c const* param_2,
             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_3, int param_4,
             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_5, int param_6, daNpcT_evtData_c const* param_7,
             char** param_8) : daNpcT_c(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8){}
    /* 80CD5B84 */ int chkGoal();

    /* 80CD5B7C */ s32 getBackboneJointNo() { return 1; }
    /* 80CD5B74 */ s32 getHeadJointNo() { return 3; }
    /* 80CCF358 */ void afterJntAnm(int);                                       // DONE
    /* 80CCF3E4 */ void setParam();
    /* 80CCF6BC */ BOOL checkChangeEvt();                                       // ALMOST DONE
    /* 80CCF9A8 */ BOOL evtTalk();
    /* 80CCFAA8 */ BOOL evtCutProc();                                           // DONE
    /* 80CCF704 */ void setAfterTalkMotion();                                   // DONE
    /* 80CCFBA0 */ void action();
    /* 80CCFD08 */ void beforeMove();
    /* 80CCFD80 */ void setAttnPos();
    /* 80CD009C */ void setCollision();
    /* 80CD03C0 */ int drawDbgInfo();
    /* 80CD03C8 */ void drawOtherMdl();
    /* 80CD05D0 */ void drawGhost();
    /* 80CD06BC */ bool afterSetMotionAnm(int, int, f32, int);

    void setWolfHowling() {
        if (mParamCreate != 0) {
            fopAc_ac_c* actor_p = mActorMngrs4.getActorP();
            JUT_ASSERT(0x1A3, 0 != actor_p);

            ((daObj_Sekizoa_c*)actor_p)->setWolfHowling();
        } else {
            mSetWolfHowling = 1;
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

    uint getBitSW() {
        return fopAcM_GetParam(this) & 0xff;
    }

    uint getBitSW2() {
        return (fopAcM_GetParam(this) & 0xff00) >> 8;
    }

    static char* mCutNameList[9];
    static cutFunc mCutList[9];

    // /* 0x0E40 */ u8 field_0xe40[0x10C8 - 0xE40];
    // /* 0x10C8 */ u8 field_0x10c8;
    // /* 0x10C9 */ u8 field_0x10c9[0x10E4 - 0x10C9];
    // /* 0x10E4 */ daNpcT_ActorMngr_c field_0x10e4;            OFFSET BETWEEN DEBUG AND RETAIL
    // /* 0x10EC */ u8 field_0x10ec[0x1173 - 0x10ec];           0x50
    // /* 0x1173 */ u8 field_0x1173;
    // /* 0x1174 */ u8 field_0x1174[0x1180 - 0x1174];

    /* 0x0E40 */ mDoExt_McaMorf* mpMcaMorf;
    /* 0x0E44 */ mDoExt_invisibleModel mInvModel;
    /* 0x0E4C */ u8 field_0x0E4C[4];                    // Padding
    /* 0x0E50 */ dCcD_Cyl mCyl;
    /* 0x0F8C */ dCcD_Cyl mCyl2;
    /* 0x10C8 */ u8 mParamCreate;
    /* 0x10C9 */ u8 field_0x10C9[3];                    // Padding
    /* 0x10CC */ daNpcT_ActorMngr_c mActorMngrs;
    /* 0x10D4 */ daNpcT_ActorMngr_c mActorMngrs2;
    /* 0x10DC */ daNpcT_ActorMngr_c mActorMngrs3;
    /* 0x10E4 */ daNpcT_ActorMngr_c mActorMngrs4;       // wolf statue or wolf link ?
    /* 0x10EC */ daNpcT_ActorMngr_c mActorMngrs5;
    /* 0x10F4 */ daNpcT_ActorMngr_c mActorMngrs6;       // Statue A
    /* 0x10FC */ daNpcT_ActorMngr_c mActorMngrs7;       // Statue B
    /* 0x1104 */ daNpcT_ActorMngr_c mActorMngrs8;
    /* 0x110C */ actionFunc mInitFunc;
    /* 0x1118 */ actionFunc mExecuteFunc;
    /* 0x1124 */ daNpcT_Path_c mPath;
    /* 0x1146 */ u8 field_0x1146[2];                    // Padding
    /* 0x1148 */ s32 mpPointerUKN;
    /* 0x114C */ cXyz mCXyzJump;
    /* 0x1158 */ int mIntCutJump;
    /* 0x115C */ float mFloatJump2;
    /* 0x1160 */ float mFloatJump;
    /* 0x1164 */ float mFloatCutStart;
    /* 0x1168 */ float mFloatCutGoal2;
    /* 0x116C */ float mFloatCutGoal;
    /* 0x1170 */ s16 mHalfCutTurn;
    /* 0x1172 */ u8 mReset;
    /* 0x1173 */ u8 mSetWolfHowling;
    /* 0x1174 */ u8 field_0x1174[2];                    // Padding
    /* 0x1176 */ bool mSetFadeLightOff;
    /* 0x1177 */ u8 field_0x1177;                       // Padding
    /* 0x1178 */ bool mSetFadeLightOff2;
    /* 0x1179 */ u8 field_0x1179;                       // Padding
    /* 0x117A */ bool mChkGoal;
    /* 0x117B */ u8 field_0x117B[5];                    // Padding
};

struct daObj_Sekizoa_Param_c {
    /* 80CD5C30 */ virtual ~daObj_Sekizoa_Param_c() {}

    static u8 const m[156];
};

#endif /* D_A_OBJ_SEKIZOA_H */
