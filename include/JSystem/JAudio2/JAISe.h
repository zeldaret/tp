#ifndef JAISE_H
#define JAISE_H

#include "JSystem/JAudio2/JAISeqDataMgr.h"
#include "JSystem/JAudio2/JASTrack.h"

class JAISeMgr;

/**
 * @ingroup jsystem-jaudio
 * 
 */
class JAISe : public JSULink<JAISe>, public JASPoolAllocObject<JAISe>, public JAISound {
public:
    class TInner {
    public:
        TInner() : mSeqData(NULL, 0) {}

        /* 0x000 */ u32 mProperPriority;
        /* 0x004 */ u32 mPriority;
        /* 0x008 */ JASSoundParams mSoundParams;
        /* 0x01c */ JASTrack track;
        /* 0x264 */ JAISeqData mSeqData;
        /* 0x26c */ u8 field_0x26c;
        /* 0x270 */ JAISeMgr* seMgr;
        /* 0x274 */ JAISoundStrategyMgr<JAISe>* mSoundStrategyMgr;
        /* 0x278 */ JAISoundStrategyMgr__unknown<JAISe>* field_0x278;
        /* 0x27c */ JAITempoMgr mTempoMgr;
    };

    /* 8029F6D8 */ virtual s32 getNumChild() const;
    /* 8029F6E0 */ virtual JAISoundChild* getChild(int);
    /* 8029F6E8 */ virtual void releaseChild(int);
    /* 8029F84C */ virtual JASTrack* getTrack();
    /* 8029F854 */ virtual JASTrack* getChildTrack(int);
    /* 8029F864 */ virtual JAISe* asSe();
    /* 8029F868 */ virtual JAITempoMgr* getTempoMgr();
    /* 8029F5C8 */ virtual bool JAISound_tryDie_();

    /* 8029F03C */ JAISe(JAISeMgr*, JAISoundStrategyMgr<JAISe>*, u32);
    /* 8029F0F8 */ void mixOut_(JASSoundParams const&);
    /* 8029F214 */ void stopTrack_();
    /* 8029F250 */ void startTrack_(JASSoundParams const&);
    /* 8029F304 */ void JAISeCategoryMgr_mixOut_(bool, JASSoundParams const&, JAISoundActivity);
    /* 8029F4CC */ void JAISeCategoryMgr_calc_();
    /* 8029F650 */ void JAISeMgr_startID_(JAISoundID, JGeometry::TVec3<f32> const*, JAIAudience*);
    /* 8029F6EC */ bool prepare_getSeqData_();
    /* 8029F78C */ void prepare_();

    JAISeqData* getSeqData() { return &inner_.mSeqData; }
    u32 JAISeCategoryMgr_getProperPriority_() const { return inner_.mProperPriority; }
    u32 JAISeCategoryMgr_getPriority_() const { return inner_.mPriority; }
    bool isFarAway() const { return inner_.mPriority == -1; }

    /* 0x0ac */ TInner inner_;
};

#endif /* JAISE_H */
