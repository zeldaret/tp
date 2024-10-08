#ifndef D_A_DOOR_KNOB00_H
#define D_A_DOOR_KNOB00_H

#include "f_op/f_op_actor.h"
#include "SSystem/SComponent/c_phase.h"
#include "d/d_bg_w.h"
#include "d/d_msg_flow.h"

/**
 * @ingroup actors-doors
 * @class daKnob20_c
 * @brief Knob Door
 *
 * @details
 *
 */
class daKnob20_c : public fopAc_ac_c {
public:
    enum {
        ACTION_INIT,
        ACTION_WAIT,
        ACTION_DEMO,
        ACTION_TALK,
        ACTION_TALK_WAIT,
        ACTION_TALK_OPEN,
        ACTION_DEAD,
        ACTION_SPECIAL_DEMO,
    };

    typedef int (daKnob20_c::*actionFunc)();

    /* 8045E888 */ char* getAlwaysArcName();
    /* 8045E898 */ char* getEvArcName();
    /* 8045E8A8 */ char* getDzb();
    /* 8045E8B8 */ char* getDummyBmd();
    /* 8045E8C8 */ char* getBmd();
    /* 8045E91C */ J3DModelData* getDoorModelData();
    /* 8045E960 */ int CreateHeap();
    /* 8045EBA0 */ void calcMtx();
    /* 8045EC44 */ int CreateInit();
    /* 8045ED1C */ int create();
    /* 8045EE5C */ int checkOpenDoor(int*);
    /* 8045EEE4 */ void setActionFromFlow();
    /* 8045EFCC */ void setEventId();
    /* 8045F058 */ int checkArea(f32, f32, f32);
    /* 8045F29C */ void setEventPrm();
    /* 8045F428 */ int releaseBG();
    /* 8045F478 */ int frontCheck();
    /* 8045F520 */ int getDemoAction();
    /* 8045F568 */ int demoProc();
    /* 8045F8A4 */ void setStart(f32, f32);
    /* 8045F94C */ void setAngle();
    /* 8045F968 */ int adjustmentProc();
    /* 8045FA98 */ int openInit(int);
    /* 8045FBF8 */ int openProc(int);
    /* 8045FCA4 */ int openEnd(int);
    /* 8045FDF8 */ void initOpenDemo();
    /* 8045FE68 */ void startDemoProc();
    /* 8045FF08 */ int actionWait();
    /* 8045FFB0 */ int actionSpecialDemo();
    /* 8046002C */ int actionDemo();
    /* 804600C0 */ int actionTalk();
    /* 8046012C */ int actionTalkWait();
    /* 804601D4 */ int actionTalkOpen();
    /* 8046027C */ int actionInit();
    /* 804602D8 */ int actionDead();
    /* 804602E0 */ int execute();
    /* 8046045C */ int draw();
    /* 80460550 */ int Delete();

    void setAction(u8 action) { mAction = action; }
    void offFlag(u16 flag) { field_0x60c &= ~flag; }
    void onFlag(u16 flag) { field_0x60c |= flag; }
    int checkFlag(u16 flag) { return field_0x60c & flag; }

private:
    /* 0x568 */ request_of_phase_process_class mPhase1;
    /* 0x570 */ request_of_phase_process_class mPhase2;
    /* 0x578 */ J3DModel* mModel1;
    /* 0x57C */ mDoExt_bckAnm field_0x57c;
    /* 0x598 */ J3DModel* mModel2;
    /* 0x59C */ s8 mJoint;
    /* 0x5A0 */ dBgW* field_0x5a0;
    /* 0x5A4 */ s16 field_0x5a4[7];
    /* 0x5B2 */ u8 field_0x5b2[7];
    /* 0x5B9 */ u8 field_0x5b9;
    /* 0x5BA */ u16 field_0x5ba;
    /* 0x5BC */ int field_0x5bc;
    /* 0x5C0 */ dMsgFlow_c field_0x5c0;
    /* 0x60C */ u16 field_0x60c;
    /* 0x60E */ u8 mAction;
    /* 0x60F */ u8 field_0x60f;
    /* 0x610 */ s16 field_0x610;
    /* 0x612 */ s16 field_0x612;
    /* 0x614 */ s16 field_0x614;
};

STATIC_ASSERT(sizeof(daKnob20_c) == 0x618);

class knob_param_c {
public:
    /* 8045E858 */ static u32 getDoorModel(fopAc_ac_c*);
    /* 8045E864 */ static u32 getDoorLightInf(fopAc_ac_c*);
    /* 8045E870 */ static u16 getMsgNo(fopAc_ac_c*);
    /* 8045E87C */ static u8 getExitNo(fopAc_ac_c*);
};

#endif /* D_A_DOOR_KNOB00_H */
