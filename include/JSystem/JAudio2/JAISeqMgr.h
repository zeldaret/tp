#ifndef JAISEQMGR_H
#define JAISEQMGR_H

#include "JSystem/JAudio2/JAISeqDataMgr.h"
#include "JSystem/JAudio2/JASGadget.h"
#include "JSystem/JSupport/JSUList.h"

struct JAIAudience;
struct JAISeq;

class JAISeqMgr : public JAISeqDataUser, public JASGlobalInstance<JAISeqMgr> {
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
    /* 802A1870 */ virtual int releaseSeqData(JAISeqDataRegion const&);

    JAISeqDataMgr* getSeqDataMgr() { return seqDataMgr_; }

private:
    /* 0x04 */ JAISoundActivity mActivity;
    /* 0x08 */ JAIAudience* mAudience;
    /* 0x0C */ JAISeqDataMgr* seqDataMgr_;
    /* 0x10 */ void* field_0x10;
    /* 0x14 */ JAISoundParamsMove mMove;
    /* 0x64 */ JSUList<JAISeq> mSeqList;
    /* 0x70 */ int field_0x70;
};  // Size: 0x74

#endif /* JAISEQMGR_H */
