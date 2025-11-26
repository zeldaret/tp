#ifndef D_A_DOOR_SPIRAL_H
#define D_A_DOOR_SPIRAL_H

#if DEBUG

#include "SSystem/SComponent/c_phase.h"
#include "d/d_bg_w.h"
#include "f_op/f_op_actor.h"

class daSpiral_c;

class dSpiral_stop_c {
public:
    /* 80827980 */ BOOL create(daSpiral_c*);
    /* 80827AF0 */ int remove(daSpiral_c*);
    /* 80827B40 */ void calcMtx(daSpiral_c*);
    /* 80827C80 */ void openInit(daSpiral_c*);
    /* 80827CA0 */ bool openProc(daSpiral_c*);
    /* 80827D20 */ void closeInit(daSpiral_c*);
    /* 80827D40 */ bool closeProc(daSpiral_c*);
    /* 80827DB0 */ void draw(daSpiral_c*);
    /* 80827E30 */ BOOL regist(daSpiral_c*);
    /* 80827EB0 */ BOOL release(daSpiral_c*);

    /* 0x00 */ J3DModel* mModel;
    /* 0x04 */ dBgW* mpBgW;
    /* 0x08 */ u8 field_0x8[0x38 - 0x8];
    /* 0x38 */ Mtx mMtx;
    /* 0x68 */ f32 field_0x68;
    /* 0x6C */ f32 field_0x6c;
    /* 0x70 */ u8 field_0x70;
    /* 0x71 */ u8 field_0x71;
    /* 0x72 */ u8 field_0x72;
};

class daSpiral_c : public fopAc_ac_c {
public:
    /* 80825050 */ char* getAlwaysArcName();
    /* 80825080 */ char* getSpiralDzbName(int);
    /* 808250A0 */ char* getDzb();
    /* 808250B0 */ char* getBmdArcName();
    /* 808250C0 */ char* getEvArcName();
    /* 808250D0 */ char* getBmd(int);
    /* 808250F0 */ char* getBmd2(int);
    /* 80825160 */ J3DModelData* getModelData();
    /* 808251E0 */ char* getStopBmd();
    /* 808251F0 */ char* getStopBmd2();
    /* 80825200 */ J3DModelData* getStopModelData();
    /* 80825280 */ char* getStopDzb();
    /* 808252D0 */ bool debugCheckParam();
    /* 80825380 */ cPhs__Step create();
    /* 80825520 */ int CreateHeap();
    /* 808257D0 */ int CreateInit();
    /* 80825940 */ void setAction(u8);
    /* 80825950 */ void makeEventId(int);
    /* 808259D0 */ void setEventPrm();
    /* 80825B20 */ void settingStartRoom();
    /* 80825B90 */ void settingEndRoom();
    /* 80825C30 */ void EndCommon();
    /* 80825D90 */ BOOL checkArea();
    /* 80825EC0 */ void calcMtx();
    /* 80825F70 */ void initProc(int);
    /* 80826000 */ void initOpenDemo(int);
    /* 808260D0 */ int getDemoAction();
    /* 80826120 */ int demoProc();
    /* 80826410 */ int actionWait();
    /* 80826640 */ int actionDemo();
    /* 808266E0 */ int actionStopClose();
    /* 80826740 */ int actionInit();
    /* 808267A0 */ void setPartner();
    /* 80826880 */ void clrPartner();
    /* 808268B0 */ void setGoal();
    /* 80826980 */ void setNextSpiral();
    /* 80826AB0 */ BOOL RunPlayerSpiral();
    /* 80826BB0 */ u8 frontCheck();
    /* 80826C10 */ int checkExecute();
    /* 80826CD0 */ int execute();
    /* 80826DF0 */ BOOL adjoinPlayer();
    /* 80826E80 */ BOOL drawCheck_local();
    /* 80826EC0 */ BOOL drawCheck(int);
    /* 80826F40 */ void debugDraw();
    /* 80827260 */ int draw();
    /* 80827420 */ int Delete();
    /* 808274E0 */ BOOL checkMakeStop();
    /* 80827540 */ int checkStopF();
    /* 80827610 */ void setStopDemo();
    /* 80827700 */ BOOL checkStopClose();
    /* 808277E0 */ void setStop();
    /* 80827850 */ BOOL checkStopOpen();

    /* 0x570 */ request_of_phase_process_class mPhase1;
    /* 0x578 */ request_of_phase_process_class mPhase2;
    /* 0x580 */ request_of_phase_process_class mPhase3;
    /* 0x588 */ J3DModel* mModel;
    /* 0x58C */ dBgW* mpBgW1;
    /* 0x590 */ Mtx mMtx1;
    /* 0x5C0 */ dBgW* mpBgW2;
    /* 0x5C4 */ Mtx mMtx2;
    /* 0x5F4 */ u8 mIdx;
    /* 0x5F5 */ s8 field_0x5f5;
    /* 0x5F6 */ u8 field_0x5f6;
    /* 0x5F7 */ u8 mAction;
    /* 0x5F8 */ int field_0x5f8;
    /* 0x5FC */ s16 mEventIDs[8];
    /* 0x60C */ u8 mMapToolIDs[8];
    /* 0x614 */ u8 field_0x614;
    /* 0x618 */ int mStaffId;
    /* 0x61C */ s8 field_0x61c;
    /* 0x61D */ u8 field_0x61d;
    /* 0x61E */ u8 field_0x61e;
    /* 0x61F */ u8 field_0x61f;
    /* 0x620 */ cXyz field_0x620;
    /* 0x62C */ u8 mFrontCheck;
    /* 0x62D */ u8 field_0x62d;
    /* 0x630 */ cXyz field_0x630;
    /* 0x63C */ dSpiral_stop_c mSpiralStop;
    /* 0x6AF */ u8 field_0x6af[0x6b2 - 0x6af];
    /* 0x6B4 */ s16 field_0x6b4;
    /* 0x6B8 */ cXyz field_0x6b8[2];
    /* 0x6D0 */ bool field_0x6d0;
};

#endif

#endif /* D_A_DOOR_SPIRAL_H */
