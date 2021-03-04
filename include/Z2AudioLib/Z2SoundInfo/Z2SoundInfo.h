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