#ifndef Z2WOLFHOWLMGR_H_
#define Z2WOLFHOWLMGR_H_

struct Z2WolfHowlData {};

class Z2WolfHowlMgr {
public:
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

private:
    /* 0x00 */ JAISoundHandle* field_0x00;
    /* 0x04 */ JAISoundHandle* field_0x04;
    /* 0x08 */ JAISoundHandle* field_0x08;
    /* 0x0C */ Z2WolfHowlData* field_0x0c;
    /* 0x10 */ void* field_0x10;
    /* 0x14 */ float mNowInputValue;
    /* 0x18 */ float field_0x18;
    /* 0x1C */ float field_0x1c;
    /* 0x20 */ float field_0x20;
    /* 0x24 */ float field_0x24;
    /* 0x28 */ float field_0x28;
    /* 0x2C */ u8 field_0x2c[4];
    /* 0x30 */ float field_0x30;
    /* 0x34 */ float field_0x34;
    /* 0x38 */ float field_0x38;
    /* 0x3C */ float field_0x3c;
    /* 0x40 */ float field_0x40;
    /* 0x44 */ float field_0x44;
    /* 0x48 */ float field_0x48;
    /* 0x4C */ float field_0x4c;
    /* 0x50 */ float field_0x50;
    /* 0x54 */ float field_0x54;
    /* 0x58 */ float field_0x58;
    /* 0x5C */ float field_0x5c;
    /* 0x60 */ float field_0x60;
    /* 0x64 */ float field_0x64;
    /* 0x68 */ float field_0x68;
    /* 0x6C */ float field_0x6c;
    /* 0x70 */ float field_0x70;
    /* 0x74 */ float field_0x74;
    /* 0x78 */ float field_0x78;
    /* 0x7C */ float field_0x7c;
    /* 0x80 */ float field_0x80;
    /* 0x84 */ float field_0x84;
    /* 0x88 */ void* mTimer;
    /* 0x8C */ u8 mReleaseTimer;
    /* 0x8D */ u8 field_0x8d;
    /* 0x8E */ u8 mCorrectCurveID;
    /* 0x8F */ u8 field_0x8f;
    /* 0x90 */ s16 field_0x90;
    /* 0x92 */ u8 field_0x92[20];
    /* 0xA6 */ u8 field_0xa6[0x14];
    /* 0xBA */ u8 field_0xba;
    /* 0xBB */ u8 field_0xbb;
    /* 0xBC */ u8 field_0xbc;
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

void __sinit_Z2WolfHowlMgr_cpp(void);
void func_802CB6EC(void);
}

#endif  // Z2WOLFHOWLMGR_H_