#ifndef Z2CREATURE_H
#define Z2CREATURE_H

#include "SSystem/SComponent/c_xyz.h"
#include "Z2AudioLib/Z2SoundObject.h"
#include "Z2AudioLib/Z2SoundStarter.h"

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

    Vec* getCurrentPos() const { return mpPos; }

    /* 0x04 */ Vec* mpPos;
    /* 0x08 */ Z2SoundObjAnime mSoundObjAnime;
    /* 0x50 */ Z2SoundObjSimple mSoundObjSimple1;
    /* 0x70 */ Z2SoundObjSimple mSoundObjSimple2;
};

struct Z2LinkSoundStarter : public Z2SoundStarter {
    Z2LinkSoundStarter();

    inline virtual ~Z2LinkSoundStarter();
    virtual void startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*, u32, f32,
                            f32, f32, f32, f32, u32);
};

class Z2CreatureLink : public Z2Creature, public Z2LinkSoundStarter {
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

    void setInWater(bool status) { mInWater = status; }
    bool isInWater() { return mInWater; }
    u8 getLinkState() const { return mLinkState; }
    u8 getMoveSpeed() const { return mMoveSpeed; }
    bool isRiding() const { return mRiding; }
    void i_setLinkState(u8 i_state) { mLinkState = i_state; }
    Z2SoundObjSimple& getKantera() { return mKantera; }
    u8 getLinkHp() const { return mLinkHp; }

    static Z2CreatureLink* mLinkPtr;

private:
    /* 0x90 Z2LinkSoundStarter */
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
    /* 0xCB */ bool mWolfEyeOpen : 1;
    /* 0xCB */ bool mInWater : 1;
    /* 0xCB */ bool mResumeAttack : 1;
    /* 0xCB */ bool mFlag3 : 1;
    /* 0xCB */ bool mFlag4 : 1;
    /* 0xCB */ bool mFlag5 : 1;
    /* 0xCB */ bool mRiding : 1;
    /* 0xCB */ bool mMagnetized : 1;
    /* 0xCC */ bool mFlag8 : 1;
    /* 0xCC */ bool mUsingIronBall : 1;
    /* 0xCC */ bool mFlag10 : 1;
    /* 0xCC */ bool mFlag11 : 1;
    /* 0xCC */ bool mFlag12 : 1;
    /* 0xCC */ bool mFlag13 : 1;
    /* 0xCC */ bool mFlag14 : 1;
    /* 0xCC */ bool mFlag15 : 1;
};  // Size: 0xD0

inline Z2CreatureLink* Z2GetLink() {
    return Z2CreatureLink::mLinkPtr;
}

class Z2CreatureRide;
struct Z2RideSoundStarter : public Z2SoundStarter {
    /* 802C5234 */ Z2RideSoundStarter(Z2CreatureRide*);

    /* 802C5078 */ inline virtual ~Z2RideSoundStarter();
    /* 802C5284 */ virtual void startSound(JAISoundID, JAISoundHandle*,
                                           JGeometry::TVec3<f32> const*, u32, f32, f32, f32, f32,
                                           f32, u32);

    /* 0x4 */ Z2CreatureRide* mRide;
};

class Z2CreatureRide : public Z2Creature, public Z2RideSoundStarter {
public:
    Z2CreatureRide();
    ~Z2CreatureRide();
    void init(Vec*, Vec*, u8, u8);
    void setLinkRiding(bool);

    virtual void deleteObject();

private:
    /* 0x90 */  // Z2RideSoundStarter mSoundStarter;
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

    /* 0x90 */ JSULink<Z2CreatureEnemy> mLink;
    /* 0xA0 */ u8 mEnemyID;
    /* 0xA1 */ s8 field_0xa1;
    /* 0xA2 */ bool mLinkSearch;
    /* 0xA3 */ u8 field_0xa3;
};  // Size: 0xA4

class Z2CreatureCitizen : public Z2Creature {
public:
    /* 802C0C10 */ Z2CreatureCitizen();
    /* 802C0C6C */ ~Z2CreatureCitizen();
    /* 802C0CE4 */ void init(Vec*, Vec*, u8, u8);
    /* 802C0D04 */ virtual void deleteObject();
    /* 802C0D48 */ void setMdlType(s8, bool, bool);
    /* 802C0E18 */ void playVoice(int);
    /* 802C0ED8 */ virtual void startCreatureVoice(JAISoundID, s8);

private:
    /* 0x90 */ JSULink<Z2CreatureCitizen> mLink;
    /* 0xA0 */ s8 mCitizenID;
    /* 0xA1 */ s8 field_0xa1;
    /* 0xA2 */ bool mLinkSearch;
    /* 0xA3 */ u8 field_0xa3;
};  // Size: 0xA4

#endif /* Z2CREATURE_H */
