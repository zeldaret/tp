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

        void setVolume(f32 volume) { mVolume = volume; }
        void setPitch(f32 pitch) { mPitch = pitch; }
        void setPan(f32 pan) { mPan = pan; }

        /* 0x00 */ f32 mVolume;
        /* 0x04 */ f32 mPitch;
        /* 0x08 */ f32 mPan;
        /* 0x0C */ u16 field_0xc;
        /* 0x0E */ u16 field_0xe;
        /* 0x10 */ f32 field_0x10;
        /* 0x14 */ f32 field_0x14;
    };

    /* 802982EC */ JASDrumSet();
    /* 80298314 */ virtual ~JASDrumSet();
    /* 80298370 */ void newPercArray(u8, JKRHeap*);
    /* 802983CC */ virtual bool getParam(int, int, JASInstParam*) const;
    /* 802984B4 */ void setPerc(int, JASDrumSet::TPerc*);
    /* 802984EC */ virtual u32 getType() const;
    
    /* 0x4 */ TPerc** field_0x4;
    /* 0x8 */ u8 field_0x8;
};

#endif /* JASDRUMSET_H */
