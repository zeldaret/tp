#ifndef JAISEMGR_H
#define JAISEMGR_H

#include "JSystem/JAudio2/JAIAudience.h"
#include "JSystem/JAudio2/JAISeqDataMgr.h"
#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JSupport/JSUList.h"
#include "dolphin/types.h"

struct JASNonCopyable {
    /* 0x0 */ int field_0x0;
};  // Size: 0x4

struct JAISeCategoryArrangement {};

class JAISeMgr;

struct JAISe {
    /* 8029F03C */ JAISe(JAISeMgr*, JAISoundStrategyMgr<JAISe>*, u32);
    /* 8029F304 */ void JAISeCategoryMgr_mixOut_(bool, JASSoundParams const&, JAISoundActivity);
    /* 8029F4CC */ void JAISeCategoryMgr_calc_();
    /* 8029F650 */ void JAISeMgr_startID_(JAISoundID, JGeometry::TVec3<f32> const*, JAIAudience*);
};

class JAISeCategoryMgr : public JAISeqDataUser {
public:
    /* 8029F9C4 */ void JAISeMgr_calc_();
    /* 8029FB30 */ void JAISeMgr_freeDeadSe_();
    /* 8029FC88 */ void JAISeMgr_acceptsNewSe_(u32) const;
    /* 8029FD40 */ void sortByPriority_();
    /* 8029FDE0 */ void stop(u32);
    /* 8029FE34 */ void stop();
    /* 8029FE78 */ void stopSoundID(JAISoundID);
    /* 8029FEEC */ void pause(bool);
    /* 8029FF18 */ void JAISeMgr_mixOut_(JAISoundParamsMove const&, JAISoundActivity);
    /* 802A0994 */ JAISeCategoryMgr();

    /* 800078DC */ virtual ~JAISeCategoryMgr() {}
    /* 8029F8B0 */ virtual bool isUsingSeqData(JAISeqDataRegion const&);
    /* 8029F91C */ virtual void releaseSeqData(JAISeqDataRegion const&);

    JAISoundParamsMove* getParams() { return &mParams; }

    /* 0x04 */ JASNonCopyable field_0x4;
    /* 0x08 */ JAISoundParamsMove mParams;
    /* 0x58 */ JSUList<JAISe> mSeList;
    /* 0x64 */ int mMaxInactiveSe;
    /* 0x68 */ int mMaxActiveSe;
};  // Size: 0x6C

class JAISeMgr : public JAISeqDataUser, public JAISoundActivity {
public:
    /* 802A0074 */ JAISeMgr(bool);
    /* 802A0268 */ void setCategoryArrangement(JAISeCategoryArrangement const&);
    /* 802A02A0 */ void stop();
    /* 802A02F4 */ void stopSoundID(JAISoundID);
    /* 802A0358 */ void initParams();
    /* 802A03D8 */ void setAudience(JAIAudience*);
    /* 802A03E0 */ void setSeqDataMgr(JAISeqDataMgr*);
    /* 802A0434 */ void resetSeqDataMgr();
    /* 802A0484 */ void newSe_(int, u32);
    /* 802A0574 */ void calc();
    /* 802A0704 */ void mixOut();
    /* 802A0768 */ void startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*);
    /* 802A08D0 */ void getNumActiveSe() const;

    /* 802A08FC */ virtual ~JAISeMgr();  // inline?
    /* 802A0168 */ virtual bool isUsingSeqData(JAISeqDataRegion const&);
    /* 802A01D8 */ virtual void releaseSeqData(JAISeqDataRegion const&);

    JAISeCategoryMgr* getCategory(int categoryIndex) { return &mCategoryMgrs[categoryIndex]; }

private:
    /* 0x008 */ JAIAudience* mAudience;
    /* 0x00C */ JAISeqDataMgr* mSeqDataMgr;
    /* 0x010 */ int field_0x10;
    /* 0x014 */ JAISeCategoryMgr mCategoryMgrs[16];
    /* 0x6D4 */ JAISoundParamsMove mParams;
};  // Size: 0x724

STATIC_ASSERT(sizeof(JAISeMgr) == 0x724);

/**
 * this is supposed to be:
 * JASGlobalInstance<JAISeMgr>::sInstance
 * sInstance__28JASGlobalInstance<8JAISeMgr>
 */
extern JAISeMgr* data_80450B6C;

#endif /* JAISEMGR_H */
