#ifndef JAISEQDATAMGR_H
#define JAISEQDATAMGR_H

#include "JSystem/JAudio2/JAISound.h"

struct JAISeqData {
    JAISeqData(void* param_0, u32 param_1) {
        field_0x0 = param_0;
        field_0x4 = param_1;
    }

    void set(void* param_0, u32 param_1) {
        field_0x0 = param_0;
        field_0x4 = param_1;
    }

    /* 0x00 */ void* field_0x0;
    /* 0x04 */ u32 field_0x4;
};

struct JAISeqDataRegion {
    bool intersects(JAISeqData& seqData) const {
        if ((u32)addr + size < (u32)seqData.field_0x0) {
            return false;
        }
        if ((u32)seqData.field_0x0 + seqData.field_0x4 < (u32)addr) {
            return false;
        }
        return true;
    }

    /* 0x00 */ u8* addr;
    /* 0x04 */ u32 size;
};


struct JAISeqDataUser {
    virtual ~JAISeqDataUser();
    virtual bool isUsingSeqData(JAISeqDataRegion const&) = 0;
    virtual int releaseSeqData(JAISeqDataRegion const&) = 0;
};

struct JAISeqDataMgr {
    enum SeqDataReturnValue{ SeqDataReturnValue_0 = 0, SeqDataReturnValue_1 = 1, SeqDataReturnValue_2 = 2};
    virtual ~JAISeqDataMgr();
    virtual SeqDataReturnValue getSeqData(JAISoundID, JAISeqData*) = 0;
    virtual int releaseSeqData() = 0;
    virtual bool setSeqDataUser(JAISeqDataUser*) = 0;
};

#endif /* JAISEQDATAMGR_H */
