#ifndef JASDRUMSET_H
#define JASDRUMSET_H

#include "JSystem/JAudio2/JASBasicInst.h"

struct JKRHeap;

/**
 * @ingroup jsystem-jaudio
 * 
 */
struct JASDrumSet : public JASInst {
    struct TPerc {
        /* 802984C4 */ TPerc();
        /* 802984E4 */ void setRelease(u32);

        f32 mVolume;
        f32 mPitch;
        f32 mPan;
        u16 field_0xc;
        u16 field_0xe;
        f32 field_0x10;
        f32 field_0x14;
    };

    /* 802982EC */ JASDrumSet();
    /* 80298314 */ virtual ~JASDrumSet();
    /* 80298370 */ void newPercArray(u8, JKRHeap*);
    /* 802983CC */ virtual bool getParam(int, int, JASInstParam*) const;
    /* 802984B4 */ void setPerc(int, JASDrumSet::TPerc*);
    /* 802984EC */ virtual u32 getType() const;
    
    TPerc** field_0x4;
    u8 field_0x8;
};

#endif /* JASDRUMSET_H */
