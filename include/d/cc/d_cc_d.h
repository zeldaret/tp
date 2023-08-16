#ifndef D_CC_D_CC_D_H
#define D_CC_D_CC_D_H

/**
 * d_cc_d.h
 * Actor Collision
 */

#include "SSystem/SComponent/c_cc_d.h"
#include "Z2AudioLib/Z2SeMgr.h"

enum dCcD_hitSe {
    /* 0  */ dCcD_SE_NONE,
    /* 1  */ dCcD_SE_SWORD,
    /* 2  */ dCcD_SE_SHIELD_ATTACK,
    /* 3  */ dCcD_SE_WOLF_KICK,
    /* 4  */ dCcD_SE_WOLF_BITE,
    /* 5  */ dCcD_SE_WOOD,
    /* 6  */ dCcD_SE_HAMMER,
    /* 7  */ dCcD_SE_ARROW_STICK,
    /* 8  */ dCcD_SE_HOOKSHOT_STICK,
    /* 9  */ dCcD_SE_METAL,
    /* 10 */ dCcD_SE_STONE,
    /* 11 */ dCcD_SE_HARD_BODY,
    /* 12 */ dCcD_SE_SOFT_BODY,
    /* 13 */ dCcD_SE_13,
    /* 14 */ dCcD_SE_SWORD_STAB,
    /* 15 */ dCcD_SE_15,
    /* 16 */ dCcD_SE_SWORD_RUN,
    /* 17 */ dCcD_SE_17,
    /* 18 */ dCcD_SE_THROW_OBJ,
    /* 19 */ dCcD_SE_SPINNER,
    /* 20 */ dCcD_SE_COPYROD,
    /* 21 */ dCcD_SE_STATUE_HAMMER,
    /* 22 */ dCcD_SE_PACHINKO,
    /* 23 */ dCcD_SE_23,
};

enum dCcG_At_Spl {
    /* 0x0 */ dCcG_At_Spl_UNK_0,
    /* 0x1 */ dCcG_At_Spl_UNK_1,
};

enum dCcG_Tg_Spl {
    /* 0x0 */ dCcG_Tg_Spl_UNK_0,
    /* 0x1 */ dCcG_Tg_Spl_UNK_1,
};

struct dCcD_SrcGAtTgCoCommonBase {
    /* 0x0 */ u32 mGFlag;
};  // Size: 0x4

struct dCcD_SrcGObjAt {
    /* 0x0 */ u8 mSe;       // Sound Effect ID
    /* 0x1 */ u8 mHitMark;  // Hit Mark particle ID
    /* 0x2 */ u8 mSpl;
    /* 0x3 */ u8 mMtrl;
    /* 0x4 */ dCcD_SrcGAtTgCoCommonBase mBase;
};  // Size: 0x8

struct dCcD_SrcGObjTg {
    /* 0x0 */ u8 mSe;       // Sound Effect ID
    /* 0x1 */ u8 mHitMark;  // Hit Mark particle ID
    /* 0x2 */ u8 mSpl;
    /* 0x3 */ u8 mMtrl;
    /* 0x4 */ dCcD_SrcGAtTgCoCommonBase mBase;
};  // Size: 0x8

struct dCcD_SrcGObjCo {
    /* 0x0 */ dCcD_SrcGAtTgCoCommonBase mBase;
};  // Size: 0x4

struct dCcD_SrcGObjInf {
    /* 0x00 */ cCcD_SrcObj mObj;
    /* 0x1C */ dCcD_SrcGObjAt mGObjAt;
    /* 0x24 */ dCcD_SrcGObjTg mGObjTg;
    /* 0x2C */ dCcD_SrcGObjCo mGObjCo;
};  // Size: 0x30

struct dCcD_SrcSph {
    /* 0x00 */ dCcD_SrcGObjInf mObjInf;
    /* 0x30 */ cCcD_SrcSphAttr mSphAttr;
};  // Size: 0x40

struct dCcD_SrcTri {
    /* 0x00 */ dCcD_SrcGObjInf mObjInf;
    /* 0x30 */ cCcD_SrcTriAttr mTriAttr;
};  // Size: 0x54

struct dCcD_SrcCyl {
    /* 0x00 */ dCcD_SrcGObjInf mObjInf;
    /* 0x30 */ cM3dGCylS mCyl;
};  // Size: 0x44

struct dCcD_SrcCps {
    /* 0x00 */ dCcD_SrcGObjInf mObjInf;
    /* 0x30 */ cCcD_SrcCpsAttr mCpsAttr;
};  // Size: 0x4C

class dCcD_GStts : public cCcD_GStts {
public:
    /* 80083760 */ dCcD_GStts();
    /* 800837F8 */ void Ct();
    /* 80083830 */ void Move();
    /* 8008523C */ virtual ~dCcD_GStts() {}
    void ClrAt() { mAt = 0; }
    void ClrTg() { mTg = 0; }
    void SetAtApid(unsigned int id) { mAtApid = id; }
    void SetTgApid(unsigned int id) { mTgApid = id; }
    u8 GetRoomId() { return mRoomId; }
    void SetRoomId(int id) { mRoomId = id; }
    unsigned int GetAtOldApid() { return mAtOldApid; }
    unsigned int GetTgOldApid() { return mTgOldApid; }
    bool ChkNoActor() { return field_0x1C & 1;}
    bool ChkNoneActorPerfTblId() { return field_0x08 == 0xFFFF; }
    dCcG_At_Spl GetAtSpl() { return (dCcG_At_Spl)mAt; }
    void SetAtSpl(dCcG_At_Spl spl) { mAt = spl; }
    dCcG_Tg_Spl GetTgSpl() { return (dCcG_Tg_Spl)mTg; }
    void SetTgSpl(dCcG_Tg_Spl spl) { mTg = spl; }
    void OnNoActor() { field_0x1C |= 1; }

    // private:
    /* 0x04 */ u8 mAt;
    /* 0x05 */ u8 mTg;
    /* 0x06 */ u8 mRoomId;
    /* 0x08 */ u16 field_0x08;
    /* 0x0C */ int mAtApid;
    /* 0x10 */ int mAtOldApid;
    /* 0x14 */ int mTgApid;
    /* 0x18 */ int mTgOldApid;
    /* 0x1C */ int field_0x1C;
};  // Size = 0x20

class dCcD_Stts : public cCcD_Stts, public dCcD_GStts {
public:
    dCcD_Stts() {}
    /* 80083850 */ virtual cCcD_GStts* GetGStts();
    /* 80083860 */ void Init(int, int, fopAc_ac_c*);
    /* 800838F4 */ virtual void Ct();
    /* 80083928 */ virtual void ClrAt();
    /* 80083934 */ virtual void ClrTg();
    /* 800851AC */ virtual ~dCcD_Stts() {}

};  // Size = 0x3C

class dCcD_GObjInf;
typedef void (*dCcD_HitCallback)(fopAc_ac_c*, dCcD_GObjInf*, fopAc_ac_c*, dCcD_GObjInf*);


// Attack/Defense/Correction Collider Common Base
class dCcD_GAtTgCoCommonBase {
public:
    /* 0x00 */ u32 mGFlag;
    /* 0x04 */ u32 mRPrm;
    /* 0x08 */ dCcD_HitCallback mHitCallback;
    /* 0x0C */ u32 mApid;
    /* 0x10 */ fopAc_ac_c* mAc;
    /* 0x14 */ s8 mEffCounter;
    /* 0x15 */ u8 field_0x15[3];
    /* 0x18 vtable */

public:
    dCcD_GAtTgCoCommonBase() { ct(); }
    /* 8008364C */ void ClrActorInfo();
    /* 80083660 */ void ct();
    /* 80083678 */ void SetHitApid(unsigned int);
    /* 80083688 */ fopAc_ac_c* GetAc();
    /* 80083704 */ void Set(dCcD_SrcGAtTgCoCommonBase const&);
    /* 80083718 */ void SetEffCounterTimer();
    /* 80083724 */ void SubtractEffCounter();
    /* 80083748 */ bool ChkEffCounter();
    /* 80083CA0 */ virtual ~dCcD_GAtTgCoCommonBase() {}

    void ClrEffCounter() { mEffCounter = 0; }
    u32 GetGFlag() const { return mGFlag; }
    u32 GetRPrm() const { return mRPrm; }
    u32 MskSPrm(u32 mask) const { return mGFlag & mask; }
    u32 MskRPrm(u32 mask) const { return mRPrm & mask; }
    bool ChkSPrm(u32 mask) const { return MskSPrm(mask); }
    void OnSPrm(u32 flag) { mGFlag |= flag; }
    void OnRPrm(u32 flag) { mRPrm |= flag; }
    void OffSPrm(u32 flag) { mGFlag &= ~flag; }
    void OffRPrm(u32 flag) { mRPrm &= ~flag; }
    bool ChkRPrm(u32 flag) const { return MskRPrm(flag); }
    void SetHitCallback(dCcD_HitCallback callback) { mHitCallback = callback; }
    dCcD_HitCallback GetHitCallback() { return mHitCallback; }
    void ClrHit() { ClrActorInfo(); }
};  // Size = 0x1C


// Attack (At) Collider
class dCcD_GObjAt : public dCcD_GAtTgCoCommonBase {
public:
    /* 80083944 */ void Set(dCcD_SrcGObjAt const&);
    /* 80083C44 */ virtual ~dCcD_GObjAt() {}
    void SetVec(cXyz& vec) { mVec = vec; }
    cXyz& GetVec() { return mVec; }
    cXyz* GetVecP() { return &mVec; }
    void SetHitMark(u8 mark) { mHitMark = mark; }
    void SetSe(u8 se) { mSe = se; }
    void SetMtrl(u8 mtrl) { mMtrl = mtrl; }
    void SetAtSpl(dCcG_At_Spl spl) { mSpl = spl; }
    u8 GetSe() { return mSe; }
    u8 GetSpl() { return mSpl; }
    u8 GetMtrl() { return mMtrl; }
    u8 GetHitMark() { return mHitMark; }
    void SetRVec(cXyz& vec) { mRVec = vec; }
    void SetHitPos(cXyz& pos) { mHitPos = pos; }

    // private:
    /* 0x1C */ u8 mSe;
    /* 0x1D */ u8 mMtrl;
    /* 0x1E */ u8 mHitMark;
    /* 0x1F */ u8 mSpl;
    /* 0x20 */ cXyz mHitPos;
    /* 0x2C */ cXyz mVec;
    /* 0x38 */ cXyz mRVec;
};  // Size = 0x44

// Defense (Tg) Collider
class dCcD_GObjTg : public dCcD_GAtTgCoCommonBase {
public:
    /* 800839A0 */ void Set(dCcD_SrcGObjTg const&);
    /* 80083BE8 */ virtual ~dCcD_GObjTg() {}
    void SetVec(cXyz& vec) { mVec = vec; }
    cXyz& GetVec() { return mVec; }
    void SetShieldFrontRangeYAngle(s16* angle) { mShieldFrontRangeYAngle = angle; }
    void SetMtrl(u8 mtrl) { mMtrl = mtrl; }
    u8 GetMtrl() { return mMtrl; }
    void SetHitMark(CcG_Tg_HitMark mark) { mHitMark = mark; }
    s16* GetShieldFrontRangeYAngle() { return mShieldFrontRangeYAngle; }
    s16 GetShieldRange() { return mShieldRange; }
    u8 GetSpl() { return mSpl; }
    u8 GetHitMark() { return mHitMark; }
    void SetRVec(cXyz& vec) { mRVec = vec; }
    cXyz* GetVecP() { return &mVec; }
    void SetHitPos(cXyz& pos) { mHitPos = pos; }

private:
    /* 0x1C */ u8 mSe;
    /* 0x1D */ u8 mMtrl;
    /* 0x1E */ u8 mHitMark;
    /* 0x1F */ u8 mSpl;
    /* 0x20 */ cXyz mVec;
    /* 0x2C */ cXyz mRVec;
    /* 0x38 */ cXyz mHitPos;
    /* 0x44 */ s16* mShieldFrontRangeYAngle;
    /* 0x48 */ s16 mShieldRange;
};  // Size = 0x4A ?

// Correction (Co) Collider
class dCcD_GObjCo : public dCcD_GAtTgCoCommonBase {
public:
    /* 80083B8C */ virtual ~dCcD_GObjCo() {}
    void Set(dCcD_SrcGObjCo const& pSrc) { dCcD_GAtTgCoCommonBase::Set(pSrc.mBase); }
};  // Size = 0x1C ?

// Object Info
class dCcD_GObjInf : public cCcD_GObjInf {
public:
    /* 80083A28 */ dCcD_GObjInf();
    /* 800840E4 */ virtual ~dCcD_GObjInf();
    /* 80084268 */ virtual cCcD_GObjInf* GetGObjInf();
    /* 8008426C */ virtual void ClrAtHit();
    /* 800842C0 */ u32 ChkAtHit();
    /* 80084318 */ void ResetAtHit();
    /* 80084358 */ cCcD_Obj* GetAtHitObj();
    /* 800843A8 */ cCcD_GObjInf* GetAtHitGObj();
    /* 800843DC */ u8 ChkAtNoGuard();
    /* 800843FC */ virtual void ClrTgHit();
    /* 80084460 */ u32 ChkTgHit();
    /* 800844B8 */ void ResetTgHit();
    /* 800844F8 */ cCcD_Obj* GetTgHitObj();
    /* 80084548 */ dCcD_GObjInf* GetTgHitGObj();
    /* 8008457C */ u8 GetTgHitObjSe();
    /* 800845B0 */ static Z2SoundID getHitSeID(u8, int);
    /* 8008460C */ virtual void ClrCoHit();
    /* 80084658 */ u32 ChkCoHit();
    /* 800846B0 */ void ResetCoHit();
    /* 800846F0 */ cCcD_Obj* GetCoHitObj();
    /* 80084740 */ void Set(dCcD_SrcGObjInf const&);

    fopAc_ac_c* GetCoHitAc() { return mGObjCo.GetAc(); }

    void SetAtVec(cXyz& vec) { mGObjAt.SetVec(vec); }
    void SetTgVec(cXyz& vec) { mGObjTg.SetVec(vec); }
    bool ChkAtNoMass() const { return mGObjAt.ChkSPrm(8); }
    void OnAtNoHitMark() { mGObjAt.OnSPrm(2); }
    void OffAtNoHitMark() { mGObjAt.OffSPrm(2); }
    void OnTgNoHitMark() { mGObjTg.OnSPrm(4); }
    void OnAtNoConHit() { mGObjAt.OnSPrm(1); }
    void OffAtNoConHit() { mGObjAt.OffSPrm(1); }
    void OnTgNoConHit() { mGObjTg.OnSPrm(2); }
    void SetAtHitMark(u8 mark) { mGObjAt.SetHitMark(mark); }
    void SetAtSe(u8 se) { mGObjAt.SetSe(se); }
    void SetAtMtrl(u8 mtrl) { mGObjAt.SetMtrl(mtrl); }
    void SetTgMtrl(u8 mtrl) { mGObjTg.SetMtrl(mtrl); }
    fopAc_ac_c* GetAtHitAc() { return mGObjAt.GetAc(); }
    bool ChkAtShieldHit() { return mGObjAt.ChkRPrm(1); }
    cXyz* GetAtVecP() { return mGObjAt.GetVecP(); }
    cXyz* GetTgVecP() { return mGObjTg.GetVecP(); }
    void SetAtSpl(dCcG_At_Spl spl) { mGObjAt.SetAtSpl(spl); }
    void SetAtHitCallback(dCcD_HitCallback callback) { mGObjAt.SetHitCallback(callback); }
    void SetTgHitCallback(dCcD_HitCallback callback) { mGObjTg.SetHitCallback(callback); }
    void SetCoHitCallback(dCcD_HitCallback callback) { mGObjCo.SetHitCallback(callback); }
    u8 GetAtSe() { return mGObjAt.GetSe(); }
    dCcG_At_Spl GetAtSpl() { return (dCcG_At_Spl)mGObjAt.GetSpl(); }
    u8 GetAtMtrl() { return mGObjAt.GetMtrl(); }
    u8 GetTgMtrl() { return mGObjTg.GetMtrl(); }
    fopAc_ac_c* GetTgHitAc() { return mGObjTg.GetAc(); }
    void SetTgShieldFrontRangeYAngle(s16* angle) { mGObjTg.SetShieldFrontRangeYAngle(angle); }
    void OffTgWolfSpNoDamage() { mGObjTg.OffSPrm(0x800); }
    void OnTgWolfSpNoDamage() { mGObjTg.OnSPrm(0x800); }
    void SetTgHitMark(CcG_Tg_HitMark mark) { mGObjTg.SetHitMark(mark); }
    void OnTgSpShield() { mGObjTg.OnSPrm(0x40); }
    void OffTgSpShield() { mGObjTg.OffSPrm(0x40); }
    void OnTgShield() { mGObjTg.OnSPrm(0x1); }
    void OffTgShield() { mGObjTg.OffSPrm(0x1); }
    void OnTgShieldFrontRange() { mGObjTg.OnSPrm(0x8); }
    void OffTgShieldFrontRange() { mGObjTg.OffSPrm(0x8); }
    bool ChkTgIronBallRebound() { return mGObjTg.ChkSPrm(0x100); }
    s16* GetTgShieldFrontRangeYAngle() { return mGObjTg.GetShieldFrontRangeYAngle(); }
    s16 GetTgShieldRange() { return mGObjTg.GetShieldRange(); }
    bool ChkTgShield() { return mGObjTg.ChkSPrm(1); }
    bool ChkTgSpShield() { return mGObjTg.ChkSPrm(0x40); }
    bool ChkTgSmallShield() { return mGObjTg.ChkSPrm(0x10); }
    bool ChkTgShieldFrontRange() { return mGObjTg.ChkSPrm(8); }
    bool ChkAtNoConHit() { return mGObjAt.ChkSPrm(1); }
    bool ChkAtStopNoConHit() { return mGObjAt.ChkSPrm(0x4); }
    bool ChkTgNoConHit() { return mGObjTg.ChkSPrm(2); }
    bool ChkTgStopNoConHit() { return mGObjTg.ChkSPrm(0x2000); }
    bool ChkCoNoCamHit() { return mGObjCo.ChkSPrm(2); }
    dCcD_HitCallback GetCoHitCallback() { return mGObjCo.GetHitCallback(); }
    dCcD_HitCallback GetAtHitCallback() { return mGObjAt.GetHitCallback(); }
    dCcD_HitCallback GetTgHitCallback() { return mGObjTg.GetHitCallback(); }
    void SetCoHitApid(unsigned int apid) { mGObjCo.SetHitApid(apid); }
    void SetAtHitApid(unsigned int apid) { mGObjAt.SetHitApid(apid); }
    void SetTgHitApid(unsigned int apid) { mGObjTg.SetHitApid(apid); }
    void OnCoHitNoActor() { mGObjCo.OnRPrm(1); }
    void OffCoHitNoActor() { mGObjCo.OffRPrm(1); }
    void OnAtHitNoActor() { mGObjAt.OnRPrm(2); }
    void OffAtHitNoActor() { mGObjAt.OffRPrm(2); }
    void OnTgHitNoActor() { mGObjTg.OnRPrm(1); }
    void OffTgHitNoActor() { mGObjTg.OffRPrm(1); }
    bool ChkCoHitNoActor() const { return mGObjCo.ChkRPrm(1); }
    bool ChkAtHitNoActor() const { return mGObjAt.ChkRPrm(2); }
    bool ChkTgHitNoActor() const { return mGObjTg.ChkRPrm(1); }
    bool ChkTgWolfSpNoDamage() { return mGObjTg.ChkSPrm(0x800); }
    bool ChkAtNoHitMark() { return mGObjAt.ChkSPrm(2); }
    bool ChkTgNoHitMark() { return mGObjTg.ChkSPrm(4); }
    bool ChkTgHookShotNoHitMark() { return mGObjTg.ChkSPrm(0x400); }
    bool ChkTgArrowNoHitMark() { return mGObjTg.ChkSPrm(0x1000); }
    dCcG_Tg_Spl GetTgSpl() { return (dCcG_Tg_Spl)mGObjTg.GetSpl(); }
    int GetTgHitMark() { return mGObjTg.GetHitMark(); }
    int GetAtHitMark() { return mGObjAt.GetHitMark(); }
    bool ChkAtEffCounter() { return mGObjAt.ChkEffCounter(); }
    bool ChkTgEffCounter() { return mGObjTg.ChkEffCounter(); }
    void ClrAtEffCounter() { mGObjAt.ClrEffCounter(); }
    void ClrTgEffCounter() { mGObjTg.ClrEffCounter(); }
    void ClrCoEffCounter() { mGObjCo.ClrEffCounter(); }
    void SetAtEffCounterTimer() { mGObjAt.SetEffCounterTimer(); }
    void SetTgEffCounterTimer() { mGObjTg.SetEffCounterTimer(); }
    void SubtractAtEffCounter() { mGObjAt.SubtractEffCounter(); }
    void SubtractTgEffCounter() { mGObjTg.SubtractEffCounter(); }
    void SubtractCoEffCounter() { mGObjCo.SubtractEffCounter(); }
    void OnTgShieldHit() { mGObjTg.OnRPrm(2); }
    void OffTgShieldHit() { mGObjTg.OffRPrm(2); }
    void OnAtShieldHit() { mGObjAt.OnRPrm(1); }
    void OffAtShieldHit() { mGObjAt.OffRPrm(1); }
    void OffTgMagneHit() { mGObjTg.OffRPrm(4); }
    void SetTgRVec(cXyz& vec) { mGObjTg.SetRVec(vec); }
    void SetAtRVec(cXyz& vec) { mGObjAt.SetRVec(vec); }
    void SetTgHitPos(cXyz& pos) { mGObjTg.SetHitPos(pos); }
    void SetAtHitPos(cXyz& pos) { mGObjAt.SetHitPos(pos); }
    u32 GetTgHitObjHitSeID(int i_soundID) { return getHitSeID(GetTgHitObjSe(),i_soundID); }
    
    static const Z2SoundID m_hitSeID[24];

protected:
    /* 0x058 */ dCcD_GObjAt mGObjAt;
    /* 0x09C */ dCcD_GObjTg mGObjTg;
    /* 0x0E8 */ dCcD_GObjCo mGObjCo;
};  // Size = 0x104

// Cylinder
class dCcD_Cyl : public dCcD_GObjInf, public cCcD_CylAttr {
public:
    /* 800848B4 */ void Set(dCcD_SrcCyl const&);
    /* 800848F8 */ cCcD_ShapeAttr* GetShapeAttr();
    /* 80084908 */ void StartCAt(cXyz&);
    /* 80084954 */ void MoveCAt(cXyz&);
    /* 800849C4 */ void MoveCTg(cXyz&);
    /* 80084D60 */ virtual ~dCcD_Cyl() {}
    dCcD_Cyl() {}
};  // Size = 0x13C

// Sphere
class dCcD_Sph : public dCcD_GObjInf, public cCcD_SphAttr {
public:
    dCcD_Sph() {}
    /* 80084A34 */ void Set(dCcD_SrcSph const&);
    /* 80084A78 */ void StartCAt(cXyz&);
    /* 80084AC4 */ void MoveCAt(cXyz&);
    /* 80084B34 */ virtual cCcD_ShapeAttr* GetShapeAttr();
    /* 80084BF4 */ virtual ~dCcD_Sph() {}
};  // Size = 0x138


// Capsule
class dCcD_Cps : public dCcD_GObjInf, public cCcD_CpsAttr {
public:
    /* 800847D0 */ void Set(dCcD_SrcCps const&);
    /* 80084814 */ cCcD_ShapeAttr* GetShapeAttr();
    /* 80084824 */ void CalcAtVec();
    /* 80084854 */ void CalcTgVec();
    /* 8008506C */ virtual ~dCcD_Cps() {}
    dCcD_Cps() {}
};  // Size = 0x144

// Triangle
class dCcD_Tri : public dCcD_GObjInf, public cCcD_TriAttr {
public:
    /* 80084884 */ void Set(dCcD_SrcTri const&);
    /* 800848A4 */ cCcD_ShapeAttr* GetShapeAttr();
    /* 80084EF4 */ virtual ~dCcD_Tri() {}
    dCcD_Tri() {}
};

dCcD_GObjInf* dCcD_GetGObjInf(cCcD_Obj* param_0);

#endif /* D_CC_D_CC_D_H */
