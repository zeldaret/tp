#ifndef Z2CREATURE_H_
#define Z2CREATURE_H_

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

extern "C" {
void __ct__10Z2CreatureFv(void);

void Z2Creature_NS_deleteObject(void);
void Z2Creature_NS_dtor(void);
void Z2Creature_NS_framework(void);
void Z2Creature_NS_init(void);
void Z2Creature_NS_init_X1_(void);
void Z2Creature_NS_startCreatureVoice(void);

void Z2CreatureCitizen_NS_init(void);
void Z2CreatureCitizen_NS_setMdlType(void);

void Z2CreatureEnemy_NS_deleteObject(void);

void Z2CreatureLink_NS_startLinkSound(void);
void Z2CreatureLink_NS_startLinkSoundLevel(void);
void deleteKantera__14Z2CreatureLinkFv(void);
void startLinkSound__14Z2CreatureLinkF10JAISoundIDUlSc(void);
void startLinkSoundLevel__14Z2CreatureLinkF10JAISoundIDUlSc(void);

void Z2CreatureRide_NS_setLinkRiding(void);

void func_802C1B7C(void);
void func_802C2C84(void);
void func_802C110C(void);
void func_802C0C6C(void);
void func_802C0B70(void);
void func_802C29D4(void);
void func_802C1F54(void);
void func_802C25EC(void);
void func_802C0720(void);
void func_802C24B0(void);
void func_802C3040(void);
void func_802C1D6C(void);
void func_802C2290(void);
void func_802C2CD4(void);
void func_802C0BE8(void);
void func_802C10B4(void);
void func_802C1C24(void);
void func_802C199C(void);
void func_802C20E8(void);
void func_802C1BE8(void);
void func_802C168C(void);
void func_802C0BAC(void);
void func_802C0E18(void);
void func_802C1CA0(void);
void func_802C2864(void);
void func_802C087C(void);
void func_802C06F4(void);
void func_802C1A14(void);
void func_802C1D10(void);
void func_802C0AF8(void);
void func_802C10D4(void);
void func_802C1094(void);
void func_802C0ED8(void);
void func_802C1B90(void);
void func_802C136C(void);
void func_802C1D4C(void);
void func_802C2578(void);
void func_802C1FB0(void);
void func_802C2670(void);
void func_802C2194(void);
void func_802C1948(void);
void func_802C0C10(void);
void func_802C0D04(void);
void func_802C0618(void);
void func_802C1FFC(void);
void func_802C24D0(void);
void func_802C19D8(void);

void Z2_B_zan_modPitch(void);
void Z2_E_mm_modPitch(void);
void Z2_E_ms_modVol(void);
void Z2_E_sw_modPitch(void);
}

#endif  // Z2CREATURE_H_