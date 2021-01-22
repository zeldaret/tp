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

#endif  // Z2WOLFHOWLMGR_H_