#ifndef Z2SOUNDMGR_H_
#define Z2SOUNDMGR_H_

class Z2SoundMgr;

extern "C" {
void resetFilterAll__10Z2SoundMgrFv(void);

void func_802A9EE8(void);

void seqCallback(void);

void Z2SoundMgr_NS_calc(void);
void Z2SoundMgr_NS_ctor(void);
void Z2SoundMgr_NS_framework(void);
void Z2SoundMgr_NS_initParams(void);
void Z2SoundMgr_NS_isPlayingSoundID(void);
void Z2SoundMgr_NS_mixOut(void);
void Z2SoundMgr_NS_multiVolumeSoundID(void);
void Z2SoundMgr_NS_pauseAllGameSound(Z2SoundMgr* p0, bool p1);
void Z2SoundMgr_NS_setFilterOff(void);
void Z2SoundMgr_NS_setIIR(void);
void Z2SoundMgr_NS_stop(void);
void Z2SoundMgr_NS_stopSoundID(void);
void Z2SoundMgr_NS_stopSync(void);
};

#endif