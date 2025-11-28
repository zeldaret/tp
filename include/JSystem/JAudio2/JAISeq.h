#ifndef JAISEQ_H
#define JAISEQ_H

#include "JSystem/JAudio2/JAISeqDataMgr.h"
#include "JSystem/JAudio2/JASTrack.h"
#include "JSystem/JSupport/JSUList.h"

class JAISeqMgr;
class JAISoundChild;

/**
 * @ingroup jsystem-jaudio
 * 
 */
class JAISeq : public JASPoolAllocObject<JAISeq>, public JAISound, public JSULink<JAISeq> {
public:
    static const int NUM_CHILDREN = 32;

    class TInner {
    public:
        TInner() : mSeqData(NULL, 0) {}

        /* 0x000 */ JASTrack outputTrack;
        /* 0x248 */ JAISoundChild* mSoundChild[NUM_CHILDREN];
        /* 0x2C8 */ JAITempoMgr mTempoMgr;
        /* 0x2D8 */ JASSoundParams mSoundParams;
        /* 0x2EC */ JAISeqData mSeqData;
        /* 0x2F4 */ s32 field_0x39c;
        /* 0x2F8 */ JAISeqMgr* seqMgr;
        /* 0x2FC */ JAISoundStrategyMgr<JAISeq>* strategyMgr;
    };

    /* 802A1570 */ virtual s32 getNumChild() const;
    /* 802A1578 */ virtual JAISoundChild* getChild(int index);
    /* 802A165C */ virtual void releaseChild(int index);
    /* 802A1768 */ virtual JAISeq* asSeq();
    /* 802A1728 */ virtual JASTrack* getTrack();
    /* 802A1730 */ virtual JASTrack* getChildTrack(int);
    /* 802A176C */ virtual JAITempoMgr* getTempoMgr();
    /* 802A12BC */ virtual bool JAISound_tryDie_();

    /* 802A0A8C */ JAISeq(JAISeqMgr* seqMgr, JAISoundStrategyMgr<JAISeq>* soundStrategyMgr);
    /* 802A0B64 */ void JAISeqMgr_startID_(JAISoundID id, const JGeometry::TVec3<f32>* posPtr, JAIAudience* audience,
                                           int category, int);
    /* 802A0C04 */ void playSeqData_(const JASSoundParams& params, JAISoundActivity activity);
    /* 802A0CA4 */ void reserveChildTracks_(int);
    /* 802A0E48 */ void releaseChildTracks_();
    /* 802A0EDC */ bool prepare_getSeqData_();
    /* 802A0F90 */ bool prepare_(const JASSoundParams& params, JAISoundActivity activity);
    /* 802A108C */ void JAISeqMgr_calc_();
    /* 802A1180 */ void die_();
    /* 802A1348 */ void mixOut_(const JASSoundParams& params, JAISoundActivity activity);
    /* 802A14FC */ void JAISeqMgr_mixOut_(const JASSoundParams& params, JAISoundActivity activity);

    JAISeqData& getSeqData() { return inner_.mSeqData; }

    /* 0x0A8 */ TInner inner_;
    /* 0x3A8 */ JAISoundStrategyMgr__unknown<JAISeq>* field_0x3a8;
};

#endif /* JAISEQ_H */
