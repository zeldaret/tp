#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/JAudio2/JAISeq.h"
#include "JSystem/JAudio2/JAISeqMgr.h"
#include "JSystem/JAudio2/JAISoundChild.h"
#include "JSystem/JAudio2/JASCriticalSection.h"
#include "JSystem/JAudio2/JAIAudience.h"

namespace {

/* 802A0A6C-802A0A8C 29B3AC 0020+00 1/1 0/0 0/0 .text
 * JASTrack_isFreeOrStopped__20@unnamed@JAISeq_cpp@FP8JASTrack  */
static bool JASTrack_isFreeOrStopped(JASTrack* track) {
    u32 status = track->getStatus();
    return status == JASTrack::STATUS_FREE || status == JASTrack::STATUS_STOP;
}

}  // namespace

/* 802A0A8C-802A0B64 29B3CC 00D8+00 0/0 2/1 0/0 .text
 * __ct__6JAISeqFP9JAISeqMgrP28JAISoundStrategyMgr<6JAISeq>     */
JAISeq::JAISeq(JAISeqMgr* seqMgr, JAISoundStrategyMgr<JAISeq>* soundStrategyMgr) : JSULink<JAISeq>(this) {
    inner_.seqMgr = seqMgr;
    inner_.strategyMgr = soundStrategyMgr;
    inner_.mSoundParams.init();
    for (int i = 0; i < 32; i++) {
        inner_.mSoundChild[i] = NULL;
    }
}

/* 802A0B64-802A0C04 29B4A4 00A0+00 0/0 1/1 0/0 .text
 * JAISeqMgr_startID___6JAISeqF10JAISoundIDPCQ29JGeometry8TVec3<f>P11JAIAudienceii */
void JAISeq::JAISeqMgr_startID_(JAISoundID id, const JGeometry::TVec3<f32>* posPtr,
                                JAIAudience* audience, int category, int param_4) {
    inner_.field_0x39c = category;
    reserveChildTracks_(param_4);
    start_JAISound_(id, posPtr, audience);

    if (inner_.strategyMgr) {
        field_0x3a8 = inner_.strategyMgr->calc(id);
    } else {
        field_0x3a8 = NULL;
    }
}

/* 802A0C04-802A0CA4 29B544 00A0+00 1/1 0/0 0/0 .text
 * playSeqData___6JAISeqFRC14JASSoundParams16JAISoundActivity   */
void JAISeq::playSeqData_(const JASSoundParams& params, JAISoundActivity activity) {
    JUT_ASSERT(72, JASTrack_isFreeOrStopped( & inner_.outputTrack ));

    inner_.outputTrack.setSeqData(inner_.mSeqData.field_0x0, inner_.mSeqData.field_0x4);
    if (audible_) {
        initTrack_JAISound_(&inner_.outputTrack);
    } else {
        inner_.outputTrack.setChannelMgrCount(1);
        inner_.outputTrack.assignExtBuffer(0, &inner_.mSoundParams);
    }

    mixOut_(params, activity);
    inner_.outputTrack.startSeq();
}

/* 802A0CA4-802A0E48 29B5E4 01A4+00 1/1 0/0 0/0 .text            reserveChildTracks___6JAISeqFi */
void JAISeq::reserveChildTracks_(int param_0) {
    JUT_ASSERT(92, inner_.outputTrack.getStatus() == JASTrack::STATUS_FREE);

    for (int i = 0; i < 2; i++) {
        JASTrack* track = new JASTrack();
        if (track) {
            track->setAutoDelete(true);
            inner_.outputTrack.connectChild(i, track);

            for (int j = 0; j < 16; j++) {
                int sp18 = i * 16 + j;
                if (sp18 >= param_0) {
                    continue;
                }

                JASTrack* track2 = new JASTrack();
                if (track2) {
                    track2->setAutoDelete(true);
                    track->connectChild(j, track2);
                } else {
                    JUT_WARN(117, "%s", "JASPoolAllocObject::<JASTrack>::operator new failed .\n");
                }
            }
        } else {
            JUT_WARN(124, "%s", "JASPoolAllocObject::<JASTrack>::operator new failed .\n");
        }
    }
}

/* 802A0E48-802A0EDC 29B788 0094+00 1/1 0/0 0/0 .text            releaseChildTracks___6JAISeqFv */
void JAISeq::releaseChildTracks_() {
    for (u32 i = 0; i < 2; i++) {
        JASTrack* track = inner_.outputTrack.getChild(i);
        if (track) {
            for (u32 j = 0; j < 16; j++) {
                JASTrack* track2 = track->getChild(j);
                if (track2) {
                    delete track2;
                }
            }
            delete track;
        }
    }
}

/* 802A0EDC-802A0F90 29B81C 00B4+00 1/1 0/0 0/0 .text            prepare_getSeqData___6JAISeqFv */
bool JAISeq::prepare_getSeqData_() {
    JAISoundID id(soundID_);  // fakematch, should be using getID but it messes up stack
    if (id.isAnonymous()) {
        return true;
    }

    JAISeqDataMgr* seqDataMgr = inner_.seqMgr->getSeqDataMgr();
    JUT_ASSERT(162, seqDataMgr);

    switch (seqDataMgr->getSeqData(id, &inner_.mSeqData)) {
    case 0:
        OS_REPORT("Failed In Loading Sequence Data:SEQ(0x%08x)\n", getID());
        status_.state.unk = 2;
        break;
    case 1:
        increasePrepareCount_JAISound_();
        return false;
    case 2:
        return true;
    }

    return false;
}

/* 802A0F90-802A108C 29B8D0 00FC+00 2/1 0/0 0/0 .text
 * prepare___6JAISeqFRC14JASSoundParams16JAISoundActivity       */
bool JAISeq::prepare_(const JASSoundParams& params, JAISoundActivity activity) {
    switch (status_.state.unk) {
    case 6:
        JUT_ASSERT(193, false);
        break;
    case 2:
        stop_JAISound_();
        break;
    case 0:
        if (prepare_getSeqData_()) {
            status_.state.unk = 5;
            playSeqData_(params, activity);
            return true;
        }
        break;
    case 1:
        if (prepare_getSeqData_()) {
            status_.state.unk = 3;
        }
        return false;
    case 4:
        status_.state.unk = 5;
        playSeqData_(params, activity);
        return true;
    case 5:
        return true;
    }

    return false;
}

/* 802A108C-802A1180 29B9CC 00F4+00 0/0 1/1 0/0 .text            JAISeqMgr_calc___6JAISeqFv */
void JAISeq::JAISeqMgr_calc_() {
    if (inner_.outputTrack.getStatus() == JASTrack::STATUS_STOP || (inner_.outputTrack.getStatus() == JASTrack::STATUS_FREE && status_.state.unk == 2)) {
        die_();
        return;
    }

    if (calc_JAISound_()) {
        inner_.mTempoMgr.calc();
        for (int i = 0; i < 32; i++) {
            if (inner_.mSoundChild[i]) {
                inner_.mSoundChild[i]->calc();
            }
        }
        if (field_0x3a8) {
            field_0x3a8->calc(this);
        }
    }
}

/* 802A1180-802A1268 29BAC0 00E8+00 2/2 0/0 0/0 .text            die___6JAISeqFv */
void JAISeq::die_() {
    JUT_ASSERT(269, JASTrack_isFreeOrStopped( & inner_.outputTrack ));

    for (int i = 0; i < 32; i++) {
        if (inner_.mSoundChild[i]) {
            delete inner_.mSoundChild[i];
            inner_.mSoundChild[i] = NULL;
        }
    }

    if (field_0x3a8) {
        JUT_ASSERT(281, inner_.strategyMgr);
        inner_.strategyMgr->virtual4(field_0x3a8);
        field_0x3a8 = NULL;
    }

    releaseChildTracks_();
    die_JAISound_();
}

/* 802A12BC-802A1348 29BBFC 008C+00 1/0 0/0 0/0 .text            JAISound_tryDie___6JAISeqFv */
bool JAISeq::JAISound_tryDie_() {
    if (JASTrack_isFreeOrStopped(&inner_.outputTrack)) {
        die_();
        return true;
    }

    fader_.forceOut();
    status_.state.flags.flag1 = 1;

    {
        JASCriticalSection cs;
        inner_.outputTrack.stopSeq();
    }

    return false;
}

/* 802A1348-802A14FC 29BC88 01B4+00 2/2 0/0 0/0 .text
 * mixOut___6JAISeqFRC14JASSoundParams16JAISoundActivity        */
void JAISeq::mixOut_(const JASSoundParams& params, JAISoundActivity activity) {
    inner_.outputTrack.setTempoRate(inner_.mTempoMgr.getTempo());
    inner_.outputTrack.mute(activity.field_0x0.flags.flag1 || status_.isMute());
    inner_.outputTrack.pause(activity.field_0x0.flags.flag2 || status_.isPaused());

    JASSoundParams outParams;
    params_.mixOutAll(params, &outParams, fader_.getIntensity());

    if (field_0x3a8) {
        field_0x3a8->virtual4(this, outParams);
    }

    if (audible_) {
        int maxChannels = audience_->getMaxChannels();
        for (int i = 0; i < maxChannels; i++) {
            audience_->mixChannelOut(outParams, audible_, i);
        }
    } else {
        inner_.mSoundParams = outParams;
        for (int i = 0; i < NUM_CHILDREN; i++) {
            if (inner_.mSoundChild[i]) {
                JASTrack* track = JAISeq::getChildTrack(i);
                if (track) {
                    inner_.mSoundChild[i]->mixOut(track);
                }
            }
        }
    }
}

/* 802A14FC-802A1570 29BE3C 0074+00 0/0 1/1 0/0 .text
 * JAISeqMgr_mixOut___6JAISeqFRC14JASSoundParams16JAISoundActivity */
void JAISeq::JAISeqMgr_mixOut_(const JASSoundParams& params, JAISoundActivity activity) {
    if (prepare_(params, activity) && inner_.outputTrack.getStatus() == JASTrack::STATUS_RUN) {
        mixOut_(params, activity);
    }
}

/* 802A1570-802A1578 29BEB0 0008+00 1/0 0/0 0/0 .text            getNumChild__6JAISeqCFv */
s32 JAISeq::getNumChild() const {
    return NUM_CHILDREN;
}

/* 802A1578-802A165C 29BEB8 00E4+00 1/0 0/0 0/0 .text            getChild__6JAISeqFi */
JAISoundChild* JAISeq::getChild(int index) {
    JUT_ASSERT(371, status_.isAlive());
    JUT_ASSERT(372, index >= 0);
    JUT_ASSERT(373, index < NUM_CHILDREN);

    if (inner_.mSoundChild[index]) {
        return inner_.mSoundChild[index];
    }

    inner_.mSoundChild[index] = new JAISoundChild();
    if (!inner_.mSoundChild[index]) {
        JUT_WARN(379, "%s", "JASPoolAllocObject::<JAISoundChild>::operator new failed .\n");
        return NULL;
    }

    return inner_.mSoundChild[index];
}


/* 802A165C-802A1728 29BF9C 00CC+00 1/0 0/0 0/0 .text            releaseChild__6JAISeqFi */
void JAISeq::releaseChild(int index) {
    if (inner_.outputTrack.getStatus() == JASTrack::STATUS_RUN && inner_.mSoundChild[index]) {
        JASTrack* track = getChildTrack(index);
        if (track) {
            track->assignExtBuffer(0, NULL);
        }
        delete inner_.mSoundChild[index];
        inner_.mSoundChild[index] = NULL;
    }
}

/* 802A1728-802A1730 29C068 0008+00 1/0 0/0 0/0 .text            getTrack__6JAISeqFv */
JASTrack* JAISeq::getTrack() {
    return &inner_.outputTrack;
}

/* 802A1730-802A1768 29C070 0038+00 2/1 0/0 0/0 .text            getChildTrack__6JAISeqFi */
JASTrack* JAISeq::getChildTrack(int param_0) {
    u32 index = u32(param_0) >> 4;
    JASTrack* track = inner_.outputTrack.getChild(index);

    if (track) {
        u32 var_r28 = param_0 - (index << 4);
        JASTrack* track2 = track->getChild(var_r28);
        return track2;
    }

    return NULL;
}

/* 802A1768-802A176C 29C0A8 0004+00 1/0 0/0 0/0 .text            asSeq__6JAISeqFv */
JAISeq* JAISeq::asSeq() {
    return this;
}

/* 802A176C-802A1774 29C0AC 0008+00 1/0 0/0 0/0 .text            getTempoMgr__6JAISeqFv */
JAITempoMgr* JAISeq::getTempoMgr() {
    return &inner_.mTempoMgr;
}
