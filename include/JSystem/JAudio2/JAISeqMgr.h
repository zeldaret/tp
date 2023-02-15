#ifndef JAISEQMGR_H
#define JAISEQMGR_H

#include "JSystem/JAudio2/JAIAudience.h"
#include "JSystem/JAudio2/JAISeqDataMgr.h"
#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JSupport/JSUList.h"
#include "dolphin/types.h"

struct JAISeq;

class JAISeqMgr : public JAISeqDataUser {
public:
    /* 802A1914 */ JAISeqMgr(bool);
    /* 802A1A08 */ void freeDeadSeq_();
    /* 802A1B48 */ void startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*);
    /* 802A1C90 */ void calc();
    /* 802A1DFC */ void stop();
    /* 802A1E3C */ void stop(u32);
    /* 802A1E8C */ void stopSoundID(JAISoundID);
    /* 802A1EFC */ void mixOut();
    /* 802A1F58 */ void beginStartSeq_();
    /* 802A1FE8 */ void endStartSeq_(JAISeq*, JAISoundHandle*);

    /* 802A20F0 */ virtual ~JAISeqMgr();  // inline?
    /* 802A1804 */ virtual bool isUsingSeqData(JAISeqDataRegion const&);
    /* 802A1870 */ virtual void releaseSeqData(JAISeqDataRegion const&);

private:
    /* 0x04 */ JAISoundActivity mActivity;
    /* 0x08 */ void* field_0x8;
    /* 0x0C */ JAIAudience* mAudience;
    /* 0x10 */ JAISeqDataMgr* seqDataMgr_;
    /* 0x14 */ JAISoundParamsMove mMove;
    /* 0x64 */ JSUList<JAISeq> mSeqList;
    /* 0x70 */ int field_0x70;
};  // Size: 0x74

/**
 * this is supposed to be:
 * JASGlobalInstance<JAISeqMgr>::sInstance
 * sInstance__29JASGlobalInstance<9JAISeqMgr>
 */
extern JAISeqMgr* data_80450B68;

#endif /* JAISEQMGR_H */
