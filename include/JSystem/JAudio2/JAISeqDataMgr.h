#ifndef JAISEQDATAMGR_H
#define JAISEQDATAMGR_H

#include "JSystem/JAudio2/JAISound.h"
#include "dolphin/types.h"

struct JAISeqDataRegion {};

struct JAISeqData;

struct JAISeqDataUser {
    virtual ~JAISeqDataUser();
    virtual bool isUsingSeqData(JAISeqDataRegion const&) = 0;
    virtual void releaseSeqData(JAISeqDataRegion const&) = 0;
};

struct JAISeqDataMgr {
    virtual ~JAISeqDataMgr();
    virtual void getSeqData(JAISoundID, JAISeqData*) = 0;
    virtual void releaseSeqData() = 0;
    virtual void setSeqDataUser(JAISeqDataUser*) = 0;
};

#endif /* JAISEQDATAMGR_H */
