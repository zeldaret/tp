#ifndef D_A_DOOR_SHUTTER_H
#define D_A_DOOR_SHUTTER_H

#include "dolphin/types.h"
#include "f_op/f_op_actor.h"
#include "SSystem/SComponent/c_phase.h"
#include "d/bg/d_bg_w.h"
#include "d/msg/d_msg_flow.h"
#include "d/bg/d_bg_s_acch.h"

struct daDoor20_c;

struct dDoor_stop_c {
    /* 804660F4 */ void calcMtx(daDoor20_c*);
    /* 804661B0 */ void closeInit(daDoor20_c*);
    /* 804662C0 */ int closeProc(daDoor20_c*);
    /* 8046634C */ void openInit(daDoor20_c*);
    /* 80466458 */ int openProc(daDoor20_c*);
    /* 804664E8 */ int create(daDoor20_c*);
    /* 80466538 */ void draw(daDoor20_c*);

    J3DModel* field_0x0;
    f32 field_0x4;
    u8 field_0x8;
    u8 field_0x9;
    u8 field_0xa;
    u8 field_0xb;
};

struct daDoor20_c : public fopAc_ac_c {
    enum ActionType {
        ACTION_INIT,
        ACTION_WAIT,
        ACTION_STOP_CLOSE,
        ACTION_DEMO,
    };

    /* 80460B38 */ char* getStopBmdName();
    /* 80460B70 */ J3DModelData* getStopModelData();
    /* 80460B94 */ char* getAlwaysArcName();
    /* 80460BA4 */ char* getArcName();
    /* 80460C40 */ char* getBmdName();
    /* 80460CF0 */ char* getBtk();
    /* 80460D5C */ J3DModelData* getModelData();
    /* 80460D80 */ f32 getSize2X();
    /* 80460DAC */ int CreateHeap();
    /* 8046129C */ void setEventPrm();
    /* 804616EC */ int checkOpenMsgDoor(int*);
    /* 8046178C */ int adjustmentAngle();
    /* 80461874 */ int adjustmentProc();
    /* 80461A44 */ void setAngle();
    /* 80461A60 */ void openInit_0();
    /* 80461D24 */ void openInit_1();
    /* 80461EC4 */ int openInit(int);
    /* 80461F60 */ int openProc(int);
    /* 804622A8 */ void openEnd_0();
    /* 804622AC */ void openEnd_1();
    /* 80462328 */ int openEnd(int);
    /* 80462398 */ void closeInit_0();
    /* 8046266C */ void closeInit_1();
    /* 80462738 */ int closeInit(int);
    /* 804627C4 */ int closeProc(int);
    /* 804627E8 */ void closeEnd_0();
    /* 804627EC */ void closeEnd_1();
    /* 80462868 */ int closeEnd(int);
    /* 80462928 */ void openInit2();
    /* 80462A1C */ void closeEnd2();
    /* 80462A5C */ void calcMtx_2();
    /* 80462B58 */ void calcMtx();
    /* 80462C2C */ int CreateInit();
    /* 80462EB4 */ void setKey();
    /* 80462F2C */ int create();
    /* 80462FE0 */ int demoProc();
    /* 80463E30 */ int orderStopEvent();
    /* 80463FBC */ int actionWait();
    /* 80464118 */ int actionStopClose();
    /* 8046416C */ int actionDemo();
    /* 804641EC */ int actionInit();
    /* 80464240 */ int execute();
    /* 804643B0 */ int draw();
    /* 80464638 */ void setDoorAngleSpec();
    /* 804647BC */ int _delete();
    /* 80464858 */ int createKey();
    /* 80464AE4 */ int deleteKey();
    /* 80464B3C */ int adjoinPlayer();
    /* 80464BD8 */ int frontCheckOld();
    /* 80464C68 */ int frontCheck();
    /* 80464CEC */ int drawCheck(int);
    /* 80464E18 */ int checkExecute();
    /* 80464EC4 */ void startDemoProc();
    /* 80464F64 */ void makeEventId();
    /* 804653B0 */ void initProc();
    /* 80465400 */ void initOpenDemo(int);
    /* 80465490 */ int checkArea(f32, f32, f32);
    /* 80465620 */ void openInitCom(int);
    /* 804656F0 */ void closeEndCom();
    /* 8046581C */ void getRestartPos(cXyz*);
    /* 80465960 */ void setGoal();
    /* 80465AC0 */ int chkMakeStop();
    /* 80465B34 */ int chkStopF();
    /* 80465C04 */ int chkStopB();
    /* 80465CC0 */ void setStopDemo();
    /* 80465DA8 */ int chkStopClose();
    /* 80465E8C */ void setStop();
    /* 80465F20 */ int chkStopOpen();
    /* 8046609C */ int chkMakeKey();

    /* 80460D00 */ virtual char* getDzbName();
    /* 80465918 */ virtual int getDemoAction();

    void onFlag(u16 flag) { field_0x68e |= flag; }
    void offFlag(u16 flag) { field_0x68e &= ~flag; }
    bool checkFlag(u16 flag) { return field_0x68e & flag; }
    void setAction(u8 action) { mAction = action; }

    /* 0x56C */ request_of_phase_process_class mPhase1;
    /* 0x574 */ request_of_phase_process_class mPhase2;
    /* 0x57C */ J3DModel* mModel1;
    /* 0x580 */ J3DModel* mModel2;
    /* 0x584 */ mDoExt_bckAnm field_0x584;
    /* 0x5A0 */ mDoExt_bckAnm field_0x5a0;
    /* 0x5BC */ J3DModel* field_0x5bc;
    /* 0x5C0 */ mDoExt_btkAnm* field_0x5c0;
    /* 0x5C4 */ dBgW* field_0x5c4;
    /* 0x5C8 */ s8 field_0x5c8;
    /* 0x5C9 */ bool field_0x5c9;
    /* 0x5CA */ u8 field_0x5ca[0x5dd - 0x5ca];
    /* 0x5DD */ u8 field_0x5dd;
    /* 0x5E0 */ cXyz field_0x5e0;
    /* 0x5EC */ u32 field_0x5ec;
    /* 0x5F0 */ bool field_0x5f0;
    /* 0x5F1 */ u8 field_0x5f1;
    /* 0x5F4 */ Mtx field_0x5f4;
    /* 0x624 */ dMsgFlow_c field_0x624;
    /* 0x670 */ s16 field_0x670;
    /* 0x672 */ bool field_0x672;
    /* 0x673 */ u8 field_0x673;
    /* 0x674 */ u8 field_0x674;
    /* 0x678 */ int field_0x678;
    /* 0x67C */ u8 field_0x67c;
    /* 0x67D */ s8 field_0x67d;
    /* 0x67E */ u8 field_0x67e;
    /* 0x67F */ u8 field_0x67f;
    /* 0x680 */ cXyz field_0x680;
    /* 0x68C */ u8 field_0x68c;
    /* 0x68D */ u8 field_0x68d;
    /* 0x68E */ u16 field_0x68e;
    /* 0x690 */ u8 mAction;
    /* 0x691 */ u8 field_0x691;
    /* 0x692 */ s16 field_0x692[19];
    /* 0x6B8 */ u8 field_0x6b8[19];
    /* 0x6CB */ u8 field_0x6cb;
    /* 0x6CC */ u32 field_0x6cc;
    /* 0x6D0 */ dDoor_stop_c mDoorStop;
    /* 0x6DC */ s16 field_0x6dc;
    /* 0x6DE */ dBgS_ObjAcch field_0x6de;
    /* 0x8B8 */ dBgS_AcchCir field_0x8b8;
    /* 0x8F8 */ u32 field_0x8f8;
};

#endif /* D_A_DOOR_SHUTTER_H */
