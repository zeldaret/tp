#ifndef JAISTREAM_H
#define JAISTREAM_H

#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JAudio2/JASAramStream.h"
#include "JSystem/JAudio2/JASHeapCtrl.h"
#include "JSystem/JSupport/JSUList.h"

class JAIStreamMgr;

class JAIStream : public JASPoolAllocObject<JAIStream>, public JAISound, public JSULink<JAIStream> {
public:
    struct TInner {
        JASAramStream field_0x0;
    };

    /* 802A3104 */ JAIStream(JAIStreamMgr*, JAISoundStrategyMgr<JAIStream>*);
    /* 802A319C */ void JAIStreamMgr_startID_(JAISoundID, s32, JGeometry::TVec3<f32> const*,
                                              JAIAudience*, int);
    /* 802A3230 */ bool prepare_prepareStream_();
    /* 802A33F4 */ void prepare_();
    /* 802A3498 */ void prepare_startStream_();
    /* 802A34E4 */ void JAIStreamMgr_mixOut_(JASSoundParams const&, JAISoundActivity);
    /* 802A3720 */ void die_JAIStream_();
    /* 802A37FC */ bool JAISound_tryDie_();
    /* 802A388C */ void JAIStreamMgr_calc_();
    /* 802A3948 */ s32 getNumChild() const;
    /* 802A3950 */ JAISoundChild* getChild(int);
    /* 802A3A24 */ void releaseChild(int);
    /* 802A3ABC */ JASTrack* getTrack();
    /* 802A3AC4 */ JASTrack* getChildTrack(int);
    /* 802A3ACC */ JAIStream* asStream();
    /* 802A3AD0 */ JAITempoMgr* getTempoMgr();

    void* JAIStreamMgr_getAramAddr_() { return field_0x29c; }

    /* 0x0A8 */ TInner field_0x0a8;
    /* 0x290 */ int field_0x290;
    /* 0x294 */ s32 field_0x294;
    /* 0x298 */ int field_0x298;
    /* 0x29C */ void* field_0x29c;
    /* 0x2A0 */ JAISoundChild* field_0x2a0[6];
    /* 0x2B8 */ JAIStreamMgr* field_0x2b8;
    /* 0x2BC */ JAISoundStrategyMgr__unknown<JAIStream>* field_0x2bc;
    /* 0x2C0 */ JAISoundStrategyMgr<JAIStream>* field_0x2c0;
    /* 0x2C4 */ u8 field_0x2c4;
    /* 0x2C5 */ u8 field_0x2c5;
    /* 0x2C6 */ u8 field_0x2c6;
};

#endif /* JAISTREAM_H */
