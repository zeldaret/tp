#ifndef D_CC_D_CC_D_H
#define D_CC_D_CC_D_H

#include "SSystem/SComponent/c_cc_d.h"
#include "dolphin/types.h"

struct dCcD_SrcTri {};

struct dCcD_SrcSph {};

struct dCcD_SrcGObjTg {};

struct dCcD_SrcGObjInf {};

struct dCcD_SrcGObjAt {};

struct dCcD_SrcGAtTgCoCommonBase {};

struct dCcD_SrcCyl {};

struct dCcD_SrcCps {};

class dCcD_GStts : cCcD_GStts {
public:
    /* 80083760 */ dCcD_GStts();
    /* 800837F8 */ void Ct();
    /* 80083830 */ void Move();
    /* 8008523C */ ~dCcD_GStts();

private:
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

// class dCcD_Stts : cCcD_Stts {
class dCcD_Stts {  // TODO: vtables get messed up :(
public:
    /* 80083850 */ cCcD_GStts* GetGStts();
    /* 80083860 */ void Init(int, int, fopAc_ac_c*);
    /* 800838F4 */ void Ct();
    /* 80083928 */ void ClrAt();
    /* 80083934 */ void ClrTg();
    /* 800851AC */ ~dCcD_Stts();

private:
    /* 0x00 */ u8 _0[0x1C];  // TODO, should be covered by inheritance
    /* 0x1C */ dCcD_GStts mGStts;
};  // Size = 0x3C

class dCcD_GAtTgCoCommonBase {
public:
    /* 8008364C */ void ClrActorInfo();
    /* 80083660 */ void ct();
    /* 80083678 */ void SetHitApid(unsigned int);
    /* 80083688 */ void GetAc();
    /* 80083704 */ void Set(dCcD_SrcGAtTgCoCommonBase const&);
    /* 80083718 */ void SetEffCounterTimer();
    /* 80083724 */ void SubtractEffCounter();
    /* 80083748 */ void ChkEffCounter();
    /* 80083CA0 */ ~dCcD_GAtTgCoCommonBase();

private:
    /* 0x00 */ void* mBase;  // type dCcD_SrcGAtTgCoCommonBase*
    /* 0x04 */ u32 mRPrm;
    /* 0x08 */ u32 field_0x08;
    /* 0x0C */ u32 field_0x0C;
    /* 0x10 */ fopAc_ac_c* mAc;
    /* 0x14 */ s8 mEffCounter;
    /* 0x15 */ u8 field_0x15[3];
    /* 0x18 */ void* vtable;
};  // Size = 0x1C

class dCcD_GObjAt : dCcD_GAtTgCoCommonBase {
public:
    /* 80083944 */ void Set(dCcD_SrcGObjAt const&);
    /* 80083C44 */ ~dCcD_GObjAt();

private:
    /* 0x1C */ u8 mSe;
    /* 0x1D */ u8 mMtrl;
    /* 0x1E */ u8 mHitMark;
    /* 0x1F */ u8 mSpl;
    /* 0x20 */ cXyz mHitPos;
    /* 0x2C */ cXyz mVec;
    /* 0x38 */ cXyz mRVec;
};  // Size = 0x44
class dCcD_GObjTg : dCcD_GAtTgCoCommonBase {
public:
    /* 800839A0 */ void Set(dCcD_SrcGObjTg const&);
    /* 80083BE8 */ ~dCcD_GObjTg();

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
class dCcD_GObjCo : dCcD_GAtTgCoCommonBase {
public:
    /* 80083B8C */ ~dCcD_GObjCo();

private:
};  // Size = 0x1C ?

class dCcD_GObjInf : cCcD_GObjInf {
public:
    /* 80083A28 */ dCcD_GObjInf();
    /* 800840E4 */ ~dCcD_GObjInf();
    /* 80084268 */ cCcD_GObjInf* GetGObjInf();
    /* 8008426C */ void ClrAtHit();
    /* 800842C0 */ void ChkAtHit();
    /* 80084318 */ void ResetAtHit();
    /* 80084358 */ void GetAtHitObj();
    /* 800843A8 */ void GetAtHitGObj();
    /* 800843DC */ void ChkAtNoGuard();
    /* 800843FC */ void ClrTgHit();
    /* 80084460 */ void ChkTgHit();
    /* 800844B8 */ void ResetTgHit();
    /* 800844F8 */ void GetTgHitObj();
    /* 80084548 */ void GetTgHitGObj();
    /* 8008457C */ void GetTgHitObjSe();
    /* 800845B0 */ void getHitSeID(u8, int);
    /* 8008460C */ void ClrCoHit();
    /* 80084658 */ void ChkCoHit();
    /* 800846B0 */ void ResetCoHit();
    /* 800846F0 */ void GetCoHitObj();
    /* 80084740 */ void Set(dCcD_SrcGObjInf const&);

    static u8 const m_hitSeID[96];

private:
    /* 0x058 */ dCcD_GObjAt mGObjAt;
    /* 0x09C */ dCcD_GObjTg mGObjTg;
    /* 0x0E8 */ dCcD_GObjCo mGObjCo;
};  // Size = 0x104

class dCcD_Cyl : dCcD_GObjInf {
public:
    /* 800848B4 */ void Set(dCcD_SrcCyl const&);
    /* 800848F8 */ cCcD_ShapeAttr* GetShapeAttr();
    /* 80084908 */ void StartCAt(cXyz&);
    /* 80084954 */ void MoveCAt(cXyz&);
    /* 800849C4 */ void MoveCTg(cXyz&);
    /* 80084D60 */ ~dCcD_Cyl();
    dCcD_Cyl();

private:
    /* 0x104 */ cCcD_CylAttr mCylAttr;
};  // Size = 0x13C

class dCcD_Sph : dCcD_GObjInf {
public:
    /* 80084A34 */ void Set(dCcD_SrcSph const&);
    /* 80084A78 */ void StartCAt(cXyz&);
    /* 80084AC4 */ void MoveCAt(cXyz&);
    /* 80084B34 */ cCcD_ShapeAttr* GetShapeAttr();
    /* 80084BF4 */ ~dCcD_Sph();

private:
    /* 0x104 */ cCcD_SphAttr mSphAttr;
};  // Size = 0x138

class dCcD_Cps : dCcD_GObjInf {
public:
    /* 800847D0 */ void Set(dCcD_SrcCps const&);
    /* 80084814 */ cCcD_ShapeAttr* GetShapeAttr();
    /* 80084824 */ void CalcAtVec();
    /* 80084854 */ void CalcTgVec();
    /* 8008506C */ ~dCcD_Cps();
    dCcD_Cps();

private:
    /* 0x104 */ cCcD_CpsAttr mCpsAttr;
};  // Size = 0x144

class dCcD_Tri {
public:
    /* 80084884 */ void Set(dCcD_SrcTri const&);
    /* 800848A4 */ cCcD_ShapeAttr* GetShapeAttr();
    /* 80084EF4 */ ~dCcD_Tri();
};

#endif /* D_CC_D_CC_D_H */
