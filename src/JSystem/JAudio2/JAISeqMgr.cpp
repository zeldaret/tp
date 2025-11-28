#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/JAudio2/JAISeqMgr.h"
#include "JSystem/JAudio2/JAISeq.h"
#include "JSystem/JAudio2/JAISoundHandles.h"
#include "JSystem/JAudio2/JAISoundInfo.h"

/* 802A1804-802A1870 29C144 006C+00 1/0 0/0 0/0 .text
 * isUsingSeqData__9JAISeqMgrFRC16JAISeqDataRegion              */
bool JAISeqMgr::isUsingSeqData(const JAISeqDataRegion& seqDataRegion) {
    for (JSULink<JAISeq>* i = mSeqList.getFirst(); i != NULL; i = i->getNext()) {
        if (seqDataRegion.intersects(i->getObject()->getSeqData())) {
            return true;
        }
    }
    return false;
}

/* 802A1870-802A1914 29C1B0 00A4+00 1/0 0/0 0/0 .text
 * releaseSeqData__9JAISeqMgrFRC16JAISeqDataRegion              */
int JAISeqMgr::releaseSeqData(const JAISeqDataRegion& seqDataRegion) {
    bool bVar1 = false;
    for (JSULink<JAISeq>* i = mSeqList.getFirst(); i != NULL; i = i->getNext()) {
        if (seqDataRegion.intersects(i->getObject()->getSeqData())) {
            i->getObject()->stop();
            bVar1 = true;
        }
    }

    return bVar1 ? RELEASE_SEQ_1 : RELEASE_SEQ_2;
}

/* 802A1914-802A1A08 29C254 00F4+00 0/0 1/1 0/0 .text            __ct__9JAISeqMgrFb */
JAISeqMgr::JAISeqMgr(bool setInstance) : JASGlobalInstance<JAISeqMgr>(setInstance), mAudience(NULL)  {
    seqDataMgr_ = NULL;
    field_0x10 = NULL;
    field_0x70 = 16;
    mMove.init();
    mActivity.init();
}

/* 802A1A08-802A1AF4 29C348 00EC+00 1/1 0/0 0/0 .text            freeDeadSeq___9JAISeqMgrFv */
void JAISeqMgr::freeDeadSeq_() {
    JSULink<JAISeq>* i = mSeqList.getFirst();
    while (i != NULL) {
        JAISeq* seq = i->getObject();
        JSULink<JAISeq>* next = i->getNext();
        if (seq->status_.isDead()) {
            mSeqList.remove(i);
            delete seq;
        }
        i = next;
    }
}

/* 802A1B48-802A1C90 29C488 0148+00 0/0 1/1 0/0 .text
 * startSound__9JAISeqMgrF10JAISoundIDP14JAISoundHandlePCQ29JGeometry8TVec3<f> */
bool JAISeqMgr::startSound(JAISoundID id, JAISoundHandle* handle, const JGeometry::TVec3<f32>* posPtr) {
    if (handle != NULL && *handle) {
        (*handle)->stop();
    }

    JAISoundInfo* soundInfo = JASGlobalInstance<JAISoundInfo>::getInstance();
    int category = (soundInfo != NULL) ? soundInfo->getCategory(id) : -1;
    JAISeqData seqData(NULL, 0);

    JUT_ASSERT(81, seqDataMgr_);
    if (seqDataMgr_->getSeqData(id, &seqData) == JAISeqDataMgr::SeqDataReturnValue_0) {
        return false;
    }

    JAISeq* seq = beginStartSeq_();
    if (seq != NULL) {
        seq->JAISeqMgr_startID_(id, posPtr, mAudience, category, field_0x70);
        if (endStartSeq_(seq, handle)) {
            if (soundInfo != NULL) {
                soundInfo->getSeqInfo(id, seq);
            }
            return true;
        }
    }

    return false;
}

/* 802A1C90-802A1DFC 29C5D0 016C+00 0/0 4/4 0/0 .text            calc__9JAISeqMgrFv */
void JAISeqMgr::calc() {
    mMove.calc();

    JSULink<JAISeq>* i;
    for (i = mSeqList.getFirst(); i != NULL; i = i->getNext()) {
        i->getObject()->JAISeqMgr_calc_();
    }
    freeDeadSeq_();
}

/* 802A1DFC-802A1E3C 29C73C 0040+00 0/0 1/1 0/0 .text            stop__9JAISeqMgrFv */
void JAISeqMgr::stop() {
    JSULink<JAISeq>* i;
    for (i = mSeqList.getFirst(); i != NULL; i = i->getNext()) {
        i->getObject()->stop();
    }
}

/* 802A1E3C-802A1E8C 29C77C 0050+00 0/0 1/1 0/0 .text            stop__9JAISeqMgrFUl */
void JAISeqMgr::stop(u32 fadeTime) {
    JSULink<JAISeq>* i;
    for (i = mSeqList.getFirst(); i != NULL; i = i->getNext()) {
        i->getObject()->stop(fadeTime);
    }
}

/* 802A1E8C-802A1EFC 29C7CC 0070+00 0/0 1/1 0/0 .text stopSoundID__9JAISeqMgrF10JAISoundID */
void JAISeqMgr::stopSoundID(JAISoundID id) {
    JSULink<JAISeq>* i;
    if (!id.isAnonymous()) {
        for (i = mSeqList.getFirst(); i != NULL; i = i->getNext()) {
            if ((u32)i->getObject()->getID() == (u32)id) {
                i->getObject()->stop();
            }
        }
    }
}

/* 802A1EFC-802A1F58 29C83C 005C+00 0/0 4/4 0/0 .text            mixOut__9JAISeqMgrFv */
void JAISeqMgr::mixOut() {
    JSULink<JAISeq>* i;
    for (i = mSeqList.getFirst(); i != NULL; i = i->getNext()) {
        i->getObject()->JAISeqMgr_mixOut_(mMove.params_, mActivity);
    }
}

/* 802A1F58-802A1FE8 29C898 0090+00 1/1 0/0 0/0 .text            beginStartSeq___9JAISeqMgrFv */
JAISeq* JAISeqMgr::beginStartSeq_() {
    JAISeq* seq = new JAISeq(this, field_0x10);
    if (seq == NULL) {
        JUT_WARN(273,  "JASPoolAllocObject::<JAISeq>::operator new failed .\n");
    }
    return seq;
}

/* 802A1FE8-802A20F0 29C928 0108+00 1/1 0/0 0/0 .text
 * endStartSeq___9JAISeqMgrFP6JAISeqP14JAISoundHandle           */
bool JAISeqMgr::endStartSeq_(JAISeq* seq, JAISoundHandle* handle) {
    JAISeq* sound = seq->getObject();
    if (sound != NULL) {
        if (sound->status_.isAlive()) {
            mSeqList.append(seq);
            if (handle != NULL) {
                sound->attachHandle(handle);
            }
            return true;
        }
        delete sound;
    }
    return false;
}
