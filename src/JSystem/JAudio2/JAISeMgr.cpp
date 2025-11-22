#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/JAudio2/JAISeMgr.h"
#include "JSystem/JAudio2/JAISoundHandles.h"
#include "JSystem/JAudio2/JAISoundInfo.h"
#include "JSystem/JAudio2/JASReport.h"

/* 8029F8B0-8029F91C 29A1F0 006C+00 2/1 0/0 0/0 .text
 * isUsingSeqData__16JAISeCategoryMgrFRC16JAISeqDataRegion      */
bool JAISeCategoryMgr::isUsingSeqData(const JAISeqDataRegion& seqDataRegion) {
    JSULink<JAISe>* i = mSeList.getFirst();
    while (i != NULL) {
        JAISe* obj = i->getObject();
        if (seqDataRegion.intersects(*obj->getSeqData())) {
            return true;
        }
        i = i->getNext();
    }
    
    return false;
}

/* 8029F91C-8029F9C4 29A25C 00A8+00 2/1 0/0 0/0 .text
 * releaseSeqData__16JAISeCategoryMgrFRC16JAISeqDataRegion      */
int JAISeCategoryMgr::releaseSeqData(const JAISeqDataRegion& seqDataRegion) {
    bool bVar1 = false;
    for (JSULink<JAISe>* i = mSeList.getFirst(); i != NULL; i = i->getNext()) {
        if (seqDataRegion.intersects(*i->getObject()->getSeqData())) {
            i->getObject()->stop();
            bVar1 = true;
        }
    }

    enum {_1 = 1, _2};  // fakematch, figure out what this enum is eventually
    return bVar1 ? _1 : _2;
}

/* 8029F9C4-8029FB30 29A304 016C+00 1/1 0/0 0/0 .text JAISeMgr_calc___16JAISeCategoryMgrFv */
void JAISeCategoryMgr::JAISeMgr_calc_() {
    mParams.calc();

    for (JSULink<JAISe>* i = mSeList.getFirst(); i != NULL; i = i->getNext()) {
        i->getObject()->JAISeCategoryMgr_calc_();
    }

    sortByPriority_();
}

/* 8029FB30-8029FC34 29A470 0104+00 1/1 0/0 0/0 .text JAISeMgr_freeDeadSe___16JAISeCategoryMgrFv
 */
void JAISeCategoryMgr::JAISeMgr_freeDeadSe_() {
    JSULink<JAISe>* i = mSeList.getFirst();
    while (i != NULL) {
        JSULink<JAISe>* link_next = i->getNext();
        if (i->getObject()->status_.isDead()) {
            JUT_ASSERT(71, ! i->getObject() ->isHandleAttached());
            mSeList.remove(i);
            delete i->getObject();
        }
        i = link_next;
    }
}

/* 8029FC88-8029FD40 29A5C8 00B8+00 1/1 0/0 0/0 .text
 * JAISeMgr_acceptsNewSe___16JAISeCategoryMgrCFUl               */
bool JAISeCategoryMgr::JAISeMgr_acceptsNewSe_(u32 priority) const {
    s32 maxSe = getMaxSe();
    if (maxSe <= 0) {
        return 1;
    } 

    s32 stopCount = 0;
    for (JSULink<JAISe>* i = mSeList.getFirst(); i != NULL; i = i->getNext()) {
        if (priority < i->getObject()->JAISeCategoryMgr_getProperPriority_()) {
            return 1;
        }
        if (!i->getObject()->isStopping()) {
            stopCount++;
        }
    }

    if (stopCount < maxSe) {
        return true;
    } else {
        return false;
    }
}

/* 8029FD40-8029FDE0 29A680 00A0+00 1/1 0/0 0/0 .text sortByPriority___16JAISeCategoryMgrFv */
void JAISeCategoryMgr::sortByPriority_() {
    for (u32 i = mSeList.getNumLinks(); i != 0; i--) {
        JSULink<JAISe>* link = mSeList.getFirst();
        u32 lowestPriority = link->getObject()->JAISeCategoryMgr_getPriority_();
        JSULink<JAISe>* current = link->getNext();

        for (int j = 1; j < i; j++) {
            u32 itemPriority = current->getObject()->JAISeCategoryMgr_getPriority_();
            if (itemPriority < lowestPriority) {
                lowestPriority = itemPriority;
                link = current;
            }
            current = current->getNext();
        }

        bool result = mSeList.remove(link);
        JUT_ASSERT(131, result);

        result = mSeList.append(link);
        JUT_ASSERT(133, result);
    }
}

/* 8029FDE0-8029FE34 29A720 0054+00 0/0 1/1 0/0 .text            stop__16JAISeCategoryMgrFUl */
void JAISeCategoryMgr::stop(u32 fadeTime) {
    for (JSULink<JAISe>* i = mSeList.getFirst(); i != NULL; i = i->getNext()) {
        i->getObject()->stop(fadeTime);
    }
}

/* 8029FE34-8029FE78 29A774 0044+00 1/1 0/0 0/0 .text            stop__16JAISeCategoryMgrFv */
void JAISeCategoryMgr::stop() {
    for (JSULink<JAISe>* i = mSeList.getFirst(); i != NULL; i = i->getNext()) {
        i->getObject()->stop();
    }
}

/* 8029FE78-8029FEEC 29A7B8 0074+00 1/1 0/0 0/0 .text stopSoundID__16JAISeCategoryMgrF10JAISoundID
 */
void JAISeCategoryMgr::stopSoundID(JAISoundID id) {
    if (!id.isAnonymous()) {
        for (JSULink<JAISe>* i = mSeList.getFirst(); i != NULL; i = i->getNext()) {
            if ((u32)i->getObject()->getID() == (u32)id) {
                i->getObject()->stop();
            }
        }
    }
}

/* 8029FEEC-8029FF18 29A82C 002C+00 0/0 2/2 0/0 .text            pause__16JAISeCategoryMgrFb */
void JAISeCategoryMgr::pause(bool param_0) {
    for (JSULink<JAISe>* i = mSeList.getFirst(); i != NULL; i = i->getNext()) {
        i->getObject()->pause(param_0);
    }
}

/* 8029FF18-802A0074 29A858 015C+00 1/1 0/0 0/0 .text
 * JAISeMgr_mixOut___16JAISeCategoryMgrFRC18JAISoundParamsMove16JAISoundActivity */
void JAISeCategoryMgr::JAISeMgr_mixOut_(const JAISoundParamsMove& params,
                                        JAISoundActivity activity) {
    JASSoundParams mixParams;
    mixParams.combine(params.params_, mParams.params_);
    JSULink<JAISe>* i = mSeList.getFirst();
    int maxActiveSe = getMaxActiveSe();
    int sp28;
    
    if (maxActiveSe > 0) {
        while (i != NULL && maxActiveSe > 0 && !i->getObject()->isFarAway()) {
            i->getObject()->JAISeCategoryMgr_mixOut_(true, mixParams, activity);
            i = i->getNext();
            maxActiveSe--;
            sp28 = maxActiveSe;
        }
        for (; i != NULL; i = i->getNext()) {
            i->getObject()->JAISeCategoryMgr_mixOut_(false, mixParams, activity);
        }
    } else {
        while (i != NULL && !i->getObject()->isFarAway()) {
            i->getObject()->JAISeCategoryMgr_mixOut_(true, mixParams, activity);
            i = i->getNext();
        }
        for (; i != NULL; i = i->getNext()) {
            i->getObject()->JAISeCategoryMgr_mixOut_(false, mixParams, activity);
        }
    }
}

/* 802A0074-802A0168 29A9B4 00F4+00 0/0 1/1 0/0 .text            __ct__8JAISeMgrFb */
JAISeMgr::JAISeMgr(bool setInstance) : JASGlobalInstance<JAISeMgr>(setInstance) {
    mAudience = NULL;
    mSeqDataMgr = NULL;
    mStrategyMgr = NULL;
    mParams.init();
    JAISoundActivity::init();
}

/* 802A0168-802A01D8 29AAA8 0070+00 1/0 0/0 0/0 .text
 * isUsingSeqData__8JAISeMgrFRC16JAISeqDataRegion               */
bool JAISeMgr::isUsingSeqData(const JAISeqDataRegion& seqDataRegion) {
    for (int i = 0; i < 16; i++) {
        if (mCategoryMgrs[i].JAISeCategoryMgr::isUsingSeqData(seqDataRegion)) {
            return true;
        }
    }
    return false;
}

/* 802A01D8-802A0268 29AB18 0090+00 1/0 0/0 0/0 .text
 * releaseSeqData__8JAISeMgrFRC16JAISeqDataRegion               */
int JAISeMgr::releaseSeqData(const JAISeqDataRegion& seqDataRegion) {
    bool r30 = 0;
    for (int i = 0; i < 16; i++) {
        switch (mCategoryMgrs[i].JAISeCategoryMgr::releaseSeqData(seqDataRegion)) {
        case 0:
            return 0;
        case 1:
            r30 = 1;
            break;
        }
    }

    return (r30 != 0) ? 1 : 0;
}

/* 802A0268-802A02A0 29ABA8 0038+00 0/0 1/1 0/0 .text
 * setCategoryArrangement__8JAISeMgrFRC24JAISeCategoryArrangement */
void JAISeMgr::setCategoryArrangement(const JAISeCategoryArrangement& arrangement) {
    for (int i = 0; i < 16; i++) {
        mCategoryMgrs[i].setMaxActiveSe(arrangement.mItems[i].mMaxActiveSe);
        mCategoryMgrs[i].setMaxInactiveSe(arrangement.mItems[i].mMaxInactiveSe);
    }
}

/* 802A02A0-802A02F4 29ABE0 0054+00 0/0 1/1 0/0 .text            stop__8JAISeMgrFv */
void JAISeMgr::stop() {
    for (int i = 0; i < 16; i++) {
        mCategoryMgrs[i].stop();
    }
}

/* 802A02F4-802A0358 29AC34 0064+00 0/0 1/1 0/0 .text            stopSoundID__8JAISeMgrF10JAISoundID
 */
void JAISeMgr::stopSoundID(JAISoundID id) {
    for (int i = 0; i < 16; i++) {
        mCategoryMgrs[i].stopSoundID(id);
    }
}

/* 802A0358-802A03D8 29AC98 0080+00 0/0 1/1 0/0 .text            initParams__8JAISeMgrFv */
void JAISeMgr::initParams() {
    for (int i = 0; i < 16; i++) {
        mCategoryMgrs[i].getParams()->init();
    }
}


/* 802A03D8-802A03E0 -00001 0008+00 0/0 0/0 0/0 .text setAudience__8JAISeMgrFP11JAIAudience */
void JAISeMgr::setAudience(JAIAudience* audience) {
    JUT_ASSERT(363, ! isActive());
    mAudience = audience;
}

/* 802A03E0-802A0434 29AD20 0054+00 0/0 1/1 0/0 .text setSeqDataMgr__8JAISeMgrFP13JAISeqDataMgr */
void JAISeMgr::setSeqDataMgr(JAISeqDataMgr* seqDataMgr) {
    JUT_ASSERT(377, ! isActive());
    resetSeqDataMgr();
    mSeqDataMgr = seqDataMgr;
    mSeqDataMgr->setSeqDataUser(this);
}

/* 802A0434-802A0484 29AD74 0050+00 1/1 0/0 0/0 .text            resetSeqDataMgr__8JAISeMgrFv */
void JAISeMgr::resetSeqDataMgr() {
    if (mSeqDataMgr) {
        mSeqDataMgr->setSeqDataUser(NULL);
        mSeqDataMgr = NULL;
    }
}

/* 802A0484-802A0574 29ADC4 00F0+00 1/1 0/0 0/0 .text            newSe___8JAISeMgrFiUl */
JAISe* JAISeMgr::newSe_(int category, u32 priority) {
    JUT_ASSERT(396, category < NUM_CATEGORIES);

    if (category < 0) {
        category = 0;
    }

    JAISeCategoryMgr* categoryMgr = &mCategoryMgrs[category];
    if (!categoryMgr->JAISeMgr_acceptsNewSe_(priority)) {
        return NULL;
    }

    JAISe* se = new JAISe(this, mStrategyMgr, priority);
    if (se == NULL) {
        JUT_WARN(410, "%s", "JASPoolAllocObject::<JAISe>::operator new failed .\n")
        return NULL;
    }

    categoryMgr->JAISeMgr_appendSe_(se);
    return se;
}

/* 802A0574-802A0704 29AEB4 0190+00 0/0 1/1 0/0 .text            calc__8JAISeMgrFv */
void JAISeMgr::calc() {
    mParams.calc();
    for (int i = 0; i < 16; i++) {
        mCategoryMgrs[i].JAISeMgr_calc_();
    }
    for (int i = 0; i < 16; i++) {
        mCategoryMgrs[i].JAISeMgr_freeDeadSe_();
    }
}

/* 802A0704-802A0768 29B044 0064+00 0/0 1/1 0/0 .text            mixOut__8JAISeMgrFv */
void JAISeMgr::mixOut() {
    for (int i = 0; i < 16; i++) {
        mCategoryMgrs[i].JAISeMgr_mixOut_(mParams, *this);
    }
}

/* 802A0768-802A08D0 29B0A8 0168+00 0/0 1/1 0/0 .text
 * startSound__8JAISeMgrF10JAISoundIDP14JAISoundHandlePCQ29JGeometry8TVec3<f> */
bool JAISeMgr::startSound(JAISoundID id, JAISoundHandle* handle, const JGeometry::TVec3<f32>* posPtr) {
    if (handle && *handle) {
        (*handle)->stop();
    }

    JAISoundInfo* soundInfoPtr = JASGlobalInstance<JAISoundInfo>::getInstance();
    u32 priority;
    u32 category;
    if (soundInfoPtr != NULL) {
        category = soundInfoPtr->getCategory(id);
        priority = soundInfoPtr->getPriority(id);
    } else {
        category = id.id_.info.type.parts.groupID;
        priority = 0;
    }

    JAISe* se = newSe_(category, priority);
    if (se == NULL) {
        #if !PLATFORM_SHIELD
        JASReport("cannot new Se %08x.", id.id_.composite_);
        #endif
        return false;
    } 

    JAIAudience* audiencePtr = getAudience(category);
    se->JAISeMgr_startID_(id, posPtr, audiencePtr);

    if (soundInfoPtr != NULL) {
        soundInfoPtr->getSeInfo(id, se);
    }

    if (handle != NULL) {
        se->attachHandle(handle);
    }

    return true;
}

/* 802A08D0-802A08FC 29B210 002C+00 0/0 2/2 0/0 .text            getNumActiveSe__8JAISeMgrCFv */
int JAISeMgr::getNumActiveSe() const {
    int num = 0;
    for (int i = 0; i < 16; i++) {
        num += mCategoryMgrs[i].getNumSe();
    }
    return num;
}
