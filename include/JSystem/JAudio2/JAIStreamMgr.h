#ifndef JAISTREAMMGR_H
#define JAISTREAMMGR_H

#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JAudio2/JASGadget.h"
#include "JSystem/JSupport/JSUList.h"
#include "JSystem/JUtility/JUTAssert.h"

class JAIStreamAramMgr;
class JAIStreamDataMgr;
class JAIStreamMgr;

class JAIStream {
public:
    /* 802A3104 */ JAIStream(JAIStreamMgr*, JAISoundStrategyMgr<JAIStream>*);
    /* 802A319C */ void JAIStreamMgr_startID_(JAISoundID, s32, JGeometry::TVec3<f32> const*,
                                              JAIAudience*, int);
    /* 802A34E4 */ void JAIStreamMgr_mixOut_(JASSoundParams const&, JAISoundActivity);
    /* 802A388C */ void JAIStreamMgr_calc_();
};

class JAIStreamMgr : public JASGlobalInstance<JAIStreamMgr> {
public:
    /* 802A3B68 */ JAIStreamMgr(bool);
    /* 802A3C3C */ void startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*);
    /* 802A3D70 */ void freeDeadStream_();
    /* 802A3EBC */ void calc();
    /* 802A4028 */ void stop();
    /* 802A4068 */ void stop(u32);
    /* 802A40B8 */ void stopSoundID(JAISoundID);
    /* 802A4118 */ void mixOut();
    /* 802A4174 */ void newStream_();
    /* 802B9978 */ void isActive() const;

    JAISoundParamsMove* getParams() { return &mParams; }
    void setStreamDataMgr(JAIStreamDataMgr* param_0) {
        JUT_ASSERT("JAIStreamMgr.h", 0x8b, !isActive());
        mStreamDataMgr = param_0;
    }
    void setStreamAramMgr(JAIStreamAramMgr* param_0) {
        JUT_ASSERT("JAIStreamMgr.h", 0x9d, !isActive());
        mStreamAramMgr = param_0;
    }

private:
    /* 0x00 */ JAISoundActivity mActivity;
    /* 0x04 */ JAISoundParamsMove mParams;
    /* 0x54 */ int field_0x54;
    /* 0x58 */ JSUList<JAIStream> mStreamList;
    /* 0x64 */ JAIStreamDataMgr * mStreamDataMgr;
    /* 0x68 */ JAIStreamAramMgr* mStreamAramMgr;
    /* 0x6C */ int field_0x6c;
};  // Size: 0x70

#endif /* JAISTREAMMGR_H */
