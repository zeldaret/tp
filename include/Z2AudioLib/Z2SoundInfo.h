#ifndef Z2SOUNDINFO_H
#define Z2SOUNDINFO_H

#include "JSystem/JAudio2/JAISound.h"

struct JAISeq;

struct JAISound;

struct JAIStream;

struct JAISe;

struct JAISoundInfo {
    virtual void getSoundType(JAISoundID) const = 0;
    virtual void getCategory(JAISoundID) const = 0;
    virtual void getPriority(JAISoundID) const = 0;
    virtual void getSeInfo(JAISoundID, JAISe*) const = 0;
    virtual void getSeqInfo(JAISoundID, JAISeq*) const = 0;
    virtual void getStreamInfo(JAISoundID, JAIStream*) const = 0;
    virtual ~JAISoundInfo();
};

struct JAUSoundInfo {
    virtual void getAudibleSw(JAISoundID) const = 0;
    virtual void getBgmSeqResourceID(JAISoundID) const = 0;
};

struct JAIStreamDataMgr {
    virtual void getStreamFileEntry(JAISoundID) = 0;
    virtual ~JAIStreamDataMgr();
};

struct Z2SoundInfo /* : public JAISoundInfo, public JAUSoundInfo, public JAIStreamDataMgr */ {
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

/**
 * this is supposed to be:
 * JASGlobalInstance<Z2SoundInfo>::sInstance
 * sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
extern Z2SoundInfo* data_80450B4C;

/**
 * this is supposed to be:
 * JASGlobalInstance<JAUSoundInfo>::sInstance
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>
 */
extern JAUSoundInfo* data_80450B50;

#endif /* Z2SOUNDINFO_H */
