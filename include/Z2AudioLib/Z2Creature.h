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
    Z2LinkSoundStarter();

    virtual ~Z2LinkSoundStarter();
    virtual void startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*, u32, f32,
                            f32, f32, f32, f32, u32);
};

class Z2CreatureLink : public Z2Creature {
public:
    Z2CreatureLink();
    ~Z2CreatureLink();

    void setLinkState(u8);
    void setLinkGroupInfo(u8);
    void setLinkHp(s32, s32);
    void setLinkSwordType(s32, s32);
    void setLinkShieldType(s32, s32);
    void setLinkBootsType(s32);
    virtual void deleteObject();
    void init(Vec*, Vec*, Vec*);
    void initKantera(Vec*);
    void deleteKantera(void);
    void setKanteraState(u8);
    virtual void framework(u32, s8);
    void setSinkDepth(s8);
    void setRiding(bool);
    void setMagnetized(bool);
    void setWolfEyeOpen(bool);
    void startLinkSound(JAISoundID, u32, s8);
    void startLinkSoundLevel(JAISoundID, u32, s8);
    void startLinkVoice(JAISoundID, s8);
    void startLinkVoiceLevel(JAISoundID, s8);
    void startLinkSwordSound(JAISoundID, u32, s8);
    virtual void startCollisionSE(u32, u32);
    int startHitItemSE(u32, u32, Z2SoundObjBase*, float);
    void setResumeAttack(bool);

    static Z2CreatureLink* mLinkPtr;

private:
    /* 0x90 */ Z2LinkSoundStarter mLinkSoundStarter;
    /* 0x94 */ Z2SoundObjSimple mKantera;
    /* 0xB4 */ cXyz field_0xb4;
    /* 0xC0 */ u8 mLinkState;
    /* 0xC1 */ u8 field_0xc1;
    /* 0xC2 */ u8 mMarkState;
    /* 0xC3 */ u8 mLinkHp;
    /* 0xC4 */ u8 mLinkBootsType;
    /* 0xC5 */ u8 mKanteraState;
    /* 0xC6 */ u8 mLinkSwordType;
    /* 0xC7 */ u8 mLinkShieldType;
    /* 0xC8 */ u8 mMoveSpeed;
    /* 0xC9 */ u8 mMovingTime;
    /* 0xCA */ s8 mSinkDepth;
    /* 0xCB */ u8 mFlags;
    /* 0xCC */ u8 mFlags2;
};  // Size: 0xD0

inline Z2CreatureLink* Z2GetLink() {
    return Z2CreatureLink::mLinkPtr;
}

class Z2CreatureRide;
struct Z2RideSoundStarter : public Z2SoundStarter {
    /* 802C5234 */ Z2RideSoundStarter(Z2CreatureRide*);

    /* 802C5078 */ virtual ~Z2RideSoundStarter();
    /* 802C5284 */ virtual void startSound(JAISoundID, JAISoundHandle*,
                                           JGeometry::TVec3<f32> const*, u32, f32, f32, f32, f32,
                                           f32, u32);

    /* 0x4 */ Z2CreatureRide* mRide;
};

class Z2CreatureRide : public Z2Creature {
public:
    Z2CreatureRide();
    ~Z2CreatureRide();
    void init(Vec*, Vec*, u8, u8);
    void setLinkRiding(bool);

    virtual void deleteObject();

private:
    /* 0x90 */ Z2RideSoundStarter mSoundStarter;
    /* 0x98 */ bool mLinkRiding;
};  // Size: 0x9C

class Z2CreatureEnemy : public Z2Creature {
public:
    /* 802C0F64 */ Z2CreatureEnemy();
    /* 802C0FC4 */ virtual void deleteObject();
    /* 802C1094 */ void init(Vec*, Vec*, u8, u8);
    /* 802C10B4 */ void init(Vec*, Vec*, Vec*, u8, u8, u8);
    /* 802C10D4 */ virtual void framework(u32, s8);
    /* 802C110C */ virtual void startCreatureSound(JAISoundID, u32, s8);
    /* 802C136C */ virtual void startCreatureSoundLevel(JAISoundID, u32, s8);
    /* 802C168C */ virtual void startCreatureVoice(JAISoundID, s8);
    /* 802C1948 */ virtual void startCreatureVoiceLevel(JAISoundID, s8);
    /* 802C199C */ virtual void startCreatureExtraSound(JAISoundID, u32, s8);
    /* 802C19D8 */ virtual void startCreatureExtraSoundLevel(JAISoundID, u32, s8);
    /* 802C1A14 */ virtual void startCollisionSE(u32, u32);
    /* 802C1B7C */ void setLinkSearch(bool);
    /* 802C1B90 */ void setEnemyName(char const*);
};

#endif /* Z2CREATURE_H */
