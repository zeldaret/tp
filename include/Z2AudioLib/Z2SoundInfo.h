#ifndef Z2SOUNDINFO_H
#define Z2SOUNDINFO_H

#include "JSystem/JAudio2/JAISoundInfo.h"
#include "JSystem/JAudio2/JAIStreamDataMgr.h"
#include "JSystem/JAudio2/JAUSoundInfo.h"
#include "JSystem/JAudio2/JAUSoundTable.h"

class Z2SoundInfo : public JAISoundInfo, public JAUSoundInfo, public JAIStreamDataMgr, public JASGlobalInstance<Z2SoundInfo> {
public:
    Z2SoundInfo() : JAISoundInfo(true), JAUSoundInfo(true), JASGlobalInstance<Z2SoundInfo>(true) {}
    /* 802BB448 */ virtual u16 getAudibleSw(JAISoundID soundID) const;
    /* 802BB00C */ virtual u16 getBgmSeqResourceID(JAISoundID soundID) const;
    /* 802BBA88 */ virtual s32 getStreamFileEntry(JAISoundID soundID);
    /* 802BB090 */ virtual int getSoundType(JAISoundID soundID) const;
    /* 802BB0D8 */ virtual int getCategory(JAISoundID soundID) const;
    /* 802BB0E0 */ virtual u32 getPriority(JAISoundID soundID) const;
    /* 802BB6DC */ virtual void getSeInfo(JAISoundID soundID, JAISe* sePtr) const;
    /* 802BB8B4 */ virtual void getSeqInfo(JAISoundID soundID, JAISeq* seqPtr) const;
    /* 802BB8E0 */ virtual void getStreamInfo(JAISoundID soundID, JAIStream* streamPtr) const;
    /* 802BBBE0 */ virtual ~Z2SoundInfo() {}

    /* 802BB158 */ JAUAudibleParam getAudibleSwFull(JAISoundID soundID);
    /* 802BBA10 */ const char* getStreamFilePath(JAISoundID soundID);
    /* 802BBAC8 */ int getSwBit(JAISoundID soundID) const;
    /* 802BBB48 */ void getSoundInfo_(JAISoundID soundID, JAISound* soundPtr) const;

    BOOL isValid() const {
        return JASGlobalInstance<JAUSoundTable>::getInstance() != NULL && JASGlobalInstance<JAUSoundTable>::getInstance()->isValid();
    }
};


inline Z2SoundInfo* Z2GetSoundInfo() {
    return JASGlobalInstance<Z2SoundInfo>::getInstance();
}

#endif /* Z2SOUNDINFO_H */
