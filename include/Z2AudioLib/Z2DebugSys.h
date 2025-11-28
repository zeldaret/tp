#ifndef Z2DEBUGSYS_H
#define Z2DEBUGSYS_H

#include "JSystem/JAudio2/JASGadget.h"
#include "JSystem/JAudio2/JAISeqDataMgr.h"

struct Z2DebugSys : public JASGlobalInstance<Z2DebugSys> {
    Z2DebugSys();
    ~Z2DebugSys();

    void initJAW();
    void initSoundHioNode();
    void debugframework();
    JAISeqDataMgr* initSeSeqDataMgr(const void*);
};

#endif
