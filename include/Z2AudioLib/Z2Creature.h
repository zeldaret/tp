#ifndef Z2CREATURE_H
#define Z2CREATURE_H

#include "SSystem/SComponent/c_xyz.h"
#include "Z2AudioLib/Z2SoundObject.h"
#include "dolphin/types.h"

class Z2Creature {
public:
    Z2Creature();
    ~Z2Creature();

    void init(Vec*, Vec*, u8, u8);
    void init(Vec*, Vec*, Vec*, u8, u8, u8);
    void initAnime(void*, bool, f32, f32);
    void updateAnime(f32, f32);
    void stopAnime();

    virtual void deleteObject();
    virtual void setSoundStarter(Z2SoundStarter*);
    virtual void framework(u32, s8);
    virtual void startCreatureSound(JAISoundID, u32, s8);
    virtual void startCreatureSoundLevel(JAISoundID, u32, s8);
    virtual void startCreatureVoice(JAISoundID, s8);
    virtual void startCreatureVoiceLevel(JAISoundID, s8);
    virtual void startCreatureExtraSound(JAISoundID, u32, s8);
    virtual void startCreatureExtraSoundLevel(JAISoundID, u32, s8);
    virtual void startCollisionSE(u32, u32);

private:
    /* 0x04 */ int field_0x04;
    /* 0x08 */ Z2SoundObjAnime mSoundObjAnime;
    /* 0x50 */ Z2SoundObjSimple mSoundObjSimple1;
    /* 0x70 */ Z2SoundObjSimple mSoundObjSimple2;
};

struct Z2LinkSoundStarter : public Z2SoundStarter {
    Z2LinkSoundStarter(void);
    ~Z2LinkSoundStarter();
};

#pragma pack(push, 1)
class Z2CreatureLink : public Z2Creature {
public:
    Z2CreatureLink(void);
    ~Z2CreatureLink();

    void setLinkState(u8);
    void setLinkGroupInfo(u8);
    void setLinkHp(s32, s32);
    void setLinkSwordType(s32, s32);
    void setLinkShieldType(s32, s32);
    void setLinkBootsType(s32);
    void deleteObject();
    void init(Vec*, Vec*, Vec*);
    void initKantera(Vec*);
    void deleteKantera(void);
    void setKanteraState(u8);
    void framework(u32, s8);
    void setSinkDepth(s8);
    void setRiding(bool);
    void setMagnetized(bool);
    void setWolfEyeOpen(bool);
    void startLinkSound(JAISoundID, u32, s8);
    void startLinkSoundLevel(JAISoundID, u32, s8);
    void startLinkVoice(JAISoundID, s8);
    void startLinkVoiceLevel(JAISoundID, s8);
    void startLinkSwordSound(JAISoundID, u32, s8);
    void startCollisionSE(u32, u32);
    int startHitItemSE(u32, u32, Z2SoundObjBase*, float);
    void setResumeAttack(bool);

private:
    /* 0x90 */ Z2LinkSoundStarter mLinkSoundStarter;
    /* 0x94 */ Z2SoundObjSimple mSoundObjSimple;
    /* 0xB4 */ cXyz field_0xb4;
    /* 0xC0 */ u8 mLinkState;
    /* 0xC1 */ u8 unk193;
    /* 0xC2 */ u8 unk194;
    /* 0xC3 */ u8 mLinkHp;
    /* 0xC4 */ u8 mBootsType;
    /* 0xC5 */ u8 mLanternState;
    /* 0xC6 */ u8 unk198;
    /* 0xC7 */ u8 unk199;
    /* 0xC8 */ u8 unk200;
    /* 0xC9 */ u8 unk201;
    /* 0xCA */ u8 mSinkDepth;
    /* 0xCB */ u8 flags1;
    /* 0xCC */ u8 flags2;

    static u8 mLinkPtr[4 + 4 /* padding */];
};
#pragma pack(pop)

#endif /* Z2CREATURE_H */
