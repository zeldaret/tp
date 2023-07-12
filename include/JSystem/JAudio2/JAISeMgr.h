#ifndef JAISEMGR_H
#define JAISEMGR_H

#include "JSystem/JAudio2/JAISeqDataMgr.h"
#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JAudio2/JAISoundParams.h"
#include "JSystem/JAudio2/JASGadget.h"
#include "JSystem/JAudio2/JASHeapCtrl.h"
#include "JSystem/JSupport/JSUList.h"
#include "global.h"

struct JAIAudience;
struct JASSoundParams;

struct JASNonCopyable {
    /* 0x0 */ int field_0x0;
};  // Size: 0x4

struct JAISeCategoryArrangementItem {
    u8 mMaxActiveSe;
    u8 mMaxInactiveSe;
};

struct JAISeCategoryArrangement {
    JAISeCategoryArrangementItem mItems[16];
};

class JAISeMgr;

struct JAISePlaceHolder {
    u8 field_0x0[0x10];
};

struct JAISe : public JAISePlaceHolder, public JAISound {
    /* 8029F03C */ JAISe(JAISeMgr*, JAISoundStrategyMgr<JAISe>*, u32);
    /* 8029F304 */ void JAISeCategoryMgr_mixOut_(bool, JASSoundParams const&, JAISoundActivity);
    /* 8029F4CC */ void JAISeCategoryMgr_calc_();
    /* 8029F650 */ void JAISeMgr_startID_(JAISoundID, JGeometry::TVec3<f32> const*, JAIAudience*);

    JAISeqData* getSeqData() { return &mSeqData; }
    u32 JAISeCategoryMgr_getProperPriority_() const { return mProperPriority; }
    u32 JAISeCategoryMgr_getPriority_() const { return mPriority;}
    bool isFarAway() const { return mPriority == -1; }

    /* 0x0aa */ u8 field_0x0[2];
    /* 0x0ac */ u32 mProperPriority;
    /* 0x0b0 */ u32 mPriority;
    /* 0x0b4 */ u8 field_0xb4[0x25c];
    /* 0x310 */ JAISeqData mSeqData;
};

class JAISeCategoryMgr : public JAISeqDataUser {
public:
    /* 8029F9C4 */ void JAISeMgr_calc_();
    /* 8029FB30 */ void JAISeMgr_freeDeadSe_();
    /* 8029FC88 */ u32 JAISeMgr_acceptsNewSe_(u32) const;
    /* 8029FD40 */ void sortByPriority_();
    /* 8029FDE0 */ void stop(u32);
    /* 8029FE34 */ void stop();
    /* 8029FE78 */ void stopSoundID(JAISoundID);
    /* 8029FEEC */ void pause(bool);
    /* 8029FF18 */ void JAISeMgr_mixOut_(JAISoundParamsMove const&, JAISoundActivity);
    /* 802A0994 */ JAISeCategoryMgr();

    /* 800078DC */ virtual ~JAISeCategoryMgr() {}
    /* 8029F8B0 */ virtual bool isUsingSeqData(JAISeqDataRegion const&);
    /* 8029F91C */ virtual int releaseSeqData(JAISeqDataRegion const&);

    JAISoundParamsMove* getParams() { return &mParams; }
    int getMaxSe() const {
        if (mMaxActiveSe == 0) {
            return 0;
        }

        return mMaxActiveSe + mMaxInactiveSe;
    }
    int getMaxActiveSe() const { return mMaxActiveSe; }
    void setMaxActiveSe(int se) { mMaxActiveSe = se; }
    void setMaxInactiveSe(int se) { mMaxInactiveSe = se; }
    int getNumSe() const { return mSeList.getNumLinks(); }
    JAIAudience* getAudience() { return (JAIAudience*)field_0x4.field_0x0; }

    /* 0x04 */ JASNonCopyable field_0x4;
    /* 0x08 */ JAISoundParamsMove mParams;
    /* 0x58 */ JSUList<JAISe> mSeList;
    /* 0x64 */ int mMaxInactiveSe;
    /* 0x68 */ int mMaxActiveSe;
};  // Size: 0x6C

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
    /* 802A0768 */ int startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*);
    /* 802A08D0 */ int getNumActiveSe() const;

    /* 802A08FC */ virtual ~JAISeMgr();  // inline?
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

private:
    /* 0x008 */ JAIAudience* mAudience;
    /* 0x00C */ JAISeqDataMgr* mSeqDataMgr;
    /* 0x010 */ int field_0x10;
    /* 0x014 */ JAISeCategoryMgr mCategoryMgrs[16];
    /* 0x6D4 */ JAISoundParamsMove mParams;
};  // Size: 0x724

STATIC_ASSERT(sizeof(JAISeMgr) == 0x724);

#endif /* JAISEMGR_H */
