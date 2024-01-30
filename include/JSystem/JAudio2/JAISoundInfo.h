#ifndef JAISOUNDINFO_H
#define JAISOUNDINFO_H

#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JAudio2/JASGadget.h"

struct JAISoundInfo : public JASGlobalInstance<JAISoundInfo> {
    /* 802A2D34 */ JAISoundInfo(bool);
    virtual int getSoundType(JAISoundID) const = 0;
    virtual int getCategory(JAISoundID) const = 0;
    virtual u32 getPriority(JAISoundID) const = 0;
    virtual void getSeInfo(JAISoundID, JAISe*) const = 0;
    virtual void getSeqInfo(JAISoundID, JAISeq*) const = 0;
    virtual void getStreamInfo(JAISoundID, JAIStream*) const = 0;
    /* 802A2D50 */ virtual ~JAISoundInfo();
};

#endif /* JAISOUNDINFO_H */
