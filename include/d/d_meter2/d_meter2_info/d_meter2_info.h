#ifndef D_METER2_INFO_H_
#define D_METER2_INFO_H_

#include "JSystem/J2DGraph/J2DPicture/J2DPicture.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "JSystem/J2DGraph/J2DTextBox/J2DTextBox.h"
#include "JSystem/JMessage/control/control.h"
#include "JSystem/JUtility/JUTFont/JUTFont.h"
#include "SComponent/c_xyz.h"
#include "dolphin/types.h"

struct dMeter2Info_c_vtable {
    u32* addr1;
    u32* addr2;
    u32* dtor;
};

class dMeter2Info_c {
public:
    // dMeter2Info_c::dMeter2Info_c();
    // dMeter2Info_c::~dMeter2Info_c();
    void init(void);
    void setFloatingMessage(u16, s16, bool);
    void setFloatingFlow(u16, s16, bool);
    int isFloatingMessageVisible(void);
    int decFloatingMessageTimer(void);
    void resetFloatingMessage(void);
    void decMsgKeyWaitTimer(void);
    void getString(u32, char*, JMSMesgEntry_c*);  // define JMSMesgEntry
    void getStringKana(u32, char*, JMSMesgEntry_c*);
    void getStringKanji(u32, char*, JMSMesgEntry_c*);
    double getStringLength(J2DTextBox*, char*);  // define J2DTextBox
    dMeter2Info_c* getStringLength(JUTFont*, float, float, char*);
    void onDirectUseItem(int);
    int isDirectUseItem(int);
    int setMeterString(s32);
    void resetWarpStatus(void);
    void warpInProc(void);
    void warpOutProc(void);
    void resetMeterString(void);
    void setWarpInfo(const char*, const cXyz&, s16, u8, u8, u8);
    u8 getItemType(u8);
    u8 readItemTexture(u8, void*, J2DPicture*, void*, J2DPicture*, void*, J2DPicture*, void*,
                       J2DPicture*, int);  // define J2DPicture
    void setItemColor(u8, J2DPicture*, J2DPicture*, J2DPicture*, J2DPicture*);
    u8 get2ndTexture(u8);
    u8 get3rdTexture(u8);
    u8 get4thTexture(u8);
    void set1stColor(u8, J2DPicture*);
    void set2ndColor(u8, J2DPicture*);
    void set3rdColor(u8, J2DPicture*);
    void set4thColor(u8, J2DPicture*);
    void setHotSpringTimer(u8);
    void decHotSpringtimer(void);
    void changeWater(u8);
    void setMiniGameItem(u8);
    void resetMiniGameItem(bool);
    void setMiniGameCount(s8);
    void setSaveStageName(const char*);
    u8& getDirectUseItem() { return mDirectUseItem; }

private:
    dMeter2Info_c_vtable* vtable;
    u8 unk4[4];
    u32 unk8;
    u32 unk12;
    u32 unk16;
    u32 unk20;
    u32 unk24;
    u32 unk28;
    u32 unk32;
    u32 unk36;
    u8 unk40[16];
    char mStageName[8];
    struct cXyz position;
    short angle;
    u8 unk78;
    u8 unk79;
    u8 unk80;
    u8 unk81[3];
    float unk84;
    float unk88;
    float unk92;
    float unk96;
    float unk100;
    float unk104;
    float unk108;
    float unk112;
    float unk116;
    float unk120;
    float unk124;
    float unk128;
    u32 unk132;
    u32 unk136;
    u32 mMeterString;
    u32 unk144;
    u16 mMsgKeyWaitTimer;
    u16 unk150;
    u16 unk152;
    u16 mHotSpringTimer;
    u8 unk156[4];
    u16 unk160;
    u16 unk162;
    u16 unk164;
    u16 unk166;
    s16 mFloatingMessageTimer;
    u16 unk170;
    u16 unk172;
    u16 unk174;
    u16 unk176;
    u16 unk178;
    u16 unk180;
    u16 unk182;
    u8 mDirectUseItem;
    u8 unk185;
    u8 unk186;
    u8 unk187;
    u8 unk188;
    u8 unk189;
    u8 unk190;
    u8 unk191;
    u8 mWarpStatus;
    u8 unk193;
    u8 unk194;
    u8 unk195;
    u32 unk196;
    u32 unk200;
    u8 unk204;
    u8 unk205;
    u8 unk206;
    u8 unk207;
    u32 unk208;
    u32 unk212;
    u8 unk216;
    u8 unk217;
    u8 unk218;
    u8 unk219;
    u8 unk220;
    u8 unk221;
    u8 mMiniGameCount;
    u8 unk223;
    u8 unk224;
    u8 unk225;
    u8 unk226;
    u8 unk227[3];
    u8 unk230;
    u8 unk231;
    u8 unk232;
    char mSaveStageName[8];
    u8 unk241;
    u8 unk242;
    u8 unk243[5];
};

extern dMeter2Info_c g_meter2_info;

#endif