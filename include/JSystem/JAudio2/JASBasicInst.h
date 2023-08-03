#ifndef JASBASICINST_H
#define JASBASICINST_H

#include "dolphin/types.h"
#include "JSystem/JAudio2/JASOscillator.h"

struct JKRHeap;
struct JASInstParam {
    f32 field_0x0;
    f32 field_0x4;
    f32 field_0x8;
    f32 field_0xc;
    u8 field_0x10[4];
    JASOscillator::Data** field_0x14;
    u16 field_0x18;
    u16 field_0x1a;
    u8 field_0x1c;
    u8 field_0x1d;
    u8 field_0x1e;
};

struct JASInst {
    virtual ~JASInst() {}
	virtual bool getParam(int, int, JASInstParam*) const = 0;
	virtual u32 getType() const                          = 0;
};

struct JASBasicInst : public JASInst {
    struct TKeymap {
        /* 80298250 */ ~TKeymap();
        /* 802982D4 */ TKeymap();

        s32 field_0x0;
        u16 field_0x4;
        u16 field_0x6;
        f32 field_0x8;
        f32 field_0xc;
    };

    /* 80298014 */ JASBasicInst();
    /* 8029819C */ void setKeyRegionCount(u32, JKRHeap*);
    /* 8029821C */ void setOsc(int, JASOscillator::Data const*);
    /* 8029822C */ TKeymap* getKeyRegion(int);

    /* 8029807C */ virtual ~JASBasicInst();
    /* 802980F8 */ virtual bool getParam(int, int, JASInstParam*) const;
    /* 802982E0 */ virtual u32 getType() const { return 'BSIC'; };

    f32 field_0x4;
    f32 field_0x8;
    JASOscillator::Data const* field_0xc[2];
    u32 mKeymapCount;
    TKeymap* mKeymap;
};


#endif /* JASBASICINST_H */
