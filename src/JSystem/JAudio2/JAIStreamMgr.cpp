#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/JAudio2/JAIStreamMgr.h"
#include "JSystem/JAudio2/JAISoundHandles.h"
#include "JSystem/JAudio2/JAIStreamDataMgr.h"
#include "JSystem/JAudio2/JAISoundInfo.h"

/* 802A3B68-802A3C3C 29E4A8 00D4+00 0/0 1/1 0/0 .text            __ct__12JAIStreamMgrFb */
JAIStreamMgr::JAIStreamMgr(bool setInstance) : JASGlobalInstance<JAIStreamMgr>(setInstance) {
    streamDataMgr_ = NULL;
    mStreamAramMgr = NULL;
    field_0x6c = NULL;
    mAudience = NULL;
    mParams.init();
    mActivity.init();
}

/* 802A3C3C-802A3D70 29E57C 0134+00 0/0 1/1 0/0 .text
 * startSound__12JAIStreamMgrF10JAISoundIDP14JAISoundHandlePCQ29JGeometry8TVec3<f> */
bool JAIStreamMgr::startSound(JAISoundID id, JAISoundHandle* handle, const JGeometry::TVec3<f32>* posPtr) {
    JUT_ASSERT(37, streamDataMgr_);
    if (handle != NULL && *handle) {
        (*handle)->stop();
    }

    s32 streamFileEntry = streamDataMgr_->getStreamFileEntry(id);
    if (streamFileEntry < 0) {
        JUT_WARN(46, "Cannot find the stream file entry for ID:%08x\n", id.id_.composite_)
        return false;
    } 

    JAIStream* stream = newStream_();
    JAISoundInfo* soundInfo = JASGlobalInstance<JAISoundInfo>::getInstance();

    int category = -1;
    if (soundInfo != NULL) {
        category = soundInfo->getCategory(id);
    }

    if (stream == NULL) {
        return false;
    }

    stream->JAIStreamMgr_startID_(id, streamFileEntry, posPtr, mAudience, category);
    if (soundInfo != NULL) {
        soundInfo->getStreamInfo(id, stream);
    }

    if (handle != NULL) {
        stream->attachHandle(handle);
    }

    return false;
}

/* 802A3D70-802A3E68 29E6B0 00F8+00 1/1 0/0 0/0 .text            freeDeadStream___12JAIStreamMgrFv
 */
void JAIStreamMgr::freeDeadStream_() {
    JSULink<JAIStream>* i = mStreamList.getFirst();
    while (i != NULL) {
        JAIStream* stream = i->getObject();
        JSULink<JAIStream>* next = i->getNext();
        if (stream->status_.isDead()) {
            mStreamList.remove(i);
            void* aramAddr = stream->JAIStreamMgr_getAramAddr_();
            if (aramAddr != NULL) {
                bool result = mStreamAramMgr->deleteStreamAram((u32)aramAddr);
                JUT_ASSERT(105, result);
            }
            
            delete stream;
        }
        i = next;
    }
}

/* 802A3EBC-802A4028 29E7FC 016C+00 0/0 1/1 0/0 .text            calc__12JAIStreamMgrFv */
void JAIStreamMgr::calc() {
    JSULink<JAIStream>* i;
    mParams.calc();
    for (i = mStreamList.getFirst(); i != NULL; i = i->getNext()) {
        i->getObject()->JAIStreamMgr_calc_();
    }
    freeDeadStream_();
}

/* 802A4028-802A4068 29E968 0040+00 0/0 1/1 0/0 .text            stop__12JAIStreamMgrFv */
void JAIStreamMgr::stop() {
    JSULink<JAIStream>* i;
    for (i = mStreamList.getFirst(); i != NULL; i = i->getNext()) {
        i->getObject()->stop();
    }
}

/* 802A4068-802A40B8 29E9A8 0050+00 0/0 2/2 0/0 .text            stop__12JAIStreamMgrFUl */
void JAIStreamMgr::stop(u32 fadeTime) {
    JSULink<JAIStream>* i;
    for (i = mStreamList.getFirst(); i != NULL; i = i->getNext()) {
        i->getObject()->stop(fadeTime);
    }
}

/* 802A40B8-802A4118 29E9F8 0060+00 0/0 1/1 0/0 .text stopSoundID__12JAIStreamMgrF10JAISoundID */
void JAIStreamMgr::stopSoundID(JAISoundID id) {
    JSULink<JAIStream>* i;
    for (i = mStreamList.getFirst(); i != NULL; i = i->getNext()) {
        if ((u32)i->getObject()->getID() == (u32)id) {
            i->getObject()->stop();
        }
    }
}

/* 802A4118-802A4174 29EA58 005C+00 0/0 1/1 0/0 .text            mixOut__12JAIStreamMgrFv */
void JAIStreamMgr::mixOut() {
    JSULink<JAIStream>* i;
     for (i = mStreamList.getFirst(); i != NULL; i = i->getNext()) {
        i->getObject()->JAIStreamMgr_mixOut_(mParams.params_, mActivity);
    }
}

/* 802A4174-802A4244 29EAB4 00D0+00 1/1 0/0 0/0 .text            newStream___12JAIStreamMgrFv */
JAIStream* JAIStreamMgr::newStream_() {
    if (mStreamAramMgr == NULL) {
        JUT_WARN(229, "%s", "JAIStreamAramMgr must be set.\n");
        return NULL;
    } 

    JAIStream* stream = new JAIStream(this, field_0x6c);
    if (stream == NULL) {
        JUT_WARN(235, "%s", "JASPoolAllocObject::<JAIStream>::operator new failed .\n");
        return NULL;
    }

    mStreamList.append(stream);
    return stream;
}
