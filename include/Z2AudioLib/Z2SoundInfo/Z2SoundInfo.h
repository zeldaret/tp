#ifndef __Z2SOUNDINFO_H__
#define __Z2SOUNDINFO_H__

#include "JSystem/JAudio2/JAISound/JAISound.h"
#include "dolphin/types.h"

class Z2SoundInfo {
public:
    u32 getBgmSeqResourceID(JAISoundID) const;
    u32 getCategory(void) const;

    u32 getSwBit(JAISoundID) const;
};

extern Z2SoundInfo* lbl_80450B4C;

extern "C" {
void getBgmSeqResourceID__11Z2SoundInfoCF10JAISoundID(void);
void getSwBit__11Z2SoundInfoCF10JAISoundID(void);

void __dt__11Z2SoundInfoFv(void);
void getAudibleSwFull__11Z2SoundInfoF10JAISoundID(void);
void getSoundInfo___11Z2SoundInfoCF10JAISoundIDP8JAISound(void);
void getStreamFileEntry__11Z2SoundInfoF10JAISoundID(void);
void getStreamFilePath__11Z2SoundInfoF10JAISoundID(void);

void getSeInfo__11Z2SoundInfoCF10JAISoundIDP5JAISe(void);
void func_802BBCBC(void);
void getPriority__11Z2SoundInfoCF10JAISoundID(void);
void func_802BBCD4(void);
void func_802BBCCC(void);
void getSeqInfo__11Z2SoundInfoCF10JAISoundIDP6JAISeq(void);
void getSoundType__11Z2SoundInfoCF10JAISoundID(void);
void getStreamInfo__11Z2SoundInfoCF10JAISoundIDP9JAIStream(void);
void func_802BBCC4(void);
void getCategory__11Z2SoundInfoCF10JAISoundID(void);
}

#endif