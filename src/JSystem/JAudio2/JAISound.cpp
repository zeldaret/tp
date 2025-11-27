#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JAudio2/JAIAudience.h"
#include "JSystem/JAudio2/JAISoundHandles.h"
#include "JSystem/JAudio2/JASReport.h"
#include "JSystem/JAudio2/JASTrack.h"

/* 802A2184-802A21A0 29CAC4 001C+00 0/0 14/14 0/0 .text            releaseSound__14JAISoundHandleFv
 */
void JAISoundHandle::releaseSound() {
    if (sound_ != NULL) {
        sound_->handle_ = NULL;
        sound_ = NULL;
    }
}

/* 802A21A0-802A21BC 29CAE0 001C+00 3/3 3/3 0/0 .text            releaseHandle__8JAISoundFv */
void JAISound::releaseHandle() {
    if (handle_ != NULL) {
        handle_->sound_ = NULL;
        handle_ = NULL;
    }
}

/* 802A21BC-802A2220 29CAFC 0064+00 0/0 3/3 0/0 .text attachHandle__8JAISoundFP14JAISoundHandle */
void JAISound::attachHandle(JAISoundHandle* handle) {
    JUT_ASSERT(55, handle);

    if (handle->isSoundAttached()) {
        handle->getSound()->stop();
    }
    if (isHandleAttached()) {
        releaseHandle();
    }
    handle_ = handle;
    handle_->sound_ = this;
}

/* 802A2220-802A2244 29CB60 0024+00 0/0 2/2 0/0 .text lockWhenPrepared__15JAISoundStatus_Fv */
s32 JAISoundStatus_::lockWhenPrepared() {
    if (state.unk == 0) {
        state.unk = 1;
        return 1;
    }
    return 0;
}

/* 802A2244-802A2280 29CB84 003C+00 0/0 2/2 0/0 .text            unlockIfLocked__15JAISoundStatus_Fv
 */
s32 JAISoundStatus_::unlockIfLocked() {
    if (state.unk == 3) {
        state.unk = 4;
        return 1;
    }
    if (state.unk == 1) {
        state.unk = 0;
        return 1;
    }
    return 0;
}

/* 802A2280-802A22F8 29CBC0 0078+00 0/0 4/4 0/0 .text
 * mixOutAll__14JAISoundParamsFRC14JASSoundParamsP14JASSoundParamsf */
void JAISoundParams::mixOutAll(const JASSoundParams& inParams, JASSoundParams* outParams, f32 param_2) {
    outParams->mVolume = move_.params_.mVolume * (inParams.mVolume * property_.field_0x0) * param_2;
    outParams->mFxMix = move_.params_.mFxMix + (inParams.mFxMix + property_.field_0x4);
    outParams->mPitch = move_.params_.mPitch * (inParams.mPitch * property_.field_0x8);
    outParams->mPan = (inParams.mPan + move_.params_.mPan) - 0.5f;
    outParams->mDolby = inParams.mDolby + move_.params_.mDolby;
}

/* 802A22F8-802A2328 29CC38 0030+00 0/0 3/3 0/0 .text            __ct__8JAISoundFv */
JAISound::JAISound() : params_() {}

/* 802A2328-802A244C 29CC68 0124+00 0/0 3/3 0/0 .text
 * start_JAISound___8JAISoundF10JAISoundIDPCQ29JGeometry8TVec3<f>P11JAIAudience */
void JAISound::start_JAISound_(JAISoundID id, const JGeometry::TVec3<f32>* posPtr, JAIAudience* audience) {
    handle_ = NULL;
    soundID_ = id;
    status_.init();
    params_.init();
    fader_.forceIn();
    audience_ = audience;
    prepareCount_ = 0;
    count_ = 0;

    if (posPtr != NULL && audience_ != NULL) {
        audible_ = audience_->newAudible(*posPtr, soundID_, NULL, 0);
    } else {
        audible_ = NULL;
    }

    priority_ = 0;
}

/* 802A244C-802A2474 29CD8C 0028+00 0/0 2/2 0/0 .text            acceptsNewAudible__8JAISoundCFv */
bool JAISound::acceptsNewAudible() const {
    bool accepts = false;
    if (audible_ == NULL && status_.state.flags.calcedOnce == 0) {
        accepts = true;
    }
    return accepts;
}

/* 802A2474-802A24DC 29CDB4 0068+00 0/0 2/2 0/0 .text
/*  * newAudible__8JAISoundFRCQ29JGeometry8TVec3<f>PCQ29JGeometry8TVec3<f>UlP11JAIAudience */
void JAISound::newAudible(const JGeometry::TVec3<f32>& pos,
                          const JGeometry::TVec3<f32>* param_1, u32 param_2, JAIAudience* audience) {
    JUT_ASSERT(151, acceptsNewAudible());
    if (audience != NULL) {
        audience_ = audience;
    }

    JUT_ASSERT(157, audience_);
    audible_ = audience_->newAudible(pos, soundID_, param_1, param_2);
}

/* 802A24DC-802A2598 29CE1C 00BC+00 0/0 24/24 0/0 .text            stop__8JAISoundFUl */
void JAISound::stop(u32 fadeTime) {
    JUT_ASSERT(164, status_.isAlive());
    if (fadeTime == 0) {
        stop();
    } else {
        fader_.fadeOut(fadeTime);
        removeLifeTime_();
        status_.state.flags.flag5 = 1;
        status_.state.flags.flag1 = 1;
    }
}

/* 802A2598-802A25D8 29CED8 0040+00 2/2 21/21 0/0 .text            stop__8JAISoundFv */
void JAISound::stop() {
    stop_JAISound_();
    releaseHandle();
}

/* 802A25D8-802A25E0 29CF18 0008+00 1/0 2/0 0/0 .text            asSe__8JAISoundFv */
JAISe* JAISound::asSe() {
    return NULL;
}

/* 802A25E0-802A25E8 29CF20 0008+00 1/0 2/0 0/0 .text            asSeq__8JAISoundFv */
JAISeq* JAISound::asSeq() {
    return NULL;
}

/* 802A25E8-802A25F0 29CF28 0008+00 1/0 2/0 0/0 .text            asStream__8JAISoundFv */
JAIStream* JAISound::asStream() {
    return NULL;
}

/* 802A25F0-802A266C 29CF30 007C+00 0/0 3/3 0/0 .text            die_JAISound___8JAISoundFv */
void JAISound::die_JAISound_() {
    if (audible_ != NULL) {
        audience_->deleteAudible(audible_);
        audible_ = NULL;
        audience_ = NULL;
    }
    fader_.forceOut();
    releaseHandle();
    status_.state.unk = 6;
}

/* 802A266C-802A26B8 29CFAC 004C+00 0/0 3/3 0/0 .text increasePrepareCount_JAISound___8JAISoundFv
 */
void JAISound::increasePrepareCount_JAISound_() {
    if ((++prepareCount_ & 0xFF) == 0) {
        JASReport("It cost %d steps to prepare Sound(ID:%08x, Address%08x).\n", prepareCount_,
                  *(u32*)&soundID_, this);
    }
}

/* 802A26B8-802A29DC 29CFF8 0324+00 0/0 3/3 0/0 .text            calc_JAISound___8JAISoundFv */
bool JAISound::calc_JAISound_() {
    status_.state.flags.calcedOnce = 1;
    if (isStopping() && JAISound_tryDie_()) {
        return false;
    }

    JUT_ASSERT(230, status_.isAlive());
    bool isPlaying = status_.isPlaying();
    if (isPlaying) {
        count_++;
    }

    bool isPaused = status_.isPaused();
    if (isPaused == false) {
        fader_.calc();
    }

    bool playing = isPlaying && isPaused == false;
    if (playing) {
        params_.move_.calc();
        if (audible_ != NULL) {
            audible_->calc();
        }
        if (status_.field_0x1.flags.flag2 != 0) {
            if (lifeTime_ == 0) {
                stop_JAISound_();
            } else {
                lifeTime_--;
            }
        }
    }

    if (audience_ != NULL && audible_ != NULL) {
        if ((priority_ = audience_->calcPriority(audible_)) == 0xFFFFFFFF && status_.field_0x1.flags.flag1 == 0) {
            stop_JAISound_();
        }
    } else {
        priority_ = 0;
    }

    return playing;
}

/* 802A29DC-802A2AB0 29D31C 00D4+00 0/0 2/2 0/0 .text initTrack_JAISound___8JAISoundFP8JASTrack */
void JAISound::initTrack_JAISound_(JASTrack* track) {
    JASSoundParams* soundParams[JASTrack::TChannelMgr::CHANNEL_MAX];
    JUT_ASSERT(286, audience_);
    JUT_ASSERT(287, audible_);

    int numChannels = 0;
    JUT_ASSERT(290, audience_->getMaxChannels() < JASTrack::TChannelMgr::CHANNEL_MAX);
    
    for (int i = 0; i < audience_->getMaxChannels(); i++) {
        JASSoundParams* currentParams = audible_->getOuterParams(i);
        if (currentParams != NULL) {
            soundParams[numChannels++] = currentParams;
        }
    }

    JUT_ASSERT(298, numChannels >= 1);
    track->setChannelMgrCount(numChannels);

    for (u32 i = 0; i < track->getChannelMgrCount(); i++) {
        track->assignExtBuffer(i, soundParams[i]);
    }
}
