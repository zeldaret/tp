#ifndef JASSIMPLEWAVEBANK_H
#define JASSIMPLEWAVEBANK_H

#include "JSystem/JAudio2/JASBasicWaveBank.h"
#include "JSystem/JAudio2/JASWaveInfo.h"
#include "JSystem/JKernel/JKRHeap.h"

struct JASSimpleWaveBank : JASWaveBank, JASWaveArc {
    struct TWaveHandle : JASWaveHandle {
        /* 80298F38 */ int getWavePtr() const;
        /* 80298F5C */ TWaveHandle();
        /* 80298F90 */ const JASWaveInfo* getWaveInfo() const;

        /* 0x04 */ JASWaveInfo mWaveInfo;
        /* 0x28 */ JASHeap* mHeap;
    };

    /* 80298C94 */ JASSimpleWaveBank();
    /* 80298CF4 */ ~JASSimpleWaveBank();
    /* 80298DE0 */ void setWaveTableSize(u32, JKRHeap*);
    /* 80298E60 */ JASWaveHandle* getWaveHandle(u32) const;
    /* 80298E84 */ void setWaveInfo(u32, JASWaveInfo const&);
    /* 80298F18 */ JASWaveArc* getWaveArc(u32);
    /* 80298F98 */ u32 getArcCount() const;

    /* 0x78 */ TWaveHandle* mWaveTable;
    /* 0x7C */ u32 mWaveTableSize;
};

#endif /* JASSIMPLEWAVEBANK_H */
