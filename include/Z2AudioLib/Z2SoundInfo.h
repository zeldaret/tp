#ifndef Z2SOUNDINFO_H
#define Z2SOUNDINFO_H

#include "JSystem/JAudio2/JAISoundInfo.h"

struct JAISeq;

struct JAISound;

struct JAIStream;

struct JAISe;

struct JAUSoundInfo : public JASGlobalInstance<JAUSoundInfo> {
    virtual void getAudibleSw(JAISoundID) const = 0;
    virtual void getBgmSeqResourceID(JAISoundID) const = 0;
};

struct JAIStreamDataMgr {
    virtual void getStreamFileEntry(JAISoundID) = 0;
    virtual ~JAIStreamDataMgr();
};

struct Z2SoundInfo /* : public JAISoundInfo, public JAUSoundInfo, public JAIStreamDataMgr */ : public JASGlobalInstance<Z2SoundInfo> {
    /* 802BB00C */ void getBgmSeqResourceID(JAISoundID) const;
    /* 802BB158 */ void getAudibleSwFull(JAISoundID);
    /* 802BB448 */ void getAudibleSw(JAISoundID) const;
    /* 802BBA10 */ void getStreamFilePath(JAISoundID);
    /* 802BBA88 */ void getStreamFileEntry(JAISoundID);
    /* 802BBAC8 */ void getSwBit(JAISoundID) const;
    /* 802BBB48 */ void getSoundInfo_(JAISoundID, JAISound*) const;

    /* 802BB090 */ void getSoundType(JAISoundID) const;
    /* 802BB0D8 */ void getCategory(JAISoundID) const;
    /* 802BB0E0 */ void getPriority(JAISoundID) const;
    /* 802BB6DC */ void getSeInfo(JAISoundID, JAISe*) const;
    /* 802BB8B4 */ void getSeqInfo(JAISoundID, JAISeq*) const;
    /* 802BB8E0 */ void getStreamInfo(JAISoundID, JAIStream*) const;
    /* 802BBBE0 */ virtual ~Z2SoundInfo();
};

#endif /* Z2SOUNDINFO_H */
