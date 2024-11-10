#ifndef JASBASICINST_H
#define JASBASICINST_H

#include "JSystem/JAudio2/JASOscillator.h"
#include "JSystem/JAudio2/JASSoundParams.h"

struct JKRHeap;

/**
 * @ingroup jsystem-jaudio
 * 
 */
struct JASInstParam : public JASSoundParams {
    JASInstParam() {
        field_0x14 = NULL;
        field_0x18 = 0;
        field_0x1a = 0;
        field_0x1c = 0;
        field_0x1d = 0;
        field_0x1e = 0;
    }

    JASOscillator::Data** field_0x14;
    u16 field_0x18;
    u16 field_0x1a;
    u8 field_0x1c;
    u8 field_0x1d;
    u8 field_0x1e;
};

/**
 * @ingroup jsystem-jaudio
 * 
 */
struct JASInst {
    virtual ~JASInst() {}
	virtual bool getParam(int, int, JASInstParam*) const = 0;
	virtual u32 getType() const                          = 0;
};

/**
 * @ingroup jsystem-jaudio
 * 
 */
struct JASBasicInst : public JASInst {
    struct TKeymap {
        /* 80298250 */ ~TKeymap();
        /* 802982D4 */ TKeymap() { mHighKey = -1; }
        void setHighKey(int key) { mHighKey = key; }

        /* 0x0 */ s32 mHighKey;
        /* 0x4 */ u16 field_0x4;
        /* 0x6 */ u16 field_0x6;
        /* 0x8 */ f32 field_0x8;
        /* 0xC */ f32 field_0xc;
    };

    /* 80298014 */ JASBasicInst();
    /* 8029819C */ void setKeyRegionCount(u32, JKRHeap*);
    /* 8029821C */ void setOsc(int, JASOscillator::Data const*);
    /* 8029822C */ TKeymap* getKeyRegion(int);

    /* 8029807C */ virtual ~JASBasicInst();
    /* 802980F8 */ virtual bool getParam(int, int, JASInstParam*) const;
    /* 802982E0 */ virtual u32 getType() const { return 'BSIC'; };

    void setVolume(f32 volume) { mVolume = volume; }
    void setPitch(f32 pitch) { mPitch = pitch; }

    /* 0x04 */ f32 mVolume;
    /* 0x08 */ f32 mPitch;
    /* 0x0C */ JASOscillator::Data const* field_0xc[2];
    /* 0x10 */ u32 mKeymapCount;
    /* 0x14 */ TKeymap* mKeymap;
};


#endif /* JASBASICINST_H */
