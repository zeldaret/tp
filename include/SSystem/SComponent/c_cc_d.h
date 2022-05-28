#ifndef C_CC_D_H
#define C_CC_D_H

#include "SSystem/SComponent/c_m3d.h"
#include "SSystem/SComponent/c_m3d_g_aab.h"
#include "SSystem/SComponent/c_m3d_g_cps.h"
#include "SSystem/SComponent/c_m3d_g_cyl.h"
#include "SSystem/SComponent/c_m3d_g_sph.h"
#include "SSystem/SComponent/c_m3d_g_tri.h"
#include "dolphin/gx/GX.h"
#include "f_op/f_op_actor.h"
#include "global.h"

class cCcD_PntAttr;
class cCcD_CpsAttr;
class cCcD_TriAttr;
class cCcD_AabAttr;
class cCcD_CylAttr;
class cCcD_SphAttr;

class cCcD_ShapeAttr {
public:
    /* 0x00 */ cM3dGAab mAab;
    /* 0x1C vtable */

    struct Shape {
        /* 80167BBC */ ~Shape();

        /* 0x00 */ u32 _0;
        /* 0x04 */ f32 _4;
        /* 0x08 */ f32 _8;
        /* 0x0C */ f32 _C;
        /* 0x10 */ f32 _10;
        /* 0x14 */ f32 _14;
    };
    cCcD_ShapeAttr() {}
    /* 8008556C vt[2] */ virtual ~cCcD_ShapeAttr() {}
    /* 802649D8 vt[3] */ virtual bool CrossAtTg(cCcD_ShapeAttr const&, cXyz*) const {
        return false;
    }
    /*          vt[4] */ virtual bool CrossAtTg(cCcD_PntAttr const&, cXyz*) const = 0;
    /*          vt[5] */ virtual bool CrossAtTg(cCcD_CpsAttr const&, cXyz*) const = 0;
    /*          vt[6] */ virtual bool CrossAtTg(cCcD_TriAttr const&, cXyz*) const = 0;
    /*          vt[7] */ virtual bool CrossAtTg(cCcD_AabAttr const&, cXyz*) const = 0;
    /*          vt[8] */ virtual bool CrossAtTg(cCcD_CylAttr const&, cXyz*) const = 0;
    /*          vt[9] */ virtual bool CrossAtTg(cCcD_SphAttr const&, cXyz*) const = 0;
    /* 802649E0 vt[10]*/ virtual bool CrossCo(cCcD_ShapeAttr const&, f32*) const { return false; }
    /*          vt[11]*/ virtual bool CrossCo(cCcD_PntAttr const&, f32*) const = 0;
    /*          vt[12]*/ virtual bool CrossCo(cCcD_CpsAttr const&, f32*) const = 0;
    /*          vt[13]*/ virtual bool CrossCo(cCcD_TriAttr const&, f32*) const = 0;
    /*          vt[14]*/ virtual bool CrossCo(cCcD_AabAttr const&, f32*) const = 0;
    /*          vt[15]*/ virtual bool CrossCo(cCcD_CylAttr const&, f32*) const = 0;
    /*          vt[16]*/ virtual bool CrossCo(cCcD_SphAttr const&, f32*) const = 0;
    /* 80084E38 vt[17]*/ virtual const cXyz& GetCoCP() const { return m_virtual_center; }
    /* 80084E2C vt[18]*/ virtual cXyz& GetCoCP() { return m_virtual_center; }
    /*          vt[19]*/ virtual void CalcAabBox() = 0;
    /*          vt[20]*/ virtual bool GetNVec(cXyz const&, cXyz*) const = 0;
    /* 80263A64 vt[21]*/ virtual void getShapeAccess(cCcD_ShapeAttr::Shape*) const;

    cM3dGAab& GetWorkAab() { return mAab; }
    cM3dGAab const& GetWorkAab() const { return mAab; }

    static cXyz m_virtual_center;
};

STATIC_ASSERT(0x20 == sizeof(cCcD_ShapeAttr));

class cCcD_TriAttr : public cCcD_ShapeAttr, public cM3dGTri {
public:
    /* 80263C04 */ virtual void CalcAabBox();
    /* 80263C9C */ virtual bool GetNVec(cXyz const&, cXyz*) const;
    /* 80263A88 */ virtual bool CrossAtTg(cCcD_CpsAttr const&, cXyz*) const;
    /* 80263BCC */ virtual bool CrossAtTg(cCcD_TriAttr const&, cXyz*) const;
    /* 80263B90 */ virtual bool CrossAtTg(cCcD_SphAttr const&, cXyz*) const;
    /* 80084E54 */ virtual bool CrossAtTg(cCcD_ShapeAttr const& shape, cXyz* xyz) const {
        return shape.CrossAtTg(*this, xyz);
    }
    /* 80084E4C */ virtual bool CrossAtTg(cCcD_PntAttr const&, cXyz*) const { return false; }
    /* 80084E44 */ virtual bool CrossAtTg(cCcD_AabAttr const&, cXyz*) const { return false; }
    /* 80263B58 */ virtual bool CrossAtTg(cCcD_CylAttr const&, cXyz*) const;
    /* 80084EBC */ virtual bool CrossCo(cCcD_ShapeAttr const& shape, f32* f) const {
        return shape.CrossCo(*this, f);
    }
    /* 80084EB4 */ virtual bool CrossCo(cCcD_PntAttr const&, f32*) const { return false; }
    /* 80084EAC */ virtual bool CrossCo(cCcD_CpsAttr const&, f32*) const { return false; }
    /* 80084EA4 */ virtual bool CrossCo(cCcD_TriAttr const&, f32*) const { return false; }
    /* 80084E9C */ virtual bool CrossCo(cCcD_AabAttr const&, f32*) const { return false; }
    /* 80084E94 */ virtual bool CrossCo(cCcD_CylAttr const&, f32*) const { return false; }
    /* 80084E8C */ virtual bool CrossCo(cCcD_SphAttr const&, f32*) const { return false; }
    /* 80264938 */ virtual ~cCcD_TriAttr() {}
    cCcD_TriAttr() {}
};

class cCcD_CpsAttr : public cCcD_ShapeAttr, public cM3dGCps {
public:
    cCcD_CpsAttr() {}
    /* 80085450 */ virtual ~cCcD_CpsAttr() {}
    /* 80263DC0 */ virtual bool CrossAtTg(cCcD_SphAttr const&, cXyz*) const;
    /* 80263E04 */ virtual bool CrossAtTg(cCcD_TriAttr const&, cXyz*) const;
    /* 80084FE4 */ virtual bool CrossAtTg(cCcD_ShapeAttr const& shape, cXyz* xyz) const {
        return shape.CrossAtTg(*this, xyz);
    }
    /* 80084FDC */ virtual bool CrossAtTg(cCcD_PntAttr const&, cXyz*) const { return false; }
    /* 80084FD4 */ virtual bool CrossAtTg(cCcD_AabAttr const&, cXyz*) const { return false; }
    /* 80263D38 */ virtual bool CrossAtTg(cCcD_CpsAttr const&, cXyz*) const;
    /* 80263D7C */ virtual bool CrossAtTg(cCcD_CylAttr const&, cXyz*) const;
    /* 80263F24 */ virtual bool CrossCo(cCcD_CylAttr const&, f32*) const;
    /* 80263ED4 */ virtual bool CrossCo(cCcD_CpsAttr const&, f32*) const;
    /* 80263F74 */ virtual bool CrossCo(cCcD_SphAttr const&, f32*) const;
    /* 80085034 */ virtual bool CrossCo(cCcD_ShapeAttr const& shape, f32* f) const {
        return shape.CrossCo(*this, f);
    }
    /* 8008502C */ virtual bool CrossCo(cCcD_PntAttr const&, f32*) const { return false; }
    /* 80085024 */ virtual bool CrossCo(cCcD_TriAttr const&, f32*) const { return false; }
    /* 8008501C */ virtual bool CrossCo(cCcD_AabAttr const&, f32*) const { return false; }
    /* 80263FC4 */ virtual void CalcAabBox();
    /* 80264014 */ virtual bool GetNVec(cXyz const&, cXyz*) const;
};

STATIC_ASSERT(0x40 == sizeof(cCcD_CpsAttr));

class cCcD_SphAttr : public cCcD_ShapeAttr, public cM3dGSph {
public:
    cCcD_SphAttr() {}
    /* 8008721C */ virtual ~cCcD_SphAttr() {}
    /* 80084B44 */ virtual const cXyz& GetCoCP() const { return mCenter; }
    /* 80037A54 */ virtual cXyz& GetCoCP() { return mCenter; }
    /* 80084B5C */ virtual bool CrossAtTg(cCcD_ShapeAttr const& shape, cXyz* xyz) const {
        return shape.CrossAtTg(*this, xyz);
    }
    /* 80084B54 */ virtual bool CrossAtTg(cCcD_PntAttr const&, cXyz*) const { return false; }
    /* 80084B4C */ virtual bool CrossAtTg(cCcD_AabAttr const&, cXyz*) const { return false; }
    /* 80084BAC */ virtual bool CrossCo(cCcD_ShapeAttr const& shape, f32* f) const {
        return shape.CrossCo(*this, f);
    }
    /* 80084BA4 */ virtual bool CrossCo(cCcD_PntAttr const&, f32*) const { return false; }
    /* 80084B9C */ virtual bool CrossCo(cCcD_TriAttr const&, f32*) const { return false; }
    /* 80084B94 */ virtual bool CrossCo(cCcD_AabAttr const&, f32*) const { return false; }
    /* 80264538 */ virtual bool CrossAtTg(cCcD_CylAttr const&, cXyz*) const;
    /* 802645C0 */ virtual bool CrossAtTg(cCcD_TriAttr const&, cXyz*) const;
    /* 802644EC */ virtual bool CrossAtTg(cCcD_CpsAttr const&, cXyz*) const;
    /* 8026457C */ virtual bool CrossAtTg(cCcD_SphAttr const&, cXyz*) const;
    /* 80264688 */ virtual bool CrossCo(cCcD_CpsAttr const&, f32*) const;
    /* 80264644 */ virtual bool CrossCo(cCcD_SphAttr const&, f32*) const;
    /* 802645F8 */ virtual bool CrossCo(cCcD_CylAttr const&, f32*) const;
    /* 802646E0 */ virtual void CalcAabBox();
    /* 8026476C */ virtual bool GetNVec(cXyz const&, cXyz*) const;
    /* 80264808 */ virtual void getShapeAccess(cCcD_ShapeAttr::Shape*) const;

};  // Size = 0x34

STATIC_ASSERT(0x34 == sizeof(cCcD_SphAttr));

class cCcD_CylAttr : public cCcD_ShapeAttr, public cM3dGCyl {
public:
    cCcD_CylAttr() {}
    /* 800854E0 */ virtual ~cCcD_CylAttr() {}
    /* 80084CC0 */ virtual const cXyz& GetCoCP() const { return mCenter; }
    /* 8026420C */ virtual bool CrossAtTg(cCcD_SphAttr const&, cXyz*) const;
    /* 802641C8 */ virtual bool CrossAtTg(cCcD_CylAttr const&, cXyz*) const;
    /* 80264250 */ virtual bool CrossAtTg(cCcD_TriAttr const&, cXyz*) const;
    /* 80084CD8 */ virtual bool CrossAtTg(cCcD_ShapeAttr const& shape, cXyz* xyz) const {
        return shape.CrossAtTg(*this, xyz);
    }
    /* 80084CD0 */ virtual bool CrossAtTg(cCcD_PntAttr const&, cXyz*) const { return false; }
    /* 80084CC8 */ virtual bool CrossAtTg(cCcD_AabAttr const&, cXyz*) const { return false; }
    /* 8026417C */ virtual bool CrossAtTg(cCcD_CpsAttr const&, cXyz*) const;
    /* 80264288 */ virtual bool CrossCo(cCcD_CylAttr const&, f32*) const;
    /* 80264310 */ virtual bool CrossCo(cCcD_CpsAttr const&, f32*) const;
    /* 80084D28 */ virtual bool CrossCo(cCcD_ShapeAttr const& shape, f32* f) const {
        return shape.CrossCo(*this, f);
    }
    /* 80084D20 */ virtual bool CrossCo(cCcD_PntAttr const&, f32*) const { return false; }
    /* 80084D18 */ virtual bool CrossCo(cCcD_TriAttr const&, f32*) const { return false; }
    /* 80084D10 */ virtual bool CrossCo(cCcD_AabAttr const&, f32*) const { return false; }
    /* 802642CC */ virtual bool CrossCo(cCcD_SphAttr const&, f32*) const;
    /* 80037A4C */ virtual cXyz& GetCoCP() { return mCenter; }
    /* 80264368 */ virtual void CalcAabBox();
    /* 802643D0 */ virtual bool GetNVec(cXyz const&, cXyz*) const;
    /* 802644B8 */ virtual void getShapeAccess(cCcD_ShapeAttr::Shape*) const;

};  // Size = 0x38

STATIC_ASSERT(0x38 == sizeof(cCcD_CylAttr));

class cCcD_DivideInfo {
private:
    /* 0x00 */ u32 mXDivInfo;
    /* 0x04 */ u32 mYDivInfo;
    /* 0x08 */ u32 mZDivInfo;
    /* 0x0C vtable */
public:
    cCcD_DivideInfo() {}
    virtual ~cCcD_DivideInfo() {}
    /* 80263358 */ void Set(u32, u32, u32);
    /* 80263368 */ bool Chk(cCcD_DivideInfo const&) const;
};  // Size = 0x10

STATIC_ASSERT(0x10 == sizeof(cCcD_DivideInfo));

class cCcD_DivideArea : public cM3dGAab {
private:
    /* 0x1C */ bool mXDiffIsZero;
    /* 0x20 */ f32 mScaledXDiff;
    /* 0x24 */ f32 mInvScaledXDiff;
    /* 0x28 */ bool mYDiffIsZero;
    /* 0x2C */ f32 mScaledYDiff;
    /* 0x30 */ f32 mInvScaledYDiff;
    /* 0x34 */ bool mZDiffIsZero;
    /* 0x38 */ f32 mScaledZDiff;
    /* 0x3C */ f32 mInvScaledZDiff;

public:
    cCcD_DivideArea() {}
    virtual ~cCcD_DivideArea() {}
    /* 802633A8 */ void SetArea(cM3dGAab const&);
    /* 802634D4 */ void CalcDivideInfo(cCcD_DivideInfo*, cM3dGAab const&, u32);
    /* 802636A0 */ void CalcDivideInfoOverArea(cCcD_DivideInfo*, cM3dGAab const&);
};  // Size = 0x40

STATIC_ASSERT(0x40 == sizeof(cCcD_DivideArea));

struct cCcD_SrcObjTg {
    s32 mType;
    s32 mSPrm;
};

struct cCcD_SrcObjAt {
    s32 mType;
    u8 mAtp;
    s32 mSPrm;
};

struct cCcD_SrcObjHitInf {
    cCcD_SrcObjAt mObjAt;
    cCcD_SrcObjTg mObjTg;
    s32 mSPrm;
};

struct cCcD_SrcObj {
    int field_0x0;
    cCcD_SrcObjHitInf mSrcObjHitInf;
};

class cCcD_GStts {
public:
    /* 800837B0 */ virtual ~cCcD_GStts() {}

private:
    /* 0x00 vtable */
};  // Size = 0x4

class cCcD_Stts {
private:
    /* 0x00 */ cXyz mXyz;
    /* 0x0C */ fopAc_ac_c* mActor;
    /* 0x10 */ int mApid;
    /* 0x14 */ u8 mWeight;
    /* 0x15 */ u8 field_0x15;
    /* 0x16 */ u8 mTg;

public:
    cCcD_Stts() {}
    /* 801410A4 vt[3] */ virtual ~cCcD_Stts() {}
    /* 80263894 vt[4] */ virtual const cCcD_GStts* GetGStts() const;
    /* 8026389C vt[5] */ virtual cCcD_GStts* GetGStts();
    /* 802638A4 */ void Init(int, int, void*, unsigned int);
    /* 80263904 vt[6] */ virtual void Ct();
    /* 80263934 */ void PlusCcMove(f32, f32, f32);
    /* 8026395C */ void ClrCcMove();
    /* 80263970 */ void PlusDmg(int);
    /* 80263984 */ f32 GetWeightF() const;
    /* 802649E8 vt[7] */ virtual void ClrAt() {}
    /* 802649EC vt[8] */ virtual void ClrTg() { mTg = 0; }
    u8 GetWeightUc() const { return mWeight; }
    void SetWeight(u8 weight) { mWeight = weight; }
    fopAc_ac_c* GetAc() { return mActor; }
    void SetActor(void* ac) { mActor = (fopAc_ac_c*)ac; }
    cXyz* GetCCMoveP() { return &mXyz; }
};  // Size = 0x1C

STATIC_ASSERT(0x1C == sizeof(cCcD_Stts));

class cCcD_Obj;  // placeholder

class cCcD_ObjCommonBase {
protected:
    /* 0x00 */ u32 mSPrm;
    /* 0x04 */ u32 mRPrm;
    /* 0x08 */ cCcD_Obj* mHitObj;
    /* 0x0C vtable */
public:
    cCcD_ObjCommonBase() { ct(); }
    /* 8008409C */ virtual ~cCcD_ObjCommonBase() {}
    /* 802639B0 */ void ct();
    void setSPrm(s32 sprm) { mSPrm = sprm; }
    s32 getSPrm() const { return mSPrm; }
    void setRPrm(s32 rprm) { mRPrm = rprm; }
    s32 getRPrm() const { return mRPrm; }
    cCcD_Obj* getHitObj() { return mHitObj; }
    u32 MskSPrm(u32 mask) const { return mSPrm & mask; }
    void OnSPrmBit(u32 flag) { mSPrm |= flag; }
    void OffSPrmBit(u32 flag) { mSPrm &= ~flag; }
};

STATIC_ASSERT(0x10 == sizeof(cCcD_ObjCommonBase));

class cCcD_ObjAt : public cCcD_ObjCommonBase {
public:
    cCcD_ObjAt() { mType = 0; }
    /* 80084040 */ virtual ~cCcD_ObjAt() {}
    /* 8026483C */ void SetHit(cCcD_Obj*);
    /* 8026484C */ void Set(cCcD_SrcObjAt const&);
    /* 80264868 */ void ClrHit();
    int GetType() const { return mType; }
    u32 GetGrp() const { return MskSPrm(0x1E); }
    bool ChkSet() const { return MskSPrm(1); }
    u8 GetAtp() const { return mAtp; }
    u32 MskType(u32 msk) const { return mType & msk; }
    void SetType(u32 type) { mType = type; }
    void SetAtp(int atp) { mAtp = atp; }

protected:
    /* 0x10 */ int mType;
    /* 0x14 */ u8 mAtp;
};

STATIC_ASSERT(0x18 == sizeof(cCcD_ObjAt));

class cCcD_ObjTg : public cCcD_ObjCommonBase {
public:
    cCcD_ObjTg() { ct(); }
    /* 80083FE4 */ virtual ~cCcD_ObjTg() {}
    /* 80264880 */ void Set(cCcD_SrcObjTg const&);
    /* 80264894 */ void SetGrp(u32);
    /* 802648B0 */ void ClrHit();
    /* 802648C8 */ void SetHit(cCcD_Obj*);
    int GetType() const { return mType; }
    u32 GetGrp() const { return MskSPrm(0x1E); }
    bool ChkSet() const { return MskSPrm(1); }

private:
    /* 0x10 */ int mType;
};

STATIC_ASSERT(0x14 == sizeof(cCcD_ObjTg));

class cCcD_ObjCo : public cCcD_ObjCommonBase {
public:
    /* 80083F88 */ virtual ~cCcD_ObjCo() {}
    /* 802648D8 */ void SetHit(cCcD_Obj*);
    /* 802648E8 */ void ClrHit();
    /* 80264900 */ void SetIGrp(u32);
    /* 8026491C */ void SetVsGrp(u32);
    u32 GetGrp() const { return MskSPrm(0x1E); }
    bool ChkSet() const { return MskSPrm(1); }
    u32 GetVsGrp() const { return MskSPrm(0x70); }
    u32 GetIGrp() const { return MskSPrm(0xE); }
    u32 ChkNoCrr() const { return MskSPrm(0x100); }
    u32 ChkSph3DCrr() const { return MskSPrm(0x80); }
};

STATIC_ASSERT(0x10 == sizeof(cCcD_ObjCo));

class cCcD_ObjHitInf {
protected:
    /* 0x000 */ cCcD_ObjAt mObjAt;
    /* 0x018 */ cCcD_ObjTg mObjTg;
    /* 0x02C */ cCcD_ObjCo mObjCo;
    /* 0x03C vtable */
public:
    /* 80083EC8 */ virtual ~cCcD_ObjHitInf() {}
    /* 802639C4 */ void Set(cCcD_SrcObjHitInf const&);
    cCcD_ObjAt& GetObjAt() { return mObjAt; }
    cCcD_ObjTg& GetObjTg() { return mObjTg; }
    cCcD_ObjCo& GetObjCo() { return mObjCo; }
    u32 GetTgGrp() const { return mObjTg.GetGrp(); }
    u32 GetAtGrp() const { return mObjAt.GetGrp(); }
    u32 GetCoGrp() const { return mObjCo.GetGrp(); }
    int GetTgType() const { return mObjTg.GetType(); }
    int GetAtType() const { return mObjAt.GetType(); }
    bool ChkTgSet() const { return mObjTg.ChkSet(); }
    bool ChkAtSet() const { return mObjAt.ChkSet(); }
    bool ChkCoSet() const { return mObjCo.ChkSet(); }
    u32 ChkCoSameActorHit() const { return mObjCo.MskSPrm(0x400); }
    u32 GetCoVsGrp() const { return mObjCo.GetVsGrp(); }
    u32 GetCoIGrp() const { return mObjCo.GetIGrp(); }
    u8 GetAtAtp() const { return mObjAt.GetAtp(); }
    u32 ChkAtNoTgHitInfSet() const { return mObjAt.MskSPrm(0x20); }
    u32 ChkTgNoAtHitInfSet() const { return mObjTg.MskSPrm(0x20); }
    u32 ChkCoNoCoHitInfSet() const { return mObjCo.MskSPrm(0x200); }
    bool ChkTgNoSlingHitInfSet() const { return mObjTg.MskSPrm(0x40); }
    void SetAtHit(cCcD_Obj* obj) { mObjAt.SetHit(obj); }
    void SetTgHit(cCcD_Obj* obj) { mObjTg.SetHit(obj); }
    void SetCoHit(cCcD_Obj* obj) { mObjCo.SetHit(obj); }
    bool ChkAtType(u32 type) const { return mObjAt.MskType(type); }
    u32 ChkCoNoCrr() const { return mObjCo.ChkNoCrr(); }
    u32 ChkCoSph3DCrr() const { return mObjCo.ChkSph3DCrr(); }
    void OnAtSPrmBit(u32 flag) { mObjAt.OnSPrmBit(flag); }
    void OffAtSPrmBit(u32 flag) { mObjAt.OffSPrmBit(flag); }
    void SetAtType(u32 type) { mObjAt.SetType(type); }
    void OnAtSetBit() { mObjAt.OnSPrmBit(1); }
    void SetAtAtp(int atp) { mObjAt.SetAtp(atp); }

};  // Size = 0x40

STATIC_ASSERT(0x40 == sizeof(cCcD_ObjHitInf));

class cCcD_GObjInf;

class cCcD_Obj : public cCcD_ObjHitInf {
public:
    cCcD_Obj() { ct(); }
    /* 80083DE0 */ virtual ~cCcD_Obj() {}
    /* 800851A4 */ virtual cCcD_GObjInf const* GetGObjInf() const { return NULL; }
    /* 800847C8 */ virtual cCcD_GObjInf* GetGObjInf() { return NULL; }
    /* 80084BE8 */ virtual cCcD_ShapeAttr const* GetShapeAttr() const { return NULL; }
    /* 80085130 */ virtual cCcD_ShapeAttr* GetShapeAttr() { return NULL; }
    /* 80084BF0 */ virtual void Draw(_GXColor const&) {}
    /* 80263A10 */ void ct();
    /* 80263A1C */ void Set(cCcD_SrcObj const&);
    fopAc_ac_c* GetAc();

    cCcD_Stts* GetStts() { return mStts; }
    cCcD_DivideInfo& GetDivideInfo() { return mDivideInfo; }
    int ChkBsRevHit() const { return field_0x40 & 2; }

private:
    /* 0x040 */ int field_0x40;
    /* 0x044 */ cCcD_Stts* mStts;
    /* 0x048 */ cCcD_DivideInfo mDivideInfo;
};  // Size = 0x58

STATIC_ASSERT(0x58 == sizeof(cCcD_Obj));

class cCcD_GObjInf : public cCcD_Obj {
public:
    cCcD_GObjInf() {}
    /* 80083CE8 */ virtual ~cCcD_GObjInf() {}
    /* 80085138 */ virtual void ClrAtHit() { mObjAt.ClrHit(); }
    /* 80085158 */ virtual void ClrTgHit() { mObjTg.ClrHit(); }
    /* 8008517C */ virtual void ClrCoHit() { mObjCo.ClrHit(); }
    /* 80084BE4 */ virtual cCcD_GObjInf const* GetGObjInf() const { return this; }
    /* 800851A0 */ virtual cCcD_GObjInf* GetGObjInf() { return this; }
};

STATIC_ASSERT(0x58 == sizeof(cCcD_GObjInf));

#endif /* C_CC_D_H */
