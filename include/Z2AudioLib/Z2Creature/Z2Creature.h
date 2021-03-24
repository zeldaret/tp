#ifndef Z2CREATURE_H_
#define Z2CREATURE_H_

#include "dolphin/types.h"

class Z2Creature {
public:
    Z2Creature();

    virtual void deleteObject();
    virtual void setSoundStarter();
    virtual void framework();
    virtual void startCreatureSound();
    virtual void startCreatureSoundLevel();
    virtual void startCreatureVoice();
    virtual void startCreatureVoiceLevel();
    virtual void startCreatureExtraSound();
    virtual void startCreatureExtraSoundLevel();
    virtual void startCollisionSE();
};

class Z2CreatureEnemy : public Z2Creature {};

class Z2CreatureRide {
public:
    void setLinkRiding(bool);

private:
    /* 0x00 */ void* vtable;
    /* 0x04 */ u8 Z2Creature_members[140];
    /* 0x90 */ u8 Z2RideSoundStarter[8];
    /* 0x98 */ bool is_link_riding;
    /* 0x99 */ u8 padding[3];
};

extern "C" {
void __ct__10Z2CreatureFv(void);

void deleteObject__10Z2CreatureFv(void);
void __dt__10Z2CreatureFv(void);
void framework__10Z2CreatureFUlSc(void);
void init__10Z2CreatureFP3VecP3VecUcUc(void);
void init__10Z2CreatureFP3VecP3VecP3VecUcUcUc(void);
void startCreatureVoice__10Z2CreatureF10JAISoundIDSc(void);

void init__17Z2CreatureCitizenFP3VecP3VecUcUc(void);
void setMdlType__17Z2CreatureCitizenFScbb(void);

void deleteObject__15Z2CreatureEnemyFv(void);

void Z2CreatureLink_NS_startLinkSound(void);
void Z2CreatureLink_NS_startLinkSoundLevel(void);
void deleteKantera__14Z2CreatureLinkFv(void);
void startLinkSound__14Z2CreatureLinkF10JAISoundIDUlSc(void);
void startLinkSoundLevel__14Z2CreatureLinkF10JAISoundIDUlSc(void);

void setLinkRiding__14Z2CreatureRideFb(void);

void setLinkSearch__15Z2CreatureEnemyFb(void);
void startTentacleSound__12Z2CreatureOIF10JAISoundIDUcUlSc(void);
void startCreatureSound__15Z2CreatureEnemyF10JAISoundIDUlSc(void);
void __dt__17Z2CreatureCitizenFv(void);
void startCreatureExtraSound__10Z2CreatureF10JAISoundIDUlSc(void);
void startCreatureSoundLevel__12Z2CreatureOIF10JAISoundIDUlSc(void);
void __ct__12Z2CreatureFMFv(void);
void deleteObject__12Z2CreatureOIFv(void);
void startCreatureSound__10Z2CreatureF10JAISoundIDUlSc(void);
void init__13Z2CreatureGobFP3VecP3VecP3VecUcUcUc(void);
void __sinit_Z2Creature_cpp(void);
void playBeeGroupSound__18Z2SoundObjBeeGroupF10JAISoundIDUc(void);
void startChainSoundLevel__12Z2CreatureFMF10JAISoundIDUcfUlSc(void);
void startTentacleSoundLevel__12Z2CreatureOIF10JAISoundIDUcfUlSc(void);
void startCollisionSE__10Z2CreatureFUlUl(void);
void init__15Z2CreatureEnemyFP3VecP3VecP3VecUcUcUc(void);
void playSumomoBgm__16Z2CreatureSumomoFUl(void);
void startCreatureExtraSound__15Z2CreatureEnemyF10JAISoundIDUlSc(void);
void framework__12Z2CreatureFMFUlSc(void);
void __ct__16Z2CreatureSumomoFv(void);
void startCreatureVoice__15Z2CreatureEnemyF10JAISoundIDSc(void);
void startCreatureExtraSoundLevel__10Z2CreatureF10JAISoundIDUlSc(void);
void playVoice__17Z2CreatureCitizenFi(void);
void deleteObject__16Z2CreatureSumomoFv(void);
void framework__12Z2CreatureOIFUlSc(void);
void startCreatureSoundLevel__10Z2CreatureF10JAISoundIDUlSc(void);
void stopAnime__10Z2CreatureFv(void);
void startCollisionSE__15Z2CreatureEnemyFUlUl(void);
void __ct__18Z2SoundObjBeeGroupFv(void);
void startCreatureVoiceLevel__10Z2CreatureF10JAISoundIDSc(void);
void framework__15Z2CreatureEnemyFUlSc(void);
void init__15Z2CreatureEnemyFP3VecP3VecUcUc(void);
void startCreatureVoice__17Z2CreatureCitizenF10JAISoundIDSc(void);
void setEnemyName__15Z2CreatureEnemyFPCc(void);
void startCreatureSoundLevel__15Z2CreatureEnemyF10JAISoundIDUlSc(void);
void init__18Z2SoundObjBeeGroupFP3VecUc(void);
void __ct__12Z2CreatureOIFv(void);
void deleteObject__12Z2CreatureFMFv(void);
void init__12Z2CreatureOIFP3VecP3VecP3VecP3VecP3VecP3VecP3VecP3VecP3VecP3VecP3VecP3VecP3Vec(void);
void startChainSound__12Z2CreatureFMF10JAISoundIDUcfUlSc(void);
void startCreatureVoiceLevel__15Z2CreatureEnemyF10JAISoundIDSc(void);
void __ct__17Z2CreatureCitizenFv(void);
void deleteObject__17Z2CreatureCitizenFv(void);
void setSoundStarter__10Z2CreatureFP14Z2SoundStarter(void);
void init__12Z2CreatureFMFP3VecP3VecP3VecP3VecP3VecP3VecUcUcUcUcUcUc(void);
void startCreatureVoiceLevel__13Z2CreatureGobF10JAISoundIDSc(void);
void startCreatureExtraSoundLevel__15Z2CreatureEnemyF10JAISoundIDUlSc(void);

void Z2_B_zan_modPitch__FP17Z2SoundHandlePoolUl(void);
void Z2_E_mm_modPitch__FP17Z2SoundHandlePoolUl(void);
void Z2_E_ms_modVol__FP17Z2SoundHandlePoolUl(void);
void Z2_E_sw_modPitch__FP17Z2SoundHandlePoolUl(void);
}

#endif  // Z2CREATURE_H_