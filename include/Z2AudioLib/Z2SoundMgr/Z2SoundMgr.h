#ifndef Z2SOUNDMGR_H_
#define Z2SOUNDMGR_H_

class Z2SoundMgr;

extern "C" {
void resetFilterAll__10Z2SoundMgrFv(void);

void func_802A9EE8(void);

void seqCallback(void);

void calc__10Z2SoundMgrFv(void);
void __ct__10Z2SoundMgrFv(void);
void framework__10Z2SoundMgrFv(void);
void initParams__10Z2SoundMgrFv(void);
void isPlayingSoundID__10Z2SoundMgrF10JAISoundID(void);
void mixOut__10Z2SoundMgrFv(void);
void multiVolumeSoundID__10Z2SoundMgrF10JAISoundIDf(void);
void pauseAllGameSound__10Z2SoundMgrFb(Z2SoundMgr* p0, bool p1);
void setFilterOff__10Z2SoundMgrFP8JAISound(void);
void setIIR__10Z2SoundMgrFP8JAISoundPCs(void);
void stop__10Z2SoundMgrFv(void);
void stopSoundID__10Z2SoundMgrF10JAISoundID(void);
void stopSync__10Z2SoundMgrFv(void);
};

#endif