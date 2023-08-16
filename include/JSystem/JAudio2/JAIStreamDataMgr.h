#ifndef JAISTREAMDATAMGR_H
#define JAISTREAMDATAMGR_H

#include "JSystem/JAudio2/JAISound.h"

struct JAIStreamDataMgr {
    virtual void getStreamFileEntry(JAISoundID) = 0;
    virtual ~JAIStreamDataMgr();
};

struct JAIStreamAramMgr {
    virtual void newStreamAram(u32*) = 0;
    virtual void deleteStreamAram(u32) = 0;
    virtual ~JAIStreamAramMgr();
};

#endif /* JAISTREAMDATAMGR_H */
