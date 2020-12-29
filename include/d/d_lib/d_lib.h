#include "JSystem/JKernel/JKRAramArchive/JKRAramArchive.h"
#include "global.h"

struct STControl_vtable {
    void* addr_1;
    void* addr_2;
    void* addr_3;
    void* addr_4;
};

struct STControl {
    STControl(s16 param_1, s16 param_2, s16 param_3, s16 param_4, f32 param_5, f32 param_6,
              s16 param_7, s16 param_8);
    void setWaitParm(s16 param_1, s16 param_2, s16 param_3, s16 param_4, f32 param_5, f32 param_6,
                     s16 param_7, s16 param_8);
    STControl* init(void);
    void Xinit(void);
    void Yinit(void);
    double getValueStick();
    s16 getAngleStick();
    u32 checkTrigger();
    bool checkLeftTrigger();
    bool checkRightTrigger();
    bool checkUpTrigger();
    bool checkDownTrigger();

    STControl_vtable* __vt;

    f32 field_0x4;
    f32 field_0x8;
    u8 field_0xc;
    u8 field_0xd;
    s16 field_0xe;
    s16 field_0x10;
    s16 field_0x12;
    s16 field_0x14;
    s16 field_0x16;
    s16 field_0x18;
    s16 field_0x1a;
    s16 field_0x1c;
    s16 field_0x1e;
    s16 field_0x20;
    s16 field_0x22;
    s16 field_0x24;
    s16 field_0x26;
    s16 field_0x28;
    s16 field_0x2a;
    s16 field_0x2c;
};

struct CSTControl {
    double getValueStick();
    s16 getAngleStick();
};

struct m_cpadInfo {
    u8 p1[0x8];
    f32 stickValue;
    s16 stickAngle;
    u8 p2[0x8];
    f32 CstickValue;
    s16 CstickAngle;
    u8 p3[0xE2];
};

u32 dLib_getEventSwitchNo(int param_1);

struct fopAc_ac_c;

struct cXyz {
    f32 x;
    f32 y;
    f32 z;
};

bool dLib_checkActorInRectangle(fopAc_ac_c* param_1, fopAc_ac_c* param_2, cXyz const* param_3,
                                cXyz const* param_4);

u32 dLib_getExpandSizeFromAramArchive(JKRAramArchive* param_1, char const* param_2);

class dLib_time_c {
public:
    s64 getTime(void);
    void stopTime(void);
    void startTime(void);
};