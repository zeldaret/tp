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

void Z2SoundInfo_NS_dtor(void);
void Z2SoundInfo_NS_getAudibleSwFull(void);
void Z2SoundInfo_NS_getSoundInfo_(void);
void Z2SoundInfo_NS_getStreamFileEntry(void);
void Z2SoundInfo_NS_getStreamFilePath(void);

void func_802BB6DC(void);
void func_802BBCBC(void);
void func_802BB0E0(void);
void func_802BBCD4(void);
void func_802BBCCC(void);
void func_802BB8B4(void);
void func_802BB090(void);
void func_802BB8E0(void);
void func_802BBCC4(void);
void func_802BB0D8(void);
}

#endif