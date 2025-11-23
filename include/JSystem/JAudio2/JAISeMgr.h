#ifndef JAISEMGR_H
#define JAISEMGR_H

#include "JSystem/JAudio2/JAISe.h"
#include "global.h"

struct JAIAudience;
struct JASSoundParams;

/**
 * @ingroup jsystem-jaudio
 * 
 */
struct JASNonCopyable {
    JASNonCopyable() {}

    /* 0x0 */ int field_0x0;
};  // Size: 0x4

/**
 * @ingroup jsystem-jaudio
 * 
 */
struct JAISeCategoryArrangementItem {
    u8 mMaxActiveSe;
    u8 mMaxInactiveSe;
};

/**
 * @ingroup jsystem-jaudio
 * 
 */
struct JAISeCategoryArrangement {
    JAISeCategoryArrangementItem mItems[16];
};

class JAISeMgr;

/**
 * @ingroup jsystem-jaudio
 * 
 */
class JAISeCategoryMgr : public JAISeqDataUser, public JASNonCopyable {
public:
    /* 8029F9C4 */ void JAISeMgr_calc_();
    /* 8029FB30 */ void JAISeMgr_freeDeadSe_();
    /* 8029FC88 */ bool JAISeMgr_acceptsNewSe_(u32 priority) const;
    /* 8029FD40 */ void sortByPriority_();
    /* 8029FDE0 */ void stop(u32 fadeTime);
    /* 8029FE34 */ void stop();
    /* 8029FE78 */ void stopSoundID(JAISoundID id);
    /* 8029FEEC */ void pause(bool);
    /* 8029FF18 */ void JAISeMgr_mixOut_(const JAISoundParamsMove& params, JAISoundActivity activity);
    /* 802A0994 */ JAISeCategoryMgr() {
        mParams.init();
        mMaxActiveSe = 0;
        mMaxInactiveSe = 0;
        field_0x0 = 0;
    }

    /* 8029F8B0 */ virtual bool isUsingSeqData(const JAISeqDataRegion& seqDataRegion);
    /* 8029F91C */ virtual int releaseSeqData(const JAISeqDataRegion& seqDataRegion);

    JAISoundParamsMove* getParams() { return &mParams; }
    int getMaxSe() const {
        if (mMaxActiveSe == 0) {
            return 0;
        }

        return mMaxActiveSe + mMaxInactiveSe;
    }
    int getMaxActiveSe() const { return mMaxActiveSe; }
    void setMaxActiveSe(int num) { mMaxActiveSe = num; }
    void setMaxInactiveSe(int num) { mMaxInactiveSe = num; }
    const JSUList<JAISe>* getSeList() const { return &mSeList; }
    int getNumSe() const { return mSeList.getNumLinks(); }
    JAIAudience* getAudience() { return (JAIAudience*)field_0x0; }
    void JAISeMgr_appendSe_(JAISe* se) { mSeList.append(se); }

    /* 0x08 */ JAISoundParamsMove mParams;
    /* 0x58 */ JSUList<JAISe> mSeList;
    /* 0x64 */ int mMaxInactiveSe;
    /* 0x68 */ int mMaxActiveSe;
};  // Size: 0x6C

/**
 * @ingroup jsystem-jaudio
 * 
 */
class JAISeMgr : public JASGlobalInstance<JAISeMgr>,
                 public JAISeqDataUser,
                 public JAISoundActivity {
public:
    /* 802A0074 */ JAISeMgr(bool setInstance);
    /* 802A0268 */ void setCategoryArrangement(const JAISeCategoryArrangement& arrangement);
    /* 802A02A0 */ void stop();
    /* 802A02F4 */ void stopSoundID(JAISoundID id);
    /* 802A0358 */ void initParams();
    /* 802A03D8 */ void setAudience(JAIAudience* audience);
    /* 802A03E0 */ void setSeqDataMgr(JAISeqDataMgr* seqDataMgr);
    /* 802A0434 */ void resetSeqDataMgr();
    /* 802A0484 */ JAISe* newSe_(int category, u32 priority);
    /* 802A0574 */ void calc();
    /* 802A0704 */ void mixOut();
    /* 802A0768 */ bool startSound(JAISoundID id, JAISoundHandle* handle, const JGeometry::TVec3<f32>* posPtr);
    /* 802A08D0 */ int getNumActiveSe() const;

    /* 802A0168 */ virtual bool isUsingSeqData(const JAISeqDataRegion& seqDataRegion);
    /* 802A01D8 */ virtual int releaseSeqData(const JAISeqDataRegion& seqDataRegion);

    JAISeCategoryMgr* getCategory(int index) { return &mCategoryMgrs[index]; }
    JAIAudience* getAudience() { return mAudience; }
    JAIAudience* getAudience(int index) {
        if (index >= 0 && index < NUM_CATEGORIES) {
            JAIAudience* rv = mCategoryMgrs[index].getAudience();
            if (rv) return rv;
        }
        return mAudience;
    }
    JAISeqDataMgr* getSeqDataMgr() { return mSeqDataMgr; }
    JAISoundParamsMove* getParams() { return &mParams; }

    bool isActive() const { return getNumActiveSe() > 0; }

    static const int NUM_CATEGORIES = 16;

private:
    /* 0x008 */ JAIAudience* mAudience;
    /* 0x00C */ JAISeqDataMgr* mSeqDataMgr;
    /* 0x010 */ JAISoundStrategyMgr<JAISe>* mStrategyMgr;
    /* 0x014 */ JAISeCategoryMgr mCategoryMgrs[NUM_CATEGORIES];
    /* 0x6D4 */ JAISoundParamsMove mParams;
};  // Size: 0x724

#if VERSION != VERSION_SHIELD_DEBUG
STATIC_ASSERT(sizeof(JAISeMgr) == 0x724);
#endif

#endif /* JAISEMGR_H */
