#ifndef Z2WOLFHOWLMGR_H_
#define Z2WOLFHOWLMGR_H_

struct Z2WolfHowlData {};

class Z2WolfHowlMgr {
    Z2WolfHowlMgr();

    void resetState();
    void calcVolumeMod(float);
    void getNowPitch();
    void getNowInputValue();
    void calcPitchMod(float, float);
    void startWolfHowlSound(float, float, bool, float);
    void setCorrectData(s8, Z2WolfHowlData*);
    void getCorrectLine(u8);
    void getCorrectLineNum();
    void checkLine();
    void getOnLineNum();
    void startWindStoneSound(s8, Vec*);
    void startGuideMelody(bool);
    void skipCorrectDemo();
};

extern "C" {
void calcPitchMod__13Z2WolfHowlMgrFff(void);
void calcVolumeMod__13Z2WolfHowlMgrFf(void);
void checkLine__13Z2WolfHowlMgrFv(void);
void getCorrectLine__13Z2WolfHowlMgrFUc(void);
void getCorrectLineNum__13Z2WolfHowlMgrFv(void);
void getNowInputValue__13Z2WolfHowlMgrFv(void);
void getNowPitch__13Z2WolfHowlMgrFv(void);
void getOnLineNum__13Z2WolfHowlMgrFv(void);
void resetState__13Z2WolfHowlMgrFv(void);
void startGuideMelody__13Z2WolfHowlMgrFb(void);

void func_802CBB7C(void);
void func_802CB6EC(void);
}

#endif  // Z2WOLFHOWLMGR_H_