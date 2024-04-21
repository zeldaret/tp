#ifndef D_A_DOOR_MBOSSL1_H
#define D_A_DOOR_MBOSSL1_H

#include "dolphin/types.h"
#include "f_op/f_op_actor.h"
#include "SSystem/SComponent/c_phase.h"
#include "d/bg/d_bg_w.h"
#include "d/bg/d_bg_s_acch.h"

struct dDoor_stop2_c {
    /* 806728B4 */ void calcMtx(fopAc_ac_c*);
    /* 80672970 */ void closeInit(fopAc_ac_c*, u8);
    /* 80672AE4 */ int closeProc(fopAc_ac_c*);
    /* 80672B70 */ void openInit(fopAc_ac_c*, u8);
    /* 80672CD8 */ int openProc(fopAc_ac_c*);
    /* 80672D80 */ int create(J3DModelData*);
    /* 80672DCC */ void draw(fopAc_ac_c*);
    /* 80672E44 */ f32 getHeight();

    /* 0x0 */ J3DModel* mModel;
    /* 0x4 */ f32 field_0x4;
    /* 0x8 */ u8 field_0x8;
    /* 0x9 */ u8 field_0x9;
    /* 0xA */ u8 field_0xa;
    /* 0xB */ u8 field_0xb;
};

struct daMBdoorL1_c : public fopAc_ac_c {
    enum DoorType {
        DOOR_TYPE_0,
        DOOR_TYPE_1,
        DOOR_TYPE_2,
    };

    enum ActionType {
        ACTION_INIT,
        ACTION_START_DEMO,
        ACTION_WAIT,
        ACTION_CLOSE_WAIT,
        ACTION_OPEN,
        ACTION_DEMO,
        ACTION_STOP_CLOSE,
    };

    typedef int (daMBdoorL1_c::*actionFunc)();

    /* 80672E70 */ char* getAnmArcName();
    /* 80672EE8 */ char* getArcName();
    /* 80672F74 */ char* getAlwaysArcName();
    /* 80672F84 */ int getDoorType();
    /* 80672FE4 */ char* getOpenAnm();
    /* 80673048 */ char* getCloseAnm();
    /* 806730AC */ char* getBmd();
    /* 80673100 */ char* getBtk();
    /* 80673110 */ char* getDzb();
    /* 80673140 */ J3DModelData* getDoorModelData();
    /* 80673164 */ int CreateHeap();
    /* 806735F8 */ void calcMtx();
    /* 80673790 */ int createKey();
    /* 806738CC */ int CreateInit();
    /* 80673B9C */ int create();
    /* 80673E78 */ int getDemoAction();
    /* 80673EC0 */ void demoProc();
    /* 80674AF4 */ int openInit();
    /* 80674DA4 */ int openProc();
    /* 80674FDC */ int openEnd();
    /* 80675068 */ int closeInit();
    /* 806752BC */ int closeProc();
    /* 80675304 */ int closeEnd();
    /* 806753CC */ int unlockInit();
    /* 80675414 */ int unlock();
    /* 80675470 */ int openInitKnob(int);
    /* 80675678 */ int openProcKnob(int);
    /* 80675734 */ int openEndKnob(int);
    /* 80675894 */ void calcGoal(cXyz*, int);
    /* 806759E4 */ int setAngle();
    /* 80675ADC */ void setAngleQuickly();
    /* 80675B30 */ int adjustmentProc();
    /* 80675DB0 */ void setPos();
    /* 80675EE4 */ void setStart(f32, f32);
    /* 80676004 */ void smokeInit2();
    /* 806760B4 */ int checkArea();
    /* 806762A4 */ int checkFront();
    /* 80676308 */ int checkOpen();
    /* 806764D0 */ int checkFrontKey();
    /* 80676568 */ int checkBackKey();
    /* 80676570 */ int checkFrontStop();
    /* 80676610 */ int checkBackStop();
    /* 806766B0 */ int checkFrontSw();
    /* 80676744 */ int checkBackSw();
    /* 806767D8 */ int checkStopOpen();
    /* 8067684C */ int startDemoEnd();
    /* 806769A4 */ int checkMBossRoom();
    /* 806769D0 */ int checkStopClose();
    /* 80676AB4 */ int checkMakeStop();
    /* 80676B64 */ int checkMakeKey();
    /* 80676BE0 */ int actionWait();
    /* 80676BE8 */ int actionCloseWait();
    /* 80676DEC */ int actionStopClose();
    /* 80676E40 */ int actionDemo();
    /* 80676EB4 */ int actionOpen();
    /* 80676ED8 */ int actionInit();
    /* 80676FE4 */ int actionStartDemo();
    /* 80677050 */ int execute();
    /* 80677158 */ int draw();
    /* 806771B4 */ void draw_sub0();
    /* 806772C4 */ void draw_sub1();
    /* 806773DC */ int Delete();

    void setAction(u8 action) {
        mAction = action;
    }

    /* 0x568 */ request_of_phase_process_class mPhase1;
    /* 0x570 */ request_of_phase_process_class mPhase2;
    /* 0x578 */ request_of_phase_process_class mPhase3;
    /* 0x580 */ J3DModel* mModels[2];
    /* 0x588 */ mDoExt_bckAnm* mBckAnms[2];
    /* 0x590 */ mDoExt_bckAnm* field_0x590;
    /* 0x594 */ mDoExt_btkAnm* field_0x594;
    /* 0x598 */ dBgW* field_0x598;
    /* 0x59C */ Mtx field_0x59c;
    /* 0x5CC */ u8 mAction;
    /* 0x5CD */ u8 field_0x5cd;
    /* 0x5CE */ s16 field_0x5ce;
    /* 0x5D0 */ s16 field_0x5d0;
    /* 0x5D2 */ s16 field_0x5d2;
    /* 0x5D4 */ s16 field_0x5d4[4];
    /* 0x5DC */ u8 field_0x5dc;
    /* 0x5DE */ u8 field_0x5dd;
    /* 0x5DE */ u8 field_0x5de;
    /* 0x5DF */ u8 field_0x5df;
    /* 0x5E0 */ u8 field_0x5e0;
    /* 0x5E1 */ u8 field_0x5e1;
    /* 0x5E4 */ u32 field_0x5e4;
    /* 0x5E8 */ u32 field_0x5e8;
    /* 0x5EC */ int field_0x5ec;
    /* 0x5F0 */ u32 mStopperId;
    /* 0x5F4 */ s32 mKeyHoleId;
    /* 0x5F8 */ dDoor_stop2_c mDoorStop;
    /* 0x604 */ dBgS_ObjAcch field_0x604;
    /* 0x81C */ dBgS_AcchCir field_0x7dc;
    /* 0x81C */ cXyz field_0x81c;
    /* 0x828 */ cXyz field_0x828;
};

#endif /* D_A_DOOR_MBOSSL1_H */
