#ifndef Z2LINKMGR_H
#define Z2LINKMGR_H

#include "SSystem/SComponent/c_xyz.h"
#include "Z2AudioLib/Z2Creature.h"

class Z2LinkSoundStarter : public Z2SoundStarter {
public:
    Z2LinkSoundStarter();

    inline virtual ~Z2LinkSoundStarter();
    virtual bool startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*, u32, f32,
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
    Z2SoundHandlePool* startLinkSound(JAISoundID, u32, s8);
    JAISoundHandle* startLinkSoundLevel(JAISoundID, u32, s8);
    Z2SoundHandlePool* startLinkVoice(JAISoundID, s8);
    Z2SoundHandlePool* startLinkVoiceLevel(JAISoundID, s8);
    void startLinkSwordSound(JAISoundID, u32, s8);
    virtual Z2SoundHandlePool* startCollisionSE(u32, u32);
    Z2SoundHandlePool* startHitItemSE(u32, u32, Z2SoundObjBase*, float);
    void setResumeAttack(bool);

    void setInWater(bool status) { mInWater = status; }
    bool isInWater() { return mInWater; }
    u8 getLinkState() const { return mLinkState; }
    u8 getMoveSpeed() const { return mMoveSpeed; }
    bool isRiding() const { return mRiding; }
    void i_setLinkState(u8 i_state) { mLinkState = i_state; }
    Z2SoundObjSimple& getKantera() { return mKantera; }
    u8 getLinkHp() const { return mLinkHp; }
    u8 getMovingTime() { return mMovingTime; }
    u8 isWolfSmellOpen() const { return mWolfEyeOpen; }
    void setUsingIronBall(bool i_using) { mUsingIronBall = i_using; }
    void setMarkState(u8 i_state) { mMarkState = i_state; }

    static Z2CreatureLink* mLinkPtr;

    friend class Z2LinkSoundStarter;
    friend class Z2RideSoundStarter;

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

    /* 802C5078 */ virtual ~Z2RideSoundStarter() {}
    /* 802C5284 */ virtual bool startSound(JAISoundID, JAISoundHandle*,
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

    bool isLinkRiding() { return mLinkRiding; }

    virtual void deleteObject();

private:
    /* 0x90 */  // Z2RideSoundStarter mSoundStarter;
    /* 0x98 */ bool mLinkRiding;
};  // Size: 0x9C

class Z2SoundObjCoach : public Z2SoundObjBase {
public:
    /* 802C54B8 */ Z2SoundObjCoach();
    /* 802C54FC */ void init(Vec*, u8);
    /* 802C551C */ Z2SoundHandlePool* startWheelSound(f32);
    /* 802C56C0 */ Z2SoundHandlePool* startFireSound(u16);
    /* 802C57C0 */ Z2SoundHandlePool* startSound(JAISoundID, u32, s8);

private:
    /* 0x20 */ f32 field_0x20;
};

#endif /* Z2LINKMGR_H */
