#ifndef Z2FXLINEMGR_H
#define Z2FXLINEMGR_H

#include "JSystem/JKernel/JKRArchive.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "dolphin/types.h"

struct Z2FxLineEditNode {};

struct Z2FxLineConfig {};

struct Z2FxLineMgr {
    /* 802BA7DC */ Z2FxLineMgr();
    /* 802BA7FC */ void initDataArc(JKRArchive*, JKRHeap*);
    /* 802BAC28 */ void setLineID(s8, bool, bool);
    /* 802BAC74 */ void setLine(Z2FxLineConfig*, bool, bool);
    /* 802BAE1C */ void setFxForceOff(bool);
    /* 802BAE48 */ void setUnderWaterFx(bool);
    /* 802BAEB8 */ void setSceneFx(s32);

    /* 0x00 */ int field_0x0;
    /* 0x04 */ void* mFxLineBuffer[4];
    /* 0x14 */ s8 mLineID;
    /* 0x15 */ s8 mFxDataNum;
    /* 0x16 */ bool mSetUnderWaterFx;
    /* 0x18 */ Z2FxLineEditNode* mHIOEdit;
};  // Size: 0x1C

/**
 * this is supposed to be:
 * JASGlobalInstance<Z2FxLineMgr>::sInstance
 * sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
extern Z2FxLineMgr* data_80450B40;

#endif /* Z2FXLINEMGR_H */
