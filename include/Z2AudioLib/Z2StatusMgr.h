#ifndef Z2STATUSMGR_H
#define Z2STATUSMGR_H

#include "dolphin/types.h"
#include "dolphin/mtx/vec.h"

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

    //! @todo there are a number of inlines only called from rels: see CHN_debug

    u8 mHour;
    u8 mMinute;
    u8 mWeekday;
    u8 field_0x03;
    s16 mTime;
    u8 field_0x6[2];
    void* mEventBit;
    bool mIsMenuIn;
    u8 field_0xd[3];
    u32 mCameraMapInfo;
    u32 field_0x14;
    float mUnderwaterDepth;
    float mCameraInWaterDepthRatio;
    Vec mPolygonPosition;
    u8 mDemoStatus;
    u8 mHeartGaugeOn;
    u8 padding[2];
};


#endif /* Z2STATUSMGR_H */
