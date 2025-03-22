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
class JAISeCategoryMgr : public JAISeqDataUser {
public:
    /* 8029F9C4 */ void JAISeMgr_calc_();
    /* 8029FB30 */ void JAISeMgr_freeDeadSe_();
    /* 8029FC88 */ bool JAISeMgr_acceptsNewSe_(u32) const;
    /* 8029FD40 */ void sortByPriority_();
    /* 8029FDE0 */ void stop(u32);
    /* 8029FE34 */ void stop();
    /* 8029FE78 */ void stopSoundID(JAISoundID);
    /* 8029FEEC */ void pause(bool);
    /* 8029FF18 */ void JAISeMgr_mixOut_(JAISoundParamsMove const&, JAISoundActivity);
    /* 802A0994 */ JAISeCategoryMgr() {
        mParams.init();
        mMaxActiveSe = 0;
        mMaxInactiveSe = 0;
        field_0x4.field_0x0 = 0;
    }

    /* 800078DC */ virtual ~JAISeCategoryMgr() {}
    /* 8029F8B0 */ virtual bool isUsingSeqData(JAISeqDataRegion const&);
    /* 8029F91C */ virtual int releaseSeqData(JAISeqDataRegion const&);

    JAISoundParamsMove* getParams() { return &mParams; }
    int getMaxSe() const {
        return (mMaxActiveSe == 0) ? 0 : mMaxActiveSe + mMaxInactiveSe;
    }
    int getMaxActiveSe() const { return mMaxActiveSe; }
    void setMaxActiveSe(int se) { mMaxActiveSe = se; }
    void setMaxInactiveSe(int se) { mMaxInactiveSe = se; }
    JSUList<JAISe>* getSeList() { return &mSeList; }
    int getNumSe() const { return mSeList.getNumLinks(); }
    JAIAudience* getAudience() { return (JAIAudience*)field_0x4.field_0x0; }
    void JAISeMgr_appendSe_(JAISe* se) { mSeList.append(se); }

    /* 0x04 */ JASNonCopyable field_0x4;
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
    /* 802A0074 */ JAISeMgr(bool);
    /* 802A0268 */ void setCategoryArrangement(JAISeCategoryArrangement const&);
    /* 802A02A0 */ void stop();
    /* 802A02F4 */ void stopSoundID(JAISoundID);
    /* 802A0358 */ void initParams();
    /* 802A03D8 */ void setAudience(JAIAudience*);
    /* 802A03E0 */ void setSeqDataMgr(JAISeqDataMgr*);
    /* 802A0434 */ void resetSeqDataMgr();
    /* 802A0484 */ JAISe* newSe_(int, u32);
    /* 802A0574 */ void calc();
    /* 802A0704 */ void mixOut();
    /* 802A0768 */ bool startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*);
    /* 802A08D0 */ int getNumActiveSe() const;

    /* 802A08FC */ virtual ~JAISeMgr() {}
    /* 802A0168 */ virtual bool isUsingSeqData(JAISeqDataRegion const&);
    /* 802A01D8 */ virtual int releaseSeqData(JAISeqDataRegion const&);

    JAISeCategoryMgr* getCategory(int categoryIndex) { return &mCategoryMgrs[categoryIndex]; }
    JAIAudience* getAudience(int categoryIndex) {
        if (categoryIndex >= 0 && categoryIndex < 16) {
            JAIAudience* rv = mCategoryMgrs[categoryIndex].getAudience();
            if (rv) return rv;
        }
        return mAudience;
    }
    JAISeqDataMgr* getSeqDataMgr() { return mSeqDataMgr; }
    JAISoundParamsMove* getParams() { return &mParams; }

private:
    /* 0x008 */ JAIAudience* mAudience;
    /* 0x00C */ JAISeqDataMgr* mSeqDataMgr;
    /* 0x010 */ JAISoundStrategyMgr<JAISe>* mStrategyMgr;
    /* 0x014 */ JAISeCategoryMgr mCategoryMgrs[16];
    /* 0x6D4 */ JAISoundParamsMove mParams;
};  // Size: 0x724

#if VERSION != VERSION_SHIELD_DEBUG
STATIC_ASSERT(sizeof(JAISeMgr) == 0x724);
#endif

#endif /* JAISEMGR_H */
