#ifndef Z2STATUSMGR_H
#define Z2STATUSMGR_H

#include "dolphin/mtx/vec.h"
#include "dolphin/types.h"

struct Z2StatusMgr {
    Z2StatusMgr();
    void heartGaugeOn();
    void processHeartGaugeSound();
    void talkIn();
    void talkOut();
    void menuIn();
    void menuOut();
    bool isMovieDemo();
    void setDemoName(char*);
    void processTime();
    bool checkDayTime();
    void setEventBit(void*);
    void setCameraPolygonPos(Vec*);
    void setCameraGroupInfo(u8);
    void setCameraInWaterDepth(float);

    void setHour(s32 hour) { mHour = hour; }
    void setMinute(s32 min) { mMinute = min; }
    void setWeekday(s32 day) { mWeekday = day; }

    /* 0x00 */ u8 mHour;
    /* 0x01 */ u8 mMinute;
    /* 0x02 */ u8 mWeekday;
    /* 0x03 */ u8 field_0x03;
    /* 0x04 */ s16 mTime;
    /* 0x08 */ void* mEventBit;
    /* 0x0C */ bool mIsMenuIn;
    /* 0x10 */ u32 mCameraMapInfo;
    /* 0x14 */ u32 field_0x14;
    /* 0x18 */ float mUnderwaterDepth;
    /* 0x1C */ float mCameraInWaterDepthRatio;
    /* 0x20 */ Vec mPolygonPosition;
    /* 0x2C */ u8 mDemoStatus;
    /* 0x2D */ u8 mHeartGaugeOn;
};  // Size = 0x30

#endif /* Z2STATUSMGR_H */
