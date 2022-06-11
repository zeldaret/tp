#ifndef D_CC_D_CC_D_H
#define D_CC_D_CC_D_H

#include "SSystem/SComponent/c_cc_d.h"
#include "dolphin/types.h"

struct dCcD_SrcGAtTgCoCommonBase {
    /* 0x00 */ u32 mGFlag;
};

struct dCcD_SrcGObjAt {
    u8 mSe;
    u8 mHitMark;
    u8 mSpl;
    u8 mMtrl;
    dCcD_SrcGAtTgCoCommonBase mBase;
};

struct dCcD_SrcGObjTg {
    u8 mSe;
    u8 mHitMark;
    u8 mSpl;
    u8 mMtrl;
    dCcD_SrcGAtTgCoCommonBase mBase;
};

struct dCcD_SrcGObjInf {
    cCcD_SrcObj mObj;
    dCcD_SrcGObjAt mGObjAt;
    dCcD_SrcGObjTg mGObjTg;
    dCcD_SrcGAtTgCoCommonBase mGObjCo;
};

struct dCcD_SrcSph {
    dCcD_SrcGObjInf mObjInf;
    cM3dGSphS mSph;
};

struct dCcD_SrcTri {
    dCcD_SrcGObjInf mObjInf;
};

struct dCcD_SrcCyl {
    dCcD_SrcGObjInf mObjInf;
    cM3dGCylS mCyl;
};

struct dCcD_SrcCps {
    dCcD_SrcGObjInf mObjInf;
    cM3dGCpsS mCps;
};

class dCcD_GStts : public cCcD_GStts {
public:
    /* 80083760 */ dCcD_GStts();
    /* 800837F8 */ void Ct();
    /* 80083830 */ void Move();
    /* 8008523C */ virtual ~dCcD_GStts() {}
    void ClrTg() { mTg = 0; }
    void SetAtApid(unsigned int id) { mAtApid = id; }
    u8 GetRoomId() { return mRoomId; }
    void SetRoomId(int id) { mRoomId = id; }

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
    /* 80083850 */ cCcD_GStts* GetGStts();
    /* 80083860 */ void Init(int, int, fopAc_ac_c*);
    /* 800838F4 */ void Ct();
    /* 80083928 */ void ClrAt();
    /* 80083934 */ void ClrTg();
    /* 800851AC */ virtual ~dCcD_Stts() {}

};  // Size = 0x3C

enum dCcG_At_Spl {
    /* 0x0 */ dCcG_At_Spl_UNK_0,
    /* 0x1 */ dCcG_At_Spl_UNK_01,
};

class dCcD_GObjInf;
typedef void (*dCcD_HitCallback)(fopAc_ac_c*, dCcD_GObjInf*, fopAc_ac_c*, dCcD_GObjInf*);

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
    void ResetEffCounter() { mEffCounter = 0; }
    u32 GetGFlag() const { return mGFlag; }
    u32 GetRPrm() const { return mRPrm; }
    u32 MskSPrm(u32 mask) const { return mGFlag & mask; }
    u32 MskRPrm(u32 mask) const { return mRPrm & mask; }
    bool ChkSPrm(u32 mask) const { return MskSPrm(mask); }
    void OnSPrm(u32 flag) { mGFlag |= flag; }
    void OffSPrm(u32 flag) { mGFlag &= ~flag; }
    bool ChkRPrm(u32 flag) const { return MskRPrm(flag); }
    void SetHitCallback(dCcD_HitCallback callback) { mHitCallback = callback; }
};  // Size = 0x1C

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

    // private:
    /* 0x1C */ u8 mSe;
    /* 0x1D */ u8 mMtrl;
    /* 0x1E */ u8 mHitMark;
    /* 0x1F */ u8 mSpl;
    /* 0x20 */ cXyz mHitPos;
    /* 0x2C */ cXyz mVec;
    /* 0x38 */ cXyz mRVec;
};  // Size = 0x44
class dCcD_GObjTg : public dCcD_GAtTgCoCommonBase {
public:
    /* 800839A0 */ void Set(dCcD_SrcGObjTg const&);
    /* 80083BE8 */ virtual ~dCcD_GObjTg() {}
    void SetVec(cXyz& vec) { mVec = vec; }
    cXyz& GetVec() { return mVec; }
    void SetShieldFrontRangeYAngle(s16* angle) { mShieldFrontRangeYAngle = angle; }
    void SetMtrl(u8 mtrl) { mMtrl = mtrl; }

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
class dCcD_GObjCo : public dCcD_GAtTgCoCommonBase {
public:
    /* 80083B8C */ virtual ~dCcD_GObjCo() {}
};  // Size = 0x1C ?

class dCcD_GObjInf : public cCcD_GObjInf {
public:
    /* 80083A28 */ dCcD_GObjInf();
    /* 800840E4 */ virtual ~dCcD_GObjInf();
    /* 80084268 */ cCcD_GObjInf* GetGObjInf();
    /* 8008426C */ virtual void ClrAtHit();
    /* 800842C0 */ u32 ChkAtHit();
    /* 80084318 */ void ResetAtHit();
    /* 80084358 */ cCcD_Obj* GetAtHitObj();
    /* 800843A8 */ cCcD_GObjInf* GetAtHitGObj();
    /* 800843DC */ bool ChkAtNoGuard();
    /* 800843FC */ void ClrTgHit();
    /* 80084460 */ u32 ChkTgHit();
    /* 800844B8 */ void ResetTgHit();
    /* 800844F8 */ cCcD_Obj* GetTgHitObj();
    /* 80084548 */ dCcD_GObjInf* GetTgHitGObj();
    /* 8008457C */ u8 GetTgHitObjSe();
    /* 800845B0 */ static u32 getHitSeID(u8, int);
    /* 8008460C */ void ClrCoHit();
    /* 80084658 */ bool ChkCoHit();
    /* 800846B0 */ void ResetCoHit();
    /* 800846F0 */ cCcD_Obj* GetCoHitObj();
    /* 80084740 */ void Set(dCcD_SrcGObjInf const&);

    void SetAtVec(cXyz& vec) { mGObjAt.SetVec(vec); }
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
    void SetAtSpl(dCcG_At_Spl spl) { mGObjAt.SetAtSpl(spl); }
    void SetAtHitCallback(dCcD_HitCallback callback) { mGObjAt.SetHitCallback(callback); }
    void SetTgHitCallback(dCcD_HitCallback callback) { mGObjTg.SetHitCallback(callback); }
    void SetCoHitCallback(dCcD_HitCallback callback) { mGObjCo.SetHitCallback(callback); }
    u8 GetAtSe() { return mGObjAt.GetSe(); }
    s32 GetAtSpl() { return mGObjAt.GetSpl(); }
    u8 GetAtMtrl() { return mGObjAt.GetMtrl(); }
    fopAc_ac_c* GetTgHitAc() { return mGObjTg.GetAc(); }
    void SetTgShieldFrontRangeYAngle(s16* angle) { mGObjTg.SetShieldFrontRangeYAngle(angle); }
    
    static u32 const m_hitSeID[24];

protected:
    /* 0x058 */ dCcD_GObjAt mGObjAt;
    /* 0x09C */ dCcD_GObjTg mGObjTg;
    /* 0x0E8 */ dCcD_GObjCo mGObjCo;
};  // Size = 0x104

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

class dCcD_Sph : public dCcD_GObjInf, public cCcD_SphAttr {
public:
    dCcD_Sph() {}
    /* 80084A34 */ void Set(dCcD_SrcSph const&);
    /* 80084A78 */ void StartCAt(cXyz&);
    /* 80084AC4 */ void MoveCAt(cXyz&);
    /* 80084B34 */ virtual cCcD_ShapeAttr* GetShapeAttr();
    /* 80084BF4 */ virtual ~dCcD_Sph() {}
};  // Size = 0x138

class dCcD_Cps : public dCcD_GObjInf, public cCcD_CpsAttr {
public:
    /* 800847D0 */ void Set(dCcD_SrcCps const&);
    /* 80084814 */ cCcD_ShapeAttr* GetShapeAttr();
    /* 80084824 */ void CalcAtVec();
    /* 80084854 */ void CalcTgVec();
    /* 8008506C */ virtual ~dCcD_Cps() {}
    dCcD_Cps() {}
};  // Size = 0x144

class dCcD_Tri : public dCcD_GObjInf, public cCcD_TriAttr {
public:
    /* 80084884 */ void Set(dCcD_SrcTri const&);
    /* 800848A4 */ cCcD_ShapeAttr* GetShapeAttr();
    /* 80084EF4 */ virtual ~dCcD_Tri() {}
    dCcD_Tri() {}
};

dCcD_GObjInf* dCcD_GetGObjInf(cCcD_Obj* param_0);

#endif /* D_CC_D_CC_D_H */
